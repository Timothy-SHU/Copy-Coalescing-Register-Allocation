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
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.ParticleTarget = type { ptr, ptr, ptr, i32, i16, i16, float, float }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.ParticleData = type { %struct.ParticleKey, %struct.ParticleKey, ptr, ptr, ptr, i32, float, float, float, i32, i32, [4 x float], float, float, float, i32, i32, i16, i16 }
%struct.ParticleKey = type { [3 x float], [3 x float], [4 x float], [3 x float], float }
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
%struct.SoftBody = type { i32, i32, ptr, ptr, i8, i8, i16, float, [64 x i8], float, float, float, float, float, float, float, float, float, i16, [64 x i8], i16, float, float, [64 x i8], i32, i32, i32, i16, i16, ptr, i32, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, float, float, ptr, %struct.ListBase, ptr, [3 x float], [3 x [3 x float]], [3 x [3 x float]], i32 }
%struct.BodyPoint = type { [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], i32, ptr, float, float, float, float, i16, float, float }
%struct.BoidParticle = type { ptr, %struct.BoidData, [3 x float], [3 x float], float }
%struct.BoidData = type { float, [3 x float], i16, i16 }
%struct.ClothModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
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
@__const.BKE_boundbox_alloc_unit.max = private unnamed_addr constant [3 x float] [float -1.000000e+00, float -1.000000e+00, float -1.000000e+00], align 4
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
@reltable.get_obdata_defname = private unnamed_addr constant [26 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.20 to i64), i64 ptrtoint (ptr @reltable.get_obdata_defname to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str to i64), i64 ptrtoint (ptr @reltable.get_obdata_defname to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.1 to i64), i64 ptrtoint (ptr @reltable.get_obdata_defname to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.2 to i64), i64 ptrtoint (ptr @reltable.get_obdata_defname to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.3 to i64), i64 ptrtoint (ptr @reltable.get_obdata_defname to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.19 to i64), i64 ptrtoint (ptr @reltable.get_obdata_defname to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str to i64), i64 ptrtoint (ptr @reltable.get_obdata_defname to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str to i64), i64 ptrtoint (ptr @reltable.get_obdata_defname to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str to i64), i64 ptrtoint (ptr @reltable.get_obdata_defname to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str to i64), i64 ptrtoint (ptr @reltable.get_obdata_defname to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.6 to i64), i64 ptrtoint (ptr @reltable.get_obdata_defname to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.5 to i64), i64 ptrtoint (ptr @reltable.get_obdata_defname to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.9 to i64), i64 ptrtoint (ptr @reltable.get_obdata_defname to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str to i64), i64 ptrtoint (ptr @reltable.get_obdata_defname to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str to i64), i64 ptrtoint (ptr @reltable.get_obdata_defname to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str to i64), i64 ptrtoint (ptr @reltable.get_obdata_defname to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str to i64), i64 ptrtoint (ptr @reltable.get_obdata_defname to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str to i64), i64 ptrtoint (ptr @reltable.get_obdata_defname to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str to i64), i64 ptrtoint (ptr @reltable.get_obdata_defname to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str to i64), i64 ptrtoint (ptr @reltable.get_obdata_defname to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str to i64), i64 ptrtoint (ptr @reltable.get_obdata_defname to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str to i64), i64 ptrtoint (ptr @reltable.get_obdata_defname to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.7 to i64), i64 ptrtoint (ptr @reltable.get_obdata_defname to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str to i64), i64 ptrtoint (ptr @reltable.get_obdata_defname to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str to i64), i64 ptrtoint (ptr @reltable.get_obdata_defname to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.8 to i64), i64 ptrtoint (ptr @reltable.get_obdata_defname to i64)) to i32)], align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @BKE_object_workob_clear(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1424) %0, i8 0, i64 1424, i1 false)
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 2
  store float 1.000000e+00, ptr %3, align 4, !tbaa !34
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %2, align 4, !tbaa !34
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38, i64 2
  store float 1.000000e+00, ptr %5, align 4, !tbaa !34
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %4, align 4, !tbaa !34
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 83
  store i16 1, ptr %6, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_free_particlesystems(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 109
  %3 = tail call ptr @BLI_pophead(ptr noundef nonnull %2) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  tail call void @psys_free(ptr noundef %0, ptr noundef nonnull %6) #18
  %7 = tail call ptr @BLI_pophead(ptr noundef nonnull %2) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !54

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @psys_free(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_free_softbody(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @sbFree(ptr noundef nonnull %3) #18
  store ptr null, ptr %2, align 8, !tbaa !55
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @sbFree(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_free_bulletsoftbody(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 101
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @bsbFree(ptr noundef nonnull %3) #18
  store ptr null, ptr %2, align 8, !tbaa !56
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @bsbFree(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_free_curve_cache(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  tail call void @BKE_displist_free(ptr noundef nonnull %3) #18
  %6 = load ptr, ptr %2, align 8, !tbaa !57
  %7 = getelementptr inbounds %struct.CurveCache, ptr %6, i64 0, i32 1
  tail call void @BKE_curve_bevelList_free(ptr noundef nonnull %7) #18
  %8 = load ptr, ptr %2, align 8, !tbaa !57
  %9 = getelementptr inbounds %struct.CurveCache, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !58
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %5
  tail call void @free_path(ptr noundef nonnull %10) #18
  %13 = load ptr, ptr %2, align 8, !tbaa !57
  br label %14

14:                                               ; preds = %12, %5
  %15 = phi ptr [ %13, %12 ], [ %8, %5 ]
  %16 = getelementptr inbounds %struct.CurveCache, ptr %15, i64 0, i32 2
  tail call void @BKE_nurbList_free(ptr noundef nonnull %16) #18
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %18 = load ptr, ptr %2, align 8, !tbaa !57
  tail call void %17(ptr noundef %18) #18
  store ptr null, ptr %2, align 8, !tbaa !57
  br label %19

19:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: optsize
declare void @BKE_displist_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_curve_bevelList_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @free_path(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_nurbList_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_free_modifiers(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %3 = tail call ptr @BLI_pophead(ptr noundef nonnull %2) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  tail call void @modifier_free(ptr noundef nonnull %6) #18
  %7 = tail call ptr @BLI_pophead(ptr noundef nonnull %2) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !60

9:                                                ; preds = %5, %1
  tail call void @BKE_object_free_particlesystems(ptr noundef %0) #19
  tail call void @BKE_object_free_softbody(ptr noundef %0) #19
  ret void
}

; Function Attrs: optsize
declare void @modifier_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_modifier_hook_reset(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [4 x [4 x float]], align 16
  %5 = getelementptr inbounds %struct.HookModifierData, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = icmp eq ptr %6, null
  br i1 %7, label %33, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  %11 = getelementptr inbounds %struct.HookModifierData, ptr %1, i64 0, i32 2
  %12 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %10, ptr noundef nonnull %11) #18
  %13 = load i8, ptr %11, align 8, !tbaa !65
  %14 = icmp ne i8 %13, 0
  %15 = icmp ne ptr %12, null
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %24

17:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #20
  %18 = load ptr, ptr %5, align 8, !tbaa !61
  %19 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 47
  %20 = getelementptr inbounds %struct.bPoseChannel, ptr %12, i64 0, i32 29
  call void @mul_m4_m4m4(ptr noundef nonnull %4, ptr noundef nonnull %19, ptr noundef nonnull %20) #18
  %21 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  %22 = getelementptr inbounds %struct.HookModifierData, ptr %1, i64 0, i32 3
  %23 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %22, ptr noundef nonnull %3, ptr noundef nonnull %23) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #20
  br label %33

24:                                               ; preds = %8
  %25 = load ptr, ptr %5, align 8, !tbaa !61
  %26 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 50
  %27 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 47
  %28 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %26, ptr noundef nonnull %27) #18
  %29 = getelementptr inbounds %struct.HookModifierData, ptr %1, i64 0, i32 3
  %30 = load ptr, ptr %5, align 8, !tbaa !61
  %31 = getelementptr inbounds %struct.Object, ptr %30, i64 0, i32 50
  %32 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  tail call void @mul_m4_m4m4(ptr noundef nonnull %29, ptr noundef nonnull %31, ptr noundef nonnull %32) #18
  br label %33

33:                                               ; preds = %17, %24, %2
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_pose_channel_find_name(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_object_support_modifier_type_check(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = tail call ptr @modifierType_getInfo(i32 noundef %1) #18
  %4 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !66
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !68
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

; Function Attrs: optsize
declare ptr @modifierType_getInfo(i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_link_modifiers(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  tail call void @BKE_object_free_modifiers(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !68
  switch i16 %4, label %35 [
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
  br i1 %8, label %34, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  br label %12

12:                                               ; preds = %9, %31
  %13 = phi ptr [ %7, %9 ], [ %32, %31 ]
  %14 = getelementptr inbounds %struct.ModifierData, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !69
  switch i32 %15, label %16 [
    i32 9, label %31
    i32 10, label %31
    i32 20, label %31
    i32 23, label %31
  ]

16:                                               ; preds = %12
  %17 = tail call zeroext i8 @BKE_object_support_modifier_type_check(ptr noundef %0, i32 noundef %15) #19, !range !70
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %16
  %20 = load i32, ptr %14, align 8, !tbaa !69
  %21 = icmp eq i32 %20, 42
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load ptr, ptr %10, align 8, !tbaa !71
  tail call void @BKE_mesh_ensure_skin_customdata(ptr noundef %23) #18
  %24 = load i32, ptr %14, align 8, !tbaa !69
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi i32 [ %24, %22 ], [ %20, %19 ]
  %27 = tail call ptr @modifier_new(i32 noundef %26) #18
  %28 = getelementptr inbounds %struct.ModifierData, ptr %27, i64 0, i32 6
  %29 = getelementptr inbounds %struct.ModifierData, ptr %13, i64 0, i32 6
  %30 = tail call ptr @BLI_strncpy(ptr noundef nonnull %28, ptr noundef nonnull %29, i64 noundef 64) #18
  tail call void @modifier_copyData(ptr noundef nonnull %13, ptr noundef %27) #18
  tail call void @BLI_addtail(ptr noundef nonnull %11, ptr noundef %27) #18
  tail call void @modifier_unique_name(ptr noundef nonnull %11, ptr noundef %27) #18
  br label %31

31:                                               ; preds = %16, %12, %12, %12, %12, %25
  %32 = load ptr, ptr %13, align 8, !tbaa !47
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %12, !llvm.loop !72

34:                                               ; preds = %31, %5
  tail call void @BKE_object_copy_particlesystems(ptr noundef %0, ptr noundef %1) #19
  tail call void @BKE_object_copy_softbody(ptr noundef %0, ptr noundef %1) #19
  br label %35

35:                                               ; preds = %2, %34
  ret void
}

; Function Attrs: optsize
declare void @BKE_mesh_ensure_skin_customdata(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @modifier_new(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @modifier_copyData(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @modifier_unique_name(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_copy_particlesystems(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !68
  %5 = icmp eq i16 %4, 1
  br i1 %5, label %6, label %54

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 109
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %7) #19
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 109
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = icmp eq ptr %9, null
  br i1 %10, label %54, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  br label %16

13:                                               ; preds = %51, %16
  %14 = load ptr, ptr %17, align 8, !tbaa !47
  %15 = icmp eq ptr %14, null
  br i1 %15, label %54, label %16, !llvm.loop !73

16:                                               ; preds = %11, %13
  %17 = phi ptr [ %9, %11 ], [ %14, %13 ]
  %18 = tail call fastcc ptr @copy_particlesystem(ptr noundef nonnull %17) #19
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %18) #18
  %19 = load ptr, ptr %12, align 8, !tbaa !47
  %20 = icmp eq ptr %19, null
  br i1 %20, label %13, label %21

21:                                               ; preds = %16, %51
  %22 = phi ptr [ %52, %51 ], [ %19, %16 ]
  %23 = getelementptr inbounds %struct.ModifierData, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !69
  switch i32 %24, label %51 [
    i32 19, label %25
    i32 40, label %29
    i32 31, label %37
  ]

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %22, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !74
  %28 = icmp eq ptr %27, %17
  br i1 %28, label %49, label %51

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %22, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !76
  %32 = icmp eq ptr %31, null
  br i1 %32, label %51, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %31, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !78
  %36 = icmp eq ptr %35, %17
  br i1 %36, label %49, label %51

37:                                               ; preds = %21
  %38 = getelementptr inbounds %struct.SmokeModifierData, ptr %22, i64 0, i32 5
  %39 = load i32, ptr %38, align 4, !tbaa !80
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.SmokeModifierData, ptr %22, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !82
  %44 = icmp eq ptr %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %43, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !83
  %48 = icmp eq ptr %47, %17
  br i1 %48, label %49, label %51

49:                                               ; preds = %45, %33, %25
  %50 = phi ptr [ %26, %25 ], [ %34, %33 ], [ %46, %45 ]
  store ptr %18, ptr %50, align 8, !tbaa !47
  br label %51

51:                                               ; preds = %49, %37, %45, %41, %21, %29, %33, %25
  %52 = load ptr, ptr %22, align 8, !tbaa !47
  %53 = icmp eq ptr %52, null
  br i1 %53, label %13, label %21, !llvm.loop !85

54:                                               ; preds = %13, %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_copy_softbody(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 111
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @copy_softbody(ptr noundef nonnull %4, i8 noundef zeroext 0) #19
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  store ptr %7, ptr %8, align 8, !tbaa !55
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_free_derived_caches(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !68
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
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %16

10:                                               ; preds = %1, %1, %1
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = getelementptr inbounds %struct.Curve, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !89
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %10, %4
  %17 = phi ptr [ %8, %4 ], [ %14, %10 ]
  %18 = getelementptr inbounds %struct.BoundBox, ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !92
  %20 = or i32 %19, 2
  store i32 %20, ptr %18, align 4, !tbaa !92
  br label %21

21:                                               ; preds = %16, %10, %1, %4
  %22 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 15
  %23 = load ptr, ptr %22, align 8, !tbaa !94
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %26(ptr noundef nonnull %23) #18
  store ptr null, ptr %22, align 8, !tbaa !94
  br label %27

27:                                               ; preds = %25, %21
  %28 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 120
  %29 = load ptr, ptr %28, align 8, !tbaa !95
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.DerivedMesh, ptr %29, i64 0, i32 10
  store i32 1, ptr %32, align 4, !tbaa !96
  %33 = getelementptr inbounds %struct.DerivedMesh, ptr %29, i64 0, i32 95
  %34 = load ptr, ptr %33, align 8, !tbaa !98
  tail call void %34(ptr noundef nonnull %29) #18
  store ptr null, ptr %28, align 8, !tbaa !95
  br label %35

35:                                               ; preds = %31, %27
  %36 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 119
  %37 = load ptr, ptr %36, align 8, !tbaa !99
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.DerivedMesh, ptr %37, i64 0, i32 10
  store i32 1, ptr %40, align 4, !tbaa !96
  %41 = getelementptr inbounds %struct.DerivedMesh, ptr %37, i64 0, i32 95
  %42 = load ptr, ptr %41, align 8, !tbaa !98
  tail call void %42(ptr noundef nonnull %37) #18
  store ptr null, ptr %36, align 8, !tbaa !99
  br label %43

43:                                               ; preds = %39, %35
  tail call void @BKE_object_free_curve_cache(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_free_ex(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #4 {
  tail call void @BKE_object_free_derived_caches(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !100
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr %7, align 4, !tbaa !100
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !101
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %17 = load i16, ptr %16, align 8, !tbaa !68
  switch i16 %17, label %21 [
    i16 1, label %18
    i16 2, label %19
    i16 5, label %20
  ]

18:                                               ; preds = %15
  tail call void @BKE_mesh_unlink(ptr noundef nonnull %4) #18
  br label %21

19:                                               ; preds = %15
  tail call void @BKE_curve_unlink(ptr noundef nonnull %4) #18
  br label %21

20:                                               ; preds = %15
  tail call void @BKE_mball_unlink(ptr noundef nonnull %4) #18
  br label %21

21:                                               ; preds = %18, %19, %20, %15, %11, %6
  store ptr null, ptr %3, align 8, !tbaa !71
  br label %22

22:                                               ; preds = %21, %2
  %23 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 29
  %24 = load ptr, ptr %23, align 8, !tbaa !102
  %25 = icmp eq ptr %24, null
  br i1 %25, label %46, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  %28 = load i32, ptr %27, align 8, !tbaa !103
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
  %39 = load i32, ptr %38, align 4, !tbaa !104
  %40 = add nsw i32 %39, -1
  store i32 %40, ptr %38, align 4, !tbaa !104
  br label %41

41:                                               ; preds = %32, %37
  %42 = add nuw nsw i64 %33, 1
  %43 = icmp eq i64 %42, %31
  br i1 %43, label %44, label %32, !llvm.loop !108

44:                                               ; preds = %41, %26
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %45(ptr noundef nonnull %24) #18
  br label %46

46:                                               ; preds = %44, %22
  %47 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 30
  %48 = load ptr, ptr %47, align 8, !tbaa !109
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %51(ptr noundef nonnull %48) #18
  br label %52

52:                                               ; preds = %50, %46
  %53 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 131
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  %54 = load ptr, ptr %53, align 8, !tbaa !110
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %57(ptr noundef nonnull %54) #18
  br label %58

58:                                               ; preds = %56, %52
  store ptr null, ptr %53, align 8, !tbaa !110
  %59 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 15
  %60 = load ptr, ptr %59, align 8, !tbaa !94
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %63(ptr noundef nonnull %60) #18
  br label %64

64:                                               ; preds = %62, %58
  store ptr null, ptr %59, align 8, !tbaa !94
  %65 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !111
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  tail call void @BKE_free_animdata(ptr noundef nonnull %0) #18
  br label %69

69:                                               ; preds = %68, %64
  %70 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 17
  %71 = load ptr, ptr %70, align 8, !tbaa !112
  %72 = icmp eq ptr %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.ID, ptr %71, i64 0, i32 6
  %75 = load i32, ptr %74, align 4, !tbaa !113
  %76 = add nsw i32 %75, -1
  store i32 %76, ptr %74, align 4, !tbaa !113
  br label %77

77:                                               ; preds = %73, %69
  %78 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 20
  %79 = load ptr, ptr %78, align 8, !tbaa !115
  %80 = icmp eq ptr %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.ID, ptr %79, i64 0, i32 6
  %83 = load i32, ptr %82, align 4, !tbaa !100
  %84 = add nsw i32 %83, -1
  store i32 %84, ptr %82, align 4, !tbaa !100
  br label %85

85:                                               ; preds = %81, %77
  %86 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %87 = load ptr, ptr %86, align 8, !tbaa !116
  %88 = icmp eq ptr %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  tail call void @BLI_freelistN(ptr noundef nonnull %86) #18
  br label %90

90:                                               ; preds = %89, %85
  %91 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %92 = load ptr, ptr %91, align 8, !tbaa !64
  %93 = icmp eq ptr %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  tail call void @BKE_pose_free_ex(ptr noundef nonnull %92, i8 noundef zeroext %1) #18
  br label %95

95:                                               ; preds = %94, %90
  %96 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 22
  %97 = load ptr, ptr %96, align 8, !tbaa !117
  %98 = icmp eq ptr %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  tail call void @animviz_free_motionpath(ptr noundef nonnull %97) #18
  br label %100

100:                                              ; preds = %99, %95
  %101 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 91
  tail call void @BKE_bproperty_free_list(ptr noundef nonnull %101) #18
  tail call void @BKE_object_free_modifiers(ptr noundef nonnull %0) #19
  %102 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 92
  tail call void @free_sensors(ptr noundef nonnull %102) #18
  %103 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 93
  tail call void @free_controllers(ptr noundef nonnull %103) #18
  %104 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 94
  tail call void @free_actuators(ptr noundef nonnull %104) #18
  %105 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 106
  tail call void @BKE_constraints_free(ptr noundef nonnull %105) #18
  %106 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 110
  %107 = load ptr, ptr %106, align 8, !tbaa !118
  tail call void @free_partdeflect(ptr noundef %107) #18
  tail call void @BKE_rigidbody_free_object(ptr noundef nonnull %0) #18
  tail call void @BKE_rigidbody_free_constraint(ptr noundef nonnull %0) #18
  %108 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 111
  %109 = load ptr, ptr %108, align 8, !tbaa !55
  %110 = icmp eq ptr %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %100
  tail call void @sbFree(ptr noundef nonnull %109) #18
  br label %112

112:                                              ; preds = %111, %100
  %113 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 101
  %114 = load ptr, ptr %113, align 8, !tbaa !56
  %115 = icmp eq ptr %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  tail call void @bsbFree(ptr noundef nonnull %114) #18
  br label %117

117:                                              ; preds = %116, %112
  %118 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 125
  %119 = load ptr, ptr %118, align 8, !tbaa !119
  %120 = icmp eq ptr %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %117
  tail call void @GPU_lamp_free(ptr noundef nonnull %0) #18
  br label %122

122:                                              ; preds = %121, %117
  tail call void @BKE_free_sculptsession(ptr noundef nonnull %0) #18
  %123 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 126
  %124 = load ptr, ptr %123, align 8, !tbaa !120
  %125 = icmp eq ptr %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  tail call void @BLI_freelistN(ptr noundef nonnull %123) #18
  br label %127

127:                                              ; preds = %126, %122
  %128 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 132
  tail call void @BLI_freelistN(ptr noundef nonnull %128) #18
  %129 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  %130 = load ptr, ptr %129, align 8, !tbaa !57
  %131 = icmp eq ptr %130, null
  br i1 %131, label %143, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.CurveCache, ptr %130, i64 0, i32 1
  tail call void @BKE_curve_bevelList_free(ptr noundef nonnull %133) #18
  %134 = load ptr, ptr %129, align 8, !tbaa !57
  %135 = getelementptr inbounds %struct.CurveCache, ptr %134, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !58
  %137 = icmp eq ptr %136, null
  br i1 %137, label %140, label %138

138:                                              ; preds = %132
  tail call void @free_path(ptr noundef nonnull %136) #18
  %139 = load ptr, ptr %129, align 8, !tbaa !57
  br label %140

140:                                              ; preds = %138, %132
  %141 = phi ptr [ %139, %138 ], [ %134, %132 ]
  %142 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %142(ptr noundef %141) #18
  br label %143

143:                                              ; preds = %140, %127
  ret void
}

; Function Attrs: optsize
declare void @BKE_mesh_unlink(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_curve_unlink(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_mball_unlink(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_free_animdata(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_pose_free_ex(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare void @animviz_free_motionpath(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_bproperty_free_list(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @free_sensors(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @free_controllers(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @free_actuators(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_constraints_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @free_partdeflect(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_rigidbody_free_object(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_rigidbody_free_constraint(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @GPU_lamp_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_free_sculptsession(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_free(ptr noundef %0) local_unnamed_addr #4 {
  tail call void @BKE_object_free_ex(ptr noundef %0, i8 noundef zeroext 1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_unlink(ptr noundef %0) local_unnamed_addr #4 {
  %2 = alloca %struct.ListBase, align 8
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.SeqIterator, align 8
  %5 = alloca %struct.BLI_mempool_iter, align 8
  %6 = load ptr, ptr @G, align 8, !tbaa !121
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 93
  tail call void @unlink_controllers(ptr noundef nonnull %7) #18
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 94
  tail call void @unlink_actuators(ptr noundef nonnull %8) #18
  %9 = getelementptr inbounds %struct.Main, ptr %6, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = icmp eq ptr %10, null
  br i1 %11, label %287, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %14 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 110
  br label %18

15:                                               ; preds = %284, %274
  %16 = load ptr, ptr %19, align 8, !tbaa !47
  %17 = icmp eq ptr %16, null
  br i1 %17, label %287, label %18, !llvm.loop !123

18:                                               ; preds = %12, %15
  %19 = phi ptr [ %10, %12 ], [ %16, %15 ]
  %20 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 11
  %21 = load ptr, ptr %20, align 8, !tbaa !124
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store ptr null, ptr %20, align 8, !tbaa !124
  br label %24

24:                                               ; preds = %23, %18
  %25 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 13
  %26 = load ptr, ptr %25, align 8, !tbaa !125
  %27 = icmp eq ptr %26, %0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store ptr null, ptr %25, align 8, !tbaa !125
  call void @DAG_id_tag_update(ptr noundef nonnull %19, i16 noundef signext 1) #18
  br label %29

29:                                               ; preds = %28, %24
  %30 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 12
  %31 = load ptr, ptr %30, align 8, !tbaa !126
  %32 = icmp eq ptr %31, %0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store ptr null, ptr %30, align 8, !tbaa !126
  br label %34

34:                                               ; preds = %33, %29
  %35 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !127
  %37 = icmp eq ptr %36, %0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store ptr null, ptr %35, align 8, !tbaa !127
  call void @DAG_id_tag_update(ptr noundef nonnull %19, i16 noundef signext 7) #18
  br label %39

39:                                               ; preds = %38, %34
  call void @modifiers_foreachObjectLink(ptr noundef nonnull %19, ptr noundef nonnull @unlink_object__unlinkModifierLinks, ptr noundef %0) #18
  %40 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 3
  %41 = load i16, ptr %40, align 8, !tbaa !68
  switch i16 %41, label %109 [
    i16 2, label %42
    i16 4, label %42
    i16 25, label %59
  ]

42:                                               ; preds = %39, %39
  %43 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 19
  %44 = load ptr, ptr %43, align 8, !tbaa !71
  %45 = getelementptr inbounds %struct.Curve, ptr %44, i64 0, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !128
  %47 = icmp eq ptr %46, %0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store ptr null, ptr %45, align 8, !tbaa !128
  call void @DAG_id_tag_update(ptr noundef nonnull %19, i16 noundef signext 7) #18
  br label %49

49:                                               ; preds = %48, %42
  %50 = getelementptr inbounds %struct.Curve, ptr %44, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !129
  %52 = icmp eq ptr %51, %0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store ptr null, ptr %50, align 8, !tbaa !129
  call void @DAG_id_tag_update(ptr noundef nonnull %19, i16 noundef signext 7) #18
  br label %54

54:                                               ; preds = %53, %49
  %55 = getelementptr inbounds %struct.Curve, ptr %44, i64 0, i32 7
  %56 = load ptr, ptr %55, align 8, !tbaa !130
  %57 = icmp eq ptr %56, %0
  br i1 %57, label %58, label %122

58:                                               ; preds = %54
  store ptr null, ptr %55, align 8, !tbaa !130
  br label %120

59:                                               ; preds = %39
  %60 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 18
  %61 = load ptr, ptr %60, align 8, !tbaa !64
  %62 = icmp eq ptr %61, null
  br i1 %62, label %114, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %61, align 8, !tbaa !47
  %65 = icmp eq ptr %64, null
  br i1 %65, label %122, label %66

66:                                               ; preds = %63, %106
  %67 = phi ptr [ %107, %106 ], [ %64, %63 ]
  %68 = getelementptr inbounds %struct.bPoseChannel, ptr %67, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !47
  %70 = icmp eq ptr %69, null
  br i1 %70, label %101, label %71

71:                                               ; preds = %66, %98
  %72 = phi ptr [ %99, %98 ], [ %69, %66 ]
  %73 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %72) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %74 = icmp eq ptr %73, null
  br i1 %74, label %98, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %73, i64 0, i32 8
  %77 = load ptr, ptr %76, align 8, !tbaa !131
  %78 = icmp eq ptr %77, null
  br i1 %78, label %98, label %79

79:                                               ; preds = %75
  %80 = call i32 %77(ptr noundef nonnull %72, ptr noundef nonnull %2) #18
  %81 = load ptr, ptr %2, align 8, !tbaa !47
  %82 = icmp eq ptr %81, null
  br i1 %82, label %93, label %83

83:                                               ; preds = %79, %90
  %84 = phi ptr [ %91, %90 ], [ %81, %79 ]
  %85 = getelementptr inbounds %struct.bConstraintTarget, ptr %84, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !133
  %87 = icmp eq ptr %86, %0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  store ptr null, ptr %85, align 8, !tbaa !133
  %89 = getelementptr inbounds %struct.bConstraintTarget, ptr %84, i64 0, i32 3
  store i8 0, ptr %89, align 8, !tbaa !65
  call void @DAG_id_tag_update(ptr noundef nonnull %19, i16 noundef signext 2) #18
  br label %90

90:                                               ; preds = %83, %88
  %91 = load ptr, ptr %84, align 8, !tbaa !47
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %83, !llvm.loop !135

93:                                               ; preds = %90, %79
  %94 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %73, i64 0, i32 9
  %95 = load ptr, ptr %94, align 8, !tbaa !136
  %96 = icmp eq ptr %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  call void %95(ptr noundef nonnull %72, ptr noundef nonnull %2, i8 noundef zeroext 0) #18
  br label %98

98:                                               ; preds = %93, %97, %75, %71
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #20
  %99 = load ptr, ptr %72, align 8, !tbaa !47
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %71, !llvm.loop !137

101:                                              ; preds = %98, %66
  %102 = getelementptr inbounds %struct.bPoseChannel, ptr %67, i64 0, i32 18
  %103 = load ptr, ptr %102, align 8, !tbaa !138
  %104 = icmp eq ptr %103, %0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store ptr null, ptr %102, align 8, !tbaa !138
  br label %106

106:                                              ; preds = %101, %105
  %107 = load ptr, ptr %67, align 8, !tbaa !47
  %108 = icmp eq ptr %107, null
  br i1 %108, label %122, label %66, !llvm.loop !140

109:                                              ; preds = %39
  %110 = load i16, ptr %13, align 8, !tbaa !68
  %111 = icmp eq i16 %110, 5
  %112 = icmp eq i16 %41, 5
  %113 = or i1 %112, %111
  br i1 %113, label %117, label %122

114:                                              ; preds = %59
  %115 = load i16, ptr %13, align 8, !tbaa !68
  %116 = icmp eq i16 %115, 5
  br i1 %116, label %117, label %122

117:                                              ; preds = %114, %109
  %118 = call zeroext i8 @BKE_mball_is_basis_for(ptr noundef nonnull %19, ptr noundef nonnull %0) #18
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %117, %58
  %121 = phi i16 [ 7, %58 ], [ 2, %117 ]
  call void @DAG_id_tag_update(ptr noundef nonnull %19, i16 noundef signext %121) #18
  br label %122

122:                                              ; preds = %106, %120, %63, %109, %114, %117, %54
  call void @sca_remove_ob_poin(ptr noundef nonnull %19, ptr noundef %0) #18
  %123 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 106
  %124 = load ptr, ptr %123, align 8, !tbaa !47
  %125 = icmp eq ptr %124, null
  br i1 %125, label %156, label %126

126:                                              ; preds = %122, %153
  %127 = phi ptr [ %154, %153 ], [ %124, %122 ]
  %128 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %127) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %129 = icmp eq ptr %128, null
  br i1 %129, label %153, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %128, i64 0, i32 8
  %132 = load ptr, ptr %131, align 8, !tbaa !131
  %133 = icmp eq ptr %132, null
  br i1 %133, label %153, label %134

134:                                              ; preds = %130
  %135 = call i32 %132(ptr noundef nonnull %127, ptr noundef nonnull %3) #18
  %136 = load ptr, ptr %3, align 8, !tbaa !47
  %137 = icmp eq ptr %136, null
  br i1 %137, label %148, label %138

138:                                              ; preds = %134, %145
  %139 = phi ptr [ %146, %145 ], [ %136, %134 ]
  %140 = getelementptr inbounds %struct.bConstraintTarget, ptr %139, i64 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !133
  %142 = icmp eq ptr %141, %0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  store ptr null, ptr %140, align 8, !tbaa !133
  %144 = getelementptr inbounds %struct.bConstraintTarget, ptr %139, i64 0, i32 3
  store i8 0, ptr %144, align 8, !tbaa !65
  call void @DAG_id_tag_update(ptr noundef nonnull %19, i16 noundef signext 2) #18
  br label %145

145:                                              ; preds = %138, %143
  %146 = load ptr, ptr %139, align 8, !tbaa !47
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %138, !llvm.loop !141

148:                                              ; preds = %145, %134
  %149 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %128, i64 0, i32 9
  %150 = load ptr, ptr %149, align 8, !tbaa !136
  %151 = icmp eq ptr %150, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %148
  call void %150(ptr noundef nonnull %127, ptr noundef nonnull %3, i8 noundef zeroext 0) #18
  br label %153

153:                                              ; preds = %148, %152, %130, %126
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  %154 = load ptr, ptr %127, align 8, !tbaa !47
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %126, !llvm.loop !142

156:                                              ; preds = %153, %122
  %157 = load ptr, ptr %14, align 8, !tbaa !118
  %158 = icmp eq ptr %157, null
  br i1 %158, label %177, label %159

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 111
  %161 = load ptr, ptr %160, align 8, !tbaa !55
  %162 = icmp eq ptr %161, null
  br i1 %162, label %164, label %163

163:                                              ; preds = %159
  call void @DAG_id_tag_update(ptr noundef nonnull %19, i16 noundef signext 2) #18
  br label %164

164:                                              ; preds = %163, %159
  %165 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 26
  %166 = load ptr, ptr %165, align 8, !tbaa !47
  %167 = icmp eq ptr %166, null
  br i1 %167, label %177, label %168

168:                                              ; preds = %164, %174
  %169 = phi ptr [ %175, %174 ], [ %166, %164 ]
  %170 = getelementptr inbounds %struct.ModifierData, ptr %169, i64 0, i32 2
  %171 = load i32, ptr %170, align 8, !tbaa !69
  %172 = icmp eq i32 %171, 22
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  call void @DAG_id_tag_update(ptr noundef nonnull %19, i16 noundef signext 2) #18
  br label %174

174:                                              ; preds = %168, %173
  %175 = load ptr, ptr %169, align 8, !tbaa !47
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %168, !llvm.loop !143

177:                                              ; preds = %174, %164, %156
  %178 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 109
  %179 = load ptr, ptr %178, align 8, !tbaa !144
  %180 = icmp eq ptr %179, null
  br i1 %180, label %274, label %181

181:                                              ; preds = %177, %267
  %182 = phi ptr [ %268, %267 ], [ %179, %177 ]
  %183 = getelementptr inbounds %struct.ParticleSystem, ptr %182, i64 0, i32 17
  br label %184

184:                                              ; preds = %188, %181
  %185 = phi ptr [ %183, %181 ], [ %186, %188 ]
  %186 = load ptr, ptr %185, align 8, !tbaa !47
  %187 = icmp eq ptr %186, null
  br i1 %187, label %194, label %188

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.ParticleTarget, ptr %186, i64 0, i32 2
  %190 = load ptr, ptr %189, align 8, !tbaa !145
  %191 = icmp eq ptr %190, %0
  br i1 %191, label %192, label %184, !llvm.loop !147

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.ParticleTarget, ptr %186, i64 0, i32 2
  store ptr null, ptr %193, align 8, !tbaa !145
  call void @DAG_id_tag_update(ptr noundef nonnull %19, i16 noundef signext 2) #18
  br label %194

194:                                              ; preds = %184, %192
  %195 = getelementptr inbounds %struct.ParticleSystem, ptr %182, i64 0, i32 14
  %196 = load ptr, ptr %195, align 8, !tbaa !148
  %197 = icmp eq ptr %196, %0
  br i1 %197, label %198, label %199

198:                                              ; preds = %194
  store ptr null, ptr %195, align 8, !tbaa !148
  call void @DAG_id_tag_update(ptr noundef nonnull %19, i16 noundef signext 2) #18
  br label %199

199:                                              ; preds = %198, %194
  %200 = getelementptr inbounds %struct.ParticleSystem, ptr %182, i64 0, i32 2
  %201 = load ptr, ptr %200, align 8, !tbaa !150
  %202 = getelementptr inbounds %struct.ParticleSettings, ptr %201, i64 0, i32 125
  %203 = load ptr, ptr %202, align 8, !tbaa !151
  %204 = icmp eq ptr %203, %0
  br i1 %204, label %205, label %206

205:                                              ; preds = %199
  store ptr null, ptr %202, align 8, !tbaa !151
  br label %206

206:                                              ; preds = %205, %199
  %207 = getelementptr inbounds %struct.ParticleSettings, ptr %201, i64 0, i32 11
  %208 = load i16, ptr %207, align 8, !tbaa !153
  %209 = icmp eq i16 %208, 3
  br i1 %209, label %210, label %229

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.ParticleSystem, ptr %182, i64 0, i32 26
  %212 = load i32, ptr %211, align 8, !tbaa !154
  %213 = icmp sgt i32 %212, 0
  br i1 %213, label %214, label %229

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.ParticleSystem, ptr %182, i64 0, i32 3
  %216 = load ptr, ptr %215, align 8, !tbaa !155
  br label %217

217:                                              ; preds = %214, %225
  %218 = phi i32 [ %226, %225 ], [ 0, %214 ]
  %219 = phi ptr [ %227, %225 ], [ %216, %214 ]
  %220 = getelementptr inbounds %struct.ParticleData, ptr %219, i64 0, i32 4
  %221 = load ptr, ptr %220, align 8, !tbaa !156
  %222 = load ptr, ptr %221, align 8, !tbaa !159
  %223 = icmp eq ptr %222, %0
  br i1 %223, label %224, label %225

224:                                              ; preds = %217
  store ptr null, ptr %221, align 8, !tbaa !159
  br label %225

225:                                              ; preds = %217, %224
  %226 = add nuw nsw i32 %218, 1
  %227 = getelementptr inbounds %struct.ParticleData, ptr %219, i64 1
  %228 = icmp eq i32 %226, %212
  br i1 %228, label %229, label %217, !llvm.loop !162

229:                                              ; preds = %225, %210, %206
  %230 = getelementptr inbounds %struct.ParticleSettings, ptr %201, i64 0, i32 2
  %231 = load ptr, ptr %230, align 8, !tbaa !163
  %232 = icmp eq ptr %231, null
  br i1 %232, label %262, label %233

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.BoidSettings, ptr %231, i64 0, i32 22
  %235 = load ptr, ptr %234, align 8, !tbaa !47
  %236 = icmp eq ptr %235, null
  br i1 %236, label %262, label %240

237:                                              ; preds = %259, %240
  %238 = load ptr, ptr %241, align 8, !tbaa !47
  %239 = icmp eq ptr %238, null
  br i1 %239, label %262, label %240, !llvm.loop !164

240:                                              ; preds = %233, %237
  %241 = phi ptr [ %238, %237 ], [ %235, %233 ]
  %242 = getelementptr inbounds %struct.BoidState, ptr %241, i64 0, i32 2
  %243 = load ptr, ptr %242, align 8, !tbaa !47
  %244 = icmp eq ptr %243, null
  br i1 %244, label %237, label %245

245:                                              ; preds = %240, %259
  %246 = phi ptr [ %260, %259 ], [ %243, %240 ]
  %247 = getelementptr inbounds %struct.BoidRule, ptr %246, i64 0, i32 2
  %248 = load i32, ptr %247, align 8, !tbaa !165
  switch i32 %248, label %259 [
    i32 2, label %249
    i32 6, label %253
  ]

249:                                              ; preds = %245
  %250 = getelementptr inbounds %struct.BoidRuleGoalAvoid, ptr %246, i64 0, i32 1
  %251 = load ptr, ptr %250, align 8, !tbaa !167
  %252 = icmp eq ptr %251, %0
  br i1 %252, label %257, label %259

253:                                              ; preds = %245
  %254 = getelementptr inbounds %struct.BoidRuleFollowLeader, ptr %246, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !169
  %256 = icmp eq ptr %255, %0
  br i1 %256, label %257, label %259

257:                                              ; preds = %253, %249
  %258 = phi ptr [ %250, %249 ], [ %254, %253 ]
  store ptr null, ptr %258, align 8, !tbaa !47
  br label %259

259:                                              ; preds = %257, %253, %245, %249
  %260 = load ptr, ptr %246, align 8, !tbaa !47
  %261 = icmp eq ptr %260, null
  br i1 %261, label %237, label %245, !llvm.loop !171

262:                                              ; preds = %237, %233, %229
  %263 = getelementptr inbounds %struct.ParticleSystem, ptr %182, i64 0, i32 16
  %264 = load ptr, ptr %263, align 8, !tbaa !172
  %265 = icmp eq ptr %264, %0
  br i1 %265, label %266, label %267

266:                                              ; preds = %262
  store ptr null, ptr %263, align 8, !tbaa !172
  br label %267

267:                                              ; preds = %266, %262
  %268 = load ptr, ptr %182, align 8, !tbaa !173
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %181, !llvm.loop !174

270:                                              ; preds = %267
  %271 = load ptr, ptr %14, align 8, !tbaa !118
  %272 = icmp eq ptr %271, null
  br i1 %272, label %274, label %273

273:                                              ; preds = %270
  call void @DAG_id_tag_update(ptr noundef nonnull %19, i16 noundef signext 2) #18
  br label %274

274:                                              ; preds = %270, %273, %177
  %275 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 132
  %276 = load ptr, ptr %275, align 8, !tbaa !47
  %277 = icmp eq ptr %276, null
  br i1 %277, label %15, label %278

278:                                              ; preds = %274, %284
  %279 = phi ptr [ %285, %284 ], [ %276, %274 ]
  %280 = getelementptr inbounds %struct.LodLevel, ptr %279, i64 0, i32 2
  %281 = load ptr, ptr %280, align 8, !tbaa !175
  %282 = icmp eq ptr %281, %0
  br i1 %282, label %283, label %284

283:                                              ; preds = %278
  store ptr null, ptr %280, align 8, !tbaa !175
  br label %284

284:                                              ; preds = %278, %283
  %285 = load ptr, ptr %279, align 8, !tbaa !47
  %286 = icmp eq ptr %285, null
  br i1 %286, label %15, label %278, !llvm.loop !177

287:                                              ; preds = %15, %1
  %288 = getelementptr inbounds %struct.Main, ptr %6, i64 0, i32 17
  %289 = load ptr, ptr %288, align 8, !tbaa !47
  %290 = icmp eq ptr %289, null
  br i1 %290, label %309, label %294

291:                                              ; preds = %306
  %292 = load ptr, ptr %295, align 8, !tbaa !47
  %293 = icmp eq ptr %292, null
  br i1 %293, label %309, label %294, !llvm.loop !178

294:                                              ; preds = %287, %291
  %295 = phi ptr [ %292, %291 ], [ %289, %287 ]
  br label %296

296:                                              ; preds = %294, %306
  %297 = phi i64 [ 0, %294 ], [ %307, %306 ]
  %298 = getelementptr inbounds %struct.Material, ptr %295, i64 0, i32 102, i64 %297
  %299 = load ptr, ptr %298, align 8, !tbaa !47
  %300 = icmp eq ptr %299, null
  br i1 %300, label %306, label %301

301:                                              ; preds = %296
  %302 = getelementptr inbounds %struct.MTex, ptr %299, i64 0, i32 4
  %303 = load ptr, ptr %302, align 8, !tbaa !179
  %304 = icmp eq ptr %303, %0
  br i1 %304, label %305, label %306

305:                                              ; preds = %301
  store ptr null, ptr %302, align 8, !tbaa !179
  br label %306

306:                                              ; preds = %296, %301, %305
  %307 = add nuw nsw i64 %297, 1
  %308 = icmp eq i64 %307, 18
  br i1 %308, label %291, label %296, !llvm.loop !181

309:                                              ; preds = %291, %287
  %310 = getelementptr inbounds %struct.Main, ptr %6, i64 0, i32 18
  %311 = load ptr, ptr %310, align 8, !tbaa !47
  %312 = icmp eq ptr %311, null
  br i1 %312, label %343, label %313

313:                                              ; preds = %309, %340
  %314 = phi ptr [ %341, %340 ], [ %311, %309 ]
  %315 = getelementptr inbounds %struct.Tex, ptr %314, i64 0, i32 56
  %316 = load ptr, ptr %315, align 8, !tbaa !182
  %317 = icmp eq ptr %316, null
  br i1 %317, label %322, label %318

318:                                              ; preds = %313
  %319 = load ptr, ptr %316, align 8, !tbaa !185
  %320 = icmp eq ptr %319, %0
  br i1 %320, label %321, label %322

321:                                              ; preds = %318
  store ptr null, ptr %316, align 8, !tbaa !185
  br label %322

322:                                              ; preds = %321, %318, %313
  %323 = getelementptr inbounds %struct.Tex, ptr %314, i64 0, i32 58
  %324 = load ptr, ptr %323, align 8, !tbaa !187
  %325 = icmp eq ptr %324, null
  br i1 %325, label %331, label %326

326:                                              ; preds = %322
  %327 = getelementptr inbounds %struct.PointDensity, ptr %324, i64 0, i32 8
  %328 = load ptr, ptr %327, align 8, !tbaa !188
  %329 = icmp eq ptr %328, %0
  br i1 %329, label %330, label %331

330:                                              ; preds = %326
  store ptr null, ptr %327, align 8, !tbaa !188
  br label %331

331:                                              ; preds = %330, %326, %322
  %332 = getelementptr inbounds %struct.Tex, ptr %314, i64 0, i32 59
  %333 = load ptr, ptr %332, align 8, !tbaa !190
  %334 = icmp eq ptr %333, null
  br i1 %334, label %340, label %335

335:                                              ; preds = %331
  %336 = getelementptr inbounds %struct.VoxelData, ptr %333, i64 0, i32 9
  %337 = load ptr, ptr %336, align 8, !tbaa !191
  %338 = icmp eq ptr %337, %0
  br i1 %338, label %339, label %340

339:                                              ; preds = %335
  store ptr null, ptr %336, align 8, !tbaa !191
  br label %340

340:                                              ; preds = %331, %335, %339
  %341 = load ptr, ptr %314, align 8, !tbaa !47
  %342 = icmp eq ptr %341, null
  br i1 %342, label %343, label %313, !llvm.loop !193

343:                                              ; preds = %340, %309
  %344 = getelementptr inbounds %struct.Main, ptr %6, i64 0, i32 25
  %345 = load ptr, ptr %344, align 8, !tbaa !47
  %346 = icmp eq ptr %345, null
  br i1 %346, label %368, label %347

347:                                              ; preds = %343, %365
  %348 = phi ptr [ %366, %365 ], [ %345, %343 ]
  %349 = getelementptr inbounds %struct.ID, ptr %348, i64 0, i32 3
  %350 = load ptr, ptr %349, align 8, !tbaa !194
  %351 = icmp eq ptr %350, null
  br i1 %351, label %352, label %365

352:                                              ; preds = %347, %362
  %353 = phi i64 [ %363, %362 ], [ 0, %347 ]
  %354 = getelementptr inbounds %struct.World, ptr %348, i64 0, i32 70, i64 %353
  %355 = load ptr, ptr %354, align 8, !tbaa !47
  %356 = icmp eq ptr %355, null
  br i1 %356, label %362, label %357

357:                                              ; preds = %352
  %358 = getelementptr inbounds %struct.MTex, ptr %355, i64 0, i32 4
  %359 = load ptr, ptr %358, align 8, !tbaa !179
  %360 = icmp eq ptr %359, %0
  br i1 %360, label %361, label %362

361:                                              ; preds = %357
  store ptr null, ptr %358, align 8, !tbaa !179
  br label %362

362:                                              ; preds = %352, %357, %361
  %363 = add nuw nsw i64 %353, 1
  %364 = icmp eq i64 %363, 18
  br i1 %364, label %365, label %352, !llvm.loop !196

365:                                              ; preds = %362, %347
  %366 = load ptr, ptr %348, align 8, !tbaa !47
  %367 = icmp eq ptr %366, null
  br i1 %367, label %368, label %347, !llvm.loop !197

368:                                              ; preds = %365, %343
  %369 = getelementptr inbounds %struct.Main, ptr %6, i64 0, i32 11
  %370 = load ptr, ptr %369, align 8, !tbaa !47
  %371 = icmp eq ptr %370, null
  br i1 %371, label %451, label %372

372:                                              ; preds = %368
  %373 = getelementptr inbounds %struct.SeqIterator, ptr %4, i64 0, i32 4
  %374 = getelementptr inbounds %struct.SeqIterator, ptr %4, i64 0, i32 3
  br label %375

375:                                              ; preds = %372, %448
  %376 = phi ptr [ %370, %372 ], [ %449, %448 ]
  %377 = getelementptr inbounds %struct.ID, ptr %376, i64 0, i32 3
  %378 = load ptr, ptr %377, align 8, !tbaa !198
  %379 = icmp eq ptr %378, null
  br i1 %379, label %380, label %448

380:                                              ; preds = %375
  %381 = getelementptr inbounds %struct.Scene, ptr %376, i64 0, i32 2
  %382 = load ptr, ptr %381, align 8, !tbaa !217
  %383 = icmp eq ptr %382, %0
  br i1 %383, label %384, label %385

384:                                              ; preds = %380
  store ptr null, ptr %381, align 8, !tbaa !217
  br label %385

385:                                              ; preds = %384, %380
  %386 = getelementptr inbounds %struct.Scene, ptr %376, i64 0, i32 20
  %387 = load ptr, ptr %386, align 8, !tbaa !218
  %388 = getelementptr inbounds %struct.ToolSettings, ptr %387, i64 0, i32 41
  %389 = load ptr, ptr %388, align 8, !tbaa !219
  %390 = icmp eq ptr %389, %0
  br i1 %390, label %391, label %392

391:                                              ; preds = %385
  store ptr null, ptr %388, align 8, !tbaa !219
  br label %392

392:                                              ; preds = %391, %385
  %393 = getelementptr inbounds %struct.ToolSettings, ptr %387, i64 0, i32 18, i32 13
  %394 = load ptr, ptr %393, align 8, !tbaa !226
  %395 = icmp eq ptr %394, %0
  br i1 %395, label %396, label %397

396:                                              ; preds = %392
  store ptr null, ptr %393, align 8, !tbaa !226
  br label %397

397:                                              ; preds = %396, %392
  %398 = getelementptr inbounds %struct.Scene, ptr %376, i64 0, i32 24
  %399 = load ptr, ptr %398, align 8, !tbaa !47
  %400 = icmp eq ptr %399, null
  br i1 %400, label %410, label %401

401:                                              ; preds = %397, %407
  %402 = phi ptr [ %408, %407 ], [ %399, %397 ]
  %403 = getelementptr inbounds %struct.TimeMarker, ptr %402, i64 0, i32 5
  %404 = load ptr, ptr %403, align 8, !tbaa !227
  %405 = icmp eq ptr %404, %0
  br i1 %405, label %406, label %407

406:                                              ; preds = %401
  store ptr null, ptr %403, align 8, !tbaa !227
  br label %407

407:                                              ; preds = %401, %406
  %408 = load ptr, ptr %402, align 8, !tbaa !47
  %409 = icmp eq ptr %408, null
  br i1 %409, label %410, label %401, !llvm.loop !229

410:                                              ; preds = %407, %397
  %411 = getelementptr inbounds %struct.Scene, ptr %376, i64 0, i32 19
  %412 = load ptr, ptr %411, align 8, !tbaa !230
  %413 = icmp eq ptr %412, null
  br i1 %413, label %427, label %414

414:                                              ; preds = %410
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  call void @BKE_sequence_iterator_begin(ptr noundef nonnull %412, ptr noundef nonnull %4, i8 noundef zeroext 0) #18
  %415 = load i32, ptr %373, align 8, !tbaa !231
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %426, label %417

417:                                              ; preds = %414, %423
  %418 = load ptr, ptr %374, align 8, !tbaa !233
  %419 = getelementptr inbounds %struct.Sequence, ptr %418, i64 0, i32 27
  %420 = load ptr, ptr %419, align 8, !tbaa !234
  %421 = icmp eq ptr %420, %0
  br i1 %421, label %422, label %423

422:                                              ; preds = %417
  store ptr null, ptr %419, align 8, !tbaa !234
  br label %423

423:                                              ; preds = %417, %422
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %4) #18
  %424 = load i32, ptr %373, align 8, !tbaa !231
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %426, label %417, !llvm.loop !236

426:                                              ; preds = %423, %414
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  br label %427

427:                                              ; preds = %426, %410
  %428 = getelementptr inbounds %struct.Scene, ptr %376, i64 0, i32 22, i32 60
  %429 = load ptr, ptr %428, align 8, !tbaa !47
  %430 = icmp eq ptr %429, null
  br i1 %430, label %448, label %434

431:                                              ; preds = %445, %434
  %432 = load ptr, ptr %435, align 8, !tbaa !47
  %433 = icmp eq ptr %432, null
  br i1 %433, label %448, label %434, !llvm.loop !237

434:                                              ; preds = %427, %431
  %435 = phi ptr [ %432, %431 ], [ %429, %427 ]
  %436 = getelementptr inbounds %struct.SceneRenderLayer, ptr %435, i64 0, i32 13, i32 7
  %437 = load ptr, ptr %436, align 8, !tbaa !47
  %438 = icmp eq ptr %437, null
  br i1 %438, label %431, label %439

439:                                              ; preds = %434, %445
  %440 = phi ptr [ %446, %445 ], [ %437, %434 ]
  %441 = getelementptr inbounds %struct.FreestyleLineSet, ptr %440, i64 0, i32 13
  %442 = load ptr, ptr %441, align 8, !tbaa !238
  %443 = icmp eq ptr %442, null
  br i1 %443, label %445, label %444

444:                                              ; preds = %439
  call void @BKE_linestyle_target_object_unlink(ptr noundef nonnull %442, ptr noundef %0) #18
  br label %445

445:                                              ; preds = %439, %444
  %446 = load ptr, ptr %440, align 8, !tbaa !47
  %447 = icmp eq ptr %446, null
  br i1 %447, label %431, label %439, !llvm.loop !240

448:                                              ; preds = %431, %427, %375
  %449 = load ptr, ptr %376, align 8, !tbaa !47
  %450 = icmp eq ptr %449, null
  br i1 %450, label %451, label %375, !llvm.loop !241

451:                                              ; preds = %448, %368
  %452 = getelementptr inbounds %struct.Main, ptr %6, i64 0, i32 26
  %453 = load ptr, ptr %452, align 8, !tbaa !47
  %454 = icmp eq ptr %453, null
  br i1 %454, label %583, label %458

455:                                              ; preds = %463, %458
  %456 = load ptr, ptr %459, align 8, !tbaa !47
  %457 = icmp eq ptr %456, null
  br i1 %457, label %583, label %458, !llvm.loop !242

458:                                              ; preds = %451, %455
  %459 = phi ptr [ %456, %455 ], [ %453, %451 ]
  %460 = getelementptr inbounds %struct.bScreen, ptr %459, i64 0, i32 3
  %461 = load ptr, ptr %460, align 8, !tbaa !47
  %462 = icmp eq ptr %461, null
  br i1 %462, label %455, label %466

463:                                              ; preds = %580, %466
  %464 = load ptr, ptr %467, align 8, !tbaa !47
  %465 = icmp eq ptr %464, null
  br i1 %465, label %455, label %466, !llvm.loop !243

466:                                              ; preds = %458, %463
  %467 = phi ptr [ %464, %463 ], [ %461, %458 ]
  %468 = getelementptr inbounds %struct.ScrArea, ptr %467, i64 0, i32 19
  %469 = load ptr, ptr %468, align 8, !tbaa !47
  %470 = icmp eq ptr %469, null
  br i1 %470, label %463, label %471

471:                                              ; preds = %466
  %472 = getelementptr inbounds %struct.ScrArea, ptr %467, i64 0, i32 8
  %473 = getelementptr inbounds %struct.ScrArea, ptr %467, i64 0, i32 20
  br label %474

474:                                              ; preds = %471, %580
  %475 = phi ptr [ %469, %471 ], [ %581, %580 ]
  %476 = getelementptr inbounds %struct.SpaceLink, ptr %475, i64 0, i32 3
  %477 = load i32, ptr %476, align 8, !tbaa !244
  switch i32 %477, label %580 [
    i32 1, label %478
    i32 3, label %547
    i32 4, label %564
    i32 16, label %572
  ]

478:                                              ; preds = %474
  %479 = getelementptr inbounds %struct.View3D, ptr %475, i64 0, i32 16
  %480 = load ptr, ptr %479, align 8, !tbaa !246
  %481 = icmp eq ptr %480, %0
  br i1 %481, label %482, label %484

482:                                              ; preds = %478
  store ptr null, ptr %479, align 8, !tbaa !246
  %483 = getelementptr inbounds %struct.View3D, ptr %475, i64 0, i32 21
  store i8 0, ptr %483, align 8, !tbaa !65
  br label %484

484:                                              ; preds = %482, %478
  %485 = getelementptr inbounds %struct.View3D, ptr %475, i64 0, i32 20
  %486 = load ptr, ptr %485, align 8, !tbaa !248
  %487 = icmp eq ptr %486, null
  br i1 %487, label %494, label %488

488:                                              ; preds = %484
  %489 = getelementptr inbounds %struct.View3D, ptr %486, i64 0, i32 16
  %490 = load ptr, ptr %489, align 8, !tbaa !246
  %491 = icmp eq ptr %490, %0
  br i1 %491, label %492, label %494

492:                                              ; preds = %488
  store ptr null, ptr %489, align 8, !tbaa !246
  %493 = getelementptr inbounds %struct.View3D, ptr %486, i64 0, i32 21
  store i8 0, ptr %493, align 8, !tbaa !65
  br label %494

494:                                              ; preds = %492, %488, %484
  %495 = getelementptr inbounds %struct.View3D, ptr %475, i64 0, i32 15
  %496 = load ptr, ptr %495, align 8, !tbaa !249
  %497 = icmp eq ptr %496, %0
  br i1 %497, label %498, label %499

498:                                              ; preds = %494
  store ptr null, ptr %495, align 8, !tbaa !249
  br label %499

499:                                              ; preds = %498, %494
  %500 = phi i32 [ 3, %498 ], [ 2, %494 ]
  %501 = load ptr, ptr %485, align 8, !tbaa !248
  %502 = icmp eq ptr %501, null
  br i1 %502, label %508, label %503

503:                                              ; preds = %499
  %504 = getelementptr inbounds %struct.View3D, ptr %501, i64 0, i32 15
  %505 = load ptr, ptr %504, align 8, !tbaa !249
  %506 = icmp eq ptr %505, %0
  br i1 %506, label %507, label %508

507:                                              ; preds = %503
  store ptr null, ptr %504, align 8, !tbaa !249
  br label %509

508:                                              ; preds = %503, %499
  br i1 %497, label %509, label %580

509:                                              ; preds = %507, %508
  %510 = phi i32 [ %500, %507 ], [ 1, %508 ]
  %511 = load i8, ptr %472, align 8, !tbaa !250
  %512 = icmp eq i8 %511, 1
  br i1 %512, label %513, label %580

513:                                              ; preds = %509
  %514 = load ptr, ptr %473, align 8, !tbaa !47
  %515 = icmp eq ptr %514, null
  br i1 %515, label %580, label %516

516:                                              ; preds = %513
  %517 = and i32 %510, -3
  %518 = icmp eq i32 %517, 1
  %519 = and i32 %510, -2
  %520 = icmp eq i32 %519, 2
  br label %521

521:                                              ; preds = %516, %544
  %522 = phi ptr [ %514, %516 ], [ %545, %544 ]
  %523 = getelementptr inbounds %struct.ARegion, ptr %522, i64 0, i32 8
  %524 = load i16, ptr %523, align 2, !tbaa !252
  %525 = icmp eq i16 %524, 0
  br i1 %525, label %526, label %544

526:                                              ; preds = %521
  %527 = getelementptr inbounds %struct.ARegion, ptr %522, i64 0, i32 30
  %528 = load ptr, ptr %527, align 8, !tbaa !255
  br i1 %518, label %529, label %534

529:                                              ; preds = %526
  %530 = getelementptr inbounds %struct.RegionView3D, ptr %528, i64 0, i32 25
  %531 = load i8, ptr %530, align 1, !tbaa !256
  %532 = icmp eq i8 %531, 2
  br i1 %532, label %533, label %534

533:                                              ; preds = %529
  store i8 1, ptr %530, align 1, !tbaa !256
  br label %534

534:                                              ; preds = %529, %533, %526
  br i1 %520, label %535, label %544

535:                                              ; preds = %534
  %536 = getelementptr inbounds %struct.RegionView3D, ptr %528, i64 0, i32 10
  %537 = load ptr, ptr %536, align 8, !tbaa !258
  %538 = icmp eq ptr %537, null
  br i1 %538, label %544, label %539

539:                                              ; preds = %535
  %540 = getelementptr inbounds %struct.RegionView3D, ptr %537, i64 0, i32 25
  %541 = load i8, ptr %540, align 1, !tbaa !256
  %542 = icmp eq i8 %541, 2
  br i1 %542, label %543, label %544

543:                                              ; preds = %539
  store i8 1, ptr %540, align 1, !tbaa !256
  br label %544

544:                                              ; preds = %521, %535, %539, %543, %534
  %545 = load ptr, ptr %522, align 8, !tbaa !47
  %546 = icmp eq ptr %545, null
  br i1 %546, label %580, label %521, !llvm.loop !259

547:                                              ; preds = %474
  %548 = getelementptr inbounds %struct.SpaceOops, ptr %475, i64 0, i32 8
  %549 = load ptr, ptr %548, align 8, !tbaa !260
  %550 = icmp eq ptr %549, null
  br i1 %550, label %580, label %551

551:                                              ; preds = %547
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #20
  call void @BLI_mempool_iternew(ptr noundef nonnull %549, ptr noundef nonnull %5) #18
  %552 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %5) #18
  %553 = icmp eq ptr %552, null
  br i1 %553, label %563, label %554

554:                                              ; preds = %551, %560
  %555 = phi ptr [ %561, %560 ], [ %552, %551 ]
  %556 = getelementptr inbounds %struct.TreeStoreElem, ptr %555, i64 0, i32 4
  %557 = load ptr, ptr %556, align 8, !tbaa !263
  %558 = icmp eq ptr %557, %0
  br i1 %558, label %559, label %560

559:                                              ; preds = %554
  store ptr null, ptr %556, align 8, !tbaa !263
  br label %560

560:                                              ; preds = %559, %554
  %561 = call ptr @BLI_mempool_iterstep(ptr noundef nonnull %5) #18
  %562 = icmp eq ptr %561, null
  br i1 %562, label %563, label %554, !llvm.loop !264

563:                                              ; preds = %560, %551
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  br label %580

564:                                              ; preds = %474
  %565 = getelementptr inbounds %struct.SpaceButs, ptr %475, i64 0, i32 20
  %566 = load ptr, ptr %565, align 8, !tbaa !265
  %567 = icmp eq ptr %566, %0
  br i1 %567, label %568, label %580

568:                                              ; preds = %564
  %569 = getelementptr inbounds %struct.SpaceButs, ptr %475, i64 0, i32 15
  %570 = load i8, ptr %569, align 8, !tbaa !267
  %571 = and i8 %570, -3
  store i8 %571, ptr %569, align 8, !tbaa !267
  store ptr null, ptr %565, align 8, !tbaa !265
  br label %580

572:                                              ; preds = %474
  %573 = getelementptr inbounds %struct.SpaceNode, ptr %475, i64 0, i32 8
  %574 = load ptr, ptr %573, align 8, !tbaa !268
  %575 = icmp eq ptr %574, %0
  br i1 %575, label %576, label %580

576:                                              ; preds = %572
  %577 = getelementptr inbounds %struct.SpaceNode, ptr %475, i64 0, i32 9
  %578 = load i16, ptr %577, align 8, !tbaa !270
  %579 = and i16 %578, -4097
  store i16 %579, ptr %577, align 8, !tbaa !270
  store ptr null, ptr %573, align 8, !tbaa !268
  br label %580

580:                                              ; preds = %544, %513, %572, %576, %474, %564, %568, %547, %563, %508, %509
  %581 = load ptr, ptr %475, align 8, !tbaa !47
  %582 = icmp eq ptr %581, null
  br i1 %582, label %463, label %474, !llvm.loop !271

583:                                              ; preds = %455, %451
  %584 = getelementptr inbounds %struct.Main, ptr %6, i64 0, i32 32
  %585 = load ptr, ptr %584, align 8, !tbaa !47
  %586 = icmp eq ptr %585, null
  br i1 %586, label %592, label %587

587:                                              ; preds = %583, %587
  %588 = phi ptr [ %590, %587 ], [ %585, %583 ]
  %589 = call zeroext i8 @BKE_group_object_unlink(ptr noundef nonnull %588, ptr noundef %0, ptr noundef null, ptr noundef null) #18
  %590 = load ptr, ptr %588, align 8, !tbaa !47
  %591 = icmp eq ptr %590, null
  br i1 %591, label %592, label %587, !llvm.loop !272

592:                                              ; preds = %587, %583
  %593 = getelementptr inbounds %struct.Main, ptr %6, i64 0, i32 22
  %594 = load ptr, ptr %593, align 8, !tbaa !47
  %595 = icmp eq ptr %594, null
  br i1 %595, label %605, label %596

596:                                              ; preds = %592, %602
  %597 = phi ptr [ %603, %602 ], [ %594, %592 ]
  %598 = getelementptr inbounds %struct.Camera, ptr %597, i64 0, i32 17
  %599 = load ptr, ptr %598, align 8, !tbaa !273
  %600 = icmp eq ptr %599, %0
  br i1 %600, label %601, label %602

601:                                              ; preds = %596
  store ptr null, ptr %598, align 8, !tbaa !273
  br label %602

602:                                              ; preds = %601, %596
  %603 = load ptr, ptr %597, align 8, !tbaa !47
  %604 = icmp eq ptr %603, null
  br i1 %604, label %605, label %596, !llvm.loop !275

605:                                              ; preds = %602, %592
  ret void
}

; Function Attrs: optsize
declare void @unlink_controllers(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @unlink_actuators(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: optsize
declare void @modifiers_foreachObjectLink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal void @unlink_object__unlinkModifierLinks(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #4 !PGOFuncName !276 {
  %4 = load ptr, ptr %2, align 8, !tbaa !47
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  store ptr null, ptr %2, align 8, !tbaa !47
  tail call void @DAG_id_tag_update(ptr noundef %1, i16 noundef signext 7) #18
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_constraint_typeinfo_get(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @BKE_mball_is_basis_for(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @sca_remove_ob_poin(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_sequence_iterator_begin(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_sequence_iterator_next(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_sequence_iterator_end(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_linestyle_target_object_unlink(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_mempool_iternew(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BLI_mempool_iterstep(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @BKE_group_object_unlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_object_is_in_editmode(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !68
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
  %10 = load ptr, ptr %9, align 8, !tbaa !277
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %33

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !278
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %33

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 53
  %18 = load ptr, ptr %17, align 8, !tbaa !280
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %33

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.MetaBall, ptr %3, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !281
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %33

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.Lattice, ptr %3, i64 0, i32 26
  %26 = load ptr, ptr %25, align 8, !tbaa !283
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %33

28:                                               ; preds = %5, %5
  %29 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !285
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %24, %20, %16, %12, %8, %5
  br label %33

33:                                               ; preds = %28, %24, %20, %16, %12, %8, %1, %32
  %34 = phi i8 [ 1, %8 ], [ 0, %32 ], [ 1, %12 ], [ 1, %16 ], [ 1, %20 ], [ 1, %24 ], [ 1, %28 ], [ 0, %1 ]
  ret i8 %34
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_object_is_in_editmode_vgroup(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !68
  switch i16 %3, label %6 [
    i16 1, label %4
    i16 22, label %4
  ]

4:                                                ; preds = %1, %1
  %5 = tail call zeroext i8 @BKE_object_is_in_editmode(ptr noundef nonnull %0) #19, !range !70
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i8 [ %5, %4 ], [ 0, %1 ]
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BKE_object_is_in_wpaint_select_vert(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !68
  %4 = icmp eq i16 %3, 1
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %9 = load i32, ptr %8, align 8, !tbaa !286
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 20
  %14 = load ptr, ptr %13, align 8, !tbaa !277
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 46
  %18 = load i8, ptr %17, align 1, !tbaa !287
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

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_object_exists_check(ptr noundef readnone %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @G, align 8, !tbaa !121
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 13
  br label %6

6:                                                ; preds = %10, %3
  %7 = phi ptr [ %5, %3 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = icmp eq ptr %8, %0
  br i1 %11, label %12, label %6, !llvm.loop !288

12:                                               ; preds = %6, %10, %1
  %13 = phi i8 [ 0, %1 ], [ 0, %6 ], [ 1, %10 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %4 = tail call ptr @BKE_mesh_add(ptr noundef %0, ptr noundef nonnull @.str) #18
  br label %25

5:                                                ; preds = %2
  %6 = tail call ptr @BKE_curve_add(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef 2) #18
  br label %25

7:                                                ; preds = %2
  %8 = tail call ptr @BKE_curve_add(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef 3) #18
  br label %25

9:                                                ; preds = %2
  %10 = tail call ptr @BKE_curve_add(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef 4) #18
  br label %25

11:                                               ; preds = %2
  %12 = tail call ptr @BKE_mball_add(ptr noundef %0, ptr noundef nonnull @.str.4) #18
  br label %25

13:                                               ; preds = %2
  %14 = tail call ptr @BKE_camera_add(ptr noundef %0, ptr noundef nonnull @.str.5) #18
  br label %25

15:                                               ; preds = %2
  %16 = tail call ptr @BKE_lamp_add(ptr noundef %0, ptr noundef nonnull @.str.6) #18
  br label %25

17:                                               ; preds = %2
  %18 = tail call ptr @BKE_lattice_add(ptr noundef %0, ptr noundef nonnull @.str.7) #18
  br label %25

19:                                               ; preds = %2
  %20 = tail call ptr @BKE_armature_add(ptr noundef %0, ptr noundef nonnull @.str.8) #18
  br label %25

21:                                               ; preds = %2
  %22 = tail call ptr @BKE_speaker_add(ptr noundef %0, ptr noundef nonnull @.str.9) #18
  br label %25

23:                                               ; preds = %2
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %1) #19
  br label %25

25:                                               ; preds = %2, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5, %3
  %26 = phi ptr [ null, %23 ], [ %22, %21 ], [ %20, %19 ], [ %18, %17 ], [ %16, %15 ], [ %14, %13 ], [ %12, %11 ], [ %10, %9 ], [ %8, %7 ], [ %6, %5 ], [ %4, %3 ], [ null, %2 ]
  ret ptr %26
}

; Function Attrs: optsize
declare ptr @BKE_mesh_add(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BKE_curve_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BKE_mball_add(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BKE_camera_add(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BKE_lamp_add(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BKE_lattice_add(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BKE_armature_add(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BKE_speaker_add(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_object_add_only_object(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call fastcc ptr @get_obdata_defname(i32 noundef %1) #19
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi ptr [ %2, %3 ], [ %6, %5 ]
  %9 = tail call ptr @BKE_libblock_alloc(ptr noundef %0, i16 noundef signext 16975, ptr noundef nonnull %8) #18
  %10 = trunc i32 %1 to i16
  %11 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 3
  store i16 %10, ptr %11, align 8, !tbaa !68
  %12 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 98
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %12, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 36
  %14 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 36, i64 2
  store float 1.000000e+00, ptr %14, align 4, !tbaa !34
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 38
  %16 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 38, i64 2
  store float 1.000000e+00, ptr %16, align 4, !tbaa !34
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %15, align 4, !tbaa !34
  %17 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 83
  store i16 1, ptr %17, align 8, !tbaa !38
  %18 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 43
  %19 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 45
  tail call void @unit_axis_angle(ptr noundef nonnull %18, ptr noundef nonnull %19) #18
  %20 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 44
  %21 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 46
  tail call void @unit_axis_angle(ptr noundef nonnull %20, ptr noundef nonnull %21) #18
  %22 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 41
  tail call void @unit_qt(ptr noundef nonnull %22) #18
  %23 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 42
  tail call void @unit_qt(ptr noundef nonnull %23) #18
  %24 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 56
  store i16 1024, ptr %24, align 2, !tbaa !289
  %25 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 49
  tail call void @unit_m4(ptr noundef nonnull %25) #18
  %26 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 48
  tail call void @unit_m4(ptr noundef nonnull %26) #18
  %27 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 47
  tail call void @unit_m4(ptr noundef nonnull %27) #18
  %28 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 87
  store i8 5, ptr %28, align 2, !tbaa !290
  %29 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 88
  store i8 2, ptr %29, align 1, !tbaa !291
  %30 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 89
  %31 = add i32 %1, -10
  %32 = icmp ult i32 %31, 3
  %33 = select i1 %32, i16 5, i16 1
  %34 = select i1 %32, i16 1, i16 2
  %35 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 57
  store i16 %33, ptr %35, align 4
  %36 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 58
  store i16 %34, ptr %36, align 2
  %37 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 64
  store <4 x i32> <i32 1, i32 0, i32 1, i32 100>, ptr %37, align 8, !tbaa !292
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %30, align 8, !tbaa !34
  %38 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 69
  store <4 x float> <float 1.000000e+00, float 0x3FA47AE140000000, float 1.000000e+00, float 0x3FD99999A0000000>, ptr %38, align 4, !tbaa !34
  %39 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 73
  %40 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 105
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %40, align 4, !tbaa !34
  %41 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 105, i64 2
  store float 1.000000e+00, ptr %41, align 4, !tbaa !34
  %42 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 99
  store i32 81920, ptr %42, align 8, !tbaa !293
  store <2 x float> <float 0x3FB99999A0000000, float 0x3FA47AE140000000>, ptr %39, align 4, !tbaa !34
  %43 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 124
  store i32 1, ptr %43, align 4, !tbaa !294
  %44 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 123
  store i32 1, ptr %44, align 8, !tbaa !295
  %45 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 77
  store <4 x float> <float 1.000000e+00, float 0x3FC3333340000000, float 1.000000e+01, float 5.500000e+01>, ptr %45, align 4, !tbaa !34
  %46 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 81
  store i16 1, ptr %46, align 4, !tbaa !296
  %47 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 82
  store i16 255, ptr %47, align 2, !tbaa !297
  %48 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 117
  store ptr null, ptr %48, align 8, !tbaa !298
  %49 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 126
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %49) #19
  %50 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 21
  tail call void @animviz_settings_init(ptr noundef nonnull %50) #18
  ret ptr %9
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef nonnull ptr @get_obdata_defname(i32 noundef %0) unnamed_addr #9 !PGOFuncName !299 {
  %2 = icmp ult i32 %0, 26
  br i1 %2, label %5, label %3

3:                                                ; preds = %5, %1
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %0) #19
  br label %13

5:                                                ; preds = %1
  %6 = lshr i32 37755967, %0
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %3, label %9

9:                                                ; preds = %5
  %10 = zext nneg i32 %0 to i64
  %11 = shl i64 %10, 2
  %12 = call ptr @llvm.load.relative.i64(ptr @reltable.get_obdata_defname, i64 %11)
  br label %13

13:                                               ; preds = %9, %3
  %14 = phi ptr [ @.str.20, %3 ], [ %12, %9 ]
  ret ptr %14
}

; Function Attrs: optsize
declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @unit_axis_angle(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @unit_qt(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #0 !PGOFuncName !300 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @animviz_settings_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_object_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = alloca [66 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 66, ptr nonnull %4) #20
  %5 = tail call fastcc ptr @get_obdata_defname(i32 noundef %2) #19
  %6 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %5, i64 noundef 66) #18
  %7 = call ptr @BKE_object_add_only_object(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %4) #19
  %8 = call ptr @BKE_object_obdata_add_from_type(ptr noundef %0, i32 noundef %2) #19
  %9 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  store ptr %8, ptr %9, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 12
  %11 = load i32, ptr %10, align 8, !tbaa !301
  %12 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 52
  store i32 %11, ptr %12, align 8, !tbaa !50
  %13 = call ptr @BKE_scene_base_add(ptr noundef %1, ptr noundef %7) #18
  call void @BKE_scene_base_deselect_all(ptr noundef %1) #18
  call void @BKE_scene_base_select(ptr noundef %1, ptr noundef %13) #18
  call void @DAG_id_tag_update_ex(ptr noundef %0, ptr noundef %7, i16 noundef signext 7) #18
  call void @llvm.lifetime.end.p0(i64 66, ptr nonnull %4) #20
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @BKE_scene_base_add(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_scene_base_deselect_all(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_scene_base_select(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @DAG_id_tag_update_ex(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @copy_softbody(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %60, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %6 = tail call ptr %5(ptr noundef nonnull %0) #18
  %7 = icmp eq i8 %1, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br label %46

9:                                                ; preds = %4
  %10 = load <2 x i32>, ptr %0, align 8, !tbaa !292
  store <2 x i32> %10, ptr %6, align 8, !tbaa !292
  %11 = getelementptr inbounds %struct.SoftBody, ptr %6, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !302
  %13 = icmp eq ptr %12, null
  br i1 %13, label %38, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %16 = tail call ptr %15(ptr noundef nonnull %12) #18
  store ptr %16, ptr %11, align 8, !tbaa !302
  %17 = load i32, ptr %6, align 8, !tbaa !304
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %14, %32
  %20 = phi i32 [ %33, %32 ], [ %17, %14 ]
  %21 = phi ptr [ %34, %32 ], [ %16, %14 ]
  %22 = phi i64 [ %35, %32 ], [ 0, %14 ]
  %23 = getelementptr inbounds %struct.BodyPoint, ptr %21, i64 %22, i32 14
  %24 = load ptr, ptr %23, align 8, !tbaa !305
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %19
  %27 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %28 = tail call ptr %27(ptr noundef nonnull %24) #18
  %29 = load ptr, ptr %11, align 8, !tbaa !302
  %30 = getelementptr inbounds %struct.BodyPoint, ptr %29, i64 %22, i32 14
  store ptr %28, ptr %30, align 8, !tbaa !305
  %31 = load i32, ptr %6, align 8, !tbaa !304
  br label %32

32:                                               ; preds = %19, %26
  %33 = phi i32 [ %20, %19 ], [ %31, %26 ]
  %34 = phi ptr [ %21, %19 ], [ %29, %26 ]
  %35 = add nuw nsw i64 %22, 1
  %36 = sext i32 %33 to i64
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %19, label %38, !llvm.loop !307

38:                                               ; preds = %32, %14, %9
  %39 = getelementptr inbounds %struct.SoftBody, ptr %0, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !308
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %44 = tail call ptr %43(ptr noundef nonnull %40) #18
  %45 = getelementptr inbounds %struct.SoftBody, ptr %6, i64 0, i32 3
  store ptr %44, ptr %45, align 8, !tbaa !308
  br label %46

46:                                               ; preds = %38, %42, %8
  %47 = getelementptr inbounds %struct.SoftBody, ptr %6, i64 0, i32 29
  %48 = getelementptr inbounds %struct.SoftBody, ptr %6, i64 0, i32 44
  store ptr null, ptr %48, align 8, !tbaa !309
  %49 = getelementptr inbounds %struct.SoftBody, ptr %6, i64 0, i32 48
  %50 = getelementptr inbounds %struct.SoftBody, ptr %0, i64 0, i32 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %47, i8 0, i64 16, i1 false)
  %51 = tail call ptr @BKE_ptcache_copy_list(ptr noundef nonnull %49, ptr noundef nonnull %50, i8 noundef zeroext %1) #18
  %52 = getelementptr inbounds %struct.SoftBody, ptr %6, i64 0, i32 47
  store ptr %51, ptr %52, align 8, !tbaa !310
  %53 = getelementptr inbounds %struct.SoftBody, ptr %0, i64 0, i32 49
  %54 = load ptr, ptr %53, align 8, !tbaa !311
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %46
  %57 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %58 = tail call ptr %57(ptr noundef nonnull %54) #18
  %59 = getelementptr inbounds %struct.SoftBody, ptr %6, i64 0, i32 49
  store ptr %58, ptr %59, align 8, !tbaa !311
  br label %60

60:                                               ; preds = %46, %56, %2
  %61 = phi ptr [ null, %2 ], [ %6, %56 ], [ %6, %46 ]
  ret ptr %61
}

; Function Attrs: optsize
declare ptr @BKE_ptcache_copy_list(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @copy_bulletsoftbody(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %5 = tail call ptr %4(ptr noundef nonnull %0) #18
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @copy_particlesystem(ptr noundef %0) unnamed_addr #4 !PGOFuncName !312 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %3 = tail call ptr %2(ptr noundef %0) #18
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !155
  %7 = tail call ptr %4(ptr noundef %6) #18
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 3
  store ptr %7, ptr %8, align 8, !tbaa !155
  %9 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !313
  %12 = tail call ptr %9(ptr noundef %11) #18
  %13 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 4
  store ptr %12, ptr %13, align 8, !tbaa !313
  %14 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !150
  %16 = getelementptr inbounds %struct.ParticleSettings, ptr %15, i64 0, i32 7
  %17 = load i16, ptr %16, align 8, !tbaa !314
  %18 = icmp eq i16 %17, 2
  %19 = load ptr, ptr %8, align 8, !tbaa !155
  br i1 %18, label %20, label %37

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 26
  %22 = load i32, ptr %21, align 8, !tbaa !154
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %20, %24
  %25 = phi i32 [ %31, %24 ], [ 0, %20 ]
  %26 = phi ptr [ %32, %24 ], [ %19, %20 ]
  %27 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %28 = getelementptr inbounds %struct.ParticleData, ptr %26, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !315
  %30 = tail call ptr %27(ptr noundef %29) #18
  store ptr %30, ptr %28, align 8, !tbaa !315
  %31 = add nuw nsw i32 %25, 1
  %32 = getelementptr inbounds %struct.ParticleData, ptr %26, i64 1
  %33 = load i32, ptr %21, align 8, !tbaa !154
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %24, label %35, !llvm.loop !316

35:                                               ; preds = %24
  %36 = load ptr, ptr %8, align 8, !tbaa !155
  br label %37

37:                                               ; preds = %35, %20, %1
  %38 = phi ptr [ %36, %35 ], [ %19, %20 ], [ %19, %1 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %87, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.ParticleData, ptr %38, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !317
  %43 = icmp eq ptr %42, null
  %44 = getelementptr inbounds %struct.ParticleData, ptr %38, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !156
  br i1 %43, label %46, label %48

46:                                               ; preds = %40
  %47 = icmp eq ptr %45, null
  br i1 %47, label %87, label %52

48:                                               ; preds = %40
  %49 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %50 = tail call ptr %49(ptr noundef nonnull %42) #18
  %51 = icmp eq ptr %45, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %46, %48
  %53 = phi ptr [ %50, %48 ], [ null, %46 ]
  %54 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %55 = tail call ptr %54(ptr noundef nonnull %45) #18
  br label %56

56:                                               ; preds = %52, %48
  %57 = phi ptr [ %53, %52 ], [ %50, %48 ]
  %58 = phi ptr [ %55, %52 ], [ null, %48 ]
  %59 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 26
  %60 = load i32, ptr %59, align 8, !tbaa !154
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %87

62:                                               ; preds = %56
  %63 = load ptr, ptr %8, align 8, !tbaa !155
  br label %64

64:                                               ; preds = %62, %82
  %65 = phi ptr [ %74, %82 ], [ %58, %62 ]
  %66 = phi ptr [ %83, %82 ], [ %57, %62 ]
  %67 = phi i32 [ %84, %82 ], [ 0, %62 ]
  %68 = phi ptr [ %85, %82 ], [ %63, %62 ]
  %69 = icmp eq ptr %65, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.BoidParticle, ptr %65, i64 1
  %72 = getelementptr inbounds %struct.ParticleData, ptr %68, i64 0, i32 4
  store ptr %65, ptr %72, align 8, !tbaa !156
  br label %73

73:                                               ; preds = %70, %64
  %74 = phi ptr [ %71, %70 ], [ null, %64 ]
  %75 = icmp eq ptr %66, null
  br i1 %75, label %82, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.ParticleData, ptr %68, i64 0, i32 3
  store ptr %66, ptr %77, align 8, !tbaa !317
  %78 = getelementptr inbounds %struct.ParticleData, ptr %68, i64 0, i32 5
  %79 = load i32, ptr %78, align 8, !tbaa !318
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.ParticleKey, ptr %66, i64 %80
  br label %82

82:                                               ; preds = %73, %76
  %83 = phi ptr [ %81, %76 ], [ null, %73 ]
  %84 = add nuw nsw i32 %67, 1
  %85 = getelementptr inbounds %struct.ParticleData, ptr %68, i64 1
  %86 = icmp eq i32 %84, %60
  br i1 %86, label %87, label %64, !llvm.loop !319

87:                                               ; preds = %82, %56, %46, %37
  %88 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 11
  %89 = load ptr, ptr %88, align 8, !tbaa !320
  %90 = icmp eq ptr %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %87
  %92 = tail call ptr @modifier_new(i32 noundef 22) #18
  %93 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 11
  store ptr %92, ptr %93, align 8, !tbaa !320
  %94 = load ptr, ptr %88, align 8, !tbaa !320
  tail call void @modifier_copyData(ptr noundef %94, ptr noundef %92) #18
  %95 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %95, i8 0, i64 16, i1 false)
  br label %96

96:                                               ; preds = %91, %87
  %97 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 17
  %98 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 17
  tail call void @BLI_duplicatelist(ptr noundef nonnull %97, ptr noundef nonnull %98) #18
  %99 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 7
  %100 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 5
  store ptr null, ptr %100, align 8, !tbaa !321
  %101 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 42
  store ptr null, ptr %101, align 8, !tbaa !322
  %102 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 46
  %103 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %99, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %102, i8 0, i64 24, i1 false)
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %103) #19
  %104 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 10
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %104) #19
  %105 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 39
  store ptr null, ptr %105, align 8, !tbaa !323
  %106 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 41
  %107 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 41
  %108 = tail call ptr @BKE_ptcache_copy_list(ptr noundef nonnull %106, ptr noundef nonnull %107, i8 noundef zeroext 0) #18
  %109 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 40
  store ptr %108, ptr %109, align 8, !tbaa !324
  %110 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 11
  %111 = load ptr, ptr %110, align 8, !tbaa !320
  %112 = icmp eq ptr %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %96
  %114 = getelementptr inbounds %struct.ClothModifierData, ptr %111, i64 0, i32 5
  store ptr %108, ptr %114, align 8, !tbaa !325
  br label %115

115:                                              ; preds = %113, %96
  %116 = getelementptr inbounds %struct.ParticleSystem, ptr %3, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !150
  tail call void @id_us_plus(ptr noundef %117) #18
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @BKE_object_pose_context_check(ptr noundef readonly %0) local_unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !68
  %6 = icmp eq i16 %5, 25
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %9 = load ptr, ptr %8, align 8, !tbaa !64
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 27
  %13 = load i32, ptr %12, align 8, !tbaa !286
  %14 = and i32 %13, 64
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %7, %3, %1
  br label %17

17:                                               ; preds = %11, %16
  %18 = phi i8 [ 0, %16 ], [ 1, %11 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_object_pose_armature_get(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = tail call zeroext i8 @BKE_object_pose_context_check(ptr noundef nonnull %0) #19, !range !70
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = tail call ptr @modifiers_isDeformedByArmature(ptr noundef nonnull %0) #18
  %8 = tail call zeroext i8 @BKE_object_pose_context_check(ptr noundef %7) #19, !range !70
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, ptr null, ptr %7
  br label %11

11:                                               ; preds = %6, %3, %1
  %12 = phi ptr [ null, %1 ], [ %0, %3 ], [ %10, %6 ]
  ret ptr %12
}

; Function Attrs: optsize
declare ptr @modifiers_isDeformedByArmature(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_object_transform_copy(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 33
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 39
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 41
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 41
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #19
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 43
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %10) #19
  %11 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 45
  %12 = load float, ptr %11, align 8, !tbaa !327
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 45
  store float %12, ptr %13, align 8, !tbaa !327
  %14 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 83
  %15 = load i16, ptr %14, align 8, !tbaa !38
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 83
  store i16 %15, ptr %16, align 8, !tbaa !38
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36
  %18 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 36
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %17, ptr noundef nonnull %18) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !328 {
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_object_copy_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #4 {
  %4 = tail call ptr @BKE_libblock_copy_ex(ptr noundef %0, ptr noundef %1) #18
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 31
  %6 = load i32, ptr %5, align 8, !tbaa !103
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 29
  %11 = load ptr, ptr %10, align 8, !tbaa !102
  %12 = tail call ptr %9(ptr noundef %11) #18
  %13 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 29
  store ptr %12, ptr %13, align 8, !tbaa !102
  %14 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %15 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 30
  %16 = load ptr, ptr %15, align 8, !tbaa !109
  %17 = tail call ptr %14(ptr noundef %16) #18
  %18 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 30
  store ptr %17, ptr %18, align 8, !tbaa !109
  %19 = load i32, ptr %5, align 8, !tbaa !103
  %20 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 31
  store i32 %19, ptr %20, align 8, !tbaa !103
  br label %21

21:                                               ; preds = %8, %3
  %22 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 131
  %23 = load ptr, ptr %22, align 8, !tbaa !110
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %27 = tail call ptr %26(ptr noundef nonnull %23) #18
  %28 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 131
  store ptr %27, ptr %28, align 8, !tbaa !110
  br label %29

29:                                               ; preds = %25, %21
  %30 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 15
  %31 = load ptr, ptr %30, align 8, !tbaa !94
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %35 = tail call ptr %34(ptr noundef nonnull %31) #18
  %36 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 15
  store ptr %35, ptr %36, align 8, !tbaa !94
  br label %37

37:                                               ; preds = %33, %29
  %38 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 53
  %39 = load i16, ptr %38, align 4, !tbaa !329
  %40 = and i16 %39, -4097
  store i16 %40, ptr %38, align 4, !tbaa !329
  %41 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 26
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %41) #19
  %42 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  %43 = load ptr, ptr %42, align 8, !tbaa !47
  %44 = icmp eq ptr %43, null
  br i1 %44, label %55, label %45

45:                                               ; preds = %37, %45
  %46 = phi ptr [ %53, %45 ], [ %43, %37 ]
  %47 = getelementptr inbounds %struct.ModifierData, ptr %46, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !69
  %49 = tail call ptr @modifier_new(i32 noundef %48) #18
  %50 = getelementptr inbounds %struct.ModifierData, ptr %49, i64 0, i32 6
  %51 = getelementptr inbounds %struct.ModifierData, ptr %46, i64 0, i32 6
  %52 = tail call ptr @BLI_strncpy(ptr noundef nonnull %50, ptr noundef nonnull %51, i64 noundef 64) #18
  tail call void @modifier_copyData(ptr noundef nonnull %46, ptr noundef %49) #18
  tail call void @BLI_addtail(ptr noundef nonnull %41, ptr noundef %49) #18
  %53 = load ptr, ptr %46, align 8, !tbaa !47
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %45, !llvm.loop !330

55:                                               ; preds = %45, %37
  %56 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 91
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %56) #19
  %57 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 91
  tail call void @BKE_bproperty_copy_list(ptr noundef nonnull %56, ptr noundef nonnull %57) #18
  %58 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 92
  %59 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 92
  tail call void @copy_sensors(ptr noundef nonnull %58, ptr noundef nonnull %59) #18
  %60 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 93
  %61 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 93
  tail call void @copy_controllers(ptr noundef nonnull %60, ptr noundef nonnull %61) #18
  %62 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 94
  %63 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 94
  tail call void @copy_actuators(ptr noundef nonnull %62, ptr noundef nonnull %63) #18
  %64 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 18
  %65 = load ptr, ptr %64, align 8, !tbaa !64
  %66 = icmp eq ptr %65, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %55
  tail call fastcc void @copy_object_pose(ptr noundef %4, ptr noundef nonnull %1) #19
  %68 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %69 = load i16, ptr %68, align 8, !tbaa !68
  %70 = icmp eq i16 %69, 25
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %73 = load ptr, ptr %72, align 8, !tbaa !71
  tail call void @BKE_pose_rebuild(ptr noundef %4, ptr noundef %73) #18
  br label %74

74:                                               ; preds = %67, %71, %55
  %75 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 25
  %76 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 25
  tail call void @defgroup_copy_list(ptr noundef nonnull %75, ptr noundef nonnull %76) #18
  %77 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 106
  %78 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 106
  tail call void @BKE_constraints_copy(ptr noundef nonnull %77, ptr noundef nonnull %78, i8 noundef zeroext 1) #18
  %79 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 27
  store i32 0, ptr %79, align 8, !tbaa !286
  %80 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 2
  store ptr null, ptr %80, align 8, !tbaa !331
  %81 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %82 = load ptr, ptr %81, align 8, !tbaa !71
  tail call void @id_us_plus(ptr noundef %82) #18
  %83 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 20
  %84 = load ptr, ptr %83, align 8, !tbaa !115
  tail call void @id_us_plus(ptr noundef %84) #18
  %85 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 112
  %86 = load ptr, ptr %85, align 8, !tbaa !332
  tail call void @id_lib_extern(ptr noundef %86) #18
  %87 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 31
  %88 = load i32, ptr %87, align 8, !tbaa !103
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %74
  %91 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 29
  br label %92

92:                                               ; preds = %90, %92
  %93 = phi i64 [ 0, %90 ], [ %97, %92 ]
  %94 = load ptr, ptr %91, align 8, !tbaa !102
  %95 = getelementptr inbounds ptr, ptr %94, i64 %93
  %96 = load ptr, ptr %95, align 8, !tbaa !47
  tail call void @id_us_plus(ptr noundef %96) #18
  %97 = add nuw nsw i64 %93, 1
  %98 = load i32, ptr %87, align 8, !tbaa !103
  %99 = sext i32 %98 to i64
  %100 = icmp slt i64 %97, %99
  br i1 %100, label %92, label %101, !llvm.loop !333

101:                                              ; preds = %92, %74
  %102 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 110
  %103 = load ptr, ptr %102, align 8, !tbaa !118
  %104 = icmp eq ptr %103, null
  br i1 %104, label %127, label %105

105:                                              ; preds = %101
  %106 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %107 = tail call ptr %106(ptr noundef nonnull %103) #18
  %108 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 110
  store ptr %107, ptr %108, align 8, !tbaa !118
  %109 = getelementptr inbounds %struct.PartDeflect, ptr %107, i64 0, i32 36
  %110 = load ptr, ptr %109, align 8, !tbaa !334
  %111 = icmp eq ptr %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %105
  tail call void @id_us_plus(ptr noundef nonnull %110) #18
  %113 = load ptr, ptr %108, align 8, !tbaa !118
  br label %114

114:                                              ; preds = %112, %105
  %115 = phi ptr [ %113, %112 ], [ %107, %105 ]
  %116 = getelementptr inbounds %struct.PartDeflect, ptr %115, i64 0, i32 37
  %117 = load ptr, ptr %116, align 8, !tbaa !336
  %118 = icmp eq ptr %117, null
  br i1 %118, label %127, label %119

119:                                              ; preds = %114
  %120 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %121 = load ptr, ptr %102, align 8, !tbaa !118
  %122 = getelementptr inbounds %struct.PartDeflect, ptr %121, i64 0, i32 37
  %123 = load ptr, ptr %122, align 8, !tbaa !336
  %124 = tail call ptr %120(ptr noundef %123) #18
  %125 = load ptr, ptr %108, align 8, !tbaa !118
  %126 = getelementptr inbounds %struct.PartDeflect, ptr %125, i64 0, i32 37
  store ptr %124, ptr %126, align 8, !tbaa !336
  br label %127

127:                                              ; preds = %114, %119, %101
  %128 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 111
  %129 = load ptr, ptr %128, align 8, !tbaa !55
  %130 = tail call ptr @copy_softbody(ptr noundef %129, i8 noundef zeroext %2) #19
  %131 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 111
  store ptr %130, ptr %131, align 8, !tbaa !55
  %132 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 101
  %133 = load ptr, ptr %132, align 8, !tbaa !56
  %134 = tail call ptr @copy_bulletsoftbody(ptr noundef %133) #19
  %135 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 101
  store ptr %134, ptr %135, align 8, !tbaa !56
  %136 = tail call ptr @BKE_rigidbody_copy_object(ptr noundef nonnull %1) #18
  %137 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 128
  store ptr %136, ptr %137, align 8, !tbaa !337
  %138 = tail call ptr @BKE_rigidbody_copy_constraint(ptr noundef nonnull %1) #18
  %139 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 129
  store ptr %138, ptr %139, align 8, !tbaa !338
  tail call void @BKE_object_copy_particlesystems(ptr noundef nonnull %4, ptr noundef nonnull %1) #19
  %140 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 119
  %141 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 125
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %140, i8 0, i64 16, i1 false)
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %141) #19
  %142 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 126
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %142) #19
  %143 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 22
  store ptr null, ptr %143, align 8, !tbaa !117
  tail call fastcc void @copy_object_lod(ptr noundef nonnull %4, ptr noundef nonnull %1) #19
  %144 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 118
  store ptr null, ptr %144, align 8, !tbaa !57
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @BKE_libblock_copy_ex(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_bproperty_copy_list(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @copy_sensors(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @copy_controllers(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @copy_actuators(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_object_pose(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #4 !PGOFuncName !339 {
  %3 = alloca %struct.ListBase, align 8
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  store ptr null, ptr %4, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  tail call void @BKE_pose_copy_data(ptr noundef nonnull %4, ptr noundef %6, i8 noundef zeroext 1) #18
  %7 = load ptr, ptr %4, align 8, !tbaa !64
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %50, label %13

10:                                               ; preds = %47, %13
  %11 = load ptr, ptr %14, align 8, !tbaa !47
  %12 = icmp eq ptr %11, null
  br i1 %12, label %50, label %13, !llvm.loop !340

13:                                               ; preds = %2, %10
  %14 = phi ptr [ %11, %10 ], [ %8, %2 ]
  %15 = getelementptr inbounds %struct.bPoseChannel, ptr %14, i64 0, i32 5
  %16 = load i16, ptr %15, align 8, !tbaa !341
  %17 = and i16 %16, -8
  store i16 %17, ptr %15, align 8, !tbaa !341
  %18 = getelementptr inbounds %struct.bPoseChannel, ptr %14, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  %20 = icmp eq ptr %19, null
  br i1 %20, label %10, label %21

21:                                               ; preds = %13, %47
  %22 = phi ptr [ %48, %47 ], [ %19, %13 ]
  %23 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %22) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %24 = icmp eq ptr %23, null
  br i1 %24, label %47, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %23, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !131
  %28 = icmp eq ptr %27, null
  br i1 %28, label %47, label %29

29:                                               ; preds = %25
  %30 = call i32 %27(ptr noundef nonnull %22, ptr noundef nonnull %3) #18
  %31 = load ptr, ptr %3, align 8, !tbaa !47
  %32 = icmp eq ptr %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %29, %39
  %34 = phi ptr [ %40, %39 ], [ %31, %29 ]
  %35 = getelementptr inbounds %struct.bConstraintTarget, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !133
  %37 = icmp eq ptr %36, %1
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store ptr %0, ptr %35, align 8, !tbaa !133
  br label %39

39:                                               ; preds = %33, %38
  %40 = load ptr, ptr %34, align 8, !tbaa !47
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %33, !llvm.loop !342

42:                                               ; preds = %39, %29
  %43 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %23, i64 0, i32 9
  %44 = load ptr, ptr %43, align 8, !tbaa !136
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  call void %44(ptr noundef nonnull %22, ptr noundef nonnull %3, i8 noundef zeroext 0) #18
  br label %47

47:                                               ; preds = %42, %46, %25, %21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  %48 = load ptr, ptr %22, align 8, !tbaa !47
  %49 = icmp eq ptr %48, null
  br i1 %49, label %10, label %21, !llvm.loop !343

50:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: optsize
declare void @BKE_pose_rebuild(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @defgroup_copy_list(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_constraints_copy(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @id_lib_extern(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BKE_rigidbody_copy_object(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BKE_rigidbody_copy_constraint(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_object_lod(ptr noundef %0, ptr noundef %1) unnamed_addr #4 !PGOFuncName !344 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 132
  %4 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 132
  tail call void @BLI_duplicatelist(ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  %5 = load ptr, ptr %3, align 8, !tbaa !345
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.LodLevel, ptr %5, i64 0, i32 2
  store ptr %0, ptr %8, align 8, !tbaa !175
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 133
  store ptr %5, ptr %10, align 8, !tbaa !346
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_object_copy(ptr noundef %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr @G, align 8, !tbaa !121
  %3 = tail call ptr @BKE_object_copy_ex(ptr noundef %2, ptr noundef %0, i8 noundef zeroext 0) #19
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_make_local(ptr noundef %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr @G, align 8, !tbaa !121
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !347
  %5 = icmp eq ptr %4, null
  br i1 %5, label %79, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 13
  store ptr null, ptr %7, align 8, !tbaa !125
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 11
  store ptr null, ptr %8, align 8, !tbaa !124
  %9 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !348
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef nonnull %0) #18
  tail call fastcc void @extern_local_object(ptr noundef nonnull %0) #19
  br label %79

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = icmp eq ptr %15, null
  br i1 %16, label %79, label %17

17:                                               ; preds = %13, %33
  %18 = phi ptr [ %36, %33 ], [ %15, %13 ]
  %19 = phi i8 [ %35, %33 ], [ 0, %13 ]
  %20 = phi i8 [ %34, %33 ], [ 0, %13 ]
  %21 = icmp eq i8 %19, 0
  %22 = icmp eq i8 %20, 0
  %23 = select i1 %21, i1 true, i1 %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %17
  %25 = tail call ptr @BKE_scene_base_find(ptr noundef nonnull %18, ptr noundef %0) #18
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !198
  %30 = icmp eq ptr %29, null
  %31 = select i1 %30, i8 1, i8 %20
  %32 = select i1 %30, i8 %19, i8 1
  br label %33

33:                                               ; preds = %27, %24
  %34 = phi i8 [ %20, %24 ], [ %31, %27 ]
  %35 = phi i8 [ %19, %24 ], [ %32, %27 ]
  %36 = load ptr, ptr %18, align 8, !tbaa !47
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %17, !llvm.loop !349

38:                                               ; preds = %33
  %39 = icmp ne i8 %34, 0
  %40 = icmp eq i8 %35, 0
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  tail call void @id_clear_lib_data(ptr noundef %2, ptr noundef %0) #18
  tail call fastcc void @extern_local_object(ptr noundef %0) #19
  br label %79

43:                                               ; preds = %17, %38
  %44 = phi i8 [ %35, %38 ], [ %19, %17 ]
  %45 = phi i1 [ %39, %38 ], [ true, %17 ]
  %46 = icmp ne i8 %44, 0
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %48, label %79

48:                                               ; preds = %43
  %49 = tail call ptr @BKE_object_copy(ptr noundef %0) #19
  %50 = getelementptr inbounds %struct.ID, ptr %49, i64 0, i32 6
  store i32 0, ptr %50, align 4, !tbaa !348
  %51 = load ptr, ptr %3, align 8, !tbaa !347
  tail call void @BKE_id_lib_local_paths(ptr noundef %2, ptr noundef %51, ptr noundef %49) #18
  %52 = load ptr, ptr %14, align 8, !tbaa !47
  %53 = icmp eq ptr %52, null
  br i1 %53, label %79, label %54

54:                                               ; preds = %48, %76
  %55 = phi ptr [ %77, %76 ], [ %52, %48 ]
  %56 = getelementptr inbounds %struct.ID, ptr %55, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !198
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %76

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.Scene, ptr %55, i64 0, i32 5
  %61 = load ptr, ptr %60, align 8, !tbaa !47
  %62 = icmp eq ptr %61, null
  br i1 %62, label %76, label %63

63:                                               ; preds = %59, %73
  %64 = phi ptr [ %74, %73 ], [ %61, %59 ]
  %65 = getelementptr inbounds %struct.Base, ptr %64, i64 0, i32 7
  %66 = load ptr, ptr %65, align 8, !tbaa !48
  %67 = icmp eq ptr %66, %0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  store ptr %49, ptr %65, align 8, !tbaa !48
  %69 = load i32, ptr %50, align 4, !tbaa !348
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr %50, align 4, !tbaa !348
  %71 = load i32, ptr %9, align 4, !tbaa !348
  %72 = add nsw i32 %71, -1
  store i32 %72, ptr %9, align 4, !tbaa !348
  br label %73

73:                                               ; preds = %68, %63
  %74 = load ptr, ptr %64, align 8, !tbaa !47
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %63, !llvm.loop !350

76:                                               ; preds = %73, %59, %54
  %77 = load ptr, ptr %55, align 8, !tbaa !47
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %54, !llvm.loop !351

79:                                               ; preds = %76, %13, %48, %12, %43, %42, %1
  ret void
}

; Function Attrs: optsize
declare void @id_clear_lib_data(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @extern_local_object(ptr noundef %0) unnamed_addr #4 !PGOFuncName !352 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  tail call void @id_lib_extern(ptr noundef %3) #18
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 112
  %5 = load ptr, ptr %4, align 8, !tbaa !332
  tail call void @id_lib_extern(ptr noundef %5) #18
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 17
  %7 = load ptr, ptr %6, align 8, !tbaa !112
  tail call void @id_lib_extern(ptr noundef %7) #18
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !115
  tail call void @id_lib_extern(ptr noundef %9) #18
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 29
  %11 = load ptr, ptr %10, align 8, !tbaa !102
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  %13 = load i32, ptr %12, align 8, !tbaa !103
  %14 = trunc i32 %13 to i16
  tail call void @extern_local_matarar(ptr noundef %11, i16 noundef signext %14) #18
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 109
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %1, %18
  %19 = phi ptr [ %22, %18 ], [ %16, %1 ]
  %20 = getelementptr inbounds %struct.ParticleSystem, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !150
  tail call void @id_lib_extern(ptr noundef %21) #18
  %22 = load ptr, ptr %19, align 8, !tbaa !47
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %18, !llvm.loop !353

24:                                               ; preds = %18, %1
  tail call void @modifiers_foreachIDLink(ptr noundef %0, ptr noundef nonnull @extern_local_object__modifiersForeachIDLink, ptr noundef null) #18
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_scene_base_find(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_id_lib_local_paths(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BKE_object_is_libdata(ptr noundef readonly %0) local_unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !124
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !347
  %10 = icmp ne ptr %9, null
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %7, %3, %1
  %13 = phi i8 [ 0, %1 ], [ 0, %3 ], [ %11, %7 ]
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @BKE_object_obdata_is_libdata(ptr noundef readonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %28, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !124
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ID, ptr %9, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !101
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %11, %3
  %16 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !347
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !71
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !101
  %26 = icmp ne ptr %25, null
  %27 = zext i1 %26 to i8
  br label %28

28:                                               ; preds = %23, %19, %15, %7, %11, %1
  %29 = phi i8 [ 0, %1 ], [ 0, %11 ], [ 0, %7 ], [ 1, %15 ], [ 0, %19 ], [ %27, %23 ]
  ret i8 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_copy_proxy_drivers(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !111
  %5 = icmp eq ptr %4, null
  br i1 %5, label %60, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.AnimData, ptr %4, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !354
  %9 = icmp eq ptr %8, null
  br i1 %9, label %60, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !111
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = tail call ptr @BKE_id_add_animdata(ptr noundef nonnull %0) #18
  store ptr %15, ptr %11, align 8, !tbaa !111
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi ptr [ %15, %14 ], [ %12, %10 ]
  %18 = getelementptr inbounds %struct.AnimData, ptr %17, i64 0, i32 5
  tail call void @free_fcurves(ptr noundef nonnull %18) #18
  %19 = load ptr, ptr %11, align 8, !tbaa !111
  %20 = getelementptr inbounds %struct.AnimData, ptr %19, i64 0, i32 5
  %21 = load ptr, ptr %3, align 8, !tbaa !111
  %22 = getelementptr inbounds %struct.AnimData, ptr %21, i64 0, i32 5
  tail call void @copy_fcurves(ptr noundef nonnull %20, ptr noundef nonnull %22) #18
  %23 = load ptr, ptr %11, align 8, !tbaa !111
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
  br i1 %31, label %60, label %32, !llvm.loop !356

32:                                               ; preds = %27, %29
  %33 = phi ptr [ %25, %27 ], [ %30, %29 ]
  %34 = getelementptr inbounds %struct.FCurve, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !357
  %36 = load ptr, ptr %35, align 8, !tbaa !47
  %37 = icmp eq ptr %36, null
  br i1 %37, label %29, label %41

38:                                               ; preds = %56
  %39 = load ptr, ptr %42, align 8, !tbaa !47
  %40 = icmp eq ptr %39, null
  br i1 %40, label %29, label %41, !llvm.loop !359

41:                                               ; preds = %32, %38
  %42 = phi ptr [ %39, %38 ], [ %36, %32 ]
  %43 = getelementptr inbounds %struct.DriverVar, ptr %42, i64 0, i32 3
  br label %44

44:                                               ; preds = %41, %56
  %45 = phi i32 [ 0, %41 ], [ %57, %56 ]
  %46 = phi ptr [ %43, %41 ], [ %58, %56 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !360
  %48 = icmp eq ptr %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %44
  %50 = icmp eq ptr %47, %1
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  store ptr %0, ptr %46, align 8, !tbaa !360
  br label %56

52:                                               ; preds = %49
  %53 = load ptr, ptr %28, align 8, !tbaa !347
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  tail call void @id_lib_extern(ptr noundef nonnull %47) #18
  br label %56

56:                                               ; preds = %44, %52, %55, %51
  %57 = add nuw nsw i32 %45, 1
  %58 = getelementptr inbounds %struct.DriverTarget, ptr %46, i64 1
  %59 = icmp eq i32 %57, 8
  br i1 %59, label %38, label %44, !llvm.loop !362

60:                                               ; preds = %29, %16, %6, %2
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_id_add_animdata(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @free_fcurves(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @copy_fcurves(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_make_proxy(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = alloca [3 x float], align 4
  %5 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !347
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !347
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %3
  %13 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %120

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 11
  store ptr %1, ptr %15, align 8, !tbaa !124
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 12
  store ptr %2, ptr %16, align 8, !tbaa !126
  tail call void @id_lib_extern(ptr noundef nonnull %1) #18
  tail call void @DAG_id_tag_update(ptr noundef nonnull %0, i16 noundef signext 7) #18
  tail call void @DAG_id_tag_update(ptr noundef nonnull %1, i16 noundef signext 7) #18
  %17 = icmp eq ptr %2, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 83
  %20 = load i16, ptr %19, align 8, !tbaa !38
  %21 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 83
  store i16 %20, ptr %21, align 8, !tbaa !38
  %22 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  %23 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  %24 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  tail call void @mul_m4_m4m4(ptr noundef nonnull %22, ptr noundef nonnull %23, ptr noundef nonnull %24) #18
  %25 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 112
  %26 = load ptr, ptr %25, align 8, !tbaa !332
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  %29 = getelementptr inbounds %struct.Group, ptr %26, i64 0, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %29) #19
  call void @mul_mat3_m4_v3(ptr noundef nonnull %22, ptr noundef nonnull %4) #18
  %30 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47, i64 3
  call fastcc void @sub_v3_v3(ptr noundef nonnull %30, ptr noundef nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  br label %31

31:                                               ; preds = %28, %18
  call void @BKE_object_apply_mat4(ptr noundef nonnull %0, ptr noundef nonnull %22, i8 noundef zeroext 0, i8 noundef zeroext 1) #19
  br label %38

32:                                               ; preds = %14
  tail call void @BKE_object_transform_copy(ptr noundef nonnull %0, ptr noundef nonnull %1) #19
  %33 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 9
  %34 = load ptr, ptr %33, align 8, !tbaa !127
  %35 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 9
  store ptr %34, ptr %35, align 8, !tbaa !127
  %36 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 48
  %37 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 48
  tail call void @copy_m4_m4(ptr noundef nonnull %36, ptr noundef nonnull %37) #18
  br label %38

38:                                               ; preds = %32, %31
  call void @BKE_object_copy_proxy_drivers(ptr noundef nonnull %0, ptr noundef nonnull %1) #19
  %39 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %40 = load i16, ptr %39, align 8, !tbaa !68
  %41 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  store i16 %40, ptr %41, align 8, !tbaa !68
  %42 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %43 = load ptr, ptr %42, align 8, !tbaa !71
  %44 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  store ptr %43, ptr %44, align 8, !tbaa !71
  call void @id_us_plus(ptr noundef %43) #18
  %45 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 31
  store i32 0, ptr %45, align 8, !tbaa !103
  %46 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 32
  store i32 0, ptr %46, align 4, !tbaa !363
  %47 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 29
  %48 = load ptr, ptr %47, align 8, !tbaa !102
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %38
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %51(ptr noundef nonnull %48) #18
  br label %52

52:                                               ; preds = %50, %38
  %53 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 30
  %54 = load ptr, ptr %53, align 8, !tbaa !109
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %57(ptr noundef nonnull %54) #18
  br label %58

58:                                               ; preds = %56, %52
  %59 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %47, i8 0, i64 16, i1 false)
  %60 = load i32, ptr %59, align 8, !tbaa !103
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %90, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 29
  %64 = load ptr, ptr %63, align 8, !tbaa !102
  %65 = icmp eq ptr %64, null
  br i1 %65, label %90, label %66

66:                                               ; preds = %62
  %67 = load i16, ptr %41, align 8, !tbaa !68
  %68 = add i16 %67, -1
  %69 = icmp ult i16 %68, 5
  br i1 %69, label %70, label %90

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 32
  %72 = load i32, ptr %71, align 4, !tbaa !363
  store i32 %72, ptr %46, align 4, !tbaa !363
  store i32 %60, ptr %45, align 8, !tbaa !103
  %73 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %74 = call ptr %73(ptr noundef nonnull %64) #18
  store ptr %74, ptr %47, align 8, !tbaa !102
  %75 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %76 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 30
  %77 = load ptr, ptr %76, align 8, !tbaa !109
  %78 = call ptr %75(ptr noundef %77) #18
  store ptr %78, ptr %53, align 8, !tbaa !109
  %79 = load i32, ptr %59, align 8, !tbaa !103
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %70, %81
  %82 = phi i64 [ %86, %81 ], [ 0, %70 ]
  %83 = load ptr, ptr %47, align 8, !tbaa !102
  %84 = getelementptr inbounds ptr, ptr %83, i64 %82
  %85 = load ptr, ptr %84, align 8, !tbaa !47
  call void @id_us_plus(ptr noundef %85) #18
  %86 = add nuw nsw i64 %82, 1
  %87 = load i32, ptr %59, align 8, !tbaa !103
  %88 = sext i32 %87 to i64
  %89 = icmp slt i64 %86, %88
  br i1 %89, label %81, label %90, !llvm.loop !364

90:                                               ; preds = %81, %70, %66, %62, %58
  %91 = load i16, ptr %39, align 8, !tbaa !68
  switch i16 %91, label %103 [
    i16 25, label %92
    i16 0, label %96
  ]

92:                                               ; preds = %90
  call fastcc void @copy_object_pose(ptr noundef nonnull %0, ptr noundef nonnull %1) #19
  %93 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %94 = load ptr, ptr %93, align 8, !tbaa !64
  call void @BKE_pose_rest(ptr noundef %94) #18
  %95 = load ptr, ptr %44, align 8, !tbaa !71
  call void @BKE_pose_rebuild(ptr noundef nonnull %0, ptr noundef %95) #18
  call fastcc void @armature_set_id_extern(ptr noundef nonnull %0) #19
  br label %103

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 88
  %98 = load i8, ptr %97, align 1, !tbaa !291
  %99 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 88
  store i8 %98, ptr %99, align 1, !tbaa !291
  %100 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 89
  %101 = load float, ptr %100, align 8, !tbaa !365
  %102 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 89
  store float %101, ptr %102, align 8, !tbaa !365
  br label %103

103:                                              ; preds = %90, %96, %92
  %104 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 9
  %105 = load ptr, ptr %104, align 8, !tbaa !366
  %106 = icmp eq ptr %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %103
  call void @IDP_FreeProperty(ptr noundef nonnull %105) #18
  %108 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %109 = load ptr, ptr %104, align 8, !tbaa !366
  call void %108(ptr noundef %109) #18
  store ptr null, ptr %104, align 8, !tbaa !366
  br label %110

110:                                              ; preds = %107, %103
  %111 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 9
  %112 = load ptr, ptr %111, align 8, !tbaa !366
  %113 = icmp eq ptr %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %110
  %115 = call ptr @IDP_CopyProperty(ptr noundef nonnull %112) #18
  store ptr %115, ptr %104, align 8, !tbaa !366
  br label %116

116:                                              ; preds = %114, %110
  %117 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 87
  %118 = load i8, ptr %117, align 2, !tbaa !290
  %119 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 87
  store i8 %118, ptr %119, align 2, !tbaa !290
  br label %120

120:                                              ; preds = %116, %12
  ret void
}

; Function Attrs: optsize
declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !367 {
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_apply_mat4(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #4 {
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #20
  %10 = icmp eq i8 %3, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !127
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #20
  call fastcc void @ob_get_parent_matrix(ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull %13, ptr noundef nonnull %9) #19
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 48
  call void @mul_m4_m4m4(ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %16) #18
  %17 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %7) #18
  call void @mul_m4_m4m4(ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef %1) #18
  call void @BKE_object_apply_mat4(ptr noundef nonnull %0, ptr noundef nonnull %6, i8 noundef zeroext %2, i8 noundef zeroext 0) #19
  %18 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33
  %19 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36
  call void @mat4_to_loc_rot_size(ptr noundef nonnull %18, ptr noundef nonnull %5, ptr noundef nonnull %19, ptr noundef nonnull %6) #18
  call void @BKE_object_mat3_to_rot(ptr noundef nonnull %0, ptr noundef nonnull %5, i8 noundef zeroext %2) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #20
  br label %23

20:                                               ; preds = %11, %4
  %21 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33
  %22 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36
  call void @mat4_to_loc_rot_size(ptr noundef nonnull %21, ptr noundef nonnull %5, ptr noundef nonnull %22, ptr noundef %1) #18
  call void @BKE_object_mat3_to_rot(ptr noundef %0, ptr noundef nonnull %5, i8 noundef zeroext %2) #19
  br label %23

23:                                               ; preds = %20, %15
  %24 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33
  %25 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 34
  call fastcc void @sub_v3_v3(ptr noundef nonnull %24, ptr noundef nonnull %25) #19
  %26 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = fcmp une float %27, 0.000000e+00
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = fdiv float %31, %27
  store float %32, ptr %30, align 4, !tbaa !34
  br label %33

33:                                               ; preds = %29, %23
  %34 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !34
  %36 = fcmp une float %35, 0.000000e+00
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !34
  %40 = fdiv float %39, %35
  store float %40, ptr %38, align 4, !tbaa !34
  br label %41

41:                                               ; preds = %37, %33
  %42 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !34
  %44 = fcmp une float %43, 0.000000e+00
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 2
  %47 = load float, ptr %46, align 4, !tbaa !34
  %48 = fdiv float %47, %43
  store float %48, ptr %46, align 4, !tbaa !34
  br label %49

49:                                               ; preds = %45, %41
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #20
  ret void
}

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_pose_rest(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @armature_set_id_extern(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !368 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = getelementptr inbounds %struct.bArmature, ptr %3, i64 0, i32 16
  %5 = load i32, ptr %4, align 4, !tbaa !369
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %1, %21
  %11 = phi ptr [ %22, %21 ], [ %8, %1 ]
  %12 = getelementptr inbounds %struct.bPoseChannel, ptr %11, i64 0, i32 12
  %13 = load ptr, ptr %12, align 8, !tbaa !370
  %14 = getelementptr inbounds %struct.Bone, ptr %13, i64 0, i32 25
  %15 = load i32, ptr %14, align 8, !tbaa !371
  %16 = and i32 %15, %5
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.bPoseChannel, ptr %11, i64 0, i32 18
  %20 = load ptr, ptr %19, align 8, !tbaa !138
  tail call void @id_lib_extern(ptr noundef %20) #18
  br label %21

21:                                               ; preds = %10, %18
  %22 = load ptr, ptr %11, align 8, !tbaa !47
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %10, !llvm.loop !373

24:                                               ; preds = %21, %1
  ret void
}

; Function Attrs: optsize
declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @IDP_CopyProperty(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_obdata_size_init(ptr nocapture noundef %0, float noundef %1) local_unnamed_addr #4 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !68
  switch i16 %5, label %39 [
    i16 0, label %6
    i16 4, label %10
    i16 11, label %16
    i16 10, label %22
    i16 22, label %36
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 89
  %8 = load float, ptr %7, align 8, !tbaa !365
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 8, !tbaa !365
  br label %39

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = getelementptr inbounds %struct.Curve, ptr %12, i64 0, i32 40
  %14 = load float, ptr %13, align 8, !tbaa !374
  %15 = fmul float %14, %1
  store float %15, ptr %13, align 8, !tbaa !374
  br label %39

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !71
  %19 = getelementptr inbounds %struct.Camera, ptr %18, i64 0, i32 10
  %20 = load float, ptr %19, align 8, !tbaa !375
  %21 = fmul float %20, %1
  store float %21, ptr %19, align 8, !tbaa !375
  br label %39

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %24 = load ptr, ptr %23, align 8, !tbaa !71
  %25 = getelementptr inbounds %struct.Lamp, ptr %24, i64 0, i32 16
  %26 = load float, ptr %25, align 8, !tbaa !376
  %27 = fmul float %26, %1
  store float %27, ptr %25, align 8, !tbaa !376
  %28 = getelementptr inbounds %struct.Lamp, ptr %24, i64 0, i32 43
  %29 = load <2 x float>, ptr %28, align 4, !tbaa !34
  %30 = insertelement <2 x float> poison, float %1, i64 0
  %31 = shufflevector <2 x float> %30, <2 x float> poison, <2 x i32> zeroinitializer
  %32 = fmul <2 x float> %29, %31
  store <2 x float> %32, ptr %28, align 4, !tbaa !34
  %33 = getelementptr inbounds %struct.Lamp, ptr %24, i64 0, i32 45
  %34 = load float, ptr %33, align 4, !tbaa !378
  %35 = fmul float %34, %1
  store float %35, ptr %33, align 4, !tbaa !378
  br label %39

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %38 = load ptr, ptr %37, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #20
  call void @unit_m4(ptr noundef nonnull %3) #18
  call void @scale_m4_fl(ptr noundef nonnull %3, float noundef %1) #18
  call void @BKE_lattice_transform(ptr noundef %38, ptr noundef nonnull %3, i8 noundef zeroext 0) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #20
  br label %39

39:                                               ; preds = %2, %36, %22, %16, %10, %6
  ret void
}

; Function Attrs: optsize
declare void @scale_m4_fl(ptr noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_lattice_transform(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_scale_to_mat3(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #20
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38
  call fastcc void @mul_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  call void @size_to_mat3(ptr noundef %1, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #11 !PGOFuncName !379 {
  %4 = load float, ptr %1, align 4, !tbaa !34
  %5 = load float, ptr %2, align 4, !tbaa !34
  %6 = fmul float %4, %5
  store float %6, ptr %0, align 4, !tbaa !34
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !34
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !34
  %11 = fmul float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !34
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !34
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = fmul float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare void @size_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_rot_to_mat3(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #4 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #20
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 83
  %8 = load i16, ptr %7, align 8, !tbaa !38
  %9 = icmp sgt i16 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39
  call void @eulO_to_mat3(ptr noundef nonnull %4, ptr noundef nonnull %11, i16 noundef signext %8) #18
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 40
  %13 = load i16, ptr %7, align 8, !tbaa !38
  call void @eulO_to_mat3(ptr noundef nonnull %5, ptr noundef nonnull %12, i16 noundef signext %13) #18
  br label %28

14:                                               ; preds = %3
  %15 = icmp eq i16 %8, -1
  br i1 %15, label %16, label %23

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43
  %18 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 45
  %19 = load float, ptr %18, align 8, !tbaa !327
  call void @axis_angle_to_mat3(ptr noundef nonnull %4, ptr noundef nonnull %17, float noundef %19) #18
  %20 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 44
  %21 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 46
  %22 = load float, ptr %21, align 4, !tbaa !380
  call void @axis_angle_to_mat3(ptr noundef nonnull %5, ptr noundef nonnull %20, float noundef %22) #18
  br label %28

23:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  %24 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 41
  %25 = call float @normalize_qt_qt(ptr noundef nonnull %6, ptr noundef nonnull %24) #18
  call void @quat_to_mat3(ptr noundef nonnull %4, ptr noundef nonnull %6) #18
  %26 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 42
  %27 = call float @normalize_qt_qt(ptr noundef nonnull %6, ptr noundef nonnull %26) #18
  call void @quat_to_mat3(ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  br label %28

28:                                               ; preds = %16, %23, %10
  %29 = icmp eq i8 %2, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %28
  call void @mul_m3_m3m3(ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %4) #18
  br label %32

31:                                               ; preds = %28
  call void @copy_m3_m3(ptr noundef %1, ptr noundef nonnull %4) #18
  br label %32

32:                                               ; preds = %31, %30
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #20
  ret void
}

; Function Attrs: optsize
declare void @eulO_to_mat3(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: optsize
declare void @axis_angle_to_mat3(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare float @normalize_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @quat_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @copy_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_mat3_to_rot(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #4 {
  %4 = alloca [4 x float], align 16
  %5 = alloca [4 x float], align 16
  %6 = alloca [4 x float], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 83
  %9 = load i16, ptr %8, align 8, !tbaa !38
  switch i16 %9, label %22 [
    i16 0, label %10
    i16 -1, label %14
  ]

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 41
  tail call void @mat3_to_quat(ptr noundef nonnull %11, ptr noundef %1) #18
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 42
  %13 = call float @normalize_qt_qt(ptr noundef nonnull %4, ptr noundef nonnull %12) #18
  call void @invert_qt(ptr noundef nonnull %4) #18
  call void @mul_qt_qtqt(ptr noundef nonnull %11, ptr noundef nonnull %4, ptr noundef nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  br label %31

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 45
  tail call void @mat3_to_axis_angle(ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef %1) #18
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 44
  tail call fastcc void @sub_v3_v3(ptr noundef nonnull %15, ptr noundef nonnull %17) #19
  %18 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 46
  %19 = load float, ptr %18, align 4, !tbaa !380
  %20 = load float, ptr %16, align 8, !tbaa !327
  %21 = fsub float %20, %19
  store float %21, ptr %16, align 8, !tbaa !327
  br label %31

22:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #20
  call void @mat3_to_quat(ptr noundef nonnull %5, ptr noundef %1) #18
  %23 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 40
  %24 = load i16, ptr %8, align 8, !tbaa !38
  call void @eulO_to_quat(ptr noundef nonnull %6, ptr noundef nonnull %23, i16 noundef signext %24) #18
  call void @invert_qt(ptr noundef nonnull %6) #18
  call void @mul_qt_qtqt(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %5) #18
  call void @quat_to_mat3(ptr noundef nonnull %7, ptr noundef nonnull %5) #18
  %25 = icmp eq i8 %2, 0
  %26 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39
  %27 = load i16, ptr %8, align 8, !tbaa !38
  br i1 %25, label %29, label %28

28:                                               ; preds = %22
  call void @mat3_to_compatible_eulO(ptr noundef nonnull %26, ptr noundef nonnull %26, i16 noundef signext %27, ptr noundef nonnull %7) #18
  br label %30

29:                                               ; preds = %22
  call void @mat3_to_eulO(ptr noundef nonnull %26, i16 noundef signext %27, ptr noundef nonnull %7) #18
  br label %30

30:                                               ; preds = %29, %28
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  br label %31

31:                                               ; preds = %30, %14, %10
  ret void
}

; Function Attrs: optsize
declare void @mat3_to_quat(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @invert_qt(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @mul_qt_qtqt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @mat3_to_axis_angle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @eulO_to_quat(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: optsize
declare void @mat3_to_compatible_eulO(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @mat3_to_eulO(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_object_tfm_protected_backup(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33
  tail call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %3) #19
  %4 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 1
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 34
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  %6 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 2
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #19
  %8 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 3
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %9) #19
  %10 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 4
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %11) #19
  %12 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 5
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 40
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef nonnull %13) #19
  %14 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 6
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 41
  tail call fastcc void @copy_v4_v4(ptr noundef nonnull %14, ptr noundef nonnull %15) #19
  %16 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 7
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 42
  tail call fastcc void @copy_v4_v4(ptr noundef nonnull %16, ptr noundef nonnull %17) #19
  %18 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 8
  %19 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %18, ptr noundef nonnull %19) #19
  %20 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 9
  %21 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 44
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %20, ptr noundef nonnull %21) #19
  %22 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 45
  %23 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 10
  %24 = load <2 x float>, ptr %22, align 8, !tbaa !34
  store <2 x float> %24, ptr %23, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !381 {
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

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @BKE_object_tfm_protected_restore(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) local_unnamed_addr #12 {
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
  %19 = shl nuw nsw i32 64, %7
  %20 = and i32 %19, %4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 2, i64 %6
  %24 = load float, ptr %23, align 4, !tbaa !34
  %25 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 %6
  store float %24, ptr %25, align 4, !tbaa !34
  %26 = getelementptr inbounds %struct.ObjectTfmProtectedChannels, ptr %1, i64 0, i32 3, i64 %6
  %27 = load float, ptr %26, align 4, !tbaa !34
  %28 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38, i64 %6
  store float %27, ptr %28, align 4, !tbaa !34
  br label %29

29:                                               ; preds = %22, %18
  %30 = shl nuw nsw i32 8, %7
  %31 = and i32 %30, %4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = add nuw nsw i64 %6, 1
  br label %55

35:                                               ; preds = %29
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

55:                                               ; preds = %33, %35
  %56 = phi i64 [ %34, %33 ], [ %42, %35 ]
  %57 = icmp eq i64 %56, 3
  br i1 %57, label %58, label %5, !llvm.loop !382

58:                                               ; preds = %55
  %59 = and i16 %2, 1536
  %60 = icmp eq i16 %59, 1536
  br i1 %60, label %61, label %71

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
  %69 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 45
  %70 = load <2 x float>, ptr %68, align 4, !tbaa !34
  store <2 x float> %70, ptr %69, align 8, !tbaa !34
  br label %71

71:                                               ; preds = %61, %58
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_to_mat3(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #20
  call void @BKE_object_scale_to_mat3(ptr noundef %0, ptr noundef nonnull %3) #19
  call void @BKE_object_rot_to_mat3(ptr noundef %0, ptr noundef nonnull %4, i8 noundef zeroext 1) #19
  call void @mul_m3_m3m3(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_to_mat4(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #20
  call void @BKE_object_to_mat3(ptr noundef %0, ptr noundef nonnull %3) #19
  call void @copy_m4_m3(ptr noundef %1, ptr noundef nonnull %3) #18
  %4 = getelementptr inbounds [4 x float], ptr %1, i64 3
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 34
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #20
  ret void
}

; Function Attrs: optsize
declare void @copy_m4_m3(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #11 !PGOFuncName !383 {
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_matrix_local_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !127
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #20
  %8 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 47
  %9 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %3, ptr noundef nonnull %8) #18
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #20
  br label %13

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  tail call void @copy_m4_m4(ptr noundef %1, ptr noundef nonnull %12) #18
  br label %13

13:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_where_is_calc_time_ex(ptr noundef %0, ptr noundef %1, float noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #4 {
  %6 = alloca [4 x [4 x float]], align 16
  %7 = icmp eq ptr %1, null
  br i1 %7, label %54, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !111
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %10, float noundef %2, i16 noundef signext 1) #18
  %11 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !127
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #20
  %15 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call fastcc void @solve_parenting(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %12, ptr noundef nonnull %15, ptr noundef nonnull %6, ptr noundef %4, i8 noundef zeroext 1) #19
  %16 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 4
  %17 = load i16, ptr %16, align 2, !tbaa !384
  %18 = and i16 %17, 16
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = call fastcc zeroext i8 @where_is_object_parslow(ptr noundef nonnull %1, ptr noundef nonnull %15, ptr noundef nonnull %6) #19, !range !70
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %14, %20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #20
  br label %27

24:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #20
  br label %54

25:                                               ; preds = %8
  %26 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  tail call void @BKE_object_to_mat4(ptr noundef nonnull %1, ptr noundef nonnull %26) #19
  br label %27

27:                                               ; preds = %23, %25
  %28 = icmp eq ptr %3, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 47
  %31 = load ptr, ptr %30, align 8, !tbaa !385
  br label %32

32:                                               ; preds = %27, %29
  %33 = phi ptr [ %31, %29 ], [ %3, %27 ]
  call void @BKE_rigidbody_sync_transforms(ptr noundef %33, ptr noundef nonnull %1, float noundef %2) #18
  %34 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 106
  %35 = load ptr, ptr %34, align 8, !tbaa !386
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 55
  %39 = load i16, ptr %38, align 8, !tbaa !387
  %40 = and i16 %39, 8192
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call ptr @BKE_constraints_make_evalob(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null, i16 noundef signext 1) #18
  call void @BKE_constraints_solve(ptr noundef nonnull %34, ptr noundef %43, float noundef %2) #18
  call void @BKE_constraints_clear_evalob(ptr noundef %43) #18
  br label %44

44:                                               ; preds = %42, %37, %32
  %45 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %46 = call zeroext i8 @is_negative_m4(ptr noundef nonnull %45) #18
  %47 = icmp eq i8 %46, 0
  %48 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 55
  %49 = load i16, ptr %48, align 8, !tbaa !387
  br i1 %47, label %52, label %50

50:                                               ; preds = %44
  %51 = or i16 %49, 4
  store i16 %51, ptr %48, align 8, !tbaa !387
  br label %54

52:                                               ; preds = %44
  %53 = and i16 %49, -5
  store i16 %53, ptr %48, align 8, !tbaa !387
  br label %54

54:                                               ; preds = %24, %5, %52, %50
  ret void
}

; Function Attrs: optsize
declare void @BKE_animsys_evaluate_animdata(ptr noundef, ptr noundef, ptr noundef, float noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @solve_parenting(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6) unnamed_addr #4 !PGOFuncName !388 {
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #20
  call void @BKE_object_to_mat4(ptr noundef %1, ptr noundef nonnull %10) #19
  %11 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 4
  %12 = load i16, ptr %11, align 2, !tbaa !384
  %13 = and i16 %12, 16
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %7
  call void @copy_m4_m4(ptr noundef %4, ptr noundef %3) #18
  br label %16

16:                                               ; preds = %15, %7
  call fastcc void @ob_get_parent_matrix(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %8) #19
  %17 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 48
  call void @mul_m4_m4m4(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %17) #18
  call void @mul_m4_m4m4(ptr noundef %3, ptr noundef nonnull %9, ptr noundef nonnull %10) #18
  %18 = icmp eq ptr %5, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef nonnull %9) #18
  br label %20

20:                                               ; preds = %19, %16
  %21 = icmp eq i8 %6, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %20
  %23 = load i16, ptr %11, align 2, !tbaa !384
  %24 = and i16 %23, 15
  %25 = icmp eq i16 %24, 4
  %26 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 35
  %27 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47, i64 3
  %28 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 3
  %29 = select i1 %25, ptr %27, ptr %28
  call fastcc void @copy_v3_v3(ptr noundef nonnull %26, ptr noundef nonnull %29) #19
  br label %30

30:                                               ; preds = %22, %20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #20
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @where_is_object_parslow(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !389 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 95
  %5 = load float, ptr %4, align 8, !tbaa !390
  %6 = tail call float @llvm.fabs.f32(float %5)
  %7 = fadd float %6, 1.000000e+00
  %8 = fdiv float 1.000000e+00, %7
  %9 = fcmp ult float %8, 1.000000e+00
  br i1 %9, label %10, label %24

10:                                               ; preds = %3
  %11 = fsub float 1.000000e+00, %8
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ 0, %10 ], [ %20, %12 ]
  %14 = phi ptr [ %1, %10 ], [ %21, %12 ]
  %15 = phi ptr [ %2, %10 ], [ %22, %12 ]
  %16 = load float, ptr %14, align 4, !tbaa !34
  %17 = load float, ptr %15, align 4, !tbaa !34
  %18 = fmul float %11, %17
  %19 = tail call float @llvm.fmuladd.f32(float %8, float %16, float %18)
  store float %19, ptr %14, align 4, !tbaa !34
  %20 = add nuw nsw i32 %13, 1
  %21 = getelementptr inbounds float, ptr %14, i64 1
  %22 = getelementptr inbounds float, ptr %15, i64 1
  %23 = icmp eq i32 %20, 16
  br i1 %23, label %24, label %12, !llvm.loop !391

24:                                               ; preds = %12, %3
  %25 = phi i8 [ 0, %3 ], [ 1, %12 ]
  ret i8 %25
}

; Function Attrs: optsize
declare void @BKE_rigidbody_sync_transforms(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BKE_constraints_make_evalob(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_constraints_solve(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_constraints_clear_evalob(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @is_negative_m4(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_where_is_calc_time(ptr noundef %0, ptr noundef %1, float noundef %2) local_unnamed_addr #4 {
  tail call void @BKE_object_where_is_calc_time_ex(ptr noundef %0, ptr noundef %1, float noundef %2, ptr noundef null, ptr noundef null) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_where_is_calc_mat4(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !127
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #20
  call fastcc void @solve_parenting(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 0) #19
  %9 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 4
  %10 = load i16, ptr %9, align 2, !tbaa !384
  %11 = and i16 %10, 16
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = call fastcc zeroext i8 @where_is_object_parslow(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %4) #19, !range !70
  br label %15

15:                                               ; preds = %13, %8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #20
  br label %17

16:                                               ; preds = %3
  tail call void @BKE_object_to_mat4(ptr noundef nonnull %1, ptr noundef %2) #19
  br label %17

17:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_where_is_calc_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = tail call float @BKE_scene_frame_get(ptr noundef %0) #18
  tail call void @BKE_object_where_is_calc_time_ex(ptr noundef %0, ptr noundef %2, float noundef %5, ptr noundef %1, ptr noundef %3) #19
  ret void
}

; Function Attrs: optsize
declare float @BKE_scene_frame_get(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_where_is_calc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = tail call float @BKE_scene_frame_get(ptr noundef %0) #18
  tail call void @BKE_object_where_is_calc_time_ex(ptr noundef %0, ptr noundef %1, float noundef %3, ptr noundef null, ptr noundef null) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_workob_calc_parent(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  tail call void @BKE_object_workob_clear(ptr noundef %2) #19
  %4 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  tail call void @unit_m4(ptr noundef nonnull %4) #18
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 48
  tail call void @unit_m4(ptr noundef nonnull %5) #18
  %6 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 49
  tail call void @unit_m4(ptr noundef nonnull %6) #18
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !127
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 9
  store ptr %8, ptr %9, align 8, !tbaa !127
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 57
  %11 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 57
  %12 = load <2 x i16>, ptr %10, align 4, !tbaa !392
  store <2 x i16> %12, ptr %11, align 4, !tbaa !392
  %13 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 4
  %14 = load i16, ptr %13, align 2, !tbaa !384
  %15 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 4
  store i16 %14, ptr %15, align 2, !tbaa !384
  %16 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 5
  %17 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 5
  %18 = load <2 x i32>, ptr %16, align 4, !tbaa !292
  store <2 x i32> %18, ptr %17, align 4, !tbaa !292
  %19 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 7
  %20 = load i32, ptr %19, align 4, !tbaa !393
  %21 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 7
  store i32 %20, ptr %21, align 4, !tbaa !393
  %22 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 106
  %23 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 106
  %24 = load <2 x ptr>, ptr %22, align 8, !tbaa !47
  store <2 x ptr> %24, ptr %23, align 8, !tbaa !47
  %25 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 8
  %26 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 8
  %27 = tail call ptr @BLI_strncpy(ptr noundef nonnull %25, ptr noundef nonnull %26, i64 noundef 64) #18
  tail call void @BKE_object_where_is_calc(ptr noundef %0, ptr noundef %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ob_get_parent_matrix(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 !PGOFuncName !394 {
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 4
  %8 = load i16, ptr %7, align 2, !tbaa !384
  %9 = and i16 %8, 15
  switch i16 %9, label %38 [
    i16 0, label %10
    i16 7, label %27
    i16 5, label %29
    i16 6, label %34
    i16 4, label %36
  ]

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !68
  %13 = icmp eq i16 %12, 2
  %14 = icmp ne ptr %0, null
  %15 = and i1 %14, %13
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !71
  %19 = getelementptr inbounds %struct.Curve, ptr %18, i64 0, i32 23
  %20 = load i32, ptr %19, align 4, !tbaa !395
  %21 = and i32 %20, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  call fastcc void @ob_parcurve(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %5) #19
  %24 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef %3, ptr noundef nonnull %24, ptr noundef nonnull %5) #18
  br label %38

25:                                               ; preds = %10, %16
  %26 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  tail call void @copy_m4_m4(ptr noundef %3, ptr noundef nonnull %26) #18
  br label %38

27:                                               ; preds = %4
  call fastcc void @ob_parbone(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %5) #19
  %28 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef %3, ptr noundef nonnull %28, ptr noundef nonnull %5) #18
  br label %38

29:                                               ; preds = %4
  tail call void @unit_m4(ptr noundef %3) #18
  %30 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 5
  %31 = load i32, ptr %30, align 4, !tbaa !396
  call fastcc void @give_parvert(ptr noundef %2, i32 noundef %31, ptr noundef nonnull %6) #19
  %32 = getelementptr inbounds [4 x float], ptr %3, i64 3
  %33 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  call void @mul_v3_m4v3(ptr noundef nonnull %32, ptr noundef nonnull %33, ptr noundef nonnull %6) #18
  br label %38

34:                                               ; preds = %4
  call fastcc void @ob_parvert3(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %5) #19
  %35 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef %3, ptr noundef nonnull %35, ptr noundef nonnull %5) #18
  br label %38

36:                                               ; preds = %4
  %37 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  tail call void @copy_m4_m4(ptr noundef %3, ptr noundef nonnull %37) #18
  br label %38

38:                                               ; preds = %23, %25, %4, %36, %34, %29, %27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #20
  ret void
}

; Function Attrs: optsize
declare void @mat4_to_loc_rot_size(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_boundbox_alloc_unit() local_unnamed_addr #4 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %2 = tail call ptr %1(i64 noundef 104, ptr noundef nonnull @.str.12) #18
  tail call void @BKE_boundbox_init_from_minmax(ptr noundef %2, ptr noundef nonnull @__const.BKE_boundbox_alloc_unit.max, ptr noundef nonnull @__const.BKE_boundbox_alloc_unit.max) #19
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_boundbox_init_from_minmax(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #11 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_boundbox_calc_center_aabb(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #11 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_boundbox_calc_size_aabb(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #11 {
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
declare float @llvm.fabs.f32(float) #14

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_object_boundbox_get(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !68
  switch i16 %3, label %11 [
    i16 1, label %4
    i16 2, label %6
    i16 3, label %6
    i16 4, label %6
    i16 5, label %8
  ]

4:                                                ; preds = %1
  %5 = tail call ptr @BKE_mesh_boundbox_get(ptr noundef nonnull %0) #18
  br label %11

6:                                                ; preds = %1, %1, %1
  %7 = tail call ptr @BKE_curve_boundbox_get(ptr noundef nonnull %0) #18
  br label %11

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 15
  %10 = load ptr, ptr %9, align 8, !tbaa !94
  br label %11

11:                                               ; preds = %1, %6, %8, %4
  %12 = phi ptr [ %5, %4 ], [ %7, %6 ], [ %10, %8 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: optsize
declare ptr @BKE_mesh_boundbox_get(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BKE_curve_boundbox_get(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_boundbox_flag(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #4 {
  %4 = tail call ptr @BKE_object_boundbox_get(ptr noundef %0) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %3
  %7 = icmp eq i8 %2, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.BoundBox, ptr %4, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !92
  %11 = or i32 %10, %1
  store i32 %11, ptr %9, align 4, !tbaa !92
  br label %17

12:                                               ; preds = %6
  %13 = xor i32 %1, -1
  %14 = getelementptr inbounds %struct.BoundBox, ptr %4, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !92
  %16 = and i32 %15, %13
  store i32 %16, ptr %14, align 4, !tbaa !92
  br label %17

17:                                               ; preds = %8, %12, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_dimensions_get(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 {
  %3 = alloca [3 x float], align 4
  %4 = tail call ptr @BKE_object_boundbox_get(ptr noundef %0) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #20
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  call void @mat4_to_size(ptr noundef nonnull %3, ptr noundef nonnull %7) #18
  %8 = load float, ptr %3, align 4, !tbaa !34
  %9 = call float @llvm.fabs.f32(float %8)
  %10 = getelementptr inbounds [8 x [3 x float]], ptr %4, i64 0, i64 4
  %11 = load float, ptr %10, align 4, !tbaa !34
  %12 = load float, ptr %4, align 4, !tbaa !34
  %13 = fsub float %11, %12
  %14 = fmul float %9, %13
  store float %14, ptr %1, align 4, !tbaa !34
  %15 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !34
  %17 = call float @llvm.fabs.f32(float %16)
  %18 = getelementptr inbounds [8 x [3 x float]], ptr %4, i64 0, i64 2, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !34
  %22 = fsub float %19, %21
  %23 = fmul float %17, %22
  %24 = getelementptr inbounds float, ptr %1, i64 1
  store float %23, ptr %24, align 4, !tbaa !34
  %25 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !34
  %27 = call float @llvm.fabs.f32(float %26)
  %28 = getelementptr inbounds [8 x [3 x float]], ptr %4, i64 0, i64 1, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !34
  %30 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = fsub float %29, %31
  %33 = fmul float %27, %32
  %34 = getelementptr inbounds float, ptr %1, i64 2
  store float %33, ptr %34, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #20
  br label %36

35:                                               ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %1) #19
  br label %36

36:                                               ; preds = %35, %6
  ret void
}

; Function Attrs: optsize
declare void @mat4_to_size(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #0 !PGOFuncName !397 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !34
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_dimensions_set(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = alloca [3 x float], align 4
  %4 = tail call ptr @BKE_object_boundbox_get(ptr noundef %0) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %42, label %6

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #20
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  call void @mat4_to_size(ptr noundef nonnull %3, ptr noundef nonnull %7) #18
  %8 = getelementptr inbounds [8 x [3 x float]], ptr %4, i64 0, i64 4
  %9 = load float, ptr %8, align 4, !tbaa !34
  %10 = load float, ptr %4, align 4, !tbaa !34
  %11 = fsub float %9, %10
  %12 = getelementptr inbounds [8 x [3 x float]], ptr %4, i64 0, i64 2, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !34
  %14 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !34
  %16 = fsub float %13, %15
  %17 = getelementptr inbounds [8 x [3 x float]], ptr %4, i64 0, i64 1, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !34
  %19 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !34
  %21 = fsub float %18, %20
  %22 = fcmp ogt float %11, 0.000000e+00
  br i1 %22, label %23, label %27

23:                                               ; preds = %6
  %24 = load float, ptr %1, align 4, !tbaa !34
  %25 = fdiv float %24, %11
  %26 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36
  store float %25, ptr %26, align 4, !tbaa !34
  br label %27

27:                                               ; preds = %23, %6
  %28 = fcmp ogt float %16, 0.000000e+00
  br i1 %28, label %29, label %34

29:                                               ; preds = %27
  %30 = getelementptr inbounds float, ptr %1, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !34
  %32 = fdiv float %31, %16
  %33 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 1
  store float %32, ptr %33, align 4, !tbaa !34
  br label %34

34:                                               ; preds = %29, %27
  %35 = fcmp ogt float %21, 0.000000e+00
  br i1 %35, label %36, label %41

36:                                               ; preds = %34
  %37 = getelementptr inbounds float, ptr %1, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !34
  %39 = fdiv float %38, %21
  %40 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36, i64 2
  store float %39, ptr %40, align 4, !tbaa !34
  br label %41

41:                                               ; preds = %36, %34
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #20
  br label %42

42:                                               ; preds = %41, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_minmax(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #4 {
  %5 = alloca %struct.BoundBox, align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %11 = load i16, ptr %10, align 8, !tbaa !68
  switch i16 %11, label %139 [
    i16 2, label %12
    i16 4, label %12
    i16 3, label %12
    i16 22, label %20
    i16 25, label %75
    i16 1, label %115
    i16 5, label %126
  ]

12:                                               ; preds = %4, %4, %4
  %13 = tail call ptr @BKE_curve_boundbox_get(ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(104) %5, ptr noundef nonnull align 4 dereferenceable(104) %13, i64 104, i1 false), !tbaa.struct !398
  %14 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  br label %15

15:                                               ; preds = %12, %15
  %16 = phi i64 [ 0, %12 ], [ %18, %15 ]
  %17 = getelementptr inbounds [8 x [3 x float]], ptr %5, i64 0, i64 %16
  call void @mul_m4_v3(ptr noundef nonnull %14, ptr noundef nonnull %17) #18
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %17) #18
  %18 = add nuw nsw i64 %16, 1
  %19 = icmp eq i64 %18, 8
  br i1 %19, label %148, label %15, !llvm.loop !399

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !71
  %23 = getelementptr inbounds %struct.Lattice, ptr %22, i64 0, i32 4
  %24 = load i16, ptr %23, align 4, !tbaa !400
  %25 = icmp sgt i16 %24, 0
  br i1 %25, label %26, label %148

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.Lattice, ptr %22, i64 0, i32 21
  %28 = load ptr, ptr %27, align 8, !tbaa !401
  %29 = getelementptr inbounds %struct.Lattice, ptr %22, i64 0, i32 3
  %30 = getelementptr inbounds %struct.Lattice, ptr %22, i64 0, i32 2
  %31 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  %32 = load i16, ptr %29, align 2, !tbaa !402
  br label %33

33:                                               ; preds = %26, %67
  %34 = phi i16 [ %24, %26 ], [ %68, %67 ]
  %35 = phi i16 [ %32, %26 ], [ %69, %67 ]
  %36 = phi i16 [ %32, %26 ], [ %70, %67 ]
  %37 = phi i32 [ 0, %26 ], [ %72, %67 ]
  %38 = phi ptr [ %28, %26 ], [ %71, %67 ]
  %39 = icmp sgt i16 %36, 0
  br i1 %39, label %40, label %67

40:                                               ; preds = %33
  %41 = load i16, ptr %30, align 8, !tbaa !403
  br label %42

42:                                               ; preds = %40, %58
  %43 = phi i16 [ %59, %58 ], [ %35, %40 ]
  %44 = phi i16 [ %60, %58 ], [ %41, %40 ]
  %45 = phi i32 [ %62, %58 ], [ 0, %40 ]
  %46 = phi ptr [ %61, %58 ], [ %38, %40 ]
  %47 = icmp sgt i16 %44, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %42, %48
  %49 = phi i32 [ %51, %48 ], [ 0, %42 ]
  %50 = phi ptr [ %52, %48 ], [ %46, %42 ]
  call void @mul_v3_m4v3(ptr noundef nonnull %6, ptr noundef nonnull %31, ptr noundef %50) #18
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6) #18
  %51 = add nuw nsw i32 %49, 1
  %52 = getelementptr inbounds %struct.BPoint, ptr %50, i64 1
  %53 = load i16, ptr %30, align 8, !tbaa !403
  %54 = sext i16 %53 to i32
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %48, label %56, !llvm.loop !404

56:                                               ; preds = %48
  %57 = load i16, ptr %29, align 2, !tbaa !402
  br label %58

58:                                               ; preds = %56, %42
  %59 = phi i16 [ %43, %42 ], [ %57, %56 ]
  %60 = phi i16 [ %44, %42 ], [ %53, %56 ]
  %61 = phi ptr [ %46, %42 ], [ %52, %56 ]
  %62 = add nuw nsw i32 %45, 1
  %63 = sext i16 %59 to i32
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %42, label %65, !llvm.loop !405

65:                                               ; preds = %58
  %66 = load i16, ptr %23, align 4, !tbaa !400
  br label %67

67:                                               ; preds = %65, %33
  %68 = phi i16 [ %34, %33 ], [ %66, %65 ]
  %69 = phi i16 [ %35, %33 ], [ %59, %65 ]
  %70 = phi i16 [ %36, %33 ], [ %59, %65 ]
  %71 = phi ptr [ %38, %33 ], [ %61, %65 ]
  %72 = add nuw nsw i32 %37, 1
  %73 = sext i16 %68 to i32
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %33, label %148, !llvm.loop !406

75:                                               ; preds = %4
  %76 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %77 = load ptr, ptr %76, align 8, !tbaa !64
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #20
  %80 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %80) #19
  br label %146

81:                                               ; preds = %75
  %82 = load ptr, ptr %77, align 8, !tbaa !47
  %83 = icmp eq ptr %82, null
  br i1 %83, label %137, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %86 = load ptr, ptr %85, align 8, !tbaa !71
  %87 = icmp eq i8 %3, 0
  %88 = getelementptr inbounds %struct.bArmature, ptr %86, i64 0, i32 15
  %89 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  br label %90

90:                                               ; preds = %84, %111
  %91 = phi ptr [ %82, %84 ], [ %113, %111 ]
  %92 = phi i8 [ 0, %84 ], [ %112, %111 ]
  %93 = getelementptr inbounds %struct.bPoseChannel, ptr %91, i64 0, i32 12
  %94 = load ptr, ptr %93, align 8, !tbaa !370
  %95 = icmp eq ptr %94, null
  br i1 %95, label %111, label %96

96:                                               ; preds = %90
  br i1 %87, label %97, label %108

97:                                               ; preds = %96
  %98 = getelementptr inbounds %struct.Bone, ptr %94, i64 0, i32 25
  %99 = load i32, ptr %98, align 8, !tbaa !371
  %100 = load i32, ptr %88, align 8, !tbaa !407
  %101 = and i32 %100, %99
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.Bone, ptr %94, i64 0, i32 10
  %105 = load i32, ptr %104, align 8, !tbaa !408
  %106 = and i32 %105, 64
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103, %96
  %109 = getelementptr inbounds %struct.bPoseChannel, ptr %91, i64 0, i32 31
  call void @mul_v3_m4v3(ptr noundef nonnull %6, ptr noundef nonnull %89, ptr noundef nonnull %109) #18
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6) #18
  %110 = getelementptr inbounds %struct.bPoseChannel, ptr %91, i64 0, i32 32
  call void @mul_v3_m4v3(ptr noundef nonnull %6, ptr noundef nonnull %89, ptr noundef nonnull %110) #18
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6) #18
  br label %111

111:                                              ; preds = %97, %90, %103, %108
  %112 = phi i8 [ %92, %103 ], [ 1, %108 ], [ %92, %90 ], [ %92, %97 ]
  %113 = load ptr, ptr %91, align 8, !tbaa !47
  %114 = icmp eq ptr %113, null
  br i1 %114, label %134, label %90, !llvm.loop !409

115:                                              ; preds = %4
  %116 = tail call ptr @BKE_mesh_from_object(ptr noundef nonnull %0) #18
  %117 = icmp eq ptr %116, null
  br i1 %117, label %137, label %118

118:                                              ; preds = %115
  %119 = tail call ptr @BKE_mesh_boundbox_get(ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(104) %5, ptr noundef nonnull align 4 dereferenceable(104) %119, i64 104, i1 false), !tbaa.struct !398
  %120 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  br label %121

121:                                              ; preds = %118, %121
  %122 = phi i64 [ 0, %118 ], [ %124, %121 ]
  %123 = getelementptr inbounds [8 x [3 x float]], ptr %5, i64 0, i64 %122
  call void @mul_m4_v3(ptr noundef nonnull %120, ptr noundef nonnull %123) #18
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %123) #18
  %124 = add nuw nsw i64 %122, 1
  %125 = icmp eq i64 %124, 8
  br i1 %125, label %148, label %121, !llvm.loop !410

126:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #20
  %127 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %128 = load ptr, ptr %127, align 8, !tbaa !71
  %129 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  %130 = call zeroext i8 @BKE_mball_minmax_ex(ptr noundef %128, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %129, i16 noundef signext 0) #18
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %126
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %7) #18
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %8) #18
  br label %133

133:                                              ; preds = %132, %126
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #20
  br label %134

134:                                              ; preds = %111, %133
  %135 = phi i8 [ %130, %133 ], [ %112, %111 ]
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %81, %134, %115
  %138 = load i16, ptr %10, align 8, !tbaa !68
  br label %139

139:                                              ; preds = %137, %4
  %140 = phi i16 [ %138, %137 ], [ %11, %4 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #20
  %141 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %141) #19
  %142 = icmp eq i16 %140, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 89
  %145 = load float, ptr %144, align 8, !tbaa !365
  call fastcc void @mul_v3_fl(ptr noundef nonnull %9, float noundef %145) #19
  br label %146

146:                                              ; preds = %79, %143, %139
  %147 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47, i64 3
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %147) #18
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %147) #19
  call fastcc void @add_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %9) #19
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6) #18
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %147) #19
  call fastcc void @sub_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %9) #19
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #20
  br label %148

148:                                              ; preds = %121, %67, %15, %20, %146, %134
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %5) #20
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BKE_mesh_from_object(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @BKE_mball_minmax_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #11 !PGOFuncName !411 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !PGOFuncName !412 {
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_empty_draw_type_set(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = trunc i32 %1 to i8
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 88
  store i8 %3, ptr %4, align 1, !tbaa !291
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !68
  %7 = icmp eq i16 %6, 0
  %8 = and i32 %1, 255
  %9 = icmp eq i32 %8, 8
  %10 = and i1 %9, %7
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 131
  %12 = load ptr, ptr %11, align 8, !tbaa !110
  %13 = icmp eq ptr %12, null
  br i1 %10, label %14, label %22

14:                                               ; preds = %2
  br i1 %13, label %15, label %25

15:                                               ; preds = %14
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %17 = tail call ptr %16(i64 noundef 40, ptr noundef nonnull @.str.13) #18
  store ptr %17, ptr %11, align 8, !tbaa !110
  %18 = getelementptr inbounds %struct.ImageUser, ptr %17, i64 0, i32 7
  store i8 1, ptr %18, align 2, !tbaa !413
  %19 = getelementptr inbounds %struct.ImageUser, ptr %17, i64 0, i32 2
  store i32 100, ptr %19, align 4, !tbaa !414
  %20 = getelementptr inbounds %struct.ImageUser, ptr %17, i64 0, i32 4
  store i32 1, ptr %20, align 4, !tbaa !415
  %21 = getelementptr inbounds %struct.ImageUser, ptr %17, i64 0, i32 5
  store i8 2, ptr %21, align 8, !tbaa !416
  br label %25

22:                                               ; preds = %2
  br i1 %13, label %25, label %23

23:                                               ; preds = %22
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %24(ptr noundef nonnull %12) #18
  store ptr null, ptr %11, align 8, !tbaa !110
  br label %25

25:                                               ; preds = %22, %23, %14, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BKE_object_minmax_dupli(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #4 {
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 55
  %8 = load i16, ptr %7, align 8, !tbaa !387
  %9 = and i16 %8, 2840
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %45, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr @G, align 8, !tbaa !121
  %13 = getelementptr inbounds %struct.Main, ptr %12, i64 0, i32 46
  %14 = load ptr, ptr %13, align 8, !tbaa !417
  %15 = tail call ptr @object_duplilist(ptr noundef %14, ptr noundef %0, ptr noundef nonnull %1) #18
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = icmp eq ptr %16, null
  br i1 %17, label %43, label %18

18:                                               ; preds = %11
  %19 = icmp eq i8 %4, 0
  br label %20

20:                                               ; preds = %18, %39
  %21 = phi ptr [ %16, %18 ], [ %41, %39 ]
  %22 = phi i8 [ 0, %18 ], [ %40, %39 ]
  br i1 %19, label %23, label %27

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.DupliObject, ptr %21, i64 0, i32 7
  %25 = load i8, ptr %24, align 2, !tbaa !419
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %23, %20
  %28 = getelementptr inbounds %struct.DupliObject, ptr %21, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !421
  %30 = call ptr @BKE_object_boundbox_get(ptr noundef %29) #19
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.DupliObject, ptr %21, i64 0, i32 3
  br label %34

34:                                               ; preds = %32, %34
  %35 = phi i64 [ 0, %32 ], [ %37, %34 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  %36 = getelementptr inbounds [8 x [3 x float]], ptr %30, i64 0, i64 %35
  call void @mul_v3_m4v3(ptr noundef nonnull %6, ptr noundef nonnull %33, ptr noundef nonnull %36) #18
  call void @minmax_v3v3_v3(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  %37 = add nuw nsw i64 %35, 1
  %38 = icmp eq i64 %37, 8
  br i1 %38, label %39, label %34, !llvm.loop !422

39:                                               ; preds = %34, %27, %23
  %40 = phi i8 [ %22, %23 ], [ %22, %27 ], [ 1, %34 ]
  %41 = load ptr, ptr %21, align 8, !tbaa !47
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %20, !llvm.loop !423

43:                                               ; preds = %39, %11
  %44 = phi i8 [ 0, %11 ], [ %40, %39 ]
  call void @free_object_duplilist(ptr noundef nonnull %15) #18
  br label %45

45:                                               ; preds = %5, %43
  %46 = phi i8 [ %44, %43 ], [ 0, %5 ]
  ret i8 %46
}

; Function Attrs: optsize
declare ptr @object_duplilist(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @free_object_duplilist(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_foreach_display_point(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 120
  %7 = load ptr, ptr %6, align 8, !tbaa !95
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 31
  %11 = load ptr, ptr %10, align 8, !tbaa !424
  %12 = tail call ptr %11(ptr noundef nonnull %7) #18
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 23
  %14 = load ptr, ptr %13, align 8, !tbaa !425
  %15 = tail call i32 %14(ptr noundef nonnull %7) #18
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %9, %17
  %18 = phi ptr [ %21, %17 ], [ %12, %9 ]
  %19 = phi i32 [ %20, %17 ], [ 0, %9 ]
  call void @mul_v3_m4v3(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %18) #18
  call void %2(ptr noundef nonnull %5, ptr noundef %3) #18
  %20 = add nuw nsw i32 %19, 1
  %21 = getelementptr inbounds %struct.MVert, ptr %18, i64 1
  %22 = icmp eq i32 %20, %15
  br i1 %22, label %47, label %17, !llvm.loop !426

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  %25 = load ptr, ptr %24, align 8, !tbaa !57
  %26 = icmp eq ptr %25, null
  br i1 %26, label %47, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %25, align 8, !tbaa !427
  %29 = icmp eq ptr %28, null
  br i1 %29, label %47, label %30

30:                                               ; preds = %27, %44
  %31 = phi ptr [ %45, %44 ], [ %28, %27 ]
  %32 = getelementptr inbounds %struct.DispList, ptr %31, i64 0, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !428
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.DispList, ptr %31, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !430
  br label %38

38:                                               ; preds = %35, %38
  %39 = phi i32 [ %41, %38 ], [ 0, %35 ]
  %40 = phi ptr [ %42, %38 ], [ %37, %35 ]
  call void @mul_v3_m4v3(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %40) #18
  call void %2(ptr noundef nonnull %5, ptr noundef %3) #18
  %41 = add nuw nsw i32 %39, 1
  %42 = getelementptr inbounds float, ptr %40, i64 3
  %43 = icmp eq i32 %41, %33
  br i1 %43, label %44, label %38, !llvm.loop !431

44:                                               ; preds = %38, %30
  %45 = load ptr, ptr %31, align 8, !tbaa !432
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %30, !llvm.loop !433

47:                                               ; preds = %17, %44, %9, %23, %27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %19 = load i32, ptr %13, align 8, !tbaa !292
  %20 = and i32 %19, %18
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %61, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.Base, ptr %16, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = getelementptr inbounds %struct.Object, ptr %24, i64 0, i32 102
  %26 = load i8, ptr %25, align 8, !tbaa !434
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %61

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.Base, ptr %16, i64 0, i32 4
  %31 = load i32, ptr %30, align 8, !tbaa !435
  %32 = and i32 %31, %14
  %33 = icmp eq i32 %32, %14
  br i1 %33, label %34, label %61

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.Object, ptr %24, i64 0, i32 55
  %36 = load i16, ptr %35, align 8, !tbaa !387
  %37 = and i16 %36, 2840
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.Object, ptr %24, i64 0, i32 47
  tail call void @BKE_object_foreach_display_point(ptr noundef nonnull %24, ptr noundef nonnull %40, ptr noundef %3, ptr noundef %4) #19
  br label %61

41:                                               ; preds = %34
  %42 = load ptr, ptr @G, align 8, !tbaa !121
  %43 = getelementptr inbounds %struct.Main, ptr %42, i64 0, i32 46
  %44 = load ptr, ptr %43, align 8, !tbaa !417
  %45 = tail call ptr @object_duplilist(ptr noundef %44, ptr noundef %0, ptr noundef nonnull %24) #18
  %46 = load ptr, ptr %45, align 8, !tbaa !47
  %47 = icmp eq ptr %46, null
  br i1 %47, label %60, label %48

48:                                               ; preds = %41, %57
  %49 = phi ptr [ %58, %57 ], [ %46, %41 ]
  %50 = getelementptr inbounds %struct.DupliObject, ptr %49, i64 0, i32 7
  %51 = load i8, ptr %50, align 2, !tbaa !419
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.DupliObject, ptr %49, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !421
  %56 = getelementptr inbounds %struct.DupliObject, ptr %49, i64 0, i32 3
  tail call void @BKE_object_foreach_display_point(ptr noundef %55, ptr noundef nonnull %56, ptr noundef %3, ptr noundef %4) #19
  br label %57

57:                                               ; preds = %48, %53
  %58 = load ptr, ptr %49, align 8, !tbaa !47
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %48, !llvm.loop !436

60:                                               ; preds = %57, %41
  tail call void @free_object_duplilist(ptr noundef nonnull %45) #18
  br label %61

61:                                               ; preds = %15, %22, %29, %60, %39
  %62 = load ptr, ptr %16, align 8, !tbaa !47
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %15, !llvm.loop !437

64:                                               ; preds = %61, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_object_tfm_backup(ptr noundef %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %3 = tail call ptr %2(i64 noundef 404, ptr noundef nonnull @.str.14) #18
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33
  tail call fastcc void @copy_v3_v3(ptr noundef %3, ptr noundef nonnull %4) #19
  %5 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 1
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 34
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  %7 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 2
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 35
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #19
  %9 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 3
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %10) #19
  %11 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 4
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %12) #19
  %13 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 5
  %14 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %14) #19
  %15 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 6
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 40
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %15, ptr noundef nonnull %16) #19
  %17 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 7
  %18 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 41
  tail call void @copy_qt_qt(ptr noundef nonnull %17, ptr noundef nonnull %18) #18
  %19 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 8
  %20 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 42
  tail call void @copy_qt_qt(ptr noundef nonnull %19, ptr noundef nonnull %20) #18
  %21 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 9
  %22 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %21, ptr noundef nonnull %22) #19
  %23 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 10
  %24 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 44
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %23, ptr noundef nonnull %24) #19
  %25 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 45
  %26 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 11
  %27 = load <2 x float>, ptr %25, align 8, !tbaa !34
  store <2 x float> %27, ptr %26, align 4, !tbaa !34
  %28 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 13
  %29 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  tail call void @copy_m4_m4(ptr noundef nonnull %28, ptr noundef nonnull %29) #18
  %30 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 14
  %31 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 48
  tail call void @copy_m4_m4(ptr noundef nonnull %30, ptr noundef nonnull %31) #18
  %32 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 15
  %33 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 49
  tail call void @copy_m4_m4(ptr noundef nonnull %32, ptr noundef nonnull %33) #18
  %34 = getelementptr inbounds %struct.ObTfmBack, ptr %3, i64 0, i32 16
  %35 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 50
  tail call void @copy_m4_m4(ptr noundef nonnull %34, ptr noundef nonnull %35) #18
  ret ptr %3
}

; Function Attrs: optsize
declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_tfm_restore(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 33
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef %1) #19
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 34
  %5 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 35
  %7 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #19
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 36
  %9 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 3
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %9) #19
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 38
  %11 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 4
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %11) #19
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 39
  %13 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 5
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef nonnull %13) #19
  %14 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 40
  %15 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 6
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %14, ptr noundef nonnull %15) #19
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 41
  %17 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 7
  tail call void @copy_qt_qt(ptr noundef nonnull %16, ptr noundef nonnull %17) #18
  %18 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 42
  %19 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 8
  tail call void @copy_qt_qt(ptr noundef nonnull %18, ptr noundef nonnull %19) #18
  %20 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 43
  %21 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 9
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %20, ptr noundef nonnull %21) #19
  %22 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 44
  %23 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 10
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %22, ptr noundef nonnull %23) #19
  %24 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 11
  %25 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 45
  %26 = load <2 x float>, ptr %24, align 4, !tbaa !34
  store <2 x float> %26, ptr %25, align 8, !tbaa !34
  %27 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  %28 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 13
  tail call void @copy_m4_m4(ptr noundef nonnull %27, ptr noundef nonnull %28) #18
  %29 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 48
  %30 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 14
  tail call void @copy_m4_m4(ptr noundef nonnull %29, ptr noundef nonnull %30) #18
  %31 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 49
  %32 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 15
  tail call void @copy_m4_m4(ptr noundef nonnull %31, ptr noundef nonnull %32) #18
  %33 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 50
  %34 = getelementptr inbounds %struct.ObTfmBack, ptr %1, i64 0, i32 16
  tail call void @copy_m4_m4(ptr noundef nonnull %33, ptr noundef nonnull %34) #18
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_object_parent_loop_check(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #7 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2, %7
  %5 = phi ptr [ %9, %7 ], [ %0, %2 ]
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !127
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %4

11:                                               ; preds = %7, %4, %2
  %12 = phi i8 [ 0, %2 ], [ 1, %4 ], [ 0, %7 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_handle_update_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #4 {
  %6 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 103
  %7 = load i8, ptr %6, align 1, !tbaa !438
  %8 = and i8 %7, 7
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %274, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  tail call void @BKE_pose_channels_hash_make(ptr noundef nonnull %12) #18
  %15 = load i8, ptr %6, align 1, !tbaa !438
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi i8 [ %15, %14 ], [ %7, %10 ]
  %18 = and i8 %17, 2
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %22 = load i16, ptr %21, align 8, !tbaa !68
  %23 = icmp eq i16 %22, 25
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load ptr, ptr %11, align 8, !tbaa !64
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.bPose, ptr %25, i64 0, i32 2
  %29 = load i16, ptr %28, align 8, !tbaa !439
  %30 = and i16 %29, 1
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27, %24
  %33 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %34 = load ptr, ptr %33, align 8, !tbaa !71
  tail call void @BKE_pose_rebuild(ptr noundef nonnull %2, ptr noundef %34) #18
  %35 = load i8, ptr %6, align 1, !tbaa !438
  br label %36

36:                                               ; preds = %20, %32, %27, %16
  %37 = phi i8 [ %17, %20 ], [ %35, %32 ], [ %17, %27 ], [ %17, %16 ]
  %38 = and i8 %37, 7
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %76, label %40

40:                                               ; preds = %36
  %41 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !441
  %42 = and i32 %41, 256
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4, i64 2
  %46 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, ptr noundef nonnull %45) #19
  br label %47

47:                                               ; preds = %44, %40
  %48 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !347
  %50 = icmp eq ptr %49, null
  br i1 %50, label %75, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 13
  %53 = load ptr, ptr %52, align 8, !tbaa !125
  %54 = icmp eq ptr %53, null
  br i1 %54, label %75, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.Object, ptr %53, i64 0, i32 12
  %57 = load ptr, ptr %56, align 8, !tbaa !126
  %58 = icmp eq ptr %57, null
  br i1 %58, label %72, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.Object, ptr %57, i64 0, i32 50
  %61 = getelementptr inbounds %struct.Object, ptr %57, i64 0, i32 47
  %62 = tail call zeroext i8 @invert_m4_m4(ptr noundef nonnull %60, ptr noundef nonnull %61) #18
  %63 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  %64 = load ptr, ptr %52, align 8, !tbaa !125
  %65 = getelementptr inbounds %struct.Object, ptr %64, i64 0, i32 47
  tail call void @mul_m4_m4m4(ptr noundef nonnull %63, ptr noundef nonnull %60, ptr noundef nonnull %65) #18
  %66 = getelementptr inbounds %struct.Object, ptr %57, i64 0, i32 112
  %67 = load ptr, ptr %66, align 8, !tbaa !332
  %68 = icmp eq ptr %67, null
  br i1 %68, label %76, label %69

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47, i64 3
  %71 = getelementptr inbounds %struct.Group, ptr %67, i64 0, i32 3
  tail call fastcc void @add_v3_v3(ptr noundef nonnull %70, ptr noundef nonnull %71) #19
  br label %76

72:                                               ; preds = %55
  %73 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  %74 = getelementptr inbounds %struct.Object, ptr %53, i64 0, i32 47
  tail call void @copy_m4_m4(ptr noundef nonnull %73, ptr noundef nonnull %74) #18
  br label %76

75:                                               ; preds = %51, %47
  tail call void @BKE_object_where_is_calc_ex(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %2, ptr noundef null) #19
  br label %76

76:                                               ; preds = %59, %69, %75, %72, %36
  %77 = load i8, ptr %6, align 1, !tbaa !438
  %78 = and i8 %77, 2
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %271, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %82 = load ptr, ptr %81, align 8, !tbaa !71
  %83 = tail call ptr @BKE_animdata_from_id(ptr noundef %82) #18
  %84 = tail call float @BKE_scene_frame_get(ptr noundef %1) #18
  %85 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !441
  %86 = and i32 %85, 256
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4, i64 2
  %90 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull %89) #19
  br label %91

91:                                               ; preds = %88, %80
  %92 = icmp eq ptr %83, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %91
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef %82, ptr noundef nonnull %83, float noundef %84, i16 noundef signext 1) #18
  br label %94

94:                                               ; preds = %93, %91
  %95 = tail call ptr @BKE_key_from_object(ptr noundef nonnull %2) #18
  %96 = icmp eq ptr %95, null
  br i1 %96, label %109, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.Key, ptr %95, i64 0, i32 6
  %99 = load ptr, ptr %98, align 8, !tbaa !442
  %100 = icmp eq ptr %99, null
  br i1 %100, label %109, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 114
  %103 = load i8, ptr %102, align 1, !tbaa !444
  %104 = and i8 %103, 1
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.Key, ptr %95, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !445
  tail call void @BKE_animsys_evaluate_animdata(ptr noundef %1, ptr noundef nonnull %95, ptr noundef %108, float noundef %84, i16 noundef signext 1) #18
  br label %109

109:                                              ; preds = %101, %106, %97, %94
  %110 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %111 = load i16, ptr %110, align 8, !tbaa !68
  switch i16 %111, label %168 [
    i16 1, label %112
    i16 25, label %131
    i16 5, label %151
    i16 2, label %152
    i16 3, label %152
    i16 4, label %152
    i16 22, label %153
    i16 0, label %154
  ]

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 7
  %114 = load ptr, ptr %113, align 8, !tbaa !446
  %115 = icmp eq ptr %114, %2
  br i1 %115, label %121, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 42
  %118 = load i64, ptr %117, align 8, !tbaa !447
  %119 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !448
  %120 = or i64 %119, %118
  br label %129

121:                                              ; preds = %112
  %122 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %2) #18
  %123 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 42
  %124 = load i64, ptr %123, align 8, !tbaa !447
  %125 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !448
  %126 = or i64 %125, %124
  %127 = icmp eq ptr %122, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %121
  tail call void @makeDerivedMesh(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %122, i64 noundef %126, i32 noundef 0) #18
  br label %168

129:                                              ; preds = %116, %121
  %130 = phi i64 [ %120, %116 ], [ %126, %121 ]
  tail call void @makeDerivedMesh(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef null, i64 noundef %130, i32 noundef 0) #18
  br label %168

131:                                              ; preds = %109
  %132 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !347
  %134 = icmp eq ptr %133, null
  br i1 %134, label %150, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 13
  %137 = load ptr, ptr %136, align 8, !tbaa !125
  %138 = icmp eq ptr %137, null
  br i1 %138, label %150, label %139

139:                                              ; preds = %135
  %140 = load ptr, ptr %11, align 8, !tbaa !64
  %141 = getelementptr inbounds %struct.Object, ptr %137, i64 0, i32 18
  %142 = load ptr, ptr %141, align 8, !tbaa !64
  %143 = tail call zeroext i8 @BKE_pose_copy_result(ptr noundef %140, ptr noundef %142) #18
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %145, label %168

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 4, i64 2
  %147 = load ptr, ptr %136, align 8, !tbaa !125
  %148 = getelementptr inbounds %struct.ID, ptr %147, i64 0, i32 4, i64 2
  %149 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef nonnull %146, ptr noundef nonnull %148) #19
  br label %168

150:                                              ; preds = %135, %131
  tail call void @BKE_pose_where_is(ptr noundef %1, ptr noundef nonnull %2) #18
  br label %168

151:                                              ; preds = %109
  tail call void @BKE_displist_make_mball(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #18
  br label %168

152:                                              ; preds = %109, %109, %109
  tail call void @BKE_displist_make_curveTypes(ptr noundef %1, ptr noundef nonnull %2, i8 noundef zeroext 0) #18
  br label %168

153:                                              ; preds = %109
  tail call void @BKE_lattice_modifiers_calc(ptr noundef %1, ptr noundef nonnull %2) #18
  br label %168

154:                                              ; preds = %109
  %155 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 88
  %156 = load i8, ptr %155, align 1, !tbaa !291
  %157 = icmp eq i8 %156, 8
  br i1 %157, label %158, label %168

158:                                              ; preds = %154
  %159 = load ptr, ptr %81, align 8, !tbaa !71
  %160 = icmp eq ptr %159, null
  br i1 %160, label %168, label %161

161:                                              ; preds = %158
  %162 = tail call zeroext i8 @BKE_image_is_animated(ptr noundef nonnull %159) #18
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 131
  %166 = load ptr, ptr %165, align 8, !tbaa !110
  %167 = fptosi float %84 to i32
  tail call void @BKE_image_user_check_frame_calc(ptr noundef %166, i32 noundef %167, i32 noundef 0) #18
  br label %168

168:                                              ; preds = %128, %129, %154, %158, %164, %161, %150, %145, %139, %109, %153, %152, %151
  %169 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 31
  %170 = load i32, ptr %169, align 8, !tbaa !103
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %184, label %172

172:                                              ; preds = %168
  %173 = icmp slt i32 %170, 1
  br i1 %173, label %189, label %174

174:                                              ; preds = %172, %180
  %175 = phi i32 [ %181, %180 ], [ 1, %172 ]
  %176 = trunc i32 %175 to i16
  %177 = tail call ptr @give_current_material(ptr noundef nonnull %2, i16 noundef signext %176) #18
  %178 = icmp eq ptr %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %174
  tail call void @material_drivers_update(ptr noundef %1, ptr noundef nonnull %177, float noundef %84) #18
  br label %180

180:                                              ; preds = %179, %174
  %181 = add nuw nsw i32 %175, 1
  %182 = load i32, ptr %169, align 8, !tbaa !103
  %183 = icmp slt i32 %175, %182
  br i1 %183, label %174, label %189, !llvm.loop !449

184:                                              ; preds = %168
  %185 = load i16, ptr %110, align 8, !tbaa !68
  %186 = icmp eq i16 %185, 10
  br i1 %186, label %187, label %189

187:                                              ; preds = %184
  %188 = load ptr, ptr %81, align 8, !tbaa !71
  tail call void @lamp_drivers_update(ptr noundef %1, ptr noundef %188, float noundef %84) #18
  br label %189

189:                                              ; preds = %180, %172, %184, %187
  %190 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 7
  %191 = load ptr, ptr %190, align 8, !tbaa !446
  %192 = icmp eq ptr %191, %2
  br i1 %192, label %271, label %193

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 109
  %195 = load ptr, ptr %194, align 8, !tbaa !144
  %196 = icmp eq ptr %195, null
  br i1 %196, label %271, label %197

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 55
  %199 = load i16, ptr %198, align 8, !tbaa !387
  %200 = and i16 %199, -2049
  store i16 %200, ptr %198, align 8, !tbaa !387
  br label %201

201:                                              ; preds = %197, %245
  %202 = phi ptr [ %195, %197 ], [ %246, %245 ]
  %203 = getelementptr inbounds %struct.ParticleSystem, ptr %202, i64 0, i32 31
  %204 = load i16, ptr %203, align 4, !tbaa !450
  %205 = and i16 %204, 32
  %206 = icmp eq i16 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %201
  tail call void @psys_changed_type(ptr noundef %2, ptr noundef nonnull %202) #18
  br label %208

208:                                              ; preds = %207, %201
  %209 = tail call i32 @psys_check_enabled(ptr noundef %2, ptr noundef nonnull %202) #18
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %238, label %211

211:                                              ; preds = %208
  %212 = getelementptr inbounds %struct.ParticleSystem, ptr %202, i64 0, i32 2
  %213 = load ptr, ptr %212, align 8, !tbaa !150
  %214 = icmp eq ptr %213, null
  br i1 %214, label %236, label %215

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.ParticleSettings, ptr %213, i64 0, i32 17
  %217 = load i16, ptr %216, align 8, !tbaa !451
  %218 = icmp eq i16 %217, 10
  br i1 %218, label %222, label %219

219:                                              ; preds = %215
  %220 = load i32, ptr %0, align 4, !tbaa !452
  %221 = icmp eq i32 %220, 2
  br i1 %221, label %222, label %236

222:                                              ; preds = %219, %215
  %223 = getelementptr inbounds %struct.ParticleSettings, ptr %213, i64 0, i32 21
  %224 = load i16, ptr %223, align 8, !tbaa !454
  switch i16 %224, label %236 [
    i16 7, label %225
    i16 8, label %229
  ]

225:                                              ; preds = %222
  %226 = getelementptr inbounds %struct.ParticleSettings, ptr %213, i64 0, i32 125
  %227 = load ptr, ptr %226, align 8, !tbaa !151
  %228 = icmp eq ptr %227, null
  br i1 %228, label %236, label %233

229:                                              ; preds = %222
  %230 = getelementptr inbounds %struct.ParticleSettings, ptr %213, i64 0, i32 122
  %231 = load ptr, ptr %230, align 8, !tbaa !455
  %232 = icmp eq ptr %231, null
  br i1 %232, label %236, label %233

233:                                              ; preds = %229, %225
  %234 = load i16, ptr %198, align 8, !tbaa !387
  %235 = or i16 %234, 2048
  store i16 %235, ptr %198, align 8, !tbaa !387
  br label %236

236:                                              ; preds = %222, %225, %233, %229, %219, %211
  tail call void @particle_system_update(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %202) #18
  %237 = load ptr, ptr %202, align 8, !tbaa !173
  br label %245

238:                                              ; preds = %208
  %239 = getelementptr inbounds %struct.ParticleSystem, ptr %202, i64 0, i32 25
  %240 = load i32, ptr %239, align 4, !tbaa !456
  %241 = and i32 %240, 256
  %242 = icmp eq i32 %241, 0
  %243 = load ptr, ptr %202, align 8, !tbaa !173
  br i1 %242, label %245, label %244

244:                                              ; preds = %238
  tail call void @BLI_remlink(ptr noundef nonnull %194, ptr noundef nonnull %202) #18
  tail call void @psys_free(ptr noundef %2, ptr noundef nonnull %202) #18
  br label %245

245:                                              ; preds = %238, %244, %236
  %246 = phi ptr [ %237, %236 ], [ %243, %244 ], [ %243, %238 ]
  %247 = icmp eq ptr %246, null
  br i1 %247, label %248, label %201, !llvm.loop !457

248:                                              ; preds = %245
  %249 = load i32, ptr %0, align 4, !tbaa !452
  %250 = icmp eq i32 %249, 2
  br i1 %250, label %251, label %271

251:                                              ; preds = %248
  %252 = load i16, ptr %198, align 8, !tbaa !387
  %253 = and i16 %252, 2048
  %254 = icmp eq i16 %253, 0
  br i1 %254, label %271, label %255

255:                                              ; preds = %251
  %256 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !448
  %257 = or i64 %256, 96
  %258 = tail call ptr @mesh_create_derived_render(ptr noundef %1, ptr noundef nonnull %2, i64 noundef %257) #18
  %259 = getelementptr inbounds %struct.DerivedMesh, ptr %258, i64 0, i32 95
  %260 = load ptr, ptr %259, align 8, !tbaa !98
  tail call void %260(ptr noundef %258) #18
  %261 = load ptr, ptr %194, align 8, !tbaa !47
  %262 = icmp eq ptr %261, null
  br i1 %262, label %271, label %263

263:                                              ; preds = %255, %263
  %264 = phi ptr [ %269, %263 ], [ %261, %255 ]
  %265 = tail call ptr @psys_get_modifier(ptr noundef %2, ptr noundef nonnull %264) #18
  %266 = getelementptr inbounds %struct.ParticleSystemModifierData, ptr %265, i64 0, i32 6
  %267 = load i16, ptr %266, align 4, !tbaa !458
  %268 = and i16 %267, -3
  store i16 %268, ptr %266, align 4, !tbaa !458
  %269 = load ptr, ptr %264, align 8, !tbaa !47
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %263, !llvm.loop !459

271:                                              ; preds = %263, %255, %189, %193, %251, %248, %76
  %272 = load i8, ptr %6, align 1, !tbaa !438
  %273 = and i8 %272, -8
  store i8 %273, ptr %6, align 1, !tbaa !438
  br label %274

274:                                              ; preds = %271, %5
  %275 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 11
  %276 = load ptr, ptr %275, align 8, !tbaa !124
  %277 = icmp eq ptr %276, null
  br i1 %277, label %286, label %278

278:                                              ; preds = %274
  %279 = getelementptr inbounds %struct.Object, ptr %276, i64 0, i32 13
  store ptr %2, ptr %279, align 8, !tbaa !125
  %280 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 12
  %281 = load ptr, ptr %280, align 8, !tbaa !126
  %282 = icmp eq ptr %281, null
  %283 = icmp ne i8 %4, 0
  %284 = and i1 %283, %282
  br i1 %284, label %285, label %286

285:                                              ; preds = %278
  tail call void @BKE_object_handle_update(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %276) #19
  br label %286

286:                                              ; preds = %278, %285, %274
  ret void
}

; Function Attrs: optsize
declare void @BKE_pose_channels_hash_make(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BKE_key_from_object(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @makeDerivedMesh(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @BKE_pose_copy_result(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_pose_where_is(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_displist_make_mball(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_displist_make_curveTypes(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_lattice_modifiers_calc(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @BKE_image_is_animated(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_image_user_check_frame_calc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: optsize
declare void @material_drivers_update(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @lamp_drivers_update(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @psys_changed_type(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @psys_check_enabled(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @particle_system_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @mesh_create_derived_render(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @psys_get_modifier(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_handle_update(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  tail call void @BKE_object_handle_update_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, i8 noundef zeroext 1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_sculpt_modifiers_changed(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !331
  %6 = icmp eq ptr %5, null
  br i1 %6, label %36, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 28
  %9 = load ptr, ptr %8, align 8, !tbaa !460
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 15
  %13 = load ptr, ptr %12, align 8, !tbaa !462
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  tail call void @BKE_pbvh_free(ptr noundef nonnull %13) #18
  store ptr null, ptr %12, align 8, !tbaa !462
  %16 = load ptr, ptr %4, align 8, !tbaa !331
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi ptr [ %16, %15 ], [ %5, %11 ]
  tail call void @BKE_free_sculptsession_deformMats(ptr noundef %18) #18
  br label %36

19:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  %20 = getelementptr inbounds %struct.SculptSession, ptr %5, i64 0, i32 15
  %21 = load ptr, ptr %20, align 8, !tbaa !462
  call void @BKE_pbvh_search_gather(ptr noundef %21, ptr noundef null, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull %3) #18
  %22 = load i32, ptr %3, align 4, !tbaa !292
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19, %24
  %25 = phi i64 [ %29, %24 ], [ 0, %19 ]
  %26 = load ptr, ptr %2, align 8, !tbaa !47
  %27 = getelementptr inbounds ptr, ptr %26, i64 %25
  %28 = load ptr, ptr %27, align 8, !tbaa !47
  call void @BKE_pbvh_node_mark_update(ptr noundef %28) #18
  %29 = add nuw nsw i64 %25, 1
  %30 = load i32, ptr %3, align 4, !tbaa !292
  %31 = sext i32 %30 to i64
  %32 = icmp slt i64 %29, %31
  br i1 %32, label %24, label %33, !llvm.loop !463

33:                                               ; preds = %24, %19
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %35 = load ptr, ptr %2, align 8, !tbaa !47
  call void %34(ptr noundef %35) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  br label %36

36:                                               ; preds = %17, %33, %1
  ret void
}

; Function Attrs: optsize
declare void @BKE_pbvh_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_free_sculptsession_deformMats(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_pbvh_search_gather(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_pbvh_node_mark_update(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @BKE_object_obdata_texspace_get(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3, ptr noundef writeonly %4) local_unnamed_addr #15 {
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = icmp eq ptr %7, null
  br i1 %8, label %62, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ID, ptr %7, i64 0, i32 4
  %11 = load i16, ptr %10, align 8, !tbaa !392
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @BKE_boundbox_ray_hit_check(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = alloca float, align 4
  %6 = icmp ne ptr %3, null
  br label %7

7:                                                ; preds = %4, %34
  %8 = phi i64 [ 0, %4 ], [ %36, %34 ]
  %9 = phi i8 [ 0, %4 ], [ %35, %34 ]
  %10 = icmp eq i8 %9, 0
  %11 = or i1 %6, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  %13 = getelementptr inbounds [12 x [3 x i32]], ptr @__const.BKE_boundbox_ray_hit_check.triangle_indexes, i64 0, i64 %8
  %14 = load i32, ptr %13, align 4, !tbaa !292
  %15 = getelementptr inbounds [12 x [3 x i32]], ptr @__const.BKE_boundbox_ray_hit_check.triangle_indexes, i64 0, i64 %8, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !292
  %17 = getelementptr inbounds [12 x [3 x i32]], ptr @__const.BKE_boundbox_ray_hit_check.triangle_indexes, i64 0, i64 %8, i64 2
  %18 = load i32, ptr %17, align 4, !tbaa !292
  %19 = sext i32 %14 to i64
  %20 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 %19
  %21 = sext i32 %16 to i64
  %22 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 %21
  %23 = sext i32 %18 to i64
  %24 = getelementptr inbounds [8 x [3 x float]], ptr %0, i64 0, i64 %23
  %25 = call zeroext i8 @isect_ray_tri_v3(ptr noundef %1, ptr noundef %2, ptr noundef %20, ptr noundef %22, ptr noundef %24, ptr noundef nonnull %5, ptr noundef null) #18
  %26 = icmp ne i8 %25, 0
  %27 = and i1 %6, %26
  %28 = select i1 %26, i8 1, i8 %9
  br i1 %27, label %29, label %34

29:                                               ; preds = %12
  %30 = load float, ptr %3, align 4, !tbaa !34
  %31 = load float, ptr %5, align 4, !tbaa !34
  %32 = fcmp ule float %30, %31
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store float %31, ptr %3, align 4, !tbaa !34
  br label %34

34:                                               ; preds = %12, %29, %33
  %35 = phi i8 [ 1, %33 ], [ %9, %29 ], [ %28, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  %36 = add nuw nsw i64 %8, 1
  %37 = icmp eq i64 %36, 12
  br i1 %37, label %38, label %7, !llvm.loop !464

38:                                               ; preds = %34, %7
  %39 = phi i8 [ %35, %34 ], [ %9, %7 ]
  ret i8 %39
}

; Function Attrs: optsize
declare zeroext i8 @isect_ray_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_object_insert_ptcache(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 126
  tail call void @BLI_sortlist(ptr noundef nonnull %2, ptr noundef nonnull @pc_cmp) #18
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1, %13
  %6 = phi ptr [ %15, %13 ], [ %3, %1 ]
  %7 = phi i32 [ %14, %13 ], [ 0, %1 ]
  %8 = getelementptr inbounds %struct.LinkData, ptr %6, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !465
  %10 = ptrtoint ptr %9 to i64
  %11 = trunc i64 %10 to i32
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %5
  %14 = add nuw nsw i32 %7, 1
  %15 = load ptr, ptr %6, align 8, !tbaa !47
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %5, !llvm.loop !467

17:                                               ; preds = %13, %5, %1
  %18 = phi i32 [ 0, %1 ], [ %7, %5 ], [ %14, %13 ]
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %20 = tail call ptr %19(i64 noundef 24, ptr noundef nonnull @.str.18) #18
  %21 = zext nneg i32 %18 to i64
  %22 = inttoptr i64 %21 to ptr
  %23 = getelementptr inbounds %struct.LinkData, ptr %20, i64 0, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !465
  tail call void @BLI_addtail(ptr noundef nonnull %2, ptr noundef %20) #18
  ret i32 %18
}

; Function Attrs: optsize
declare void @BLI_sortlist(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @pc_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 !PGOFuncName !468 {
  %3 = getelementptr inbounds %struct.LinkData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !465
  %5 = ptrtoint ptr %4 to i64
  %6 = trunc i64 %5 to i32
  %7 = getelementptr inbounds %struct.LinkData, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !465
  %9 = ptrtoint ptr %8 to i64
  %10 = trunc i64 %9 to i32
  %11 = icmp sgt i32 %6, %10
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_delete_ptcache(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 126
  %4 = tail call fastcc i32 @pc_findindex(ptr noundef nonnull %3, i32 noundef %1) #19
  %5 = tail call ptr @BLI_findlink(ptr noundef nonnull %3, i32 noundef %4) #18
  tail call void @BLI_freelinkN(ptr noundef nonnull %3, ptr noundef %5) #18
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @pc_findindex(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #7 !PGOFuncName !469 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !47
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %4, %15
  %8 = phi ptr [ %17, %15 ], [ %5, %4 ]
  %9 = phi i32 [ %16, %15 ], [ 0, %4 ]
  %10 = getelementptr inbounds %struct.LinkData, ptr %8, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !465
  %12 = ptrtoint ptr %11 to i64
  %13 = trunc i64 %12 to i32
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %19, label %15

15:                                               ; preds = %7
  %16 = add nuw nsw i32 %9, 1
  %17 = load ptr, ptr %8, align 8, !tbaa !47
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %7, !llvm.loop !470

19:                                               ; preds = %7, %15, %4, %2
  %20 = phi i32 [ -1, %2 ], [ -1, %4 ], [ %9, %7 ], [ -1, %15 ]
  ret i32 %20
}

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_object_insert_shape_key(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !68
  switch i16 %6, label %13 [
    i16 1, label %7
    i16 2, label %9
    i16 3, label %9
    i16 22, label %11
  ]

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @insert_meshkey(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i8 noundef zeroext %3) #19
  br label %13

9:                                                ; preds = %4, %4
  %10 = tail call fastcc ptr @insert_curvekey(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i8 noundef zeroext %3) #19
  br label %13

11:                                               ; preds = %4
  %12 = tail call fastcc ptr @insert_lattkey(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i8 noundef zeroext %3) #19
  br label %13

13:                                               ; preds = %4, %11, %9, %7
  %14 = phi ptr [ %12, %11 ], [ %10, %9 ], [ %8, %7 ], [ null, %4 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @insert_meshkey(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #4 !PGOFuncName !471 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !472
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = tail call ptr @BKE_key_add(ptr noundef nonnull %7) #18
  store ptr %12, ptr %8, align 8, !tbaa !472
  %13 = getelementptr inbounds %struct.Key, ptr %12, i64 0, i32 9
  store i16 1, ptr %13, align 8, !tbaa !473
  br label %16

14:                                               ; preds = %4
  %15 = icmp eq i8 %3, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %9, %14 ]
  %18 = tail call ptr @BKE_keyblock_add_ctime(ptr noundef nonnull %17, ptr noundef %2, i8 noundef zeroext 0) #18
  tail call void @BKE_key_convert_from_mesh(ptr noundef nonnull %7, ptr noundef %18) #18
  br label %25

19:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  %20 = call ptr @BKE_key_evaluate_object(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %5) #18
  %21 = call ptr @BKE_keyblock_add_ctime(ptr noundef nonnull %9, ptr noundef %2, i8 noundef zeroext 0) #18
  %22 = getelementptr inbounds %struct.KeyBlock, ptr %21, i64 0, i32 10
  store ptr %20, ptr %22, align 8, !tbaa !474
  %23 = load i32, ptr %5, align 4, !tbaa !292
  %24 = getelementptr inbounds %struct.KeyBlock, ptr %21, i64 0, i32 8
  store i32 %23, ptr %24, align 8, !tbaa !476
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  br label %25

25:                                               ; preds = %19, %16
  %26 = phi ptr [ %18, %16 ], [ %21, %19 ]
  ret ptr %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @insert_curvekey(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #4 !PGOFuncName !477 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = getelementptr inbounds %struct.Curve, ptr %7, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !478
  %10 = tail call ptr @BKE_curve_nurbs_get(ptr noundef %7) #18
  %11 = icmp eq ptr %9, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %4
  %13 = icmp eq i8 %3, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %12
  %15 = tail call ptr @BKE_keyblock_add_ctime(ptr noundef nonnull %9, ptr noundef %2, i8 noundef zeroext 0) #18
  %16 = getelementptr inbounds %struct.Key, ptr %9, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !442
  %18 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %19 = getelementptr inbounds %struct.KeyBlock, ptr %17, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !474
  %21 = tail call ptr %18(ptr noundef %20) #18
  %22 = getelementptr inbounds %struct.KeyBlock, ptr %15, i64 0, i32 10
  store ptr %21, ptr %22, align 8, !tbaa !474
  %23 = getelementptr inbounds %struct.KeyBlock, ptr %17, i64 0, i32 8
  %24 = load i32, ptr %23, align 8, !tbaa !476
  %25 = getelementptr inbounds %struct.KeyBlock, ptr %15, i64 0, i32 8
  store i32 %24, ptr %25, align 8, !tbaa !476
  br label %36

26:                                               ; preds = %4
  %27 = tail call ptr @BKE_key_add(ptr noundef nonnull %7) #18
  store ptr %27, ptr %8, align 8, !tbaa !478
  %28 = getelementptr inbounds %struct.Key, ptr %27, i64 0, i32 9
  store i16 1, ptr %28, align 8, !tbaa !473
  %29 = tail call ptr @BKE_keyblock_add_ctime(ptr noundef %27, ptr noundef %2, i8 noundef zeroext 0) #18
  tail call void @BKE_key_convert_from_curve(ptr noundef nonnull %7, ptr noundef %29, ptr noundef %10) #18
  br label %36

30:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  %31 = call ptr @BKE_key_evaluate_object(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %5) #18
  %32 = call ptr @BKE_keyblock_add_ctime(ptr noundef nonnull %9, ptr noundef %2, i8 noundef zeroext 0) #18
  %33 = load i32, ptr %5, align 4, !tbaa !292
  %34 = getelementptr inbounds %struct.KeyBlock, ptr %32, i64 0, i32 8
  store i32 %33, ptr %34, align 8, !tbaa !476
  %35 = getelementptr inbounds %struct.KeyBlock, ptr %32, i64 0, i32 10
  store ptr %31, ptr %35, align 8, !tbaa !474
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  br label %36

36:                                               ; preds = %14, %26, %30
  %37 = phi ptr [ %29, %26 ], [ %15, %14 ], [ %32, %30 ]
  ret ptr %37
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @insert_lattkey(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #4 !PGOFuncName !479 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = getelementptr inbounds %struct.Lattice, ptr %7, i64 0, i32 23
  %9 = load ptr, ptr %8, align 8, !tbaa !480
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %4
  %12 = icmp eq i8 %3, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %11
  %14 = tail call ptr @BKE_keyblock_add_ctime(ptr noundef nonnull %9, ptr noundef %2, i8 noundef zeroext 0) #18
  %15 = getelementptr inbounds %struct.Key, ptr %9, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !442
  %17 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !47
  %18 = getelementptr inbounds %struct.KeyBlock, ptr %16, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !474
  %20 = tail call ptr %17(ptr noundef %19) #18
  %21 = getelementptr inbounds %struct.KeyBlock, ptr %14, i64 0, i32 10
  store ptr %20, ptr %21, align 8, !tbaa !474
  %22 = getelementptr inbounds %struct.KeyBlock, ptr %16, i64 0, i32 8
  %23 = load i32, ptr %22, align 8, !tbaa !476
  %24 = getelementptr inbounds %struct.KeyBlock, ptr %14, i64 0, i32 8
  store i32 %23, ptr %24, align 8, !tbaa !476
  br label %35

25:                                               ; preds = %4
  %26 = tail call ptr @BKE_key_add(ptr noundef nonnull %7) #18
  store ptr %26, ptr %8, align 8, !tbaa !480
  %27 = getelementptr inbounds %struct.Key, ptr %26, i64 0, i32 9
  store i16 1, ptr %27, align 8, !tbaa !473
  %28 = tail call ptr @BKE_keyblock_add_ctime(ptr noundef %26, ptr noundef %2, i8 noundef zeroext 0) #18
  tail call void @BKE_key_convert_from_lattice(ptr noundef nonnull %7, ptr noundef %28) #18
  br label %35

29:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  %30 = call ptr @BKE_key_evaluate_object(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %5) #18
  %31 = call ptr @BKE_keyblock_add_ctime(ptr noundef nonnull %9, ptr noundef %2, i8 noundef zeroext 0) #18
  %32 = load i32, ptr %5, align 4, !tbaa !292
  %33 = getelementptr inbounds %struct.KeyBlock, ptr %31, i64 0, i32 8
  store i32 %32, ptr %33, align 8, !tbaa !476
  %34 = getelementptr inbounds %struct.KeyBlock, ptr %31, i64 0, i32 10
  store ptr %30, ptr %34, align 8, !tbaa !474
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  br label %35

35:                                               ; preds = %13, %25, %29
  %36 = phi ptr [ %28, %25 ], [ %14, %13 ], [ %31, %29 ]
  ret ptr %36
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_object_is_child_recursive(ptr noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  br label %3

3:                                                ; preds = %8, %2
  %4 = phi ptr [ %1, %2 ], [ %6, %8 ]
  %5 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !127
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = icmp eq ptr %6, %0
  br i1 %9, label %10, label %3, !llvm.loop !481

10:                                               ; preds = %3, %8
  %11 = phi i8 [ 1, %8 ], [ 0, %3 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_object_is_modified(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca %struct.VirtualModifierData, align 8
  %4 = tail call ptr @BKE_key_from_object(ptr noundef %1) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %36

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %3) #20
  %7 = call ptr @modifiers_getVirtualModifierList(ptr noundef %1, ptr noundef nonnull %3) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %34, label %9

9:                                                ; preds = %6, %28
  %10 = phi ptr [ %30, %28 ], [ %7, %6 ]
  %11 = phi i32 [ %29, %28 ], [ 0, %6 ]
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %10, i32 noundef 2) #18
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
  %24 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %10, i32 noundef 1) #18
  %25 = icmp ne i8 %24, 0
  %26 = zext i1 %25 to i32
  %27 = or disjoint i32 %20, %26
  br label %28

28:                                               ; preds = %23, %19
  %29 = phi i32 [ %20, %19 ], [ %27, %23 ]
  %30 = load ptr, ptr %10, align 8, !tbaa !482
  %31 = icmp ne ptr %30, null
  %32 = icmp ne i32 %29, 3
  %33 = and i1 %32, %31
  br i1 %33, label %9, label %34, !llvm.loop !483

34:                                               ; preds = %28, %6
  %35 = phi i32 [ 0, %6 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %3) #20
  br label %36

36:                                               ; preds = %2, %34
  %37 = phi i32 [ %35, %34 ], [ 3, %2 ]
  ret i32 %37
}

; Function Attrs: optsize
declare ptr @modifiers_getVirtualModifierList(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @modifier_isEnabled(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BKE_object_is_deform_modified(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca %struct.VirtualModifierData, align 8
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %3) #20
  %4 = tail call ptr @BKE_key_from_object(ptr noundef %1) #18
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, i32 0, i32 3
  %7 = call ptr @modifiers_getVirtualModifierList(ptr noundef %1, ptr noundef nonnull %3) #18
  %8 = icmp ne ptr %7, null
  %9 = select i1 %8, i1 %5, i1 false
  br i1 %9, label %10, label %42

10:                                               ; preds = %2, %36
  %11 = phi ptr [ %38, %36 ], [ %7, %2 ]
  %12 = phi i32 [ %37, %36 ], [ %6, %2 ]
  %13 = getelementptr inbounds %struct.ModifierData, ptr %11, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !69
  %15 = call ptr @modifierType_getInfo(i32 noundef %14) #18
  %16 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %15, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !484
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %36

19:                                               ; preds = %10
  %20 = and i32 %12, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %11, i32 noundef 2) #18
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
  %32 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %11, i32 noundef 1) #18
  %33 = icmp ne i8 %32, 0
  %34 = zext i1 %33 to i32
  %35 = or disjoint i32 %28, %34
  br label %36

36:                                               ; preds = %31, %27, %10
  %37 = phi i32 [ %28, %27 ], [ %12, %10 ], [ %35, %31 ]
  %38 = load ptr, ptr %11, align 8, !tbaa !482
  %39 = icmp ne ptr %38, null
  %40 = icmp ne i32 %37, 3
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %10, label %42, !llvm.loop !485

42:                                               ; preds = %36, %2
  %43 = phi i32 [ %6, %2 ], [ %37, %36 ]
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %3) #20
  ret i32 %43
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_object_is_animated(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca %struct.VirtualModifierData, align 8
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %3) #20
  %4 = call ptr @modifiers_getVirtualModifierList(ptr noundef %1, ptr noundef nonnull %3) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2, %16
  %7 = phi ptr [ %17, %16 ], [ %4, %2 ]
  %8 = call zeroext i8 @modifier_dependsOnTime(ptr noundef nonnull %7) #18
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 1) #18
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 2) #18
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %6, %13
  %17 = load ptr, ptr %7, align 8, !tbaa !482
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %6, !llvm.loop !486

19:                                               ; preds = %13, %10, %16, %2
  %20 = phi i8 [ 0, %2 ], [ 0, %16 ], [ 1, %10 ], [ 1, %13 ]
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %3) #20
  ret i8 %20
}

; Function Attrs: optsize
declare zeroext i8 @modifier_dependsOnTime(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_relink(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !347
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %55

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 106
  tail call void @BKE_constraints_relink(ptr noundef nonnull %6) #18
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !64
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %8, align 8, !tbaa !47
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10, %13
  %14 = phi ptr [ %16, %13 ], [ %11, %10 ]
  %15 = getelementptr inbounds %struct.bPoseChannel, ptr %14, i64 0, i32 3
  tail call void @BKE_constraints_relink(ptr noundef nonnull %15) #18
  %16 = load ptr, ptr %14, align 8, !tbaa !47
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %13, !llvm.loop !487

18:                                               ; preds = %13, %10, %5
  tail call void @modifiers_foreachIDLink(ptr noundef %0, ptr noundef nonnull @copy_object__forwardModifierLinks, ptr noundef null) #18
  %19 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !111
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @BKE_relink_animdata(ptr noundef nonnull %20) #18
  br label %23

23:                                               ; preds = %22, %18
  %24 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 129
  %25 = load ptr, ptr %24, align 8, !tbaa !338
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @BKE_rigidbody_relink_constraint(ptr noundef nonnull %25) #18
  br label %28

28:                                               ; preds = %27, %23
  %29 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !127
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ID, ptr %30, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !488
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  store ptr %34, ptr %29, align 8, !tbaa !127
  br label %37

37:                                               ; preds = %36, %32, %28
  %38 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 11
  %39 = load ptr, ptr %38, align 8, !tbaa !124
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.ID, ptr %39, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !488
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store ptr %43, ptr %38, align 8, !tbaa !124
  br label %46

46:                                               ; preds = %45, %41, %37
  %47 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 12
  %48 = load ptr, ptr %47, align 8, !tbaa !126
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.ID, ptr %48, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !488
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  store ptr %52, ptr %47, align 8, !tbaa !126
  br label %55

55:                                               ; preds = %1, %54, %50, %46
  ret void
}

; Function Attrs: optsize
declare void @BKE_constraints_relink(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @modifiers_foreachIDLink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @copy_object__forwardModifierLinks(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef %2) #15 !PGOFuncName !489 {
  %4 = load ptr, ptr %2, align 8, !tbaa !47
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !490
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  store ptr %8, ptr %2, align 8, !tbaa !47
  br label %11

11:                                               ; preds = %10, %6, %3
  ret void
}

; Function Attrs: optsize
declare void @BKE_relink_animdata(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_rigidbody_relink_constraint(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_object_movieclip_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #7 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 41
  %7 = load ptr, ptr %6, align 8, !tbaa !491
  br label %8

8:                                                ; preds = %3, %5
  %9 = phi ptr [ %7, %5 ], [ null, %3 ]
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 106
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = icmp eq ptr %11, null
  br i1 %12, label %43, label %13

13:                                               ; preds = %8, %27
  %14 = phi ptr [ %29, %27 ], [ %11, %8 ]
  %15 = phi ptr [ %28, %27 ], [ null, %8 ]
  %16 = getelementptr inbounds %struct.bConstraint, ptr %14, i64 0, i32 3
  %17 = load i16, ptr %16, align 8, !tbaa !492
  %18 = icmp eq i16 %17, 27
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = icmp eq ptr %15, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.bConstraint, ptr %15, i64 0, i32 4
  %23 = load i16, ptr %22, align 2, !tbaa !494
  %24 = and i16 %23, 512
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %19
  br label %27

27:                                               ; preds = %21, %26, %13
  %28 = phi ptr [ %14, %26 ], [ %15, %21 ], [ %15, %13 ]
  %29 = load ptr, ptr %14, align 8, !tbaa !47
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %13, !llvm.loop !495

31:                                               ; preds = %27
  %32 = icmp eq ptr %28, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.bConstraint, ptr %28, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !496
  %36 = getelementptr inbounds %struct.bCameraSolverConstraint, ptr %35, i64 0, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !497
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  %40 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 41
  %41 = select i1 %39, ptr %35, ptr %40
  %42 = load ptr, ptr %41, align 8, !tbaa !47
  br label %43

43:                                               ; preds = %8, %33, %31
  %44 = phi ptr [ %42, %33 ], [ %9, %31 ], [ %9, %8 ]
  ret ptr %44
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_object_relational_superset(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  store ptr null, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %151, label %23

8:                                                ; preds = %23
  br i1 %7, label %151, label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 12
  %11 = and i32 %2, 3
  %12 = icmp eq i32 %11, 0
  %13 = and i32 %2, 2
  %14 = icmp eq i32 %13, 0
  %15 = and i32 %2, 12
  %16 = icmp eq i32 %15, 0
  %17 = and i32 %2, 8
  %18 = icmp eq i32 %17, 0
  %19 = and i32 %2, 4
  %20 = icmp eq i32 %19, 0
  %21 = and i32 %2, 16
  %22 = icmp eq i32 %21, 0
  br label %32

23:                                               ; preds = %3, %23
  %24 = phi ptr [ %30, %23 ], [ %6, %3 ]
  %25 = getelementptr inbounds %struct.Base, ptr %24, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !48
  %27 = getelementptr inbounds %struct.ID, ptr %26, i64 0, i32 5
  %28 = load i16, ptr %27, align 2, !tbaa !499
  %29 = and i16 %28, -1025
  store i16 %29, ptr %27, align 2, !tbaa !499
  %30 = load ptr, ptr %24, align 8, !tbaa !47
  %31 = icmp eq ptr %30, null
  br i1 %31, label %8, label %23, !llvm.loop !500

32:                                               ; preds = %9, %146
  %33 = phi ptr [ %6, %9 ], [ %147, %146 ]
  switch i32 %1, label %146 [
    i32 2, label %34
    i32 0, label %37
    i32 1, label %59
  ]

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.Base, ptr %33, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !48
  br label %144

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.Base, ptr %33, i64 0, i32 4
  %39 = load i32, ptr %38, align 8, !tbaa !435
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %146, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.Base, ptr %33, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !51
  %45 = load i32, ptr %10, align 8, !tbaa !301
  %46 = and i32 %45, %44
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %146, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.Base, ptr %33, i64 0, i32 7
  %50 = load ptr, ptr %49, align 8, !tbaa !48
  %51 = getelementptr inbounds %struct.ID, ptr %50, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !347
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %146

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.Object, ptr %50, i64 0, i32 102
  %56 = load i8, ptr %55, align 8, !tbaa !434
  %57 = and i8 %56, 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %76, label %146

59:                                               ; preds = %32
  %60 = getelementptr inbounds %struct.Base, ptr %33, i64 0, i32 2
  %61 = load i32, ptr %60, align 8, !tbaa !51
  %62 = load i32, ptr %10, align 8, !tbaa !301
  %63 = and i32 %62, %61
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %146, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.Base, ptr %33, i64 0, i32 7
  %67 = load ptr, ptr %66, align 8, !tbaa !48
  %68 = getelementptr inbounds %struct.ID, ptr %67, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !347
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %146

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.Object, ptr %67, i64 0, i32 102
  %73 = load i8, ptr %72, align 8, !tbaa !434
  %74 = and i8 %73, 1
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %146

76:                                               ; preds = %71, %54
  %77 = phi ptr [ %67, %71 ], [ %50, %54 ]
  %78 = call fastcc zeroext i8 @obrel_list_test(ptr noundef nonnull %77) #19, !range !70
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  call fastcc void @obrel_list_add(ptr noundef nonnull %4, ptr noundef nonnull %77) #19
  br label %81

81:                                               ; preds = %80, %76
  br i1 %12, label %99, label %82

82:                                               ; preds = %81
  %83 = getelementptr inbounds %struct.Object, ptr %77, i64 0, i32 9
  %84 = load ptr, ptr %83, align 8, !tbaa !127
  %85 = call fastcc zeroext i8 @obrel_list_test(ptr noundef %84) #19, !range !70
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %99, label %87

87:                                               ; preds = %82
  call fastcc void @obrel_list_add(ptr noundef nonnull %4, ptr noundef %84) #19
  br i1 %14, label %99, label %88

88:                                               ; preds = %87
  %89 = getelementptr inbounds %struct.Object, ptr %84, i64 0, i32 9
  %90 = load ptr, ptr %89, align 8, !tbaa !127
  %91 = call fastcc zeroext i8 @obrel_list_test(ptr noundef %90) #19, !range !70
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %88, %93
  %94 = phi ptr [ %96, %93 ], [ %90, %88 ]
  call fastcc void @obrel_list_add(ptr noundef nonnull %4, ptr noundef %94) #19
  %95 = getelementptr inbounds %struct.Object, ptr %94, i64 0, i32 9
  %96 = load ptr, ptr %95, align 8, !tbaa !127
  %97 = call fastcc zeroext i8 @obrel_list_test(ptr noundef %96) #19, !range !70
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %93, !llvm.loop !501

99:                                               ; preds = %93, %88, %82, %87, %81
  br i1 %16, label %139, label %100

100:                                              ; preds = %99
  %101 = load ptr, ptr %5, align 8, !tbaa !47
  %102 = icmp eq ptr %101, null
  br i1 %102, label %139, label %103

103:                                              ; preds = %100, %136
  %104 = phi ptr [ %137, %136 ], [ %101, %100 ]
  %105 = getelementptr inbounds %struct.Base, ptr %104, i64 0, i32 2
  %106 = load i32, ptr %105, align 8, !tbaa !51
  %107 = load i32, ptr %10, align 8, !tbaa !301
  %108 = and i32 %107, %106
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %136, label %110

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.Base, ptr %104, i64 0, i32 7
  %112 = load ptr, ptr %111, align 8, !tbaa !48
  %113 = getelementptr inbounds %struct.ID, ptr %112, i64 0, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !347
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %136

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.Object, ptr %112, i64 0, i32 102
  %118 = load i8, ptr %117, align 8, !tbaa !434
  %119 = and i8 %118, 1
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %136

121:                                              ; preds = %116
  %122 = call fastcc zeroext i8 @obrel_list_test(ptr noundef nonnull %112) #19, !range !70
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %136, label %124

124:                                              ; preds = %121
  br i1 %18, label %128, label %125

125:                                              ; preds = %124
  %126 = call zeroext i8 @BKE_object_is_child_recursive(ptr noundef %77, ptr noundef nonnull %112) #19, !range !70
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %125, %124
  br i1 %20, label %136, label %129

129:                                              ; preds = %128
  %130 = getelementptr inbounds %struct.Object, ptr %112, i64 0, i32 9
  %131 = load ptr, ptr %130, align 8, !tbaa !127
  %132 = icmp ne ptr %131, null
  %133 = icmp eq ptr %131, %77
  %134 = and i1 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %129, %125
  call fastcc void @obrel_list_add(ptr noundef nonnull %4, ptr noundef nonnull %112) #19
  br label %136

136:                                              ; preds = %121, %135, %129, %128, %103, %110, %116
  %137 = load ptr, ptr %104, align 8, !tbaa !47
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %103, !llvm.loop !502

139:                                              ; preds = %136, %100, %99
  br i1 %22, label %146, label %140

140:                                              ; preds = %139
  %141 = call fastcc ptr @obrel_armature_find(ptr noundef %77) #19
  %142 = call fastcc zeroext i8 @obrel_list_test(ptr noundef %141) #19, !range !70
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %140, %34
  %145 = phi ptr [ %36, %34 ], [ %141, %140 ]
  call fastcc void @obrel_list_add(ptr noundef nonnull %4, ptr noundef %145) #19
  br label %146

146:                                              ; preds = %144, %37, %42, %48, %54, %139, %140, %32, %71, %65, %59
  %147 = load ptr, ptr %33, align 8, !tbaa !47
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %32, !llvm.loop !503

149:                                              ; preds = %146
  %150 = load ptr, ptr %4, align 8, !tbaa !47
  br label %151

151:                                              ; preds = %3, %149, %8
  %152 = phi ptr [ %150, %149 ], [ null, %8 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  ret ptr %152
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @obrel_list_add(ptr noundef %0, ptr noundef %1) unnamed_addr #4 !PGOFuncName !504 {
  tail call void @BLI_linklist_prepend(ptr noundef %0, ptr noundef %1) #18
  %3 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 5
  %4 = load i16, ptr %3, align 2, !tbaa !499
  %5 = or i16 %4, 1024
  store i16 %5, ptr %3, align 2, !tbaa !499
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @obrel_list_test(ptr noundef readonly %0) unnamed_addr #10 !PGOFuncName !505 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 5
  %5 = load i16, ptr %4, align 2, !tbaa !499
  %6 = and i16 %5, 1024
  %7 = icmp eq i16 %6, 0
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %3, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %3 ]
  ret i8 %10
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @obrel_armature_find(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !506 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !127
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 4
  %7 = load i16, ptr %6, align 2, !tbaa !384
  %8 = icmp eq i16 %7, 4
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %11 = load i16, ptr %10, align 8, !tbaa !68
  %12 = icmp eq i16 %11, 25
  br i1 %12, label %30, label %13

13:                                               ; preds = %9, %5, %1
  %14 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %13, %26
  %18 = phi ptr [ %28, %26 ], [ %15, %13 ]
  %19 = phi ptr [ %27, %26 ], [ null, %13 ]
  %20 = getelementptr inbounds %struct.ModifierData, ptr %18, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !69
  %22 = icmp eq i32 %21, 8
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.ArmatureModifierData, ptr %18, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !507
  br label %26

26:                                               ; preds = %17, %23
  %27 = phi ptr [ %25, %23 ], [ %19, %17 ]
  %28 = load ptr, ptr %18, align 8, !tbaa !47
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %17, !llvm.loop !509

30:                                               ; preds = %26, %13, %9
  %31 = phi ptr [ %3, %9 ], [ null, %13 ], [ %27, %26 ]
  ret ptr %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_object_groups(ptr noundef %0) local_unnamed_addr #4 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  store ptr null, ptr %2, align 8, !tbaa !47
  %3 = tail call ptr @BKE_group_object_find(ptr noundef null, ptr noundef %0) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  call void @BLI_linklist_prepend(ptr noundef nonnull %2, ptr noundef nonnull %6) #18
  %7 = call ptr @BKE_group_object_find(ptr noundef nonnull %6, ptr noundef %0) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !510

9:                                                ; preds = %5
  %10 = load ptr, ptr %2, align 8, !tbaa !47
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi ptr [ %10, %9 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret ptr %12
}

; Function Attrs: optsize
declare ptr @BKE_group_object_find(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_linklist_prepend(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_object_groups_clear(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = icmp ne ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call ptr @BKE_scene_base_find(ptr noundef nonnull %0, ptr noundef %2) #18
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi ptr [ %8, %7 ], [ %1, %3 ]
  %11 = getelementptr inbounds %struct.Base, ptr %10, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  %13 = tail call ptr @BKE_group_object_find(ptr noundef null, ptr noundef %12) #18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %9, %15
  %16 = phi ptr [ %19, %15 ], [ %13, %9 ]
  %17 = tail call zeroext i8 @BKE_group_object_unlink(ptr noundef nonnull %16, ptr noundef %2, ptr noundef %0, ptr noundef nonnull %10) #18
  %18 = load ptr, ptr %11, align 8, !tbaa !48
  %19 = tail call ptr @BKE_group_object_find(ptr noundef nonnull %16, ptr noundef %18) #18
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %15, !llvm.loop !511

21:                                               ; preds = %15, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_object_as_kdtree(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !68
  switch i16 %9, label %144 [
    i16 1, label %10
    i16 2, label %66
    i16 3, label %66
    i16 22, label %115
  ]

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 119
  %14 = load ptr, ptr %13, align 8, !tbaa !99
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 120
  %18 = load ptr, ptr %17, align 8, !tbaa !95
  %19 = icmp eq ptr %18, null
  br i1 %19, label %50, label %20

20:                                               ; preds = %10, %16
  %21 = phi ptr [ %18, %16 ], [ %14, %10 ]
  %22 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %21, i32 noundef 7) #18
  %23 = icmp eq ptr %22, null
  br i1 %23, label %50, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %21, i64 0, i32 31
  %26 = load ptr, ptr %25, align 8, !tbaa !424
  %27 = tail call ptr %26(ptr noundef nonnull %21) #18
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %21, i64 0, i32 23
  %29 = load ptr, ptr %28, align 8, !tbaa !425
  %30 = tail call i32 %29(ptr noundef nonnull %21) #18
  %31 = tail call ptr @BLI_kdtree_new(i32 noundef %30) #18
  %32 = icmp eq i32 %30, 0
  br i1 %32, label %141, label %33

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  %35 = zext i32 %30 to i64
  br label %36

36:                                               ; preds = %33, %46
  %37 = phi i64 [ 0, %33 ], [ %48, %46 ]
  %38 = phi i32 [ 0, %33 ], [ %47, %46 ]
  %39 = getelementptr inbounds i32, ptr %22, i64 %37
  %40 = load i32, ptr %39, align 4, !tbaa !292
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #20
  %43 = getelementptr inbounds %struct.MVert, ptr %27, i64 %37
  call void @mul_v3_m4v3(ptr noundef nonnull %3, ptr noundef nonnull %34, ptr noundef %43) #18
  %44 = load i32, ptr %39, align 4, !tbaa !292
  call void @BLI_kdtree_insert(ptr noundef %31, i32 noundef %44, ptr noundef nonnull %3) #18
  %45 = add i32 %38, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #20
  br label %46

46:                                               ; preds = %36, %42
  %47 = phi i32 [ %45, %42 ], [ %38, %36 ]
  %48 = add nuw nsw i64 %37, 1
  %49 = icmp eq i64 %48, %35
  br i1 %49, label %141, label %36, !llvm.loop !512

50:                                               ; preds = %20, %16
  %51 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 15
  %52 = load ptr, ptr %51, align 8, !tbaa !513
  %53 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 26
  %54 = load i32, ptr %53, align 8, !tbaa !514
  %55 = tail call ptr @BLI_kdtree_new(i32 noundef %54) #18
  %56 = icmp eq i32 %54, 0
  br i1 %56, label %141, label %57

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  %59 = zext i32 %54 to i64
  br label %60

60:                                               ; preds = %57, %60
  %61 = phi i64 [ 0, %57 ], [ %64, %60 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  %62 = getelementptr inbounds %struct.MVert, ptr %52, i64 %61
  call void @mul_v3_m4v3(ptr noundef nonnull %4, ptr noundef nonnull %58, ptr noundef %62) #18
  %63 = trunc i64 %61 to i32
  call void @BLI_kdtree_insert(ptr noundef %55, i32 noundef %63, ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  %64 = add nuw nsw i64 %61, 1
  %65 = icmp eq i64 %64, %59
  br i1 %65, label %141, label %60, !llvm.loop !515

66:                                               ; preds = %2, %2
  %67 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %68 = load ptr, ptr %67, align 8, !tbaa !71
  %69 = getelementptr inbounds %struct.Curve, ptr %68, i64 0, i32 3
  %70 = tail call i32 @BKE_nurbList_verts_count_without_handles(ptr noundef nonnull %69) #18
  %71 = tail call ptr @BLI_kdtree_new(i32 noundef %70) #18
  %72 = load ptr, ptr %69, align 8, !tbaa !47
  %73 = icmp eq ptr %72, null
  br i1 %73, label %141, label %74

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  br label %76

76:                                               ; preds = %74, %111
  %77 = phi ptr [ %72, %74 ], [ %113, %111 ]
  %78 = phi i32 [ 0, %74 ], [ %112, %111 ]
  %79 = getelementptr inbounds %struct.Nurb, ptr %77, i64 0, i32 18
  %80 = load ptr, ptr %79, align 8, !tbaa !516
  %81 = icmp eq ptr %80, null
  %82 = getelementptr inbounds %struct.Nurb, ptr %77, i64 0, i32 6
  %83 = load i32, ptr %82, align 8, !tbaa !518
  br i1 %81, label %95, label %84

84:                                               ; preds = %76
  %85 = icmp eq i32 %83, 0
  br i1 %85, label %111, label %86

86:                                               ; preds = %84, %86
  %87 = phi ptr [ %93, %86 ], [ %80, %84 ]
  %88 = phi i32 [ %90, %86 ], [ %83, %84 ]
  %89 = phi i32 [ %92, %86 ], [ %78, %84 ]
  %90 = add i32 %88, -1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  %91 = getelementptr inbounds [3 x [3 x float]], ptr %87, i64 0, i64 1
  call void @mul_v3_m4v3(ptr noundef nonnull %5, ptr noundef nonnull %75, ptr noundef nonnull %91) #18
  %92 = add i32 %89, 1
  call void @BLI_kdtree_insert(ptr noundef %71, i32 noundef %89, ptr noundef nonnull %5) #18
  %93 = getelementptr inbounds %struct.BezTriple, ptr %87, i64 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  %94 = icmp eq i32 %90, 0
  br i1 %94, label %111, label %86, !llvm.loop !519

95:                                               ; preds = %76
  %96 = getelementptr inbounds %struct.Nurb, ptr %77, i64 0, i32 7
  %97 = load i32, ptr %96, align 4, !tbaa !520
  %98 = mul nsw i32 %97, %83
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %111, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.Nurb, ptr %77, i64 0, i32 17
  %102 = load ptr, ptr %101, align 8, !tbaa !521
  br label %103

103:                                              ; preds = %100, %103
  %104 = phi ptr [ %109, %103 ], [ %102, %100 ]
  %105 = phi i32 [ %107, %103 ], [ %98, %100 ]
  %106 = phi i32 [ %108, %103 ], [ %78, %100 ]
  %107 = add i32 %105, -1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  call void @mul_v3_m4v3(ptr noundef nonnull %6, ptr noundef nonnull %75, ptr noundef %104) #18
  %108 = add i32 %106, 1
  call void @BLI_kdtree_insert(ptr noundef %71, i32 noundef %106, ptr noundef nonnull %6) #18
  %109 = getelementptr inbounds %struct.BPoint, ptr %104, i64 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  %110 = icmp eq i32 %107, 0
  br i1 %110, label %111, label %103, !llvm.loop !522

111:                                              ; preds = %86, %103, %84, %95
  %112 = phi i32 [ %78, %95 ], [ %78, %84 ], [ %108, %103 ], [ %92, %86 ]
  %113 = load ptr, ptr %77, align 8, !tbaa !47
  %114 = icmp eq ptr %113, null
  br i1 %114, label %141, label %76, !llvm.loop !523

115:                                              ; preds = %2
  %116 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %117 = load ptr, ptr %116, align 8, !tbaa !71
  %118 = getelementptr inbounds %struct.Lattice, ptr %117, i64 0, i32 2
  %119 = load i16, ptr %118, align 8, !tbaa !403
  %120 = sext i16 %119 to i32
  %121 = getelementptr inbounds %struct.Lattice, ptr %117, i64 0, i32 3
  %122 = load i16, ptr %121, align 2, !tbaa !402
  %123 = sext i16 %122 to i32
  %124 = mul nsw i32 %123, %120
  %125 = getelementptr inbounds %struct.Lattice, ptr %117, i64 0, i32 4
  %126 = load i16, ptr %125, align 4, !tbaa !400
  %127 = sext i16 %126 to i32
  %128 = mul nsw i32 %124, %127
  %129 = tail call ptr @BLI_kdtree_new(i32 noundef %128) #18
  %130 = icmp eq i32 %128, 0
  br i1 %130, label %141, label %131

131:                                              ; preds = %115
  %132 = getelementptr inbounds %struct.Lattice, ptr %117, i64 0, i32 21
  %133 = load ptr, ptr %132, align 8, !tbaa !401
  %134 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  br label %135

135:                                              ; preds = %131, %135
  %136 = phi i32 [ 0, %131 ], [ %138, %135 ]
  %137 = phi ptr [ %133, %131 ], [ %139, %135 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #20
  call void @mul_v3_m4v3(ptr noundef nonnull %7, ptr noundef nonnull %134, ptr noundef %137) #18
  %138 = add nuw i32 %136, 1
  call void @BLI_kdtree_insert(ptr noundef %129, i32 noundef %136, ptr noundef nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #20
  %139 = getelementptr inbounds %struct.BPoint, ptr %137, i64 1
  %140 = icmp eq i32 %138, %128
  br i1 %140, label %141, label %135, !llvm.loop !524

141:                                              ; preds = %135, %111, %46, %60, %115, %66, %50, %24
  %142 = phi ptr [ %55, %50 ], [ %31, %24 ], [ %71, %66 ], [ %129, %115 ], [ %55, %60 ], [ %31, %46 ], [ %71, %111 ], [ %129, %135 ]
  %143 = phi i32 [ 0, %50 ], [ 0, %24 ], [ %70, %66 ], [ %128, %115 ], [ %54, %60 ], [ %47, %46 ], [ %70, %111 ], [ %128, %135 ]
  call void @BLI_kdtree_balance(ptr noundef %142) #18
  br label %144

144:                                              ; preds = %141, %2
  %145 = phi i32 [ 0, %2 ], [ %143, %141 ]
  %146 = phi ptr [ null, %2 ], [ %142, %141 ]
  store i32 %145, ptr %1, align 4, !tbaa !292
  ret ptr %146
}

; Function Attrs: optsize
declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BLI_kdtree_new(i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_kdtree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_kdtree_balance(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @BKE_nurbList_verts_count_without_handles(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_pose_copy_data(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare void @extern_local_matarar(ptr noundef, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal void @extern_local_object__modifiersForeachIDLink(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #4 !PGOFuncName !525 {
  %4 = load ptr, ptr %2, align 8, !tbaa !47
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4
  %8 = load i16, ptr %7, align 8, !tbaa !392
  switch i16 %8, label %10 [
    i16 19785, label %9
    i16 17748, label %9
  ]

9:                                                ; preds = %6, %6
  tail call void @id_lib_extern(ptr noundef nonnull %4) #18
  br label %10

10:                                               ; preds = %6, %9, %3
  ret void
}

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #14

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ob_parcurve(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 !PGOFuncName !526 {
  %5 = alloca [4 x float], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x float], align 16
  %8 = alloca float, align 4
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #20
  tail call void @unit_m4(ptr noundef %3) #18
  %11 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 118
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.CurveCache, ptr %14, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !58
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 8, !tbaa !527
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %4, %16, %20
  tail call void @BKE_displist_make_curveTypes(ptr noundef %0, ptr noundef nonnull %2, i8 noundef zeroext 0) #18
  %24 = load ptr, ptr %13, align 8, !tbaa !57
  %25 = getelementptr inbounds %struct.CurveCache, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !58
  %27 = icmp eq ptr %26, null
  br i1 %27, label %89, label %28

28:                                               ; preds = %20, %23
  %29 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 60
  %30 = load i16, ptr %29, align 2, !tbaa !529
  %31 = and i16 %30, 1024
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %61

33:                                               ; preds = %28
  %34 = load i32, ptr @enable_cu_speed, align 4, !tbaa !292
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.Curve, ptr %12, i64 0, i32 20
  %38 = load i32, ptr %37, align 4, !tbaa !530
  %39 = icmp eq i32 %38, 0
  %40 = getelementptr inbounds %struct.Curve, ptr %12, i64 0, i32 64
  %41 = load float, ptr %40, align 8, !tbaa !531
  %42 = sitofp i32 %38 to float
  %43 = select i1 %39, float 1.000000e+00, float %42
  %44 = fdiv float %41, %43
  %45 = fcmp olt float %44, 0.000000e+00
  br i1 %45, label %61, label %46

46:                                               ; preds = %36
  %47 = fcmp ogt float %44, 1.000000e+00
  br i1 %47, label %48, label %61

48:                                               ; preds = %46
  br label %61

49:                                               ; preds = %33
  %50 = tail call float @BKE_scene_frame_get(ptr noundef %0) #18
  %51 = getelementptr inbounds %struct.Curve, ptr %12, i64 0, i32 20
  %52 = load i32, ptr %51, align 4, !tbaa !530
  %53 = icmp eq i32 %52, 0
  %54 = sitofp i32 %52 to float
  %55 = select i1 %53, float 1.000000e+00, float %54
  %56 = fdiv float %50, %55
  %57 = fcmp olt float %56, 0.000000e+00
  br i1 %57, label %61, label %58

58:                                               ; preds = %49
  %59 = fcmp ogt float %56, 1.000000e+00
  br i1 %59, label %60, label %61

60:                                               ; preds = %58
  br label %61

61:                                               ; preds = %49, %36, %28, %46, %48, %58, %60
  %62 = phi float [ 1.000000e+00, %48 ], [ %44, %46 ], [ 1.000000e+00, %60 ], [ %56, %58 ], [ 0.000000e+00, %28 ], [ 0.000000e+00, %36 ], [ 0.000000e+00, %49 ]
  %63 = getelementptr inbounds %struct.Curve, ptr %12, i64 0, i32 23
  %64 = load i32, ptr %63, align 4, !tbaa !395
  %65 = and i32 %64, 16
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %66, ptr null, ptr %7
  %68 = call i32 @where_on_path(ptr noundef nonnull %2, float noundef %62, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %67, ptr noundef nonnull %8, ptr noundef null) #18
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %89, label %70

70:                                               ; preds = %61
  %71 = load i32, ptr %63, align 4, !tbaa !395
  %72 = and i32 %71, 16
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 57
  %76 = load i16, ptr %75, align 4, !tbaa !532
  %77 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 58
  %78 = load i16, ptr %77, align 2, !tbaa !533
  call void @quat_apply_track(ptr noundef nonnull %7, i16 noundef signext %76, i16 noundef signext %78) #18
  %79 = call float @normalize_qt(ptr noundef nonnull %7) #18
  call void @quat_to_mat4(ptr noundef %3, ptr noundef nonnull %7) #18
  %80 = load i32, ptr %63, align 4, !tbaa !395
  br label %81

81:                                               ; preds = %74, %70
  %82 = phi i32 [ %80, %74 ], [ %71, %70 ]
  %83 = and i32 %82, 4096
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #20
  %86 = load float, ptr %8, align 4, !tbaa !34
  call void @scale_m4_fl(ptr noundef nonnull %9, float noundef %86) #18
  call void @mul_m4_m4m4(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef %3) #18
  call void @copy_m4_m4(ptr noundef %3, ptr noundef nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #20
  br label %87

87:                                               ; preds = %85, %81
  %88 = getelementptr inbounds [4 x float], ptr %3, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %88, ptr noundef nonnull %5) #19
  br label %89

89:                                               ; preds = %61, %87, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ob_parbone(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #4 !PGOFuncName !534 {
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !68
  %7 = icmp eq i16 %6, 25
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @unit_m4(ptr noundef %2) #18
  br label %36

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 18
  %11 = load ptr, ptr %10, align 8, !tbaa !64
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 8
  %13 = tail call ptr @BKE_pose_channel_find_name(ptr noundef %11, ptr noundef nonnull %12) #18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.bPoseChannel, ptr %13, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !370
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %9
  %20 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 4, i64 2
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef nonnull %20, ptr noundef nonnull %12) #19
  tail call void @unit_m4(ptr noundef %2) #18
  br label %36

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.Bone, ptr %17, i64 0, i32 10
  %24 = load i32, ptr %23, align 8, !tbaa !408
  %25 = and i32 %24, 8388608
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.bPoseChannel, ptr %13, i64 0, i32 28
  tail call void @copy_m4_m4(ptr noundef %2, ptr noundef nonnull %28) #18
  br label %36

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.bPoseChannel, ptr %13, i64 0, i32 29
  tail call void @copy_m4_m4(ptr noundef %2, ptr noundef nonnull %30) #18
  %31 = getelementptr inbounds [4 x float], ptr %2, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %31) #19
  %32 = load ptr, ptr %16, align 8, !tbaa !370
  %33 = getelementptr inbounds %struct.Bone, ptr %32, i64 0, i32 18
  %34 = load float, ptr %33, align 4, !tbaa !535
  call fastcc void @mul_v3_fl(ptr noundef nonnull %4, float noundef %34) #19
  %35 = getelementptr inbounds [4 x float], ptr %2, i64 3
  call fastcc void @add_v3_v3(ptr noundef nonnull %35, ptr noundef nonnull %4) #19
  br label %36

36:                                               ; preds = %27, %29, %19, %8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @give_parvert(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #4 !PGOFuncName !536 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  tail call fastcc void @zero_v3(ptr noundef %2) #19
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !68
  switch i16 %7, label %138 [
    i16 1, label %8
    i16 2, label %82
    i16 3, label %82
    i16 22, label %95
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !71
  %11 = getelementptr inbounds %struct.Mesh, ptr %10, i64 0, i32 20
  %12 = load ptr, ptr %11, align 8, !tbaa !277
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct.BMEditMesh, ptr %12, i64 0, i32 5
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 120
  %16 = select i1 %13, ptr %15, ptr %14
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  %18 = icmp eq ptr %17, null
  br i1 %18, label %79, label %19

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %17, i64 0, i32 23
  %21 = load ptr, ptr %20, align 8, !tbaa !425
  %22 = tail call i32 %21(ptr noundef nonnull %17) #18
  %23 = icmp sgt i32 %22, %1
  br i1 %23, label %24, label %138

24:                                               ; preds = %19
  br i1 %13, label %43, label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %17, i64 0, i32 14
  %27 = load i32, ptr %26, align 8, !tbaa !537
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load ptr, ptr %12, align 8, !tbaa !538
  %31 = getelementptr inbounds %struct.BMesh, ptr %30, i64 0, i32 8
  %32 = load i8, ptr %31, align 1, !tbaa !540
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %29
  tail call void @BLI_mutex_lock(ptr noundef nonnull @vparent_lock) #18
  %36 = load ptr, ptr %12, align 8, !tbaa !538
  %37 = getelementptr inbounds %struct.BMesh, ptr %36, i64 0, i32 8
  %38 = load i8, ptr %37, align 1, !tbaa !540
  %39 = and i8 %38, 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  tail call void @BM_mesh_elem_table_ensure(ptr noundef nonnull %36, i8 noundef zeroext 1) #18
  br label %42

42:                                               ; preds = %41, %35
  tail call void @BLI_mutex_unlock(ptr noundef nonnull @vparent_lock) #18
  br label %43

43:                                               ; preds = %29, %42, %25, %24
  %44 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %17, i32 noundef 7) #18
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %65, label %46

46:                                               ; preds = %43
  %47 = icmp sgt i32 %22, 0
  br i1 %47, label %48, label %138

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.DerivedMesh, ptr %17, i64 0, i32 46
  %50 = getelementptr inbounds %struct.DerivedMesh, ptr %17, i64 0, i32 76
  br label %51

51:                                               ; preds = %48, %61
  %52 = phi i32 [ 0, %48 ], [ %62, %61 ]
  %53 = phi i32 [ 0, %48 ], [ %63, %61 ]
  %54 = load ptr, ptr %49, align 8, !tbaa !542
  %55 = call ptr %54(ptr noundef nonnull %17, i32 noundef %53, i32 noundef 7) #18
  %56 = load i32, ptr %55, align 4, !tbaa !292
  %57 = icmp eq i32 %56, %1
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #20
  %59 = load ptr, ptr %50, align 8, !tbaa !543
  call void %59(ptr noundef nonnull %17, i32 noundef %53, ptr noundef nonnull %4) #18
  call fastcc void @add_v3_v3(ptr noundef %2, ptr noundef nonnull %4) #19
  %60 = add nsw i32 %52, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #20
  br label %61

61:                                               ; preds = %58, %51
  %62 = phi i32 [ %60, %58 ], [ %52, %51 ]
  %63 = add nuw nsw i32 %53, 1
  %64 = icmp eq i32 %63, %22
  br i1 %64, label %68, label %51, !llvm.loop !544

65:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  %66 = getelementptr inbounds %struct.DerivedMesh, ptr %17, i64 0, i32 76
  %67 = load ptr, ptr %66, align 8, !tbaa !543
  call void %67(ptr noundef nonnull %17, i32 noundef %1, ptr noundef nonnull %5) #18
  call fastcc void @add_v3_v3(ptr noundef %2, ptr noundef nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  br label %72

68:                                               ; preds = %61
  %69 = icmp eq i32 %62, 0
  br i1 %69, label %138, label %70

70:                                               ; preds = %68
  %71 = icmp sgt i32 %62, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65, %70
  %73 = phi i32 [ 1, %65 ], [ %62, %70 ]
  %74 = sitofp i32 %73 to float
  %75 = fdiv float 1.000000e+00, %74
  call fastcc void @mul_v3_fl(ptr noundef %2, float noundef %75) #19
  br label %138

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.DerivedMesh, ptr %17, i64 0, i32 76
  %78 = load ptr, ptr %77, align 8, !tbaa !543
  call void %78(ptr noundef nonnull %17, i32 noundef 0, ptr noundef %2) #18
  br label %138

79:                                               ; preds = %8
  %80 = load ptr, ptr @stderr, align 8, !tbaa !47
  %81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.give_parvert) #21
  br label %138

82:                                               ; preds = %3, %3
  %83 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  %84 = load ptr, ptr %83, align 8, !tbaa !57
  %85 = getelementptr inbounds %struct.CurveCache, ptr %84, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !545
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %90 = load ptr, ptr %89, align 8, !tbaa !71
  %91 = tail call ptr @BKE_curve_nurbs_get(ptr noundef %90) #18
  br label %92

92:                                               ; preds = %82, %88
  %93 = phi ptr [ %91, %88 ], [ %85, %82 ]
  %94 = tail call zeroext i8 @BKE_nurbList_index_get_co(ptr noundef %93, i32 noundef %1, ptr noundef %2) #18
  br label %138

95:                                               ; preds = %3
  %96 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %97 = load ptr, ptr %96, align 8, !tbaa !71
  %98 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  %99 = load ptr, ptr %98, align 8, !tbaa !57
  %100 = icmp eq ptr %99, null
  br i1 %100, label %107, label %101

101:                                              ; preds = %95
  %102 = tail call ptr @BKE_displist_find(ptr noundef nonnull %99, i32 noundef 7) #18
  %103 = icmp eq ptr %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.DispList, ptr %102, i64 0, i32 8
  %106 = load ptr, ptr %105, align 8, !tbaa !430
  br label %107

107:                                              ; preds = %95, %101, %104
  %108 = phi ptr [ %106, %104 ], [ null, %101 ], [ null, %95 ]
  %109 = getelementptr inbounds %struct.Lattice, ptr %97, i64 0, i32 26
  %110 = load ptr, ptr %109, align 8, !tbaa !283
  %111 = icmp eq ptr %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %107
  %113 = load ptr, ptr %110, align 8, !tbaa !546
  br label %114

114:                                              ; preds = %112, %107
  %115 = phi ptr [ %113, %112 ], [ %97, %107 ]
  %116 = getelementptr inbounds %struct.Lattice, ptr %115, i64 0, i32 2
  %117 = load i16, ptr %116, align 8, !tbaa !403
  %118 = sext i16 %117 to i32
  %119 = getelementptr inbounds %struct.Lattice, ptr %115, i64 0, i32 3
  %120 = load i16, ptr %119, align 2, !tbaa !402
  %121 = sext i16 %120 to i32
  %122 = mul nsw i32 %121, %118
  %123 = getelementptr inbounds %struct.Lattice, ptr %115, i64 0, i32 4
  %124 = load i16, ptr %123, align 4, !tbaa !400
  %125 = sext i16 %124 to i32
  %126 = mul nsw i32 %122, %125
  %127 = icmp sgt i32 %126, %1
  br i1 %127, label %128, label %138

128:                                              ; preds = %114
  %129 = icmp eq ptr %108, null
  br i1 %129, label %133, label %130

130:                                              ; preds = %128
  %131 = sext i32 %1 to i64
  %132 = getelementptr inbounds [3 x float], ptr %108, i64 %131
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef nonnull %132) #19
  br label %138

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.Lattice, ptr %115, i64 0, i32 21
  %135 = load ptr, ptr %134, align 8, !tbaa !401
  %136 = sext i32 %1 to i64
  %137 = getelementptr inbounds %struct.BPoint, ptr %135, i64 %136
  tail call fastcc void @copy_v3_v3(ptr noundef %2, ptr noundef %137) #19
  br label %138

138:                                              ; preds = %46, %19, %114, %133, %130, %3, %79, %72, %76, %68, %92
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ob_parvert3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #4 !PGOFuncName !548 {
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [4 x float], align 16
  %9 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !68
  switch i16 %10, label %20 [
    i16 1, label %11
    i16 3, label %11
    i16 2, label %11
    i16 22, label %11
  ]

11:                                               ; preds = %3, %3, %3, %3
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #20
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 5
  %13 = load i32, ptr %12, align 4, !tbaa !396
  call fastcc void @give_parvert(ptr noundef nonnull %1, i32 noundef %13, ptr noundef nonnull %5) #19
  %14 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !549
  call fastcc void @give_parvert(ptr noundef nonnull %1, i32 noundef %15, ptr noundef nonnull %6) #19
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 7
  %17 = load i32, ptr %16, align 4, !tbaa !393
  call fastcc void @give_parvert(ptr noundef nonnull %1, i32 noundef %17, ptr noundef nonnull %7) #19
  %18 = call float @tri_to_quat(ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #18
  call void @quat_to_mat3(ptr noundef nonnull %4, ptr noundef nonnull %8) #18
  call void @copy_m4_m3(ptr noundef %2, ptr noundef nonnull %4) #18
  %19 = getelementptr inbounds [4 x float], ptr %2, i64 3
  call void @mid_v3_v3v3v3(ptr noundef nonnull %19, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #20
  br label %21

20:                                               ; preds = %3
  tail call void @unit_m4(ptr noundef %2) #18
  br label %21

21:                                               ; preds = %20, %11
  ret void
}

; Function Attrs: optsize
declare i32 @where_on_path(ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @quat_apply_track(ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #5

; Function Attrs: optsize
declare float @normalize_qt(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @quat_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @BKE_curve_nurbs_get(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @BKE_nurbList_index_get_co(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BKE_displist_find(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare float @tri_to_quat(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @mid_v3_v3v3v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BKE_key_add(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BKE_keyblock_add_ctime(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_key_convert_from_mesh(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BKE_key_evaluate_object(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_key_convert_from_curve(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BKE_key_convert_from_lattice(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #17

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #18 = { nounwind optsize }
attributes #19 = { optsize }
attributes #20 = { nounwind }
attributes #21 = { cold optsize }

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
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = distinct !{!54, !53}
!55 = !{!39, !41, i64 1248}
!56 = !{!39, !41, i64 1152}
!57 = !{!39, !41, i64 1280}
!58 = !{!59, !41, i64 48}
!59 = !{!"CurveCache", !45, i64 0, !45, i64 16, !45, i64 32, !41, i64 48}
!60 = distinct !{!60, !53}
!61 = !{!62, !41, i64 112}
!62 = !{!"HookModifierData", !63, i64 0, !41, i64 112, !36, i64 120, !36, i64 184, !36, i64 248, !35, i64 260, !41, i64 264, !43, i64 272, !35, i64 276, !36, i64 280}
!63 = !{!"ModifierData", !41, i64 0, !41, i64 8, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !36, i64 32, !41, i64 96, !41, i64 104}
!64 = !{!39, !41, i64 288}
!65 = !{!36, !36, i64 0}
!66 = !{!67, !43, i64 72}
!67 = !{!"ModifierTypeInfo", !36, i64 0, !36, i64 32, !43, i64 64, !43, i64 68, !43, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !41, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !41, i64 208}
!68 = !{!39, !42, i64 136}
!69 = !{!63, !43, i64 16}
!70 = !{i8 0, i8 2}
!71 = !{!39, !41, i64 296}
!72 = distinct !{!72, !53}
!73 = distinct !{!73, !53}
!74 = !{!75, !41, i64 112}
!75 = !{!"ParticleSystemModifierData", !63, i64 0, !41, i64 112, !41, i64 120, !43, i64 128, !43, i64 132, !43, i64 136, !42, i64 140, !42, i64 142}
!76 = !{!77, !41, i64 120}
!77 = !{!"DynamicPaintModifierData", !63, i64 0, !41, i64 112, !41, i64 120, !43, i64 128, !43, i64 132}
!78 = !{!79, !41, i64 16}
!79 = !{!"DynamicPaintBrushSettings", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !43, i64 32, !43, i64 36, !35, i64 40, !35, i64 44, !35, i64 48, !35, i64 52, !35, i64 56, !35, i64 60, !35, i64 64, !35, i64 68, !41, i64 72, !41, i64 80, !42, i64 88, !42, i64 90, !42, i64 92, !42, i64 94, !35, i64 96, !35, i64 100, !35, i64 104, !35, i64 108}
!80 = !{!81, !43, i64 140}
!81 = !{!"SmokeModifierData", !63, i64 0, !41, i64 112, !41, i64 120, !41, i64 128, !35, i64 136, !43, i64 140}
!82 = !{!81, !41, i64 120}
!83 = !{!84, !41, i64 16}
!84 = !{!"SmokeFlowSettings", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !43, i64 40, !35, i64 44, !35, i64 48, !35, i64 52, !35, i64 56, !36, i64 60, !35, i64 72, !35, i64 76, !35, i64 80, !35, i64 84, !35, i64 88, !43, i64 92, !35, i64 96, !35, i64 100, !43, i64 104, !36, i64 108, !42, i64 172, !42, i64 174, !42, i64 176, !42, i64 178, !43, i64 180}
!85 = distinct !{!85, !53}
!86 = !{!87, !41, i64 128}
!87 = !{!"Mesh", !40, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !41, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !41, i64 208, !41, i64 216, !41, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !88, i64 280, !88, i64 480, !88, i64 680, !88, i64 880, !88, i64 1080, !43, i64 1280, !43, i64 1284, !43, i64 1288, !43, i64 1292, !43, i64 1296, !43, i64 1300, !43, i64 1304, !36, i64 1308, !36, i64 1320, !36, i64 1332, !43, i64 1344, !42, i64 1348, !42, i64 1350, !35, i64 1352, !43, i64 1356, !36, i64 1360, !36, i64 1361, !36, i64 1362, !36, i64 1363, !36, i64 1364, !36, i64 1365, !42, i64 1366, !41, i64 1368}
!88 = !{!"CustomData", !41, i64 0, !36, i64 8, !43, i64 172, !43, i64 176, !43, i64 180, !41, i64 184, !41, i64 192}
!89 = !{!90, !41, i64 128}
!90 = !{!"Curve", !40, i64 0, !41, i64 120, !41, i64 128, !45, i64 136, !41, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !36, i64 208, !36, i64 220, !36, i64 232, !42, i64 244, !42, i64 246, !42, i64 248, !42, i64 250, !35, i64 252, !35, i64 256, !43, i64 260, !42, i64 264, !42, i64 266, !43, i64 268, !35, i64 272, !35, i64 276, !35, i64 280, !42, i64 284, !42, i64 286, !42, i64 288, !42, i64 290, !43, i64 292, !43, i64 296, !36, i64 300, !42, i64 304, !36, i64 306, !36, i64 307, !35, i64 308, !35, i64 312, !35, i64 316, !35, i64 320, !35, i64 324, !35, i64 328, !35, i64 332, !35, i64 336, !35, i64 340, !35, i64 344, !43, i64 348, !43, i64 352, !43, i64 356, !43, i64 360, !43, i64 364, !41, i64 368, !41, i64 376, !36, i64 384, !41, i64 448, !41, i64 456, !41, i64 464, !41, i64 472, !41, i64 480, !43, i64 488, !43, i64 492, !41, i64 496, !91, i64 504, !35, i64 512, !35, i64 516, !35, i64 520, !36, i64 524, !36, i64 525, !36, i64 526}
!91 = !{!"CharInfo", !42, i64 0, !42, i64 2, !36, i64 4, !36, i64 5, !42, i64 6}
!92 = !{!93, !43, i64 96}
!93 = !{!"BoundBox", !36, i64 0, !43, i64 96, !43, i64 100}
!94 = !{!39, !41, i64 264}
!95 = !{!39, !41, i64 1296}
!96 = !{!97, !43, i64 1020}
!97 = !{!"DerivedMesh", !88, i64 0, !88, i64 200, !88, i64 400, !88, i64 600, !88, i64 800, !43, i64 1000, !43, i64 1004, !43, i64 1008, !43, i64 1012, !43, i64 1016, !43, i64 1020, !43, i64 1024, !41, i64 1032, !41, i64 1040, !43, i64 1048, !35, i64 1052, !43, i64 1056, !43, i64 1060, !41, i64 1064, !36, i64 1072, !41, i64 1080, !41, i64 1088, !41, i64 1096, !41, i64 1104, !41, i64 1112, !41, i64 1120, !41, i64 1128, !41, i64 1136, !41, i64 1144, !41, i64 1152, !41, i64 1160, !41, i64 1168, !41, i64 1176, !41, i64 1184, !41, i64 1192, !41, i64 1200, !41, i64 1208, !41, i64 1216, !41, i64 1224, !41, i64 1232, !41, i64 1240, !41, i64 1248, !41, i64 1256, !41, i64 1264, !41, i64 1272, !41, i64 1280, !41, i64 1288, !41, i64 1296, !41, i64 1304, !41, i64 1312, !41, i64 1320, !41, i64 1328, !41, i64 1336, !41, i64 1344, !41, i64 1352, !41, i64 1360, !41, i64 1368, !41, i64 1376, !41, i64 1384, !41, i64 1392, !41, i64 1400, !41, i64 1408, !41, i64 1416, !41, i64 1424, !41, i64 1432, !41, i64 1440, !41, i64 1448, !41, i64 1456, !41, i64 1464, !41, i64 1472, !41, i64 1480, !41, i64 1488, !41, i64 1496, !41, i64 1504, !41, i64 1512, !41, i64 1520, !41, i64 1528, !41, i64 1536, !41, i64 1544, !41, i64 1552, !41, i64 1560, !41, i64 1568, !41, i64 1576, !41, i64 1584, !41, i64 1592, !41, i64 1600, !41, i64 1608, !41, i64 1616, !41, i64 1624, !41, i64 1632, !41, i64 1640, !41, i64 1648, !41, i64 1656, !41, i64 1664, !41, i64 1672, !41, i64 1680}
!98 = !{!97, !41, i64 1680}
!99 = !{!39, !41, i64 1288}
!100 = !{!40, !43, i64 100}
!101 = !{!40, !41, i64 24}
!102 = !{!39, !41, i64 440}
!103 = !{!39, !43, i64 456}
!104 = !{!105, !43, i64 100}
!105 = !{!"Material", !40, i64 0, !41, i64 120, !42, i64 128, !42, i64 130, !35, i64 132, !35, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !35, i64 200, !35, i64 204, !35, i64 208, !35, i64 212, !35, i64 216, !35, i64 220, !106, i64 224, !107, i64 312, !35, i64 328, !35, i64 332, !35, i64 336, !35, i64 340, !35, i64 344, !35, i64 348, !35, i64 352, !42, i64 356, !42, i64 358, !42, i64 360, !36, i64 362, !36, i64 363, !35, i64 364, !35, i64 368, !42, i64 372, !42, i64 374, !35, i64 376, !35, i64 380, !35, i64 384, !35, i64 388, !42, i64 392, !42, i64 394, !43, i64 396, !43, i64 400, !43, i64 404, !43, i64 408, !42, i64 412, !42, i64 414, !42, i64 416, !42, i64 418, !35, i64 420, !35, i64 424, !35, i64 428, !35, i64 432, !35, i64 436, !35, i64 440, !35, i64 444, !35, i64 448, !35, i64 452, !35, i64 456, !36, i64 460, !35, i64 524, !35, i64 528, !35, i64 532, !43, i64 536, !36, i64 540, !36, i64 541, !36, i64 542, !36, i64 543, !42, i64 544, !42, i64 546, !42, i64 548, !36, i64 550, !36, i64 551, !42, i64 552, !42, i64 554, !35, i64 556, !35, i64 560, !36, i64 564, !35, i64 580, !35, i64 584, !42, i64 588, !42, i64 590, !41, i64 592, !41, i64 600, !36, i64 608, !36, i64 609, !36, i64 610, !36, i64 611, !42, i64 612, !42, i64 614, !35, i64 616, !35, i64 620, !36, i64 624, !41, i64 768, !41, i64 776, !41, i64 784, !41, i64 792, !35, i64 800, !35, i64 804, !35, i64 808, !35, i64 812, !35, i64 816, !42, i64 820, !42, i64 822, !36, i64 824, !36, i64 836, !35, i64 848, !35, i64 852, !35, i64 856, !35, i64 860, !35, i64 864, !35, i64 868, !35, i64 872, !42, i64 876, !42, i64 878, !43, i64 880, !42, i64 884, !42, i64 886, !36, i64 888, !42, i64 904, !42, i64 906, !42, i64 908, !42, i64 910, !42, i64 912, !36, i64 914, !41, i64 920, !45, i64 928}
!106 = !{!"VolumeSettings", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !36, i64 16, !36, i64 28, !36, i64 40, !35, i64 52, !35, i64 56, !35, i64 60, !42, i64 64, !42, i64 66, !42, i64 68, !42, i64 70, !35, i64 72, !35, i64 76, !35, i64 80, !35, i64 84}
!107 = !{!"GameSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!108 = distinct !{!108, !53}
!109 = !{!39, !41, i64 448}
!110 = !{!39, !41, i64 1392}
!111 = !{!39, !41, i64 120}
!112 = !{!39, !41, i64 280}
!113 = !{!114, !43, i64 100}
!114 = !{!"bAction", !40, i64 0, !45, i64 120, !45, i64 136, !45, i64 152, !45, i64 168, !43, i64 184, !43, i64 188, !43, i64 192, !43, i64 196}
!115 = !{!39, !41, i64 304}
!116 = !{!39, !41, i64 400}
!117 = !{!39, !41, i64 360}
!118 = !{!39, !41, i64 1240}
!119 = !{!39, !41, i64 1328}
!120 = !{!39, !41, i64 1344}
!121 = !{!122, !41, i64 0}
!122 = !{!"Global", !41, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !45, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !42, i64 2084, !42, i64 2086, !42, i64 2088, !36, i64 2090, !42, i64 2092, !43, i64 2096, !43, i64 2100, !36, i64 2104, !43, i64 2108, !43, i64 2112, !36, i64 2116}
!123 = distinct !{!123, !53}
!124 = !{!39, !41, i64 232}
!125 = !{!39, !41, i64 248}
!126 = !{!39, !41, i64 240}
!127 = !{!39, !41, i64 216}
!128 = !{!90, !41, i64 160}
!129 = !{!90, !41, i64 168}
!130 = !{!90, !41, i64 176}
!131 = !{!132, !41, i64 104}
!132 = !{!"bConstraintTypeInfo", !42, i64 0, !42, i64 2, !36, i64 4, !36, i64 36, !41, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !41, i64 128}
!133 = !{!134, !41, i64 16}
!134 = !{!"bConstraintTarget", !41, i64 0, !41, i64 8, !41, i64 16, !36, i64 24, !36, i64 88, !42, i64 152, !42, i64 154, !42, i64 156, !42, i64 158}
!135 = distinct !{!135, !53}
!136 = !{!132, !41, i64 112}
!137 = distinct !{!137, !53}
!138 = !{!139, !41, i64 184}
!139 = !{!"bPoseChannel", !41, i64 0, !41, i64 8, !41, i64 16, !45, i64 24, !36, i64 40, !42, i64 104, !42, i64 106, !42, i64 108, !42, i64 110, !36, i64 112, !36, i64 113, !36, i64 114, !41, i64 120, !41, i64 128, !41, i64 136, !45, i64 144, !45, i64 160, !41, i64 176, !41, i64 184, !41, i64 192, !36, i64 200, !36, i64 212, !36, i64 224, !36, i64 236, !36, i64 252, !35, i64 264, !42, i64 268, !42, i64 270, !36, i64 272, !36, i64 336, !36, i64 400, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !35, i64 524, !35, i64 528, !35, i64 532, !41, i64 536}
!140 = distinct !{!140, !53}
!141 = distinct !{!141, !53}
!142 = distinct !{!142, !53}
!143 = distinct !{!143, !53}
!144 = !{!39, !41, i64 1224}
!145 = !{!146, !41, i64 16}
!146 = !{!"ParticleTarget", !41, i64 0, !41, i64 8, !41, i64 16, !43, i64 24, !42, i64 28, !42, i64 30, !35, i64 32, !35, i64 36}
!147 = distinct !{!147, !53}
!148 = !{!149, !41, i64 128}
!149 = !{!"ParticleSystem", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !45, i64 72, !45, i64 88, !41, i64 104, !41, i64 112, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !45, i64 152, !36, i64 168, !36, i64 232, !35, i64 296, !35, i64 300, !35, i64 304, !43, i64 308, !43, i64 312, !43, i64 316, !43, i64 320, !43, i64 324, !43, i64 328, !43, i64 332, !43, i64 336, !42, i64 340, !42, i64 342, !42, i64 344, !42, i64 346, !36, i64 348, !36, i64 540, !42, i64 564, !42, i64 566, !41, i64 568, !41, i64 576, !45, i64 584, !41, i64 600, !41, i64 608, !43, i64 616, !43, i64 620, !41, i64 624, !41, i64 632, !41, i64 640, !35, i64 648, !35, i64 652}
!150 = !{!149, !41, i64 16}
!151 = !{!152, !41, i64 752}
!152 = !{!"ParticleSettings", !40, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !43, i64 152, !43, i64 156, !42, i64 160, !42, i64 162, !42, i64 164, !42, i64 166, !42, i64 168, !42, i64 170, !42, i64 172, !42, i64 174, !43, i64 176, !43, i64 180, !42, i64 184, !42, i64 186, !42, i64 188, !42, i64 190, !42, i64 192, !42, i64 194, !42, i64 196, !42, i64 198, !42, i64 200, !42, i64 202, !42, i64 204, !42, i64 206, !42, i64 208, !42, i64 210, !42, i64 212, !42, i64 214, !42, i64 216, !42, i64 218, !42, i64 220, !42, i64 222, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !35, i64 232, !35, i64 236, !36, i64 240, !36, i64 248, !35, i64 256, !35, i64 260, !35, i64 264, !42, i64 268, !42, i64 270, !35, i64 272, !35, i64 276, !35, i64 280, !35, i64 284, !35, i64 288, !35, i64 292, !35, i64 296, !35, i64 300, !35, i64 304, !35, i64 308, !35, i64 312, !35, i64 316, !36, i64 320, !43, i64 324, !43, i64 328, !43, i64 332, !43, i64 336, !42, i64 340, !36, i64 342, !35, i64 348, !35, i64 352, !35, i64 356, !35, i64 360, !35, i64 364, !35, i64 368, !35, i64 372, !36, i64 376, !35, i64 388, !35, i64 392, !35, i64 396, !35, i64 400, !35, i64 404, !35, i64 408, !35, i64 412, !36, i64 416, !35, i64 428, !35, i64 432, !35, i64 436, !35, i64 440, !43, i64 444, !43, i64 448, !35, i64 452, !35, i64 456, !35, i64 460, !35, i64 464, !35, i64 468, !35, i64 472, !35, i64 476, !35, i64 480, !35, i64 484, !35, i64 488, !35, i64 492, !35, i64 496, !35, i64 500, !35, i64 504, !35, i64 508, !35, i64 512, !35, i64 516, !35, i64 520, !35, i64 524, !35, i64 528, !35, i64 532, !35, i64 536, !35, i64 540, !35, i64 544, !35, i64 548, !36, i64 552, !35, i64 560, !35, i64 564, !43, i64 568, !43, i64 572, !36, i64 576, !41, i64 720, !45, i64 728, !41, i64 744, !41, i64 752, !41, i64 760, !41, i64 768, !41, i64 776, !41, i64 784, !42, i64 792, !36, i64 794}
!153 = !{!152, !42, i64 168}
!154 = !{!149, !43, i64 320}
!155 = !{!149, !41, i64 24}
!156 = !{!157, !41, i64 128}
!157 = !{!"ParticleData", !158, i64 0, !158, i64 56, !41, i64 112, !41, i64 120, !41, i64 128, !43, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !43, i64 152, !43, i64 156, !36, i64 160, !35, i64 176, !35, i64 180, !35, i64 184, !43, i64 188, !43, i64 192, !42, i64 196, !42, i64 198}
!158 = !{!"ParticleKey", !36, i64 0, !36, i64 12, !36, i64 24, !36, i64 40, !35, i64 52}
!159 = !{!160, !41, i64 0}
!160 = !{!"BoidParticle", !41, i64 0, !161, i64 8, !36, i64 28, !36, i64 40, !35, i64 52}
!161 = !{!"BoidData", !35, i64 0, !36, i64 4, !42, i64 16, !42, i64 18}
!162 = distinct !{!162, !53}
!163 = !{!152, !41, i64 128}
!164 = distinct !{!164, !53}
!165 = !{!166, !43, i64 16}
!166 = !{!"BoidRule", !41, i64 0, !41, i64 8, !43, i64 16, !43, i64 20, !36, i64 24}
!167 = !{!168, !41, i64 56}
!168 = !{!"BoidRuleGoalAvoid", !166, i64 0, !41, i64 56, !43, i64 64, !35, i64 68, !43, i64 72, !43, i64 76}
!169 = !{!170, !41, i64 56}
!170 = !{!"BoidRuleFollowLeader", !166, i64 0, !41, i64 56, !36, i64 64, !36, i64 76, !35, i64 88, !35, i64 92, !43, i64 96, !43, i64 100}
!171 = distinct !{!171, !53}
!172 = !{!149, !41, i64 144}
!173 = !{!149, !41, i64 0}
!174 = distinct !{!174, !53}
!175 = !{!176, !41, i64 16}
!176 = !{!"LodLevel", !41, i64 0, !41, i64 8, !41, i64 16, !43, i64 24, !35, i64 28}
!177 = distinct !{!177, !53}
!178 = distinct !{!178, !53}
!179 = !{!180, !41, i64 8}
!180 = !{!"MTex", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !41, i64 8, !41, i64 16, !36, i64 24, !36, i64 88, !36, i64 89, !36, i64 90, !36, i64 91, !36, i64 92, !36, i64 104, !35, i64 116, !42, i64 120, !42, i64 122, !42, i64 124, !42, i64 126, !42, i64 128, !42, i64 130, !36, i64 132, !36, i64 133, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !35, i64 200, !35, i64 204, !35, i64 208, !35, i64 212, !35, i64 216, !35, i64 220, !35, i64 224, !35, i64 228, !35, i64 232, !35, i64 236, !35, i64 240, !35, i64 244, !35, i64 248, !35, i64 252, !35, i64 256, !35, i64 260, !35, i64 264, !35, i64 268, !35, i64 272, !35, i64 276, !35, i64 280, !35, i64 284, !35, i64 288, !35, i64 292, !35, i64 296, !35, i64 300, !35, i64 304, !35, i64 308}
!181 = distinct !{!181, !53}
!182 = !{!183, !41, i64 368}
!183 = !{!"Tex", !40, i64 0, !41, i64 120, !35, i64 128, !35, i64 132, !35, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !35, i64 200, !35, i64 204, !35, i64 208, !35, i64 212, !42, i64 216, !42, i64 218, !42, i64 220, !42, i64 222, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !42, i64 232, !42, i64 234, !35, i64 236, !35, i64 240, !35, i64 244, !35, i64 248, !43, i64 252, !43, i64 256, !42, i64 260, !42, i64 262, !42, i64 264, !42, i64 266, !43, i64 268, !43, i64 272, !43, i64 276, !43, i64 280, !35, i64 284, !35, i64 288, !35, i64 292, !184, i64 296, !41, i64 336, !41, i64 344, !41, i64 352, !41, i64 360, !41, i64 368, !41, i64 376, !41, i64 384, !41, i64 392, !41, i64 400, !36, i64 408, !36, i64 409}
!184 = !{!"ImageUser", !41, i64 0, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !42, i64 28, !42, i64 30, !42, i64 32, !42, i64 34, !43, i64 36}
!185 = !{!186, !41, i64 0}
!186 = !{!"EnvMap", !41, i64 0, !41, i64 8, !36, i64 16, !36, i64 64, !36, i64 128, !42, i64 164, !42, i64 166, !35, i64 168, !35, i64 172, !35, i64 176, !43, i64 180, !42, i64 184, !42, i64 186, !43, i64 188, !43, i64 192, !42, i64 196, !42, i64 198}
!187 = !{!183, !41, i64 384}
!188 = !{!189, !41, i64 24}
!189 = !{!"PointDensity", !42, i64 0, !42, i64 2, !35, i64 4, !35, i64 8, !42, i64 12, !42, i64 14, !43, i64 16, !43, i64 20, !41, i64 24, !43, i64 32, !42, i64 36, !42, i64 38, !41, i64 40, !41, i64 48, !35, i64 56, !42, i64 60, !42, i64 62, !42, i64 64, !36, i64 66, !35, i64 72, !35, i64 76, !35, i64 80, !35, i64 84, !41, i64 88, !41, i64 96}
!190 = !{!183, !41, i64 392}
!191 = !{!192, !41, i64 32}
!192 = !{!"VoxelData", !36, i64 0, !43, i64 12, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !43, i64 28, !41, i64 32, !35, i64 40, !43, i64 44, !36, i64 48, !41, i64 1072, !43, i64 1080, !43, i64 1084}
!193 = distinct !{!193, !53}
!194 = !{!195, !41, i64 24}
!195 = !{!"World", !40, i64 0, !41, i64 120, !42, i64 128, !42, i64 130, !42, i64 132, !42, i64 134, !35, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !42, i64 200, !42, i64 202, !42, i64 204, !42, i64 206, !42, i64 208, !42, i64 210, !42, i64 212, !42, i64 214, !35, i64 216, !35, i64 220, !35, i64 224, !35, i64 228, !35, i64 232, !35, i64 236, !35, i64 240, !35, i64 244, !35, i64 248, !35, i64 252, !35, i64 256, !35, i64 260, !42, i64 264, !42, i64 266, !42, i64 268, !42, i64 270, !35, i64 272, !35, i64 276, !35, i64 280, !35, i64 284, !42, i64 288, !42, i64 290, !42, i64 292, !42, i64 294, !35, i64 296, !35, i64 300, !35, i64 304, !35, i64 308, !35, i64 312, !35, i64 316, !35, i64 320, !42, i64 324, !42, i64 326, !42, i64 328, !42, i64 330, !42, i64 332, !42, i64 334, !41, i64 336, !41, i64 344, !41, i64 352, !36, i64 360, !42, i64 504, !42, i64 506, !36, i64 508, !41, i64 512, !41, i64 520}
!196 = distinct !{!196, !53}
!197 = distinct !{!197, !53}
!198 = !{!199, !41, i64 24}
!199 = !{!"Scene", !40, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !45, i64 152, !41, i64 168, !41, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !43, i64 232, !43, i64 236, !43, i64 240, !42, i64 244, !36, i64 246, !36, i64 247, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !200, i64 280, !209, i64 4264, !45, i64 4296, !45, i64 4312, !41, i64 4328, !41, i64 4336, !41, i64 4344, !41, i64 4352, !41, i64 4360, !41, i64 4368, !42, i64 4376, !42, i64 4378, !43, i64 4380, !45, i64 4384, !210, i64 4400, !211, i64 4416, !214, i64 4600, !41, i64 4608, !215, i64 4616, !41, i64 4640, !46, i64 4648, !46, i64 4656, !202, i64 4664, !203, i64 4824, !216, i64 4888, !41, i64 4952}
!200 = !{!"RenderData", !201, i64 0, !41, i64 248, !41, i64 256, !204, i64 264, !205, i64 328, !43, i64 400, !43, i64 404, !43, i64 408, !35, i64 412, !43, i64 416, !43, i64 420, !43, i64 424, !43, i64 428, !42, i64 432, !42, i64 434, !35, i64 436, !35, i64 440, !35, i64 444, !35, i64 448, !35, i64 452, !42, i64 456, !42, i64 458, !42, i64 460, !42, i64 462, !42, i64 464, !42, i64 466, !43, i64 468, !42, i64 472, !42, i64 474, !42, i64 476, !42, i64 478, !42, i64 480, !42, i64 482, !43, i64 484, !43, i64 488, !42, i64 492, !42, i64 494, !43, i64 496, !43, i64 500, !42, i64 504, !42, i64 506, !42, i64 508, !42, i64 510, !42, i64 512, !36, i64 514, !36, i64 515, !43, i64 516, !43, i64 520, !43, i64 524, !42, i64 528, !42, i64 530, !42, i64 532, !42, i64 534, !42, i64 536, !42, i64 538, !42, i64 540, !42, i64 542, !206, i64 544, !206, i64 560, !207, i64 576, !45, i64 592, !42, i64 608, !42, i64 610, !35, i64 612, !35, i64 616, !35, i64 620, !35, i64 624, !43, i64 628, !35, i64 632, !35, i64 636, !35, i64 640, !35, i64 644, !42, i64 648, !42, i64 650, !42, i64 652, !42, i64 654, !42, i64 656, !42, i64 658, !35, i64 660, !35, i64 664, !42, i64 668, !42, i64 670, !35, i64 672, !35, i64 676, !36, i64 680, !43, i64 1704, !42, i64 1708, !42, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !43, i64 2520, !42, i64 2524, !42, i64 2526, !35, i64 2528, !35, i64 2532, !42, i64 2536, !42, i64 2538, !35, i64 2540, !42, i64 2544, !42, i64 2546, !43, i64 2548, !42, i64 2552, !42, i64 2554, !42, i64 2556, !42, i64 2558, !35, i64 2560, !35, i64 2564, !41, i64 2568, !43, i64 2576, !35, i64 2580, !36, i64 2584, !208, i64 2616, !43, i64 3976, !43, i64 3980}
!201 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !42, i64 8, !42, i64 10, !35, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !202, i64 24, !203, i64 184}
!202 = !{!"ColorManagedViewSettings", !43, i64 0, !43, i64 4, !36, i64 8, !36, i64 72, !35, i64 136, !35, i64 140, !41, i64 144, !41, i64 152}
!203 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!204 = !{!"QuicktimeCodecSettings", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !42, i64 48, !42, i64 50, !43, i64 52, !43, i64 56, !43, i64 60}
!205 = !{!"FFMpegCodecData", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !35, i64 32, !43, i64 36, !43, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !43, i64 56, !43, i64 60, !41, i64 64}
!206 = !{!"rctf", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12}
!207 = !{!"rcti", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12}
!208 = !{!"BakeData", !201, i64 0, !36, i64 248, !42, i64 1272, !42, i64 1274, !42, i64 1276, !42, i64 1278, !35, i64 1280, !35, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!209 = !{!"AudioData", !43, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !43, i64 16, !42, i64 20, !42, i64 22, !35, i64 24, !35, i64 28}
!210 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!211 = !{!"GameData", !210, i64 0, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !42, i64 32, !36, i64 34, !212, i64 40, !42, i64 64, !42, i64 66, !35, i64 68, !213, i64 72, !35, i64 128, !35, i64 132, !43, i64 136, !42, i64 140, !42, i64 142, !42, i64 144, !42, i64 146, !42, i64 148, !42, i64 150, !42, i64 152, !42, i64 154, !42, i64 156, !42, i64 158, !42, i64 160, !42, i64 162, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180}
!212 = !{!"GameDome", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !35, i64 8, !35, i64 12, !41, i64 16}
!213 = !{!"RecastData", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !43, i64 40, !35, i64 44, !35, i64 48, !42, i64 52, !42, i64 54}
!214 = !{!"UnitSettings", !35, i64 0, !36, i64 4, !36, i64 5, !42, i64 6}
!215 = !{!"PhysicsSettings", !36, i64 0, !43, i64 12, !43, i64 16, !43, i64 20}
!216 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!217 = !{!199, !41, i64 128}
!218 = !{!199, !41, i64 264}
!219 = !{!220, !41, i64 400}
!220 = !{!"ToolSettings", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !35, i64 32, !35, i64 36, !35, i64 40, !42, i64 44, !42, i64 46, !36, i64 48, !36, i64 49, !36, i64 50, !36, i64 51, !35, i64 52, !42, i64 56, !36, i64 58, !36, i64 59, !221, i64 64, !223, i64 168, !35, i64 336, !35, i64 340, !42, i64 344, !42, i64 346, !36, i64 348, !36, i64 349, !42, i64 350, !35, i64 352, !35, i64 356, !35, i64 360, !35, i64 364, !35, i64 368, !35, i64 372, !35, i64 376, !35, i64 380, !35, i64 384, !35, i64 388, !42, i64 392, !36, i64 394, !36, i64 395, !36, i64 396, !36, i64 399, !41, i64 400, !36, i64 408, !36, i64 409, !36, i64 410, !36, i64 411, !36, i64 412, !36, i64 413, !36, i64 421, !36, i64 429, !36, i64 430, !36, i64 431, !36, i64 432, !36, i64 433, !42, i64 434, !42, i64 436, !42, i64 438, !42, i64 440, !36, i64 442, !36, i64 443, !36, i64 444, !36, i64 445, !36, i64 446, !36, i64 447, !43, i64 448, !43, i64 452, !43, i64 456, !43, i64 460, !42, i64 464, !42, i64 466, !43, i64 468, !35, i64 472, !35, i64 476, !224, i64 480, !225, i64 608}
!221 = !{!"ImagePaintSettings", !222, i64 0, !42, i64 40, !42, i64 42, !42, i64 44, !42, i64 46, !36, i64 48, !43, i64 52, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !36, i64 88, !35, i64 100}
!222 = !{!"Paint", !41, i64 0, !41, i64 8, !41, i64 16, !36, i64 24, !43, i64 28, !43, i64 32, !43, i64 36}
!223 = !{!"ParticleEditSettings", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !36, i64 8, !41, i64 120, !35, i64 128, !35, i64 132, !43, i64 136, !43, i64 140, !43, i64 144, !43, i64 148, !41, i64 152, !41, i64 160}
!224 = !{!"UnifiedPaintSettings", !43, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !36, i64 16, !36, i64 28, !43, i64 40, !36, i64 44, !35, i64 52, !43, i64 56, !43, i64 60, !36, i64 64, !36, i64 65, !35, i64 72, !36, i64 76, !43, i64 84, !35, i64 88, !36, i64 92, !36, i64 100, !43, i64 108, !41, i64 112, !35, i64 120, !43, i64 124}
!225 = !{!"MeshStatVis", !36, i64 0, !36, i64 1, !36, i64 3, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !36, i64 20, !36, i64 21, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36}
!226 = !{!220, !41, i64 328}
!227 = !{!228, !41, i64 88}
!228 = !{!"TimeMarker", !41, i64 0, !41, i64 8, !43, i64 16, !36, i64 20, !43, i64 84, !41, i64 88}
!229 = distinct !{!229, !53}
!230 = !{!199, !41, i64 256}
!231 = !{!232, !43, i64 24}
!232 = !{!"SeqIterator", !41, i64 0, !43, i64 8, !43, i64 12, !41, i64 16, !43, i64 24}
!233 = !{!232, !41, i64 16}
!234 = !{!235, !41, i64 192}
!235 = !{!"Sequence", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !36, i64 32, !43, i64 96, !43, i64 100, !43, i64 104, !43, i64 108, !43, i64 112, !43, i64 116, !43, i64 120, !43, i64 124, !43, i64 128, !43, i64 132, !43, i64 136, !43, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !42, i64 156, !42, i64 158, !43, i64 160, !43, i64 164, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !41, i64 208, !41, i64 216, !35, i64 224, !35, i64 228, !41, i64 232, !41, i64 240, !41, i64 248, !45, i64 256, !41, i64 272, !41, i64 280, !35, i64 288, !35, i64 292, !35, i64 296, !35, i64 300, !41, i64 304, !43, i64 312, !43, i64 316, !43, i64 320, !35, i64 324, !43, i64 328, !36, i64 332, !36, i64 333, !45, i64 336}
!236 = distinct !{!236, !53}
!237 = distinct !{!237, !53}
!238 = !{!239, !41, i64 120}
!239 = !{!"FreestyleLineSet", !41, i64 0, !41, i64 8, !36, i64 16, !43, i64 80, !43, i64 84, !42, i64 88, !42, i64 90, !43, i64 92, !43, i64 96, !43, i64 100, !43, i64 104, !43, i64 108, !41, i64 112, !41, i64 120}
!240 = distinct !{!240, !53}
!241 = distinct !{!241, !53}
!242 = distinct !{!242, !53}
!243 = distinct !{!243, !53}
!244 = !{!245, !43, i64 32}
!245 = !{!"SpaceLink", !41, i64 0, !41, i64 8, !45, i64 16, !43, i64 32, !35, i64 36, !36, i64 40}
!246 = !{!247, !41, i64 104}
!247 = !{!"View3D", !41, i64 0, !41, i64 8, !45, i64 16, !43, i64 32, !35, i64 36, !36, i64 40, !36, i64 56, !35, i64 72, !35, i64 76, !36, i64 80, !36, i64 81, !43, i64 84, !43, i64 88, !42, i64 92, !42, i64 94, !41, i64 96, !41, i64 104, !206, i64 112, !45, i64 128, !41, i64 144, !41, i64 152, !36, i64 160, !43, i64 224, !43, i64 228, !42, i64 232, !42, i64 234, !42, i64 236, !42, i64 238, !42, i64 240, !42, i64 242, !35, i64 244, !35, i64 248, !35, i64 252, !35, i64 256, !36, i64 260, !36, i64 272, !42, i64 284, !42, i64 286, !42, i64 288, !36, i64 290, !36, i64 291, !36, i64 292, !36, i64 293, !36, i64 294, !45, i64 296, !45, i64 312, !45, i64 328, !36, i64 344, !36, i64 345, !36, i64 346, !36, i64 347, !41, i64 352, !41, i64 360, !41, i64 368}
!248 = !{!247, !41, i64 152}
!249 = !{!247, !41, i64 96}
!250 = !{!251, !36, i64 72}
!251 = !{!"ScrArea", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !207, i64 56, !36, i64 72, !36, i64 73, !42, i64 74, !42, i64 76, !42, i64 78, !42, i64 80, !42, i64 82, !42, i64 84, !36, i64 86, !36, i64 87, !41, i64 88, !45, i64 96, !45, i64 112, !45, i64 128, !45, i64 144}
!252 = !{!253, !42, i64 214}
!253 = !{!"ARegion", !41, i64 0, !41, i64 8, !254, i64 16, !207, i64 176, !207, i64 192, !42, i64 208, !42, i64 210, !42, i64 212, !42, i64 214, !42, i64 216, !42, i64 218, !35, i64 220, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !42, i64 232, !42, i64 234, !42, i64 236, !42, i64 238, !41, i64 240, !45, i64 248, !45, i64 264, !45, i64 280, !45, i64 296, !45, i64 312, !45, i64 328, !45, i64 344, !41, i64 360, !41, i64 368, !41, i64 376}
!254 = !{!"View2D", !206, i64 0, !206, i64 16, !207, i64 32, !207, i64 48, !207, i64 64, !36, i64 80, !36, i64 88, !35, i64 96, !35, i64 100, !42, i64 104, !42, i64 106, !42, i64 108, !42, i64 110, !42, i64 112, !42, i64 114, !42, i64 116, !42, i64 118, !42, i64 120, !42, i64 122, !42, i64 124, !42, i64 126, !41, i64 128, !43, i64 136, !43, i64 140, !41, i64 144, !41, i64 152}
!255 = !{!253, !41, i64 376}
!256 = !{!257, !36, i64 809}
!257 = !{!"RegionView3D", !36, i64 0, !36, i64 64, !36, i64 128, !36, i64 192, !36, i64 256, !36, i64 320, !36, i64 384, !36, i64 448, !36, i64 544, !41, i64 640, !41, i64 648, !41, i64 656, !41, i64 664, !41, i64 672, !41, i64 680, !41, i64 688, !36, i64 696, !36, i64 760, !35, i64 776, !35, i64 780, !35, i64 784, !35, i64 788, !36, i64 792, !35, i64 804, !36, i64 808, !36, i64 809, !36, i64 810, !36, i64 811, !36, i64 812, !36, i64 813, !36, i64 816, !42, i64 824, !42, i64 826, !36, i64 828, !42, i64 844, !42, i64 846, !35, i64 848, !36, i64 852, !35, i64 864, !36, i64 868}
!258 = !{!257, !41, i64 648}
!259 = distinct !{!259, !53}
!260 = !{!261, !41, i64 232}
!261 = !{!"SpaceOops", !41, i64 0, !41, i64 8, !45, i64 16, !43, i64 32, !35, i64 36, !36, i64 40, !254, i64 56, !45, i64 216, !41, i64 232, !36, i64 240, !262, i64 272, !42, i64 288, !42, i64 290, !42, i64 292, !42, i64 294, !41, i64 296}
!262 = !{!"TreeStoreElem", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !41, i64 8}
!263 = !{!262, !41, i64 8}
!264 = distinct !{!264, !53}
!265 = !{!266, !41, i64 256}
!266 = !{!"SpaceButs", !41, i64 0, !41, i64 8, !45, i64 16, !43, i64 32, !35, i64 36, !36, i64 40, !254, i64 56, !42, i64 216, !42, i64 218, !42, i64 220, !42, i64 222, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !36, i64 232, !36, i64 233, !41, i64 240, !43, i64 248, !43, i64 252, !41, i64 256, !41, i64 264}
!267 = !{!266, !36, i64 232}
!268 = !{!269, !41, i64 224}
!269 = !{!"SpaceNode", !41, i64 0, !41, i64 8, !45, i64 16, !43, i64 32, !35, i64 36, !36, i64 40, !254, i64 56, !41, i64 216, !41, i64 224, !42, i64 232, !42, i64 234, !35, i64 236, !35, i64 240, !35, i64 244, !35, i64 248, !35, i64 252, !36, i64 256, !45, i64 264, !41, i64 280, !41, i64 288, !36, i64 296, !43, i64 360, !43, i64 364, !42, i64 368, !42, i64 370, !42, i64 372, !42, i64 374, !45, i64 376, !41, i64 392}
!270 = !{!269, !42, i64 232}
!271 = distinct !{!271, !53}
!272 = distinct !{!272, !53}
!273 = !{!274, !41, i64 184}
!274 = !{!"Camera", !40, i64 0, !41, i64 120, !36, i64 128, !36, i64 129, !42, i64 130, !35, i64 132, !35, i64 136, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !41, i64 176, !41, i64 184, !36, i64 192, !36, i64 193}
!275 = distinct !{!275, !53}
!276 = !{!"object.c:unlink_object__unlinkModifierLinks"}
!277 = !{!87, !41, i64 272}
!278 = !{!279, !41, i64 160}
!279 = !{!"bArmature", !40, i64 0, !41, i64 120, !45, i64 128, !45, i64 144, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !43, i64 192, !43, i64 196, !43, i64 200, !43, i64 204, !42, i64 208, !42, i64 210, !43, i64 212, !43, i64 216, !43, i64 220, !42, i64 224, !42, i64 226, !42, i64 228, !42, i64 230, !43, i64 232, !43, i64 236, !43, i64 240, !43, i64 244, !43, i64 248, !43, i64 252}
!280 = !{!90, !41, i64 376}
!281 = !{!282, !41, i64 160}
!282 = !{!"MetaBall", !40, i64 0, !41, i64 120, !45, i64 128, !45, i64 144, !41, i64 160, !41, i64 168, !41, i64 176, !36, i64 184, !36, i64 185, !42, i64 186, !42, i64 188, !42, i64 190, !36, i64 192, !36, i64 204, !36, i64 216, !35, i64 228, !35, i64 232, !35, i64 236, !41, i64 240}
!283 = !{!284, !41, i64 272}
!284 = !{!"Lattice", !40, i64 0, !41, i64 120, !42, i64 128, !42, i64 130, !42, i64 132, !42, i64 134, !42, i64 136, !42, i64 138, !42, i64 140, !42, i64 142, !36, i64 144, !36, i64 145, !36, i64 146, !36, i64 147, !43, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !36, i64 208, !41, i64 272}
!285 = !{!90, !41, i64 152}
!286 = !{!39, !43, i64 432}
!287 = !{!87, !36, i64 1365}
!288 = distinct !{!288, !53}
!289 = !{!39, !42, i64 954}
!290 = !{!39, !36, i64 1046}
!291 = !{!39, !36, i64 1047}
!292 = !{!43, !43, i64 0}
!293 = !{!39, !43, i64 1144}
!294 = !{!39, !43, i64 1324}
!295 = !{!39, !43, i64 1320}
!296 = !{!39, !42, i64 1036}
!297 = !{!39, !42, i64 1038}
!298 = !{!39, !41, i64 1272}
!299 = !{!"object.c:get_obdata_defname"}
!300 = !{!"object.c:BLI_listbase_clear"}
!301 = !{!199, !43, i64 232}
!302 = !{!303, !41, i64 8}
!303 = !{!"SoftBody", !43, i64 0, !43, i64 4, !41, i64 8, !41, i64 16, !36, i64 24, !36, i64 25, !42, i64 26, !35, i64 28, !36, i64 32, !35, i64 96, !35, i64 100, !35, i64 104, !35, i64 108, !35, i64 112, !35, i64 116, !35, i64 120, !35, i64 124, !35, i64 128, !42, i64 132, !36, i64 134, !42, i64 198, !35, i64 200, !35, i64 204, !36, i64 208, !43, i64 272, !43, i64 276, !43, i64 280, !42, i64 284, !42, i64 286, !41, i64 288, !43, i64 296, !43, i64 300, !35, i64 304, !35, i64 308, !35, i64 312, !35, i64 316, !42, i64 320, !42, i64 322, !42, i64 324, !42, i64 326, !42, i64 328, !42, i64 330, !42, i64 332, !42, i64 334, !41, i64 336, !35, i64 344, !35, i64 348, !41, i64 352, !45, i64 360, !41, i64 376, !36, i64 384, !36, i64 396, !36, i64 432, !43, i64 468}
!304 = !{!303, !43, i64 0}
!305 = !{!306, !41, i64 152}
!306 = !{!"BodyPoint", !36, i64 0, !36, i64 12, !36, i64 24, !36, i64 36, !36, i64 48, !36, i64 60, !35, i64 72, !36, i64 76, !36, i64 88, !36, i64 100, !36, i64 112, !36, i64 124, !36, i64 136, !43, i64 148, !41, i64 152, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !42, i64 176, !35, i64 180, !35, i64 184}
!307 = distinct !{!307, !53}
!308 = !{!303, !41, i64 16}
!309 = !{!303, !41, i64 336}
!310 = !{!303, !41, i64 352}
!311 = !{!303, !41, i64 376}
!312 = !{!"object.c:copy_particlesystem"}
!313 = !{!149, !41, i64 32}
!314 = !{!152, !42, i64 160}
!315 = !{!157, !41, i64 112}
!316 = distinct !{!316, !53}
!317 = !{!157, !41, i64 120}
!318 = !{!157, !43, i64 136}
!319 = distinct !{!319, !53}
!320 = !{!149, !41, i64 104}
!321 = !{!149, !41, i64 40}
!322 = !{!149, !41, i64 600}
!323 = !{!149, !41, i64 568}
!324 = !{!149, !41, i64 576}
!325 = !{!326, !41, i64 144}
!326 = !{!"ClothModifierData", !63, i64 0, !41, i64 112, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !45, i64 152}
!327 = !{!39, !35, i64 616}
!328 = !{!"object.c:copy_v3_v3"}
!329 = !{!39, !42, i64 948}
!330 = distinct !{!330, !53}
!331 = !{!39, !41, i64 128}
!332 = !{!39, !41, i64 1256}
!333 = distinct !{!333, !53}
!334 = !{!335, !41, i64 128}
!335 = !{!"PartDeflect", !43, i64 0, !42, i64 4, !42, i64 6, !42, i64 8, !42, i64 10, !42, i64 12, !42, i64 14, !42, i64 16, !42, i64 18, !35, i64 20, !35, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !35, i64 40, !35, i64 44, !35, i64 48, !35, i64 52, !35, i64 56, !35, i64 60, !35, i64 64, !35, i64 68, !35, i64 72, !35, i64 76, !35, i64 80, !35, i64 84, !35, i64 88, !35, i64 92, !35, i64 96, !35, i64 100, !35, i64 104, !35, i64 108, !35, i64 112, !35, i64 116, !35, i64 120, !35, i64 124, !41, i64 128, !41, i64 136, !35, i64 144, !43, i64 148, !41, i64 152}
!336 = !{!335, !41, i64 136}
!337 = !{!39, !41, i64 1368}
!338 = !{!39, !41, i64 1376}
!339 = !{!"object.c:copy_object_pose"}
!340 = distinct !{!340, !53}
!341 = !{!139, !42, i64 104}
!342 = distinct !{!342, !53}
!343 = distinct !{!343, !53}
!344 = !{!"object.c:copy_object_lod"}
!345 = !{!39, !41, i64 1400}
!346 = !{!39, !41, i64 1416}
!347 = !{!39, !41, i64 24}
!348 = !{!39, !43, i64 100}
!349 = distinct !{!349, !53}
!350 = distinct !{!350, !53}
!351 = distinct !{!351, !53}
!352 = !{!"object.c:extern_local_object"}
!353 = distinct !{!353, !53}
!354 = !{!355, !41, i64 48}
!355 = !{!"AnimData", !41, i64 0, !41, i64 8, !41, i64 16, !45, i64 24, !41, i64 40, !45, i64 48, !45, i64 64, !43, i64 80, !43, i64 84, !42, i64 88, !42, i64 90, !35, i64 92}
!356 = distinct !{!356, !53}
!357 = !{!358, !41, i64 24}
!358 = !{!"FCurve", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !45, i64 32, !41, i64 48, !41, i64 56, !43, i64 64, !35, i64 68, !42, i64 72, !42, i64 74, !43, i64 76, !41, i64 80, !43, i64 88, !36, i64 92, !35, i64 104, !35, i64 108}
!359 = distinct !{!359, !53}
!360 = !{!361, !41, i64 0}
!361 = !{!"DriverTarget", !41, i64 0, !41, i64 8, !36, i64 16, !42, i64 48, !42, i64 50, !43, i64 52}
!362 = distinct !{!362, !53}
!363 = !{!39, !43, i64 460}
!364 = distinct !{!364, !53}
!365 = !{!39, !35, i64 1048}
!366 = !{!39, !41, i64 112}
!367 = !{!"object.c:sub_v3_v3"}
!368 = !{!"object.c:armature_set_id_extern"}
!369 = !{!279, !43, i64 220}
!370 = !{!139, !41, i64 120}
!371 = !{!372, !43, i64 320}
!372 = !{!"Bone", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !45, i64 32, !36, i64 48, !35, i64 112, !36, i64 116, !36, i64 128, !36, i64 140, !43, i64 176, !36, i64 180, !36, i64 192, !36, i64 204, !35, i64 268, !35, i64 272, !35, i64 276, !35, i64 280, !35, i64 284, !35, i64 288, !35, i64 292, !35, i64 296, !35, i64 300, !35, i64 304, !36, i64 308, !43, i64 320, !42, i64 324, !36, i64 326}
!373 = distinct !{!373, !53}
!374 = !{!90, !35, i64 320}
!375 = !{!274, !35, i64 152}
!376 = !{!377, !35, i64 176}
!377 = !{!"Lamp", !40, i64 0, !41, i64 120, !42, i64 128, !42, i64 130, !43, i64 132, !42, i64 136, !42, i64 138, !35, i64 140, !35, i64 144, !35, i64 148, !35, i64 152, !35, i64 156, !35, i64 160, !35, i64 164, !35, i64 168, !35, i64 172, !35, i64 176, !35, i64 180, !35, i64 184, !35, i64 188, !35, i64 192, !35, i64 196, !41, i64 200, !42, i64 208, !42, i64 210, !35, i64 212, !35, i64 216, !35, i64 220, !35, i64 224, !35, i64 228, !35, i64 232, !35, i64 236, !42, i64 240, !42, i64 242, !42, i64 244, !42, i64 246, !36, i64 248, !36, i64 249, !42, i64 250, !42, i64 252, !42, i64 254, !42, i64 256, !42, i64 258, !35, i64 260, !35, i64 264, !35, i64 268, !35, i64 272, !42, i64 276, !42, i64 278, !42, i64 280, !42, i64 282, !42, i64 284, !42, i64 286, !35, i64 288, !35, i64 292, !35, i64 296, !35, i64 300, !35, i64 304, !35, i64 308, !35, i64 312, !35, i64 316, !35, i64 320, !35, i64 324, !35, i64 328, !35, i64 332, !35, i64 336, !42, i64 340, !36, i64 342, !41, i64 344, !36, i64 352, !42, i64 496, !42, i64 498, !36, i64 500, !41, i64 504, !41, i64 512}
!378 = !{!377, !35, i64 268}
!379 = !{!"object.c:mul_v3_v3v3"}
!380 = !{!39, !35, i64 620}
!381 = !{!"object.c:copy_v4_v4"}
!382 = distinct !{!382, !53}
!383 = !{!"object.c:add_v3_v3v3"}
!384 = !{!39, !42, i64 138}
!385 = !{!199, !41, i64 4952}
!386 = !{!39, !41, i64 1176}
!387 = !{!39, !42, i64 952}
!388 = !{!"object.c:solve_parenting"}
!389 = !{!"object.c:where_is_object_parslow"}
!390 = !{!39, !35, i64 1120}
!391 = distinct !{!391, !53}
!392 = !{!42, !42, i64 0}
!393 = !{!39, !43, i64 148}
!394 = !{!"object.c:ob_get_parent_matrix"}
!395 = !{!90, !43, i64 268}
!396 = !{!39, !43, i64 140}
!397 = !{!"object.c:zero_v3"}
!398 = !{i64 0, i64 96, !65, i64 96, i64 4, !292, i64 100, i64 4, !292}
!399 = distinct !{!399, !53}
!400 = !{!284, !42, i64 132}
!401 = !{!284, !41, i64 176}
!402 = !{!284, !42, i64 130}
!403 = !{!284, !42, i64 128}
!404 = distinct !{!404, !53}
!405 = distinct !{!405, !53}
!406 = distinct !{!406, !53}
!407 = !{!279, !43, i64 216}
!408 = !{!372, !43, i64 176}
!409 = distinct !{!409, !53}
!410 = distinct !{!410, !53}
!411 = !{!"object.c:mul_v3_fl"}
!412 = !{!"object.c:add_v3_v3"}
!413 = !{!184, !36, i64 26}
!414 = !{!184, !43, i64 12}
!415 = !{!184, !43, i64 20}
!416 = !{!184, !36, i64 24}
!417 = !{!418, !41, i64 1888}
!418 = !{!"Main", !41, i64 0, !41, i64 8, !36, i64 16, !42, i64 1040, !42, i64 1042, !42, i64 1044, !42, i64 1046, !46, i64 1048, !36, i64 1056, !42, i64 1072, !41, i64 1080, !45, i64 1088, !45, i64 1104, !45, i64 1120, !45, i64 1136, !45, i64 1152, !45, i64 1168, !45, i64 1184, !45, i64 1200, !45, i64 1216, !45, i64 1232, !45, i64 1248, !45, i64 1264, !45, i64 1280, !45, i64 1296, !45, i64 1312, !45, i64 1328, !45, i64 1344, !45, i64 1360, !45, i64 1376, !45, i64 1392, !45, i64 1408, !45, i64 1424, !45, i64 1440, !45, i64 1456, !45, i64 1472, !45, i64 1488, !45, i64 1504, !45, i64 1520, !45, i64 1536, !45, i64 1552, !45, i64 1568, !45, i64 1584, !45, i64 1600, !45, i64 1616, !36, i64 1632, !41, i64 1888, !41, i64 1896}
!419 = !{!420, !36, i64 110}
!420 = !{!"DupliObject", !41, i64 0, !41, i64 8, !41, i64 16, !36, i64 24, !36, i64 88, !36, i64 100, !42, i64 108, !36, i64 110, !36, i64 111, !36, i64 112, !41, i64 144}
!421 = !{!420, !41, i64 16}
!422 = distinct !{!422, !53}
!423 = distinct !{!423, !53}
!424 = !{!97, !41, i64 1168}
!425 = !{!97, !41, i64 1104}
!426 = distinct !{!426, !53}
!427 = !{!59, !41, i64 0}
!428 = !{!429, !43, i64 24}
!429 = !{!"DispList", !41, i64 0, !41, i64 8, !42, i64 16, !42, i64 18, !43, i64 20, !43, i64 24, !42, i64 28, !42, i64 30, !41, i64 32, !41, i64 40, !41, i64 48, !43, i64 56, !43, i64 60, !41, i64 64}
!430 = !{!429, !41, i64 32}
!431 = distinct !{!431, !53}
!432 = !{!429, !41, i64 0}
!433 = distinct !{!433, !53}
!434 = !{!39, !36, i64 1160}
!435 = !{!49, !43, i64 24}
!436 = distinct !{!436, !53}
!437 = distinct !{!437, !53}
!438 = !{!39, !36, i64 1161}
!439 = !{!440, !42, i64 24}
!440 = !{!"bPose", !45, i64 0, !41, i64 16, !42, i64 24, !42, i64 26, !43, i64 28, !43, i64 32, !35, i64 36, !36, i64 40, !36, i64 52, !45, i64 64, !43, i64 80, !43, i64 84, !41, i64 88, !41, i64 96, !44, i64 104, !36, i64 152}
!441 = !{!122, !43, i64 2100}
!442 = !{!443, !41, i64 176}
!443 = !{!"Key", !40, i64 0, !41, i64 120, !41, i64 128, !36, i64 136, !43, i64 168, !43, i64 172, !45, i64 176, !41, i64 192, !41, i64 200, !42, i64 208, !42, i64 210, !42, i64 212, !42, i64 214, !35, i64 216, !43, i64 220}
!444 = !{!39, !36, i64 1265}
!445 = !{!443, !41, i64 120}
!446 = !{!199, !41, i64 176}
!447 = !{!199, !46, i64 4648}
!448 = !{!46, !46, i64 0}
!449 = distinct !{!449, !53}
!450 = !{!149, !42, i64 340}
!451 = !{!152, !42, i64 184}
!452 = !{!453, !43, i64 0}
!453 = !{!"EvaluationContext", !43, i64 0}
!454 = !{!152, !42, i64 192}
!455 = !{!152, !41, i64 720}
!456 = !{!149, !43, i64 316}
!457 = distinct !{!457, !53}
!458 = !{!75, !42, i64 140}
!459 = distinct !{!459, !53}
!460 = !{!461, !41, i64 192}
!461 = !{!"SculptSession", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !43, i64 32, !43, i64 36, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !43, i64 80, !43, i64 84, !36, i64 88, !41, i64 96, !41, i64 104, !36, i64 112, !36, i64 113, !41, i64 120, !41, i64 128, !41, i64 136, !36, i64 144, !43, i64 148, !41, i64 152, !43, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192, !36, i64 200, !36, i64 204, !36, i64 216, !43, i64 228}
!462 = !{!461, !41, i64 104}
!463 = distinct !{!463, !53}
!464 = distinct !{!464, !53}
!465 = !{!466, !41, i64 16}
!466 = !{!"LinkData", !41, i64 0, !41, i64 8, !41, i64 16}
!467 = distinct !{!467, !53}
!468 = !{!"object.c:pc_cmp"}
!469 = !{!"object.c:pc_findindex"}
!470 = distinct !{!470, !53}
!471 = !{!"object.c:insert_meshkey"}
!472 = !{!87, !41, i64 144}
!473 = !{!443, !42, i64 208}
!474 = !{!475, !41, i64 40}
!475 = !{!"KeyBlock", !41, i64 0, !41, i64 8, !35, i64 16, !35, i64 20, !42, i64 24, !42, i64 26, !42, i64 28, !42, i64 30, !43, i64 32, !43, i64 36, !41, i64 40, !36, i64 48, !36, i64 112, !35, i64 176, !35, i64 180}
!476 = !{!475, !43, i64 32}
!477 = !{!"object.c:insert_curvekey"}
!478 = !{!90, !41, i64 192}
!479 = !{!"object.c:insert_lattkey"}
!480 = !{!284, !41, i64 192}
!481 = distinct !{!481, !53}
!482 = !{!63, !41, i64 0}
!483 = distinct !{!483, !53}
!484 = !{!67, !43, i64 68}
!485 = distinct !{!485, !53}
!486 = distinct !{!486, !53}
!487 = distinct !{!487, !53}
!488 = !{!39, !41, i64 16}
!489 = !{!"object.c:copy_object__forwardModifierLinks"}
!490 = !{!40, !41, i64 16}
!491 = !{!199, !41, i64 4640}
!492 = !{!493, !42, i64 24}
!493 = !{!"bConstraint", !41, i64 0, !41, i64 8, !41, i64 16, !42, i64 24, !42, i64 26, !36, i64 28, !36, i64 29, !36, i64 30, !42, i64 94, !35, i64 96, !35, i64 100, !41, i64 104, !35, i64 112, !35, i64 116}
!494 = !{!493, !42, i64 26}
!495 = distinct !{!495, !53}
!496 = !{!493, !41, i64 16}
!497 = !{!498, !43, i64 8}
!498 = !{!"bCameraSolverConstraint", !41, i64 0, !43, i64 8, !43, i64 12}
!499 = !{!39, !42, i64 98}
!500 = distinct !{!500, !53}
!501 = distinct !{!501, !53}
!502 = distinct !{!502, !53}
!503 = distinct !{!503, !53}
!504 = !{!"object.c:obrel_list_add"}
!505 = !{!"object.c:obrel_list_test"}
!506 = !{!"object.c:obrel_armature_find"}
!507 = !{!508, !41, i64 120}
!508 = !{!"ArmatureModifierData", !63, i64 0, !42, i64 112, !42, i64 114, !43, i64 116, !41, i64 120, !41, i64 128, !36, i64 136}
!509 = distinct !{!509, !53}
!510 = distinct !{!510, !53}
!511 = distinct !{!511, !53}
!512 = distinct !{!512, !53}
!513 = !{!87, !41, i64 232}
!514 = !{!87, !43, i64 1280}
!515 = distinct !{!515, !53}
!516 = !{!517, !41, i64 72}
!517 = !{!"Nurb", !41, i64 0, !41, i64 8, !42, i64 16, !42, i64 18, !42, i64 20, !42, i64 22, !43, i64 24, !43, i64 28, !36, i64 32, !42, i64 36, !42, i64 38, !42, i64 40, !42, i64 42, !42, i64 44, !42, i64 46, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !42, i64 80, !42, i64 82, !43, i64 84}
!518 = !{!517, !43, i64 24}
!519 = distinct !{!519, !53}
!520 = !{!517, !43, i64 28}
!521 = !{!517, !41, i64 64}
!522 = distinct !{!522, !53}
!523 = distinct !{!523, !53}
!524 = distinct !{!524, !53}
!525 = !{!"object.c:extern_local_object__modifiersForeachIDLink"}
!526 = !{!"object.c:ob_parcurve"}
!527 = !{!528, !41, i64 0}
!528 = !{!"Path", !41, i64 0, !43, i64 8, !35, i64 12}
!529 = !{!39, !42, i64 962}
!530 = !{!90, !43, i64 260}
!531 = !{!90, !35, i64 512}
!532 = !{!39, !42, i64 956}
!533 = !{!39, !42, i64 958}
!534 = !{!"object.c:ob_parbone"}
!535 = !{!372, !35, i64 284}
!536 = !{!"object.c:give_parvert"}
!537 = !{!97, !43, i64 1048}
!538 = !{!539, !41, i64 0}
!539 = !{!"BMEditMesh", !41, i64 0, !41, i64 8, !43, i64 16, !41, i64 24, !43, i64 32, !41, i64 40, !41, i64 48, !46, i64 56, !41, i64 64, !43, i64 72, !41, i64 80, !43, i64 88, !42, i64 92, !42, i64 94, !41, i64 96, !43, i64 104}
!540 = !{!541, !36, i64 29}
!541 = !{!"BMesh", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !36, i64 28, !36, i64 29, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !43, i64 88, !43, i64 92, !43, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !43, i64 128, !41, i64 136, !88, i64 144, !88, i64 344, !88, i64 544, !88, i64 744, !42, i64 944, !43, i64 948, !43, i64 952, !43, i64 956, !45, i64 960, !41, i64 976, !45, i64 984, !41, i64 1000}
!542 = !{!97, !41, i64 1288}
!543 = !{!97, !41, i64 1528}
!544 = distinct !{!544, !53}
!545 = !{!59, !41, i64 32}
!546 = !{!547, !41, i64 0}
!547 = !{!"EditLatt", !41, i64 0, !43, i64 8, !36, i64 12}
!548 = !{!"object.c:ob_parvert3"}
!549 = !{!39, !43, i64 144}
