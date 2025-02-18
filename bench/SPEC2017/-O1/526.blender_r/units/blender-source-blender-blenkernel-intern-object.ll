; ModuleID = 'blender/source/blender/blenkernel/intern/object.c'
source_filename = "blender/source/blender/blenkernel/intern/object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
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
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.CurveCache = type { %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr }
%struct.HookModifierData = type { %struct.ModifierData, ptr, [64 x i8], [4 x [4 x float]], [3 x float], float, ptr, i32, float, [64 x i8] }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SoftBody = type { i32, i32, ptr, ptr, i8, i8, i16, float, [64 x i8], float, float, float, float, float, float, float, float, float, i16, [64 x i8], i16, float, float, [64 x i8], i32, i32, i32, i16, i16, ptr, i32, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, float, float, ptr, %struct.ListBase, ptr, [3 x float], [3 x [3 x float]], [3 x [3 x float]], i32 }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.ParticleData = type { %struct.ParticleKey, %struct.ParticleKey, ptr, ptr, ptr, i32, float, float, float, i32, i32, [4 x float], float, float, float, i32, i32, i16, i16 }
%struct.ParticleKey = type { [3 x float], [3 x float], [4 x float], [3 x float], float }
%struct.BoidParticle = type { ptr, %struct.BoidData, [3 x float], [3 x float], float }
%struct.BoidData = type { float, [3 x float], i16, i16 }
%struct.ClothModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ParticleSystemModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.DynamicPaintModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32 }
%struct.DynamicPaintBrushSettings = type { ptr, ptr, ptr, ptr, i32, i32, float, float, float, float, float, float, float, float, ptr, ptr, i16, i16, i16, i16, float, float, float, float }
%struct.SmokeModifierData = type { %struct.ModifierData, ptr, ptr, ptr, float, i32 }
%struct.SmokeFlowSettings = type { ptr, ptr, ptr, ptr, ptr, i32, float, float, float, float, [3 x float], float, float, float, float, float, i32, float, float, i32, [64 x i8], i16, i16, i16, i16, i32 }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.BoundBox = type { [8 x [3 x float]], i32, i32 }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SeqIterator = type { ptr, i32, i32, ptr, i32 }
%struct.BLI_mempool_iter = type { ptr, ptr, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.bConstraintTypeInfo = type { i16, i16, [32 x i8], [32 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bConstraintTarget = type { ptr, ptr, ptr, [64 x i8], [4 x [4 x float]], i16, i16, i16, i16 }
%struct.ParticleTarget = type { ptr, ptr, ptr, i32, i16, i16, float, float }
%struct.BoidSettings = type { i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.ListBase }
%struct.BoidState = type { ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, [32 x i8], i32, i32, i32, float, i32, i32, float, float }
%struct.BoidRule = type { ptr, ptr, i32, i32, [32 x i8] }
%struct.BoidRuleGoalAvoid = type { %struct.BoidRule, ptr, i32, float, i32, i32 }
%struct.BoidRuleFollowLeader = type { %struct.BoidRule, ptr, [3 x float], [3 x float], float, float, i32, i32 }
%struct.LodLevel = type { ptr, ptr, ptr, i32, float }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.PointDensity = type { i16, i16, float, float, i16, i16, i32, i32, ptr, i32, i16, i16, ptr, ptr, float, i16, i16, i16, [3 x i16], float, float, float, float, ptr, ptr }
%struct.VoxelData = type { [3 x i32], i32, i16, i16, i16, i16, i16, i16, i32, ptr, float, i32, [1024 x i8], ptr, i32, i32 }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.TimeMarker = type { ptr, ptr, i32, [64 x i8], i32, ptr }
%struct.Sequence = type { ptr, ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, float, float, float, float, ptr, i32, i32, i32, float, i32, i8, [3 x i8], %struct.ListBase }
%struct.SceneRenderLayer = type { ptr, ptr, [64 x i8], ptr, ptr, i32, i32, i32, i32, i32, i32, i32, float, %struct.FreestyleConfig }
%struct.FreestyleConfig = type { %struct.ListBase, i32, i32, i32, float, float, float, %struct.ListBase }
%struct.FreestyleLineSet = type { ptr, ptr, [64 x i8], i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.SpaceLink = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16] }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.SpaceOops = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, %struct.ListBase, ptr, [32 x i8], %struct.TreeStoreElem, i16, i16, i16, i16, ptr }
%struct.TreeStoreElem = type { i16, i16, i16, i16, ptr }
%struct.SpaceButs = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, i16, i16, i16, i16, i16, i16, i16, i16, i8, [7 x i8], ptr, i32, i32, ptr, ptr }
%struct.SpaceNode = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, ptr, i16, i16, float, float, float, float, float, [2 x float], %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, %struct.ListBase, ptr }
%struct.Camera = type { %struct.ID, ptr, i8, i8, i16, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, i8, [7 x i8] }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.MetaBall = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, i16, i16, [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }
%struct.BodyPoint = type { [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], i32, ptr, float, float, float, float, i16, float, float }
%struct.PartDeflect = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, float, i32, ptr }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.DriverVar = type { ptr, ptr, [64 x i8], [8 x %struct.DriverTarget], i16, i16, float }
%struct.DriverTarget = type { ptr, ptr, [32 x i8], i16, i16, i32 }
%struct.Group = type { %struct.ID, %struct.ListBase, i32, [3 x float] }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.ObjectTfmProtectedChannels = type { [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.DupliObject = type { ptr, ptr, ptr, [4 x [4 x float]], [3 x float], [2 x float], i16, i8, i8, [8 x i32], ptr }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.DispList = type { ptr, ptr, i16, i16, i32, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr }
%struct.ObTfmBack = type { [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]] }
%struct.bPose = type { %struct.ListBase, ptr, i16, i16, i32, i32, float, [3 x float], [3 x float], %struct.ListBase, i32, i32, ptr, ptr, %struct.bAnimVizSettings, [64 x i8] }
%struct.Key = type { %struct.ID, ptr, ptr, [32 x i8], i32, i32, %struct.ListBase, ptr, ptr, i16, i16, i16, i16, float, i32 }
%struct.SculptSession = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, i8, i8, ptr, ptr, ptr, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i8, [3 x float], [3 x float], i32 }
%struct.LinkData = type { ptr, ptr, ptr }
%struct.KeyBlock = type { ptr, ptr, float, float, i16, i16, i16, i16, i32, i32, ptr, [64 x i8], [64 x i8], float, float }
%struct.VirtualModifierData = type { %struct.ArmatureModifierData, %struct.CurveModifierData, %struct.LatticeModifierData, %struct.ShapeKeyModifierData }
%struct.ArmatureModifierData = type { %struct.ModifierData, i16, i16, i32, ptr, ptr, [64 x i8] }
%struct.CurveModifierData = type { %struct.ModifierData, ptr, [64 x i8], i16, [6 x i8] }
%struct.LatticeModifierData = type { %struct.ModifierData, ptr, [64 x i8], float, [4 x i8] }
%struct.ShapeKeyModifierData = type { %struct.ModifierData }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.bCameraSolverConstraint = type { ptr, i32, i32 }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.BMEditMesh = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i64, ptr, i32, ptr, i32, i16, i16, ptr, i32 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@.str = private unnamed_addr constant [5 x i8] c"Mesh\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Curve\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Surf\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Meta\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Camera\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Lamp\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Lattice\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Armature\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@.str.10 = private unnamed_addr constant [63 x i8] c"BKE_object_obdata_add_from_type: Internal error, bad type: %d\0A\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@enable_cu_speed = dso_local local_unnamed_addr global i32 1, align 4
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [12 x i8] c"OB-BoundBox\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"image user\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [10 x i8] c"ObTfmBack\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"recalcob %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"recalcdata %s\0A\00", align 1
@CD_MASK_BAREMESH = external local_unnamed_addr constant i64, align 8
@.str.17 = private unnamed_addr constant [51 x i8] c"Proxy copy error, lib Object: %s proxy Object: %s\0A\00", align 1
@__const.BKE_boundbox_ray_hit_check.triangle_indexes = private unnamed_addr constant [12 x [3 x i32]] [[3 x i32] [i32 0, i32 1, i32 2], [3 x i32] [i32 0, i32 2, i32 3], [3 x i32] [i32 3, i32 2, i32 6], [3 x i32] [i32 3, i32 6, i32 7], [3 x i32] [i32 1, i32 2, i32 6], [3 x i32] [i32 1, i32 6, i32 5], [3 x i32] [i32 5, i32 6, i32 7], [3 x i32] [i32 4, i32 5, i32 7], [3 x i32] [i32 0, i32 3, i32 7], [3 x i32] [i32 0, i32 4, i32 7], [3 x i32] [i32 0, i32 1, i32 5], [3 x i32] [i32 0, i32 4, i32 5]], align 16
@.str.18 = private unnamed_addr constant [7 x i8] c"PCLink\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"Mball\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"Empty\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"get_obdata_defname: Internal error, bad type: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c"Object %s with Bone parent: bone %s doesn't exist\0A\00", align 1
@vparent_lock = internal global i32 0, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.23 = private unnamed_addr constant [80 x i8] c"%s: DerivedMesh is needed to solve parenting, object position can be wrong now\0A\00", align 1
@__func__.give_parvert = private unnamed_addr constant [13 x i8] c"give_parvert\00", align 1
@str = private unnamed_addr constant [18 x i8] c"cannot make proxy\00", align 1
@switch.table.BKE_object_add = private unnamed_addr constant [26 x ptr] [ptr @.str.20, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.19, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str.6, ptr @.str.5, ptr @.str.9, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str, ptr @.str.7, ptr @.str, ptr @.str, ptr @.str.8], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @BKE_object_workob_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1424) %0, i8 0, i64 1424, i1 false)
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 2
  store float 1.000000e+00, ptr %3, align 4, !tbaa !34
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 1
  store float 1.000000e+00, ptr %4, align 4, !tbaa !34
  store float 1.000000e+00, ptr %2, align 4, !tbaa !34
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38, i64 2
  store float 1.000000e+00, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38, i64 1
  store float 1.000000e+00, ptr %7, align 4, !tbaa !34
  store float 1.000000e+00, ptr %5, align 4, !tbaa !34
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 83
  store i16 1, ptr %8, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_object_update_base_layer(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 52
  br label %8

8:                                                ; preds = %6, %16
  %9 = phi ptr [ %4, %6 ], [ %17, %16 ]
  %10 = getelementptr inbounds %struct.Base, ptr %9, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32, ptr %7, align 8, !tbaa !50
  %15 = getelementptr inbounds %struct.Base, ptr %9, i64 0, i32 2
  store i32 %14, ptr %15, align 8, !tbaa !51
  br label %16

16:                                               ; preds = %13, %8
  %17 = load ptr, ptr %9, align 8, !tbaa !47
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %8, !llvm.loop !52

19:                                               ; preds = %16, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_free_particlesystems(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 109
  %3 = tail call ptr @BLI_pophead(ptr noundef nonnull %2) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  tail call void @psys_free(ptr noundef %0, ptr noundef nonnull %6) #17
  %7 = tail call ptr @BLI_pophead(ptr noundef nonnull %2) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !55

9:                                                ; preds = %5, %1
  ret void
}

declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #5

declare void @psys_free(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_free_softbody(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @sbFree(ptr noundef nonnull %3) #17
  store ptr null, ptr %2, align 8, !tbaa !56
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

declare void @sbFree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_free_bulletsoftbody(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 101
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @bsbFree(ptr noundef nonnull %3) #17
  store ptr null, ptr %2, align 8, !tbaa !57
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

declare void @bsbFree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_free_curve_cache(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  tail call void @BKE_displist_free(ptr noundef nonnull %3) #17
  %6 = load ptr, ptr %2, align 8, !tbaa !58
  %7 = getelementptr inbounds %struct.CurveCache, ptr %6, i64 0, i32 1
  tail call void @BKE_curve_bevelList_free(ptr noundef nonnull %7) #17
  %8 = load ptr, ptr %2, align 8, !tbaa !58
  %9 = getelementptr inbounds %struct.CurveCache, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !59
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  tail call void @free_path(ptr noundef nonnull %10) #17
  br label %13

13:                                               ; preds = %12, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !58
  %15 = getelementptr inbounds %struct.CurveCache, ptr %14, i64 0, i32 2
  tail call void @BKE_nurbList_free(ptr noundef nonnull %15) #17
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %17 = load ptr, ptr %2, align 8, !tbaa !58
  tail call void %16(ptr noundef %17) #17
  store ptr null, ptr %2, align 8, !tbaa !58
  br label %18

18:                                               ; preds = %13, %1
  ret void
}

declare void @BKE_displist_free(ptr noundef) local_unnamed_addr #5

declare void @BKE_curve_bevelList_free(ptr noundef) local_unnamed_addr #5

declare void @free_path(ptr noundef) local_unnamed_addr #5

declare void @BKE_nurbList_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_free_modifiers(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %3 = tail call ptr @BLI_pophead(ptr noundef nonnull %2) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %9, %1
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 109
  %7 = tail call ptr @BLI_pophead(ptr noundef nonnull %6) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %13

9:                                                ; preds = %1, %9
  %10 = phi ptr [ %11, %9 ], [ %3, %1 ]
  tail call void @modifier_free(ptr noundef nonnull %10) #17
  %11 = tail call ptr @BLI_pophead(ptr noundef nonnull %2) #17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %5, label %9, !llvm.loop !61

13:                                               ; preds = %5, %13
  %14 = phi ptr [ %15, %13 ], [ %7, %5 ]
  tail call void @psys_free(ptr noundef %0, ptr noundef nonnull %14) #17
  %15 = tail call ptr @BLI_pophead(ptr noundef nonnull %6) #17
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %13, !llvm.loop !55

17:                                               ; preds = %13, %5
  %18 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %19 = load ptr, ptr %18, align 8, !tbaa !56
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @sbFree(ptr noundef nonnull %19) #17
  store ptr null, ptr %18, align 8, !tbaa !56
  br label %22

22:                                               ; preds = %17, %21
  ret void
}

declare void @modifier_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_modifier_hook_reset(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [4 x [4 x float]], align 16
  %5 = getelementptr inbounds %struct.HookModifierData, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq ptr %6, null
  br i1 %7, label %33, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  %11 = getelementptr inbounds %struct.HookModifierData, ptr %1, i64 0, i32 2
  %12 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %10, ptr noundef nonnull %11) #17
  %13 = load i8, ptr %11, align 8, !tbaa !66
  %14 = icmp ne i8 %13, 0
  %15 = icmp ne ptr %12, null
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %24

17:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  %18 = load ptr, ptr %5, align 8, !tbaa !62
  %19 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 47
  %20 = getelementptr inbounds %struct.bPoseChannel, ptr %12, i64 0, i32 29
  call void @mul_m4_m4m4(ptr noundef nonnull %4, ptr noundef nonnull %19, ptr noundef nonnull %20) #17
  %21 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %22 = getelementptr inbounds %struct.HookModifierData, ptr %1, i64 0, i32 3
  %23 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %22, ptr noundef nonnull %3, ptr noundef nonnull %23) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #17
  br label %33

24:                                               ; preds = %8
  %25 = load ptr, ptr %5, align 8, !tbaa !62
  %26 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 50
  %27 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 47
  %28 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %26, ptr noundef nonnull %27) #17
  %29 = getelementptr inbounds %struct.HookModifierData, ptr %1, i64 0, i32 3
  %30 = load ptr, ptr %5, align 8, !tbaa !62
  %31 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 50
  %32 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  tail call void @mul_m4_m4m4(ptr noundef nonnull %29, ptr noundef nonnull %31, ptr noundef nonnull %32) #17
  br label %33

33:                                               ; preds = %17, %24, %2
  ret void
}

declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_object_support_modifier_type_check(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = tail call ptr @modifierType_getInfo(i32 noundef %1) #17
  %4 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !67
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !69
  %11 = icmp ne i16 %10, 1
  %12 = and i32 %5, 1
  %13 = icmp eq i32 %12, 0
  %14 = or i1 %13, %11
  br i1 %14, label %16, label %15

15:                                               ; preds = %8, %2
  br label %16

16:                                               ; preds = %8, %15
  %17 = phi i8 [ 1, %15 ], [ 0, %8 ]
  ret i8 %17
}

declare ptr @modifierType_getInfo(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_link_modifiers(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  tail call void @BKE_object_free_modifiers(ptr noundef %0)
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !69
  switch i16 %4, label %64 [
    i16 1, label %5
    i16 2, label %5
    i16 3, label %5
    i16 4, label %5
    i16 22, label %5
  ]

5:                                                ; preds = %2, %2, %2, %2, %2
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = icmp eq ptr %7, null
  br i1 %8, label %42, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  br label %12

12:                                               ; preds = %9, %39
  %13 = phi ptr [ %7, %9 ], [ %40, %39 ]
  %14 = getelementptr inbounds %struct.ModifierData, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !70
  switch i32 %15, label %16 [
    i32 9, label %39
    i32 10, label %39
    i32 20, label %39
    i32 23, label %39
  ]

16:                                               ; preds = %12
  %17 = tail call ptr @modifierType_getInfo(i32 noundef %15) #17
  %18 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %17, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !67
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load i16, ptr %3, align 8, !tbaa !69
  %24 = icmp ne i16 %23, 1
  %25 = and i32 %19, 1
  %26 = icmp eq i32 %25, 0
  %27 = or i1 %26, %24
  br i1 %27, label %39, label %28

28:                                               ; preds = %22, %16
  %29 = load i32, ptr %14, align 8, !tbaa !70
  %30 = icmp eq i32 %29, 42
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load ptr, ptr %10, align 8, !tbaa !71
  tail call void @BKE_mesh_ensure_skin_customdata(ptr noundef %32) #17
  br label %33

33:                                               ; preds = %31, %28
  %34 = load i32, ptr %14, align 8, !tbaa !70
  %35 = tail call ptr @modifier_new(i32 noundef %34) #17
  %36 = getelementptr inbounds %struct.ModifierData, ptr %35, i64 0, i32 6
  %37 = getelementptr inbounds %struct.ModifierData, ptr %13, i64 0, i32 6
  %38 = tail call ptr @BLI_strncpy(ptr noundef nonnull %36, ptr noundef nonnull %37, i64 noundef 64) #17
  tail call void @modifier_copyData(ptr noundef nonnull %13, ptr noundef %35) #17
  tail call void @BLI_addtail(ptr noundef nonnull %11, ptr noundef %35) #17
  tail call void @modifier_unique_name(ptr noundef nonnull %11, ptr noundef %35) #17
  br label %39

39:                                               ; preds = %22, %12, %12, %12, %12, %33
  %40 = load ptr, ptr %13, align 8, !tbaa !47
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %12, !llvm.loop !72

42:                                               ; preds = %39, %5
  tail call void @BKE_object_copy_particlesystems(ptr noundef %0, ptr noundef %1)
  %43 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 111
  %44 = load ptr, ptr %43, align 8, !tbaa !56
  %45 = icmp eq ptr %44, null
  br i1 %45, label %64, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %48 = tail call ptr %47(ptr noundef nonnull %44) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %48, i8 0, i64 24, i1 false)
  %49 = getelementptr inbounds %struct.SoftBody, ptr %48, i64 0, i32 29
  %50 = getelementptr inbounds %struct.SoftBody, ptr %48, i64 0, i32 44
  store ptr null, ptr %50, align 8, !tbaa !73
  %51 = getelementptr inbounds %struct.SoftBody, ptr %48, i64 0, i32 48
  %52 = getelementptr inbounds %struct.SoftBody, ptr %44, i64 0, i32 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %49, i8 0, i64 16, i1 false)
  %53 = tail call ptr @BKE_ptcache_copy_list(ptr noundef nonnull %51, ptr noundef nonnull %52, i8 noundef zeroext 0) #17
  %54 = getelementptr inbounds %struct.SoftBody, ptr %48, i64 0, i32 47
  store ptr %53, ptr %54, align 8, !tbaa !75
  %55 = getelementptr inbounds %struct.SoftBody, ptr %44, i64 0, i32 49
  %56 = load ptr, ptr %55, align 8, !tbaa !76
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %46
  %59 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %60 = tail call ptr %59(ptr noundef nonnull %56) #17
  %61 = getelementptr inbounds %struct.SoftBody, ptr %48, i64 0, i32 49
  store ptr %60, ptr %61, align 8, !tbaa !76
  br label %62

62:                                               ; preds = %46, %58
  %63 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  store ptr %48, ptr %63, align 8, !tbaa !56
  br label %64

64:                                               ; preds = %62, %42, %2
  ret void
}

declare void @BKE_mesh_ensure_skin_customdata(ptr noundef) local_unnamed_addr #5

declare ptr @modifier_new(i32 noundef) local_unnamed_addr #5

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @modifier_copyData(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @modifier_unique_name(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_copy_particlesystems(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !69
  %5 = icmp eq i16 %4, 1
  br i1 %5, label %6, label %169

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 109
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 109
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = icmp eq ptr %9, null
  br i1 %10, label %169, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  br label %16

13:                                               ; preds = %166, %131
  %14 = load ptr, ptr %17, align 8, !tbaa !47
  %15 = icmp eq ptr %14, null
  br i1 %15, label %169, label %16, !llvm.loop !77

16:                                               ; preds = %11, %13
  %17 = phi ptr [ %9, %11 ], [ %14, %13 ]
  %18 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %19 = tail call ptr %18(ptr noundef nonnull %17) #17
  %20 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %21 = getelementptr inbounds %struct.ParticleSystem, ptr %17, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !78
  %23 = tail call ptr %20(ptr noundef %22) #17
  %24 = getelementptr inbounds %struct.ParticleSystem, ptr %19, i64 0, i32 3
  store ptr %23, ptr %24, align 8, !tbaa !78
  %25 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %26 = getelementptr inbounds %struct.ParticleSystem, ptr %17, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !80
  %28 = tail call ptr %25(ptr noundef %27) #17
  %29 = getelementptr inbounds %struct.ParticleSystem, ptr %19, i64 0, i32 4
  store ptr %28, ptr %29, align 8, !tbaa !80
  %30 = getelementptr inbounds %struct.ParticleSystem, ptr %17, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !81
  %32 = getelementptr inbounds %struct.ParticleSettings, ptr %31, i64 0, i32 7
  %33 = load i16, ptr %32, align 8, !tbaa !82
  %34 = icmp eq i16 %33, 2
  br i1 %34, label %35, label %52

35:                                               ; preds = %16
  %36 = getelementptr inbounds %struct.ParticleSystem, ptr %19, i64 0, i32 26
  %37 = load i32, ptr %36, align 8, !tbaa !84
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = load ptr, ptr %24, align 8, !tbaa !78
  br label %41

41:                                               ; preds = %39, %41
  %42 = phi i32 [ %48, %41 ], [ 0, %39 ]
  %43 = phi ptr [ %49, %41 ], [ %40, %39 ]
  %44 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %45 = getelementptr inbounds %struct.ParticleData, ptr %43, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !85
  %47 = tail call ptr %44(ptr noundef %46) #17
  store ptr %47, ptr %45, align 8, !tbaa !85
  %48 = add nuw nsw i32 %42, 1
  %49 = getelementptr inbounds %struct.ParticleData, ptr %43, i64 1
  %50 = load i32, ptr %36, align 8, !tbaa !84
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %41, label %52, !llvm.loop !88

52:                                               ; preds = %41, %35, %16
  %53 = load ptr, ptr %24, align 8, !tbaa !78
  %54 = icmp eq ptr %53, null
  br i1 %54, label %105, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.ParticleData, ptr %53, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !89
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.ParticleData, ptr %53, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !90
  %62 = icmp eq ptr %61, null
  br i1 %62, label %105, label %63

63:                                               ; preds = %59, %55
  %64 = getelementptr inbounds %struct.ParticleData, ptr %53, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !90
  br i1 %58, label %69, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %68 = tail call ptr %67(ptr noundef nonnull %57) #17
  br label %69

69:                                               ; preds = %66, %63
  %70 = phi ptr [ %68, %66 ], [ null, %63 ]
  %71 = icmp eq ptr %65, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %74 = tail call ptr %73(ptr noundef nonnull %65) #17
  br label %75

75:                                               ; preds = %72, %69
  %76 = phi ptr [ %74, %72 ], [ null, %69 ]
  %77 = getelementptr inbounds %struct.ParticleSystem, ptr %19, i64 0, i32 26
  %78 = load i32, ptr %77, align 8, !tbaa !84
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %105

80:                                               ; preds = %75
  %81 = load ptr, ptr %24, align 8, !tbaa !78
  br label %82

82:                                               ; preds = %80, %100
  %83 = phi ptr [ %92, %100 ], [ %76, %80 ]
  %84 = phi ptr [ %101, %100 ], [ %70, %80 ]
  %85 = phi i32 [ %102, %100 ], [ 0, %80 ]
  %86 = phi ptr [ %103, %100 ], [ %81, %80 ]
  %87 = icmp eq ptr %83, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.BoidParticle, ptr %83, i64 1
  %90 = getelementptr inbounds %struct.ParticleData, ptr %86, i64 0, i32 4
  store ptr %83, ptr %90, align 8, !tbaa !90
  br label %91

91:                                               ; preds = %88, %82
  %92 = phi ptr [ %89, %88 ], [ null, %82 ]
  %93 = icmp eq ptr %84, null
  br i1 %93, label %100, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.ParticleData, ptr %86, i64 0, i32 3
  store ptr %84, ptr %95, align 8, !tbaa !89
  %96 = getelementptr inbounds %struct.ParticleData, ptr %86, i64 0, i32 5
  %97 = load i32, ptr %96, align 8, !tbaa !91
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.ParticleKey, ptr %84, i64 %98
  br label %100

100:                                              ; preds = %94, %91
  %101 = phi ptr [ %99, %94 ], [ null, %91 ]
  %102 = add nuw nsw i32 %85, 1
  %103 = getelementptr inbounds %struct.ParticleData, ptr %86, i64 1
  %104 = icmp eq i32 %102, %78
  br i1 %104, label %105, label %82, !llvm.loop !92

105:                                              ; preds = %100, %75, %59, %52
  %106 = getelementptr inbounds %struct.ParticleSystem, ptr %17, i64 0, i32 11
  %107 = load ptr, ptr %106, align 8, !tbaa !93
  %108 = icmp eq ptr %107, null
  br i1 %108, label %114, label %109

109:                                              ; preds = %105
  %110 = tail call ptr @modifier_new(i32 noundef 22) #17
  %111 = getelementptr inbounds %struct.ParticleSystem, ptr %19, i64 0, i32 11
  store ptr %110, ptr %111, align 8, !tbaa !93
  %112 = load ptr, ptr %106, align 8, !tbaa !93
  tail call void @modifier_copyData(ptr noundef %112, ptr noundef %110) #17
  %113 = getelementptr inbounds %struct.ParticleSystem, ptr %17, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %113, i8 0, i64 16, i1 false)
  br label %114

114:                                              ; preds = %109, %105
  %115 = getelementptr inbounds %struct.ParticleSystem, ptr %19, i64 0, i32 17
  %116 = getelementptr inbounds %struct.ParticleSystem, ptr %17, i64 0, i32 17
  tail call void @BLI_duplicatelist(ptr noundef nonnull %115, ptr noundef nonnull %116) #17
  %117 = getelementptr inbounds %struct.ParticleSystem, ptr %19, i64 0, i32 7
  %118 = getelementptr inbounds %struct.ParticleSystem, ptr %19, i64 0, i32 5
  store ptr null, ptr %118, align 8, !tbaa !94
  %119 = getelementptr inbounds %struct.ParticleSystem, ptr %19, i64 0, i32 42
  store ptr null, ptr %119, align 8, !tbaa !95
  %120 = getelementptr inbounds %struct.ParticleSystem, ptr %19, i64 0, i32 46
  %121 = getelementptr inbounds %struct.ParticleSystem, ptr %19, i64 0, i32 39
  store ptr null, ptr %121, align 8, !tbaa !96
  %122 = getelementptr inbounds %struct.ParticleSystem, ptr %19, i64 0, i32 41
  %123 = getelementptr inbounds %struct.ParticleSystem, ptr %17, i64 0, i32 41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %117, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %120, i8 0, i64 24, i1 false)
  %124 = tail call ptr @BKE_ptcache_copy_list(ptr noundef nonnull %122, ptr noundef nonnull %123, i8 noundef zeroext 0) #17
  %125 = getelementptr inbounds %struct.ParticleSystem, ptr %19, i64 0, i32 40
  store ptr %124, ptr %125, align 8, !tbaa !97
  %126 = getelementptr inbounds %struct.ParticleSystem, ptr %19, i64 0, i32 11
  %127 = load ptr, ptr %126, align 8, !tbaa !93
  %128 = icmp eq ptr %127, null
  br i1 %128, label %131, label %129

129:                                              ; preds = %114
  %130 = getelementptr inbounds %struct.ClothModifierData, ptr %127, i64 0, i32 5
  store ptr %124, ptr %130, align 8, !tbaa !98
  br label %131

131:                                              ; preds = %114, %129
  %132 = getelementptr inbounds %struct.ParticleSystem, ptr %19, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !81
  tail call void @id_us_plus(ptr noundef %133) #17
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %19) #17
  %134 = load ptr, ptr %12, align 8, !tbaa !47
  %135 = icmp eq ptr %134, null
  br i1 %135, label %13, label %136

136:                                              ; preds = %131, %166
  %137 = phi ptr [ %167, %166 ], [ %134, %131 ]
  %138 = getelementptr inbounds %struct.ModifierData, ptr %137, i64 0, i32 2
  %139 = load i32, ptr %138, align 8, !tbaa !70
  switch i32 %139, label %166 [
    i32 19, label %140
    i32 40, label %144
    i32 31, label %152
  ]

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %137, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !100
  %143 = icmp eq ptr %142, %17
  br i1 %143, label %164, label %166

144:                                              ; preds = %136
  %145 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %137, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !102
  %147 = icmp eq ptr %146, null
  br i1 %147, label %166, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %146, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !104
  %151 = icmp eq ptr %150, %17
  br i1 %151, label %164, label %166

152:                                              ; preds = %136
  %153 = getelementptr inbounds %struct.SmokeModifierData, ptr %137, i64 0, i32 5
  %154 = load i32, ptr %153, align 4, !tbaa !106
  %155 = icmp eq i32 %154, 2
  br i1 %155, label %156, label %166

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.SmokeModifierData, ptr %137, i64 0, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !108
  %159 = icmp eq ptr %158, null
  br i1 %159, label %166, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %158, i64 0, i32 2
  %162 = load ptr, ptr %161, align 8, !tbaa !109
  %163 = icmp eq ptr %162, %17
  br i1 %163, label %164, label %166

164:                                              ; preds = %160, %148, %140
  %165 = phi ptr [ %141, %140 ], [ %149, %148 ], [ %161, %160 ]
  store ptr %19, ptr %165, align 8, !tbaa !47
  br label %166

166:                                              ; preds = %164, %152, %160, %156, %136, %144, %148, %140
  %167 = load ptr, ptr %137, align 8, !tbaa !47
  %168 = icmp eq ptr %167, null
  br i1 %168, label %13, label %136, !llvm.loop !111

169:                                              ; preds = %13, %6, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_copy_softbody(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 111
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %8 = tail call ptr %7(ptr noundef nonnull %4) #17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %9 = getelementptr inbounds %struct.SoftBody, ptr %8, i64 0, i32 29
  %10 = getelementptr inbounds %struct.SoftBody, ptr %8, i64 0, i32 44
  store ptr null, ptr %10, align 8, !tbaa !73
  %11 = getelementptr inbounds %struct.SoftBody, ptr %8, i64 0, i32 48
  %12 = getelementptr inbounds %struct.SoftBody, ptr %4, i64 0, i32 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %13 = tail call ptr @BKE_ptcache_copy_list(ptr noundef nonnull %11, ptr noundef nonnull %12, i8 noundef zeroext 0) #17
  %14 = getelementptr inbounds %struct.SoftBody, ptr %8, i64 0, i32 47
  store ptr %13, ptr %14, align 8, !tbaa !75
  %15 = getelementptr inbounds %struct.SoftBody, ptr %4, i64 0, i32 49
  %16 = load ptr, ptr %15, align 8, !tbaa !76
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %6
  %19 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %20 = tail call ptr %19(ptr noundef nonnull %16) #17
  %21 = getelementptr inbounds %struct.SoftBody, ptr %8, i64 0, i32 49
  store ptr %20, ptr %21, align 8, !tbaa !76
  br label %22

22:                                               ; preds = %6, %18
  %23 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  store ptr %8, ptr %23, align 8, !tbaa !56
  br label %24

24:                                               ; preds = %22, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_free_derived_caches(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !69
  switch i16 %3, label %21 [
    i16 1, label %4
    i16 3, label %10
    i16 2, label %10
    i16 4, label %10
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  %7 = getelementptr inbounds %struct.Mesh, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !112
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %16

10:                                               ; preds = %1, %1, %1
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = getelementptr inbounds %struct.Curve, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !115
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %10, %4
  %17 = phi ptr [ %8, %4 ], [ %14, %10 ]
  %18 = getelementptr inbounds %struct.BoundBox, ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !118
  %20 = or i32 %19, 2
  store i32 %20, ptr %18, align 4, !tbaa !118
  br label %21

21:                                               ; preds = %16, %10, %1, %4
  %22 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 15
  %23 = load ptr, ptr %22, align 8, !tbaa !120
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %26(ptr noundef nonnull %23) #17
  store ptr null, ptr %22, align 8, !tbaa !120
  br label %27

27:                                               ; preds = %25, %21
  %28 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 120
  %29 = load ptr, ptr %28, align 8, !tbaa !121
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.DerivedMesh, ptr %29, i64 0, i32 10
  store i32 1, ptr %32, align 4, !tbaa !122
  %33 = getelementptr inbounds %struct.DerivedMesh, ptr %29, i64 0, i32 95
  %34 = load ptr, ptr %33, align 8, !tbaa !124
  tail call void %34(ptr noundef nonnull %29) #17
  store ptr null, ptr %28, align 8, !tbaa !121
  br label %35

35:                                               ; preds = %31, %27
  %36 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 119
  %37 = load ptr, ptr %36, align 8, !tbaa !125
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %37, i64 0, i32 10
  store i32 1, ptr %40, align 4, !tbaa !122
  %41 = getelementptr inbounds %struct.DerivedMesh, ptr %37, i64 0, i32 95
  %42 = load ptr, ptr %41, align 8, !tbaa !124
  tail call void %42(ptr noundef nonnull %37) #17
  store ptr null, ptr %36, align 8, !tbaa !125
  br label %43

43:                                               ; preds = %39, %35
  %44 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  %45 = load ptr, ptr %44, align 8, !tbaa !58
  %46 = icmp eq ptr %45, null
  br i1 %46, label %60, label %47

47:                                               ; preds = %43
  tail call void @BKE_displist_free(ptr noundef nonnull %45) #17
  %48 = load ptr, ptr %44, align 8, !tbaa !58
  %49 = getelementptr inbounds %struct.CurveCache, ptr %48, i64 0, i32 1
  tail call void @BKE_curve_bevelList_free(ptr noundef nonnull %49) #17
  %50 = load ptr, ptr %44, align 8, !tbaa !58
  %51 = getelementptr inbounds %struct.CurveCache, ptr %50, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !59
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  tail call void @free_path(ptr noundef nonnull %52) #17
  br label %55

55:                                               ; preds = %54, %47
  %56 = load ptr, ptr %44, align 8, !tbaa !58
  %57 = getelementptr inbounds %struct.CurveCache, ptr %56, i64 0, i32 2
  tail call void @BKE_nurbList_free(ptr noundef nonnull %57) #17
  %58 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %59 = load ptr, ptr %44, align 8, !tbaa !58
  tail call void %58(ptr noundef %59) #17
  store ptr null, ptr %44, align 8, !tbaa !58
  br label %60

60:                                               ; preds = %43, %55
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_free_ex(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #4 {
  tail call void @BKE_object_free_derived_caches(ptr noundef %0)
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !126
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr %7, align 4, !tbaa !126
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !127
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %17 = load i16, ptr %16, align 8, !tbaa !69
  switch i16 %17, label %21 [
    i16 1, label %18
    i16 2, label %19
    i16 5, label %20
  ]

18:                                               ; preds = %15
  tail call void @BKE_mesh_unlink(ptr noundef nonnull %4) #17
  br label %21

19:                                               ; preds = %15
  tail call void @BKE_curve_unlink(ptr noundef nonnull %4) #17
  br label %21

20:                                               ; preds = %15
  tail call void @BKE_mball_unlink(ptr noundef nonnull %4) #17
  br label %21

21:                                               ; preds = %18, %19, %20, %15, %11, %6
  store ptr null, ptr %3, align 8, !tbaa !71
  br label %22

22:                                               ; preds = %21, %2
  %23 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 29
  %24 = load ptr, ptr %23, align 8, !tbaa !128
  %25 = icmp eq ptr %24, null
  br i1 %25, label %46, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  %28 = load i32, ptr %27, align 8, !tbaa !129
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = zext nneg i32 %28 to i64
  br label %32

32:                                               ; preds = %30, %41
  %33 = phi i64 [ 0, %30 ], [ %42, %41 ]
  %34 = getelementptr inbounds ptr, ptr %24, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !47
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.ID, ptr %35, i64 0, i32 6
  %39 = load i32, ptr %38, align 4, !tbaa !130
  %40 = add nsw i32 %39, -1
  store i32 %40, ptr %38, align 4, !tbaa !130
  br label %41

41:                                               ; preds = %32, %37
  %42 = add nuw nsw i64 %33, 1
  %43 = icmp eq i64 %42, %31
  br i1 %43, label %44, label %32, !llvm.loop !134

44:                                               ; preds = %41, %26
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %45(ptr noundef nonnull %24) #17
  br label %46

46:                                               ; preds = %44, %22
  %47 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 30
  %48 = load ptr, ptr %47, align 8, !tbaa !135
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %51(ptr noundef nonnull %48) #17
  br label %52

52:                                               ; preds = %50, %46
  %53 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 131
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  %54 = load ptr, ptr %53, align 8, !tbaa !136
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %57(ptr noundef nonnull %54) #17
  br label %58

58:                                               ; preds = %56, %52
  store ptr null, ptr %53, align 8, !tbaa !136
  %59 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 15
  %60 = load ptr, ptr %59, align 8, !tbaa !120
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %63(ptr noundef nonnull %60) #17
  br label %64

64:                                               ; preds = %62, %58
  store ptr null, ptr %59, align 8, !tbaa !120
  %65 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !137
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  tail call void @BKE_free_animdata(ptr noundef %0) #17
  br label %69

69:                                               ; preds = %68, %64
  %70 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 17
  %71 = load ptr, ptr %70, align 8, !tbaa !138
  %72 = icmp eq ptr %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.ID, ptr %71, i64 0, i32 6
  %75 = load i32, ptr %74, align 4, !tbaa !139
  %76 = add nsw i32 %75, -1
  store i32 %76, ptr %74, align 4, !tbaa !139
  br label %77

77:                                               ; preds = %73, %69
  %78 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 20
  %79 = load ptr, ptr %78, align 8, !tbaa !141
  %80 = icmp eq ptr %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.ID, ptr %79, i64 0, i32 6
  %83 = load i32, ptr %82, align 4, !tbaa !126
  %84 = add nsw i32 %83, -1
  store i32 %84, ptr %82, align 4, !tbaa !126
  br label %85

85:                                               ; preds = %81, %77
  %86 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %87 = load ptr, ptr %86, align 8, !tbaa !142
  %88 = icmp eq ptr %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  tail call void @BLI_freelistN(ptr noundef nonnull %86) #17
  br label %90

90:                                               ; preds = %89, %85
  %91 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %92 = load ptr, ptr %91, align 8, !tbaa !65
  %93 = icmp eq ptr %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  tail call void @BKE_pose_free_ex(ptr noundef nonnull %92, i8 noundef zeroext %1) #17
  br label %95

95:                                               ; preds = %94, %90
  %96 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 22
  %97 = load ptr, ptr %96, align 8, !tbaa !143
  %98 = icmp eq ptr %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  tail call void @animviz_free_motionpath(ptr noundef nonnull %97) #17
  br label %100

100:                                              ; preds = %99, %95
  %101 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 91
  tail call void @BKE_bproperty_free_list(ptr noundef nonnull %101) #17
  tail call void @BKE_object_free_modifiers(ptr noundef %0)
  %102 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 92
  tail call void @free_sensors(ptr noundef nonnull %102) #17
  %103 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 93
  tail call void @free_controllers(ptr noundef nonnull %103) #17
  %104 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 94
  tail call void @free_actuators(ptr noundef nonnull %104) #17
  %105 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 106
  tail call void @BKE_constraints_free(ptr noundef nonnull %105) #17
  %106 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 110
  %107 = load ptr, ptr %106, align 8, !tbaa !144
  tail call void @free_partdeflect(ptr noundef %107) #17
  tail call void @BKE_rigidbody_free_object(ptr noundef %0) #17
  tail call void @BKE_rigidbody_free_constraint(ptr noundef %0) #17
  %108 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %109 = load ptr, ptr %108, align 8, !tbaa !56
  %110 = icmp eq ptr %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %100
  tail call void @sbFree(ptr noundef nonnull %109) #17
  br label %112

112:                                              ; preds = %111, %100
  %113 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 101
  %114 = load ptr, ptr %113, align 8, !tbaa !57
  %115 = icmp eq ptr %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  tail call void @bsbFree(ptr noundef nonnull %114) #17
  br label %117

117:                                              ; preds = %116, %112
  %118 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 125
  %119 = load ptr, ptr %118, align 8, !tbaa !145
  %120 = icmp eq ptr %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %117
  tail call void @GPU_lamp_free(ptr noundef %0) #17
  br label %122

122:                                              ; preds = %121, %117
  tail call void @BKE_free_sculptsession(ptr noundef %0) #17
  %123 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 126
  %124 = load ptr, ptr %123, align 8, !tbaa !146
  %125 = icmp eq ptr %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  tail call void @BLI_freelistN(ptr noundef nonnull %123) #17
  br label %127

127:                                              ; preds = %126, %122
  %128 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 132
  tail call void @BLI_freelistN(ptr noundef nonnull %128) #17
  %129 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  %130 = load ptr, ptr %129, align 8, !tbaa !58
  %131 = icmp eq ptr %130, null
  br i1 %131, label %142, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.CurveCache, ptr %130, i64 0, i32 1
  tail call void @BKE_curve_bevelList_free(ptr noundef nonnull %133) #17
  %134 = load ptr, ptr %129, align 8, !tbaa !58
  %135 = getelementptr inbounds %struct.CurveCache, ptr %134, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !59
  %137 = icmp eq ptr %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %132
  tail call void @free_path(ptr noundef nonnull %136) #17
  br label %139

139:                                              ; preds = %138, %132
  %140 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %141 = load ptr, ptr %129, align 8, !tbaa !58
  tail call void %140(ptr noundef %141) #17
  br label %142

142:                                              ; preds = %139, %127
  ret void
}

declare void @BKE_mesh_unlink(ptr noundef) local_unnamed_addr #5

declare void @BKE_curve_unlink(ptr noundef) local_unnamed_addr #5

declare void @BKE_mball_unlink(ptr noundef) local_unnamed_addr #5

declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #5

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #5

declare void @BKE_pose_free_ex(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

declare void @animviz_free_motionpath(ptr noundef) local_unnamed_addr #5

declare void @BKE_bproperty_free_list(ptr noundef) local_unnamed_addr #5

declare void @free_sensors(ptr noundef) local_unnamed_addr #5

declare void @free_controllers(ptr noundef) local_unnamed_addr #5

declare void @free_actuators(ptr noundef) local_unnamed_addr #5

declare void @BKE_constraints_free(ptr noundef) local_unnamed_addr #5

declare void @free_partdeflect(ptr noundef) local_unnamed_addr #5

declare void @BKE_rigidbody_free_object(ptr noundef) local_unnamed_addr #5

declare void @BKE_rigidbody_free_constraint(ptr noundef) local_unnamed_addr #5

declare void @GPU_lamp_free(ptr noundef) local_unnamed_addr #5

declare void @BKE_free_sculptsession(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_free(ptr noundef %0) local_unnamed_addr #4 {
  tail call void @BKE_object_free_ex(ptr noundef %0, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_unlink(ptr noundef %0) local_unnamed_addr #4 {
  %2 = alloca %struct.ListBase, align 8
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.SeqIterator, align 8
  %5 = alloca %struct.BLI_mempool_iter, align 8
  %6 = load ptr, ptr @G, align 8, !tbaa !147
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 93
  tail call void @unlink_controllers(ptr noundef nonnull %7) #17
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 94
  tail call void @unlink_actuators(ptr noundef nonnull %8) #17
  %9 = getelementptr inbounds %struct.Main, ptr %6, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = icmp eq ptr %10, null
  br i1 %11, label %284, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %14 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 110
  br label %18

15:                                               ; preds = %281, %271
  %16 = load ptr, ptr %19, align 8, !tbaa !47
  %17 = icmp eq ptr %16, null
  br i1 %17, label %284, label %18, !llvm.loop !149

18:                                               ; preds = %12, %15
  %19 = phi ptr [ %10, %12 ], [ %16, %15 ]
  %20 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 11
  %21 = load ptr, ptr %20, align 8, !tbaa !150
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store ptr null, ptr %20, align 8, !tbaa !150
  br label %24

24:                                               ; preds = %23, %18
  %25 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 13
  %26 = load ptr, ptr %25, align 8, !tbaa !151
  %27 = icmp eq ptr %26, %0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store ptr null, ptr %25, align 8, !tbaa !151
  call void @DAG_id_tag_update(ptr noundef nonnull %19, i16 noundef signext 1) #17
  br label %29

29:                                               ; preds = %28, %24
  %30 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 12
  %31 = load ptr, ptr %30, align 8, !tbaa !152
  %32 = icmp eq ptr %31, %0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store ptr null, ptr %30, align 8, !tbaa !152
  br label %34

34:                                               ; preds = %33, %29
  %35 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !153
  %37 = icmp eq ptr %36, %0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store ptr null, ptr %35, align 8, !tbaa !153
  call void @DAG_id_tag_update(ptr noundef nonnull %19, i16 noundef signext 7) #17
  br label %39

39:                                               ; preds = %38, %34
  call void @modifiers_foreachObjectLink(ptr noundef nonnull %19, ptr noundef nonnull @unlink_object__unlinkModifierLinks, ptr noundef %0) #17
  %40 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 3
  %41 = load i16, ptr %40, align 8, !tbaa !69
  switch i16 %41, label %109 [
    i16 2, label %42
    i16 4, label %42
    i16 25, label %59
  ]

42:                                               ; preds = %39, %39
  %43 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 19
  %44 = load ptr, ptr %43, align 8, !tbaa !71
  %45 = getelementptr inbounds %struct.Curve, ptr %44, i64 0, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !154
  %47 = icmp eq ptr %46, %0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store ptr null, ptr %45, align 8, !tbaa !154
  call void @DAG_id_tag_update(ptr noundef nonnull %19, i16 noundef signext 7) #17
  br label %49

49:                                               ; preds = %48, %42
  %50 = getelementptr inbounds %struct.Curve, ptr %44, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !155
  %52 = icmp eq ptr %51, %0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store ptr null, ptr %50, align 8, !tbaa !155
  call void @DAG_id_tag_update(ptr noundef nonnull %19, i16 noundef signext 7) #17
  br label %54

54:                                               ; preds = %53, %49
  %55 = getelementptr inbounds %struct.Curve, ptr %44, i64 0, i32 7
  %56 = load ptr, ptr %55, align 8, !tbaa !156
  %57 = icmp eq ptr %56, %0
  br i1 %57, label %58, label %119

58:                                               ; preds = %54
  store ptr null, ptr %55, align 8, !tbaa !156
  br label %117

59:                                               ; preds = %39
  %60 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 18
  %61 = load ptr, ptr %60, align 8, !tbaa !65
  %62 = icmp eq ptr %61, null
  br i1 %62, label %109, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %61, align 8, !tbaa !47
  %65 = icmp eq ptr %64, null
  br i1 %65, label %119, label %66

66:                                               ; preds = %63, %106
  %67 = phi ptr [ %107, %106 ], [ %64, %63 ]
  %68 = getelementptr inbounds %struct.bPoseChannel, ptr %67, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !47
  %70 = icmp eq ptr %69, null
  br i1 %70, label %101, label %71

71:                                               ; preds = %66, %98
  %72 = phi ptr [ %99, %98 ], [ %69, %66 ]
  %73 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %72) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %74 = icmp eq ptr %73, null
  br i1 %74, label %98, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %73, i64 0, i32 8
  %77 = load ptr, ptr %76, align 8, !tbaa !157
  %78 = icmp eq ptr %77, null
  br i1 %78, label %98, label %79

79:                                               ; preds = %75
  %80 = call i32 %77(ptr noundef nonnull %72, ptr noundef nonnull %2) #17
  %81 = load ptr, ptr %2, align 8, !tbaa !47
  %82 = icmp eq ptr %81, null
  br i1 %82, label %93, label %83

83:                                               ; preds = %79, %90
  %84 = phi ptr [ %91, %90 ], [ %81, %79 ]
  %85 = getelementptr inbounds %struct.bConstraintTarget, ptr %84, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !159
  %87 = icmp eq ptr %86, %0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  store ptr null, ptr %85, align 8, !tbaa !159
  %89 = getelementptr inbounds %struct.bConstraintTarget, ptr %84, i64 0, i32 3
  store i8 0, ptr %89, align 8, !tbaa !66
  call void @DAG_id_tag_update(ptr noundef nonnull %19, i16 noundef signext 2) #17
  br label %90

90:                                               ; preds = %83, %88
  %91 = load ptr, ptr %84, align 8, !tbaa !47
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %83, !llvm.loop !161

93:                                               ; preds = %90, %79
  %94 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %73, i64 0, i32 9
  %95 = load ptr, ptr %94, align 8, !tbaa !162
  %96 = icmp eq ptr %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  call void %95(ptr noundef nonnull %72, ptr noundef nonnull %2, i8 noundef zeroext 0) #17
  br label %98

98:                                               ; preds = %93, %97, %75, %71
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #17
  %99 = load ptr, ptr %72, align 8, !tbaa !47
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %71, !llvm.loop !163

101:                                              ; preds = %98, %66
  %102 = getelementptr inbounds %struct.bPoseChannel, ptr %67, i64 0, i32 18
  %103 = load ptr, ptr %102, align 8, !tbaa !164
  %104 = icmp eq ptr %103, %0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store ptr null, ptr %102, align 8, !tbaa !164
  br label %106

106:                                              ; preds = %101, %105
  %107 = load ptr, ptr %67, align 8, !tbaa !47
  %108 = icmp eq ptr %107, null
  br i1 %108, label %119, label %66, !llvm.loop !166

109:                                              ; preds = %39, %59
  %110 = load i16, ptr %13, align 8, !tbaa !69
  %111 = icmp eq i16 %110, 5
  %112 = icmp eq i16 %41, 5
  %113 = or i1 %112, %111
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = call zeroext i8 @BKE_mball_is_basis_for(ptr noundef nonnull %19, ptr noundef %0) #17
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %114, %58
  %118 = phi i16 [ 7, %58 ], [ 2, %114 ]
  call void @DAG_id_tag_update(ptr noundef nonnull %19, i16 noundef signext %118) #17
  br label %119

119:                                              ; preds = %106, %117, %63, %109, %114, %54
  call void @sca_remove_ob_poin(ptr noundef nonnull %19, ptr noundef %0) #17
  %120 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 106
  %121 = load ptr, ptr %120, align 8, !tbaa !47
  %122 = icmp eq ptr %121, null
  br i1 %122, label %153, label %123

123:                                              ; preds = %119, %150
  %124 = phi ptr [ %151, %150 ], [ %121, %119 ]
  %125 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %124) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %126 = icmp eq ptr %125, null
  br i1 %126, label %150, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %125, i64 0, i32 8
  %129 = load ptr, ptr %128, align 8, !tbaa !157
  %130 = icmp eq ptr %129, null
  br i1 %130, label %150, label %131

131:                                              ; preds = %127
  %132 = call i32 %129(ptr noundef nonnull %124, ptr noundef nonnull %3) #17
  %133 = load ptr, ptr %3, align 8, !tbaa !47
  %134 = icmp eq ptr %133, null
  br i1 %134, label %145, label %135

135:                                              ; preds = %131, %142
  %136 = phi ptr [ %143, %142 ], [ %133, %131 ]
  %137 = getelementptr inbounds %struct.bConstraintTarget, ptr %136, i64 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !159
  %139 = icmp eq ptr %138, %0
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  store ptr null, ptr %137, align 8, !tbaa !159
  %141 = getelementptr inbounds %struct.bConstraintTarget, ptr %136, i64 0, i32 3
  store i8 0, ptr %141, align 8, !tbaa !66
  call void @DAG_id_tag_update(ptr noundef nonnull %19, i16 noundef signext 2) #17
  br label %142

142:                                              ; preds = %135, %140
  %143 = load ptr, ptr %136, align 8, !tbaa !47
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %135, !llvm.loop !167

145:                                              ; preds = %142, %131
  %146 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %125, i64 0, i32 9
  %147 = load ptr, ptr %146, align 8, !tbaa !162
  %148 = icmp eq ptr %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %145
  call void %147(ptr noundef nonnull %124, ptr noundef nonnull %3, i8 noundef zeroext 0) #17
  br label %150

150:                                              ; preds = %145, %149, %127, %123
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  %151 = load ptr, ptr %124, align 8, !tbaa !47
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %123, !llvm.loop !168

153:                                              ; preds = %150, %119
  %154 = load ptr, ptr %14, align 8, !tbaa !144
  %155 = icmp eq ptr %154, null
  br i1 %155, label %174, label %156

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 111
  %158 = load ptr, ptr %157, align 8, !tbaa !56
  %159 = icmp eq ptr %158, null
  br i1 %159, label %161, label %160

160:                                              ; preds = %156
  call void @DAG_id_tag_update(ptr noundef nonnull %19, i16 noundef signext 2) #17
  br label %161

161:                                              ; preds = %160, %156
  %162 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 26
  %163 = load ptr, ptr %162, align 8, !tbaa !47
  %164 = icmp eq ptr %163, null
  br i1 %164, label %174, label %165

165:                                              ; preds = %161, %171
  %166 = phi ptr [ %172, %171 ], [ %163, %161 ]
  %167 = getelementptr inbounds %struct.ModifierData, ptr %166, i64 0, i32 2
  %168 = load i32, ptr %167, align 8, !tbaa !70
  %169 = icmp eq i32 %168, 22
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  call void @DAG_id_tag_update(ptr noundef nonnull %19, i16 noundef signext 2) #17
  br label %171

171:                                              ; preds = %165, %170
  %172 = load ptr, ptr %166, align 8, !tbaa !47
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %165, !llvm.loop !169

174:                                              ; preds = %171, %161, %153
  %175 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 109
  %176 = load ptr, ptr %175, align 8, !tbaa !170
  %177 = icmp eq ptr %176, null
  br i1 %177, label %271, label %178

178:                                              ; preds = %174, %264
  %179 = phi ptr [ %265, %264 ], [ %176, %174 ]
  %180 = getelementptr inbounds %struct.ParticleSystem, ptr %179, i64 0, i32 17
  br label %181

181:                                              ; preds = %185, %178
  %182 = phi ptr [ %180, %178 ], [ %183, %185 ]
  %183 = load ptr, ptr %182, align 8, !tbaa !47
  %184 = icmp eq ptr %183, null
  br i1 %184, label %191, label %185

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.ParticleTarget, ptr %183, i64 0, i32 2
  %187 = load ptr, ptr %186, align 8, !tbaa !171
  %188 = icmp eq ptr %187, %0
  br i1 %188, label %189, label %181, !llvm.loop !173

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.ParticleTarget, ptr %183, i64 0, i32 2
  store ptr null, ptr %190, align 8, !tbaa !171
  call void @DAG_id_tag_update(ptr noundef nonnull %19, i16 noundef signext 2) #17
  br label %191

191:                                              ; preds = %181, %189
  %192 = getelementptr inbounds %struct.ParticleSystem, ptr %179, i64 0, i32 14
  %193 = load ptr, ptr %192, align 8, !tbaa !174
  %194 = icmp eq ptr %193, %0
  br i1 %194, label %195, label %196

195:                                              ; preds = %191
  store ptr null, ptr %192, align 8, !tbaa !174
  call void @DAG_id_tag_update(ptr noundef nonnull %19, i16 noundef signext 2) #17
  br label %196

196:                                              ; preds = %195, %191
  %197 = getelementptr inbounds %struct.ParticleSystem, ptr %179, i64 0, i32 2
  %198 = load ptr, ptr %197, align 8, !tbaa !81
  %199 = getelementptr inbounds %struct.ParticleSettings, ptr %198, i64 0, i32 125
  %200 = load ptr, ptr %199, align 8, !tbaa !175
  %201 = icmp eq ptr %200, %0
  br i1 %201, label %202, label %203

202:                                              ; preds = %196
  store ptr null, ptr %199, align 8, !tbaa !175
  br label %203

203:                                              ; preds = %202, %196
  %204 = getelementptr inbounds %struct.ParticleSettings, ptr %198, i64 0, i32 11
  %205 = load i16, ptr %204, align 8, !tbaa !176
  %206 = icmp eq i16 %205, 3
  br i1 %206, label %207, label %226

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.ParticleSystem, ptr %179, i64 0, i32 26
  %209 = load i32, ptr %208, align 8, !tbaa !84
  %210 = icmp sgt i32 %209, 0
  br i1 %210, label %211, label %226

211:                                              ; preds = %207
  %212 = getelementptr inbounds %struct.ParticleSystem, ptr %179, i64 0, i32 3
  %213 = load ptr, ptr %212, align 8, !tbaa !78
  br label %214

214:                                              ; preds = %211, %222
  %215 = phi i32 [ %223, %222 ], [ 0, %211 ]
  %216 = phi ptr [ %224, %222 ], [ %213, %211 ]
  %217 = getelementptr inbounds %struct.ParticleData, ptr %216, i64 0, i32 4
  %218 = load ptr, ptr %217, align 8, !tbaa !90
  %219 = load ptr, ptr %218, align 8, !tbaa !177
  %220 = icmp eq ptr %219, %0
  br i1 %220, label %221, label %222

221:                                              ; preds = %214
  store ptr null, ptr %218, align 8, !tbaa !177
  br label %222

222:                                              ; preds = %214, %221
  %223 = add nuw nsw i32 %215, 1
  %224 = getelementptr inbounds %struct.ParticleData, ptr %216, i64 1
  %225 = icmp eq i32 %223, %209
  br i1 %225, label %226, label %214, !llvm.loop !180

226:                                              ; preds = %222, %207, %203
  %227 = getelementptr inbounds %struct.ParticleSettings, ptr %198, i64 0, i32 2
  %228 = load ptr, ptr %227, align 8, !tbaa !181
  %229 = icmp eq ptr %228, null
  br i1 %229, label %259, label %230

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.BoidSettings, ptr %228, i64 0, i32 22
  %232 = load ptr, ptr %231, align 8, !tbaa !47
  %233 = icmp eq ptr %232, null
  br i1 %233, label %259, label %237

234:                                              ; preds = %256, %237
  %235 = load ptr, ptr %238, align 8, !tbaa !47
  %236 = icmp eq ptr %235, null
  br i1 %236, label %259, label %237, !llvm.loop !182

237:                                              ; preds = %230, %234
  %238 = phi ptr [ %235, %234 ], [ %232, %230 ]
  %239 = getelementptr inbounds %struct.BoidState, ptr %238, i64 0, i32 2
  %240 = load ptr, ptr %239, align 8, !tbaa !47
  %241 = icmp eq ptr %240, null
  br i1 %241, label %234, label %242

242:                                              ; preds = %237, %256
  %243 = phi ptr [ %257, %256 ], [ %240, %237 ]
  %244 = getelementptr inbounds %struct.BoidRule, ptr %243, i64 0, i32 2
  %245 = load i32, ptr %244, align 8, !tbaa !183
  switch i32 %245, label %256 [
    i32 2, label %246
    i32 6, label %250
  ]

246:                                              ; preds = %242
  %247 = getelementptr inbounds %struct.BoidRuleGoalAvoid, ptr %243, i64 0, i32 1
  %248 = load ptr, ptr %247, align 8, !tbaa !185
  %249 = icmp eq ptr %248, %0
  br i1 %249, label %254, label %256

250:                                              ; preds = %242
  %251 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %243, i64 0, i32 1
  %252 = load ptr, ptr %251, align 8, !tbaa !187
  %253 = icmp eq ptr %252, %0
  br i1 %253, label %254, label %256

254:                                              ; preds = %250, %246
  %255 = phi ptr [ %247, %246 ], [ %251, %250 ]
  store ptr null, ptr %255, align 8, !tbaa !47
  br label %256

256:                                              ; preds = %254, %250, %242, %246
  %257 = load ptr, ptr %243, align 8, !tbaa !47
  %258 = icmp eq ptr %257, null
  br i1 %258, label %234, label %242, !llvm.loop !189

259:                                              ; preds = %234, %230, %226
  %260 = getelementptr inbounds %struct.ParticleSystem, ptr %179, i64 0, i32 16
  %261 = load ptr, ptr %260, align 8, !tbaa !190
  %262 = icmp eq ptr %261, %0
  br i1 %262, label %263, label %264

263:                                              ; preds = %259
  store ptr null, ptr %260, align 8, !tbaa !190
  br label %264

264:                                              ; preds = %263, %259
  %265 = load ptr, ptr %179, align 8, !tbaa !191
  %266 = icmp eq ptr %265, null
  br i1 %266, label %267, label %178, !llvm.loop !192

267:                                              ; preds = %264
  %268 = load ptr, ptr %14, align 8, !tbaa !144
  %269 = icmp eq ptr %268, null
  br i1 %269, label %271, label %270

270:                                              ; preds = %267
  call void @DAG_id_tag_update(ptr noundef nonnull %19, i16 noundef signext 2) #17
  br label %271

271:                                              ; preds = %267, %270, %174
  %272 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 132
  %273 = load ptr, ptr %272, align 8, !tbaa !47
  %274 = icmp eq ptr %273, null
  br i1 %274, label %15, label %275

275:                                              ; preds = %271, %281
  %276 = phi ptr [ %282, %281 ], [ %273, %271 ]
  %277 = getelementptr inbounds %struct.LodLevel, ptr %276, i64 0, i32 2
  %278 = load ptr, ptr %277, align 8, !tbaa !193
  %279 = icmp eq ptr %278, %0
  br i1 %279, label %280, label %281

280:                                              ; preds = %275
  store ptr null, ptr %277, align 8, !tbaa !193
  br label %281

281:                                              ; preds = %275, %280
  %282 = load ptr, ptr %276, align 8, !tbaa !47
  %283 = icmp eq ptr %282, null
  br i1 %283, label %15, label %275, !llvm.loop !195

284:                                              ; preds = %15, %1
  %285 = getelementptr inbounds %struct.Main, ptr %6, i64 0, i32 17
  %286 = load ptr, ptr %285, align 8, !tbaa !47
  %287 = icmp eq ptr %286, null
  br i1 %287, label %306, label %291

288:                                              ; preds = %303
  %289 = load ptr, ptr %292, align 8, !tbaa !47
  %290 = icmp eq ptr %289, null
  br i1 %290, label %306, label %291, !llvm.loop !196

291:                                              ; preds = %284, %288
  %292 = phi ptr [ %289, %288 ], [ %286, %284 ]
  br label %293

293:                                              ; preds = %291, %303
  %294 = phi i64 [ 0, %291 ], [ %304, %303 ]
  %295 = getelementptr inbounds %struct.Material, ptr %292, i64 0, i32 102, i64 %294
  %296 = load ptr, ptr %295, align 8, !tbaa !47
  %297 = icmp eq ptr %296, null
  br i1 %297, label %303, label %298

298:                                              ; preds = %293
  %299 = getelementptr inbounds %struct.MTex, ptr %296, i64 0, i32 4
  %300 = load ptr, ptr %299, align 8, !tbaa !197
  %301 = icmp eq ptr %300, %0
  br i1 %301, label %302, label %303

302:                                              ; preds = %298
  store ptr null, ptr %299, align 8, !tbaa !197
  br label %303

303:                                              ; preds = %293, %298, %302
  %304 = add nuw nsw i64 %294, 1
  %305 = icmp eq i64 %304, 18
  br i1 %305, label %288, label %293, !llvm.loop !199

306:                                              ; preds = %288, %284
  %307 = getelementptr inbounds %struct.Main, ptr %6, i64 0, i32 18
  %308 = load ptr, ptr %307, align 8, !tbaa !47
  %309 = icmp eq ptr %308, null
  br i1 %309, label %340, label %310

310:                                              ; preds = %306, %337
  %311 = phi ptr [ %338, %337 ], [ %308, %306 ]
  %312 = getelementptr inbounds %struct.Tex, ptr %311, i64 0, i32 56
  %313 = load ptr, ptr %312, align 8, !tbaa !200
  %314 = icmp eq ptr %313, null
  br i1 %314, label %319, label %315

315:                                              ; preds = %310
  %316 = load ptr, ptr %313, align 8, !tbaa !203
  %317 = icmp eq ptr %316, %0
  br i1 %317, label %318, label %319

318:                                              ; preds = %315
  store ptr null, ptr %313, align 8, !tbaa !203
  br label %319

319:                                              ; preds = %318, %315, %310
  %320 = getelementptr inbounds %struct.Tex, ptr %311, i64 0, i32 58
  %321 = load ptr, ptr %320, align 8, !tbaa !205
  %322 = icmp eq ptr %321, null
  br i1 %322, label %328, label %323

323:                                              ; preds = %319
  %324 = getelementptr inbounds %struct.PointDensity, ptr %321, i64 0, i32 8
  %325 = load ptr, ptr %324, align 8, !tbaa !206
  %326 = icmp eq ptr %325, %0
  br i1 %326, label %327, label %328

327:                                              ; preds = %323
  store ptr null, ptr %324, align 8, !tbaa !206
  br label %328

328:                                              ; preds = %327, %323, %319
  %329 = getelementptr inbounds %struct.Tex, ptr %311, i64 0, i32 59
  %330 = load ptr, ptr %329, align 8, !tbaa !208
  %331 = icmp eq ptr %330, null
  br i1 %331, label %337, label %332

332:                                              ; preds = %328
  %333 = getelementptr inbounds %struct.VoxelData, ptr %330, i64 0, i32 9
  %334 = load ptr, ptr %333, align 8, !tbaa !209
  %335 = icmp eq ptr %334, %0
  br i1 %335, label %336, label %337

336:                                              ; preds = %332
  store ptr null, ptr %333, align 8, !tbaa !209
  br label %337

337:                                              ; preds = %328, %332, %336
  %338 = load ptr, ptr %311, align 8, !tbaa !47
  %339 = icmp eq ptr %338, null
  br i1 %339, label %340, label %310, !llvm.loop !211

340:                                              ; preds = %337, %306
  %341 = getelementptr inbounds %struct.Main, ptr %6, i64 0, i32 25
  %342 = load ptr, ptr %341, align 8, !tbaa !47
  %343 = icmp eq ptr %342, null
  br i1 %343, label %365, label %344

344:                                              ; preds = %340, %362
  %345 = phi ptr [ %363, %362 ], [ %342, %340 ]
  %346 = getelementptr inbounds %struct.ID, ptr %345, i64 0, i32 3
  %347 = load ptr, ptr %346, align 8, !tbaa !212
  %348 = icmp eq ptr %347, null
  br i1 %348, label %349, label %362

349:                                              ; preds = %344, %359
  %350 = phi i64 [ %360, %359 ], [ 0, %344 ]
  %351 = getelementptr inbounds %struct.World, ptr %345, i64 0, i32 70, i64 %350
  %352 = load ptr, ptr %351, align 8, !tbaa !47
  %353 = icmp eq ptr %352, null
  br i1 %353, label %359, label %354

354:                                              ; preds = %349
  %355 = getelementptr inbounds %struct.MTex, ptr %352, i64 0, i32 4
  %356 = load ptr, ptr %355, align 8, !tbaa !197
  %357 = icmp eq ptr %356, %0
  br i1 %357, label %358, label %359

358:                                              ; preds = %354
  store ptr null, ptr %355, align 8, !tbaa !197
  br label %359

359:                                              ; preds = %349, %354, %358
  %360 = add nuw nsw i64 %350, 1
  %361 = icmp eq i64 %360, 18
  br i1 %361, label %362, label %349, !llvm.loop !214

362:                                              ; preds = %359, %344
  %363 = load ptr, ptr %345, align 8, !tbaa !47
  %364 = icmp eq ptr %363, null
  br i1 %364, label %365, label %344, !llvm.loop !215

365:                                              ; preds = %362, %340
  %366 = getelementptr inbounds %struct.Main, ptr %6, i64 0, i32 11
  %367 = load ptr, ptr %366, align 8, !tbaa !47
  %368 = icmp eq ptr %367, null
  br i1 %368, label %448, label %369

369:                                              ; preds = %365
  %370 = getelementptr inbounds %struct.SeqIterator, ptr %4, i64 0, i32 4
  %371 = getelementptr inbounds %struct.SeqIterator, ptr %4, i64 0, i32 3
  br label %372

372:                                              ; preds = %369, %445
  %373 = phi ptr [ %367, %369 ], [ %446, %445 ]
  %374 = getelementptr inbounds %struct.ID, ptr %373, i64 0, i32 3
  %375 = load ptr, ptr %374, align 8, !tbaa !216
  %376 = icmp eq ptr %375, null
  br i1 %376, label %377, label %445

377:                                              ; preds = %372
  %378 = getelementptr inbounds %struct.Scene, ptr %373, i64 0, i32 2
  %379 = load ptr, ptr %378, align 8, !tbaa !235
  %380 = icmp eq ptr %379, %0
  br i1 %380, label %381, label %382

381:                                              ; preds = %377
  store ptr null, ptr %378, align 8, !tbaa !235
  br label %382

382:                                              ; preds = %381, %377
  %383 = getelementptr inbounds %struct.Scene, ptr %373, i64 0, i32 20
  %384 = load ptr, ptr %383, align 8, !tbaa !236
  %385 = getelementptr inbounds %struct.ToolSettings, ptr %384, i64 0, i32 41
  %386 = load ptr, ptr %385, align 8, !tbaa !237
  %387 = icmp eq ptr %386, %0
  br i1 %387, label %388, label %389

388:                                              ; preds = %382
  store ptr null, ptr %385, align 8, !tbaa !237
  br label %389

389:                                              ; preds = %388, %382
  %390 = getelementptr inbounds %struct.ToolSettings, ptr %384, i64 0, i32 18, i32 13
  %391 = load ptr, ptr %390, align 8, !tbaa !244
  %392 = icmp eq ptr %391, %0
  br i1 %392, label %393, label %394

393:                                              ; preds = %389
  store ptr null, ptr %390, align 8, !tbaa !244
  br label %394

394:                                              ; preds = %393, %389
  %395 = getelementptr inbounds %struct.Scene, ptr %373, i64 0, i32 24
  %396 = load ptr, ptr %395, align 8, !tbaa !47
  %397 = icmp eq ptr %396, null
  br i1 %397, label %407, label %398

398:                                              ; preds = %394, %404
  %399 = phi ptr [ %405, %404 ], [ %396, %394 ]
  %400 = getelementptr inbounds %struct.TimeMarker, ptr %399, i64 0, i32 5
  %401 = load ptr, ptr %400, align 8, !tbaa !245
  %402 = icmp eq ptr %401, %0
  br i1 %402, label %403, label %404

403:                                              ; preds = %398
  store ptr null, ptr %400, align 8, !tbaa !245
  br label %404

404:                                              ; preds = %398, %403
  %405 = load ptr, ptr %399, align 8, !tbaa !47
  %406 = icmp eq ptr %405, null
  br i1 %406, label %407, label %398, !llvm.loop !247

407:                                              ; preds = %404, %394
  %408 = getelementptr inbounds %struct.Scene, ptr %373, i64 0, i32 19
  %409 = load ptr, ptr %408, align 8, !tbaa !248
  %410 = icmp eq ptr %409, null
  br i1 %410, label %424, label %411

411:                                              ; preds = %407
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #17
  call void @BKE_sequence_iterator_begin(ptr noundef nonnull %409, ptr noundef nonnull %4, i8 noundef zeroext 0) #17
  %412 = load i32, ptr %370, align 8, !tbaa !249
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %423, label %414

414:                                              ; preds = %411, %420
  %415 = load ptr, ptr %371, align 8, !tbaa !251
  %416 = getelementptr inbounds %struct.Sequence, ptr %415, i64 0, i32 27
  %417 = load ptr, ptr %416, align 8, !tbaa !252
  %418 = icmp eq ptr %417, %0
  br i1 %418, label %419, label %420

419:                                              ; preds = %414
  store ptr null, ptr %416, align 8, !tbaa !252
  br label %420

420:                                              ; preds = %414, %419
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %4) #17
  %421 = load i32, ptr %370, align 8, !tbaa !249
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %423, label %414, !llvm.loop !254

423:                                              ; preds = %420, %411
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  br label %424

424:                                              ; preds = %423, %407
  %425 = getelementptr inbounds %struct.Scene, ptr %373, i64 0, i32 22, i32 60
  %426 = load ptr, ptr %425, align 8, !tbaa !47
  %427 = icmp eq ptr %426, null
  br i1 %427, label %445, label %431

428:                                              ; preds = %442, %431
  %429 = load ptr, ptr %432, align 8, !tbaa !47
  %430 = icmp eq ptr %429, null
  br i1 %430, label %445, label %431, !llvm.loop !255

431:                                              ; preds = %424, %428
  %432 = phi ptr [ %429, %428 ], [ %426, %424 ]
  %433 = getelementptr inbounds %struct.SceneRenderLayer, ptr %432, i64 0, i32 13, i32 7
  %434 = load ptr, ptr %433, align 8, !tbaa !47
  %435 = icmp eq ptr %434, null
  br i1 %435, label %428, label %436

436:                                              ; preds = %431, %442
  %437 = phi ptr [ %443, %442 ], [ %434, %431 ]
  %438 = getelementptr inbounds %struct.FreestyleLineSet, ptr %437, i64 0, i32 13
  %439 = load ptr, ptr %438, align 8, !tbaa !256
  %440 = icmp eq ptr %439, null
  br i1 %440, label %442, label %441

441:                                              ; preds = %436
  call void @BKE_linestyle_target_object_unlink(ptr noundef nonnull %439, ptr noundef %0) #17
  br label %442

442:                                              ; preds = %436, %441
  %443 = load ptr, ptr %437, align 8, !tbaa !47
  %444 = icmp eq ptr %443, null
  br i1 %444, label %428, label %436, !llvm.loop !258

445:                                              ; preds = %428, %424, %372
  %446 = load ptr, ptr %373, align 8, !tbaa !47
  %447 = icmp eq ptr %446, null
  br i1 %447, label %448, label %372, !llvm.loop !259

448:                                              ; preds = %445, %365
  %449 = getelementptr inbounds %struct.Main, ptr %6, i64 0, i32 26
  %450 = load ptr, ptr %449, align 8, !tbaa !47
  %451 = icmp eq ptr %450, null
  br i1 %451, label %582, label %455

452:                                              ; preds = %460, %455
  %453 = load ptr, ptr %456, align 8, !tbaa !47
  %454 = icmp eq ptr %453, null
  br i1 %454, label %582, label %455, !llvm.loop !260

455:                                              ; preds = %448, %452
  %456 = phi ptr [ %453, %452 ], [ %450, %448 ]
  %457 = getelementptr inbounds %struct.bScreen, ptr %456, i64 0, i32 3
  %458 = load ptr, ptr %457, align 8, !tbaa !47
  %459 = icmp eq ptr %458, null
  br i1 %459, label %452, label %463

460:                                              ; preds = %579, %463
  %461 = load ptr, ptr %464, align 8, !tbaa !47
  %462 = icmp eq ptr %461, null
  br i1 %462, label %452, label %463, !llvm.loop !261

463:                                              ; preds = %455, %460
  %464 = phi ptr [ %461, %460 ], [ %458, %455 ]
  %465 = getelementptr inbounds %struct.ScrArea, ptr %464, i64 0, i32 19
  %466 = load ptr, ptr %465, align 8, !tbaa !47
  %467 = icmp eq ptr %466, null
  br i1 %467, label %460, label %468

468:                                              ; preds = %463
  %469 = getelementptr inbounds %struct.ScrArea, ptr %464, i64 0, i32 8
  %470 = getelementptr inbounds %struct.ScrArea, ptr %464, i64 0, i32 20
  br label %471

471:                                              ; preds = %468, %579
  %472 = phi ptr [ %466, %468 ], [ %580, %579 ]
  %473 = getelementptr inbounds %struct.SpaceLink, ptr %472, i64 0, i32 3
  %474 = load i32, ptr %473, align 8, !tbaa !262
  switch i32 %474, label %579 [
    i32 1, label %475
    i32 3, label %546
    i32 4, label %563
    i32 16, label %571
  ]

475:                                              ; preds = %471
  %476 = getelementptr inbounds %struct.View3D, ptr %472, i64 0, i32 16
  %477 = load ptr, ptr %476, align 8, !tbaa !264
  %478 = icmp eq ptr %477, %0
  br i1 %478, label %479, label %481

479:                                              ; preds = %475
  store ptr null, ptr %476, align 8, !tbaa !264
  %480 = getelementptr inbounds %struct.View3D, ptr %472, i64 0, i32 21
  store i8 0, ptr %480, align 8, !tbaa !66
  br label %481

481:                                              ; preds = %479, %475
  %482 = getelementptr inbounds %struct.View3D, ptr %472, i64 0, i32 20
  %483 = load ptr, ptr %482, align 8, !tbaa !266
  %484 = icmp eq ptr %483, null
  br i1 %484, label %491, label %485

485:                                              ; preds = %481
  %486 = getelementptr inbounds %struct.View3D, ptr %483, i64 0, i32 16
  %487 = load ptr, ptr %486, align 8, !tbaa !264
  %488 = icmp eq ptr %487, %0
  br i1 %488, label %489, label %491

489:                                              ; preds = %485
  store ptr null, ptr %486, align 8, !tbaa !264
  %490 = getelementptr inbounds %struct.View3D, ptr %483, i64 0, i32 21
  store i8 0, ptr %490, align 8, !tbaa !66
  br label %491

491:                                              ; preds = %489, %485, %481
  %492 = getelementptr inbounds %struct.View3D, ptr %472, i64 0, i32 15
  %493 = load ptr, ptr %492, align 8, !tbaa !267
  %494 = icmp eq ptr %493, %0
  br i1 %494, label %495, label %496

495:                                              ; preds = %491
  store ptr null, ptr %492, align 8, !tbaa !267
  br label %496

496:                                              ; preds = %495, %491
  %497 = phi i32 [ 1, %495 ], [ 0, %491 ]
  %498 = load ptr, ptr %482, align 8, !tbaa !266
  %499 = icmp eq ptr %498, null
  br i1 %499, label %506, label %500

500:                                              ; preds = %496
  %501 = getelementptr inbounds %struct.View3D, ptr %498, i64 0, i32 15
  %502 = load ptr, ptr %501, align 8, !tbaa !267
  %503 = icmp eq ptr %502, %0
  br i1 %503, label %504, label %506

504:                                              ; preds = %500
  store ptr null, ptr %501, align 8, !tbaa !267
  %505 = or disjoint i32 %497, 2
  br label %506

506:                                              ; preds = %504, %500, %496
  %507 = phi i32 [ %505, %504 ], [ %497, %500 ], [ %497, %496 ]
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %579, label %509

509:                                              ; preds = %506
  %510 = load i8, ptr %469, align 8, !tbaa !268
  %511 = icmp eq i8 %510, 1
  br i1 %511, label %512, label %579

512:                                              ; preds = %509
  %513 = load ptr, ptr %470, align 8, !tbaa !47
  %514 = icmp eq ptr %513, null
  br i1 %514, label %579, label %515

515:                                              ; preds = %512
  %516 = and i32 %507, -3
  %517 = icmp eq i32 %516, 1
  %518 = and i32 %507, -2
  %519 = icmp eq i32 %518, 2
  br label %520

520:                                              ; preds = %515, %543
  %521 = phi ptr [ %513, %515 ], [ %544, %543 ]
  %522 = getelementptr inbounds %struct.ARegion, ptr %521, i64 0, i32 8
  %523 = load i16, ptr %522, align 2, !tbaa !270
  %524 = icmp eq i16 %523, 0
  br i1 %524, label %525, label %543

525:                                              ; preds = %520
  %526 = getelementptr inbounds %struct.ARegion, ptr %521, i64 0, i32 30
  %527 = load ptr, ptr %526, align 8, !tbaa !273
  br i1 %517, label %528, label %533

528:                                              ; preds = %525
  %529 = getelementptr inbounds %struct.RegionView3D, ptr %527, i64 0, i32 25
  %530 = load i8, ptr %529, align 1, !tbaa !274
  %531 = icmp eq i8 %530, 2
  br i1 %531, label %532, label %533

532:                                              ; preds = %528
  store i8 1, ptr %529, align 1, !tbaa !274
  br label %533

533:                                              ; preds = %528, %532, %525
  br i1 %519, label %534, label %543

534:                                              ; preds = %533
  %535 = getelementptr inbounds %struct.RegionView3D, ptr %527, i64 0, i32 10
  %536 = load ptr, ptr %535, align 8, !tbaa !276
  %537 = icmp eq ptr %536, null
  br i1 %537, label %543, label %538

538:                                              ; preds = %534
  %539 = getelementptr inbounds %struct.RegionView3D, ptr %536, i64 0, i32 25
  %540 = load i8, ptr %539, align 1, !tbaa !274
  %541 = icmp eq i8 %540, 2
  br i1 %541, label %542, label %543

542:                                              ; preds = %538
  store i8 1, ptr %539, align 1, !tbaa !274
  br label %543

543:                                              ; preds = %520, %534, %538, %542, %533
  %544 = load ptr, ptr %521, align 8, !tbaa !47
  %545 = icmp eq ptr %544, null
  br i1 %545, label %579, label %520, !llvm.loop !277

546:                                              ; preds = %471
  %547 = getelementptr inbounds %struct.SpaceOops, ptr %472, i64 0, i32 8
  %548 = load ptr, ptr %547, align 8, !tbaa !278
  %549 = icmp eq ptr %548, null
  br i1 %549, label %579, label %550

550:                                              ; preds = %546
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  call void @BLI_mempool_iternew(ptr noundef nonnull %548, ptr noundef nonnull %5) #17
  %551 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %5) #17
  %552 = icmp eq ptr %551, null
  br i1 %552, label %562, label %553

553:                                              ; preds = %550, %559
  %554 = phi ptr [ %560, %559 ], [ %551, %550 ]
  %555 = getelementptr inbounds %struct.TreeStoreElem, ptr %554, i64 0, i32 4
  %556 = load ptr, ptr %555, align 8, !tbaa !281
  %557 = icmp eq ptr %556, %0
  br i1 %557, label %558, label %559

558:                                              ; preds = %553
  store ptr null, ptr %555, align 8, !tbaa !281
  br label %559

559:                                              ; preds = %558, %553
  %560 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %5) #17
  %561 = icmp eq ptr %560, null
  br i1 %561, label %562, label %553, !llvm.loop !282

562:                                              ; preds = %559, %550
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  br label %579

563:                                              ; preds = %471
  %564 = getelementptr inbounds %struct.SpaceButs, ptr %472, i64 0, i32 20
  %565 = load ptr, ptr %564, align 8, !tbaa !283
  %566 = icmp eq ptr %565, %0
  br i1 %566, label %567, label %579

567:                                              ; preds = %563
  %568 = getelementptr inbounds %struct.SpaceButs, ptr %472, i64 0, i32 15
  %569 = load i8, ptr %568, align 8, !tbaa !285
  %570 = and i8 %569, -3
  store i8 %570, ptr %568, align 8, !tbaa !285
  store ptr null, ptr %564, align 8, !tbaa !283
  br label %579

571:                                              ; preds = %471
  %572 = getelementptr inbounds %struct.SpaceNode, ptr %472, i64 0, i32 8
  %573 = load ptr, ptr %572, align 8, !tbaa !286
  %574 = icmp eq ptr %573, %0
  br i1 %574, label %575, label %579

575:                                              ; preds = %571
  %576 = getelementptr inbounds %struct.SpaceNode, ptr %472, i64 0, i32 9
  %577 = load i16, ptr %576, align 8, !tbaa !288
  %578 = and i16 %577, -4097
  store i16 %578, ptr %576, align 8, !tbaa !288
  store ptr null, ptr %572, align 8, !tbaa !286
  br label %579

579:                                              ; preds = %543, %512, %571, %575, %471, %563, %567, %546, %562, %506, %509
  %580 = load ptr, ptr %472, align 8, !tbaa !47
  %581 = icmp eq ptr %580, null
  br i1 %581, label %460, label %471, !llvm.loop !289

582:                                              ; preds = %452, %448
  %583 = getelementptr inbounds %struct.Main, ptr %6, i64 0, i32 32
  %584 = load ptr, ptr %583, align 8, !tbaa !47
  %585 = icmp eq ptr %584, null
  br i1 %585, label %591, label %586

586:                                              ; preds = %582, %586
  %587 = phi ptr [ %589, %586 ], [ %584, %582 ]
  %588 = call zeroext i8 @BKE_group_object_unlink(ptr noundef nonnull %587, ptr noundef %0, ptr noundef null, ptr noundef null) #17
  %589 = load ptr, ptr %587, align 8, !tbaa !47
  %590 = icmp eq ptr %589, null
  br i1 %590, label %591, label %586, !llvm.loop !290

591:                                              ; preds = %586, %582
  %592 = getelementptr inbounds %struct.Main, ptr %6, i64 0, i32 22
  %593 = load ptr, ptr %592, align 8, !tbaa !47
  %594 = icmp eq ptr %593, null
  br i1 %594, label %604, label %595

595:                                              ; preds = %591, %601
  %596 = phi ptr [ %602, %601 ], [ %593, %591 ]
  %597 = getelementptr inbounds %struct.Camera, ptr %596, i64 0, i32 17
  %598 = load ptr, ptr %597, align 8, !tbaa !291
  %599 = icmp eq ptr %598, %0
  br i1 %599, label %600, label %601

600:                                              ; preds = %595
  store ptr null, ptr %597, align 8, !tbaa !291
  br label %601

601:                                              ; preds = %600, %595
  %602 = load ptr, ptr %596, align 8, !tbaa !47
  %603 = icmp eq ptr %602, null
  br i1 %603, label %604, label %595, !llvm.loop !293

604:                                              ; preds = %601, %591
  ret void
}

declare void @unlink_controllers(ptr noundef) local_unnamed_addr #5

declare void @unlink_actuators(ptr noundef) local_unnamed_addr #5

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #5

declare void @modifiers_foreachObjectLink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @unlink_object__unlinkModifierLinks(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #4 {
  %4 = load ptr, ptr %2, align 8, !tbaa !47
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  store ptr null, ptr %2, align 8, !tbaa !47
  tail call void @DAG_id_tag_update(ptr noundef %1, i16 noundef signext 7) #17
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

declare ptr @BKE_constraint_typeinfo_get(ptr noundef) local_unnamed_addr #5

declare zeroext i8 @BKE_mball_is_basis_for(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @sca_remove_ob_poin(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @BKE_sequence_iterator_begin(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

declare void @BKE_sequence_iterator_next(ptr noundef) local_unnamed_addr #5

declare void @BKE_sequence_iterator_end(ptr noundef) local_unnamed_addr #5

declare void @BKE_linestyle_target_object_unlink(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @BLI_mempool_iternew(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @BLI_mempool_iterstep(ptr noundef) local_unnamed_addr #5

declare zeroext i8 @BKE_group_object_unlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_object_is_in_editmode(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !69
  switch i16 %7, label %32 [
    i16 1, label %8
    i16 25, label %12
    i16 4, label %16
    i16 5, label %20
    i16 22, label %24
    i16 3, label %28
    i16 2, label %28
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !294
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %33

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !295
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %33

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 53
  %18 = load ptr, ptr %17, align 8, !tbaa !297
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %33

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.MetaBall, ptr %3, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !298
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %33

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 26
  %26 = load ptr, ptr %25, align 8, !tbaa !300
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %33

28:                                               ; preds = %5, %5
  %29 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !302
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %24, %20, %16, %12, %8, %5
  br label %33

33:                                               ; preds = %28, %24, %20, %16, %12, %8, %1, %32
  %34 = phi i8 [ 1, %8 ], [ 0, %32 ], [ 1, %12 ], [ 1, %16 ], [ 1, %20 ], [ 1, %24 ], [ 1, %28 ], [ 0, %1 ]
  ret i8 %34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_object_is_in_editmode_vgroup(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !69
  switch i16 %3, label %6 [
    i16 1, label %4
    i16 22, label %4
  ]

4:                                                ; preds = %1, %1
  %5 = tail call zeroext i8 @BKE_object_is_in_editmode(ptr noundef %0), !range !303
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i8 [ %5, %4 ], [ 0, %1 ]
  ret i8 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BKE_object_is_in_wpaint_select_vert(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !69
  %4 = icmp eq i16 %3, 1
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %9 = load i32, ptr %8, align 8, !tbaa !304
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 20
  %14 = load ptr, ptr %13, align 8, !tbaa !294
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 46
  %18 = load i8, ptr %17, align 1, !tbaa !305
  %19 = and i8 %18, 8
  %20 = icmp eq i8 %19, 0
  %21 = lshr i8 %18, 5
  %22 = and i8 %21, 1
  %23 = select i1 %20, i8 %22, i8 0
  br label %24

24:                                               ; preds = %1, %5, %12, %16
  %25 = phi i8 [ 0, %12 ], [ 0, %5 ], [ %23, %16 ], [ 0, %1 ]
  ret i8 %25
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_object_exists_check(ptr noundef readnone %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @G, align 8, !tbaa !147
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 13
  br label %6

6:                                                ; preds = %10, %3
  %7 = phi ptr [ %5, %3 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = icmp eq ptr %8, %0
  br i1 %11, label %12, label %6, !llvm.loop !306

12:                                               ; preds = %6, %10, %1
  %13 = phi i8 [ 0, %1 ], [ 1, %10 ], [ 0, %6 ]
  ret i8 %13
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_object_obdata_add_from_type(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  switch i32 %1, label %23 [
    i32 1, label %3
    i32 2, label %5
    i32 3, label %7
    i32 4, label %9
    i32 5, label %11
    i32 11, label %13
    i32 10, label %15
    i32 22, label %17
    i32 25, label %19
    i32 12, label %21
    i32 0, label %25
  ]

3:                                                ; preds = %2
  %4 = tail call ptr @BKE_mesh_add(ptr noundef %0, ptr noundef nonnull @.str) #17
  br label %25

5:                                                ; preds = %2
  %6 = tail call ptr @BKE_curve_add(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef 2) #17
  br label %25

7:                                                ; preds = %2
  %8 = tail call ptr @BKE_curve_add(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef 3) #17
  br label %25

9:                                                ; preds = %2
  %10 = tail call ptr @BKE_curve_add(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef 4) #17
  br label %25

11:                                               ; preds = %2
  %12 = tail call ptr @BKE_mball_add(ptr noundef %0, ptr noundef nonnull @.str.4) #17
  br label %25

13:                                               ; preds = %2
  %14 = tail call ptr @BKE_camera_add(ptr noundef %0, ptr noundef nonnull @.str.5) #17
  br label %25

15:                                               ; preds = %2
  %16 = tail call ptr @BKE_lamp_add(ptr noundef %0, ptr noundef nonnull @.str.6) #17
  br label %25

17:                                               ; preds = %2
  %18 = tail call ptr @BKE_lattice_add(ptr noundef %0, ptr noundef nonnull @.str.7) #17
  br label %25

19:                                               ; preds = %2
  %20 = tail call ptr @BKE_armature_add(ptr noundef %0, ptr noundef nonnull @.str.8) #17
  br label %25

21:                                               ; preds = %2
  %22 = tail call ptr @BKE_speaker_add(ptr noundef %0, ptr noundef nonnull @.str.9) #17
  br label %25

23:                                               ; preds = %2
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %1)
  br label %25

25:                                               ; preds = %2, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5, %3
  %26 = phi ptr [ null, %23 ], [ %22, %21 ], [ %20, %19 ], [ %18, %17 ], [ %16, %15 ], [ %14, %13 ], [ %12, %11 ], [ %10, %9 ], [ %8, %7 ], [ %6, %5 ], [ %4, %3 ], [ null, %2 ]
  ret ptr %26
}

declare ptr @BKE_mesh_add(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @BKE_curve_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @BKE_mball_add(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @BKE_camera_add(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @BKE_lamp_add(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @BKE_lattice_add(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @BKE_armature_add(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @BKE_speaker_add(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_object_add_only_object(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %5, label %17

5:                                                ; preds = %3
  %6 = icmp ult i32 %1, 26
  br i1 %6, label %9, label %7

7:                                                ; preds = %9, %5
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %1)
  br label %17

9:                                                ; preds = %5
  %10 = lshr i32 37755967, %1
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %7, label %13

13:                                               ; preds = %9
  %14 = zext nneg i32 %1 to i64
  %15 = getelementptr inbounds [26 x ptr], ptr @switch.table.BKE_object_add, i64 0, i64 %14
  %16 = load ptr, ptr %15, align 8
  br label %17

17:                                               ; preds = %13, %7, %3
  %18 = phi ptr [ %2, %3 ], [ @.str.20, %7 ], [ %16, %13 ]
  %19 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 16975, ptr noundef nonnull %18) #17
  %20 = trunc i32 %1 to i16
  %21 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 3
  store i16 %20, ptr %21, align 8, !tbaa !69
  %22 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 98
  %23 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 98, i64 2
  store float 1.000000e+00, ptr %23, align 8, !tbaa !34
  %24 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 98, i64 1
  store float 1.000000e+00, ptr %24, align 4, !tbaa !34
  store float 1.000000e+00, ptr %22, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 98, i64 3
  store float 1.000000e+00, ptr %25, align 4, !tbaa !34
  %26 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 36
  %27 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 36, i64 2
  store float 1.000000e+00, ptr %27, align 4, !tbaa !34
  %28 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 36, i64 1
  store float 1.000000e+00, ptr %28, align 4, !tbaa !34
  store float 1.000000e+00, ptr %26, align 4, !tbaa !34
  %29 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 38
  %30 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 38, i64 2
  store float 1.000000e+00, ptr %30, align 4, !tbaa !34
  %31 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 38, i64 1
  store float 1.000000e+00, ptr %31, align 4, !tbaa !34
  store float 1.000000e+00, ptr %29, align 4, !tbaa !34
  %32 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 83
  store i16 1, ptr %32, align 8, !tbaa !38
  %33 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 43
  %34 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 45
  tail call void @unit_axis_angle(ptr noundef nonnull %33, ptr noundef nonnull %34) #17
  %35 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 44
  %36 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 46
  tail call void @unit_axis_angle(ptr noundef nonnull %35, ptr noundef nonnull %36) #17
  %37 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 41
  tail call void @unit_qt(ptr noundef nonnull %37) #17
  %38 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 42
  tail call void @unit_qt(ptr noundef nonnull %38) #17
  %39 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 56
  store i16 1024, ptr %39, align 2, !tbaa !307
  %40 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 49
  tail call void @unit_m4(ptr noundef nonnull %40) #17
  %41 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 48
  tail call void @unit_m4(ptr noundef nonnull %41) #17
  %42 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 47
  tail call void @unit_m4(ptr noundef nonnull %42) #17
  %43 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 87
  store i8 5, ptr %43, align 2, !tbaa !308
  %44 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 88
  store i8 2, ptr %44, align 1, !tbaa !309
  %45 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 89
  store float 1.000000e+00, ptr %45, align 8, !tbaa !310
  %46 = add i32 %1, -10
  %47 = icmp ult i32 %46, 3
  %48 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 57
  %49 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 58
  %50 = select i1 %47, i16 5, i16 1
  %51 = select i1 %47, i16 1, i16 2
  store i16 %50, ptr %48, align 4, !tbaa !311
  store i16 %51, ptr %49, align 2, !tbaa !312
  %52 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 64
  store i32 1, ptr %52, align 8, !tbaa !313
  %53 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 65
  store i32 0, ptr %53, align 4, !tbaa !314
  %54 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 66
  store i32 1, ptr %54, align 8, !tbaa !315
  %55 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 67
  store i32 100, ptr %55, align 4, !tbaa !316
  %56 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 90
  store float 1.000000e+00, ptr %56, align 4, !tbaa !317
  %57 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 71
  store float 1.000000e+00, ptr %57, align 4, !tbaa !318
  %58 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 69
  store float 1.000000e+00, ptr %58, align 4, !tbaa !319
  %59 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 72
  store float 0x3FD99999A0000000, ptr %59, align 8, !tbaa !320
  %60 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 70
  store float 0x3FA47AE140000000, ptr %60, align 8, !tbaa !321
  %61 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 73
  store float 0x3FB99999A0000000, ptr %61, align 4, !tbaa !322
  %62 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 105
  store float 1.000000e+00, ptr %62, align 4, !tbaa !34
  %63 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 105, i64 1
  store float 1.000000e+00, ptr %63, align 4, !tbaa !34
  %64 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 105, i64 2
  store float 1.000000e+00, ptr %64, align 4, !tbaa !34
  %65 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 99
  store i32 81920, ptr %65, align 8, !tbaa !323
  %66 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 74
  store float 0x3FA47AE140000000, ptr %66, align 8, !tbaa !324
  %67 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 124
  store i32 1, ptr %67, align 4, !tbaa !325
  %68 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 123
  store i32 1, ptr %68, align 8, !tbaa !326
  %69 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 77
  store float 1.000000e+00, ptr %69, align 4, !tbaa !327
  %70 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 78
  store float 0x3FC3333340000000, ptr %70, align 8, !tbaa !328
  %71 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 79
  store float 1.000000e+01, ptr %71, align 4, !tbaa !329
  %72 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 80
  store float 5.500000e+01, ptr %72, align 8, !tbaa !330
  %73 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 81
  store i16 1, ptr %73, align 4, !tbaa !331
  %74 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 82
  store i16 255, ptr %74, align 2, !tbaa !332
  %75 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 117
  store ptr null, ptr %75, align 8, !tbaa !333
  %76 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 126
  %77 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %76, i8 0, i64 16, i1 false)
  tail call void @animviz_settings_init(ptr noundef nonnull %77) #17
  ret ptr %19
}

declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #5

declare void @unit_axis_angle(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @unit_qt(ptr noundef) local_unnamed_addr #5

declare void @unit_m4(ptr noundef) local_unnamed_addr #5

declare void @animviz_settings_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_object_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = alloca [66 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %4) #17
  %5 = icmp ult i32 %2, 26
  br i1 %5, label %8, label %6

6:                                                ; preds = %8, %3
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %2)
  br label %16

8:                                                ; preds = %3
  %9 = lshr i32 37755967, %2
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %6, label %12

12:                                               ; preds = %8
  %13 = zext nneg i32 %2 to i64
  %14 = getelementptr inbounds [26 x ptr], ptr @switch.table.BKE_object_add, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8
  br label %16

16:                                               ; preds = %12, %6
  %17 = phi ptr [ @.str.20, %6 ], [ %15, %12 ]
  %18 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %17, i64 noundef 66) #17
  %19 = call ptr @BKE_object_add_only_object(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %4)
  %20 = call ptr @BKE_object_obdata_add_from_type(ptr noundef %0, i32 noundef %2)
  %21 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 19
  store ptr %20, ptr %21, align 8, !tbaa !71
  %22 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 12
  %23 = load i32, ptr %22, align 8, !tbaa !334
  %24 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 52
  store i32 %23, ptr %24, align 8, !tbaa !50
  %25 = call ptr @BKE_scene_base_add(ptr noundef %1, ptr noundef %19) #17
  call void @BKE_scene_base_deselect_all(ptr noundef %1) #17
  call void @BKE_scene_base_select(ptr noundef %1, ptr noundef %25) #17
  call void @DAG_id_tag_update_ex(ptr noundef %0, ptr noundef %19, i16 noundef signext 7) #17
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %4) #17
  ret ptr %19
}

declare ptr @BKE_scene_base_add(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @BKE_scene_base_deselect_all(ptr noundef) local_unnamed_addr #5

declare void @BKE_scene_base_select(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @DAG_id_tag_update_ex(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @copy_softbody(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %60, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %6 = tail call ptr %5(ptr noundef nonnull %0) #17
  %7 = icmp eq i8 %1, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br label %46

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.SoftBody, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !335
  %12 = getelementptr inbounds %struct.SoftBody, ptr %6, i64 0, i32 1
  store i32 %11, ptr %12, align 4, !tbaa !335
  %13 = load i32, ptr %0, align 8, !tbaa !336
  store i32 %13, ptr %6, align 8, !tbaa !336
  %14 = getelementptr inbounds %struct.SoftBody, ptr %6, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !337
  %16 = icmp eq ptr %15, null
  br i1 %16, label %38, label %17

17:                                               ; preds = %9
  %18 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %19 = tail call ptr %18(ptr noundef nonnull %15) #17
  store ptr %19, ptr %14, align 8, !tbaa !337
  %20 = load i32, ptr %6, align 8, !tbaa !336
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %17, %33
  %23 = phi i64 [ %34, %33 ], [ 0, %17 ]
  %24 = load ptr, ptr %14, align 8, !tbaa !337
  %25 = getelementptr inbounds %struct.BodyPoint, ptr %24, i64 %23, i32 14
  %26 = load ptr, ptr %25, align 8, !tbaa !338
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %30 = tail call ptr %29(ptr noundef nonnull %26) #17
  %31 = load ptr, ptr %14, align 8, !tbaa !337
  %32 = getelementptr inbounds %struct.BodyPoint, ptr %31, i64 %23, i32 14
  store ptr %30, ptr %32, align 8, !tbaa !338
  br label %33

33:                                               ; preds = %22, %28
  %34 = add nuw nsw i64 %23, 1
  %35 = load i32, ptr %6, align 8, !tbaa !336
  %36 = sext i32 %35 to i64
  %37 = icmp slt i64 %34, %36
  br i1 %37, label %22, label %38, !llvm.loop !340

38:                                               ; preds = %33, %17, %9
  %39 = getelementptr inbounds %struct.SoftBody, ptr %0, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !341
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %44 = tail call ptr %43(ptr noundef nonnull %40) #17
  %45 = getelementptr inbounds %struct.SoftBody, ptr %6, i64 0, i32 3
  store ptr %44, ptr %45, align 8, !tbaa !341
  br label %46

46:                                               ; preds = %38, %42, %8
  %47 = getelementptr inbounds %struct.SoftBody, ptr %6, i64 0, i32 29
  %48 = getelementptr inbounds %struct.SoftBody, ptr %6, i64 0, i32 44
  store ptr null, ptr %48, align 8, !tbaa !73
  %49 = getelementptr inbounds %struct.SoftBody, ptr %6, i64 0, i32 48
  %50 = getelementptr inbounds %struct.SoftBody, ptr %0, i64 0, i32 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %47, i8 0, i64 16, i1 false)
  %51 = tail call ptr @BKE_ptcache_copy_list(ptr noundef nonnull %49, ptr noundef nonnull %50, i8 noundef zeroext %1) #17
  %52 = getelementptr inbounds %struct.SoftBody, ptr %6, i64 0, i32 47
  store ptr %51, ptr %52, align 8, !tbaa !75
  %53 = getelementptr inbounds %struct.SoftBody, ptr %0, i64 0, i32 49
  %54 = load ptr, ptr %53, align 8, !tbaa !76
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %46
  %57 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %58 = tail call ptr %57(ptr noundef nonnull %54) #17
  %59 = getelementptr inbounds %struct.SoftBody, ptr %6, i64 0, i32 49
  store ptr %58, ptr %59, align 8, !tbaa !76
  br label %60

60:                                               ; preds = %46, %56, %2
  %61 = phi ptr [ null, %2 ], [ %6, %56 ], [ %6, %46 ]
  ret ptr %61
}

declare ptr @BKE_ptcache_copy_list(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @copy_bulletsoftbody(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %5 = tail call ptr %4(ptr noundef nonnull %0) #17
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @BKE_object_pose_context_check(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !69
  %6 = icmp eq i16 %5, 25
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %13 = load i32, ptr %12, align 8, !tbaa !304
  %14 = and i32 %13, 64
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %7, %3, %1
  br label %17

17:                                               ; preds = %11, %16
  %18 = phi i8 [ 0, %16 ], [ 1, %11 ]
  ret i8 %18
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_object_pose_armature_get(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %33, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !69
  %6 = icmp eq i16 %5, 25
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %13 = load i32, ptr %12, align 8, !tbaa !304
  %14 = and i32 %13, 64
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %11, %7, %3
  %17 = tail call ptr @modifiers_isDeformedByArmature(ptr noundef nonnull %0) #17
  %18 = icmp eq ptr %17, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 3
  %21 = load i16, ptr %20, align 8, !tbaa !69
  %22 = icmp eq i16 %21, 25
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 18
  %25 = load ptr, ptr %24, align 8, !tbaa !65
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.Object, ptr %17, i64 0, i32 27
  %29 = load i32, ptr %28, align 8, !tbaa !304
  %30 = and i32 %29, 64
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %23, %19, %16
  br label %33

33:                                               ; preds = %32, %27, %11, %1
  %34 = phi ptr [ null, %1 ], [ %0, %11 ], [ null, %32 ], [ %17, %27 ]
  ret ptr %34
}

declare ptr @modifiers_isDeformedByArmature(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_object_transform_copy(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 33
  %5 = load float, ptr %4, align 4, !tbaa !34
  store float %5, ptr %3, align 4, !tbaa !34
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 33, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33, i64 1
  store float %7, ptr %8, align 4, !tbaa !34
  %9 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 33, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33, i64 2
  store float %10, ptr %11, align 4, !tbaa !34
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39
  %13 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 39
  %14 = load float, ptr %13, align 4, !tbaa !34
  store float %14, ptr %12, align 4, !tbaa !34
  %15 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 39, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39, i64 1
  store float %16, ptr %17, align 4, !tbaa !34
  %18 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 39, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39, i64 2
  store float %19, ptr %20, align 4, !tbaa !34
  %21 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 41
  %22 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 41
  %23 = load float, ptr %22, align 4, !tbaa !34
  store float %23, ptr %21, align 4, !tbaa !34
  %24 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 41, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 41, i64 1
  store float %25, ptr %26, align 4, !tbaa !34
  %27 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 41, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 41, i64 2
  store float %28, ptr %29, align 4, !tbaa !34
  %30 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43
  %31 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 43
  %32 = load float, ptr %31, align 4, !tbaa !34
  store float %32, ptr %30, align 4, !tbaa !34
  %33 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 43, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43, i64 1
  store float %34, ptr %35, align 4, !tbaa !34
  %36 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 43, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !34
  %38 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43, i64 2
  store float %37, ptr %38, align 4, !tbaa !34
  %39 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 45
  %40 = load float, ptr %39, align 8, !tbaa !342
  %41 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 45
  store float %40, ptr %41, align 8, !tbaa !342
  %42 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 83
  %43 = load i16, ptr %42, align 8, !tbaa !38
  %44 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 83
  store i16 %43, ptr %44, align 8, !tbaa !38
  %45 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36
  %46 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 36
  %47 = load float, ptr %46, align 4, !tbaa !34
  store float %47, ptr %45, align 4, !tbaa !34
  %48 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 36, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !34
  %50 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 1
  store float %49, ptr %50, align 4, !tbaa !34
  %51 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 36, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !34
  %53 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 2
  store float %52, ptr %53, align 4, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_object_copy_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #4 {
  %4 = tail call ptr @BKE_libblock_copy_ex(ptr noundef %0, ptr noundef %1) #17
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 31
  %6 = load i32, ptr %5, align 8, !tbaa !129
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 29
  %11 = load ptr, ptr %10, align 8, !tbaa !128
  %12 = tail call ptr %9(ptr noundef %11) #17
  %13 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 29
  store ptr %12, ptr %13, align 8, !tbaa !128
  %14 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %15 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 30
  %16 = load ptr, ptr %15, align 8, !tbaa !135
  %17 = tail call ptr %14(ptr noundef %16) #17
  %18 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 30
  store ptr %17, ptr %18, align 8, !tbaa !135
  %19 = load i32, ptr %5, align 8, !tbaa !129
  %20 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 31
  store i32 %19, ptr %20, align 8, !tbaa !129
  br label %21

21:                                               ; preds = %8, %3
  %22 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 131
  %23 = load ptr, ptr %22, align 8, !tbaa !136
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %27 = tail call ptr %26(ptr noundef nonnull %23) #17
  %28 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 131
  store ptr %27, ptr %28, align 8, !tbaa !136
  br label %29

29:                                               ; preds = %25, %21
  %30 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 15
  %31 = load ptr, ptr %30, align 8, !tbaa !120
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %35 = tail call ptr %34(ptr noundef nonnull %31) #17
  %36 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 15
  store ptr %35, ptr %36, align 8, !tbaa !120
  br label %37

37:                                               ; preds = %33, %29
  %38 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 53
  %39 = load i16, ptr %38, align 4, !tbaa !343
  %40 = and i16 %39, -4097
  store i16 %40, ptr %38, align 4, !tbaa !343
  %41 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 26
  %42 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  %43 = load ptr, ptr %42, align 8, !tbaa !47
  %44 = icmp eq ptr %43, null
  br i1 %44, label %55, label %45

45:                                               ; preds = %37, %45
  %46 = phi ptr [ %53, %45 ], [ %43, %37 ]
  %47 = getelementptr inbounds %struct.ModifierData, ptr %46, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !70
  %49 = tail call ptr @modifier_new(i32 noundef %48) #17
  %50 = getelementptr inbounds %struct.ModifierData, ptr %49, i64 0, i32 6
  %51 = getelementptr inbounds %struct.ModifierData, ptr %46, i64 0, i32 6
  %52 = tail call ptr @BLI_strncpy(ptr noundef nonnull %50, ptr noundef nonnull %51, i64 noundef 64) #17
  tail call void @modifier_copyData(ptr noundef nonnull %46, ptr noundef %49) #17
  tail call void @BLI_addtail(ptr noundef nonnull %41, ptr noundef %49) #17
  %53 = load ptr, ptr %46, align 8, !tbaa !47
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %45, !llvm.loop !344

55:                                               ; preds = %45, %37
  %56 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 91
  %57 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 91
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %56, i8 0, i64 16, i1 false)
  tail call void @BKE_bproperty_copy_list(ptr noundef nonnull %56, ptr noundef nonnull %57) #17
  %58 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 92
  %59 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 92
  tail call void @copy_sensors(ptr noundef nonnull %58, ptr noundef nonnull %59) #17
  %60 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 93
  %61 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 93
  tail call void @copy_controllers(ptr noundef nonnull %60, ptr noundef nonnull %61) #17
  %62 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 94
  %63 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 94
  tail call void @copy_actuators(ptr noundef nonnull %62, ptr noundef nonnull %63) #17
  %64 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 18
  %65 = load ptr, ptr %64, align 8, !tbaa !65
  %66 = icmp eq ptr %65, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %55
  tail call fastcc void @copy_object_pose(ptr noundef %4, ptr noundef %1)
  %68 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %69 = load i16, ptr %68, align 8, !tbaa !69
  %70 = icmp eq i16 %69, 25
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %73 = load ptr, ptr %72, align 8, !tbaa !71
  tail call void @BKE_pose_rebuild(ptr noundef %4, ptr noundef %73) #17
  br label %74

74:                                               ; preds = %67, %71, %55
  %75 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 25
  %76 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 25
  tail call void @defgroup_copy_list(ptr noundef nonnull %75, ptr noundef nonnull %76) #17
  %77 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 106
  %78 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 106
  tail call void @BKE_constraints_copy(ptr noundef nonnull %77, ptr noundef nonnull %78, i8 noundef zeroext 1) #17
  %79 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 27
  store i32 0, ptr %79, align 8, !tbaa !304
  %80 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 2
  store ptr null, ptr %80, align 8, !tbaa !345
  %81 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %82 = load ptr, ptr %81, align 8, !tbaa !71
  tail call void @id_us_plus(ptr noundef %82) #17
  %83 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 20
  %84 = load ptr, ptr %83, align 8, !tbaa !141
  tail call void @id_us_plus(ptr noundef %84) #17
  %85 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 112
  %86 = load ptr, ptr %85, align 8, !tbaa !346
  tail call void @id_lib_extern(ptr noundef %86) #17
  %87 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 31
  %88 = load i32, ptr %87, align 8, !tbaa !129
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %74
  %91 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 29
  br label %92

92:                                               ; preds = %90, %92
  %93 = phi i64 [ 0, %90 ], [ %97, %92 ]
  %94 = load ptr, ptr %91, align 8, !tbaa !128
  %95 = getelementptr inbounds ptr, ptr %94, i64 %93
  %96 = load ptr, ptr %95, align 8, !tbaa !47
  tail call void @id_us_plus(ptr noundef %96) #17
  %97 = add nuw nsw i64 %93, 1
  %98 = load i32, ptr %87, align 8, !tbaa !129
  %99 = sext i32 %98 to i64
  %100 = icmp slt i64 %97, %99
  br i1 %100, label %92, label %101, !llvm.loop !347

101:                                              ; preds = %92, %74
  %102 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 110
  %103 = load ptr, ptr %102, align 8, !tbaa !144
  %104 = icmp eq ptr %103, null
  br i1 %104, label %126, label %105

105:                                              ; preds = %101
  %106 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %107 = tail call ptr %106(ptr noundef nonnull %103) #17
  %108 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 110
  store ptr %107, ptr %108, align 8, !tbaa !144
  %109 = getelementptr inbounds %struct.PartDeflect, ptr %107, i64 0, i32 36
  %110 = load ptr, ptr %109, align 8, !tbaa !348
  %111 = icmp eq ptr %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %105
  tail call void @id_us_plus(ptr noundef nonnull %110) #17
  br label %113

113:                                              ; preds = %112, %105
  %114 = load ptr, ptr %108, align 8, !tbaa !144
  %115 = getelementptr inbounds %struct.PartDeflect, ptr %114, i64 0, i32 37
  %116 = load ptr, ptr %115, align 8, !tbaa !350
  %117 = icmp eq ptr %116, null
  br i1 %117, label %126, label %118

118:                                              ; preds = %113
  %119 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %120 = load ptr, ptr %102, align 8, !tbaa !144
  %121 = getelementptr inbounds %struct.PartDeflect, ptr %120, i64 0, i32 37
  %122 = load ptr, ptr %121, align 8, !tbaa !350
  %123 = tail call ptr %119(ptr noundef %122) #17
  %124 = load ptr, ptr %108, align 8, !tbaa !144
  %125 = getelementptr inbounds %struct.PartDeflect, ptr %124, i64 0, i32 37
  store ptr %123, ptr %125, align 8, !tbaa !350
  br label %126

126:                                              ; preds = %113, %118, %101
  %127 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 111
  %128 = load ptr, ptr %127, align 8, !tbaa !56
  %129 = tail call ptr @copy_softbody(ptr noundef %128, i8 noundef zeroext %2)
  %130 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 111
  store ptr %129, ptr %130, align 8, !tbaa !56
  %131 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 101
  %132 = load ptr, ptr %131, align 8, !tbaa !57
  %133 = icmp eq ptr %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %126
  %135 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %136 = tail call ptr %135(ptr noundef nonnull %132) #17
  br label %137

137:                                              ; preds = %126, %134
  %138 = phi ptr [ %136, %134 ], [ null, %126 ]
  %139 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 101
  store ptr %138, ptr %139, align 8, !tbaa !57
  %140 = tail call ptr @BKE_rigidbody_copy_object(ptr noundef %1) #17
  %141 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 128
  store ptr %140, ptr %141, align 8, !tbaa !351
  %142 = tail call ptr @BKE_rigidbody_copy_constraint(ptr noundef %1) #17
  %143 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 129
  store ptr %142, ptr %143, align 8, !tbaa !352
  tail call void @BKE_object_copy_particlesystems(ptr noundef %4, ptr noundef %1)
  %144 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 119
  %145 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 125
  %146 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 22
  store ptr null, ptr %146, align 8, !tbaa !143
  %147 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 132
  %148 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %144, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %145, i8 0, i64 32, i1 false)
  tail call void @BLI_duplicatelist(ptr noundef nonnull %147, ptr noundef nonnull %148) #17
  %149 = load ptr, ptr %147, align 8, !tbaa !353
  %150 = icmp eq ptr %149, null
  br i1 %150, label %153, label %151

151:                                              ; preds = %137
  %152 = getelementptr inbounds %struct.LodLevel, ptr %149, i64 0, i32 2
  store ptr %4, ptr %152, align 8, !tbaa !193
  br label %153

153:                                              ; preds = %137, %151
  %154 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 133
  store ptr %149, ptr %154, align 8, !tbaa !354
  %155 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 118
  store ptr null, ptr %155, align 8, !tbaa !58
  ret ptr %4
}

declare ptr @BKE_libblock_copy_ex(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @BKE_bproperty_copy_list(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @copy_sensors(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @copy_controllers(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @copy_actuators(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @copy_object_pose(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #4 {
  %3 = alloca %struct.ListBase, align 8
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  store ptr null, ptr %4, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  tail call void @BKE_pose_copy_data(ptr noundef nonnull %4, ptr noundef %6, i8 noundef zeroext 1) #17
  %7 = load ptr, ptr %4, align 8, !tbaa !65
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %50, label %13

10:                                               ; preds = %47, %13
  %11 = load ptr, ptr %14, align 8, !tbaa !47
  %12 = icmp eq ptr %11, null
  br i1 %12, label %50, label %13, !llvm.loop !355

13:                                               ; preds = %2, %10
  %14 = phi ptr [ %11, %10 ], [ %8, %2 ]
  %15 = getelementptr inbounds %struct.bPoseChannel, ptr %14, i64 0, i32 5
  %16 = load i16, ptr %15, align 8, !tbaa !356
  %17 = and i16 %16, -8
  store i16 %17, ptr %15, align 8, !tbaa !356
  %18 = getelementptr inbounds %struct.bPoseChannel, ptr %14, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  %20 = icmp eq ptr %19, null
  br i1 %20, label %10, label %21

21:                                               ; preds = %13, %47
  %22 = phi ptr [ %48, %47 ], [ %19, %13 ]
  %23 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %22) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %24 = icmp eq ptr %23, null
  br i1 %24, label %47, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %23, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !157
  %28 = icmp eq ptr %27, null
  br i1 %28, label %47, label %29

29:                                               ; preds = %25
  %30 = call i32 %27(ptr noundef nonnull %22, ptr noundef nonnull %3) #17
  %31 = load ptr, ptr %3, align 8, !tbaa !47
  %32 = icmp eq ptr %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %29, %39
  %34 = phi ptr [ %40, %39 ], [ %31, %29 ]
  %35 = getelementptr inbounds %struct.bConstraintTarget, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !159
  %37 = icmp eq ptr %36, %1
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store ptr %0, ptr %35, align 8, !tbaa !159
  br label %39

39:                                               ; preds = %33, %38
  %40 = load ptr, ptr %34, align 8, !tbaa !47
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %33, !llvm.loop !357

42:                                               ; preds = %39, %29
  %43 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %23, i64 0, i32 9
  %44 = load ptr, ptr %43, align 8, !tbaa !162
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  call void %44(ptr noundef nonnull %22, ptr noundef nonnull %3, i8 noundef zeroext 0) #17
  br label %47

47:                                               ; preds = %42, %46, %25, %21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  %48 = load ptr, ptr %22, align 8, !tbaa !47
  %49 = icmp eq ptr %48, null
  br i1 %49, label %10, label %21, !llvm.loop !358

50:                                               ; preds = %10, %2
  ret void
}

declare void @BKE_pose_rebuild(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @defgroup_copy_list(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @BKE_constraints_copy(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

declare void @id_us_plus(ptr noundef) local_unnamed_addr #5

declare void @id_lib_extern(ptr noundef) local_unnamed_addr #5

declare ptr @BKE_rigidbody_copy_object(ptr noundef) local_unnamed_addr #5

declare ptr @BKE_rigidbody_copy_constraint(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_object_copy(ptr noundef %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr @G, align 8, !tbaa !147
  %3 = tail call ptr @BKE_object_copy_ex(ptr noundef %2, ptr noundef %0, i8 noundef zeroext 0)
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_make_local(ptr noundef %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr @G, align 8, !tbaa !147
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !359
  %5 = icmp eq ptr %4, null
  br i1 %5, label %82, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 13
  store ptr null, ptr %7, align 8, !tbaa !151
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 11
  store ptr null, ptr %8, align 8, !tbaa !150
  %9 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !360
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %81, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  %15 = icmp eq ptr %14, null
  br i1 %15, label %41, label %16

16:                                               ; preds = %12, %32
  %17 = phi ptr [ %35, %32 ], [ %14, %12 ]
  %18 = phi i8 [ %34, %32 ], [ 0, %12 ]
  %19 = phi i8 [ %33, %32 ], [ 0, %12 ]
  %20 = icmp eq i8 %18, 0
  %21 = icmp eq i8 %19, 0
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %16
  %24 = tail call ptr @BKE_scene_base_find(ptr noundef nonnull %17, ptr noundef %0) #17
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.ID, ptr %17, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !216
  %29 = icmp eq ptr %28, null
  %30 = select i1 %29, i8 1, i8 %19
  %31 = select i1 %29, i8 %18, i8 1
  br label %32

32:                                               ; preds = %26, %23
  %33 = phi i8 [ %19, %23 ], [ %30, %26 ]
  %34 = phi i8 [ %18, %23 ], [ %31, %26 ]
  %35 = load ptr, ptr %17, align 8, !tbaa !47
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %16, !llvm.loop !361

37:                                               ; preds = %32, %16
  %38 = phi i8 [ %19, %16 ], [ %33, %32 ]
  %39 = phi i8 [ %18, %16 ], [ %34, %32 ]
  %40 = icmp ne i8 %38, 0
  br label %41

41:                                               ; preds = %37, %12
  %42 = phi i1 [ false, %12 ], [ %40, %37 ]
  %43 = phi i8 [ 0, %12 ], [ %39, %37 ]
  %44 = icmp eq i8 %43, 0
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %81, label %46

46:                                               ; preds = %41
  %47 = icmp ne i8 %43, 0
  %48 = select i1 %42, i1 %47, i1 false
  br i1 %48, label %49, label %82

49:                                               ; preds = %46
  %50 = load ptr, ptr @G, align 8, !tbaa !147
  %51 = tail call ptr @BKE_object_copy_ex(ptr noundef %50, ptr noundef %0, i8 noundef zeroext 0)
  %52 = getelementptr inbounds %struct.ID, ptr %51, i64 0, i32 6
  store i32 0, ptr %52, align 4, !tbaa !360
  %53 = load ptr, ptr %3, align 8, !tbaa !359
  tail call void @BKE_id_lib_local_paths(ptr noundef %2, ptr noundef %53, ptr noundef %51) #17
  %54 = load ptr, ptr %13, align 8, !tbaa !47
  %55 = icmp eq ptr %54, null
  br i1 %55, label %82, label %56

56:                                               ; preds = %49, %78
  %57 = phi ptr [ %79, %78 ], [ %54, %49 ]
  %58 = getelementptr inbounds %struct.ID, ptr %57, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !216
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %78

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.Scene, ptr %57, i64 0, i32 5
  %63 = load ptr, ptr %62, align 8, !tbaa !47
  %64 = icmp eq ptr %63, null
  br i1 %64, label %78, label %65

65:                                               ; preds = %61, %75
  %66 = phi ptr [ %76, %75 ], [ %63, %61 ]
  %67 = getelementptr inbounds %struct.Base, ptr %66, i64 0, i32 7
  %68 = load ptr, ptr %67, align 8, !tbaa !48
  %69 = icmp eq ptr %68, %0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  store ptr %51, ptr %67, align 8, !tbaa !48
  %71 = load i32, ptr %52, align 4, !tbaa !360
  %72 = add nsw i32 %71, 1
  store i32 %72, ptr %52, align 4, !tbaa !360
  %73 = load i32, ptr %9, align 4, !tbaa !360
  %74 = add nsw i32 %73, -1
  store i32 %74, ptr %9, align 4, !tbaa !360
  br label %75

75:                                               ; preds = %70, %65
  %76 = load ptr, ptr %66, align 8, !tbaa !47
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %65, !llvm.loop !362

78:                                               ; preds = %75, %61, %56
  %79 = load ptr, ptr %57, align 8, !tbaa !47
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %56, !llvm.loop !363

81:                                               ; preds = %41, %6
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef %0) #17
  tail call fastcc void @extern_local_object(ptr noundef %0)
  br label %82

82:                                               ; preds = %78, %81, %49, %46, %1
  ret void
}

declare void @id_clear_lib_data(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @extern_local_object(ptr noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  tail call void @id_lib_extern(ptr noundef %3) #17
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 112
  %5 = load ptr, ptr %4, align 8, !tbaa !346
  tail call void @id_lib_extern(ptr noundef %5) #17
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 17
  %7 = load ptr, ptr %6, align 8, !tbaa !138
  tail call void @id_lib_extern(ptr noundef %7) #17
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !141
  tail call void @id_lib_extern(ptr noundef %9) #17
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 29
  %11 = load ptr, ptr %10, align 8, !tbaa !128
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  %13 = load i32, ptr %12, align 8, !tbaa !129
  %14 = trunc i32 %13 to i16
  tail call void @extern_local_matarar(ptr noundef %11, i16 noundef signext %14) #17
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 109
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %1, %18
  %19 = phi ptr [ %22, %18 ], [ %16, %1 ]
  %20 = getelementptr inbounds %struct.ParticleSystem, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !81
  tail call void @id_lib_extern(ptr noundef %21) #17
  %22 = load ptr, ptr %19, align 8, !tbaa !47
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %18, !llvm.loop !364

24:                                               ; preds = %18, %1
  tail call void @modifiers_foreachIDLink(ptr noundef %0, ptr noundef nonnull @extern_local_object__modifiersForeachIDLink, ptr noundef null) #17
  ret void
}

declare ptr @BKE_scene_base_find(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @BKE_id_lib_local_paths(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BKE_object_is_libdata(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !150
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !359
  %10 = icmp ne ptr %9, null
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %7, %3, %1
  %13 = phi i8 [ 0, %1 ], [ 0, %3 ], [ %11, %7 ]
  ret i8 %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BKE_object_obdata_is_libdata(ptr noundef readonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %28, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !150
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !127
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %11, %3
  %16 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !359
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !71
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !127
  %26 = icmp ne ptr %25, null
  %27 = zext i1 %26 to i8
  br label %28

28:                                               ; preds = %23, %19, %15, %7, %11, %1
  %29 = phi i8 [ 0, %1 ], [ 0, %11 ], [ 0, %7 ], [ 1, %15 ], [ 0, %19 ], [ %27, %23 ]
  ret i8 %29
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_copy_proxy_drivers(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !137
  %5 = icmp eq ptr %4, null
  br i1 %5, label %60, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.AnimData, ptr %4, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !365
  %9 = icmp eq ptr %8, null
  br i1 %9, label %60, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !137
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = tail call ptr @BKE_id_add_animdata(ptr noundef %0) #17
  store ptr %15, ptr %11, align 8, !tbaa !137
  br label %16

16:                                               ; preds = %14, %10
  %17 = load ptr, ptr %11, align 8, !tbaa !137
  %18 = getelementptr inbounds %struct.AnimData, ptr %17, i64 0, i32 5
  tail call void @free_fcurves(ptr noundef nonnull %18) #17
  %19 = load ptr, ptr %11, align 8, !tbaa !137
  %20 = getelementptr inbounds %struct.AnimData, ptr %19, i64 0, i32 5
  %21 = load ptr, ptr %3, align 8, !tbaa !137
  %22 = getelementptr inbounds %struct.AnimData, ptr %21, i64 0, i32 5
  tail call void @copy_fcurves(ptr noundef nonnull %20, ptr noundef nonnull %22) #17
  %23 = load ptr, ptr %11, align 8, !tbaa !137
  %24 = getelementptr inbounds %struct.AnimData, ptr %23, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !47
  %26 = icmp eq ptr %25, null
  br i1 %26, label %60, label %27

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  br label %32

29:                                               ; preds = %38, %32
  %30 = load ptr, ptr %33, align 8, !tbaa !47
  %31 = icmp eq ptr %30, null
  br i1 %31, label %60, label %32, !llvm.loop !367

32:                                               ; preds = %27, %29
  %33 = phi ptr [ %25, %27 ], [ %30, %29 ]
  %34 = getelementptr inbounds %struct.FCurve, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !368
  %36 = load ptr, ptr %35, align 8, !tbaa !47
  %37 = icmp eq ptr %36, null
  br i1 %37, label %29, label %41

38:                                               ; preds = %56
  %39 = load ptr, ptr %42, align 8, !tbaa !47
  %40 = icmp eq ptr %39, null
  br i1 %40, label %29, label %41, !llvm.loop !370

41:                                               ; preds = %32, %38
  %42 = phi ptr [ %39, %38 ], [ %36, %32 ]
  %43 = getelementptr inbounds %struct.DriverVar, ptr %42, i64 0, i32 3
  br label %44

44:                                               ; preds = %41, %56
  %45 = phi i32 [ 0, %41 ], [ %57, %56 ]
  %46 = phi ptr [ %43, %41 ], [ %58, %56 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !371
  %48 = icmp eq ptr %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %44
  %50 = icmp eq ptr %47, %1
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  store ptr %0, ptr %46, align 8, !tbaa !371
  br label %56

52:                                               ; preds = %49
  %53 = load ptr, ptr %28, align 8, !tbaa !359
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  tail call void @id_lib_extern(ptr noundef nonnull %47) #17
  br label %56

56:                                               ; preds = %44, %52, %55, %51
  %57 = add nuw nsw i32 %45, 1
  %58 = getelementptr inbounds %struct.DriverTarget, ptr %46, i64 1
  %59 = icmp eq i32 %57, 8
  br i1 %59, label %38, label %44, !llvm.loop !373

60:                                               ; preds = %29, %16, %6, %2
  ret void
}

declare ptr @BKE_id_add_animdata(ptr noundef) local_unnamed_addr #5

declare void @free_fcurves(ptr noundef) local_unnamed_addr #5

declare void @copy_fcurves(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_make_proxy(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !359
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !359
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %3
  %13 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %209

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 11
  store ptr %1, ptr %15, align 8, !tbaa !150
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 12
  store ptr %2, ptr %16, align 8, !tbaa !152
  tail call void @id_lib_extern(ptr noundef %1) #17
  tail call void @DAG_id_tag_update(ptr noundef %0, i16 noundef signext 7) #17
  tail call void @DAG_id_tag_update(ptr noundef %1, i16 noundef signext 7) #17
  %17 = icmp eq ptr %2, null
  br i1 %17, label %50, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 83
  %20 = load i16, ptr %19, align 8, !tbaa !38
  %21 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 83
  store i16 %20, ptr %21, align 8, !tbaa !38
  %22 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  %23 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  %24 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  tail call void @mul_m4_m4m4(ptr noundef nonnull %22, ptr noundef nonnull %23, ptr noundef nonnull %24) #17
  %25 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 112
  %26 = load ptr, ptr %25, align 8, !tbaa !346
  %27 = icmp eq ptr %26, null
  br i1 %27, label %49, label %28

28:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  %29 = getelementptr inbounds %struct.Group, ptr %26, i64 0, i32 3
  %30 = load float, ptr %29, align 4, !tbaa !34
  store float %30, ptr %4, align 4, !tbaa !34
  %31 = getelementptr inbounds %struct.Group, ptr %26, i64 0, i32 3, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = getelementptr inbounds float, ptr %4, i64 1
  store float %32, ptr %33, align 4, !tbaa !34
  %34 = getelementptr inbounds %struct.Group, ptr %26, i64 0, i32 3, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = getelementptr inbounds float, ptr %4, i64 2
  store float %35, ptr %36, align 4, !tbaa !34
  call void @mul_mat3_m4_v3(ptr noundef nonnull %22, ptr noundef nonnull %4) #17
  %37 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47, i64 3
  %38 = load float, ptr %4, align 4, !tbaa !34
  %39 = load float, ptr %37, align 4, !tbaa !34
  %40 = fsub float %39, %38
  store float %40, ptr %37, align 4, !tbaa !34
  %41 = load float, ptr %33, align 4, !tbaa !34
  %42 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47, i64 3, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !34
  %44 = fsub float %43, %41
  store float %44, ptr %42, align 4, !tbaa !34
  %45 = load float, ptr %36, align 4, !tbaa !34
  %46 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47, i64 3, i64 2
  %47 = load float, ptr %46, align 4, !tbaa !34
  %48 = fsub float %47, %45
  store float %48, ptr %46, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  br label %49

49:                                               ; preds = %28, %18
  call void @BKE_object_apply_mat4(ptr noundef %0, ptr noundef nonnull %22, i8 noundef zeroext 0, i8 noundef zeroext 1)
  br label %107

50:                                               ; preds = %14
  %51 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33
  %52 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 33
  %53 = load float, ptr %52, align 4, !tbaa !34
  store float %53, ptr %51, align 4, !tbaa !34
  %54 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 33, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !34
  %56 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33, i64 1
  store float %55, ptr %56, align 4, !tbaa !34
  %57 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 33, i64 2
  %58 = load float, ptr %57, align 4, !tbaa !34
  %59 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33, i64 2
  store float %58, ptr %59, align 4, !tbaa !34
  %60 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39
  %61 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 39
  %62 = load float, ptr %61, align 4, !tbaa !34
  store float %62, ptr %60, align 4, !tbaa !34
  %63 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 39, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !34
  %65 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39, i64 1
  store float %64, ptr %65, align 4, !tbaa !34
  %66 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 39, i64 2
  %67 = load float, ptr %66, align 4, !tbaa !34
  %68 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39, i64 2
  store float %67, ptr %68, align 4, !tbaa !34
  %69 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 41
  %70 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 41
  %71 = load float, ptr %70, align 4, !tbaa !34
  store float %71, ptr %69, align 4, !tbaa !34
  %72 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 41, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !34
  %74 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 41, i64 1
  store float %73, ptr %74, align 4, !tbaa !34
  %75 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 41, i64 2
  %76 = load float, ptr %75, align 4, !tbaa !34
  %77 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 41, i64 2
  store float %76, ptr %77, align 4, !tbaa !34
  %78 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43
  %79 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 43
  %80 = load float, ptr %79, align 4, !tbaa !34
  store float %80, ptr %78, align 4, !tbaa !34
  %81 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 43, i64 1
  %82 = load float, ptr %81, align 4, !tbaa !34
  %83 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43, i64 1
  store float %82, ptr %83, align 4, !tbaa !34
  %84 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 43, i64 2
  %85 = load float, ptr %84, align 4, !tbaa !34
  %86 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43, i64 2
  store float %85, ptr %86, align 4, !tbaa !34
  %87 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 45
  %88 = load float, ptr %87, align 8, !tbaa !342
  %89 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 45
  store float %88, ptr %89, align 8, !tbaa !342
  %90 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 83
  %91 = load i16, ptr %90, align 8, !tbaa !38
  %92 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 83
  store i16 %91, ptr %92, align 8, !tbaa !38
  %93 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36
  %94 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 36
  %95 = load float, ptr %94, align 4, !tbaa !34
  store float %95, ptr %93, align 4, !tbaa !34
  %96 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 36, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !34
  %98 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 1
  store float %97, ptr %98, align 4, !tbaa !34
  %99 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 36, i64 2
  %100 = load float, ptr %99, align 4, !tbaa !34
  %101 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 2
  store float %100, ptr %101, align 4, !tbaa !34
  %102 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 9
  %103 = load ptr, ptr %102, align 8, !tbaa !153
  %104 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 9
  store ptr %103, ptr %104, align 8, !tbaa !153
  %105 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 48
  %106 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 48
  tail call void @copy_m4_m4(ptr noundef nonnull %105, ptr noundef nonnull %106) #17
  br label %107

107:                                              ; preds = %50, %49
  call void @BKE_object_copy_proxy_drivers(ptr noundef %0, ptr noundef %1)
  %108 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %109 = load i16, ptr %108, align 8, !tbaa !69
  %110 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  store i16 %109, ptr %110, align 8, !tbaa !69
  %111 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %112 = load ptr, ptr %111, align 8, !tbaa !71
  %113 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  store ptr %112, ptr %113, align 8, !tbaa !71
  call void @id_us_plus(ptr noundef %112) #17
  %114 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  store i32 0, ptr %114, align 8, !tbaa !129
  %115 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 32
  store i32 0, ptr %115, align 4, !tbaa !374
  %116 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 29
  %117 = load ptr, ptr %116, align 8, !tbaa !128
  %118 = icmp eq ptr %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %107
  %120 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %120(ptr noundef nonnull %117) #17
  br label %121

121:                                              ; preds = %119, %107
  %122 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 30
  %123 = load ptr, ptr %122, align 8, !tbaa !135
  %124 = icmp eq ptr %123, null
  br i1 %124, label %127, label %125

125:                                              ; preds = %121
  %126 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %126(ptr noundef nonnull %123) #17
  br label %127

127:                                              ; preds = %125, %121
  %128 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %116, i8 0, i64 16, i1 false)
  %129 = load i32, ptr %128, align 8, !tbaa !129
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %159, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 29
  %133 = load ptr, ptr %132, align 8, !tbaa !128
  %134 = icmp eq ptr %133, null
  br i1 %134, label %159, label %135

135:                                              ; preds = %131
  %136 = load i16, ptr %110, align 8, !tbaa !69
  %137 = add i16 %136, -1
  %138 = icmp ult i16 %137, 5
  br i1 %138, label %139, label %159

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 32
  %141 = load i32, ptr %140, align 4, !tbaa !374
  store i32 %141, ptr %115, align 4, !tbaa !374
  store i32 %129, ptr %114, align 8, !tbaa !129
  %142 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %143 = call ptr %142(ptr noundef nonnull %133) #17
  store ptr %143, ptr %116, align 8, !tbaa !128
  %144 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %145 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 30
  %146 = load ptr, ptr %145, align 8, !tbaa !135
  %147 = call ptr %144(ptr noundef %146) #17
  store ptr %147, ptr %122, align 8, !tbaa !135
  %148 = load i32, ptr %128, align 8, !tbaa !129
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %139, %150
  %151 = phi i64 [ %155, %150 ], [ 0, %139 ]
  %152 = load ptr, ptr %116, align 8, !tbaa !128
  %153 = getelementptr inbounds ptr, ptr %152, i64 %151
  %154 = load ptr, ptr %153, align 8, !tbaa !47
  call void @id_us_plus(ptr noundef %154) #17
  %155 = add nuw nsw i64 %151, 1
  %156 = load i32, ptr %128, align 8, !tbaa !129
  %157 = sext i32 %156 to i64
  %158 = icmp slt i64 %155, %157
  br i1 %158, label %150, label %159, !llvm.loop !375

159:                                              ; preds = %150, %139, %135, %131, %127
  %160 = load i16, ptr %108, align 8, !tbaa !69
  switch i16 %160, label %192 [
    i16 25, label %161
    i16 0, label %185
  ]

161:                                              ; preds = %159
  call fastcc void @copy_object_pose(ptr noundef %0, ptr noundef %1)
  %162 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %163 = load ptr, ptr %162, align 8, !tbaa !65
  call void @BKE_pose_rest(ptr noundef %163) #17
  %164 = load ptr, ptr %113, align 8, !tbaa !71
  call void @BKE_pose_rebuild(ptr noundef %0, ptr noundef %164) #17
  %165 = load ptr, ptr %113, align 8, !tbaa !71
  %166 = getelementptr inbounds %struct.bArmature, ptr %165, i64 0, i32 16
  %167 = load i32, ptr %166, align 4, !tbaa !376
  %168 = load ptr, ptr %162, align 8, !tbaa !65
  %169 = load ptr, ptr %168, align 8, !tbaa !47
  %170 = icmp eq ptr %169, null
  br i1 %170, label %192, label %171

171:                                              ; preds = %161, %182
  %172 = phi ptr [ %183, %182 ], [ %169, %161 ]
  %173 = getelementptr inbounds %struct.bPoseChannel, ptr %172, i64 0, i32 12
  %174 = load ptr, ptr %173, align 8, !tbaa !377
  %175 = getelementptr inbounds %struct.Bone, ptr %174, i64 0, i32 25
  %176 = load i32, ptr %175, align 8, !tbaa !378
  %177 = and i32 %176, %167
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %171
  %180 = getelementptr inbounds %struct.bPoseChannel, ptr %172, i64 0, i32 18
  %181 = load ptr, ptr %180, align 8, !tbaa !164
  call void @id_lib_extern(ptr noundef %181) #17
  br label %182

182:                                              ; preds = %179, %171
  %183 = load ptr, ptr %172, align 8, !tbaa !47
  %184 = icmp eq ptr %183, null
  br i1 %184, label %192, label %171, !llvm.loop !380

185:                                              ; preds = %159
  %186 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 88
  %187 = load i8, ptr %186, align 1, !tbaa !309
  %188 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 88
  store i8 %187, ptr %188, align 1, !tbaa !309
  %189 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 89
  %190 = load float, ptr %189, align 8, !tbaa !310
  %191 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 89
  store float %190, ptr %191, align 8, !tbaa !310
  br label %192

192:                                              ; preds = %182, %161, %159, %185
  %193 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 9
  %194 = load ptr, ptr %193, align 8, !tbaa !381
  %195 = icmp eq ptr %194, null
  br i1 %195, label %199, label %196

196:                                              ; preds = %192
  call void @IDP_FreeProperty(ptr noundef nonnull %194) #17
  %197 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %198 = load ptr, ptr %193, align 8, !tbaa !381
  call void %197(ptr noundef %198) #17
  store ptr null, ptr %193, align 8, !tbaa !381
  br label %199

199:                                              ; preds = %196, %192
  %200 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 9
  %201 = load ptr, ptr %200, align 8, !tbaa !381
  %202 = icmp eq ptr %201, null
  br i1 %202, label %205, label %203

203:                                              ; preds = %199
  %204 = call ptr @IDP_CopyProperty(ptr noundef nonnull %201) #17
  store ptr %204, ptr %193, align 8, !tbaa !381
  br label %205

205:                                              ; preds = %203, %199
  %206 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 87
  %207 = load i8, ptr %206, align 2, !tbaa !308
  %208 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 87
  store i8 %207, ptr %208, align 2, !tbaa !308
  br label %209

209:                                              ; preds = %205, %12
  ret void
}

declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_apply_mat4(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #4 {
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #17
  %11 = icmp eq i8 %3, 0
  br i1 %11, label %58, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !153
  %15 = icmp eq ptr %14, null
  br i1 %15, label %58, label %16

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #17
  call fastcc void @ob_get_parent_matrix(ptr noundef null, ptr noundef %0, ptr noundef nonnull %14, ptr noundef nonnull %10)
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 48
  call void @mul_m4_m4m4(ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef nonnull %17) #17
  %18 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %9, ptr noundef nonnull %8) #17
  call void @mul_m4_m4m4(ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef %1) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #17
  %19 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33
  %20 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36
  call void @mat4_to_loc_rot_size(ptr noundef nonnull %19, ptr noundef nonnull %5, ptr noundef nonnull %20, ptr noundef nonnull %7) #17
  call void @BKE_object_mat3_to_rot(ptr noundef %0, ptr noundef nonnull %5, i8 noundef zeroext %2)
  %21 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 34
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = load float, ptr %19, align 4, !tbaa !34
  %24 = fsub float %23, %22
  store float %24, ptr %19, align 4, !tbaa !34
  %25 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 34, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = fsub float %28, %26
  store float %29, ptr %27, align 4, !tbaa !34
  %30 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 34, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = fsub float %33, %31
  store float %34, ptr %32, align 4, !tbaa !34
  %35 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = fcmp une float %36, 0.000000e+00
  br i1 %37, label %38, label %41

38:                                               ; preds = %16
  %39 = load float, ptr %20, align 4, !tbaa !34
  %40 = fdiv float %39, %36
  store float %40, ptr %20, align 4, !tbaa !34
  br label %41

41:                                               ; preds = %38, %16
  %42 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !34
  %44 = fcmp une float %43, 0.000000e+00
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !34
  %48 = fdiv float %47, %43
  store float %48, ptr %46, align 4, !tbaa !34
  br label %49

49:                                               ; preds = %45, %41
  %50 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !34
  %52 = fcmp une float %51, 0.000000e+00
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !34
  %56 = fdiv float %55, %51
  store float %56, ptr %54, align 4, !tbaa !34
  br label %57

57:                                               ; preds = %49, %53
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #17
  call void @mat4_to_loc_rot_size(ptr noundef nonnull %19, ptr noundef nonnull %6, ptr noundef nonnull %20, ptr noundef nonnull %7) #17
  call void @BKE_object_mat3_to_rot(ptr noundef %0, ptr noundef nonnull %6, i8 noundef zeroext %2)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #17
  br label %61

58:                                               ; preds = %12, %4
  %59 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33
  %60 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36
  call void @mat4_to_loc_rot_size(ptr noundef nonnull %59, ptr noundef nonnull %6, ptr noundef nonnull %60, ptr noundef %1) #17
  call void @BKE_object_mat3_to_rot(ptr noundef %0, ptr noundef nonnull %6, i8 noundef zeroext %2)
  br label %61

61:                                               ; preds = %58, %57
  %62 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33
  %63 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 34
  %64 = load float, ptr %63, align 4, !tbaa !34
  %65 = load float, ptr %62, align 4, !tbaa !34
  %66 = fsub float %65, %64
  store float %66, ptr %62, align 4, !tbaa !34
  %67 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 34, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !34
  %69 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !34
  %71 = fsub float %70, %68
  store float %71, ptr %69, align 4, !tbaa !34
  %72 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 34, i64 2
  %73 = load float, ptr %72, align 4, !tbaa !34
  %74 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33, i64 2
  %75 = load float, ptr %74, align 4, !tbaa !34
  %76 = fsub float %75, %73
  store float %76, ptr %74, align 4, !tbaa !34
  %77 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38
  %78 = load float, ptr %77, align 4, !tbaa !34
  %79 = fcmp une float %78, 0.000000e+00
  br i1 %79, label %80, label %84

80:                                               ; preds = %61
  %81 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36
  %82 = load float, ptr %81, align 4, !tbaa !34
  %83 = fdiv float %82, %78
  store float %83, ptr %81, align 4, !tbaa !34
  br label %84

84:                                               ; preds = %80, %61
  %85 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38, i64 1
  %86 = load float, ptr %85, align 4, !tbaa !34
  %87 = fcmp une float %86, 0.000000e+00
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 1
  %90 = load float, ptr %89, align 4, !tbaa !34
  %91 = fdiv float %90, %86
  store float %91, ptr %89, align 4, !tbaa !34
  br label %92

92:                                               ; preds = %88, %84
  %93 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38, i64 2
  %94 = load float, ptr %93, align 4, !tbaa !34
  %95 = fcmp une float %94, 0.000000e+00
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 2
  %98 = load float, ptr %97, align 4, !tbaa !34
  %99 = fdiv float %98, %94
  store float %99, ptr %97, align 4, !tbaa !34
  br label %100

100:                                              ; preds = %96, %92
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #17
  ret void
}

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @BKE_pose_rest(ptr noundef) local_unnamed_addr #5

declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #5

declare ptr @IDP_CopyProperty(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_obdata_size_init(ptr nocapture noundef %0, float noundef %1) local_unnamed_addr #4 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !69
  switch i16 %5, label %40 [
    i16 0, label %6
    i16 4, label %10
    i16 11, label %16
    i16 10, label %22
    i16 22, label %37
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 89
  %8 = load float, ptr %7, align 8, !tbaa !310
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 8, !tbaa !310
  br label %40

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = getelementptr inbounds %struct.Curve, ptr %12, i64 0, i32 40
  %14 = load float, ptr %13, align 8, !tbaa !382
  %15 = fmul float %14, %1
  store float %15, ptr %13, align 8, !tbaa !382
  br label %40

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !71
  %19 = getelementptr inbounds %struct.Camera, ptr %18, i64 0, i32 10
  %20 = load float, ptr %19, align 8, !tbaa !383
  %21 = fmul float %20, %1
  store float %21, ptr %19, align 8, !tbaa !383
  br label %40

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %24 = load ptr, ptr %23, align 8, !tbaa !71
  %25 = getelementptr inbounds %struct.Lamp, ptr %24, i64 0, i32 16
  %26 = load float, ptr %25, align 8, !tbaa !384
  %27 = fmul float %26, %1
  store float %27, ptr %25, align 8, !tbaa !384
  %28 = getelementptr inbounds %struct.Lamp, ptr %24, i64 0, i32 43
  %29 = load float, ptr %28, align 4, !tbaa !386
  %30 = fmul float %29, %1
  store float %30, ptr %28, align 4, !tbaa !386
  %31 = getelementptr inbounds %struct.Lamp, ptr %24, i64 0, i32 44
  %32 = load float, ptr %31, align 8, !tbaa !387
  %33 = fmul float %32, %1
  store float %33, ptr %31, align 8, !tbaa !387
  %34 = getelementptr inbounds %struct.Lamp, ptr %24, i64 0, i32 45
  %35 = load float, ptr %34, align 4, !tbaa !388
  %36 = fmul float %35, %1
  store float %36, ptr %34, align 4, !tbaa !388
  br label %40

37:                                               ; preds = %2
  %38 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %39 = load ptr, ptr %38, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #17
  call void @unit_m4(ptr noundef nonnull %3) #17
  call void @scale_m4_fl(ptr noundef nonnull %3, float noundef %1) #17
  call void @BKE_lattice_transform(ptr noundef %39, ptr noundef nonnull %3, i8 noundef zeroext 0) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #17
  br label %40

40:                                               ; preds = %2, %37, %22, %16, %10, %6
  ret void
}

declare void @scale_m4_fl(ptr noundef, float noundef) local_unnamed_addr #5

declare void @BKE_lattice_transform(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_scale_to_mat3(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38
  %6 = load float, ptr %4, align 4, !tbaa !34
  %7 = load float, ptr %5, align 4, !tbaa !34
  %8 = fmul float %6, %7
  store float %8, ptr %3, align 4, !tbaa !34
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fmul float %10, %12
  %14 = getelementptr inbounds float, ptr %3, i64 1
  store float %13, ptr %14, align 4, !tbaa !34
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fmul float %16, %18
  %20 = getelementptr inbounds float, ptr %3, i64 2
  store float %19, ptr %20, align 4, !tbaa !34
  call void @size_to_mat3(ptr noundef %1, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  ret void
}

declare void @size_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_rot_to_mat3(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #4 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #17
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 83
  %8 = load i16, ptr %7, align 8, !tbaa !38
  %9 = icmp sgt i16 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39
  call void @eulO_to_mat3(ptr noundef nonnull %4, ptr noundef nonnull %11, i16 noundef signext %8) #17
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 40
  %13 = load i16, ptr %7, align 8, !tbaa !38
  call void @eulO_to_mat3(ptr noundef nonnull %5, ptr noundef nonnull %12, i16 noundef signext %13) #17
  br label %28

14:                                               ; preds = %3
  %15 = icmp eq i16 %8, -1
  br i1 %15, label %16, label %23

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43
  %18 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 45
  %19 = load float, ptr %18, align 8, !tbaa !342
  call void @axis_angle_to_mat3(ptr noundef nonnull %4, ptr noundef nonnull %17, float noundef %19) #17
  %20 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 44
  %21 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 46
  %22 = load float, ptr %21, align 4, !tbaa !389
  call void @axis_angle_to_mat3(ptr noundef nonnull %5, ptr noundef nonnull %20, float noundef %22) #17
  br label %28

23:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  %24 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 41
  %25 = call float @normalize_qt_qt(ptr noundef nonnull %6, ptr noundef nonnull %24) #17
  call void @quat_to_mat3(ptr noundef nonnull %4, ptr noundef nonnull %6) #17
  %26 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 42
  %27 = call float @normalize_qt_qt(ptr noundef nonnull %6, ptr noundef nonnull %26) #17
  call void @quat_to_mat3(ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  br label %28

28:                                               ; preds = %16, %23, %10
  %29 = icmp eq i8 %2, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %28
  call void @mul_m3_m3m3(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %4) #17
  br label %32

31:                                               ; preds = %28
  call void @copy_m3_m3(ptr noundef %1, ptr noundef nonnull %4) #17
  br label %32

32:                                               ; preds = %31, %30
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #17
  ret void
}

declare void @eulO_to_mat3(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #5

declare void @axis_angle_to_mat3(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #5

declare float @normalize_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @quat_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @copy_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_mat3_to_rot(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #4 {
  %4 = alloca [4 x float], align 16
  %5 = alloca [4 x float], align 16
  %6 = alloca [4 x float], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 83
  %9 = load i16, ptr %8, align 8, !tbaa !38
  switch i16 %9, label %35 [
    i16 0, label %10
    i16 -1, label %14
  ]

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 41
  tail call void @mat3_to_quat(ptr noundef nonnull %11, ptr noundef %1) #17
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 42
  %13 = call float @normalize_qt_qt(ptr noundef nonnull %4, ptr noundef nonnull %12) #17
  call void @invert_qt(ptr noundef nonnull %4) #17
  call void @mul_qt_qtqt(ptr noundef nonnull %11, ptr noundef nonnull %4, ptr noundef nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  br label %44

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 45
  tail call void @mat3_to_axis_angle(ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef %1) #17
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 44
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = load float, ptr %15, align 4, !tbaa !34
  %20 = fsub float %19, %18
  store float %20, ptr %15, align 4, !tbaa !34
  %21 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 44, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !34
  %23 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = fsub float %24, %22
  store float %25, ptr %23, align 4, !tbaa !34
  %26 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 44, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = fsub float %29, %27
  store float %30, ptr %28, align 4, !tbaa !34
  %31 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 46
  %32 = load float, ptr %31, align 4, !tbaa !389
  %33 = load float, ptr %16, align 8, !tbaa !342
  %34 = fsub float %33, %32
  store float %34, ptr %16, align 8, !tbaa !342
  br label %44

35:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #17
  call void @mat3_to_quat(ptr noundef nonnull %5, ptr noundef %1) #17
  %36 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 40
  %37 = load i16, ptr %8, align 8, !tbaa !38
  call void @eulO_to_quat(ptr noundef nonnull %6, ptr noundef nonnull %36, i16 noundef signext %37) #17
  call void @invert_qt(ptr noundef nonnull %6) #17
  call void @mul_qt_qtqt(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %5) #17
  call void @quat_to_mat3(ptr noundef nonnull %7, ptr noundef nonnull %5) #17
  %38 = icmp eq i8 %2, 0
  %39 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39
  %40 = load i16, ptr %8, align 8, !tbaa !38
  br i1 %38, label %42, label %41

41:                                               ; preds = %35
  call void @mat3_to_compatible_eulO(ptr noundef nonnull %39, ptr noundef nonnull %39, i16 noundef signext %40, ptr noundef nonnull %7) #17
  br label %43

42:                                               ; preds = %35
  call void @mat3_to_eulO(ptr noundef nonnull %39, i16 noundef signext %40, ptr noundef nonnull %7) #17
  br label %43

43:                                               ; preds = %42, %41
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  br label %44

44:                                               ; preds = %43, %14, %10
  ret void
}

declare void @mat3_to_quat(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @invert_qt(ptr noundef) local_unnamed_addr #5

declare void @mul_qt_qtqt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @mat3_to_axis_angle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @eulO_to_quat(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #5

declare void @mat3_to_compatible_eulO(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #5

declare void @mat3_to_eulO(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_object_tfm_protected_backup(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33
  %4 = load float, ptr %3, align 4, !tbaa !34
  store float %4, ptr %1, align 4, !tbaa !34
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  store float %6, ptr %7, align 4, !tbaa !34
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds float, ptr %1, i64 2
  store float %9, ptr %10, align 4, !tbaa !34
  %11 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 1
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 34
  %13 = load float, ptr %12, align 4, !tbaa !34
  store float %13, ptr %11, align 4, !tbaa !34
  %14 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 34, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 1, i64 1
  store float %15, ptr %16, align 4, !tbaa !34
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 34, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 1, i64 2
  store float %18, ptr %19, align 4, !tbaa !34
  %20 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 2
  %21 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36
  %22 = load float, ptr %21, align 4, !tbaa !34
  store float %22, ptr %20, align 4, !tbaa !34
  %23 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 2, i64 1
  store float %24, ptr %25, align 4, !tbaa !34
  %26 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 2, i64 2
  store float %27, ptr %28, align 4, !tbaa !34
  %29 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 3
  %30 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38
  %31 = load float, ptr %30, align 4, !tbaa !34
  store float %31, ptr %29, align 4, !tbaa !34
  %32 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 3, i64 1
  store float %33, ptr %34, align 4, !tbaa !34
  %35 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 3, i64 2
  store float %36, ptr %37, align 4, !tbaa !34
  %38 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 4
  %39 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39
  %40 = load float, ptr %39, align 4, !tbaa !34
  store float %40, ptr %38, align 4, !tbaa !34
  %41 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !34
  %43 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 4, i64 1
  store float %42, ptr %43, align 4, !tbaa !34
  %44 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39, i64 2
  %45 = load float, ptr %44, align 4, !tbaa !34
  %46 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 4, i64 2
  store float %45, ptr %46, align 4, !tbaa !34
  %47 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 5
  %48 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 40
  %49 = load float, ptr %48, align 4, !tbaa !34
  store float %49, ptr %47, align 4, !tbaa !34
  %50 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 40, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !34
  %52 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 5, i64 1
  store float %51, ptr %52, align 4, !tbaa !34
  %53 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 40, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !34
  %55 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 5, i64 2
  store float %54, ptr %55, align 4, !tbaa !34
  %56 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 6
  %57 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 41
  %58 = load float, ptr %57, align 4, !tbaa !34
  store float %58, ptr %56, align 4, !tbaa !34
  %59 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 41, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !34
  %61 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 6, i64 1
  store float %60, ptr %61, align 4, !tbaa !34
  %62 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 41, i64 2
  %63 = load float, ptr %62, align 4, !tbaa !34
  %64 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 6, i64 2
  store float %63, ptr %64, align 4, !tbaa !34
  %65 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 41, i64 3
  %66 = load float, ptr %65, align 4, !tbaa !34
  %67 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 6, i64 3
  store float %66, ptr %67, align 4, !tbaa !34
  %68 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 7
  %69 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 42
  %70 = load float, ptr %69, align 4, !tbaa !34
  store float %70, ptr %68, align 4, !tbaa !34
  %71 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 42, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !34
  %73 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 7, i64 1
  store float %72, ptr %73, align 4, !tbaa !34
  %74 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 42, i64 2
  %75 = load float, ptr %74, align 4, !tbaa !34
  %76 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 7, i64 2
  store float %75, ptr %76, align 4, !tbaa !34
  %77 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 42, i64 3
  %78 = load float, ptr %77, align 4, !tbaa !34
  %79 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 7, i64 3
  store float %78, ptr %79, align 4, !tbaa !34
  %80 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 8
  %81 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43
  %82 = load float, ptr %81, align 4, !tbaa !34
  store float %82, ptr %80, align 4, !tbaa !34
  %83 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !34
  %85 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 8, i64 1
  store float %84, ptr %85, align 4, !tbaa !34
  %86 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43, i64 2
  %87 = load float, ptr %86, align 4, !tbaa !34
  %88 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 8, i64 2
  store float %87, ptr %88, align 4, !tbaa !34
  %89 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 9
  %90 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 44
  %91 = load float, ptr %90, align 4, !tbaa !34
  store float %91, ptr %89, align 4, !tbaa !34
  %92 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 44, i64 1
  %93 = load float, ptr %92, align 4, !tbaa !34
  %94 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 9, i64 1
  store float %93, ptr %94, align 4, !tbaa !34
  %95 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 44, i64 2
  %96 = load float, ptr %95, align 4, !tbaa !34
  %97 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 9, i64 2
  store float %96, ptr %97, align 4, !tbaa !34
  %98 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 45
  %99 = load float, ptr %98, align 8, !tbaa !342
  %100 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 10
  store float %99, ptr %100, align 4, !tbaa !390
  %101 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 46
  %102 = load float, ptr %101, align 4, !tbaa !389
  %103 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 11
  store float %102, ptr %103, align 4, !tbaa !392
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @BKE_object_tfm_protected_restore(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) local_unnamed_addr #11 {
  %4 = sext i16 %2 to i32
  br label %5

5:                                                ; preds = %3, %55
  %6 = phi i64 [ 0, %3 ], [ %56, %55 ]
  %7 = trunc i64 %6 to i32
  %8 = shl nuw nsw i32 1, %7
  %9 = and i32 %8, %4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 %6
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33, i64 %6
  store float %13, ptr %14, align 4, !tbaa !34
  %15 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 1, i64 %6
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 34, i64 %6
  store float %16, ptr %17, align 4, !tbaa !34
  br label %18

18:                                               ; preds = %11, %5
  %19 = trunc i64 %6 to i32
  %20 = shl nuw nsw i32 64, %19
  %21 = and i32 %20, %4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 2, i64 %6
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 %6
  store float %25, ptr %26, align 4, !tbaa !34
  %27 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 3, i64 %6
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38, i64 %6
  store float %28, ptr %29, align 4, !tbaa !34
  br label %30

30:                                               ; preds = %23, %18
  %31 = trunc i64 %6 to i32
  %32 = shl nuw nsw i32 8, %31
  %33 = and i32 %32, %4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %55, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 4, i64 %6
  %37 = load float, ptr %36, align 4, !tbaa !34
  %38 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39, i64 %6
  store float %37, ptr %38, align 4, !tbaa !34
  %39 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 5, i64 %6
  %40 = load float, ptr %39, align 4, !tbaa !34
  %41 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 40, i64 %6
  store float %40, ptr %41, align 4, !tbaa !34
  %42 = add nuw nsw i64 %6, 1
  %43 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 6, i64 %42
  %44 = load float, ptr %43, align 4, !tbaa !34
  %45 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 41, i64 %42
  store float %44, ptr %45, align 4, !tbaa !34
  %46 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 7, i64 %42
  %47 = load float, ptr %46, align 4, !tbaa !34
  %48 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 42, i64 %42
  store float %47, ptr %48, align 4, !tbaa !34
  %49 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 8, i64 %6
  %50 = load float, ptr %49, align 4, !tbaa !34
  %51 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43, i64 %6
  store float %50, ptr %51, align 4, !tbaa !34
  %52 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 9, i64 %6
  %53 = load float, ptr %52, align 4, !tbaa !34
  %54 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 44, i64 %6
  store float %53, ptr %54, align 4, !tbaa !34
  br label %55

55:                                               ; preds = %30, %35
  %56 = add nuw nsw i64 %6, 1
  %57 = icmp eq i64 %56, 3
  br i1 %57, label %58, label %5, !llvm.loop !393

58:                                               ; preds = %55
  %59 = and i16 %2, 1536
  %60 = icmp eq i16 %59, 1536
  br i1 %60, label %61, label %74

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 6
  %63 = load float, ptr %62, align 4, !tbaa !34
  %64 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 41
  store float %63, ptr %64, align 8, !tbaa !34
  %65 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 7
  %66 = load float, ptr %65, align 4, !tbaa !34
  %67 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 42
  store float %66, ptr %67, align 8, !tbaa !34
  %68 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 10
  %69 = load float, ptr %68, align 4, !tbaa !390
  %70 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 45
  store float %69, ptr %70, align 8, !tbaa !342
  %71 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 11
  %72 = load float, ptr %71, align 4, !tbaa !392
  %73 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 46
  store float %72, ptr %73, align 4, !tbaa !389
  br label %74

74:                                               ; preds = %61, %58
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_to_mat3(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38
  %8 = load float, ptr %6, align 4, !tbaa !34
  %9 = load float, ptr %7, align 4, !tbaa !34
  %10 = fmul float %8, %9
  store float %10, ptr %3, align 4, !tbaa !34
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = fmul float %12, %14
  %16 = getelementptr inbounds float, ptr %3, i64 1
  store float %15, ptr %16, align 4, !tbaa !34
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fmul float %18, %20
  %22 = getelementptr inbounds float, ptr %3, i64 2
  store float %21, ptr %22, align 4, !tbaa !34
  call void @size_to_mat3(ptr noundef nonnull %4, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  call void @BKE_object_rot_to_mat3(ptr noundef %0, ptr noundef nonnull %5, i8 noundef zeroext 1)
  call void @mul_m3_m3m3(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_to_mat4(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38
  %9 = load float, ptr %7, align 4, !tbaa !34
  %10 = load float, ptr %8, align 4, !tbaa !34
  %11 = fmul float %9, %10
  store float %11, ptr %3, align 4, !tbaa !34
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fmul float %13, %15
  %17 = getelementptr inbounds float, ptr %3, i64 1
  store float %16, ptr %17, align 4, !tbaa !34
  %18 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = fmul float %19, %21
  %23 = getelementptr inbounds float, ptr %3, i64 2
  store float %22, ptr %23, align 4, !tbaa !34
  call void @size_to_mat3(ptr noundef nonnull %4, ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  call void @BKE_object_rot_to_mat3(ptr noundef %0, ptr noundef nonnull %5, i8 noundef zeroext 1)
  call void @mul_m3_m3m3(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #17
  call void @copy_m4_m3(ptr noundef %1, ptr noundef nonnull %6) #17
  %24 = getelementptr inbounds [4 x float], ptr %1, i64 3
  %25 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33
  %26 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 34
  %27 = load float, ptr %25, align 4, !tbaa !34
  %28 = load float, ptr %26, align 4, !tbaa !34
  %29 = fadd float %27, %28
  store float %29, ptr %24, align 4, !tbaa !34
  %30 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 34, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = fadd float %31, %33
  %35 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 1
  store float %34, ptr %35, align 4, !tbaa !34
  %36 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !34
  %38 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 34, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !34
  %40 = fadd float %37, %39
  %41 = getelementptr inbounds [4 x float], ptr %1, i64 3, i64 2
  store float %40, ptr %41, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #17
  ret void
}

declare void @copy_m4_m3(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_matrix_local_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !153
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #17
  %8 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 47
  %9 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %8) #17
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #17
  br label %13

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  tail call void @copy_m4_m4(ptr noundef %1, ptr noundef nonnull %12) #17
  br label %13

13:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_where_is_calc_time_ex(ptr noundef %0, ptr noundef %1, float noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #4 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  %11 = icmp eq ptr %1, null
  br i1 %11, label %112, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !137
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %14, float noundef %2, i16 noundef signext 1) #17
  %15 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !153
  %17 = icmp eq ptr %16, null
  br i1 %17, label %48, label %18

18:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #17
  %19 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call fastcc void @solve_parenting(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %16, ptr noundef nonnull %19, ptr noundef nonnull %10, ptr noundef %4, i8 noundef zeroext 1)
  %20 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 4
  %21 = load i16, ptr %20, align 2, !tbaa !394
  %22 = and i16 %21, 16
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %46, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 95
  %26 = load float, ptr %25, align 8, !tbaa !395
  %27 = call float @llvm.fabs.f32(float %26)
  %28 = fadd float %27, 1.000000e+00
  %29 = fdiv float 1.000000e+00, %28
  %30 = fcmp oge float %29, 1.000000e+00
  br i1 %30, label %47, label %31

31:                                               ; preds = %24
  %32 = fsub float 1.000000e+00, %29
  br label %33

33:                                               ; preds = %31, %33
  %34 = phi i32 [ 0, %31 ], [ %41, %33 ]
  %35 = phi ptr [ %19, %31 ], [ %42, %33 ]
  %36 = phi ptr [ %10, %31 ], [ %43, %33 ]
  %37 = load float, ptr %35, align 4, !tbaa !34
  %38 = load float, ptr %36, align 4, !tbaa !34
  %39 = fmul float %32, %38
  %40 = call float @llvm.fmuladd.f32(float %29, float %37, float %39)
  store float %40, ptr %35, align 4, !tbaa !34
  %41 = add nuw nsw i32 %34, 1
  %42 = getelementptr inbounds float, ptr %35, i64 1
  %43 = getelementptr inbounds float, ptr %36, i64 1
  %44 = icmp eq i32 %41, 16
  br i1 %44, label %45, label %33, !llvm.loop !396

45:                                               ; preds = %33
  br i1 %30, label %47, label %46

46:                                               ; preds = %45, %18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #17
  br label %85

47:                                               ; preds = %24, %45
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #17
  br label %112

48:                                               ; preds = %12
  %49 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  %50 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 36
  %51 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 38
  %52 = load float, ptr %50, align 4, !tbaa !34
  %53 = load float, ptr %51, align 4, !tbaa !34
  %54 = fmul float %52, %53
  store float %54, ptr %6, align 4, !tbaa !34
  %55 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 36, i64 1
  %56 = load float, ptr %55, align 4, !tbaa !34
  %57 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 38, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !34
  %59 = fmul float %56, %58
  %60 = getelementptr inbounds float, ptr %6, i64 1
  store float %59, ptr %60, align 4, !tbaa !34
  %61 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 36, i64 2
  %62 = load float, ptr %61, align 4, !tbaa !34
  %63 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 38, i64 2
  %64 = load float, ptr %63, align 4, !tbaa !34
  %65 = fmul float %62, %64
  %66 = getelementptr inbounds float, ptr %6, i64 2
  store float %65, ptr %66, align 4, !tbaa !34
  call void @size_to_mat3(ptr noundef nonnull %7, ptr noundef nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  call void @BKE_object_rot_to_mat3(ptr noundef %1, ptr noundef nonnull %8, i8 noundef zeroext 1)
  call void @mul_m3_m3m3(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #17
  call void @copy_m4_m3(ptr noundef nonnull %49, ptr noundef nonnull %9) #17
  %67 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47, i64 3
  %68 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 33
  %69 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 34
  %70 = load float, ptr %68, align 4, !tbaa !34
  %71 = load float, ptr %69, align 4, !tbaa !34
  %72 = fadd float %70, %71
  store float %72, ptr %67, align 4, !tbaa !34
  %73 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 33, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !34
  %75 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 34, i64 1
  %76 = load float, ptr %75, align 4, !tbaa !34
  %77 = fadd float %74, %76
  %78 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47, i64 3, i64 1
  store float %77, ptr %78, align 4, !tbaa !34
  %79 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 33, i64 2
  %80 = load float, ptr %79, align 4, !tbaa !34
  %81 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 34, i64 2
  %82 = load float, ptr %81, align 4, !tbaa !34
  %83 = fadd float %80, %82
  %84 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47, i64 3, i64 2
  store float %83, ptr %84, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #17
  br label %85

85:                                               ; preds = %46, %48
  %86 = icmp eq ptr %3, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 47
  %89 = load ptr, ptr %88, align 8, !tbaa !397
  br label %90

90:                                               ; preds = %85, %87
  %91 = phi ptr [ %89, %87 ], [ %3, %85 ]
  call void @BKE_rigidbody_sync_transforms(ptr noundef %91, ptr noundef nonnull %1, float noundef %2) #17
  %92 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 106
  %93 = load ptr, ptr %92, align 8, !tbaa !398
  %94 = icmp eq ptr %93, null
  br i1 %94, label %102, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 55
  %97 = load i16, ptr %96, align 8, !tbaa !399
  %98 = and i16 %97, 8192
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = call ptr @BKE_constraints_make_evalob(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null, i16 noundef signext 1) #17
  call void @BKE_constraints_solve(ptr noundef nonnull %92, ptr noundef %101, float noundef %2) #17
  call void @BKE_constraints_clear_evalob(ptr noundef %101) #17
  br label %102

102:                                              ; preds = %100, %95, %90
  %103 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %104 = call zeroext i8 @is_negative_m4(ptr noundef nonnull %103) #17
  %105 = icmp eq i8 %104, 0
  %106 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 55
  %107 = load i16, ptr %106, align 8, !tbaa !399
  br i1 %105, label %110, label %108

108:                                              ; preds = %102
  %109 = or i16 %107, 4
  store i16 %109, ptr %106, align 8, !tbaa !399
  br label %112

110:                                              ; preds = %102
  %111 = and i16 %107, -5
  store i16 %111, ptr %106, align 8, !tbaa !399
  br label %112

112:                                              ; preds = %47, %5, %110, %108
  ret void
}

declare void @BKE_animsys_evaluate_animdata(ptr noundef, ptr noundef, ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @solve_parenting(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6) unnamed_addr #4 {
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca [3 x [3 x float]], align 16
  %12 = alloca [4 x [4 x float]], align 16
  %13 = alloca [4 x [4 x float]], align 16
  %14 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #17
  %15 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 36
  %16 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 38
  %17 = load float, ptr %15, align 4, !tbaa !34
  %18 = load float, ptr %16, align 4, !tbaa !34
  %19 = fmul float %17, %18
  store float %19, ptr %8, align 4, !tbaa !34
  %20 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 36, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 38, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = fmul float %21, %23
  %25 = getelementptr inbounds float, ptr %8, i64 1
  store float %24, ptr %25, align 4, !tbaa !34
  %26 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 36, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 38, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = fmul float %27, %29
  %31 = getelementptr inbounds float, ptr %8, i64 2
  store float %30, ptr %31, align 4, !tbaa !34
  call void @size_to_mat3(ptr noundef nonnull %9, ptr noundef nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #17
  call void @BKE_object_rot_to_mat3(ptr noundef %1, ptr noundef nonnull %10, i8 noundef zeroext 1)
  call void @mul_m3_m3m3(ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #17
  call void @copy_m4_m3(ptr noundef nonnull %14, ptr noundef nonnull %11) #17
  %32 = getelementptr inbounds [4 x float], ptr %14, i64 3
  %33 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 33
  %34 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 34
  %35 = load float, ptr %33, align 4, !tbaa !34
  %36 = load float, ptr %34, align 4, !tbaa !34
  %37 = fadd float %35, %36
  store float %37, ptr %32, align 16, !tbaa !34
  %38 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 33, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !34
  %40 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 34, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !34
  %42 = fadd float %39, %41
  %43 = getelementptr inbounds [4 x float], ptr %14, i64 3, i64 1
  store float %42, ptr %43, align 4, !tbaa !34
  %44 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 33, i64 2
  %45 = load float, ptr %44, align 4, !tbaa !34
  %46 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 34, i64 2
  %47 = load float, ptr %46, align 4, !tbaa !34
  %48 = fadd float %45, %47
  %49 = getelementptr inbounds [4 x float], ptr %14, i64 3, i64 2
  store float %48, ptr %49, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #17
  %50 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 4
  %51 = load i16, ptr %50, align 2, !tbaa !394
  %52 = and i16 %51, 16
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %7
  call void @copy_m4_m4(ptr noundef %4, ptr noundef %3) #17
  br label %55

55:                                               ; preds = %54, %7
  call fastcc void @ob_get_parent_matrix(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %12)
  %56 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 48
  call void @mul_m4_m4m4(ptr noundef nonnull %13, ptr noundef nonnull %12, ptr noundef nonnull %56) #17
  call void @mul_m4_m4m4(ptr noundef %3, ptr noundef nonnull %13, ptr noundef nonnull %14) #17
  %57 = icmp eq ptr %5, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef nonnull %13) #17
  br label %59

59:                                               ; preds = %58, %55
  %60 = icmp eq i8 %6, 0
  br i1 %60, label %84, label %61

61:                                               ; preds = %59
  %62 = load i16, ptr %50, align 2, !tbaa !394
  %63 = and i16 %62, 15
  %64 = icmp eq i16 %63, 4
  %65 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 35
  %66 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 35, i64 1
  %67 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 35, i64 2
  br i1 %64, label %68, label %75

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47, i64 3
  %70 = load float, ptr %69, align 4, !tbaa !34
  store float %70, ptr %65, align 4, !tbaa !34
  %71 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47, i64 3, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !34
  store float %72, ptr %66, align 4, !tbaa !34
  %73 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47, i64 3, i64 2
  %74 = load float, ptr %73, align 4, !tbaa !34
  br label %82

75:                                               ; preds = %61
  %76 = getelementptr inbounds [4 x [4 x float]], ptr %12, i64 0, i64 3
  %77 = load float, ptr %76, align 16, !tbaa !34
  store float %77, ptr %65, align 4, !tbaa !34
  %78 = getelementptr inbounds [4 x [4 x float]], ptr %12, i64 0, i64 3, i64 1
  %79 = load float, ptr %78, align 4, !tbaa !34
  store float %79, ptr %66, align 4, !tbaa !34
  %80 = getelementptr inbounds [4 x [4 x float]], ptr %12, i64 0, i64 3, i64 2
  %81 = load float, ptr %80, align 8, !tbaa !34
  br label %82

82:                                               ; preds = %75, %68
  %83 = phi float [ %74, %68 ], [ %81, %75 ]
  store float %83, ptr %67, align 4, !tbaa !34
  br label %84

84:                                               ; preds = %82, %59
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #17
  ret void
}

declare void @BKE_rigidbody_sync_transforms(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #5

declare ptr @BKE_constraints_make_evalob(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #5

declare void @BKE_constraints_solve(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #5

declare void @BKE_constraints_clear_evalob(ptr noundef) local_unnamed_addr #5

declare zeroext i8 @is_negative_m4(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_where_is_calc_time(ptr noundef %0, ptr noundef %1, float noundef %2) local_unnamed_addr #4 {
  tail call void @BKE_object_where_is_calc_time_ex(ptr noundef %0, ptr noundef %1, float noundef %2, ptr noundef null, ptr noundef null)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_where_is_calc_mat4(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !153
  %11 = icmp eq ptr %10, null
  br i1 %11, label %39, label %12

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #17
  call fastcc void @solve_parenting(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %10, ptr noundef %2, ptr noundef nonnull %8, ptr noundef null, i8 noundef zeroext 0)
  %13 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 4
  %14 = load i16, ptr %13, align 2, !tbaa !394
  %15 = and i16 %14, 16
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %38, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 95
  %19 = load float, ptr %18, align 8, !tbaa !395
  %20 = call float @llvm.fabs.f32(float %19)
  %21 = fadd float %20, 1.000000e+00
  %22 = fdiv float 1.000000e+00, %21
  %23 = fcmp ult float %22, 1.000000e+00
  br i1 %23, label %24, label %38

24:                                               ; preds = %17
  %25 = fsub float 1.000000e+00, %22
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i32 [ 0, %24 ], [ %34, %26 ]
  %28 = phi ptr [ %2, %24 ], [ %35, %26 ]
  %29 = phi ptr [ %8, %24 ], [ %36, %26 ]
  %30 = load float, ptr %28, align 4, !tbaa !34
  %31 = load float, ptr %29, align 4, !tbaa !34
  %32 = fmul float %25, %31
  %33 = call float @llvm.fmuladd.f32(float %22, float %30, float %32)
  store float %33, ptr %28, align 4, !tbaa !34
  %34 = add nuw nsw i32 %27, 1
  %35 = getelementptr inbounds float, ptr %28, i64 1
  %36 = getelementptr inbounds float, ptr %29, i64 1
  %37 = icmp eq i32 %34, 16
  br i1 %37, label %38, label %26, !llvm.loop !396

38:                                               ; preds = %26, %17, %12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #17
  br label %75

39:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  %40 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 36
  %41 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 38
  %42 = load float, ptr %40, align 4, !tbaa !34
  %43 = load float, ptr %41, align 4, !tbaa !34
  %44 = fmul float %42, %43
  store float %44, ptr %4, align 4, !tbaa !34
  %45 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 36, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !34
  %47 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 38, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !34
  %49 = fmul float %46, %48
  %50 = getelementptr inbounds float, ptr %4, i64 1
  store float %49, ptr %50, align 4, !tbaa !34
  %51 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 36, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !34
  %53 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 38, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !34
  %55 = fmul float %52, %54
  %56 = getelementptr inbounds float, ptr %4, i64 2
  store float %55, ptr %56, align 4, !tbaa !34
  call void @size_to_mat3(ptr noundef nonnull %5, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  call void @BKE_object_rot_to_mat3(ptr noundef %1, ptr noundef nonnull %6, i8 noundef zeroext 1)
  call void @mul_m3_m3m3(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #17
  call void @copy_m4_m3(ptr noundef %2, ptr noundef nonnull %7) #17
  %57 = getelementptr inbounds [4 x float], ptr %2, i64 3
  %58 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 33
  %59 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 34
  %60 = load float, ptr %58, align 4, !tbaa !34
  %61 = load float, ptr %59, align 4, !tbaa !34
  %62 = fadd float %60, %61
  store float %62, ptr %57, align 4, !tbaa !34
  %63 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 33, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !34
  %65 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 34, i64 1
  %66 = load float, ptr %65, align 4, !tbaa !34
  %67 = fadd float %64, %66
  %68 = getelementptr inbounds [4 x float], ptr %2, i64 3, i64 1
  store float %67, ptr %68, align 4, !tbaa !34
  %69 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 33, i64 2
  %70 = load float, ptr %69, align 4, !tbaa !34
  %71 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 34, i64 2
  %72 = load float, ptr %71, align 4, !tbaa !34
  %73 = fadd float %70, %72
  %74 = getelementptr inbounds [4 x float], ptr %2, i64 3, i64 2
  store float %73, ptr %74, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #17
  br label %75

75:                                               ; preds = %39, %38
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_where_is_calc_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = tail call float @BKE_scene_frame_get(ptr noundef %0) #17
  tail call void @BKE_object_where_is_calc_time_ex(ptr noundef %0, ptr noundef %2, float noundef %5, ptr noundef %1, ptr noundef %3)
  ret void
}

declare float @BKE_scene_frame_get(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_where_is_calc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = tail call float @BKE_scene_frame_get(ptr noundef %0) #17
  tail call void @BKE_object_where_is_calc_time_ex(ptr noundef %0, ptr noundef %1, float noundef %3, ptr noundef null, ptr noundef null)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_workob_calc_parent(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1424) %2, i8 0, i64 1424, i1 false)
  %4 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 36
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 36, i64 2
  store float 1.000000e+00, ptr %5, align 4, !tbaa !34
  %6 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 36, i64 1
  store float 1.000000e+00, ptr %6, align 4, !tbaa !34
  store float 1.000000e+00, ptr %4, align 4, !tbaa !34
  %7 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 38
  %8 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 38, i64 2
  store float 1.000000e+00, ptr %8, align 4, !tbaa !34
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 38, i64 1
  store float 1.000000e+00, ptr %9, align 4, !tbaa !34
  store float 1.000000e+00, ptr %7, align 4, !tbaa !34
  %10 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 83
  store i16 1, ptr %10, align 8, !tbaa !38
  %11 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  tail call void @unit_m4(ptr noundef nonnull %11) #17
  %12 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 48
  tail call void @unit_m4(ptr noundef nonnull %12) #17
  %13 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 49
  tail call void @unit_m4(ptr noundef nonnull %13) #17
  %14 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !153
  %16 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 9
  store ptr %15, ptr %16, align 8, !tbaa !153
  %17 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 57
  %18 = load i16, ptr %17, align 4, !tbaa !311
  %19 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 57
  store i16 %18, ptr %19, align 4, !tbaa !311
  %20 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 58
  %21 = load i16, ptr %20, align 2, !tbaa !312
  %22 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 58
  store i16 %21, ptr %22, align 2, !tbaa !312
  %23 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 4
  %24 = load i16, ptr %23, align 2, !tbaa !394
  %25 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 4
  store i16 %24, ptr %25, align 2, !tbaa !394
  %26 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 5
  %27 = load i32, ptr %26, align 4, !tbaa !400
  %28 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 5
  store i32 %27, ptr %28, align 4, !tbaa !400
  %29 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !401
  %31 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 6
  store i32 %30, ptr %31, align 8, !tbaa !401
  %32 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 7
  %33 = load i32, ptr %32, align 4, !tbaa !402
  %34 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 7
  store i32 %33, ptr %34, align 4, !tbaa !402
  %35 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 106
  %36 = load ptr, ptr %35, align 8, !tbaa !398
  %37 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 106
  store ptr %36, ptr %37, align 8, !tbaa !398
  %38 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 106, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !403
  %40 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 106, i32 1
  store ptr %39, ptr %40, align 8, !tbaa !403
  %41 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 8
  %42 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 8
  %43 = tail call ptr @BLI_strncpy(ptr noundef nonnull %41, ptr noundef nonnull %42, i64 noundef 64) #17
  %44 = tail call float @BKE_scene_frame_get(ptr noundef %0) #17
  tail call void @BKE_object_where_is_calc_time_ex(ptr noundef %0, ptr noundef %2, float noundef %44, ptr noundef null, ptr noundef null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ob_get_parent_matrix(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 {
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [4 x float], align 16
  %10 = alloca [4 x float], align 16
  %11 = alloca [3 x float], align 4
  %12 = alloca [4 x float], align 16
  %13 = alloca float, align 4
  %14 = alloca [4 x [4 x float]], align 16
  %15 = alloca [4 x [4 x float]], align 16
  %16 = alloca [4 x [4 x float]], align 16
  %17 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %16) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #17
  %18 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 4
  %19 = load i16, ptr %18, align 2, !tbaa !394
  %20 = and i16 %19, 15
  switch i16 %20, label %195 [
    i16 0, label %21
    i16 7, label %123
    i16 5, label %173
    i16 6, label %178
    i16 4, label %193
  ]

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %23 = load i16, ptr %22, align 8, !tbaa !69
  %24 = icmp eq i16 %23, 2
  %25 = icmp ne ptr %0, null
  %26 = and i1 %25, %24
  br i1 %26, label %27, label %121

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %29 = load ptr, ptr %28, align 8, !tbaa !71
  %30 = getelementptr inbounds %struct.Curve, ptr %29, i64 0, i32 23
  %31 = load i32, ptr %30, align 4, !tbaa !404
  %32 = and i32 %31, 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %121, label %34

34:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #17
  call void @unit_m4(ptr noundef nonnull %16) #17
  %35 = load ptr, ptr %28, align 8, !tbaa !71
  %36 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 118
  %37 = load ptr, ptr %36, align 8, !tbaa !58
  %38 = icmp eq ptr %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.CurveCache, ptr %37, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !59
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %41, align 8, !tbaa !405
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %39, %34
  call void @BKE_displist_make_curveTypes(ptr noundef nonnull %0, ptr noundef %2, i8 noundef zeroext 0) #17
  br label %47

47:                                               ; preds = %46, %43
  %48 = load ptr, ptr %36, align 8, !tbaa !58
  %49 = getelementptr inbounds %struct.CurveCache, ptr %48, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !59
  %51 = icmp eq ptr %50, null
  br i1 %51, label %119, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 60
  %54 = load i16, ptr %53, align 2, !tbaa !407
  %55 = and i16 %54, 1024
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %57, label %85

57:                                               ; preds = %52
  %58 = load i32, ptr @enable_cu_speed, align 4, !tbaa !408
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %73, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.Curve, ptr %35, i64 0, i32 20
  %62 = load i32, ptr %61, align 4, !tbaa !409
  %63 = icmp eq i32 %62, 0
  %64 = getelementptr inbounds %struct.Curve, ptr %35, i64 0, i32 64
  %65 = load float, ptr %64, align 8, !tbaa !410
  %66 = sitofp i32 %62 to float
  %67 = select i1 %63, float 1.000000e+00, float %66
  %68 = fdiv float %65, %67
  %69 = fcmp olt float %68, 0.000000e+00
  br i1 %69, label %85, label %70

70:                                               ; preds = %60
  %71 = fcmp ogt float %68, 1.000000e+00
  br i1 %71, label %72, label %85

72:                                               ; preds = %70
  br label %85

73:                                               ; preds = %57
  %74 = call float @BKE_scene_frame_get(ptr noundef nonnull %0) #17
  %75 = getelementptr inbounds %struct.Curve, ptr %35, i64 0, i32 20
  %76 = load i32, ptr %75, align 4, !tbaa !409
  %77 = icmp eq i32 %76, 0
  %78 = sitofp i32 %76 to float
  %79 = select i1 %77, float 1.000000e+00, float %78
  %80 = fdiv float %74, %79
  %81 = fcmp olt float %80, 0.000000e+00
  br i1 %81, label %85, label %82

82:                                               ; preds = %73
  %83 = fcmp ogt float %80, 1.000000e+00
  br i1 %83, label %84, label %85

84:                                               ; preds = %82
  br label %85

85:                                               ; preds = %84, %82, %73, %72, %70, %60, %52
  %86 = phi float [ 1.000000e+00, %72 ], [ %68, %70 ], [ 1.000000e+00, %84 ], [ %80, %82 ], [ 0.000000e+00, %52 ], [ 0.000000e+00, %60 ], [ 0.000000e+00, %73 ]
  %87 = getelementptr inbounds %struct.Curve, ptr %35, i64 0, i32 23
  %88 = load i32, ptr %87, align 4, !tbaa !404
  %89 = and i32 %88, 16
  %90 = icmp eq i32 %89, 0
  %91 = select i1 %90, ptr null, ptr %12
  %92 = call i32 @where_on_path(ptr noundef %2, float noundef %86, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef %91, ptr noundef nonnull %13, ptr noundef null) #17
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %119, label %94

94:                                               ; preds = %85
  %95 = load i32, ptr %87, align 4, !tbaa !404
  %96 = and i32 %95, 16
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 57
  %100 = load i16, ptr %99, align 4, !tbaa !311
  %101 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 58
  %102 = load i16, ptr %101, align 2, !tbaa !312
  call void @quat_apply_track(ptr noundef nonnull %12, i16 noundef signext %100, i16 noundef signext %102) #17
  %103 = call float @normalize_qt(ptr noundef nonnull %12) #17
  call void @quat_to_mat4(ptr noundef nonnull %16, ptr noundef nonnull %12) #17
  br label %104

104:                                              ; preds = %98, %94
  %105 = load i32, ptr %87, align 4, !tbaa !404
  %106 = and i32 %105, 4096
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %15) #17
  %109 = load float, ptr %13, align 4, !tbaa !34
  call void @scale_m4_fl(ptr noundef nonnull %14, float noundef %109) #17
  call void @mul_m4_m4m4(ptr noundef nonnull %15, ptr noundef nonnull %14, ptr noundef nonnull %16) #17
  call void @copy_m4_m4(ptr noundef nonnull %16, ptr noundef nonnull %15) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #17
  br label %110

110:                                              ; preds = %108, %104
  %111 = getelementptr inbounds [4 x float], ptr %16, i64 3
  %112 = load float, ptr %10, align 16, !tbaa !34
  store float %112, ptr %111, align 16, !tbaa !34
  %113 = getelementptr inbounds float, ptr %10, i64 1
  %114 = load float, ptr %113, align 4, !tbaa !34
  %115 = getelementptr inbounds [4 x float], ptr %16, i64 3, i64 1
  store float %114, ptr %115, align 4, !tbaa !34
  %116 = getelementptr inbounds float, ptr %10, i64 2
  %117 = load float, ptr %116, align 8, !tbaa !34
  %118 = getelementptr inbounds [4 x float], ptr %16, i64 3, i64 2
  store float %117, ptr %118, align 8, !tbaa !34
  br label %119

119:                                              ; preds = %47, %85, %110
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #17
  %120 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef %3, ptr noundef nonnull %120, ptr noundef nonnull %16) #17
  br label %195

121:                                              ; preds = %21, %27
  %122 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  tail call void @copy_m4_m4(ptr noundef %3, ptr noundef nonnull %122) #17
  br label %195

123:                                              ; preds = %4
  %124 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %125 = load i16, ptr %124, align 8, !tbaa !69
  %126 = icmp eq i16 %125, 25
  br i1 %126, label %128, label %127

127:                                              ; preds = %123
  call void @unit_m4(ptr noundef nonnull %16) #17
  br label %171

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 18
  %130 = load ptr, ptr %129, align 8, !tbaa !65
  %131 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 8
  %132 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %130, ptr noundef nonnull %131) #17
  %133 = icmp eq ptr %132, null
  br i1 %133, label %138, label %134

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.bPoseChannel, ptr %132, i64 0, i32 12
  %136 = load ptr, ptr %135, align 8, !tbaa !377
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %134, %128
  %139 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %140 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef nonnull %139, ptr noundef nonnull %131)
  call void @unit_m4(ptr noundef nonnull %16) #17
  br label %171

141:                                              ; preds = %134
  %142 = getelementptr inbounds %struct.Bone, ptr %136, i64 0, i32 10
  %143 = load i32, ptr %142, align 8, !tbaa !411
  %144 = and i32 %143, 8388608
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.bPoseChannel, ptr %132, i64 0, i32 28
  call void @copy_m4_m4(ptr noundef nonnull %16, ptr noundef nonnull %147) #17
  br label %171

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.bPoseChannel, ptr %132, i64 0, i32 29
  call void @copy_m4_m4(ptr noundef nonnull %16, ptr noundef nonnull %149) #17
  %150 = getelementptr inbounds [4 x float], ptr %16, i64 1
  %151 = load float, ptr %150, align 16, !tbaa !34
  %152 = getelementptr inbounds [4 x float], ptr %16, i64 1, i64 1
  %153 = load float, ptr %152, align 4, !tbaa !34
  %154 = getelementptr inbounds [4 x float], ptr %16, i64 1, i64 2
  %155 = load float, ptr %154, align 8, !tbaa !34
  %156 = load ptr, ptr %135, align 8, !tbaa !377
  %157 = getelementptr inbounds %struct.Bone, ptr %156, i64 0, i32 18
  %158 = load float, ptr %157, align 4, !tbaa !412
  %159 = fmul float %151, %158
  %160 = fmul float %153, %158
  %161 = fmul float %155, %158
  %162 = getelementptr inbounds [4 x float], ptr %16, i64 3
  %163 = load float, ptr %162, align 16, !tbaa !34
  %164 = fadd float %163, %159
  store float %164, ptr %162, align 16, !tbaa !34
  %165 = getelementptr inbounds [4 x float], ptr %16, i64 3, i64 1
  %166 = load float, ptr %165, align 4, !tbaa !34
  %167 = fadd float %160, %166
  store float %167, ptr %165, align 4, !tbaa !34
  %168 = getelementptr inbounds [4 x float], ptr %16, i64 3, i64 2
  %169 = load float, ptr %168, align 8, !tbaa !34
  %170 = fadd float %161, %169
  store float %170, ptr %168, align 8, !tbaa !34
  br label %171

171:                                              ; preds = %127, %138, %146, %148
  %172 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef %3, ptr noundef nonnull %172, ptr noundef nonnull %16) #17
  br label %195

173:                                              ; preds = %4
  tail call void @unit_m4(ptr noundef %3) #17
  %174 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 5
  %175 = load i32, ptr %174, align 4, !tbaa !400
  call fastcc void @give_parvert(ptr noundef %2, i32 noundef %175, ptr noundef nonnull %17)
  %176 = getelementptr inbounds [4 x float], ptr %3, i64 3
  %177 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  call void @mul_v3_m4v3(ptr noundef nonnull %176, ptr noundef nonnull %177, ptr noundef nonnull %17) #17
  br label %195

178:                                              ; preds = %4
  %179 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %180 = load i16, ptr %179, align 8, !tbaa !69
  switch i16 %180, label %190 [
    i16 1, label %181
    i16 3, label %181
    i16 2, label %181
    i16 22, label %181
  ]

181:                                              ; preds = %178, %178, %178, %178
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #17
  %182 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 5
  %183 = load i32, ptr %182, align 4, !tbaa !400
  call fastcc void @give_parvert(ptr noundef %2, i32 noundef %183, ptr noundef nonnull %6)
  %184 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 6
  %185 = load i32, ptr %184, align 8, !tbaa !401
  call fastcc void @give_parvert(ptr noundef %2, i32 noundef %185, ptr noundef nonnull %7)
  %186 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 7
  %187 = load i32, ptr %186, align 4, !tbaa !402
  call fastcc void @give_parvert(ptr noundef %2, i32 noundef %187, ptr noundef nonnull %8)
  %188 = call float @tri_to_quat(ptr noundef nonnull %9, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #17
  call void @quat_to_mat3(ptr noundef nonnull %5, ptr noundef nonnull %9) #17
  call void @copy_m4_m3(ptr noundef nonnull %16, ptr noundef nonnull %5) #17
  %189 = getelementptr inbounds [4 x float], ptr %16, i64 3
  call void @mid_v3_v3v3v3(ptr noundef nonnull %189, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #17
  br label %191

190:                                              ; preds = %178
  call void @unit_m4(ptr noundef nonnull %16) #17
  br label %191

191:                                              ; preds = %181, %190
  %192 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef %3, ptr noundef nonnull %192, ptr noundef nonnull %16) #17
  br label %195

193:                                              ; preds = %4
  %194 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  tail call void @copy_m4_m4(ptr noundef %3, ptr noundef nonnull %194) #17
  br label %195

195:                                              ; preds = %119, %121, %4, %193, %191, %173, %171
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #17
  ret void
}

declare void @mat4_to_loc_rot_size(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BKE_boundbox_alloc_unit() local_unnamed_addr #4 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %2 = tail call ptr %1(i64 noundef 104, ptr noundef nonnull @.str.12) #17
  %3 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 3
  store float -1.000000e+00, ptr %3, align 4, !tbaa !34
  %4 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 2
  store float -1.000000e+00, ptr %4, align 4, !tbaa !34
  %5 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 1
  store float -1.000000e+00, ptr %5, align 4, !tbaa !34
  store float -1.000000e+00, ptr %2, align 4, !tbaa !34
  %6 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 7
  store float -1.000000e+00, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 6
  store float -1.000000e+00, ptr %7, align 4, !tbaa !34
  %8 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 5
  store float -1.000000e+00, ptr %8, align 4, !tbaa !34
  %9 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 4
  store float -1.000000e+00, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 5, i64 1
  store float -1.000000e+00, ptr %10, align 4, !tbaa !34
  %11 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 4, i64 1
  store float -1.000000e+00, ptr %11, align 4, !tbaa !34
  %12 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 1, i64 1
  store float -1.000000e+00, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 1
  store float -1.000000e+00, ptr %13, align 4, !tbaa !34
  %14 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 7, i64 1
  store float -1.000000e+00, ptr %14, align 4, !tbaa !34
  %15 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 6, i64 1
  store float -1.000000e+00, ptr %15, align 4, !tbaa !34
  %16 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 3, i64 1
  store float -1.000000e+00, ptr %16, align 4, !tbaa !34
  %17 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 2, i64 1
  store float -1.000000e+00, ptr %17, align 4, !tbaa !34
  %18 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 7, i64 2
  store float -1.000000e+00, ptr %18, align 4, !tbaa !34
  %19 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 4, i64 2
  store float -1.000000e+00, ptr %19, align 4, !tbaa !34
  %20 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 3, i64 2
  store float -1.000000e+00, ptr %20, align 4, !tbaa !34
  %21 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  store float -1.000000e+00, ptr %21, align 4, !tbaa !34
  %22 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 6, i64 2
  store float -1.000000e+00, ptr %22, align 4, !tbaa !34
  %23 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 5, i64 2
  store float -1.000000e+00, ptr %23, align 4, !tbaa !34
  %24 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 2, i64 2
  store float -1.000000e+00, ptr %24, align 4, !tbaa !34
  %25 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 1, i64 2
  store float -1.000000e+00, ptr %25, align 4, !tbaa !34
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_boundbox_init_from_minmax(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #10 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 3
  store float %4, ptr %5, align 4, !tbaa !34
  %6 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 2
  store float %4, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 1
  store float %4, ptr %7, align 4, !tbaa !34
  store float %4, ptr %0, align 4, !tbaa !34
  %8 = load float, ptr %2, align 4, !tbaa !34
  %9 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 7
  store float %8, ptr %9, align 4, !tbaa !34
  %10 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 6
  store float %8, ptr %10, align 4, !tbaa !34
  %11 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 5
  store float %8, ptr %11, align 4, !tbaa !34
  %12 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 4
  store float %8, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 5, i64 1
  store float %14, ptr %15, align 4, !tbaa !34
  %16 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 4, i64 1
  store float %14, ptr %16, align 4, !tbaa !34
  %17 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 1, i64 1
  store float %14, ptr %17, align 4, !tbaa !34
  %18 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float %14, ptr %18, align 4, !tbaa !34
  %19 = getelementptr inbounds float, ptr %2, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 7, i64 1
  store float %20, ptr %21, align 4, !tbaa !34
  %22 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 6, i64 1
  store float %20, ptr %22, align 4, !tbaa !34
  %23 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 3, i64 1
  store float %20, ptr %23, align 4, !tbaa !34
  %24 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 2, i64 1
  store float %20, ptr %24, align 4, !tbaa !34
  %25 = getelementptr inbounds float, ptr %1, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 7, i64 2
  store float %26, ptr %27, align 4, !tbaa !34
  %28 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 4, i64 2
  store float %26, ptr %28, align 4, !tbaa !34
  %29 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 3, i64 2
  store float %26, ptr %29, align 4, !tbaa !34
  %30 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float %26, ptr %30, align 4, !tbaa !34
  %31 = getelementptr inbounds float, ptr %2, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !34
  %33 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 6, i64 2
  store float %32, ptr %33, align 4, !tbaa !34
  %34 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 5, i64 2
  store float %32, ptr %34, align 4, !tbaa !34
  %35 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 2, i64 2
  store float %32, ptr %35, align 4, !tbaa !34
  %36 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 1, i64 2
  store float %32, ptr %36, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_boundbox_calc_center_aabb(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #10 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 4
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = fadd float %3, %5
  %7 = fmul float %6, 5.000000e-01
  store float %7, ptr %1, align 4, !tbaa !34
  %8 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = fadd float %9, %11
  %13 = fmul float %12, 5.000000e-01
  %14 = getelementptr inbounds float, ptr %1, i64 1
  store float %13, ptr %14, align 4, !tbaa !34
  %15 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 1, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = fadd float %16, %18
  %20 = fmul float %19, 5.000000e-01
  %21 = getelementptr inbounds float, ptr %1, i64 2
  store float %20, ptr %21, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_boundbox_calc_size_aabb(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #10 {
  %3 = load float, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 4
  %5 = load float, ptr %4, align 4, !tbaa !34
  %6 = fsub float %3, %5
  %7 = tail call float @llvm.fabs.f32(float %6)
  %8 = fmul float %7, 5.000000e-01
  store float %8, ptr %1, align 4, !tbaa !34
  %9 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 2, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !34
  %13 = fsub float %10, %12
  %14 = tail call float @llvm.fabs.f32(float %13)
  %15 = fmul float %14, 5.000000e-01
  %16 = getelementptr inbounds float, ptr %1, i64 1
  store float %15, ptr %16, align 4, !tbaa !34
  %17 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 1, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fsub float %18, %20
  %22 = tail call float @llvm.fabs.f32(float %21)
  %23 = fmul float %22, 5.000000e-01
  %24 = getelementptr inbounds float, ptr %1, i64 2
  store float %23, ptr %24, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #13

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_object_boundbox_get(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !69
  switch i16 %3, label %11 [
    i16 1, label %4
    i16 2, label %6
    i16 3, label %6
    i16 4, label %6
    i16 5, label %8
  ]

4:                                                ; preds = %1
  %5 = tail call ptr @BKE_mesh_boundbox_get(ptr noundef %0) #17
  br label %11

6:                                                ; preds = %1, %1, %1
  %7 = tail call ptr @BKE_curve_boundbox_get(ptr noundef %0) #17
  br label %11

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 15
  %10 = load ptr, ptr %9, align 8, !tbaa !120
  br label %11

11:                                               ; preds = %1, %6, %8, %4
  %12 = phi ptr [ %5, %4 ], [ %7, %6 ], [ %10, %8 ], [ null, %1 ]
  ret ptr %12
}

declare ptr @BKE_mesh_boundbox_get(ptr noundef) local_unnamed_addr #5

declare ptr @BKE_curve_boundbox_get(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_boundbox_flag(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !69
  switch i16 %5, label %13 [
    i16 1, label %6
    i16 2, label %8
    i16 3, label %8
    i16 4, label %8
    i16 5, label %10
  ]

6:                                                ; preds = %3
  %7 = tail call ptr @BKE_mesh_boundbox_get(ptr noundef %0) #17
  br label %13

8:                                                ; preds = %3, %3, %3
  %9 = tail call ptr @BKE_curve_boundbox_get(ptr noundef %0) #17
  br label %13

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 15
  %12 = load ptr, ptr %11, align 8, !tbaa !120
  br label %13

13:                                               ; preds = %3, %6, %8, %10
  %14 = phi ptr [ %7, %6 ], [ %9, %8 ], [ %12, %10 ], [ null, %3 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %13
  %17 = icmp eq i8 %2, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.BoundBox, ptr %14, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !118
  %21 = or i32 %20, %1
  store i32 %21, ptr %19, align 4, !tbaa !118
  br label %27

22:                                               ; preds = %16
  %23 = xor i32 %1, -1
  %24 = getelementptr inbounds %struct.BoundBox, ptr %14, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !118
  %26 = and i32 %25, %23
  store i32 %26, ptr %24, align 4, !tbaa !118
  br label %27

27:                                               ; preds = %18, %22, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_dimensions_get(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 {
  %3 = alloca [3 x float], align 4
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !69
  switch i16 %5, label %13 [
    i16 1, label %6
    i16 2, label %8
    i16 3, label %8
    i16 4, label %8
    i16 5, label %10
  ]

6:                                                ; preds = %2
  %7 = tail call ptr @BKE_mesh_boundbox_get(ptr noundef %0) #17
  br label %13

8:                                                ; preds = %2, %2, %2
  %9 = tail call ptr @BKE_curve_boundbox_get(ptr noundef %0) #17
  br label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 15
  %12 = load ptr, ptr %11, align 8, !tbaa !120
  br label %13

13:                                               ; preds = %2, %6, %8, %10
  %14 = phi ptr [ %7, %6 ], [ %9, %8 ], [ %12, %10 ], [ null, %2 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %45, label %16

16:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  call void @mat4_to_size(ptr noundef nonnull %3, ptr noundef nonnull %17) #17
  %18 = load float, ptr %3, align 4, !tbaa !34
  %19 = call float @llvm.fabs.f32(float %18)
  %20 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 4
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = load float, ptr %14, align 4, !tbaa !34
  %23 = fsub float %21, %22
  %24 = fmul float %19, %23
  store float %24, ptr %1, align 4, !tbaa !34
  %25 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = call float @llvm.fabs.f32(float %26)
  %28 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 2, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = fsub float %29, %31
  %33 = fmul float %27, %32
  %34 = getelementptr inbounds float, ptr %1, i64 1
  store float %33, ptr %34, align 4, !tbaa !34
  %35 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = call float @llvm.fabs.f32(float %36)
  %38 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 1, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !34
  %40 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !34
  %42 = fsub float %39, %41
  %43 = fmul float %37, %42
  %44 = getelementptr inbounds float, ptr %1, i64 2
  store float %43, ptr %44, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  br label %48

45:                                               ; preds = %13
  store float 0.000000e+00, ptr %1, align 4, !tbaa !34
  %46 = getelementptr inbounds float, ptr %1, i64 1
  store float 0.000000e+00, ptr %46, align 4, !tbaa !34
  %47 = getelementptr inbounds float, ptr %1, i64 2
  store float 0.000000e+00, ptr %47, align 4, !tbaa !34
  br label %48

48:                                               ; preds = %45, %16
  ret void
}

declare void @mat4_to_size(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_dimensions_set(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = alloca [3 x float], align 4
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !69
  switch i16 %5, label %13 [
    i16 1, label %6
    i16 2, label %8
    i16 3, label %8
    i16 4, label %8
    i16 5, label %10
  ]

6:                                                ; preds = %2
  %7 = tail call ptr @BKE_mesh_boundbox_get(ptr noundef %0) #17
  br label %13

8:                                                ; preds = %2, %2, %2
  %9 = tail call ptr @BKE_curve_boundbox_get(ptr noundef %0) #17
  br label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 15
  %12 = load ptr, ptr %11, align 8, !tbaa !120
  br label %13

13:                                               ; preds = %2, %6, %8, %10
  %14 = phi ptr [ %7, %6 ], [ %9, %8 ], [ %12, %10 ], [ null, %2 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %52, label %16

16:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  call void @mat4_to_size(ptr noundef nonnull %3, ptr noundef nonnull %17) #17
  %18 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 4
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = load float, ptr %14, align 4, !tbaa !34
  %21 = fsub float %19, %20
  %22 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 2, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !34
  %24 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = fsub float %23, %25
  %27 = getelementptr inbounds [8 x [3 x float]], ptr %14, i64 0, i64 1, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !34
  %31 = fsub float %28, %30
  %32 = fcmp ogt float %21, 0.000000e+00
  br i1 %32, label %33, label %37

33:                                               ; preds = %16
  %34 = load float, ptr %1, align 4, !tbaa !34
  %35 = fdiv float %34, %21
  %36 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36
  store float %35, ptr %36, align 4, !tbaa !34
  br label %37

37:                                               ; preds = %33, %16
  %38 = fcmp ogt float %26, 0.000000e+00
  br i1 %38, label %39, label %44

39:                                               ; preds = %37
  %40 = getelementptr inbounds float, ptr %1, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !34
  %42 = fdiv float %41, %26
  %43 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 1
  store float %42, ptr %43, align 4, !tbaa !34
  br label %44

44:                                               ; preds = %39, %37
  %45 = fcmp ogt float %31, 0.000000e+00
  br i1 %45, label %46, label %51

46:                                               ; preds = %44
  %47 = getelementptr inbounds float, ptr %1, i64 2
  %48 = load float, ptr %47, align 4, !tbaa !34
  %49 = fdiv float %48, %31
  %50 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 2
  store float %49, ptr %50, align 4, !tbaa !34
  br label %51

51:                                               ; preds = %46, %44
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  br label %52

52:                                               ; preds = %51, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_minmax(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #4 {
  %5 = alloca %struct.BoundBox, align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !69
  switch i16 %10, label %118 [
    i16 2, label %11
    i16 4, label %11
    i16 3, label %11
    i16 22, label %19
    i16 25, label %61
    i16 1, label %99
    i16 5, label %110
  ]

11:                                               ; preds = %4, %4, %4
  %12 = tail call ptr @BKE_curve_boundbox_get(ptr noundef %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(104) %5, ptr noundef nonnull align 4 dereferenceable(104) %12, i64 104, i1 false), !tbaa.struct !413
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  br label %14

14:                                               ; preds = %11, %14
  %15 = phi i64 [ 0, %11 ], [ %17, %14 ]
  %16 = getelementptr inbounds [8 x [3 x float]], ptr %5, i64 0, i64 %15
  call void @mul_m4_v3(ptr noundef nonnull %13, ptr noundef nonnull %16) #17
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %16) #17
  %17 = add nuw nsw i64 %15, 1
  %18 = icmp eq i64 %17, 8
  br i1 %18, label %118, label %14, !llvm.loop !414

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !71
  %22 = getelementptr inbounds %struct.Lattice, ptr %21, i64 0, i32 4
  %23 = load i16, ptr %22, align 4, !tbaa !415
  %24 = icmp sgt i16 %23, 0
  br i1 %24, label %25, label %118

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.Lattice, ptr %21, i64 0, i32 21
  %27 = load ptr, ptr %26, align 8, !tbaa !416
  %28 = getelementptr inbounds %struct.Lattice, ptr %21, i64 0, i32 3
  %29 = getelementptr inbounds %struct.Lattice, ptr %21, i64 0, i32 2
  %30 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  br label %31

31:                                               ; preds = %25, %55
  %32 = phi i32 [ 0, %25 ], [ %57, %55 ]
  %33 = phi ptr [ %27, %25 ], [ %56, %55 ]
  %34 = load i16, ptr %28, align 2, !tbaa !417
  %35 = icmp sgt i16 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %31, %49
  %37 = phi i32 [ %51, %49 ], [ 0, %31 ]
  %38 = phi ptr [ %50, %49 ], [ %33, %31 ]
  %39 = load i16, ptr %29, align 8, !tbaa !418
  %40 = icmp sgt i16 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36, %41
  %42 = phi i32 [ %44, %41 ], [ 0, %36 ]
  %43 = phi ptr [ %45, %41 ], [ %38, %36 ]
  call void @mul_v3_m4v3(ptr noundef nonnull %6, ptr noundef nonnull %30, ptr noundef %43) #17
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6) #17
  %44 = add nuw nsw i32 %42, 1
  %45 = getelementptr inbounds %struct.BPoint, ptr %43, i64 1
  %46 = load i16, ptr %29, align 8, !tbaa !418
  %47 = sext i16 %46 to i32
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %41, label %49, !llvm.loop !419

49:                                               ; preds = %41, %36
  %50 = phi ptr [ %38, %36 ], [ %45, %41 ]
  %51 = add nuw nsw i32 %37, 1
  %52 = load i16, ptr %28, align 2, !tbaa !417
  %53 = sext i16 %52 to i32
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %36, label %55, !llvm.loop !420

55:                                               ; preds = %49, %31
  %56 = phi ptr [ %33, %31 ], [ %50, %49 ]
  %57 = add nuw nsw i32 %32, 1
  %58 = load i16, ptr %22, align 4, !tbaa !415
  %59 = sext i16 %58 to i32
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %31, label %118, !llvm.loop !421

61:                                               ; preds = %4
  %62 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %63 = load ptr, ptr %62, align 8, !tbaa !65
  %64 = icmp eq ptr %63, null
  br i1 %64, label %118, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %63, align 8, !tbaa !47
  %67 = icmp eq ptr %66, null
  br i1 %67, label %118, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %70 = load ptr, ptr %69, align 8, !tbaa !71
  %71 = icmp eq i8 %3, 0
  %72 = getelementptr inbounds %struct.bArmature, ptr %70, i64 0, i32 15
  %73 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  br label %74

74:                                               ; preds = %68, %95
  %75 = phi ptr [ %66, %68 ], [ %97, %95 ]
  %76 = phi i8 [ 0, %68 ], [ %96, %95 ]
  %77 = getelementptr inbounds %struct.bPoseChannel, ptr %75, i64 0, i32 12
  %78 = load ptr, ptr %77, align 8, !tbaa !377
  %79 = icmp eq ptr %78, null
  br i1 %79, label %95, label %80

80:                                               ; preds = %74
  br i1 %71, label %81, label %92

81:                                               ; preds = %80
  %82 = getelementptr inbounds %struct.Bone, ptr %78, i64 0, i32 25
  %83 = load i32, ptr %82, align 8, !tbaa !378
  %84 = load i32, ptr %72, align 8, !tbaa !422
  %85 = and i32 %84, %83
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.Bone, ptr %78, i64 0, i32 10
  %89 = load i32, ptr %88, align 8, !tbaa !411
  %90 = and i32 %89, 64
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87, %80
  %93 = getelementptr inbounds %struct.bPoseChannel, ptr %75, i64 0, i32 31
  call void @mul_v3_m4v3(ptr noundef nonnull %6, ptr noundef nonnull %73, ptr noundef nonnull %93) #17
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6) #17
  %94 = getelementptr inbounds %struct.bPoseChannel, ptr %75, i64 0, i32 32
  call void @mul_v3_m4v3(ptr noundef nonnull %6, ptr noundef nonnull %73, ptr noundef nonnull %94) #17
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6) #17
  br label %95

95:                                               ; preds = %81, %74, %87, %92
  %96 = phi i8 [ %76, %87 ], [ 1, %92 ], [ %76, %74 ], [ %76, %81 ]
  %97 = load ptr, ptr %75, align 8, !tbaa !47
  %98 = icmp eq ptr %97, null
  br i1 %98, label %118, label %74, !llvm.loop !423

99:                                               ; preds = %4
  %100 = tail call ptr @BKE_mesh_from_object(ptr noundef %0) #17
  %101 = icmp eq ptr %100, null
  br i1 %101, label %118, label %102

102:                                              ; preds = %99
  %103 = tail call ptr @BKE_mesh_boundbox_get(ptr noundef %0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(104) %5, ptr noundef nonnull align 4 dereferenceable(104) %103, i64 104, i1 false), !tbaa.struct !413
  %104 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  br label %105

105:                                              ; preds = %102, %105
  %106 = phi i64 [ 0, %102 ], [ %108, %105 ]
  %107 = getelementptr inbounds [8 x [3 x float]], ptr %5, i64 0, i64 %106
  call void @mul_m4_v3(ptr noundef nonnull %104, ptr noundef nonnull %107) #17
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %107) #17
  %108 = add nuw nsw i64 %106, 1
  %109 = icmp eq i64 %108, 8
  br i1 %109, label %118, label %105, !llvm.loop !424

110:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #17
  %111 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %112 = load ptr, ptr %111, align 8, !tbaa !71
  %113 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  %114 = call zeroext i8 @BKE_mball_minmax_ex(ptr noundef %112, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %113, i16 noundef signext 0) #17
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %110
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %7) #17
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %8) #17
  br label %117

117:                                              ; preds = %116, %110
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  br label %118

118:                                              ; preds = %105, %95, %55, %14, %65, %19, %99, %61, %4, %117
  %119 = phi i8 [ 0, %4 ], [ %114, %117 ], [ 0, %61 ], [ 0, %99 ], [ 1, %19 ], [ 0, %65 ], [ 1, %14 ], [ 1, %55 ], [ %96, %95 ], [ 1, %105 ]
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %157

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36
  %123 = load float, ptr %122, align 4, !tbaa !34
  %124 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 1
  %125 = load float, ptr %124, align 4, !tbaa !34
  %126 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 2
  %127 = load float, ptr %126, align 4, !tbaa !34
  %128 = load i16, ptr %9, align 8, !tbaa !69
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %121
  %131 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 89
  %132 = load float, ptr %131, align 8, !tbaa !310
  %133 = fmul float %123, %132
  %134 = fmul float %125, %132
  %135 = fmul float %127, %132
  br label %136

136:                                              ; preds = %130, %121
  %137 = phi float [ %135, %130 ], [ %127, %121 ]
  %138 = phi float [ %134, %130 ], [ %125, %121 ]
  %139 = phi float [ %133, %130 ], [ %123, %121 ]
  %140 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47, i64 3
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %140) #17
  %141 = load float, ptr %140, align 4, !tbaa !34
  store float %141, ptr %6, align 4, !tbaa !34
  %142 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47, i64 3, i64 1
  %143 = load float, ptr %142, align 4, !tbaa !34
  %144 = getelementptr inbounds float, ptr %6, i64 1
  store float %143, ptr %144, align 4, !tbaa !34
  %145 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47, i64 3, i64 2
  %146 = load float, ptr %145, align 4, !tbaa !34
  %147 = getelementptr inbounds float, ptr %6, i64 2
  store float %146, ptr %147, align 4, !tbaa !34
  %148 = fadd float %139, %141
  store float %148, ptr %6, align 4, !tbaa !34
  %149 = fadd float %138, %143
  store float %149, ptr %144, align 4, !tbaa !34
  %150 = fadd float %137, %146
  store float %150, ptr %147, align 4, !tbaa !34
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6) #17
  %151 = load float, ptr %140, align 4, !tbaa !34
  store float %151, ptr %6, align 4, !tbaa !34
  %152 = load float, ptr %142, align 4, !tbaa !34
  store float %152, ptr %144, align 4, !tbaa !34
  %153 = load float, ptr %145, align 4, !tbaa !34
  store float %153, ptr %147, align 4, !tbaa !34
  %154 = fsub float %151, %139
  store float %154, ptr %6, align 4, !tbaa !34
  %155 = fsub float %152, %138
  store float %155, ptr %144, align 4, !tbaa !34
  %156 = fsub float %153, %137
  store float %156, ptr %147, align 4, !tbaa !34
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6) #17
  br label %157

157:                                              ; preds = %136, %118
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %5) #17
  ret void
}

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @BKE_mesh_from_object(ptr noundef) local_unnamed_addr #5

declare zeroext i8 @BKE_mball_minmax_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_empty_draw_type_set(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = trunc i32 %1 to i8
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 88
  store i8 %3, ptr %4, align 1, !tbaa !309
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !69
  %7 = icmp eq i16 %6, 0
  %8 = and i32 %1, 255
  %9 = icmp eq i32 %8, 8
  %10 = and i1 %9, %7
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 131
  %12 = load ptr, ptr %11, align 8, !tbaa !136
  %13 = icmp eq ptr %12, null
  br i1 %10, label %14, label %22

14:                                               ; preds = %2
  br i1 %13, label %15, label %25

15:                                               ; preds = %14
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %17 = tail call ptr %16(i64 noundef 40, ptr noundef nonnull @.str.13) #17
  store ptr %17, ptr %11, align 8, !tbaa !136
  %18 = getelementptr inbounds %struct.ImageUser, ptr %17, i64 0, i32 7
  store i8 1, ptr %18, align 2, !tbaa !425
  %19 = getelementptr inbounds %struct.ImageUser, ptr %17, i64 0, i32 2
  store i32 100, ptr %19, align 4, !tbaa !426
  %20 = getelementptr inbounds %struct.ImageUser, ptr %17, i64 0, i32 4
  store i32 1, ptr %20, align 4, !tbaa !427
  %21 = getelementptr inbounds %struct.ImageUser, ptr %17, i64 0, i32 5
  store i8 2, ptr %21, align 8, !tbaa !428
  br label %25

22:                                               ; preds = %2
  br i1 %13, label %25, label %23

23:                                               ; preds = %22
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %24(ptr noundef nonnull %12) #17
  store ptr null, ptr %11, align 8, !tbaa !136
  br label %25

25:                                               ; preds = %22, %23, %14, %15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BKE_object_minmax_dupli(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #4 {
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 55
  %8 = load i16, ptr %7, align 8, !tbaa !399
  %9 = and i16 %8, 2840
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %55, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr @G, align 8, !tbaa !147
  %13 = getelementptr inbounds %struct.Main, ptr %12, i64 0, i32 46
  %14 = load ptr, ptr %13, align 8, !tbaa !429
  %15 = tail call ptr @object_duplilist(ptr noundef %14, ptr noundef %0, ptr noundef %1) #17
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = icmp eq ptr %16, null
  br i1 %17, label %53, label %18

18:                                               ; preds = %11
  %19 = icmp eq i8 %4, 0
  br label %20

20:                                               ; preds = %18, %49
  %21 = phi ptr [ %16, %18 ], [ %51, %49 ]
  %22 = phi i8 [ 0, %18 ], [ %50, %49 ]
  br i1 %19, label %23, label %27

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.DupliObject, ptr %21, i64 0, i32 7
  %25 = load i8, ptr %24, align 2, !tbaa !431
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %23, %20
  %28 = getelementptr inbounds %struct.DupliObject, ptr %21, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !433
  %30 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 3
  %31 = load i16, ptr %30, align 8, !tbaa !69
  switch i16 %31, label %39 [
    i16 1, label %32
    i16 2, label %34
    i16 3, label %34
    i16 4, label %34
    i16 5, label %36
  ]

32:                                               ; preds = %27
  %33 = call ptr @BKE_mesh_boundbox_get(ptr noundef %29) #17
  br label %39

34:                                               ; preds = %27, %27, %27
  %35 = call ptr @BKE_curve_boundbox_get(ptr noundef %29) #17
  br label %39

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 15
  %38 = load ptr, ptr %37, align 8, !tbaa !120
  br label %39

39:                                               ; preds = %27, %32, %34, %36
  %40 = phi ptr [ %33, %32 ], [ %35, %34 ], [ %38, %36 ], [ null, %27 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.DupliObject, ptr %21, i64 0, i32 3
  br label %44

44:                                               ; preds = %42, %44
  %45 = phi i64 [ 0, %42 ], [ %47, %44 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  %46 = getelementptr inbounds [8 x [3 x float]], ptr %40, i64 0, i64 %45
  call void @mul_v3_m4v3(ptr noundef nonnull %6, ptr noundef nonnull %43, ptr noundef nonnull %46) #17
  call void @minmax_v3v3_v3(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  %47 = add nuw nsw i64 %45, 1
  %48 = icmp eq i64 %47, 8
  br i1 %48, label %49, label %44, !llvm.loop !434

49:                                               ; preds = %44, %39, %23
  %50 = phi i8 [ %22, %23 ], [ %22, %39 ], [ 1, %44 ]
  %51 = load ptr, ptr %21, align 8, !tbaa !47
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %20, !llvm.loop !435

53:                                               ; preds = %49, %11
  %54 = phi i8 [ 0, %11 ], [ %50, %49 ]
  call void @free_object_duplilist(ptr noundef nonnull %15) #17
  br label %55

55:                                               ; preds = %5, %53
  %56 = phi i8 [ %54, %53 ], [ 0, %5 ]
  ret i8 %56
}

declare ptr @object_duplilist(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @free_object_duplilist(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_foreach_display_point(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 120
  %7 = load ptr, ptr %6, align 8, !tbaa !121
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 31
  %11 = load ptr, ptr %10, align 8, !tbaa !436
  %12 = tail call ptr %11(ptr noundef nonnull %7) #17
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 23
  %14 = load ptr, ptr %13, align 8, !tbaa !437
  %15 = tail call i32 %14(ptr noundef nonnull %7) #17
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %9, %17
  %18 = phi ptr [ %21, %17 ], [ %12, %9 ]
  %19 = phi i32 [ %20, %17 ], [ 0, %9 ]
  call void @mul_v3_m4v3(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %18) #17
  call void %2(ptr noundef nonnull %5, ptr noundef %3) #17
  %20 = add nuw nsw i32 %19, 1
  %21 = getelementptr inbounds %struct.MVert, ptr %18, i64 1
  %22 = icmp eq i32 %20, %15
  br i1 %22, label %47, label %17, !llvm.loop !438

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  %25 = load ptr, ptr %24, align 8, !tbaa !58
  %26 = icmp eq ptr %25, null
  br i1 %26, label %47, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %25, align 8, !tbaa !439
  %29 = icmp eq ptr %28, null
  br i1 %29, label %47, label %30

30:                                               ; preds = %27, %44
  %31 = phi ptr [ %45, %44 ], [ %28, %27 ]
  %32 = getelementptr inbounds %struct.DispList, ptr %31, i64 0, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !440
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.DispList, ptr %31, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !442
  br label %38

38:                                               ; preds = %35, %38
  %39 = phi i32 [ %41, %38 ], [ 0, %35 ]
  %40 = phi ptr [ %42, %38 ], [ %37, %35 ]
  call void @mul_v3_m4v3(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %40) #17
  call void %2(ptr noundef nonnull %5, ptr noundef %3) #17
  %41 = add nuw nsw i32 %39, 1
  %42 = getelementptr inbounds float, ptr %40, i64 3
  %43 = icmp eq i32 %41, %33
  br i1 %43, label %44, label %38, !llvm.loop !443

44:                                               ; preds = %38, %30
  %45 = load ptr, ptr %31, align 8, !tbaa !444
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %30, !llvm.loop !445

47:                                               ; preds = %17, %44, %9, %23, %27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_scene_foreach_display_point(ptr noundef %0, ptr noundef readonly %1, i16 noundef signext %2, ptr nocapture noundef readonly %3, ptr noundef %4) local_unnamed_addr #4 {
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = icmp eq ptr %7, null
  br i1 %8, label %64, label %9

9:                                                ; preds = %5
  %10 = icmp eq ptr %1, null
  %11 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 22
  %12 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 12
  %13 = select i1 %10, ptr %12, ptr %11
  %14 = sext i16 %2 to i32
  br label %15

15:                                               ; preds = %9, %61
  %16 = phi ptr [ %7, %9 ], [ %62, %61 ]
  %17 = getelementptr inbounds %struct.Base, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !51
  %19 = load i32, ptr %13, align 8, !tbaa !408
  %20 = and i32 %19, %18
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %61, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.Base, ptr %16, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = getelementptr inbounds %struct.Object, ptr %24, i64 0, i32 102
  %26 = load i8, ptr %25, align 8, !tbaa !446
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %61

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.Base, ptr %16, i64 0, i32 4
  %31 = load i32, ptr %30, align 8, !tbaa !447
  %32 = and i32 %31, %14
  %33 = icmp eq i32 %32, %14
  br i1 %33, label %34, label %61

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.Object, ptr %24, i64 0, i32 55
  %36 = load i16, ptr %35, align 8, !tbaa !399
  %37 = and i16 %36, 2840
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.Object, ptr %24, i64 0, i32 47
  tail call void @BKE_object_foreach_display_point(ptr noundef %24, ptr noundef nonnull %40, ptr noundef %3, ptr noundef %4)
  br label %61

41:                                               ; preds = %34
  %42 = load ptr, ptr @G, align 8, !tbaa !147
  %43 = getelementptr inbounds %struct.Main, ptr %42, i64 0, i32 46
  %44 = load ptr, ptr %43, align 8, !tbaa !429
  %45 = tail call ptr @object_duplilist(ptr noundef %44, ptr noundef %0, ptr noundef %24) #17
  %46 = load ptr, ptr %45, align 8, !tbaa !47
  %47 = icmp eq ptr %46, null
  br i1 %47, label %60, label %48

48:                                               ; preds = %41, %57
  %49 = phi ptr [ %58, %57 ], [ %46, %41 ]
  %50 = getelementptr inbounds %struct.DupliObject, ptr %49, i64 0, i32 7
  %51 = load i8, ptr %50, align 2, !tbaa !431
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.DupliObject, ptr %49, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !433
  %56 = getelementptr inbounds %struct.DupliObject, ptr %49, i64 0, i32 3
  tail call void @BKE_object_foreach_display_point(ptr noundef %55, ptr noundef nonnull %56, ptr noundef %3, ptr noundef %4)
  br label %57

57:                                               ; preds = %48, %53
  %58 = load ptr, ptr %49, align 8, !tbaa !47
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %48, !llvm.loop !448

60:                                               ; preds = %57, %41
  tail call void @free_object_duplilist(ptr noundef nonnull %45) #17
  br label %61

61:                                               ; preds = %15, %22, %29, %60, %39
  %62 = load ptr, ptr %16, align 8, !tbaa !47
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %15, !llvm.loop !449

64:                                               ; preds = %61, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BKE_object_tfm_backup(ptr noundef %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %3 = tail call ptr %2(i64 noundef 404, ptr noundef nonnull @.str.14) #17
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33
  %5 = load float, ptr %4, align 4, !tbaa !34
  store float %5, ptr %3, align 4, !tbaa !34
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %3, i64 1
  store float %7, ptr %8, align 4, !tbaa !34
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = getelementptr inbounds float, ptr %3, i64 2
  store float %10, ptr %11, align 4, !tbaa !34
  %12 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 1
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 34
  %14 = load float, ptr %13, align 4, !tbaa !34
  store float %14, ptr %12, align 4, !tbaa !34
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 34, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 1, i64 1
  store float %16, ptr %17, align 4, !tbaa !34
  %18 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 34, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 1, i64 2
  store float %19, ptr %20, align 4, !tbaa !34
  %21 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 2
  %22 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 35
  %23 = load float, ptr %22, align 4, !tbaa !34
  store float %23, ptr %21, align 4, !tbaa !34
  %24 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 35, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !34
  %26 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 2, i64 1
  store float %25, ptr %26, align 4, !tbaa !34
  %27 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 35, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !34
  %29 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 2, i64 2
  store float %28, ptr %29, align 4, !tbaa !34
  %30 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 3
  %31 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36
  %32 = load float, ptr %31, align 4, !tbaa !34
  store float %32, ptr %30, align 4, !tbaa !34
  %33 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !34
  %35 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 3, i64 1
  store float %34, ptr %35, align 4, !tbaa !34
  %36 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !34
  %38 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 3, i64 2
  store float %37, ptr %38, align 4, !tbaa !34
  %39 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 4
  %40 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38
  %41 = load float, ptr %40, align 4, !tbaa !34
  store float %41, ptr %39, align 4, !tbaa !34
  %42 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !34
  %44 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 4, i64 1
  store float %43, ptr %44, align 4, !tbaa !34
  %45 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !34
  %47 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 4, i64 2
  store float %46, ptr %47, align 4, !tbaa !34
  %48 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 5
  %49 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39
  %50 = load float, ptr %49, align 4, !tbaa !34
  store float %50, ptr %48, align 4, !tbaa !34
  %51 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !34
  %53 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 5, i64 1
  store float %52, ptr %53, align 4, !tbaa !34
  %54 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !34
  %56 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 5, i64 2
  store float %55, ptr %56, align 4, !tbaa !34
  %57 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 6
  %58 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 40
  %59 = load float, ptr %58, align 4, !tbaa !34
  store float %59, ptr %57, align 4, !tbaa !34
  %60 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 40, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !34
  %62 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 6, i64 1
  store float %61, ptr %62, align 4, !tbaa !34
  %63 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 40, i64 2
  %64 = load float, ptr %63, align 4, !tbaa !34
  %65 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 6, i64 2
  store float %64, ptr %65, align 4, !tbaa !34
  %66 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 7
  %67 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 41
  tail call void @copy_qt_qt(ptr noundef nonnull %66, ptr noundef nonnull %67) #17
  %68 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 8
  %69 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 42
  tail call void @copy_qt_qt(ptr noundef nonnull %68, ptr noundef nonnull %69) #17
  %70 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 9
  %71 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43
  %72 = load float, ptr %71, align 4, !tbaa !34
  store float %72, ptr %70, align 4, !tbaa !34
  %73 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !34
  %75 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 9, i64 1
  store float %74, ptr %75, align 4, !tbaa !34
  %76 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43, i64 2
  %77 = load float, ptr %76, align 4, !tbaa !34
  %78 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 9, i64 2
  store float %77, ptr %78, align 4, !tbaa !34
  %79 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 10
  %80 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 44
  %81 = load float, ptr %80, align 4, !tbaa !34
  store float %81, ptr %79, align 4, !tbaa !34
  %82 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 44, i64 1
  %83 = load float, ptr %82, align 4, !tbaa !34
  %84 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 10, i64 1
  store float %83, ptr %84, align 4, !tbaa !34
  %85 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 44, i64 2
  %86 = load float, ptr %85, align 4, !tbaa !34
  %87 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 10, i64 2
  store float %86, ptr %87, align 4, !tbaa !34
  %88 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 45
  %89 = load float, ptr %88, align 8, !tbaa !342
  %90 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 11
  store float %89, ptr %90, align 4, !tbaa !450
  %91 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 46
  %92 = load float, ptr %91, align 4, !tbaa !389
  %93 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 12
  store float %92, ptr %93, align 4, !tbaa !452
  %94 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 13
  %95 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  tail call void @copy_m4_m4(ptr noundef nonnull %94, ptr noundef nonnull %95) #17
  %96 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 14
  %97 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 48
  tail call void @copy_m4_m4(ptr noundef nonnull %96, ptr noundef nonnull %97) #17
  %98 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 15
  %99 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 49
  tail call void @copy_m4_m4(ptr noundef nonnull %98, ptr noundef nonnull %99) #17
  %100 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 16
  %101 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 50
  tail call void @copy_m4_m4(ptr noundef nonnull %100, ptr noundef nonnull %101) #17
  ret ptr %3
}

declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_tfm_restore(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33
  %4 = load float, ptr %1, align 4, !tbaa !34
  store float %4, ptr %3, align 4, !tbaa !34
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33, i64 1
  store float %6, ptr %7, align 4, !tbaa !34
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33, i64 2
  store float %9, ptr %10, align 4, !tbaa !34
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 34
  %12 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  store float %13, ptr %11, align 4, !tbaa !34
  %14 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 1, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 34, i64 1
  store float %15, ptr %16, align 4, !tbaa !34
  %17 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 1, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 34, i64 2
  store float %18, ptr %19, align 4, !tbaa !34
  %20 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 35
  %21 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 2
  %22 = load float, ptr %21, align 4, !tbaa !34
  store float %22, ptr %20, align 4, !tbaa !34
  %23 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 2, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 35, i64 1
  store float %24, ptr %25, align 4, !tbaa !34
  %26 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 2, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 35, i64 2
  store float %27, ptr %28, align 4, !tbaa !34
  %29 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36
  %30 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 3
  %31 = load float, ptr %30, align 4, !tbaa !34
  store float %31, ptr %29, align 4, !tbaa !34
  %32 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 3, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !34
  %34 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 1
  store float %33, ptr %34, align 4, !tbaa !34
  %35 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 3, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !34
  %37 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 2
  store float %36, ptr %37, align 4, !tbaa !34
  %38 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38
  %39 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 4
  %40 = load float, ptr %39, align 4, !tbaa !34
  store float %40, ptr %38, align 4, !tbaa !34
  %41 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 4, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !34
  %43 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38, i64 1
  store float %42, ptr %43, align 4, !tbaa !34
  %44 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 4, i64 2
  %45 = load float, ptr %44, align 4, !tbaa !34
  %46 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38, i64 2
  store float %45, ptr %46, align 4, !tbaa !34
  %47 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39
  %48 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 5
  %49 = load float, ptr %48, align 4, !tbaa !34
  store float %49, ptr %47, align 4, !tbaa !34
  %50 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 5, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !34
  %52 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39, i64 1
  store float %51, ptr %52, align 4, !tbaa !34
  %53 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 5, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !34
  %55 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39, i64 2
  store float %54, ptr %55, align 4, !tbaa !34
  %56 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 40
  %57 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 6
  %58 = load float, ptr %57, align 4, !tbaa !34
  store float %58, ptr %56, align 4, !tbaa !34
  %59 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 6, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !34
  %61 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 40, i64 1
  store float %60, ptr %61, align 4, !tbaa !34
  %62 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 6, i64 2
  %63 = load float, ptr %62, align 4, !tbaa !34
  %64 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 40, i64 2
  store float %63, ptr %64, align 4, !tbaa !34
  %65 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 41
  %66 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 7
  tail call void @copy_qt_qt(ptr noundef nonnull %65, ptr noundef nonnull %66) #17
  %67 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 42
  %68 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 8
  tail call void @copy_qt_qt(ptr noundef nonnull %67, ptr noundef nonnull %68) #17
  %69 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43
  %70 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 9
  %71 = load float, ptr %70, align 4, !tbaa !34
  store float %71, ptr %69, align 4, !tbaa !34
  %72 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 9, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !34
  %74 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43, i64 1
  store float %73, ptr %74, align 4, !tbaa !34
  %75 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 9, i64 2
  %76 = load float, ptr %75, align 4, !tbaa !34
  %77 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43, i64 2
  store float %76, ptr %77, align 4, !tbaa !34
  %78 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 44
  %79 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 10
  %80 = load float, ptr %79, align 4, !tbaa !34
  store float %80, ptr %78, align 4, !tbaa !34
  %81 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 10, i64 1
  %82 = load float, ptr %81, align 4, !tbaa !34
  %83 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 44, i64 1
  store float %82, ptr %83, align 4, !tbaa !34
  %84 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 10, i64 2
  %85 = load float, ptr %84, align 4, !tbaa !34
  %86 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 44, i64 2
  store float %85, ptr %86, align 4, !tbaa !34
  %87 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 11
  %88 = load float, ptr %87, align 4, !tbaa !450
  %89 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 45
  store float %88, ptr %89, align 8, !tbaa !342
  %90 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 12
  %91 = load float, ptr %90, align 4, !tbaa !452
  %92 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 46
  store float %91, ptr %92, align 4, !tbaa !389
  %93 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  %94 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 13
  tail call void @copy_m4_m4(ptr noundef nonnull %93, ptr noundef nonnull %94) #17
  %95 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 48
  %96 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 14
  tail call void @copy_m4_m4(ptr noundef nonnull %95, ptr noundef nonnull %96) #17
  %97 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 49
  %98 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 15
  tail call void @copy_m4_m4(ptr noundef nonnull %97, ptr noundef nonnull %98) #17
  %99 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 50
  %100 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 16
  tail call void @copy_m4_m4(ptr noundef nonnull %99, ptr noundef nonnull %100) #17
  ret void
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BKE_object_parent_loop_check(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #14 {
  br label %3

3:                                                ; preds = %8, %2
  %4 = phi ptr [ %0, %2 ], [ %10, %8 ]
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = icmp eq ptr %1, %4
  br i1 %7, label %11, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !153
  br label %3

11:                                               ; preds = %6, %3
  %12 = phi i8 [ 0, %3 ], [ 1, %6 ]
  ret i8 %12
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_handle_update_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #4 {
  br label %6

6:                                                ; preds = %293, %5
  %7 = phi ptr [ %2, %5 ], [ %291, %293 ]
  %8 = phi ptr [ %3, %5 ], [ null, %293 ]
  %9 = phi i8 [ %4, %5 ], [ 1, %293 ]
  %10 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 103
  %11 = load i8, ptr %10, align 1, !tbaa !453
  %12 = and i8 %11, 7
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %289, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 18
  %16 = load ptr, ptr %15, align 8, !tbaa !65
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @BKE_pose_channels_hash_make(ptr noundef nonnull %16) #17
  br label %19

19:                                               ; preds = %18, %14
  %20 = load i8, ptr %10, align 1, !tbaa !453
  %21 = and i8 %20, 2
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !69
  %26 = icmp eq i16 %25, 25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load ptr, ptr %15, align 8, !tbaa !65
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.bPose, ptr %28, i64 0, i32 2
  %32 = load i16, ptr %31, align 8, !tbaa !454
  %33 = and i16 %32, 1
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30, %27
  %36 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %37 = load ptr, ptr %36, align 8, !tbaa !71
  tail call void @BKE_pose_rebuild(ptr noundef %7, ptr noundef %37) #17
  br label %38

38:                                               ; preds = %23, %35, %30, %19
  %39 = load i8, ptr %10, align 1, !tbaa !453
  %40 = and i8 %39, 7
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %92, label %42

42:                                               ; preds = %38
  %43 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !456
  %44 = and i32 %43, 256
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 4, i64 2
  %48 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, ptr noundef nonnull %47)
  br label %49

49:                                               ; preds = %46, %42
  %50 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !359
  %52 = icmp eq ptr %51, null
  br i1 %52, label %90, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 13
  %55 = load ptr, ptr %54, align 8, !tbaa !151
  %56 = icmp eq ptr %55, null
  br i1 %56, label %90, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.Object, ptr %55, i64 0, i32 12
  %59 = load ptr, ptr %58, align 8, !tbaa !152
  %60 = icmp eq ptr %59, null
  br i1 %60, label %87, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.Object, ptr %59, i64 0, i32 50
  %63 = getelementptr inbounds %struct.Object, ptr %59, i64 0, i32 47
  %64 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %62, ptr noundef nonnull %63) #17
  %65 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 47
  %66 = load ptr, ptr %54, align 8, !tbaa !151
  %67 = getelementptr inbounds %struct.Object, ptr %66, i64 0, i32 47
  tail call void @mul_m4_m4m4(ptr noundef nonnull %65, ptr noundef nonnull %62, ptr noundef nonnull %67) #17
  %68 = getelementptr inbounds %struct.Object, ptr %59, i64 0, i32 112
  %69 = load ptr, ptr %68, align 8, !tbaa !346
  %70 = icmp eq ptr %69, null
  br i1 %70, label %92, label %71

71:                                               ; preds = %61
  %72 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 47, i64 3
  %73 = getelementptr inbounds %struct.Group, ptr %69, i64 0, i32 3
  %74 = load float, ptr %73, align 4, !tbaa !34
  %75 = load float, ptr %72, align 4, !tbaa !34
  %76 = fadd float %74, %75
  store float %76, ptr %72, align 4, !tbaa !34
  %77 = getelementptr inbounds %struct.Group, ptr %69, i64 0, i32 3, i64 1
  %78 = load float, ptr %77, align 4, !tbaa !34
  %79 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 47, i64 3, i64 1
  %80 = load float, ptr %79, align 4, !tbaa !34
  %81 = fadd float %78, %80
  store float %81, ptr %79, align 4, !tbaa !34
  %82 = getelementptr inbounds %struct.Group, ptr %69, i64 0, i32 3, i64 2
  %83 = load float, ptr %82, align 4, !tbaa !34
  %84 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 47, i64 3, i64 2
  %85 = load float, ptr %84, align 4, !tbaa !34
  %86 = fadd float %83, %85
  store float %86, ptr %84, align 4, !tbaa !34
  br label %92

87:                                               ; preds = %57
  %88 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 47
  %89 = getelementptr inbounds %struct.Object, ptr %55, i64 0, i32 47
  tail call void @copy_m4_m4(ptr noundef nonnull %88, ptr noundef nonnull %89) #17
  br label %92

90:                                               ; preds = %53, %49
  %91 = tail call float @BKE_scene_frame_get(ptr noundef %1) #17
  tail call void @BKE_object_where_is_calc_time_ex(ptr noundef %1, ptr noundef %7, float noundef %91, ptr noundef %8, ptr noundef null)
  br label %92

92:                                               ; preds = %61, %71, %90, %87, %38
  %93 = load i8, ptr %10, align 1, !tbaa !453
  %94 = and i8 %93, 2
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %286, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %98 = load ptr, ptr %97, align 8, !tbaa !71
  %99 = tail call ptr @BKE_animdata_from_id(ptr noundef %98) #17
  %100 = tail call float @BKE_scene_frame_get(ptr noundef %1) #17
  %101 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !456
  %102 = and i32 %101, 256
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %96
  %105 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 4, i64 2
  %106 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull %105)
  br label %107

107:                                              ; preds = %104, %96
  %108 = icmp eq ptr %99, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %107
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef %98, ptr noundef nonnull %99, float noundef %100, i16 noundef signext 1) #17
  br label %110

110:                                              ; preds = %109, %107
  %111 = tail call ptr @BKE_key_from_object(ptr noundef %7) #17
  %112 = icmp eq ptr %111, null
  br i1 %112, label %125, label %113

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.Key, ptr %111, i64 0, i32 6
  %115 = load ptr, ptr %114, align 8, !tbaa !457
  %116 = icmp eq ptr %115, null
  br i1 %116, label %125, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 114
  %119 = load i8, ptr %118, align 1, !tbaa !459
  %120 = and i8 %119, 1
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.Key, ptr %111, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !460
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %111, ptr noundef %124, float noundef %100, i16 noundef signext 1) #17
  br label %125

125:                                              ; preds = %117, %122, %113, %110
  %126 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 3
  %127 = load i16, ptr %126, align 8, !tbaa !69
  switch i16 %127, label %180 [
    i16 1, label %128
    i16 25, label %143
    i16 5, label %163
    i16 2, label %164
    i16 3, label %164
    i16 4, label %164
    i16 22, label %165
    i16 0, label %166
  ]

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 7
  %130 = load ptr, ptr %129, align 8, !tbaa !461
  %131 = icmp eq ptr %130, %7
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = tail call ptr @BKE_editmesh_from_object(ptr noundef %7) #17
  br label %134

134:                                              ; preds = %128, %132
  %135 = phi ptr [ %133, %132 ], [ null, %128 ]
  %136 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 42
  %137 = load i64, ptr %136, align 8, !tbaa !462
  %138 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !463
  %139 = or i64 %138, %137
  %140 = icmp eq ptr %135, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %134
  tail call void @makeDerivedMesh(ptr noundef %1, ptr noundef %7, ptr noundef nonnull %135, i64 noundef %139, i32 noundef 0) #17
  br label %180

142:                                              ; preds = %134
  tail call void @makeDerivedMesh(ptr noundef %1, ptr noundef %7, ptr noundef null, i64 noundef %139, i32 noundef 0) #17
  br label %180

143:                                              ; preds = %125
  %144 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 3
  %145 = load ptr, ptr %144, align 8, !tbaa !359
  %146 = icmp eq ptr %145, null
  br i1 %146, label %162, label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 13
  %149 = load ptr, ptr %148, align 8, !tbaa !151
  %150 = icmp eq ptr %149, null
  br i1 %150, label %162, label %151

151:                                              ; preds = %147
  %152 = load ptr, ptr %15, align 8, !tbaa !65
  %153 = getelementptr inbounds %struct.Object, ptr %149, i64 0, i32 18
  %154 = load ptr, ptr %153, align 8, !tbaa !65
  %155 = tail call zeroext i8 @BKE_pose_copy_result(ptr noundef %152, ptr noundef %154) #17
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %180

157:                                              ; preds = %151
  %158 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 4, i64 2
  %159 = load ptr, ptr %148, align 8, !tbaa !151
  %160 = getelementptr inbounds %struct.ID, ptr %159, i64 0, i32 4, i64 2
  %161 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef nonnull %158, ptr noundef nonnull %160)
  br label %180

162:                                              ; preds = %147, %143
  tail call void @BKE_pose_where_is(ptr noundef %1, ptr noundef %7) #17
  br label %180

163:                                              ; preds = %125
  tail call void @BKE_displist_make_mball(ptr noundef %0, ptr noundef %1, ptr noundef %7) #17
  br label %180

164:                                              ; preds = %125, %125, %125
  tail call void @BKE_displist_make_curveTypes(ptr noundef %1, ptr noundef %7, i8 noundef zeroext 0) #17
  br label %180

165:                                              ; preds = %125
  tail call void @BKE_lattice_modifiers_calc(ptr noundef %1, ptr noundef %7) #17
  br label %180

166:                                              ; preds = %125
  %167 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 88
  %168 = load i8, ptr %167, align 1, !tbaa !309
  %169 = icmp eq i8 %168, 8
  br i1 %169, label %170, label %180

170:                                              ; preds = %166
  %171 = load ptr, ptr %97, align 8, !tbaa !71
  %172 = icmp eq ptr %171, null
  br i1 %172, label %180, label %173

173:                                              ; preds = %170
  %174 = tail call zeroext i8 @BKE_image_is_animated(ptr noundef nonnull %171) #17
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %180, label %176

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 131
  %178 = load ptr, ptr %177, align 8, !tbaa !136
  %179 = fptosi float %100 to i32
  tail call void @BKE_image_user_check_frame_calc(ptr noundef %178, i32 noundef %179, i32 noundef 0) #17
  br label %180

180:                                              ; preds = %141, %142, %166, %170, %176, %173, %162, %157, %151, %125, %165, %164, %163
  %181 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 31
  %182 = load i32, ptr %181, align 8, !tbaa !129
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %197, label %184

184:                                              ; preds = %180
  %185 = load i32, ptr %181, align 8, !tbaa !129
  %186 = icmp slt i32 %185, 1
  br i1 %186, label %202, label %187

187:                                              ; preds = %184, %193
  %188 = phi i32 [ %194, %193 ], [ 1, %184 ]
  %189 = trunc i32 %188 to i16
  %190 = tail call ptr @give_current_material(ptr noundef %7, i16 noundef signext %189) #17
  %191 = icmp eq ptr %190, null
  br i1 %191, label %193, label %192

192:                                              ; preds = %187
  tail call void @material_drivers_update(ptr noundef %1, ptr noundef nonnull %190, float noundef %100) #17
  br label %193

193:                                              ; preds = %192, %187
  %194 = add nuw nsw i32 %188, 1
  %195 = load i32, ptr %181, align 8, !tbaa !129
  %196 = icmp slt i32 %188, %195
  br i1 %196, label %187, label %202, !llvm.loop !464

197:                                              ; preds = %180
  %198 = load i16, ptr %126, align 8, !tbaa !69
  %199 = icmp eq i16 %198, 10
  br i1 %199, label %200, label %202

200:                                              ; preds = %197
  %201 = load ptr, ptr %97, align 8, !tbaa !71
  tail call void @lamp_drivers_update(ptr noundef %1, ptr noundef %201, float noundef %100) #17
  br label %202

202:                                              ; preds = %193, %184, %197, %200
  %203 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 7
  %204 = load ptr, ptr %203, align 8, !tbaa !461
  %205 = icmp eq ptr %204, %7
  br i1 %205, label %286, label %206

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 109
  %208 = load ptr, ptr %207, align 8, !tbaa !170
  %209 = icmp eq ptr %208, null
  br i1 %209, label %286, label %210

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 55
  %212 = load i16, ptr %211, align 8, !tbaa !399
  %213 = and i16 %212, -2049
  store i16 %213, ptr %211, align 8, !tbaa !399
  br label %214

214:                                              ; preds = %210, %260
  %215 = phi ptr [ %208, %210 ], [ %261, %260 ]
  %216 = getelementptr inbounds %struct.ParticleSystem, ptr %215, i64 0, i32 31
  %217 = load i16, ptr %216, align 4, !tbaa !465
  %218 = and i16 %217, 32
  %219 = icmp eq i16 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %214
  tail call void @psys_changed_type(ptr noundef %7, ptr noundef nonnull %215) #17
  br label %221

221:                                              ; preds = %220, %214
  %222 = tail call i32 @psys_check_enabled(ptr noundef %7, ptr noundef nonnull %215) #17
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %253, label %224

224:                                              ; preds = %221
  %225 = getelementptr inbounds %struct.ParticleSystem, ptr %215, i64 0, i32 2
  %226 = load ptr, ptr %225, align 8, !tbaa !81
  %227 = icmp eq ptr %226, null
  br i1 %227, label %251, label %228

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.ParticleSettings, ptr %226, i64 0, i32 17
  %230 = load i16, ptr %229, align 8, !tbaa !466
  %231 = icmp eq i16 %230, 10
  br i1 %231, label %235, label %232

232:                                              ; preds = %228
  %233 = load i32, ptr %0, align 4, !tbaa !467
  %234 = icmp eq i32 %233, 2
  br i1 %234, label %235, label %251

235:                                              ; preds = %232, %228
  %236 = getelementptr inbounds %struct.ParticleSettings, ptr %226, i64 0, i32 21
  %237 = load i16, ptr %236, align 8, !tbaa !469
  switch i16 %237, label %251 [
    i16 7, label %238
    i16 8, label %244
  ]

238:                                              ; preds = %235
  %239 = getelementptr inbounds %struct.ParticleSettings, ptr %226, i64 0, i32 125
  %240 = load ptr, ptr %239, align 8, !tbaa !175
  %241 = icmp eq ptr %240, null
  br i1 %241, label %242, label %248

242:                                              ; preds = %238
  %243 = icmp eq i16 %237, 8
  br i1 %243, label %244, label %251

244:                                              ; preds = %235, %242
  %245 = getelementptr inbounds %struct.ParticleSettings, ptr %226, i64 0, i32 122
  %246 = load ptr, ptr %245, align 8, !tbaa !470
  %247 = icmp eq ptr %246, null
  br i1 %247, label %251, label %248

248:                                              ; preds = %244, %238
  %249 = load i16, ptr %211, align 8, !tbaa !399
  %250 = or i16 %249, 2048
  store i16 %250, ptr %211, align 8, !tbaa !399
  br label %251

251:                                              ; preds = %235, %248, %244, %242, %232, %224
  tail call void @particle_system_update(ptr noundef %1, ptr noundef %7, ptr noundef nonnull %215) #17
  %252 = load ptr, ptr %215, align 8, !tbaa !191
  br label %260

253:                                              ; preds = %221
  %254 = getelementptr inbounds %struct.ParticleSystem, ptr %215, i64 0, i32 25
  %255 = load i32, ptr %254, align 4, !tbaa !471
  %256 = and i32 %255, 256
  %257 = icmp eq i32 %256, 0
  %258 = load ptr, ptr %215, align 8, !tbaa !191
  br i1 %257, label %260, label %259

259:                                              ; preds = %253
  tail call void @BLI_remlink(ptr noundef nonnull %207, ptr noundef nonnull %215) #17
  tail call void @psys_free(ptr noundef %7, ptr noundef nonnull %215) #17
  br label %260

260:                                              ; preds = %253, %259, %251
  %261 = phi ptr [ %252, %251 ], [ %258, %259 ], [ %258, %253 ]
  %262 = icmp eq ptr %261, null
  br i1 %262, label %263, label %214, !llvm.loop !472

263:                                              ; preds = %260
  %264 = load i32, ptr %0, align 4, !tbaa !467
  %265 = icmp eq i32 %264, 2
  br i1 %265, label %266, label %286

266:                                              ; preds = %263
  %267 = load i16, ptr %211, align 8, !tbaa !399
  %268 = and i16 %267, 2048
  %269 = icmp eq i16 %268, 0
  br i1 %269, label %286, label %270

270:                                              ; preds = %266
  %271 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !463
  %272 = or i64 %271, 96
  %273 = tail call ptr @mesh_create_derived_render(ptr noundef %1, ptr noundef %7, i64 noundef %272) #17
  %274 = getelementptr inbounds %struct.DerivedMesh, ptr %273, i64 0, i32 95
  %275 = load ptr, ptr %274, align 8, !tbaa !124
  tail call void %275(ptr noundef %273) #17
  %276 = load ptr, ptr %207, align 8, !tbaa !47
  %277 = icmp eq ptr %276, null
  br i1 %277, label %286, label %278

278:                                              ; preds = %270, %278
  %279 = phi ptr [ %284, %278 ], [ %276, %270 ]
  %280 = tail call ptr @psys_get_modifier(ptr noundef %7, ptr noundef nonnull %279) #17
  %281 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %280, i64 0, i32 6
  %282 = load i16, ptr %281, align 4, !tbaa !473
  %283 = and i16 %282, -3
  store i16 %283, ptr %281, align 4, !tbaa !473
  %284 = load ptr, ptr %279, align 8, !tbaa !47
  %285 = icmp eq ptr %284, null
  br i1 %285, label %286, label %278, !llvm.loop !474

286:                                              ; preds = %278, %270, %202, %206, %266, %263, %92
  %287 = load i8, ptr %10, align 1, !tbaa !453
  %288 = and i8 %287, -8
  store i8 %288, ptr %10, align 1, !tbaa !453
  br label %289

289:                                              ; preds = %286, %6
  %290 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 11
  %291 = load ptr, ptr %290, align 8, !tbaa !150
  %292 = icmp eq ptr %291, null
  br i1 %292, label %300, label %293

293:                                              ; preds = %289
  %294 = getelementptr inbounds %struct.Object, ptr %291, i64 0, i32 13
  store ptr %7, ptr %294, align 8, !tbaa !151
  %295 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 12
  %296 = load ptr, ptr %295, align 8, !tbaa !152
  %297 = icmp eq ptr %296, null
  %298 = icmp ne i8 %9, 0
  %299 = and i1 %298, %297
  br i1 %299, label %6, label %300

300:                                              ; preds = %293, %289
  ret void
}

declare void @BKE_pose_channels_hash_make(ptr noundef) local_unnamed_addr #5

declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #5

declare ptr @BKE_key_from_object(ptr noundef) local_unnamed_addr #5

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #5

declare void @makeDerivedMesh(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

declare zeroext i8 @BKE_pose_copy_result(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @BKE_pose_where_is(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @BKE_displist_make_mball(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @BKE_displist_make_curveTypes(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

declare void @BKE_lattice_modifiers_calc(ptr noundef, ptr noundef) local_unnamed_addr #5

declare zeroext i8 @BKE_image_is_animated(ptr noundef) local_unnamed_addr #5

declare void @BKE_image_user_check_frame_calc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #5

declare void @material_drivers_update(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #5

declare void @lamp_drivers_update(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #5

declare void @psys_changed_type(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @psys_check_enabled(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @particle_system_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @mesh_create_derived_render(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare ptr @psys_get_modifier(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_handle_update(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  tail call void @BKE_object_handle_update_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_sculpt_modifiers_changed(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !345
  %6 = icmp eq ptr %5, null
  br i1 %6, label %35, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 28
  %9 = load ptr, ptr %8, align 8, !tbaa !475
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 15
  %13 = load ptr, ptr %12, align 8, !tbaa !477
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @BKE_pbvh_free(ptr noundef nonnull %13) #17
  store ptr null, ptr %12, align 8, !tbaa !477
  br label %16

16:                                               ; preds = %15, %11
  %17 = load ptr, ptr %4, align 8, !tbaa !345
  tail call void @BKE_free_sculptsession_deformMats(ptr noundef %17) #17
  br label %35

18:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  %19 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 15
  %20 = load ptr, ptr %19, align 8, !tbaa !477
  call void @BKE_pbvh_search_gather(ptr noundef %20, ptr noundef null, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull %3) #17
  %21 = load i32, ptr %3, align 4, !tbaa !408
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18, %23
  %24 = phi i64 [ %28, %23 ], [ 0, %18 ]
  %25 = load ptr, ptr %2, align 8, !tbaa !47
  %26 = getelementptr inbounds ptr, ptr %25, i64 %24
  %27 = load ptr, ptr %26, align 8, !tbaa !47
  call void @BKE_pbvh_node_mark_update(ptr noundef %27) #17
  %28 = add nuw nsw i64 %24, 1
  %29 = load i32, ptr %3, align 4, !tbaa !408
  %30 = sext i32 %29 to i64
  %31 = icmp slt i64 %28, %30
  br i1 %31, label %23, label %32, !llvm.loop !478

32:                                               ; preds = %23, %18
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %34 = load ptr, ptr %2, align 8, !tbaa !47
  call void %33(ptr noundef %34) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  br label %35

35:                                               ; preds = %16, %32, %1
  ret void
}

declare void @BKE_pbvh_free(ptr noundef) local_unnamed_addr #5

declare void @BKE_free_sculptsession_deformMats(ptr noundef) local_unnamed_addr #5

declare void @BKE_pbvh_search_gather(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @BKE_pbvh_node_mark_update(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @BKE_object_obdata_texspace_get(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4) local_unnamed_addr #15 {
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = icmp eq ptr %7, null
  br i1 %8, label %62, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 4
  %11 = load i16, ptr %10, align 8, !tbaa !479
  switch i16 %11, label %62 [
    i16 17741, label %12
    i16 21827, label %28
    i16 16973, label %44
  ]

12:                                               ; preds = %9
  %13 = icmp eq ptr %1, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 37
  store ptr %15, ptr %1, align 8, !tbaa !47
  br label %16

16:                                               ; preds = %14, %12
  %17 = icmp eq ptr %2, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 33
  store ptr %19, ptr %2, align 8, !tbaa !47
  br label %20

20:                                               ; preds = %18, %16
  %21 = icmp eq ptr %3, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 34
  store ptr %23, ptr %3, align 8, !tbaa !47
  br label %24

24:                                               ; preds = %22, %20
  %25 = icmp eq ptr %4, null
  br i1 %25, label %62, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 35
  br label %60

28:                                               ; preds = %9
  %29 = icmp eq ptr %1, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.Curve, ptr %7, i64 0, i32 15
  store ptr %31, ptr %1, align 8, !tbaa !47
  br label %32

32:                                               ; preds = %30, %28
  %33 = icmp eq ptr %2, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.Curve, ptr %7, i64 0, i32 11
  store ptr %35, ptr %2, align 8, !tbaa !47
  br label %36

36:                                               ; preds = %34, %32
  %37 = icmp eq ptr %3, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.Curve, ptr %7, i64 0, i32 12
  store ptr %39, ptr %3, align 8, !tbaa !47
  br label %40

40:                                               ; preds = %38, %36
  %41 = icmp eq ptr %4, null
  br i1 %41, label %62, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.Curve, ptr %7, i64 0, i32 13
  br label %60

44:                                               ; preds = %9
  %45 = icmp eq ptr %1, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.MetaBall, ptr %7, i64 0, i32 10
  store ptr %47, ptr %1, align 8, !tbaa !47
  br label %48

48:                                               ; preds = %46, %44
  %49 = icmp eq ptr %2, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.MetaBall, ptr %7, i64 0, i32 12
  store ptr %51, ptr %2, align 8, !tbaa !47
  br label %52

52:                                               ; preds = %50, %48
  %53 = icmp eq ptr %3, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.MetaBall, ptr %7, i64 0, i32 13
  store ptr %55, ptr %3, align 8, !tbaa !47
  br label %56

56:                                               ; preds = %54, %52
  %57 = icmp eq ptr %4, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.MetaBall, ptr %7, i64 0, i32 14
  br label %60

60:                                               ; preds = %58, %42, %26
  %61 = phi ptr [ %27, %26 ], [ %43, %42 ], [ %59, %58 ]
  store ptr %61, ptr %4, align 8, !tbaa !47
  br label %62

62:                                               ; preds = %60, %24, %40, %56, %9, %5
  %63 = phi i32 [ 0, %5 ], [ 0, %9 ], [ 1, %56 ], [ 1, %40 ], [ 1, %24 ], [ 1, %60 ]
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BKE_boundbox_ray_hit_check(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = alloca float, align 4
  %6 = icmp ne ptr %3, null
  br label %7

7:                                                ; preds = %4, %35
  %8 = phi i64 [ 0, %4 ], [ %37, %35 ]
  %9 = phi i8 [ 0, %4 ], [ %36, %35 ]
  %10 = icmp eq i8 %9, 0
  %11 = or i1 %6, %10
  br i1 %11, label %12, label %39

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  %13 = getelementptr inbounds [12 x [3 x i32]], ptr @__const.BKE_boundbox_ray_hit_check.triangle_indexes, i64 0, i64 %8
  %14 = load i32, ptr %13, align 4, !tbaa !408
  %15 = getelementptr inbounds [12 x [3 x i32]], ptr @__const.BKE_boundbox_ray_hit_check.triangle_indexes, i64 0, i64 %8, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !408
  %17 = getelementptr inbounds [12 x [3 x i32]], ptr @__const.BKE_boundbox_ray_hit_check.triangle_indexes, i64 0, i64 %8, i64 2
  %18 = load i32, ptr %17, align 4, !tbaa !408
  %19 = sext i32 %14 to i64
  %20 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 %19
  %21 = sext i32 %16 to i64
  %22 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 %21
  %23 = sext i32 %18 to i64
  %24 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 %23
  %25 = call zeroext i8 @isect_ray_tri_v3(ptr noundef %1, ptr noundef %2, ptr noundef %20, ptr noundef %22, ptr noundef %24, ptr noundef nonnull %5, ptr noundef null) #17
  %26 = icmp ne i8 %25, 0
  %27 = and i1 %6, %26
  %28 = select i1 %26, i8 1, i8 %9
  br i1 %27, label %29, label %35

29:                                               ; preds = %12
  %30 = load float, ptr %3, align 4, !tbaa !34
  %31 = load float, ptr %5, align 4, !tbaa !34
  %32 = fcmp ule float %30, %31
  %33 = select i1 %32, i8 %9, i8 1
  br i1 %32, label %35, label %34

34:                                               ; preds = %29
  store float %31, ptr %3, align 4, !tbaa !34
  br label %35

35:                                               ; preds = %12, %29, %34
  %36 = phi i8 [ 1, %34 ], [ %33, %29 ], [ %28, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  %37 = add nuw nsw i64 %8, 1
  %38 = icmp eq i64 %37, 12
  br i1 %38, label %39, label %7, !llvm.loop !480

39:                                               ; preds = %35, %7
  %40 = phi i8 [ %36, %35 ], [ %9, %7 ]
  ret i8 %40
}

declare zeroext i8 @isect_ray_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @BKE_object_insert_ptcache(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 126
  tail call void @BLI_sortlist(ptr noundef nonnull %2, ptr noundef nonnull @pc_cmp) #17
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1, %13
  %6 = phi ptr [ %15, %13 ], [ %3, %1 ]
  %7 = phi i32 [ %14, %13 ], [ 0, %1 ]
  %8 = getelementptr inbounds %struct.LinkData, ptr %6, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !481
  %10 = ptrtoint ptr %9 to i64
  %11 = trunc i64 %10 to i32
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %5
  %14 = add nuw nsw i32 %7, 1
  %15 = load ptr, ptr %6, align 8, !tbaa !47
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %5, !llvm.loop !483

17:                                               ; preds = %13, %5, %1
  %18 = phi i32 [ 0, %1 ], [ %14, %13 ], [ %7, %5 ]
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %20 = tail call ptr %19(i64 noundef 24, ptr noundef nonnull @.str.18) #17
  %21 = zext nneg i32 %18 to i64
  %22 = inttoptr i64 %21 to ptr
  %23 = getelementptr inbounds %struct.LinkData, ptr %20, i64 0, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !481
  tail call void @BLI_addtail(ptr noundef nonnull %2, ptr noundef %20) #17
  ret i32 %18
}

declare void @BLI_sortlist(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @pc_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 {
  %3 = getelementptr inbounds %struct.LinkData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !481
  %5 = ptrtoint ptr %4 to i64
  %6 = trunc i64 %5 to i32
  %7 = getelementptr inbounds %struct.LinkData, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !481
  %9 = ptrtoint ptr %8 to i64
  %10 = trunc i64 %9 to i32
  %11 = icmp sgt i32 %6, %10
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_delete_ptcache(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 126
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2, %14
  %7 = phi ptr [ %16, %14 ], [ %4, %2 ]
  %8 = phi i32 [ %15, %14 ], [ 0, %2 ]
  %9 = getelementptr inbounds %struct.LinkData, ptr %7, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !481
  %11 = ptrtoint ptr %10 to i64
  %12 = trunc i64 %11 to i32
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %18, label %14

14:                                               ; preds = %6
  %15 = add nuw nsw i32 %8, 1
  %16 = load ptr, ptr %7, align 8, !tbaa !47
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6, !llvm.loop !484

18:                                               ; preds = %6, %14, %2
  %19 = phi i32 [ -1, %2 ], [ %8, %6 ], [ -1, %14 ]
  %20 = tail call ptr @BLI_findlink(ptr noundef nonnull %3, i32 noundef %19) #17
  tail call void @BLI_freelinkN(ptr noundef nonnull %3, ptr noundef %20) #17
  ret void
}

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_object_insert_shape_key(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #4 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !69
  switch i16 %9, label %98 [
    i16 1, label %10
    i16 2, label %31
    i16 3, label %31
    i16 22, label %65
  ]

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !485
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = tail call ptr @BKE_key_add(ptr noundef %12) #17
  store ptr %17, ptr %13, align 8, !tbaa !485
  %18 = getelementptr inbounds %struct.Key, ptr %17, i64 0, i32 9
  store i16 1, ptr %18, align 8, !tbaa !486
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi ptr [ %17, %16 ], [ %14, %10 ]
  %21 = icmp eq i8 %3, 0
  %22 = or i1 %21, %15
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = tail call ptr @BKE_keyblock_add_ctime(ptr noundef %20, ptr noundef %2, i8 noundef zeroext 0) #17
  tail call void @BKE_key_convert_from_mesh(ptr noundef %12, ptr noundef %24) #17
  br label %98

25:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  %26 = call ptr @BKE_key_evaluate_object(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7) #17
  %27 = call ptr @BKE_keyblock_add_ctime(ptr noundef %20, ptr noundef %2, i8 noundef zeroext 0) #17
  %28 = getelementptr inbounds %struct.KeyBlock, ptr %27, i64 0, i32 10
  store ptr %26, ptr %28, align 8, !tbaa !487
  %29 = load i32, ptr %7, align 4, !tbaa !408
  %30 = getelementptr inbounds %struct.KeyBlock, ptr %27, i64 0, i32 8
  store i32 %29, ptr %30, align 8, !tbaa !489
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  br label %98

31:                                               ; preds = %4, %4
  %32 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %33 = load ptr, ptr %32, align 8, !tbaa !71
  %34 = getelementptr inbounds %struct.Curve, ptr %33, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !490
  %36 = tail call ptr @BKE_curve_nurbs_get(ptr noundef %33) #17
  %37 = icmp eq ptr %35, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = tail call ptr @BKE_key_add(ptr noundef %33) #17
  store ptr %39, ptr %34, align 8, !tbaa !490
  %40 = getelementptr inbounds %struct.Key, ptr %39, i64 0, i32 9
  store i16 1, ptr %40, align 8, !tbaa !486
  br label %41

41:                                               ; preds = %38, %31
  %42 = phi ptr [ %39, %38 ], [ %35, %31 ]
  %43 = icmp eq i8 %3, 0
  %44 = or i1 %43, %37
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = tail call ptr @BKE_keyblock_add_ctime(ptr noundef %42, ptr noundef %2, i8 noundef zeroext 0) #17
  br i1 %37, label %58, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.Key, ptr %42, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !457
  %50 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %51 = getelementptr inbounds %struct.KeyBlock, ptr %49, i64 0, i32 10
  %52 = load ptr, ptr %51, align 8, !tbaa !487
  %53 = tail call ptr %50(ptr noundef %52) #17
  %54 = getelementptr inbounds %struct.KeyBlock, ptr %46, i64 0, i32 10
  store ptr %53, ptr %54, align 8, !tbaa !487
  %55 = getelementptr inbounds %struct.KeyBlock, ptr %49, i64 0, i32 8
  %56 = load i32, ptr %55, align 8, !tbaa !489
  %57 = getelementptr inbounds %struct.KeyBlock, ptr %46, i64 0, i32 8
  store i32 %56, ptr %57, align 8, !tbaa !489
  br label %98

58:                                               ; preds = %45
  tail call void @BKE_key_convert_from_curve(ptr noundef %33, ptr noundef %46, ptr noundef %36) #17
  br label %98

59:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  %60 = call ptr @BKE_key_evaluate_object(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6) #17
  %61 = call ptr @BKE_keyblock_add_ctime(ptr noundef %42, ptr noundef %2, i8 noundef zeroext 0) #17
  %62 = load i32, ptr %6, align 4, !tbaa !408
  %63 = getelementptr inbounds %struct.KeyBlock, ptr %61, i64 0, i32 8
  store i32 %62, ptr %63, align 8, !tbaa !489
  %64 = getelementptr inbounds %struct.KeyBlock, ptr %61, i64 0, i32 10
  store ptr %60, ptr %64, align 8, !tbaa !487
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  br label %98

65:                                               ; preds = %4
  %66 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %67 = load ptr, ptr %66, align 8, !tbaa !71
  %68 = getelementptr inbounds %struct.Lattice, ptr %67, i64 0, i32 23
  %69 = load ptr, ptr %68, align 8, !tbaa !491
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = tail call ptr @BKE_key_add(ptr noundef %67) #17
  store ptr %72, ptr %68, align 8, !tbaa !491
  %73 = getelementptr inbounds %struct.Key, ptr %72, i64 0, i32 9
  store i16 1, ptr %73, align 8, !tbaa !486
  br label %74

74:                                               ; preds = %71, %65
  %75 = phi ptr [ %72, %71 ], [ %69, %65 ]
  %76 = icmp eq i8 %3, 0
  %77 = or i1 %76, %70
  br i1 %77, label %78, label %92

78:                                               ; preds = %74
  %79 = tail call ptr @BKE_keyblock_add_ctime(ptr noundef %75, ptr noundef %2, i8 noundef zeroext 0) #17
  br i1 %70, label %91, label %80

80:                                               ; preds = %78
  %81 = getelementptr inbounds %struct.Key, ptr %75, i64 0, i32 6
  %82 = load ptr, ptr %81, align 8, !tbaa !457
  %83 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %84 = getelementptr inbounds %struct.KeyBlock, ptr %82, i64 0, i32 10
  %85 = load ptr, ptr %84, align 8, !tbaa !487
  %86 = tail call ptr %83(ptr noundef %85) #17
  %87 = getelementptr inbounds %struct.KeyBlock, ptr %79, i64 0, i32 10
  store ptr %86, ptr %87, align 8, !tbaa !487
  %88 = getelementptr inbounds %struct.KeyBlock, ptr %82, i64 0, i32 8
  %89 = load i32, ptr %88, align 8, !tbaa !489
  %90 = getelementptr inbounds %struct.KeyBlock, ptr %79, i64 0, i32 8
  store i32 %89, ptr %90, align 8, !tbaa !489
  br label %98

91:                                               ; preds = %78
  tail call void @BKE_key_convert_from_lattice(ptr noundef %67, ptr noundef %79) #17
  br label %98

92:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  %93 = call ptr @BKE_key_evaluate_object(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #17
  %94 = call ptr @BKE_keyblock_add_ctime(ptr noundef %75, ptr noundef %2, i8 noundef zeroext 0) #17
  %95 = load i32, ptr %5, align 4, !tbaa !408
  %96 = getelementptr inbounds %struct.KeyBlock, ptr %94, i64 0, i32 8
  store i32 %95, ptr %96, align 8, !tbaa !489
  %97 = getelementptr inbounds %struct.KeyBlock, ptr %94, i64 0, i32 10
  store ptr %93, ptr %97, align 8, !tbaa !487
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  br label %98

98:                                               ; preds = %92, %91, %80, %59, %58, %47, %25, %23, %4
  %99 = phi ptr [ null, %4 ], [ %24, %23 ], [ %27, %25 ], [ %46, %58 ], [ %46, %47 ], [ %61, %59 ], [ %79, %91 ], [ %79, %80 ], [ %94, %92 ]
  ret ptr %99
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_object_is_child_recursive(ptr noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  br label %3

3:                                                ; preds = %8, %2
  %4 = phi ptr [ %1, %2 ], [ %6, %8 ]
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !153
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = icmp eq ptr %6, %0
  br i1 %9, label %10, label %3, !llvm.loop !492

10:                                               ; preds = %3, %8
  %11 = phi i8 [ 1, %8 ], [ 0, %3 ]
  ret i8 %11
}

; Function Attrs: nounwind uwtable
define dso_local i32 @BKE_object_is_modified(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca %struct.VirtualModifierData, align 8
  %4 = tail call ptr @BKE_key_from_object(ptr noundef %1) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %36

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %3) #17
  %7 = call ptr @modifiers_getVirtualModifierList(ptr noundef %1, ptr noundef nonnull %3) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %34, label %9

9:                                                ; preds = %6, %28
  %10 = phi ptr [ %30, %28 ], [ %7, %6 ]
  %11 = phi i32 [ %29, %28 ], [ 0, %6 ]
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %10, i32 noundef 2) #17
  %16 = icmp eq i8 %15, 0
  %17 = or disjoint i32 %11, 2
  %18 = select i1 %16, i32 %11, i32 %17
  br label %19

19:                                               ; preds = %14, %9
  %20 = phi i32 [ %11, %9 ], [ %18, %14 ]
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %10, i32 noundef 1) #17
  %25 = icmp ne i8 %24, 0
  %26 = zext i1 %25 to i32
  %27 = or disjoint i32 %20, %26
  br label %28

28:                                               ; preds = %23, %19
  %29 = phi i32 [ %20, %19 ], [ %27, %23 ]
  %30 = load ptr, ptr %10, align 8, !tbaa !493
  %31 = icmp ne ptr %30, null
  %32 = icmp ne i32 %29, 3
  %33 = and i1 %32, %31
  br i1 %33, label %9, label %34, !llvm.loop !494

34:                                               ; preds = %28, %6
  %35 = phi i32 [ 0, %6 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %3) #17
  br label %36

36:                                               ; preds = %2, %34
  %37 = phi i32 [ %35, %34 ], [ 3, %2 ]
  ret i32 %37
}

declare ptr @modifiers_getVirtualModifierList(ptr noundef, ptr noundef) local_unnamed_addr #5

declare zeroext i8 @modifier_isEnabled(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @BKE_object_is_deform_modified(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca %struct.VirtualModifierData, align 8
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %3) #17
  %4 = tail call ptr @BKE_key_from_object(ptr noundef %1) #17
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, i32 0, i32 3
  %7 = call ptr @modifiers_getVirtualModifierList(ptr noundef %1, ptr noundef nonnull %3) #17
  %8 = icmp ne ptr %7, null
  %9 = select i1 %8, i1 %5, i1 false
  br i1 %9, label %10, label %42

10:                                               ; preds = %2, %36
  %11 = phi ptr [ %38, %36 ], [ %7, %2 ]
  %12 = phi i32 [ %37, %36 ], [ %6, %2 ]
  %13 = getelementptr inbounds %struct.ModifierData, ptr %11, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !70
  %15 = call ptr @modifierType_getInfo(i32 noundef %14) #17
  %16 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %15, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !495
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %36

19:                                               ; preds = %10
  %20 = and i32 %12, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %11, i32 noundef 2) #17
  %24 = icmp eq i8 %23, 0
  %25 = or disjoint i32 %12, 2
  %26 = select i1 %24, i32 %12, i32 %25
  br label %27

27:                                               ; preds = %22, %19
  %28 = phi i32 [ %12, %19 ], [ %26, %22 ]
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %11, i32 noundef 1) #17
  %33 = icmp ne i8 %32, 0
  %34 = zext i1 %33 to i32
  %35 = or disjoint i32 %28, %34
  br label %36

36:                                               ; preds = %31, %27, %10
  %37 = phi i32 [ %28, %27 ], [ %12, %10 ], [ %35, %31 ]
  %38 = load ptr, ptr %11, align 8, !tbaa !493
  %39 = icmp ne ptr %38, null
  %40 = icmp ne i32 %37, 3
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %10, label %42, !llvm.loop !496

42:                                               ; preds = %36, %2
  %43 = phi i32 [ %6, %2 ], [ %37, %36 ]
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %3) #17
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_object_is_animated(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca %struct.VirtualModifierData, align 8
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %3) #17
  %4 = call ptr @modifiers_getVirtualModifierList(ptr noundef %1, ptr noundef nonnull %3) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2, %16
  %7 = phi ptr [ %17, %16 ], [ %4, %2 ]
  %8 = call zeroext i8 @modifier_dependsOnTime(ptr noundef nonnull %7) #17
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 1) #17
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 2) #17
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %6, %13
  %17 = load ptr, ptr %7, align 8, !tbaa !493
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %6, !llvm.loop !497

19:                                               ; preds = %13, %10, %16, %2
  %20 = phi i8 [ 0, %2 ], [ 1, %13 ], [ 1, %10 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %3) #17
  ret i8 %20
}

declare zeroext i8 @modifier_dependsOnTime(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_relink(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !359
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %55

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 106
  tail call void @BKE_constraints_relink(ptr noundef nonnull %6) #17
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %8, align 8, !tbaa !47
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10, %13
  %14 = phi ptr [ %16, %13 ], [ %11, %10 ]
  %15 = getelementptr inbounds %struct.bPoseChannel, ptr %14, i64 0, i32 3
  tail call void @BKE_constraints_relink(ptr noundef nonnull %15) #17
  %16 = load ptr, ptr %14, align 8, !tbaa !47
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %13, !llvm.loop !498

18:                                               ; preds = %13, %10, %5
  tail call void @modifiers_foreachIDLink(ptr noundef %0, ptr noundef nonnull @copy_object__forwardModifierLinks, ptr noundef null) #17
  %19 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !137
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @BKE_relink_animdata(ptr noundef nonnull %20) #17
  br label %23

23:                                               ; preds = %22, %18
  %24 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 129
  %25 = load ptr, ptr %24, align 8, !tbaa !352
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @BKE_rigidbody_relink_constraint(ptr noundef nonnull %25) #17
  br label %28

28:                                               ; preds = %27, %23
  %29 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !153
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ID, ptr %30, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !499
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  store ptr %34, ptr %29, align 8, !tbaa !153
  br label %37

37:                                               ; preds = %36, %32, %28
  %38 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 11
  %39 = load ptr, ptr %38, align 8, !tbaa !150
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.ID, ptr %39, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !499
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store ptr %43, ptr %38, align 8, !tbaa !150
  br label %46

46:                                               ; preds = %45, %41, %37
  %47 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 12
  %48 = load ptr, ptr %47, align 8, !tbaa !152
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.ID, ptr %48, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !499
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  store ptr %52, ptr %47, align 8, !tbaa !152
  br label %55

55:                                               ; preds = %1, %54, %50, %46
  ret void
}

declare void @BKE_constraints_relink(ptr noundef) local_unnamed_addr #5

declare void @modifiers_foreachIDLink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @copy_object__forwardModifierLinks(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef %2) #15 {
  %4 = load ptr, ptr %2, align 8, !tbaa !47
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !500
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  store ptr %8, ptr %2, align 8, !tbaa !47
  br label %11

11:                                               ; preds = %10, %6, %3
  ret void
}

declare void @BKE_relink_animdata(ptr noundef) local_unnamed_addr #5

declare void @BKE_rigidbody_relink_constraint(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_object_movieclip_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #7 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 41
  %7 = load ptr, ptr %6, align 8, !tbaa !501
  br label %8

8:                                                ; preds = %3, %5
  %9 = phi ptr [ %7, %5 ], [ null, %3 ]
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 106
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = icmp eq ptr %11, null
  br i1 %12, label %31, label %13

13:                                               ; preds = %8, %27
  %14 = phi ptr [ %29, %27 ], [ %11, %8 ]
  %15 = phi ptr [ %28, %27 ], [ null, %8 ]
  %16 = getelementptr inbounds %struct.bConstraint, ptr %14, i64 0, i32 3
  %17 = load i16, ptr %16, align 8, !tbaa !502
  %18 = icmp eq i16 %17, 27
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = icmp eq ptr %15, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.bConstraint, ptr %15, i64 0, i32 4
  %23 = load i16, ptr %22, align 2, !tbaa !504
  %24 = and i16 %23, 512
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %19
  br label %27

27:                                               ; preds = %21, %26, %13
  %28 = phi ptr [ %14, %26 ], [ %15, %21 ], [ %15, %13 ]
  %29 = load ptr, ptr %14, align 8, !tbaa !47
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %13, !llvm.loop !505

31:                                               ; preds = %27, %8
  %32 = phi ptr [ null, %8 ], [ %28, %27 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %44, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.bConstraint, ptr %32, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !506
  %37 = getelementptr inbounds %struct.bCameraSolverConstraint, ptr %36, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !507
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  %41 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 41
  %42 = select i1 %40, ptr %36, ptr %41
  %43 = load ptr, ptr %42, align 8, !tbaa !47
  br label %44

44:                                               ; preds = %34, %31
  %45 = phi ptr [ %43, %34 ], [ %9, %31 ]
  ret ptr %45
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_object_relational_superset(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %28

8:                                                ; preds = %28, %3
  %9 = load ptr, ptr %5, align 8, !tbaa !47
  %10 = icmp eq ptr %9, null
  br i1 %10, label %241, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 12
  %13 = icmp eq i32 %1, 1
  %14 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 12
  %15 = and i32 %2, 3
  %16 = icmp eq i32 %15, 0
  %17 = and i32 %2, 2
  %18 = icmp eq i32 %17, 0
  %19 = and i32 %2, 12
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 12
  %22 = and i32 %2, 8
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %2, 4
  %25 = icmp eq i32 %24, 0
  %26 = and i32 %2, 16
  %27 = icmp eq i32 %26, 0
  br label %37

28:                                               ; preds = %3, %28
  %29 = phi ptr [ %35, %28 ], [ %6, %3 ]
  %30 = getelementptr inbounds %struct.Base, ptr %29, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !48
  %32 = getelementptr inbounds %struct.ID, ptr %31, i64 0, i32 5
  %33 = load i16, ptr %32, align 2, !tbaa !509
  %34 = and i16 %33, -1025
  store i16 %34, ptr %32, align 2, !tbaa !509
  %35 = load ptr, ptr %29, align 8, !tbaa !47
  %36 = icmp eq ptr %35, null
  br i1 %36, label %8, label %28, !llvm.loop !510

37:                                               ; preds = %11, %238
  %38 = phi ptr [ %9, %11 ], [ %239, %238 ]
  switch i32 %1, label %238 [
    i32 2, label %39
    i32 0, label %42
    i32 1, label %65
  ]

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.Base, ptr %38, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !48
  br label %233

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.Base, ptr %38, i64 0, i32 4
  %44 = load i32, ptr %43, align 8, !tbaa !447
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %64, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.Base, ptr %38, i64 0, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !51
  %50 = load i32, ptr %12, align 8, !tbaa !334
  %51 = and i32 %50, %49
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.Base, ptr %38, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !48
  %56 = getelementptr inbounds %struct.ID, ptr %55, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !359
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.Object, ptr %55, i64 0, i32 102
  %61 = load i8, ptr %60, align 8, !tbaa !446
  %62 = and i8 %61, 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %82, label %64

64:                                               ; preds = %59, %53, %47, %42
  br i1 %13, label %65, label %238

65:                                               ; preds = %37, %64
  %66 = getelementptr inbounds %struct.Base, ptr %38, i64 0, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !51
  %68 = load i32, ptr %14, align 8, !tbaa !334
  %69 = and i32 %68, %67
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %238, label %71

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.Base, ptr %38, i64 0, i32 7
  %73 = load ptr, ptr %72, align 8, !tbaa !48
  %74 = getelementptr inbounds %struct.ID, ptr %73, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !359
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %238

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.Object, ptr %73, i64 0, i32 102
  %79 = load i8, ptr %78, align 8, !tbaa !446
  %80 = and i8 %79, 1
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %238

82:                                               ; preds = %77, %59
  %83 = getelementptr inbounds %struct.Base, ptr %38, i64 0, i32 7
  %84 = load ptr, ptr %83, align 8, !tbaa !48
  %85 = icmp eq ptr %84, null
  br i1 %85, label %92, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.ID, ptr %84, i64 0, i32 5
  %88 = load i16, ptr %87, align 2, !tbaa !509
  %89 = and i16 %88, 1024
  %90 = icmp eq i16 %89, 0
  %91 = zext i1 %90 to i8
  br label %92

92:                                               ; preds = %82, %86
  %93 = phi i8 [ 0, %82 ], [ %91, %86 ]
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %92
  call void @BLI_linklist_prepend(ptr noundef nonnull %4, ptr noundef %84) #17
  %96 = getelementptr inbounds %struct.ID, ptr %84, i64 0, i32 5
  %97 = load i16, ptr %96, align 2, !tbaa !509
  %98 = or i16 %97, 1024
  store i16 %98, ptr %96, align 2, !tbaa !509
  br label %99

99:                                               ; preds = %95, %92
  br i1 %16, label %135, label %100

100:                                              ; preds = %99
  %101 = getelementptr inbounds %struct.Object, ptr %84, i64 0, i32 9
  %102 = load ptr, ptr %101, align 8, !tbaa !153
  %103 = icmp eq ptr %102, null
  br i1 %103, label %110, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.ID, ptr %102, i64 0, i32 5
  %106 = load i16, ptr %105, align 2, !tbaa !509
  %107 = and i16 %106, 1024
  %108 = icmp eq i16 %107, 0
  %109 = zext i1 %108 to i8
  br label %110

110:                                              ; preds = %100, %104
  %111 = phi i8 [ 0, %100 ], [ %109, %104 ]
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %135, label %113

113:                                              ; preds = %110
  call void @BLI_linklist_prepend(ptr noundef nonnull %4, ptr noundef %102) #17
  %114 = getelementptr inbounds %struct.ID, ptr %102, i64 0, i32 5
  %115 = load i16, ptr %114, align 2, !tbaa !509
  %116 = or i16 %115, 1024
  store i16 %116, ptr %114, align 2, !tbaa !509
  br i1 %18, label %135, label %117

117:                                              ; preds = %113, %131
  %118 = phi ptr [ %120, %131 ], [ %102, %113 ]
  %119 = getelementptr inbounds %struct.Object, ptr %118, i64 0, i32 9
  %120 = load ptr, ptr %119, align 8, !tbaa !153
  %121 = icmp eq ptr %120, null
  br i1 %121, label %128, label %122

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.ID, ptr %120, i64 0, i32 5
  %124 = load i16, ptr %123, align 2, !tbaa !509
  %125 = and i16 %124, 1024
  %126 = icmp eq i16 %125, 0
  %127 = zext i1 %126 to i8
  br label %128

128:                                              ; preds = %117, %122
  %129 = phi i8 [ 0, %117 ], [ %127, %122 ]
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %128
  call void @BLI_linklist_prepend(ptr noundef nonnull %4, ptr noundef %120) #17
  %132 = getelementptr inbounds %struct.ID, ptr %120, i64 0, i32 5
  %133 = load i16, ptr %132, align 2, !tbaa !509
  %134 = or i16 %133, 1024
  store i16 %134, ptr %132, align 2, !tbaa !509
  br label %117, !llvm.loop !511

135:                                              ; preds = %128, %110, %113, %99
  br i1 %20, label %191, label %136

136:                                              ; preds = %135
  %137 = load ptr, ptr %5, align 8, !tbaa !47
  %138 = icmp eq ptr %137, null
  br i1 %138, label %191, label %139

139:                                              ; preds = %136, %188
  %140 = phi ptr [ %189, %188 ], [ %137, %136 ]
  %141 = getelementptr inbounds %struct.Base, ptr %140, i64 0, i32 2
  %142 = load i32, ptr %141, align 8, !tbaa !51
  %143 = load i32, ptr %21, align 8, !tbaa !334
  %144 = and i32 %143, %142
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %188, label %146

146:                                              ; preds = %139
  %147 = getelementptr inbounds %struct.Base, ptr %140, i64 0, i32 7
  %148 = load ptr, ptr %147, align 8, !tbaa !48
  %149 = getelementptr inbounds %struct.ID, ptr %148, i64 0, i32 3
  %150 = load ptr, ptr %149, align 8, !tbaa !359
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %188

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct.Object, ptr %148, i64 0, i32 102
  %154 = load i8, ptr %153, align 8, !tbaa !446
  %155 = and i8 %154, 1
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %188

157:                                              ; preds = %152
  %158 = icmp eq ptr %148, null
  br i1 %158, label %165, label %159

159:                                              ; preds = %157
  %160 = getelementptr inbounds %struct.ID, ptr %148, i64 0, i32 5
  %161 = load i16, ptr %160, align 2, !tbaa !509
  %162 = and i16 %161, 1024
  %163 = icmp eq i16 %162, 0
  %164 = zext i1 %163 to i8
  br label %165

165:                                              ; preds = %157, %159
  %166 = phi i8 [ 0, %157 ], [ %164, %159 ]
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %188, label %168

168:                                              ; preds = %165
  br i1 %23, label %177, label %169

169:                                              ; preds = %168, %169
  %170 = phi ptr [ %172, %169 ], [ %148, %168 ]
  %171 = getelementptr inbounds %struct.Object, ptr %170, i64 0, i32 9
  %172 = load ptr, ptr %171, align 8, !tbaa !153
  %173 = icmp eq ptr %172, null
  %174 = icmp eq ptr %172, %84
  %175 = or i1 %173, %174
  br i1 %175, label %176, label %169, !llvm.loop !492

176:                                              ; preds = %169
  br i1 %173, label %177, label %184

177:                                              ; preds = %176, %168
  br i1 %25, label %188, label %178

178:                                              ; preds = %177
  %179 = getelementptr inbounds %struct.Object, ptr %148, i64 0, i32 9
  %180 = load ptr, ptr %179, align 8, !tbaa !153
  %181 = icmp ne ptr %180, null
  %182 = icmp eq ptr %180, %84
  %183 = and i1 %181, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %178, %176
  call void @BLI_linklist_prepend(ptr noundef nonnull %4, ptr noundef %148) #17
  %185 = getelementptr inbounds %struct.ID, ptr %148, i64 0, i32 5
  %186 = load i16, ptr %185, align 2, !tbaa !509
  %187 = or i16 %186, 1024
  store i16 %187, ptr %185, align 2, !tbaa !509
  br label %188

188:                                              ; preds = %165, %184, %178, %177, %139, %146, %152
  %189 = load ptr, ptr %140, align 8, !tbaa !47
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %139, !llvm.loop !512

191:                                              ; preds = %188, %136, %135
  br i1 %27, label %238, label %192

192:                                              ; preds = %191
  %193 = getelementptr inbounds %struct.Object, ptr %84, i64 0, i32 9
  %194 = load ptr, ptr %193, align 8, !tbaa !153
  %195 = icmp eq ptr %194, null
  br i1 %195, label %204, label %196

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.Object, ptr %84, i64 0, i32 4
  %198 = load i16, ptr %197, align 2, !tbaa !394
  %199 = icmp eq i16 %198, 4
  br i1 %199, label %200, label %204

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.Object, ptr %194, i64 0, i32 3
  %202 = load i16, ptr %201, align 8, !tbaa !69
  %203 = icmp eq i16 %202, 25
  br i1 %203, label %221, label %204

204:                                              ; preds = %200, %196, %192
  %205 = getelementptr inbounds %struct.Object, ptr %84, i64 0, i32 26
  %206 = load ptr, ptr %205, align 8, !tbaa !47
  %207 = icmp eq ptr %206, null
  br i1 %207, label %221, label %208

208:                                              ; preds = %204, %217
  %209 = phi ptr [ %219, %217 ], [ %206, %204 ]
  %210 = phi ptr [ %218, %217 ], [ null, %204 ]
  %211 = getelementptr inbounds %struct.ModifierData, ptr %209, i64 0, i32 2
  %212 = load i32, ptr %211, align 8, !tbaa !70
  %213 = icmp eq i32 %212, 8
  br i1 %213, label %214, label %217

214:                                              ; preds = %208
  %215 = getelementptr inbounds %struct.ArmatureModifierData, ptr %209, i64 0, i32 4
  %216 = load ptr, ptr %215, align 8, !tbaa !513
  br label %217

217:                                              ; preds = %214, %208
  %218 = phi ptr [ %216, %214 ], [ %210, %208 ]
  %219 = load ptr, ptr %209, align 8, !tbaa !47
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %208, !llvm.loop !515

221:                                              ; preds = %217, %204, %200
  %222 = phi ptr [ %194, %200 ], [ null, %204 ], [ %218, %217 ]
  %223 = icmp eq ptr %222, null
  br i1 %223, label %230, label %224

224:                                              ; preds = %221
  %225 = getelementptr inbounds %struct.ID, ptr %222, i64 0, i32 5
  %226 = load i16, ptr %225, align 2, !tbaa !509
  %227 = and i16 %226, 1024
  %228 = icmp eq i16 %227, 0
  %229 = zext i1 %228 to i8
  br label %230

230:                                              ; preds = %221, %224
  %231 = phi i8 [ 0, %221 ], [ %229, %224 ]
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %238, label %233

233:                                              ; preds = %230, %39
  %234 = phi ptr [ %41, %39 ], [ %222, %230 ]
  call void @BLI_linklist_prepend(ptr noundef nonnull %4, ptr noundef %234) #17
  %235 = getelementptr inbounds %struct.ID, ptr %234, i64 0, i32 5
  %236 = load i16, ptr %235, align 2, !tbaa !509
  %237 = or i16 %236, 1024
  store i16 %237, ptr %235, align 2, !tbaa !509
  br label %238

238:                                              ; preds = %233, %191, %230, %37, %77, %71, %65, %64
  %239 = load ptr, ptr %38, align 8, !tbaa !47
  %240 = icmp eq ptr %239, null
  br i1 %240, label %241, label %37, !llvm.loop !516

241:                                              ; preds = %238, %8
  %242 = load ptr, ptr %4, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret ptr %242
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_object_groups(ptr noundef %0) local_unnamed_addr #4 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  store ptr null, ptr %2, align 8, !tbaa !47
  %3 = tail call ptr @BKE_group_object_find(ptr noundef null, ptr noundef %0) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  call void @BLI_linklist_prepend(ptr noundef nonnull %2, ptr noundef nonnull %6) #17
  %7 = call ptr @BKE_group_object_find(ptr noundef nonnull %6, ptr noundef %0) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !517

9:                                                ; preds = %5, %1
  %10 = load ptr, ptr %2, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret ptr %10
}

declare ptr @BKE_group_object_find(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @BLI_linklist_prepend(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @BKE_object_groups_clear(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = icmp ne ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call ptr @BKE_scene_base_find(ptr noundef nonnull %0, ptr noundef %2) #17
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi ptr [ %8, %7 ], [ %1, %3 ]
  %11 = getelementptr inbounds %struct.Base, ptr %10, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  %13 = tail call ptr @BKE_group_object_find(ptr noundef null, ptr noundef %12) #17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %9, %15
  %16 = phi ptr [ %19, %15 ], [ %13, %9 ]
  %17 = tail call zeroext i8 @BKE_group_object_unlink(ptr noundef nonnull %16, ptr noundef %2, ptr noundef %0, ptr noundef %10) #17
  %18 = load ptr, ptr %11, align 8, !tbaa !48
  %19 = tail call ptr @BKE_group_object_find(ptr noundef nonnull %16, ptr noundef %18) #17
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %15, !llvm.loop !518

21:                                               ; preds = %15, %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_object_as_kdtree(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !69
  switch i16 %9, label %146 [
    i16 1, label %10
    i16 2, label %67
    i16 3, label %67
    i16 22, label %117
  ]

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 119
  %14 = load ptr, ptr %13, align 8, !tbaa !125
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 120
  %18 = load ptr, ptr %17, align 8, !tbaa !121
  br label %19

19:                                               ; preds = %10, %16
  %20 = phi ptr [ %18, %16 ], [ %14, %10 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %51, label %22

22:                                               ; preds = %19
  %23 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %20, i32 noundef 7) #17
  %24 = icmp eq ptr %23, null
  br i1 %24, label %51, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %20, i64 0, i32 31
  %27 = load ptr, ptr %26, align 8, !tbaa !436
  %28 = tail call ptr %27(ptr noundef nonnull %20) #17
  %29 = getelementptr inbounds %struct.DerivedMesh, ptr %20, i64 0, i32 23
  %30 = load ptr, ptr %29, align 8, !tbaa !437
  %31 = tail call i32 %30(ptr noundef nonnull %20) #17
  %32 = tail call ptr @BLI_kdtree_new(i32 noundef %31) #17
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %143, label %34

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  %36 = zext i32 %31 to i64
  br label %37

37:                                               ; preds = %34, %47
  %38 = phi i64 [ 0, %34 ], [ %49, %47 ]
  %39 = phi i32 [ 0, %34 ], [ %48, %47 ]
  %40 = getelementptr inbounds i32, ptr %23, i64 %38
  %41 = load i32, ptr %40, align 4, !tbaa !408
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #17
  %44 = getelementptr inbounds %struct.MVert, ptr %28, i64 %38
  call void @mul_v3_m4v3(ptr noundef nonnull %3, ptr noundef nonnull %35, ptr noundef %44) #17
  %45 = load i32, ptr %40, align 4, !tbaa !408
  call void @BLI_kdtree_insert(ptr noundef %32, i32 noundef %45, ptr noundef nonnull %3) #17
  %46 = add i32 %39, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #17
  br label %47

47:                                               ; preds = %37, %43
  %48 = phi i32 [ %46, %43 ], [ %39, %37 ]
  %49 = add nuw nsw i64 %38, 1
  %50 = icmp eq i64 %49, %36
  br i1 %50, label %143, label %37, !llvm.loop !519

51:                                               ; preds = %22, %19
  %52 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 15
  %53 = load ptr, ptr %52, align 8, !tbaa !520
  %54 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 26
  %55 = load i32, ptr %54, align 8, !tbaa !521
  %56 = tail call ptr @BLI_kdtree_new(i32 noundef %55) #17
  %57 = icmp eq i32 %55, 0
  br i1 %57, label %143, label %58

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  %60 = zext i32 %55 to i64
  br label %61

61:                                               ; preds = %58, %61
  %62 = phi i64 [ 0, %58 ], [ %65, %61 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  %63 = getelementptr inbounds %struct.MVert, ptr %53, i64 %62
  call void @mul_v3_m4v3(ptr noundef nonnull %4, ptr noundef nonnull %59, ptr noundef %63) #17
  %64 = trunc i64 %62 to i32
  call void @BLI_kdtree_insert(ptr noundef %56, i32 noundef %64, ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  %65 = add nuw nsw i64 %62, 1
  %66 = icmp eq i64 %65, %60
  br i1 %66, label %143, label %61, !llvm.loop !522

67:                                               ; preds = %2, %2
  %68 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %69 = load ptr, ptr %68, align 8, !tbaa !71
  %70 = getelementptr inbounds %struct.Curve, ptr %69, i64 0, i32 3
  %71 = tail call i32 @BKE_nurbList_verts_count_without_handles(ptr noundef nonnull %70) #17
  %72 = tail call ptr @BLI_kdtree_new(i32 noundef %71) #17
  %73 = load ptr, ptr %70, align 8, !tbaa !47
  %74 = icmp eq ptr %73, null
  br i1 %74, label %143, label %75

75:                                               ; preds = %67
  %76 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  %77 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  br label %78

78:                                               ; preds = %75, %113
  %79 = phi ptr [ %73, %75 ], [ %115, %113 ]
  %80 = phi i32 [ 0, %75 ], [ %114, %113 ]
  %81 = getelementptr inbounds %struct.Nurb, ptr %79, i64 0, i32 18
  %82 = load ptr, ptr %81, align 8, !tbaa !523
  %83 = icmp eq ptr %82, null
  %84 = getelementptr inbounds %struct.Nurb, ptr %79, i64 0, i32 6
  %85 = load i32, ptr %84, align 8, !tbaa !525
  br i1 %83, label %97, label %86

86:                                               ; preds = %78
  %87 = icmp eq i32 %85, 0
  br i1 %87, label %113, label %88

88:                                               ; preds = %86, %88
  %89 = phi ptr [ %95, %88 ], [ %82, %86 ]
  %90 = phi i32 [ %92, %88 ], [ %85, %86 ]
  %91 = phi i32 [ %94, %88 ], [ %80, %86 ]
  %92 = add i32 %90, -1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  %93 = getelementptr inbounds [3 x [3 x float]], ptr %89, i64 0, i64 1
  call void @mul_v3_m4v3(ptr noundef nonnull %5, ptr noundef nonnull %76, ptr noundef nonnull %93) #17
  %94 = add i32 %91, 1
  call void @BLI_kdtree_insert(ptr noundef %72, i32 noundef %91, ptr noundef nonnull %5) #17
  %95 = getelementptr inbounds %struct.BezTriple, ptr %89, i64 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  %96 = icmp eq i32 %92, 0
  br i1 %96, label %113, label %88, !llvm.loop !526

97:                                               ; preds = %78
  %98 = getelementptr inbounds %struct.Nurb, ptr %79, i64 0, i32 7
  %99 = load i32, ptr %98, align 4, !tbaa !527
  %100 = mul nsw i32 %99, %85
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %113, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.Nurb, ptr %79, i64 0, i32 17
  %104 = load ptr, ptr %103, align 8, !tbaa !528
  br label %105

105:                                              ; preds = %102, %105
  %106 = phi ptr [ %111, %105 ], [ %104, %102 ]
  %107 = phi i32 [ %109, %105 ], [ %100, %102 ]
  %108 = phi i32 [ %110, %105 ], [ %80, %102 ]
  %109 = add i32 %107, -1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #17
  call void @mul_v3_m4v3(ptr noundef nonnull %6, ptr noundef nonnull %77, ptr noundef %106) #17
  %110 = add i32 %108, 1
  call void @BLI_kdtree_insert(ptr noundef %72, i32 noundef %108, ptr noundef nonnull %6) #17
  %111 = getelementptr inbounds %struct.BPoint, ptr %106, i64 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #17
  %112 = icmp eq i32 %109, 0
  br i1 %112, label %113, label %105, !llvm.loop !529

113:                                              ; preds = %88, %105, %86, %97
  %114 = phi i32 [ %80, %97 ], [ %80, %86 ], [ %110, %105 ], [ %94, %88 ]
  %115 = load ptr, ptr %79, align 8, !tbaa !47
  %116 = icmp eq ptr %115, null
  br i1 %116, label %143, label %78, !llvm.loop !530

117:                                              ; preds = %2
  %118 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %119 = load ptr, ptr %118, align 8, !tbaa !71
  %120 = getelementptr inbounds %struct.Lattice, ptr %119, i64 0, i32 2
  %121 = load i16, ptr %120, align 8, !tbaa !418
  %122 = sext i16 %121 to i32
  %123 = getelementptr inbounds %struct.Lattice, ptr %119, i64 0, i32 3
  %124 = load i16, ptr %123, align 2, !tbaa !417
  %125 = sext i16 %124 to i32
  %126 = mul nsw i32 %125, %122
  %127 = getelementptr inbounds %struct.Lattice, ptr %119, i64 0, i32 4
  %128 = load i16, ptr %127, align 4, !tbaa !415
  %129 = sext i16 %128 to i32
  %130 = mul nsw i32 %126, %129
  %131 = tail call ptr @BLI_kdtree_new(i32 noundef %130) #17
  %132 = icmp eq i32 %130, 0
  br i1 %132, label %143, label %133

133:                                              ; preds = %117
  %134 = getelementptr inbounds %struct.Lattice, ptr %119, i64 0, i32 21
  %135 = load ptr, ptr %134, align 8, !tbaa !416
  %136 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  br label %137

137:                                              ; preds = %133, %137
  %138 = phi i32 [ 0, %133 ], [ %140, %137 ]
  %139 = phi ptr [ %135, %133 ], [ %141, %137 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #17
  call void @mul_v3_m4v3(ptr noundef nonnull %7, ptr noundef nonnull %136, ptr noundef %139) #17
  %140 = add nuw i32 %138, 1
  call void @BLI_kdtree_insert(ptr noundef %131, i32 noundef %138, ptr noundef nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #17
  %141 = getelementptr inbounds %struct.BPoint, ptr %139, i64 1
  %142 = icmp eq i32 %140, %130
  br i1 %142, label %143, label %137, !llvm.loop !531

143:                                              ; preds = %137, %113, %47, %61, %117, %67, %51, %25
  %144 = phi ptr [ %56, %51 ], [ %32, %25 ], [ %72, %67 ], [ %131, %117 ], [ %56, %61 ], [ %32, %47 ], [ %72, %113 ], [ %131, %137 ]
  %145 = phi i32 [ %55, %51 ], [ 0, %25 ], [ %71, %67 ], [ %130, %117 ], [ %55, %61 ], [ %48, %47 ], [ %71, %113 ], [ %130, %137 ]
  call void @BLI_kdtree_balance(ptr noundef %144) #17
  br label %146

146:                                              ; preds = %143, %2
  %147 = phi i32 [ 0, %2 ], [ %145, %143 ]
  %148 = phi ptr [ null, %2 ], [ %144, %143 ]
  store i32 %147, ptr %1, align 4, !tbaa !408
  ret ptr %148
}

declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @BLI_kdtree_new(i32 noundef) local_unnamed_addr #5

declare void @BLI_kdtree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @BLI_kdtree_balance(ptr noundef) local_unnamed_addr #5

declare i32 @BKE_nurbList_verts_count_without_handles(ptr noundef) local_unnamed_addr #5

declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @BKE_pose_copy_data(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

declare void @extern_local_matarar(ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @extern_local_object__modifiersForeachIDLink(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #4 {
  %4 = load ptr, ptr %2, align 8, !tbaa !47
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4
  %8 = load i16, ptr %7, align 8, !tbaa !479
  switch i16 %8, label %10 [
    i16 19785, label %9
    i16 17748, label %9
  ]

9:                                                ; preds = %6, %6
  tail call void @id_lib_extern(ptr noundef nonnull %4) #17
  br label %10

10:                                               ; preds = %6, %9, %3
  ret void
}

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

; Function Attrs: nounwind uwtable
define internal fastcc void @give_parvert(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #4 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  store float 0.000000e+00, ptr %2, align 4, !tbaa !34
  %6 = getelementptr inbounds float, ptr %2, i64 1
  store float 0.000000e+00, ptr %6, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %2, i64 2
  store float 0.000000e+00, ptr %7, align 4, !tbaa !34
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !69
  switch i16 %9, label %180 [
    i16 1, label %10
    i16 2, label %112
    i16 3, label %112
    i16 22, label %125
  ]

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 20
  %14 = load ptr, ptr %13, align 8, !tbaa !294
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct.BMEditMesh, ptr %14, i64 0, i32 5
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 120
  %18 = select i1 %15, ptr %17, ptr %16
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  %20 = icmp eq ptr %19, null
  br i1 %20, label %109, label %21

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 23
  %23 = load ptr, ptr %22, align 8, !tbaa !437
  %24 = tail call i32 %23(ptr noundef nonnull %19) #17
  %25 = icmp sgt i32 %24, %1
  br i1 %25, label %26, label %92

26:                                               ; preds = %21
  br i1 %15, label %45, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 14
  %29 = load i32, ptr %28, align 8, !tbaa !532
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load ptr, ptr %14, align 8, !tbaa !533
  %33 = getelementptr inbounds %struct.BMesh, ptr %32, i64 0, i32 8
  %34 = load i8, ptr %33, align 1, !tbaa !535
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %31
  tail call void @BLI_mutex_lock(ptr noundef nonnull @vparent_lock) #17
  %38 = load ptr, ptr %14, align 8, !tbaa !533
  %39 = getelementptr inbounds %struct.BMesh, ptr %38, i64 0, i32 8
  %40 = load i8, ptr %39, align 1, !tbaa !535
  %41 = and i8 %40, 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %38, i8 noundef zeroext 1) #17
  br label %44

44:                                               ; preds = %43, %37
  tail call void @BLI_mutex_unlock(ptr noundef nonnull @vparent_lock) #17
  br label %45

45:                                               ; preds = %31, %44, %27, %26
  %46 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %19, i32 noundef 7) #17
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %78, label %48

48:                                               ; preds = %45
  %49 = icmp sgt i32 %24, 0
  br i1 %49, label %50, label %92

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 46
  %52 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 76
  %53 = getelementptr inbounds float, ptr %4, i64 1
  %54 = getelementptr inbounds float, ptr %4, i64 2
  br label %55

55:                                               ; preds = %50, %74
  %56 = phi i32 [ 0, %50 ], [ %75, %74 ]
  %57 = phi i32 [ 0, %50 ], [ %76, %74 ]
  %58 = load ptr, ptr %51, align 8, !tbaa !537
  %59 = call ptr %58(ptr noundef nonnull %19, i32 noundef %57, i32 noundef 7) #17
  %60 = load i32, ptr %59, align 4, !tbaa !408
  %61 = icmp eq i32 %60, %1
  br i1 %61, label %62, label %74

62:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #17
  %63 = load ptr, ptr %52, align 8, !tbaa !538
  call void %63(ptr noundef nonnull %19, i32 noundef %57, ptr noundef nonnull %4) #17
  %64 = load float, ptr %4, align 4, !tbaa !34
  %65 = load float, ptr %2, align 4, !tbaa !34
  %66 = fadd float %64, %65
  store float %66, ptr %2, align 4, !tbaa !34
  %67 = load float, ptr %53, align 4, !tbaa !34
  %68 = load float, ptr %6, align 4, !tbaa !34
  %69 = fadd float %67, %68
  store float %69, ptr %6, align 4, !tbaa !34
  %70 = load float, ptr %54, align 4, !tbaa !34
  %71 = load float, ptr %7, align 4, !tbaa !34
  %72 = fadd float %70, %71
  store float %72, ptr %7, align 4, !tbaa !34
  %73 = add nsw i32 %56, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #17
  br label %74

74:                                               ; preds = %62, %55
  %75 = phi i32 [ %73, %62 ], [ %56, %55 ]
  %76 = add nuw nsw i32 %57, 1
  %77 = icmp eq i32 %76, %24
  br i1 %77, label %92, label %55, !llvm.loop !539

78:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #17
  %79 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 76
  %80 = load ptr, ptr %79, align 8, !tbaa !538
  call void %80(ptr noundef nonnull %19, i32 noundef %1, ptr noundef nonnull %5) #17
  %81 = load float, ptr %5, align 4, !tbaa !34
  %82 = load float, ptr %2, align 4, !tbaa !34
  %83 = fadd float %81, %82
  store float %83, ptr %2, align 4, !tbaa !34
  %84 = getelementptr inbounds float, ptr %5, i64 1
  %85 = load float, ptr %84, align 4, !tbaa !34
  %86 = load float, ptr %6, align 4, !tbaa !34
  %87 = fadd float %85, %86
  store float %87, ptr %6, align 4, !tbaa !34
  %88 = getelementptr inbounds float, ptr %5, i64 2
  %89 = load float, ptr %88, align 4, !tbaa !34
  %90 = load float, ptr %7, align 4, !tbaa !34
  %91 = fadd float %89, %90
  store float %91, ptr %7, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #17
  br label %92

92:                                               ; preds = %74, %48, %78, %21
  %93 = phi i32 [ 0, %21 ], [ 1, %78 ], [ 0, %48 ], [ %75, %74 ]
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %180, label %95

95:                                               ; preds = %92
  %96 = icmp sgt i32 %93, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %95
  %98 = sitofp i32 %93 to float
  %99 = fdiv float 1.000000e+00, %98
  %100 = load float, ptr %2, align 4, !tbaa !34
  %101 = fmul float %99, %100
  store float %101, ptr %2, align 4, !tbaa !34
  %102 = load float, ptr %6, align 4, !tbaa !34
  %103 = fmul float %99, %102
  store float %103, ptr %6, align 4, !tbaa !34
  %104 = load float, ptr %7, align 4, !tbaa !34
  %105 = fmul float %99, %104
  store float %105, ptr %7, align 4, !tbaa !34
  br label %180

106:                                              ; preds = %95
  %107 = getelementptr inbounds %struct.DerivedMesh, ptr %19, i64 0, i32 76
  %108 = load ptr, ptr %107, align 8, !tbaa !538
  call void %108(ptr noundef nonnull %19, i32 noundef 0, ptr noundef nonnull %2) #17
  br label %180

109:                                              ; preds = %10
  %110 = load ptr, ptr @stderr, align 8, !tbaa !47
  %111 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.give_parvert) #18
  br label %180

112:                                              ; preds = %3, %3
  %113 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  %114 = load ptr, ptr %113, align 8, !tbaa !58
  %115 = getelementptr inbounds %struct.CurveCache, ptr %114, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !540
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %120 = load ptr, ptr %119, align 8, !tbaa !71
  %121 = tail call ptr @BKE_curve_nurbs_get(ptr noundef %120) #17
  br label %122

122:                                              ; preds = %112, %118
  %123 = phi ptr [ %121, %118 ], [ %115, %112 ]
  %124 = tail call zeroext i8 @BKE_nurbList_index_get_co(ptr noundef %123, i32 noundef %1, ptr noundef nonnull %2) #17
  br label %180

125:                                              ; preds = %3
  %126 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %127 = load ptr, ptr %126, align 8, !tbaa !71
  %128 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  %129 = load ptr, ptr %128, align 8, !tbaa !58
  %130 = icmp eq ptr %129, null
  br i1 %130, label %133, label %131

131:                                              ; preds = %125
  %132 = tail call ptr @BKE_displist_find(ptr noundef nonnull %129, i32 noundef 7) #17
  br label %133

133:                                              ; preds = %125, %131
  %134 = phi ptr [ %132, %131 ], [ null, %125 ]
  %135 = icmp eq ptr %134, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.DispList, ptr %134, i64 0, i32 8
  %138 = load ptr, ptr %137, align 8, !tbaa !442
  br label %139

139:                                              ; preds = %133, %136
  %140 = phi ptr [ %138, %136 ], [ null, %133 ]
  %141 = getelementptr inbounds %struct.Lattice, ptr %127, i64 0, i32 26
  %142 = load ptr, ptr %141, align 8, !tbaa !300
  %143 = icmp eq ptr %142, null
  br i1 %143, label %146, label %144

144:                                              ; preds = %139
  %145 = load ptr, ptr %142, align 8, !tbaa !541
  br label %146

146:                                              ; preds = %144, %139
  %147 = phi ptr [ %145, %144 ], [ %127, %139 ]
  %148 = getelementptr inbounds %struct.Lattice, ptr %147, i64 0, i32 2
  %149 = load i16, ptr %148, align 8, !tbaa !418
  %150 = sext i16 %149 to i32
  %151 = getelementptr inbounds %struct.Lattice, ptr %147, i64 0, i32 3
  %152 = load i16, ptr %151, align 2, !tbaa !417
  %153 = sext i16 %152 to i32
  %154 = mul nsw i32 %153, %150
  %155 = getelementptr inbounds %struct.Lattice, ptr %147, i64 0, i32 4
  %156 = load i16, ptr %155, align 4, !tbaa !415
  %157 = sext i16 %156 to i32
  %158 = mul nsw i32 %154, %157
  %159 = icmp sgt i32 %158, %1
  br i1 %159, label %160, label %180

160:                                              ; preds = %146
  %161 = icmp eq ptr %140, null
  br i1 %161, label %170, label %162

162:                                              ; preds = %160
  %163 = sext i32 %1 to i64
  %164 = getelementptr inbounds [3 x float], ptr %140, i64 %163
  %165 = load float, ptr %164, align 4, !tbaa !34
  store float %165, ptr %2, align 4, !tbaa !34
  %166 = getelementptr inbounds float, ptr %164, i64 1
  %167 = load float, ptr %166, align 4, !tbaa !34
  store float %167, ptr %6, align 4, !tbaa !34
  %168 = getelementptr inbounds float, ptr %164, i64 2
  %169 = load float, ptr %168, align 4, !tbaa !34
  store float %169, ptr %7, align 4, !tbaa !34
  br label %180

170:                                              ; preds = %160
  %171 = getelementptr inbounds %struct.Lattice, ptr %147, i64 0, i32 21
  %172 = load ptr, ptr %171, align 8, !tbaa !416
  %173 = sext i32 %1 to i64
  %174 = getelementptr inbounds %struct.BPoint, ptr %172, i64 %173
  %175 = load float, ptr %174, align 4, !tbaa !34
  store float %175, ptr %2, align 4, !tbaa !34
  %176 = getelementptr inbounds float, ptr %174, i64 1
  %177 = load float, ptr %176, align 4, !tbaa !34
  store float %177, ptr %6, align 4, !tbaa !34
  %178 = getelementptr inbounds float, ptr %174, i64 2
  %179 = load float, ptr %178, align 4, !tbaa !34
  store float %179, ptr %7, align 4, !tbaa !34
  br label %180

180:                                              ; preds = %146, %170, %162, %3, %109, %97, %106, %92, %122
  ret void
}

declare i32 @where_on_path(ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @quat_apply_track(ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #5

declare float @normalize_qt(ptr noundef) local_unnamed_addr #5

declare void @quat_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @BLI_mutex_lock(ptr noundef) local_unnamed_addr #5

declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

declare void @BLI_mutex_unlock(ptr noundef) local_unnamed_addr #5

declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

declare ptr @BKE_curve_nurbs_get(ptr noundef) local_unnamed_addr #5

declare zeroext i8 @BKE_nurbList_index_get_co(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @BKE_displist_find(ptr noundef, i32 noundef) local_unnamed_addr #5

declare float @tri_to_quat(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @mid_v3_v3v3v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @BKE_key_add(ptr noundef) local_unnamed_addr #5

declare ptr @BKE_keyblock_add_ctime(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

declare void @BKE_key_convert_from_mesh(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @BKE_key_evaluate_object(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @BKE_key_convert_from_curve(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @BKE_key_convert_from_lattice(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nounwind }
attributes #18 = { cold }

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
!38 = !{!39, !42, i64 1040}
!39 = !{!"Object", !40, i64 0, !41, i64 120, !41, i64 128, !42, i64 136, !42, i64 138, !43, i64 140, !43, i64 144, !43, i64 148, !36, i64 152, !41, i64 216, !41, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !41, i64 280, !41, i64 288, !41, i64 296, !41, i64 304, !44, i64 312, !41, i64 360, !45, i64 368, !45, i64 384, !45, i64 400, !45, i64 416, !43, i64 432, !43, i64 436, !41, i64 440, !41, i64 448, !43, i64 456, !43, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !35, i64 616, !35, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !43, i64 944, !42, i64 948, !42, i64 950, !42, i64 952, !42, i64 954, !42, i64 956, !42, i64 958, !42, i64 960, !42, i64 962, !42, i64 964, !36, i64 966, !36, i64 967, !43, i64 968, !43, i64 972, !43, i64 976, !43, i64 980, !43, i64 984, !35, i64 988, !35, i64 992, !35, i64 996, !35, i64 1000, !35, i64 1004, !35, i64 1008, !35, i64 1012, !35, i64 1016, !35, i64 1020, !35, i64 1024, !35, i64 1028, !35, i64 1032, !42, i64 1036, !42, i64 1038, !42, i64 1040, !36, i64 1042, !36, i64 1043, !42, i64 1044, !36, i64 1046, !36, i64 1047, !35, i64 1048, !35, i64 1052, !45, i64 1056, !45, i64 1072, !45, i64 1088, !45, i64 1104, !35, i64 1120, !42, i64 1124, !42, i64 1126, !36, i64 1128, !43, i64 1144, !43, i64 1148, !41, i64 1152, !36, i64 1160, !36, i64 1161, !42, i64 1162, !36, i64 1164, !45, i64 1176, !45, i64 1192, !45, i64 1208, !45, i64 1224, !41, i64 1240, !41, i64 1248, !41, i64 1256, !36, i64 1264, !36, i64 1265, !42, i64 1266, !35, i64 1268, !41, i64 1272, !41, i64 1280, !41, i64 1288, !41, i64 1296, !46, i64 1304, !46, i64 1312, !43, i64 1320, !43, i64 1324, !45, i64 1328, !45, i64 1344, !41, i64 1360, !41, i64 1368, !41, i64 1376, !36, i64 1384, !41, i64 1392, !45, i64 1400, !41, i64 1416}
!40 = !{!"ID", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !36, i64 32, !42, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !41, i64 112}
!41 = !{!"any pointer", !36, i64 0}
!42 = !{!"short", !36, i64 0}
!43 = !{!"int", !36, i64 0}
!44 = !{!"bAnimVizSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44}
!45 = !{!"ListBase", !41, i64 0, !41, i64 8}
!46 = !{!"long", !36, i64 0}
!47 = !{!41, !41, i64 0}
!48 = !{!49, !41, i64 32}
!49 = !{!"Base", !41, i64 0, !41, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !42, i64 28, !42, i64 30, !41, i64 32}
!50 = !{!39, !43, i64 944}
!51 = !{!49, !43, i64 16}
!52 = distinct !{!52, !53, !54}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = distinct !{!55, !53, !54}
!56 = !{!39, !41, i64 1248}
!57 = !{!39, !41, i64 1152}
!58 = !{!39, !41, i64 1280}
!59 = !{!60, !41, i64 48}
!60 = !{!"CurveCache", !45, i64 0, !45, i64 16, !45, i64 32, !41, i64 48}
!61 = distinct !{!61, !53, !54}
!62 = !{!63, !41, i64 112}
!63 = !{!"HookModifierData", !64, i64 0, !41, i64 112, !36, i64 120, !36, i64 184, !36, i64 248, !35, i64 260, !41, i64 264, !43, i64 272, !35, i64 276, !36, i64 280}
!64 = !{!"ModifierData", !41, i64 0, !41, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !36, i64 32, !41, i64 96, !41, i64 104}
!65 = !{!39, !41, i64 288}
!66 = !{!36, !36, i64 0}
!67 = !{!68, !43, i64 72}
!68 = !{!"ModifierTypeInfo", !36, i64 0, !36, i64 32, !43, i64 64, !43, i64 68, !43, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !41, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !41, i64 208}
!69 = !{!39, !42, i64 136}
!70 = !{!64, !43, i64 16}
!71 = !{!39, !41, i64 296}
!72 = distinct !{!72, !53, !54}
!73 = !{!74, !41, i64 336}
!74 = !{!"SoftBody", !43, i64 0, !43, i64 4, !41, i64 8, !41, i64 16, !36, i64 24, !36, i64 25, !42, i64 26, !35, i64 28, !36, i64 32, !35, i64 96, !35, i64 100, !35, i64 104, !35, i64 108, !35, i64 112, !35, i64 116, !35, i64 120, !35, i64 124, !35, i64 128, !42, i64 132, !36, i64 134, !42, i64 198, !35, i64 200, !35, i64 204, !36, i64 208, !43, i64 272, !43, i64 276, !43, i64 280, !42, i64 284, !42, i64 286, !41, i64 288, !43, i64 296, !43, i64 300, !35, i64 304, !35, i64 308, !35, i64 312, !35, i64 316, !42, i64 320, !42, i64 322, !42, i64 324, !42, i64 326, !42, i64 328, !42, i64 330, !42, i64 332, !42, i64 334, !41, i64 336, !35, i64 344, !35, i64 348, !41, i64 352, !45, i64 360, !41, i64 376, !36, i64 384, !36, i64 396, !36, i64 432, !43, i64 468}
!75 = !{!74, !41, i64 352}
!76 = !{!74, !41, i64 376}
!77 = distinct !{!77, !53, !54}
!78 = !{!79, !41, i64 24}
!79 = !{!"ParticleSystem", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !45, i64 72, !45, i64 88, !41, i64 104, !41, i64 112, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !45, i64 152, !36, i64 168, !36, i64 232, !35, i64 296, !35, i64 300, !35, i64 304, !43, i64 308, !43, i64 312, !43, i64 316, !43, i64 320, !43, i64 324, !43, i64 328, !43, i64 332, !43, i64 336, !42, i64 340, !42, i64 342, !42, i64 344, !42, i64 346, !36, i64 348, !36, i64 540, !42, i64 564, !42, i64 566, !41, i64 568, !41, i64 576, !45, i64 584, !41, i64 600, !41, i64 608, !43, i64 616, !43, i64 620, !41, i64 624, !41, i64 632, !41, i64 640, !35, i64 648, !35, i64 652}
!80 = !{!79, !41, i64 32}
!81 = !{!79, !41, i64 16}
!82 = !{!83, !42, i64 160}
!83 = !{!"ParticleSettings", !40, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !43, i64 152, !43, i64 156, !42, i64 160, !42, i64 162, !42, i64 164, !42, i64 166, !42, i64 168, !42, i64 170, !42, i64 172, !42, i64 174, !43, i64 176, !43, i64 180, !42, i64 184, !42, i64 186, !42, i64 188, !42, i64 190, !42, i64 192, !42, i64 194, !42, i64 196, !42, i64 198, !42, i64 200, !42, i64 202, !42, i64 204, !42, i64 206, !42, i64 208, !42, i64 210, !42, i64 212, !42, i64 214, !42, i64 216, !42, i64 218, !42, i64 220, !42, i64 222, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !35, i64 232, !35, i64 236, !36, i64 240, !36, i64 248, !35, i64 256, !35, i64 260, !35, i64 264, !42, i64 268, !42, i64 270, !35, i64 272, !35, i64 276, !35, i64 280, !35, i64 284, !35, i64 288, !35, i64 292, !35, i64 296, !35, i64 300, !35, i64 304, !35, i64 308, !35, i64 312, !35, i64 316, !36, i64 320, !43, i64 324, !43, i64 328, !43, i64 332, !43, i64 336, !42, i64 340, !36, i64 342, !35, i64 348, !35, i64 352, !35, i64 356, !35, i64 360, !35, i64 364, !35, i64 368, !35, i64 372, !36, i64 376, !35, i64 388, !35, i64 392, !35, i64 396, !35, i64 400, !35, i64 404, !35, i64 408, !35, i64 412, !36, i64 416, !35, i64 428, !35, i64 432, !35, i64 436, !35, i64 440, !43, i64 444, !43, i64 448, !35, i64 452, !35, i64 456, !35, i64 460, !35, i64 464, !35, i64 468, !35, i64 472, !35, i64 476, !35, i64 480, !35, i64 484, !35, i64 488, !35, i64 492, !35, i64 496, !35, i64 500, !35, i64 504, !35, i64 508, !35, i64 512, !35, i64 516, !35, i64 520, !35, i64 524, !35, i64 528, !35, i64 532, !35, i64 536, !35, i64 540, !35, i64 544, !35, i64 548, !36, i64 552, !35, i64 560, !35, i64 564, !43, i64 568, !43, i64 572, !36, i64 576, !41, i64 720, !45, i64 728, !41, i64 744, !41, i64 752, !41, i64 760, !41, i64 768, !41, i64 776, !41, i64 784, !42, i64 792, !36, i64 794}
!84 = !{!79, !43, i64 320}
!85 = !{!86, !41, i64 112}
!86 = !{!"ParticleData", !87, i64 0, !87, i64 56, !41, i64 112, !41, i64 120, !41, i64 128, !43, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !43, i64 152, !43, i64 156, !36, i64 160, !35, i64 176, !35, i64 180, !35, i64 184, !43, i64 188, !43, i64 192, !42, i64 196, !42, i64 198}
!87 = !{!"ParticleKey", !36, i64 0, !36, i64 12, !36, i64 24, !36, i64 40, !35, i64 52}
!88 = distinct !{!88, !53, !54}
!89 = !{!86, !41, i64 120}
!90 = !{!86, !41, i64 128}
!91 = !{!86, !43, i64 136}
!92 = distinct !{!92, !53, !54}
!93 = !{!79, !41, i64 104}
!94 = !{!79, !41, i64 40}
!95 = !{!79, !41, i64 600}
!96 = !{!79, !41, i64 568}
!97 = !{!79, !41, i64 576}
!98 = !{!99, !41, i64 144}
!99 = !{!"ClothModifierData", !64, i64 0, !41, i64 112, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !45, i64 152}
!100 = !{!101, !41, i64 112}
!101 = !{!"ParticleSystemModifierData", !64, i64 0, !41, i64 112, !41, i64 120, !43, i64 128, !43, i64 132, !43, i64 136, !42, i64 140, !42, i64 142}
!102 = !{!103, !41, i64 120}
!103 = !{!"DynamicPaintModifierData", !64, i64 0, !41, i64 112, !41, i64 120, !43, i64 128, !43, i64 132}
!104 = !{!105, !41, i64 16}
!105 = !{!"DynamicPaintBrushSettings", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !43, i64 32, !43, i64 36, !35, i64 40, !35, i64 44, !35, i64 48, !35, i64 52, !35, i64 56, !35, i64 60, !35, i64 64, !35, i64 68, !41, i64 72, !41, i64 80, !42, i64 88, !42, i64 90, !42, i64 92, !42, i64 94, !35, i64 96, !35, i64 100, !35, i64 104, !35, i64 108}
!106 = !{!107, !43, i64 140}
!107 = !{!"SmokeModifierData", !64, i64 0, !41, i64 112, !41, i64 120, !41, i64 128, !35, i64 136, !43, i64 140}
!108 = !{!107, !41, i64 120}
!109 = !{!110, !41, i64 16}
!110 = !{!"SmokeFlowSettings", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !43, i64 40, !35, i64 44, !35, i64 48, !35, i64 52, !35, i64 56, !36, i64 60, !35, i64 72, !35, i64 76, !35, i64 80, !35, i64 84, !35, i64 88, !43, i64 92, !35, i64 96, !35, i64 100, !43, i64 104, !36, i64 108, !42, i64 172, !42, i64 174, !42, i64 176, !42, i64 178, !43, i64 180}
!111 = distinct !{!111, !53, !54}
!112 = !{!113, !41, i64 128}
!113 = !{!"Mesh", !40, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !41, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !41, i64 208, !41, i64 216, !41, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !114, i64 280, !114, i64 480, !114, i64 680, !114, i64 880, !114, i64 1080, !43, i64 1280, !43, i64 1284, !43, i64 1288, !43, i64 1292, !43, i64 1296, !43, i64 1300, !43, i64 1304, !36, i64 1308, !36, i64 1320, !36, i64 1332, !43, i64 1344, !42, i64 1348, !42, i64 1350, !35, i64 1352, !43, i64 1356, !36, i64 1360, !36, i64 1361, !36, i64 1362, !36, i64 1363, !36, i64 1364, !36, i64 1365, !42, i64 1366, !41, i64 1368}
!114 = !{!"CustomData", !41, i64 0, !36, i64 8, !43, i64 172, !43, i64 176, !43, i64 180, !41, i64 184, !41, i64 192}
!115 = !{!116, !41, i64 128}
!116 = !{!"Curve", !40, i64 0, !41, i64 120, !41, i64 128, !45, i64 136, !41, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !36, i64 208, !36, i64 220, !36, i64 232, !42, i64 244, !42, i64 246, !42, i64 248, !42, i64 250, !35, i64 252, !35, i64 256, !43, i64 260, !42, i64 264, !42, i64 266, !43, i64 268, !35, i64 272, !35, i64 276, !35, i64 280, !42, i64 284, !42, i64 286, !42, i64 288, !42, i64 290, !43, i64 292, !43, i64 296, !36, i64 300, !42, i64 304, !36, i64 306, !36, i64 307, !35, i64 308, !35, i64 312, !35, i64 316, !35, i64 320, !35, i64 324, !35, i64 328, !35, i64 332, !35, i64 336, !35, i64 340, !35, i64 344, !43, i64 348, !43, i64 352, !43, i64 356, !43, i64 360, !43, i64 364, !41, i64 368, !41, i64 376, !36, i64 384, !41, i64 448, !41, i64 456, !41, i64 464, !41, i64 472, !41, i64 480, !43, i64 488, !43, i64 492, !41, i64 496, !117, i64 504, !35, i64 512, !35, i64 516, !35, i64 520, !36, i64 524, !36, i64 525, !36, i64 526}
!117 = !{!"CharInfo", !42, i64 0, !42, i64 2, !36, i64 4, !36, i64 5, !42, i64 6}
!118 = !{!119, !43, i64 96}
!119 = !{!"BoundBox", !36, i64 0, !43, i64 96, !43, i64 100}
!120 = !{!39, !41, i64 264}
!121 = !{!39, !41, i64 1296}
!122 = !{!123, !43, i64 1020}
!123 = !{!"DerivedMesh", !114, i64 0, !114, i64 200, !114, i64 400, !114, i64 600, !114, i64 800, !43, i64 1000, !43, i64 1004, !43, i64 1008, !43, i64 1012, !43, i64 1016, !43, i64 1020, !43, i64 1024, !41, i64 1032, !41, i64 1040, !43, i64 1048, !35, i64 1052, !43, i64 1056, !43, i64 1060, !41, i64 1064, !36, i64 1072, !41, i64 1080, !41, i64 1088, !41, i64 1096, !41, i64 1104, !41, i64 1112, !41, i64 1120, !41, i64 1128, !41, i64 1136, !41, i64 1144, !41, i64 1152, !41, i64 1160, !41, i64 1168, !41, i64 1176, !41, i64 1184, !41, i64 1192, !41, i64 1200, !41, i64 1208, !41, i64 1216, !41, i64 1224, !41, i64 1232, !41, i64 1240, !41, i64 1248, !41, i64 1256, !41, i64 1264, !41, i64 1272, !41, i64 1280, !41, i64 1288, !41, i64 1296, !41, i64 1304, !41, i64 1312, !41, i64 1320, !41, i64 1328, !41, i64 1336, !41, i64 1344, !41, i64 1352, !41, i64 1360, !41, i64 1368, !41, i64 1376, !41, i64 1384, !41, i64 1392, !41, i64 1400, !41, i64 1408, !41, i64 1416, !41, i64 1424, !41, i64 1432, !41, i64 1440, !41, i64 1448, !41, i64 1456, !41, i64 1464, !41, i64 1472, !41, i64 1480, !41, i64 1488, !41, i64 1496, !41, i64 1504, !41, i64 1512, !41, i64 1520, !41, i64 1528, !41, i64 1536, !41, i64 1544, !41, i64 1552, !41, i64 1560, !41, i64 1568, !41, i64 1576, !41, i64 1584, !41, i64 1592, !41, i64 1600, !41, i64 1608, !41, i64 1616, !41, i64 1624, !41, i64 1632, !41, i64 1640, !41, i64 1648, !41, i64 1656, !41, i64 1664, !41, i64 1672, !41, i64 1680}
!124 = !{!123, !41, i64 1680}
!125 = !{!39, !41, i64 1288}
!126 = !{!40, !43, i64 100}
!127 = !{!40, !41, i64 24}
!128 = !{!39, !41, i64 440}
!129 = !{!39, !43, i64 456}
!130 = !{!131, !43, i64 100}
!131 = !{!"Material", !40, i64 0, !41, i64 120, !42, i64 128, !42, i64 130, !35, i64 132, !35, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !35, i64 200, !35, i64 204, !35, i64 208, !35, i64 212, !35, i64 216, !35, i64 220, !132, i64 224, !133, i64 312, !35, i64 328, !35, i64 332, !35, i64 336, !35, i64 340, !35, i64 344, !35, i64 348, !35, i64 352, !42, i64 356, !42, i64 358, !42, i64 360, !36, i64 362, !36, i64 363, !35, i64 364, !35, i64 368, !42, i64 372, !42, i64 374, !35, i64 376, !35, i64 380, !35, i64 384, !35, i64 388, !42, i64 392, !42, i64 394, !43, i64 396, !43, i64 400, !43, i64 404, !43, i64 408, !42, i64 412, !42, i64 414, !42, i64 416, !42, i64 418, !35, i64 420, !35, i64 424, !35, i64 428, !35, i64 432, !35, i64 436, !35, i64 440, !35, i64 444, !35, i64 448, !35, i64 452, !35, i64 456, !36, i64 460, !35, i64 524, !35, i64 528, !35, i64 532, !43, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !42, i64 544, !42, i64 546, !42, i64 548, !36, i64 550, !36, i64 551, !42, i64 552, !42, i64 554, !35, i64 556, !35, i64 560, !36, i64 564, !35, i64 580, !35, i64 584, !42, i64 588, !42, i64 590, !41, i64 592, !41, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !42, i64 612, !42, i64 614, !35, i64 616, !35, i64 620, !36, i64 624, !41, i64 768, !41, i64 776, !41, i64 784, !41, i64 792, !35, i64 800, !35, i64 804, !35, i64 808, !35, i64 812, !35, i64 816, !42, i64 820, !42, i64 822, !36, i64 824, !36, i64 836, !35, i64 848, !35, i64 852, !35, i64 856, !35, i64 860, !35, i64 864, !35, i64 868, !35, i64 872, !42, i64 876, !42, i64 878, !43, i64 880, !42, i64 884, !42, i64 886, !36, i64 888, !42, i64 904, !42, i64 906, !42, i64 908, !42, i64 910, !42, i64 912, !36, i64 914, !41, i64 920, !45, i64 928}
!132 = !{!"VolumeSettings", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !35, i64 52, !35, i64 56, !35, i64 60, !42, i64 64, !42, i64 66, !42, i64 68, !42, i64 70, !35, i64 72, !35, i64 76, !35, i64 80, !35, i64 84}
!133 = !{!"GameSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!134 = distinct !{!134, !53, !54}
!135 = !{!39, !41, i64 448}
!136 = !{!39, !41, i64 1392}
!137 = !{!39, !41, i64 120}
!138 = !{!39, !41, i64 280}
!139 = !{!140, !43, i64 100}
!140 = !{!"bAction", !40, i64 0, !45, i64 120, !45, i64 136, !45, i64 152, !45, i64 168, !43, i64 184, !43, i64 188, !43, i64 192, !43, i64 196}
!141 = !{!39, !41, i64 304}
!142 = !{!39, !41, i64 400}
!143 = !{!39, !41, i64 360}
!144 = !{!39, !41, i64 1240}
!145 = !{!39, !41, i64 1328}
!146 = !{!39, !41, i64 1344}
!147 = !{!148, !41, i64 0}
!148 = !{!"Global", !41, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !45, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !42, i64 2084, !42, i64 2086, !42, i64 2088, !36, i64 2090, !42, i64 2092, !43, i64 2096, !43, i64 2100, !36, i64 2104, !43, i64 2108, !43, i64 2112, !36, i64 2116}
!149 = distinct !{!149, !53, !54}
!150 = !{!39, !41, i64 232}
!151 = !{!39, !41, i64 248}
!152 = !{!39, !41, i64 240}
!153 = !{!39, !41, i64 216}
!154 = !{!116, !41, i64 160}
!155 = !{!116, !41, i64 168}
!156 = !{!116, !41, i64 176}
!157 = !{!158, !41, i64 104}
!158 = !{!"bConstraintTypeInfo", !42, i64 0, !42, i64 2, !36, i64 4, !36, i64 36, !41, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !41, i64 128}
!159 = !{!160, !41, i64 16}
!160 = !{!"bConstraintTarget", !41, i64 0, !41, i64 8, !41, i64 16, !36, i64 24, !36, i64 88, !42, i64 152, !42, i64 154, !42, i64 156, !42, i64 158}
!161 = distinct !{!161, !53, !54}
!162 = !{!158, !41, i64 112}
!163 = distinct !{!163, !53, !54}
!164 = !{!165, !41, i64 184}
!165 = !{!"bPoseChannel", !41, i64 0, !41, i64 8, !41, i64 16, !45, i64 24, !36, i64 40, !42, i64 104, !42, i64 106, !42, i64 108, !42, i64 110, !36, i64 112, !36, i64 113, !36, i64 114, !41, i64 120, !41, i64 128, !41, i64 136, !45, i64 144, !45, i64 160, !41, i64 176, !41, i64 184, !41, i64 192, !36, i64 200, !36, i64 212, !36, i64 224, !36, i64 236, !36, i64 252, !35, i64 264, !42, i64 268, !42, i64 270, !36, i64 272, !36, i64 336, !36, i64 400, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !35, i64 524, !35, i64 528, !35, i64 532, !41, i64 536}
!166 = distinct !{!166, !53, !54}
!167 = distinct !{!167, !53, !54}
!168 = distinct !{!168, !53, !54}
!169 = distinct !{!169, !53, !54}
!170 = !{!39, !41, i64 1224}
!171 = !{!172, !41, i64 16}
!172 = !{!"ParticleTarget", !41, i64 0, !41, i64 8, !41, i64 16, !43, i64 24, !42, i64 28, !42, i64 30, !35, i64 32, !35, i64 36}
!173 = distinct !{!173, !53, !54}
!174 = !{!79, !41, i64 128}
!175 = !{!83, !41, i64 752}
!176 = !{!83, !42, i64 168}
!177 = !{!178, !41, i64 0}
!178 = !{!"BoidParticle", !41, i64 0, !179, i64 8, !36, i64 28, !36, i64 40, !35, i64 52}
!179 = !{!"BoidData", !35, i64 0, !36, i64 4, !42, i64 16, !42, i64 18}
!180 = distinct !{!180, !53, !54}
!181 = !{!83, !41, i64 128}
!182 = distinct !{!182, !53, !54}
!183 = !{!184, !43, i64 16}
!184 = !{!"BoidRule", !41, i64 0, !41, i64 8, !43, i64 16, !43, i64 20, !36, i64 24}
!185 = !{!186, !41, i64 56}
!186 = !{!"BoidRuleGoalAvoid", !184, i64 0, !41, i64 56, !43, i64 64, !35, i64 68, !43, i64 72, !43, i64 76}
!187 = !{!188, !41, i64 56}
!188 = !{!"BoidRuleFollowLeader", !184, i64 0, !41, i64 56, !36, i64 64, !36, i64 76, !35, i64 88, !35, i64 92, !43, i64 96, !43, i64 100}
!189 = distinct !{!189, !53, !54}
!190 = !{!79, !41, i64 144}
!191 = !{!79, !41, i64 0}
!192 = distinct !{!192, !53, !54}
!193 = !{!194, !41, i64 16}
!194 = !{!"LodLevel", !41, i64 0, !41, i64 8, !41, i64 16, !43, i64 24, !35, i64 28}
!195 = distinct !{!195, !53, !54}
!196 = distinct !{!196, !53, !54}
!197 = !{!198, !41, i64 8}
!198 = !{!"MTex", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !41, i64 8, !41, i64 16, !36, i64 24, !36, i64 88, !36, i64 89, !36, i64 90, !36, i64 91, !36, i64 92, !36, i64 104, !35, i64 116, !42, i64 120, !42, i64 122, !42, i64 124, !42, i64 126, !42, i64 128, !42, i64 130, !36, i64 132, !36, i64 133, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !35, i64 200, !35, i64 204, !35, i64 208, !35, i64 212, !35, i64 216, !35, i64 220, !35, i64 224, !35, i64 228, !35, i64 232, !35, i64 236, !35, i64 240, !35, i64 244, !35, i64 248, !35, i64 252, !35, i64 256, !35, i64 260, !35, i64 264, !35, i64 268, !35, i64 272, !35, i64 276, !35, i64 280, !35, i64 284, !35, i64 288, !35, i64 292, !35, i64 296, !35, i64 300, !35, i64 304, !35, i64 308}
!199 = distinct !{!199, !53, !54}
!200 = !{!201, !41, i64 368}
!201 = !{!"Tex", !40, i64 0, !41, i64 120, !35, i64 128, !35, i64 132, !35, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !35, i64 200, !35, i64 204, !35, i64 208, !35, i64 212, !42, i64 216, !42, i64 218, !42, i64 220, !42, i64 222, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !42, i64 232, !42, i64 234, !35, i64 236, !35, i64 240, !35, i64 244, !35, i64 248, !43, i64 252, !43, i64 256, !42, i64 260, !42, i64 262, !42, i64 264, !42, i64 266, !43, i64 268, !43, i64 272, !43, i64 276, !43, i64 280, !35, i64 284, !35, i64 288, !35, i64 292, !202, i64 296, !41, i64 336, !41, i64 344, !41, i64 352, !41, i64 360, !41, i64 368, !41, i64 376, !41, i64 384, !41, i64 392, !41, i64 400, !36, i64 408, !36, i64 409}
!202 = !{!"ImageUser", !41, i64 0, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !42, i64 28, !42, i64 30, !42, i64 32, !42, i64 34, !43, i64 36}
!203 = !{!204, !41, i64 0}
!204 = !{!"EnvMap", !41, i64 0, !41, i64 8, !36, i64 16, !36, i64 64, !36, i64 128, !42, i64 164, !42, i64 166, !35, i64 168, !35, i64 172, !35, i64 176, !43, i64 180, !42, i64 184, !42, i64 186, !43, i64 188, !43, i64 192, !42, i64 196, !42, i64 198}
!205 = !{!201, !41, i64 384}
!206 = !{!207, !41, i64 24}
!207 = !{!"PointDensity", !42, i64 0, !42, i64 2, !35, i64 4, !35, i64 8, !42, i64 12, !42, i64 14, !43, i64 16, !43, i64 20, !41, i64 24, !43, i64 32, !42, i64 36, !42, i64 38, !41, i64 40, !41, i64 48, !35, i64 56, !42, i64 60, !42, i64 62, !42, i64 64, !36, i64 66, !35, i64 72, !35, i64 76, !35, i64 80, !35, i64 84, !41, i64 88, !41, i64 96}
!208 = !{!201, !41, i64 392}
!209 = !{!210, !41, i64 32}
!210 = !{!"VoxelData", !36, i64 0, !43, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !43, i64 28, !41, i64 32, !35, i64 40, !43, i64 44, !36, i64 48, !41, i64 1072, !43, i64 1080, !43, i64 1084}
!211 = distinct !{!211, !53, !54}
!212 = !{!213, !41, i64 24}
!213 = !{!"World", !40, i64 0, !41, i64 120, !42, i64 128, !42, i64 130, !42, i64 132, !42, i64 134, !35, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !42, i64 200, !42, i64 202, !42, i64 204, !42, i64 206, !42, i64 208, !42, i64 210, !42, i64 212, !42, i64 214, !35, i64 216, !35, i64 220, !35, i64 224, !35, i64 228, !35, i64 232, !35, i64 236, !35, i64 240, !35, i64 244, !35, i64 248, !35, i64 252, !35, i64 256, !35, i64 260, !42, i64 264, !42, i64 266, !42, i64 268, !42, i64 270, !35, i64 272, !35, i64 276, !35, i64 280, !35, i64 284, !42, i64 288, !42, i64 290, !42, i64 292, !42, i64 294, !35, i64 296, !35, i64 300, !35, i64 304, !35, i64 308, !35, i64 312, !35, i64 316, !35, i64 320, !42, i64 324, !42, i64 326, !42, i64 328, !42, i64 330, !42, i64 332, !42, i64 334, !41, i64 336, !41, i64 344, !41, i64 352, !36, i64 360, !42, i64 504, !42, i64 506, !36, i64 508, !41, i64 512, !41, i64 520}
!214 = distinct !{!214, !53, !54}
!215 = distinct !{!215, !53, !54}
!216 = !{!217, !41, i64 24}
!217 = !{!"Scene", !40, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !45, i64 152, !41, i64 168, !41, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !43, i64 232, !43, i64 236, !43, i64 240, !42, i64 244, !36, i64 246, !36, i64 247, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !218, i64 280, !227, i64 4264, !45, i64 4296, !45, i64 4312, !41, i64 4328, !41, i64 4336, !41, i64 4344, !41, i64 4352, !41, i64 4360, !41, i64 4368, !42, i64 4376, !42, i64 4378, !43, i64 4380, !45, i64 4384, !228, i64 4400, !229, i64 4416, !232, i64 4600, !41, i64 4608, !233, i64 4616, !41, i64 4640, !46, i64 4648, !46, i64 4656, !220, i64 4664, !221, i64 4824, !234, i64 4888, !41, i64 4952}
!218 = !{!"RenderData", !219, i64 0, !41, i64 248, !41, i64 256, !222, i64 264, !223, i64 328, !43, i64 400, !43, i64 404, !43, i64 408, !35, i64 412, !43, i64 416, !43, i64 420, !43, i64 424, !43, i64 428, !42, i64 432, !42, i64 434, !35, i64 436, !35, i64 440, !35, i64 444, !35, i64 448, !35, i64 452, !42, i64 456, !42, i64 458, !42, i64 460, !42, i64 462, !42, i64 464, !42, i64 466, !43, i64 468, !42, i64 472, !42, i64 474, !42, i64 476, !42, i64 478, !42, i64 480, !42, i64 482, !43, i64 484, !43, i64 488, !42, i64 492, !42, i64 494, !43, i64 496, !43, i64 500, !42, i64 504, !42, i64 506, !42, i64 508, !42, i64 510, !42, i64 512, !36, i64 514, !36, i64 515, !43, i64 516, !43, i64 520, !43, i64 524, !42, i64 528, !42, i64 530, !42, i64 532, !42, i64 534, !42, i64 536, !42, i64 538, !42, i64 540, !42, i64 542, !224, i64 544, !224, i64 560, !225, i64 576, !45, i64 592, !42, i64 608, !42, i64 610, !35, i64 612, !35, i64 616, !35, i64 620, !35, i64 624, !43, i64 628, !35, i64 632, !35, i64 636, !35, i64 640, !35, i64 644, !42, i64 648, !42, i64 650, !42, i64 652, !42, i64 654, !42, i64 656, !42, i64 658, !35, i64 660, !35, i64 664, !42, i64 668, !42, i64 670, !35, i64 672, !35, i64 676, !36, i64 680, !43, i64 1704, !42, i64 1708, !42, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !43, i64 2520, !42, i64 2524, !42, i64 2526, !35, i64 2528, !35, i64 2532, !42, i64 2536, !42, i64 2538, !35, i64 2540, !42, i64 2544, !42, i64 2546, !43, i64 2548, !42, i64 2552, !42, i64 2554, !42, i64 2556, !42, i64 2558, !35, i64 2560, !35, i64 2564, !41, i64 2568, !43, i64 2576, !35, i64 2580, !36, i64 2584, !226, i64 2616, !43, i64 3976, !43, i64 3980}
!219 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !42, i64 8, !42, i64 10, !35, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !220, i64 24, !221, i64 184}
!220 = !{!"ColorManagedViewSettings", !43, i64 0, !43, i64 4, !36, i64 8, !36, i64 72, !35, i64 136, !35, i64 140, !41, i64 144, !41, i64 152}
!221 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!222 = !{!"QuicktimeCodecSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !42, i64 48, !42, i64 50, !43, i64 52, !43, i64 56, !43, i64 60}
!223 = !{!"FFMpegCodecData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !35, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !41, i64 64}
!224 = !{!"rctf", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!225 = !{!"rcti", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!226 = !{!"BakeData", !219, i64 0, !36, i64 248, !42, i64 1272, !42, i64 1274, !42, i64 1276, !42, i64 1278, !35, i64 1280, !35, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!227 = !{!"AudioData", !43, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !43, i64 16, !42, i64 20, !42, i64 22, !35, i64 24, !35, i64 28}
!228 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!229 = !{!"GameData", !228, i64 0, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !42, i64 32, !36, i64 34, !230, i64 40, !42, i64 64, !42, i64 66, !35, i64 68, !231, i64 72, !35, i64 128, !35, i64 132, !43, i64 136, !42, i64 140, !42, i64 142, !42, i64 144, !42, i64 146, !42, i64 148, !42, i64 150, !42, i64 152, !42, i64 154, !42, i64 156, !42, i64 158, !42, i64 160, !42, i64 162, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180}
!230 = !{!"GameDome", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !35, i64 8, !35, i64 12, !41, i64 16}
!231 = !{!"RecastData", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !43, i64 40, !35, i64 44, !35, i64 48, !42, i64 52, !42, i64 54}
!232 = !{!"UnitSettings", !35, i64 0, !36, i64 4, !36, i64 5, !42, i64 6}
!233 = !{!"PhysicsSettings", !36, i64 0, !43, i64 12, !43, i64 16, !43, i64 20}
!234 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!235 = !{!217, !41, i64 128}
!236 = !{!217, !41, i64 264}
!237 = !{!238, !41, i64 400}
!238 = !{!"ToolSettings", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !35, i64 32, !35, i64 36, !35, i64 40, !42, i64 44, !42, i64 46, !36, i64 48, !36, i64 49, !36, i64 50, !36, i64 51, !35, i64 52, !42, i64 56, !36, i64 58, !36, i64 59, !239, i64 64, !241, i64 168, !35, i64 336, !35, i64 340, !42, i64 344, !42, i64 346, !36, i64 348, !36, i64 349, !42, i64 350, !35, i64 352, !35, i64 356, !35, i64 360, !35, i64 364, !35, i64 368, !35, i64 372, !35, i64 376, !35, i64 380, !35, i64 384, !35, i64 388, !42, i64 392, !36, i64 394, !36, i64 395, !36, i64 396, !36, i64 399, !41, i64 400, !36, i64 408, !36, i64 409, !36, i64 410, !36, i64 411, !36, i64 412, !36, i64 413, !36, i64 421, !36, i64 429, !36, i64 430, !36, i64 431, !36, i64 432, !36, i64 433, !42, i64 434, !42, i64 436, !42, i64 438, !42, i64 440, !36, i64 442, !36, i64 443, !36, i64 444, !36, i64 445, !36, i64 446, !36, i64 447, !43, i64 448, !43, i64 452, !43, i64 456, !43, i64 460, !42, i64 464, !42, i64 466, !43, i64 468, !35, i64 472, !35, i64 476, !242, i64 480, !243, i64 608}
!239 = !{!"ImagePaintSettings", !240, i64 0, !42, i64 40, !42, i64 42, !42, i64 44, !42, i64 46, !36, i64 48, !43, i64 52, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !36, i64 88, !35, i64 100}
!240 = !{!"Paint", !41, i64 0, !41, i64 8, !41, i64 16, !36, i64 24, !43, i64 28, !43, i64 32, !43, i64 36}
!241 = !{!"ParticleEditSettings", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !36, i64 8, !41, i64 120, !35, i64 128, !35, i64 132, !43, i64 136, !43, i64 140, !43, i64 144, !43, i64 148, !41, i64 152, !41, i64 160}
!242 = !{!"UnifiedPaintSettings", !43, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !36, i64 16, !36, i64 28, !43, i64 40, !36, i64 44, !35, i64 52, !43, i64 56, !43, i64 60, !36, i64 64, !36, i64 65, !35, i64 72, !36, i64 76, !43, i64 84, !35, i64 88, !36, i64 92, !36, i64 100, !43, i64 108, !41, i64 112, !35, i64 120, !43, i64 124}
!243 = !{!"MeshStatVis", !36, i64 0, !36, i64 1, !36, i64 3, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !36, i64 20, !36, i64 21, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36}
!244 = !{!238, !41, i64 328}
!245 = !{!246, !41, i64 88}
!246 = !{!"TimeMarker", !41, i64 0, !41, i64 8, !43, i64 16, !36, i64 20, !43, i64 84, !41, i64 88}
!247 = distinct !{!247, !53, !54}
!248 = !{!217, !41, i64 256}
!249 = !{!250, !43, i64 24}
!250 = !{!"SeqIterator", !41, i64 0, !43, i64 8, !43, i64 12, !41, i64 16, !43, i64 24}
!251 = !{!250, !41, i64 16}
!252 = !{!253, !41, i64 192}
!253 = !{!"Sequence", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !36, i64 32, !43, i64 96, !43, i64 100, !43, i64 104, !43, i64 108, !43, i64 112, !43, i64 116, !43, i64 120, !43, i64 124, !43, i64 128, !43, i64 132, !43, i64 136, !43, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !42, i64 156, !42, i64 158, !43, i64 160, !43, i64 164, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !41, i64 208, !41, i64 216, !35, i64 224, !35, i64 228, !41, i64 232, !41, i64 240, !41, i64 248, !45, i64 256, !41, i64 272, !41, i64 280, !35, i64 288, !35, i64 292, !35, i64 296, !35, i64 300, !41, i64 304, !43, i64 312, !43, i64 316, !43, i64 320, !35, i64 324, !43, i64 328, !36, i64 332, !36, i64 333, !45, i64 336}
!254 = distinct !{!254, !53, !54}
!255 = distinct !{!255, !53, !54}
!256 = !{!257, !41, i64 120}
!257 = !{!"FreestyleLineSet", !41, i64 0, !41, i64 8, !36, i64 16, !43, i64 80, !43, i64 84, !42, i64 88, !42, i64 90, !43, i64 92, !43, i64 96, !43, i64 100, !43, i64 104, !43, i64 108, !41, i64 112, !41, i64 120}
!258 = distinct !{!258, !53, !54}
!259 = distinct !{!259, !53, !54}
!260 = distinct !{!260, !53, !54}
!261 = distinct !{!261, !53, !54}
!262 = !{!263, !43, i64 32}
!263 = !{!"SpaceLink", !41, i64 0, !41, i64 8, !45, i64 16, !43, i64 32, !35, i64 36, !36, i64 40}
!264 = !{!265, !41, i64 104}
!265 = !{!"View3D", !41, i64 0, !41, i64 8, !45, i64 16, !43, i64 32, !35, i64 36, !36, i64 40, !36, i64 56, !35, i64 72, !35, i64 76, !36, i64 80, !36, i64 81, !43, i64 84, !43, i64 88, !42, i64 92, !42, i64 94, !41, i64 96, !41, i64 104, !224, i64 112, !45, i64 128, !41, i64 144, !41, i64 152, !36, i64 160, !43, i64 224, !43, i64 228, !42, i64 232, !42, i64 234, !42, i64 236, !42, i64 238, !42, i64 240, !42, i64 242, !35, i64 244, !35, i64 248, !35, i64 252, !35, i64 256, !36, i64 260, !36, i64 272, !42, i64 284, !42, i64 286, !42, i64 288, !36, i64 290, !36, i64 291, !36, i64 292, !36, i64 293, !36, i64 294, !45, i64 296, !45, i64 312, !45, i64 328, !36, i64 344, !36, i64 345, !36, i64 346, !36, i64 347, !41, i64 352, !41, i64 360, !41, i64 368}
!266 = !{!265, !41, i64 152}
!267 = !{!265, !41, i64 96}
!268 = !{!269, !36, i64 72}
!269 = !{!"ScrArea", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !225, i64 56, !36, i64 72, !36, i64 73, !42, i64 74, !42, i64 76, !42, i64 78, !42, i64 80, !42, i64 82, !42, i64 84, !36, i64 86, !36, i64 87, !41, i64 88, !45, i64 96, !45, i64 112, !45, i64 128, !45, i64 144}
!270 = !{!271, !42, i64 214}
!271 = !{!"ARegion", !41, i64 0, !41, i64 8, !272, i64 16, !225, i64 176, !225, i64 192, !42, i64 208, !42, i64 210, !42, i64 212, !42, i64 214, !42, i64 216, !42, i64 218, !35, i64 220, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !42, i64 232, !42, i64 234, !42, i64 236, !42, i64 238, !41, i64 240, !45, i64 248, !45, i64 264, !45, i64 280, !45, i64 296, !45, i64 312, !45, i64 328, !45, i64 344, !41, i64 360, !41, i64 368, !41, i64 376}
!272 = !{!"View2D", !224, i64 0, !224, i64 16, !225, i64 32, !225, i64 48, !225, i64 64, !36, i64 80, !36, i64 88, !35, i64 96, !35, i64 100, !42, i64 104, !42, i64 106, !42, i64 108, !42, i64 110, !42, i64 112, !42, i64 114, !42, i64 116, !42, i64 118, !42, i64 120, !42, i64 122, !42, i64 124, !42, i64 126, !41, i64 128, !43, i64 136, !43, i64 140, !41, i64 144, !41, i64 152}
!273 = !{!271, !41, i64 376}
!274 = !{!275, !36, i64 809}
!275 = !{!"RegionView3D", !36, i64 0, !36, i64 64, !36, i64 128, !36, i64 192, !36, i64 256, !36, i64 320, !36, i64 384, !36, i64 448, !36, i64 544, !41, i64 640, !41, i64 648, !41, i64 656, !41, i64 664, !41, i64 672, !41, i64 680, !41, i64 688, !36, i64 696, !36, i64 760, !35, i64 776, !35, i64 780, !35, i64 784, !35, i64 788, !36, i64 792, !35, i64 804, !36, i64 808, !36, i64 809, !36, i64 810, !36, i64 811, !36, i64 812, !36, i64 813, !36, i64 816, !42, i64 824, !42, i64 826, !36, i64 828, !42, i64 844, !42, i64 846, !35, i64 848, !36, i64 852, !35, i64 864, !36, i64 868}
!276 = !{!275, !41, i64 648}
!277 = distinct !{!277, !53, !54}
!278 = !{!279, !41, i64 232}
!279 = !{!"SpaceOops", !41, i64 0, !41, i64 8, !45, i64 16, !43, i64 32, !35, i64 36, !36, i64 40, !272, i64 56, !45, i64 216, !41, i64 232, !36, i64 240, !280, i64 272, !42, i64 288, !42, i64 290, !42, i64 292, !42, i64 294, !41, i64 296}
!280 = !{!"TreeStoreElem", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !41, i64 8}
!281 = !{!280, !41, i64 8}
!282 = distinct !{!282, !53, !54}
!283 = !{!284, !41, i64 256}
!284 = !{!"SpaceButs", !41, i64 0, !41, i64 8, !45, i64 16, !43, i64 32, !35, i64 36, !36, i64 40, !272, i64 56, !42, i64 216, !42, i64 218, !42, i64 220, !42, i64 222, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !36, i64 232, !36, i64 233, !41, i64 240, !43, i64 248, !43, i64 252, !41, i64 256, !41, i64 264}
!285 = !{!284, !36, i64 232}
!286 = !{!287, !41, i64 224}
!287 = !{!"SpaceNode", !41, i64 0, !41, i64 8, !45, i64 16, !43, i64 32, !35, i64 36, !36, i64 40, !272, i64 56, !41, i64 216, !41, i64 224, !42, i64 232, !42, i64 234, !35, i64 236, !35, i64 240, !35, i64 244, !35, i64 248, !35, i64 252, !36, i64 256, !45, i64 264, !41, i64 280, !41, i64 288, !36, i64 296, !43, i64 360, !43, i64 364, !42, i64 368, !42, i64 370, !42, i64 372, !42, i64 374, !45, i64 376, !41, i64 392}
!288 = !{!287, !42, i64 232}
!289 = distinct !{!289, !53, !54}
!290 = distinct !{!290, !53, !54}
!291 = !{!292, !41, i64 184}
!292 = !{!"Camera", !40, i64 0, !41, i64 120, !36, i64 128, !36, i64 129, !42, i64 130, !35, i64 132, !35, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !41, i64 176, !41, i64 184, !36, i64 192, !36, i64 193}
!293 = distinct !{!293, !53, !54}
!294 = !{!113, !41, i64 272}
!295 = !{!296, !41, i64 160}
!296 = !{!"bArmature", !40, i64 0, !41, i64 120, !45, i64 128, !45, i64 144, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !43, i64 192, !43, i64 196, !43, i64 200, !43, i64 204, !42, i64 208, !42, i64 210, !43, i64 212, !43, i64 216, !43, i64 220, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !43, i64 232, !43, i64 236, !43, i64 240, !43, i64 244, !43, i64 248, !43, i64 252}
!297 = !{!116, !41, i64 376}
!298 = !{!299, !41, i64 160}
!299 = !{!"MetaBall", !40, i64 0, !41, i64 120, !45, i64 128, !45, i64 144, !41, i64 160, !41, i64 168, !41, i64 176, !36, i64 184, !36, i64 185, !42, i64 186, !42, i64 188, !42, i64 190, !36, i64 192, !36, i64 204, !36, i64 216, !35, i64 228, !35, i64 232, !35, i64 236, !41, i64 240}
!300 = !{!301, !41, i64 272}
!301 = !{!"Lattice", !40, i64 0, !41, i64 120, !42, i64 128, !42, i64 130, !42, i64 132, !42, i64 134, !42, i64 136, !42, i64 138, !42, i64 140, !42, i64 142, !36, i64 144, !36, i64 145, !36, i64 146, !36, i64 147, !43, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !36, i64 208, !41, i64 272}
!302 = !{!116, !41, i64 152}
!303 = !{i8 0, i8 2}
!304 = !{!39, !43, i64 432}
!305 = !{!113, !36, i64 1365}
!306 = distinct !{!306, !53, !54}
!307 = !{!39, !42, i64 954}
!308 = !{!39, !36, i64 1046}
!309 = !{!39, !36, i64 1047}
!310 = !{!39, !35, i64 1048}
!311 = !{!39, !42, i64 956}
!312 = !{!39, !42, i64 958}
!313 = !{!39, !43, i64 968}
!314 = !{!39, !43, i64 972}
!315 = !{!39, !43, i64 976}
!316 = !{!39, !43, i64 980}
!317 = !{!39, !35, i64 1052}
!318 = !{!39, !35, i64 996}
!319 = !{!39, !35, i64 988}
!320 = !{!39, !35, i64 1000}
!321 = !{!39, !35, i64 992}
!322 = !{!39, !35, i64 1004}
!323 = !{!39, !43, i64 1144}
!324 = !{!39, !35, i64 1008}
!325 = !{!39, !43, i64 1324}
!326 = !{!39, !43, i64 1320}
!327 = !{!39, !35, i64 1020}
!328 = !{!39, !35, i64 1024}
!329 = !{!39, !35, i64 1028}
!330 = !{!39, !35, i64 1032}
!331 = !{!39, !42, i64 1036}
!332 = !{!39, !42, i64 1038}
!333 = !{!39, !41, i64 1272}
!334 = !{!217, !43, i64 232}
!335 = !{!74, !43, i64 4}
!336 = !{!74, !43, i64 0}
!337 = !{!74, !41, i64 8}
!338 = !{!339, !41, i64 152}
!339 = !{!"BodyPoint", !36, i64 0, !36, i64 12, !36, i64 24, !36, i64 36, !36, i64 48, !36, i64 60, !35, i64 72, !36, i64 76, !36, i64 88, !36, i64 100, !36, i64 112, !36, i64 124, !36, i64 136, !43, i64 148, !41, i64 152, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !42, i64 176, !35, i64 180, !35, i64 184}
!340 = distinct !{!340, !53, !54}
!341 = !{!74, !41, i64 16}
!342 = !{!39, !35, i64 616}
!343 = !{!39, !42, i64 948}
!344 = distinct !{!344, !53, !54}
!345 = !{!39, !41, i64 128}
!346 = !{!39, !41, i64 1256}
!347 = distinct !{!347, !53, !54}
!348 = !{!349, !41, i64 128}
!349 = !{!"PartDeflect", !43, i64 0, !42, i64 4, !42, i64 6, !42, i64 8, !42, i64 10, !42, i64 12, !42, i64 14, !42, i64 16, !42, i64 18, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !35, i64 40, !35, i64 44, !35, i64 48, !35, i64 52, !35, i64 56, !35, i64 60, !35, i64 64, !35, i64 68, !35, i64 72, !35, i64 76, !35, i64 80, !35, i64 84, !35, i64 88, !35, i64 92, !35, i64 96, !35, i64 100, !35, i64 104, !35, i64 108, !35, i64 112, !35, i64 116, !35, i64 120, !35, i64 124, !41, i64 128, !41, i64 136, !35, i64 144, !43, i64 148, !41, i64 152}
!350 = !{!349, !41, i64 136}
!351 = !{!39, !41, i64 1368}
!352 = !{!39, !41, i64 1376}
!353 = !{!39, !41, i64 1400}
!354 = !{!39, !41, i64 1416}
!355 = distinct !{!355, !53, !54}
!356 = !{!165, !42, i64 104}
!357 = distinct !{!357, !53, !54}
!358 = distinct !{!358, !53, !54}
!359 = !{!39, !41, i64 24}
!360 = !{!39, !43, i64 100}
!361 = distinct !{!361, !53, !54}
!362 = distinct !{!362, !53, !54}
!363 = distinct !{!363, !53, !54}
!364 = distinct !{!364, !53, !54}
!365 = !{!366, !41, i64 48}
!366 = !{!"AnimData", !41, i64 0, !41, i64 8, !41, i64 16, !45, i64 24, !41, i64 40, !45, i64 48, !45, i64 64, !43, i64 80, !43, i64 84, !42, i64 88, !42, i64 90, !35, i64 92}
!367 = distinct !{!367, !53, !54}
!368 = !{!369, !41, i64 24}
!369 = !{!"FCurve", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !45, i64 32, !41, i64 48, !41, i64 56, !43, i64 64, !35, i64 68, !42, i64 72, !42, i64 74, !43, i64 76, !41, i64 80, !43, i64 88, !36, i64 92, !35, i64 104, !35, i64 108}
!370 = distinct !{!370, !53, !54}
!371 = !{!372, !41, i64 0}
!372 = !{!"DriverTarget", !41, i64 0, !41, i64 8, !36, i64 16, !42, i64 48, !42, i64 50, !43, i64 52}
!373 = distinct !{!373, !53, !54}
!374 = !{!39, !43, i64 460}
!375 = distinct !{!375, !53, !54}
!376 = !{!296, !43, i64 220}
!377 = !{!165, !41, i64 120}
!378 = !{!379, !43, i64 320}
!379 = !{!"Bone", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !45, i64 32, !36, i64 48, !35, i64 112, !36, i64 116, !36, i64 128, !36, i64 140, !43, i64 176, !36, i64 180, !36, i64 192, !36, i64 204, !35, i64 268, !35, i64 272, !35, i64 276, !35, i64 280, !35, i64 284, !35, i64 288, !35, i64 292, !35, i64 296, !35, i64 300, !35, i64 304, !36, i64 308, !43, i64 320, !42, i64 324, !36, i64 326}
!380 = distinct !{!380, !53, !54}
!381 = !{!39, !41, i64 112}
!382 = !{!116, !35, i64 320}
!383 = !{!292, !35, i64 152}
!384 = !{!385, !35, i64 176}
!385 = !{!"Lamp", !40, i64 0, !41, i64 120, !42, i64 128, !42, i64 130, !43, i64 132, !42, i64 136, !42, i64 138, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !41, i64 200, !42, i64 208, !42, i64 210, !35, i64 212, !35, i64 216, !35, i64 220, !35, i64 224, !35, i64 228, !35, i64 232, !35, i64 236, !42, i64 240, !42, i64 242, !42, i64 244, !42, i64 246, !36, i64 248, !36, i64 249, !42, i64 250, !42, i64 252, !42, i64 254, !42, i64 256, !42, i64 258, !35, i64 260, !35, i64 264, !35, i64 268, !35, i64 272, !42, i64 276, !42, i64 278, !42, i64 280, !42, i64 282, !42, i64 284, !42, i64 286, !35, i64 288, !35, i64 292, !35, i64 296, !35, i64 300, !35, i64 304, !35, i64 308, !35, i64 312, !35, i64 316, !35, i64 320, !35, i64 324, !35, i64 328, !35, i64 332, !35, i64 336, !42, i64 340, !36, i64 342, !41, i64 344, !36, i64 352, !42, i64 496, !42, i64 498, !36, i64 500, !41, i64 504, !41, i64 512}
!386 = !{!385, !35, i64 260}
!387 = !{!385, !35, i64 264}
!388 = !{!385, !35, i64 268}
!389 = !{!39, !35, i64 620}
!390 = !{!391, !35, i64 128}
!391 = !{!"ObjectTfmProtectedChannels", !36, i64 0, !36, i64 12, !36, i64 24, !36, i64 36, !36, i64 48, !36, i64 60, !36, i64 72, !36, i64 88, !36, i64 104, !36, i64 116, !35, i64 128, !35, i64 132}
!392 = !{!391, !35, i64 132}
!393 = distinct !{!393, !53, !54}
!394 = !{!39, !42, i64 138}
!395 = !{!39, !35, i64 1120}
!396 = distinct !{!396, !53, !54}
!397 = !{!217, !41, i64 4952}
!398 = !{!39, !41, i64 1176}
!399 = !{!39, !42, i64 952}
!400 = !{!39, !43, i64 140}
!401 = !{!39, !43, i64 144}
!402 = !{!39, !43, i64 148}
!403 = !{!39, !41, i64 1184}
!404 = !{!116, !43, i64 268}
!405 = !{!406, !41, i64 0}
!406 = !{!"Path", !41, i64 0, !43, i64 8, !35, i64 12}
!407 = !{!39, !42, i64 962}
!408 = !{!43, !43, i64 0}
!409 = !{!116, !43, i64 260}
!410 = !{!116, !35, i64 512}
!411 = !{!379, !43, i64 176}
!412 = !{!379, !35, i64 284}
!413 = !{i64 0, i64 96, !66, i64 96, i64 4, !408, i64 100, i64 4, !408}
!414 = distinct !{!414, !53, !54}
!415 = !{!301, !42, i64 132}
!416 = !{!301, !41, i64 176}
!417 = !{!301, !42, i64 130}
!418 = !{!301, !42, i64 128}
!419 = distinct !{!419, !53, !54}
!420 = distinct !{!420, !53, !54}
!421 = distinct !{!421, !53, !54}
!422 = !{!296, !43, i64 216}
!423 = distinct !{!423, !53, !54}
!424 = distinct !{!424, !53, !54}
!425 = !{!202, !36, i64 26}
!426 = !{!202, !43, i64 12}
!427 = !{!202, !43, i64 20}
!428 = !{!202, !36, i64 24}
!429 = !{!430, !41, i64 1888}
!430 = !{!"Main", !41, i64 0, !41, i64 8, !36, i64 16, !42, i64 1040, !42, i64 1042, !42, i64 1044, !42, i64 1046, !46, i64 1048, !36, i64 1056, !42, i64 1072, !41, i64 1080, !45, i64 1088, !45, i64 1104, !45, i64 1120, !45, i64 1136, !45, i64 1152, !45, i64 1168, !45, i64 1184, !45, i64 1200, !45, i64 1216, !45, i64 1232, !45, i64 1248, !45, i64 1264, !45, i64 1280, !45, i64 1296, !45, i64 1312, !45, i64 1328, !45, i64 1344, !45, i64 1360, !45, i64 1376, !45, i64 1392, !45, i64 1408, !45, i64 1424, !45, i64 1440, !45, i64 1456, !45, i64 1472, !45, i64 1488, !45, i64 1504, !45, i64 1520, !45, i64 1536, !45, i64 1552, !45, i64 1568, !45, i64 1584, !45, i64 1600, !45, i64 1616, !36, i64 1632, !41, i64 1888, !41, i64 1896}
!431 = !{!432, !36, i64 110}
!432 = !{!"DupliObject", !41, i64 0, !41, i64 8, !41, i64 16, !36, i64 24, !36, i64 88, !36, i64 100, !42, i64 108, !36, i64 110, !36, i64 111, !36, i64 112, !41, i64 144}
!433 = !{!432, !41, i64 16}
!434 = distinct !{!434, !53, !54}
!435 = distinct !{!435, !53, !54}
!436 = !{!123, !41, i64 1168}
!437 = !{!123, !41, i64 1104}
!438 = distinct !{!438, !53, !54}
!439 = !{!60, !41, i64 0}
!440 = !{!441, !43, i64 24}
!441 = !{!"DispList", !41, i64 0, !41, i64 8, !42, i64 16, !42, i64 18, !43, i64 20, !43, i64 24, !42, i64 28, !42, i64 30, !41, i64 32, !41, i64 40, !41, i64 48, !43, i64 56, !43, i64 60, !41, i64 64}
!442 = !{!441, !41, i64 32}
!443 = distinct !{!443, !53, !54}
!444 = !{!441, !41, i64 0}
!445 = distinct !{!445, !53, !54}
!446 = !{!39, !36, i64 1160}
!447 = !{!49, !43, i64 24}
!448 = distinct !{!448, !53, !54}
!449 = distinct !{!449, !53, !54}
!450 = !{!451, !35, i64 140}
!451 = !{!"ObTfmBack", !36, i64 0, !36, i64 12, !36, i64 24, !36, i64 36, !36, i64 48, !36, i64 60, !36, i64 72, !36, i64 84, !36, i64 100, !36, i64 116, !36, i64 128, !35, i64 140, !35, i64 144, !36, i64 148, !36, i64 212, !36, i64 276, !36, i64 340}
!452 = !{!451, !35, i64 144}
!453 = !{!39, !36, i64 1161}
!454 = !{!455, !42, i64 24}
!455 = !{!"bPose", !45, i64 0, !41, i64 16, !42, i64 24, !42, i64 26, !43, i64 28, !43, i64 32, !35, i64 36, !36, i64 40, !36, i64 52, !45, i64 64, !43, i64 80, !43, i64 84, !41, i64 88, !41, i64 96, !44, i64 104, !36, i64 152}
!456 = !{!148, !43, i64 2100}
!457 = !{!458, !41, i64 176}
!458 = !{!"Key", !40, i64 0, !41, i64 120, !41, i64 128, !36, i64 136, !43, i64 168, !43, i64 172, !45, i64 176, !41, i64 192, !41, i64 200, !42, i64 208, !42, i64 210, !42, i64 212, !42, i64 214, !35, i64 216, !43, i64 220}
!459 = !{!39, !36, i64 1265}
!460 = !{!458, !41, i64 120}
!461 = !{!217, !41, i64 176}
!462 = !{!217, !46, i64 4648}
!463 = !{!46, !46, i64 0}
!464 = distinct !{!464, !53, !54}
!465 = !{!79, !42, i64 340}
!466 = !{!83, !42, i64 184}
!467 = !{!468, !43, i64 0}
!468 = !{!"EvaluationContext", !43, i64 0}
!469 = !{!83, !42, i64 192}
!470 = !{!83, !41, i64 720}
!471 = !{!79, !43, i64 316}
!472 = distinct !{!472, !53, !54}
!473 = !{!101, !42, i64 140}
!474 = distinct !{!474, !53, !54}
!475 = !{!476, !41, i64 192}
!476 = !{!"SculptSession", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !43, i64 32, !43, i64 36, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !43, i64 80, !43, i64 84, !36, i64 88, !41, i64 96, !41, i64 104, !36, i64 112, !36, i64 113, !41, i64 120, !41, i64 128, !41, i64 136, !36, i64 144, !43, i64 148, !41, i64 152, !43, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192, !36, i64 200, !36, i64 204, !36, i64 216, !43, i64 228}
!477 = !{!476, !41, i64 104}
!478 = distinct !{!478, !53, !54}
!479 = !{!42, !42, i64 0}
!480 = distinct !{!480, !53, !54}
!481 = !{!482, !41, i64 16}
!482 = !{!"LinkData", !41, i64 0, !41, i64 8, !41, i64 16}
!483 = distinct !{!483, !53, !54}
!484 = distinct !{!484, !53, !54}
!485 = !{!113, !41, i64 144}
!486 = !{!458, !42, i64 208}
!487 = !{!488, !41, i64 40}
!488 = !{!"KeyBlock", !41, i64 0, !41, i64 8, !35, i64 16, !35, i64 20, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !43, i64 32, !43, i64 36, !41, i64 40, !36, i64 48, !36, i64 112, !35, i64 176, !35, i64 180}
!489 = !{!488, !43, i64 32}
!490 = !{!116, !41, i64 192}
!491 = !{!301, !41, i64 192}
!492 = distinct !{!492, !53, !54}
!493 = !{!64, !41, i64 0}
!494 = distinct !{!494, !53, !54}
!495 = !{!68, !43, i64 68}
!496 = distinct !{!496, !53, !54}
!497 = distinct !{!497, !53, !54}
!498 = distinct !{!498, !53, !54}
!499 = !{!39, !41, i64 16}
!500 = !{!40, !41, i64 16}
!501 = !{!217, !41, i64 4640}
!502 = !{!503, !42, i64 24}
!503 = !{!"bConstraint", !41, i64 0, !41, i64 8, !41, i64 16, !42, i64 24, !42, i64 26, !36, i64 28, !36, i64 29, !36, i64 30, !42, i64 94, !35, i64 96, !35, i64 100, !41, i64 104, !35, i64 112, !35, i64 116}
!504 = !{!503, !42, i64 26}
!505 = distinct !{!505, !53, !54}
!506 = !{!503, !41, i64 16}
!507 = !{!508, !43, i64 8}
!508 = !{!"bCameraSolverConstraint", !41, i64 0, !43, i64 8, !43, i64 12}
!509 = !{!39, !42, i64 98}
!510 = distinct !{!510, !53, !54}
!511 = distinct !{!511, !53, !54}
!512 = distinct !{!512, !53, !54}
!513 = !{!514, !41, i64 120}
!514 = !{!"ArmatureModifierData", !64, i64 0, !42, i64 112, !42, i64 114, !43, i64 116, !41, i64 120, !41, i64 128, !36, i64 136}
!515 = distinct !{!515, !53, !54}
!516 = distinct !{!516, !53, !54}
!517 = distinct !{!517, !53, !54}
!518 = distinct !{!518, !53, !54}
!519 = distinct !{!519, !53, !54}
!520 = !{!113, !41, i64 232}
!521 = !{!113, !43, i64 1280}
!522 = distinct !{!522, !53, !54}
!523 = !{!524, !41, i64 72}
!524 = !{!"Nurb", !41, i64 0, !41, i64 8, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !43, i64 24, !43, i64 28, !36, i64 32, !42, i64 36, !42, i64 38, !42, i64 40, !42, i64 42, !42, i64 44, !42, i64 46, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !42, i64 80, !42, i64 82, !43, i64 84}
!525 = !{!524, !43, i64 24}
!526 = distinct !{!526, !53, !54}
!527 = !{!524, !43, i64 28}
!528 = !{!524, !41, i64 64}
!529 = distinct !{!529, !53, !54}
!530 = distinct !{!530, !53, !54}
!531 = distinct !{!531, !53, !54}
!532 = !{!123, !43, i64 1048}
!533 = !{!534, !41, i64 0}
!534 = !{!"BMEditMesh", !41, i64 0, !41, i64 8, !43, i64 16, !41, i64 24, !43, i64 32, !41, i64 40, !41, i64 48, !46, i64 56, !41, i64 64, !43, i64 72, !41, i64 80, !43, i64 88, !42, i64 92, !42, i64 94, !41, i64 96, !43, i64 104}
!535 = !{!536, !36, i64 29}
!536 = !{!"BMesh", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !36, i64 28, !36, i64 29, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !43, i64 88, !43, i64 92, !43, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !43, i64 128, !41, i64 136, !114, i64 144, !114, i64 344, !114, i64 544, !114, i64 744, !42, i64 944, !43, i64 948, !43, i64 952, !43, i64 956, !45, i64 960, !41, i64 976, !45, i64 984, !41, i64 1000}
!537 = !{!123, !41, i64 1288}
!538 = !{!123, !41, i64 1528}
!539 = distinct !{!539, !53, !54}
!540 = !{!60, !41, i64 32}
!541 = !{!542, !41, i64 0}
!542 = !{!"EditLatt", !41, i64 0, !43, i64 8, !36, i64 12}
