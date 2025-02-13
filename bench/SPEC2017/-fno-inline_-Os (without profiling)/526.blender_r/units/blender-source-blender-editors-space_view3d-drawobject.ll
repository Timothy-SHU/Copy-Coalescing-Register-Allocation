; ModuleID = 'blender/source/blender/editors/space_view3d/drawobject.c'
source_filename = "blender/source/blender/editors/space_view3d/drawobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
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
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ViewCachedString = type { ptr, [3 x float], %union.anon, [2 x i16], i16, i16, i32, [0 x i8] }
%union.anon = type { i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.BoundBox = type { [8 x [3 x float]], i32, i32 }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.MetaBall = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, i16, i16, [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.SoftBody = type { i32, i32, ptr, ptr, i8, i8, i16, float, [64 x i8], float, float, float, float, float, float, float, float, float, i16, [64 x i8], i16, float, float, [64 x i8], i32, i32, i32, i16, i16, ptr, i32, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, float, float, ptr, %struct.ListBase, ptr, [3 x float], [3 x [3 x float]], [3 x [3 x float]], i32 }
%struct.PartDeflect = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, float, i32, ptr }
%struct.PTCacheEdit = type { %struct.ListBase, ptr, ptr, %struct.PTCacheID, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, i32, i32, i32, i32, [3 x i8], [3 x i8] }
%struct.PTCacheID = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SmokeModifierData = type { %struct.ModifierData, ptr, ptr, ptr, float, i32 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.SmokeDomainSettings = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x i32], [3 x float], [3 x float], [4 x [4 x float]], [4 x [4 x float]], [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, float, float, i32, i32, float, float, float, i32, i32, i32, i32, i16, i16, i32, float, [3 x i32], float, i32, i32, [2 x ptr], [2 x %struct.ListBase], ptr, i32, float, float, i32, [3 x float], i32, float, float, float, float, float, [3 x float] }
%struct.PointCache = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [64 x i8], [64 x i8], [64 x i8], [1024 x i8], ptr, %struct.ListBase, ptr, ptr }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.bRigidBodyJointConstraint = type { ptr, ptr, i32, float, float, float, float, float, float, [6 x float], [6 x float], float, i16, i16, i16, i16 }
%struct.bFollowTrackConstraint = type { ptr, [64 x i8], i32, i32, [64 x i8], ptr, ptr }
%struct.bObjectSolverConstraint = type { ptr, i32, i32, [64 x i8], [4 x [4 x float]], ptr }
%struct.bConstraintTypeInfo = type { i16, i16, [32 x i8], [32 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bConstraintTarget = type { ptr, ptr, ptr, [64 x i8], [4 x [4 x float]], i16, i16, i16, i16 }
%struct.RigidBodyCon = type { ptr, ptr, i16, i16, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.EditFont = type { ptr, ptr, ptr, ptr, ptr, [4 x [2 x float]], i32, i32, i32, i32 }
%struct.TextBox = type { float, float, float, float }
%struct.EditFontSelBox = type { float, float, float, float, float }
%struct.CurveCache = type { %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.BevList = type { ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.BevPoint] }
%struct.BevPoint = type { [3 x float], float, float, float, float, float, float, [3 x float], [3 x float], [4 x float], i16, i16 }
%struct.MetaElem = type { ptr, ptr, ptr, i16, i16, i16, i16, float, float, float, [4 x float], float, float, float, float, float, float, float, ptr, ptr }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.RenderSlot = type { [64 x i8] }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.Camera = type { %struct.ID, ptr, i8, i8, i16, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, i8, [7 x i8] }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }
%struct.ParticleKey = type { [3 x float], [3 x float], [4 x float], [3 x float], float }
%struct.ParticleBillboardData = type { ptr, [3 x float], [3 x float], [2 x float], [2 x float], float, float, float, [3 x i32], i32, i32, i32, i32, i16, i16, i16, i16 }
%struct.ParticleSimulationData = type { ptr, ptr, ptr, ptr, ptr, float }
%struct.ParticleDrawData = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.ParticleData = type { %struct.ParticleKey, %struct.ParticleKey, ptr, ptr, ptr, i32, float, float, float, i32, i32, [4 x float], float, float, float, i32, i32, i16, i16 }
%struct.BoidParticle = type { ptr, %struct.BoidData, [3 x float], [3 x float], float }
%struct.BoidData = type { float, [3 x float], i16, i16 }
%struct.ChildParticle = type { i32, i32, [4 x i32], [4 x float], [4 x float], float, float }
%struct.ParticleCacheKey = type { [3 x float], [3 x float], [4 x float], [3 x float], float, i32 }
%struct.PTCacheEditPoint = type { ptr, i32, i16 }
%struct.PTCacheEditKey = type { ptr, ptr, ptr, ptr, [3 x float], float, float, i16 }
%struct.RigidBodyOb = type { ptr, ptr, i16, i16, i32, i32, i16, i16, float, float, float, float, float, float, float, float, [4 x float], [3 x float], float }
%struct.HookModifierData = type { %struct.ModifierData, ptr, [64 x i8], [4 x [4 x float]], [3 x float], float, ptr, i32, float, [64 x i8] }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.drawBMOffset_userData = type { ptr, i32 }
%struct.DispList = type { ptr, ptr, i16, i16, i32, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr }
%struct.BMEditSelection = type { ptr, ptr, ptr, i8 }
%struct.GPUVertexAttribs = type { [32 x %struct.anon], i32 }
%struct.anon = type { i32, i32, i32, i32, [64 x i8] }
%struct.SculptSession = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, i8, i8, ptr, ptr, ptr, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i8, [3 x float], [3 x float], i32 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.drawDMFacesSel_userData = type { [3 x ptr], ptr, ptr, ptr, ptr, ptr }
%struct.drawDMLayer_userData = type { ptr, i32 }
%struct.drawDMNormal_userData = type { ptr, i32, float, [3 x [3 x float]], [3 x [3 x float]] }
%struct.BMIter = type { %union.anon.0, ptr, ptr, i32, i8 }
%union.anon.0 = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.bglMats = type { [16 x double], [16 x double], [4 x i32] }
%struct.BMEditMesh = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i64, ptr, i32, ptr, i32, i16, i16, ptr, i32 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drawDMEdgesSel_userData = type { ptr, ptr, ptr, ptr, ptr }
%struct.drawDMEdgesWeightInterp_userData = type { ptr, i32, i32, i32, i8, [3 x float] }
%struct.drawDMEdgesSelInterp_userData = type { ptr, ptr, ptr, ptr }
%struct.drawDMVerts_userData = type { ptr, ptr, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], float, i32, [4 x [4 x float]] }
%struct.drawBMSelect_userData = type { ptr, i8 }
%struct.MVertSkin = type { [3 x float], i32 }
%struct.drawDMVertSel_userData = type { ptr, i32, [3 x ptr], i8 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.MovieTrackingObject = type { ptr, ptr, [64 x i8], i32, float, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, i32, i32 }
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }
%struct.MovieReconstructedCamera = type { i32, float, [4 x [4 x float]] }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.MDeformWeight = type { i32, float }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.drawMVertOffset_userData = type { ptr, i32 }

@G = external local_unnamed_addr global %struct.Global, align 8
@g_v3d_string_level = internal unnamed_addr global i32 -1, align 4
@g_v3d_strings_arena = internal unnamed_addr global ptr null, align 8
@__func__.view3d_cached_text_draw_add = private unnamed_addr constant [28 x i8] c"view3d_cached_text_draw_add\00", align 1
@g_v3d_strings = internal unnamed_addr global [3 x ptr] zeroinitializer, align 16
@view3d_camera_border_hack_test = dso_local local_unnamed_addr global i8 0, align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@CD_MASK_BAREMESH = external local_unnamed_addr constant i64, align 8
@bm_solidoffs = external local_unnamed_addr global i32, align 4
@bm_wireoffs = external local_unnamed_addr global i32, align 4
@bm_vertoffs = external local_unnamed_addr global i32, align 4
@view3d_camera_border_hack_col = dso_local global [3 x i8] zeroinitializer, align 1
@sinval = internal unnamed_addr constant [32 x float] [float 0.000000e+00, float 0x3FC9C42660000000, float 0x3FD93D2060000000, float 0x3FE247D440000000, float 0x3FE73180A0000000, float 0x3FEB281800000000, float 0x3FEE0210C0000000, float 0x3FEFA18860000000, float 0x3FEFF57C40000000, float 0x3FEEFA7CE0000000, float 0x3FECBAD0A0000000, float 0x3FE94E08E0000000, float 0x3FE4D80B20000000, float 0x3FDF0F3000000000, float 0x3FD328C3E0000000, float 0x3FB9E62AC0000000, float 0xBFB9E62AC0000000, float 0xBFD328C3E0000000, float 0xBFDF0F3000000000, float 0xBFE4D80B20000000, float 0xBFE94E08E0000000, float 0xBFECBAD0A0000000, float 0xBFEEFA7CE0000000, float 0xBFEFF57C40000000, float 0xBFEFA18860000000, float 0xBFEE0210C0000000, float 0xBFEB281800000000, float 0xBFE73180A0000000, float 0xBFE247D440000000, float 0xBFD93D2060000000, float 0xBFC9C42660000000, float 0.000000e+00], align 16
@cosval = internal unnamed_addr constant [32 x float] [float 1.000000e+00, float 0x3FEF584F20000000, float 0x3FED681A40000000, float 0x3FEA43B1C0000000, float 0x3FE60C0460000000, float 0x3FE0ED45E0000000, float 0x3FD63A3FC0000000, float 0x3FC361FC40000000, float 0xBFA9EEAFC0000000, float 0xBFD00AB0E0000000, float 0xBFDC2F6B00000000, float 0xBFE3965F40000000, float 0xBFE847BF20000000, float 0xBFEBFAA5C0000000, float 0xBFEE884F00000000, float 0xBFEFD5F820000000, float 0xBFEFD5F820000000, float 0xBFEE884F00000000, float 0xBFEBFAA5C0000000, float 0xBFE847BF20000000, float 0xBFE3965F40000000, float 0xBFDC2F6B00000000, float 0xBFD00AB0E0000000, float 0xBFA9EEAFC0000000, float 0x3FC361FC40000000, float 0x3FD63A3FC0000000, float 0x3FE0ED45E0000000, float 0x3FE60C0460000000, float 0x3FEA43B1C0000000, float 0x3FED681A40000000, float 0x3FEF584F20000000, float 1.000000e+00], align 16
@draw_empty_sphere.displist = internal unnamed_addr global i32 0, align 4
@colortab = internal unnamed_addr constant [3 x i32] [i32 0, i32 4206592, i32 16777096], align 4
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"matcap material\00", align 1
@defmaterial = external local_unnamed_addr global %struct.Material, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%.6g\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%.5g\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%.4g\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%.3g\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%.2g\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%.3f\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@__const.draw_mesh_fancy.spec = private unnamed_addr constant [4 x float] [float 0x3FDE147AE0000000, float 0x3FDE147AE0000000, float 0x3FDE147AE0000000, float 0x3FDE147AE0000000], align 16
@__const.drawSelectedVertices.sel_col = private unnamed_addr constant [3 x i8] c"\D8\B8\00", align 1
@__const.draw_bounding_volume.min = private unnamed_addr constant [3 x float] [float -1.000000e+00, float -1.000000e+00, float -1.000000e+00], align 4
@__const.draw_bounding_volume.max = private unnamed_addr constant [3 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 4
@index3_nors_incr = internal unnamed_addr global i1 false, align 1
@draw_bundle_sphere.displist = internal unnamed_addr global i32 0, align 4
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [16 x i8] c"ParticlDrawData\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"particle_vdata\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"particle_cdata\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"particle_ndata\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"particle_vedata\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"%d:%.2f\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"%.2f\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@PSYS_FRAND_SEED_OFFSET = external local_unnamed_addr global [1024 x i32], align 16
@PSYS_FRAND_SEED_MULTIPLIER = external local_unnamed_addr global [1024 x i32], align 16
@PSYS_FRAND_BASE = external local_unnamed_addr global [1024 x float], align 16
@.str.17 = private unnamed_addr constant [25 x i8] c"particle path color data\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"particle edit point data\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"particle edit color data\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"px\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"py\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"pz\00", align 1
@reltable.draw_rigid_body_pivot = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.20 to i64), i64 ptrtoint (ptr @reltable.draw_rigid_body_pivot to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.21 to i64), i64 ptrtoint (ptr @reltable.draw_rigid_body_pivot to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.22 to i64), i64 ptrtoint (ptr @reltable.draw_rigid_body_pivot to i64)) to i32)], align 4
@str = private unnamed_addr constant [53 x i8] c"Billboards need an active camera or a target object!\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @check_object_draw_texture(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 24
  %5 = load i16, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i16 %5, 5
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = icmp eq i16 %5, 4
  %9 = icmp ugt i8 %2, 3
  %10 = and i1 %9, %8
  br i1 %10, label %29, label %13

11:                                               ; preds = %3
  %12 = icmp ugt i8 %2, 3
  br i1 %12, label %29, label %23

13:                                               ; preds = %7
  %14 = icmp eq i16 %5, 3
  br i1 %14, label %15, label %23

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 29
  %17 = load i16, ptr %16, align 2, !tbaa !15
  %18 = and i16 %17, 8
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %0) #20
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %11, %20, %15, %13
  %24 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 29
  %25 = load i16, ptr %24, align 2, !tbaa !15
  %26 = lshr i16 %25, 13
  %27 = trunc i16 %26 to i8
  %28 = and i8 %27, 1
  br label %29

29:                                               ; preds = %23, %20, %11, %7
  %30 = phi i8 [ 1, %7 ], [ 1, %11 ], [ 1, %20 ], [ %28, %23 ]
  ret i8 %30
}

; Function Attrs: optsize
declare zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @draw_glsl_material(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = tail call i32 @GPU_glsl_support() #20
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %52, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !16
  %9 = and i32 %8, 32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %52

11:                                               ; preds = %7
  %12 = tail call zeroext i8 @check_object_draw_texture(ptr noundef %0, ptr noundef %2, i8 noundef zeroext %3) #21, !range !18
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %52, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !19
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Base, ptr %16, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !39
  br label %21

21:                                               ; preds = %14, %18
  %22 = phi ptr [ %20, %18 ], [ null, %14 ]
  %23 = icmp eq ptr %22, %1
  %24 = icmp ne ptr %1, null
  %25 = and i1 %24, %23
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %28 = load i32, ptr %27, align 8, !tbaa !41
  %29 = and i32 %28, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %26, %21
  %32 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 29
  %33 = load i16, ptr %32, align 2, !tbaa !15
  %34 = and i16 %33, 8192
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %31
  %37 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef nonnull %0) #20
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 37, i32 20
  %41 = load i16, ptr %40, align 2, !tbaa !44
  %42 = icmp eq i16 %41, 2
  %43 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 24
  %44 = load i16, ptr %43, align 8, !tbaa !5
  %45 = icmp eq i16 %44, 5
  %46 = select i1 %42, i1 %45, i1 false
  %47 = icmp eq i16 %44, 4
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = icmp ugt i8 %3, 3
  %51 = zext i1 %50 to i8
  br label %52

52:                                               ; preds = %39, %49, %36, %31, %26, %11, %7, %4
  %53 = phi i8 [ 0, %4 ], [ 0, %7 ], [ 0, %11 ], [ 0, %26 ], [ 1, %31 ], [ 0, %36 ], [ %51, %49 ], [ 0, %39 ]
  ret i8 %53
}

; Function Attrs: optsize
declare i32 @GPU_glsl_support() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @drawaxes(float noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  switch i8 %1, label %8 [
    i8 2, label %6
    i8 4, label %18
    i8 5, label %45
    i8 3, label %46
    i8 6, label %47
    i8 7, label %48
  ]

6:                                                ; preds = %2
  %7 = fneg float %0
  br label %12

8:                                                ; preds = %2
  %9 = fmul float %0, 0x3FEB333340000000
  %10 = fmul float %0, 0xBFB47AE140000000
  %11 = fmul float %0, 0x3FB47AE140000000
  br label %49

12:                                               ; preds = %6, %12
  %13 = phi i64 [ 0, %6 ], [ %16, %12 ]
  call void @glBegin(i32 noundef 1) #20
  %14 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %13
  store float %0, ptr %14, align 4, !tbaa !45
  %15 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %13
  store float %7, ptr %15, align 4, !tbaa !45
  call void @glVertex3fv(ptr noundef nonnull %3) #20
  call void @glVertex3fv(ptr noundef nonnull %4) #20
  store float 0.000000e+00, ptr %15, align 4, !tbaa !45
  store float 0.000000e+00, ptr %14, align 4, !tbaa !45
  call void @glEnd() #20
  %16 = add nuw nsw i64 %13, 1
  %17 = icmp eq i64 %16, 3
  br i1 %17, label %61, label %12, !llvm.loop !46

18:                                               ; preds = %2
  tail call void @glBegin(i32 noundef 1) #20
  %19 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float %0, ptr %19, align 4, !tbaa !45
  call void @glVertex3fv(ptr noundef nonnull %3) #20
  call void @glVertex3fv(ptr noundef nonnull %4) #20
  call void @glEnd() #20
  call void @glBegin(i32 noundef 4) #20
  %20 = insertelement <2 x float> poison, float %0, i64 0
  %21 = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> zeroinitializer
  %22 = fmul <2 x float> %21, <float 0x3FA1EB8520000000, float 7.500000e-01>
  %23 = extractelement <2 x float> %22, i64 0
  store float %23, ptr %4, align 4, !tbaa !45
  %24 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %25 = fmul float %0, 0xBFA1EB8520000000
  store float %25, ptr %5, align 4, !tbaa !45
  %26 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  store <2 x float> %22, ptr %26, align 4, !tbaa !45
  store <2 x float> %22, ptr %24, align 4, !tbaa !45
  br label %27

27:                                               ; preds = %18, %41
  %28 = phi i32 [ 0, %18 ], [ %42, %41 ]
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load float, ptr %4, align 4, !tbaa !45
  %33 = fneg float %32
  store float %33, ptr %4, align 4, !tbaa !45
  %34 = load float, ptr %26, align 4, !tbaa !45
  %35 = fneg float %34
  store float %35, ptr %26, align 4, !tbaa !45
  br label %41

36:                                               ; preds = %27
  %37 = load float, ptr %24, align 4, !tbaa !45
  %38 = fneg float %37
  store float %38, ptr %24, align 4, !tbaa !45
  %39 = load float, ptr %5, align 4, !tbaa !45
  %40 = fneg float %39
  store float %40, ptr %5, align 4, !tbaa !45
  br label %41

41:                                               ; preds = %36, %31
  call void @glVertex3fv(ptr noundef nonnull %3) #20
  call void @glVertex3fv(ptr noundef nonnull %4) #20
  call void @glVertex3fv(ptr noundef nonnull %5) #20
  %42 = add nuw nsw i32 %28, 1
  %43 = icmp eq i32 %42, 4
  br i1 %43, label %44, label %27, !llvm.loop !48

44:                                               ; preds = %41
  call void @glEnd() #20
  br label %61

45:                                               ; preds = %2
  tail call fastcc void @drawcube_size(float noundef %0) #21
  br label %61

46:                                               ; preds = %2
  tail call fastcc void @drawcircle_size(float noundef %0) #21
  br label %61

47:                                               ; preds = %2
  tail call fastcc void @draw_empty_sphere(float noundef %0) #21
  br label %61

48:                                               ; preds = %2
  tail call fastcc void @draw_empty_cone(float noundef %0) #21
  br label %61

49:                                               ; preds = %8, %49
  %50 = phi i64 [ 0, %8 ], [ %59, %49 ]
  %51 = icmp eq i64 %50, 0
  call void @glBegin(i32 noundef 1) #20
  %52 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 %50
  store float %0, ptr %52, align 4, !tbaa !45
  call void @glVertex3fv(ptr noundef nonnull %3) #20
  call void @glVertex3fv(ptr noundef nonnull %4) #20
  %53 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %50
  store float %9, ptr %53, align 4, !tbaa !45
  %54 = zext i1 %51 to i64
  %55 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 %54
  store float %10, ptr %55, align 4, !tbaa !45
  call void @glVertex3fv(ptr noundef nonnull %3) #20
  call void @glVertex3fv(ptr noundef nonnull %4) #20
  store float %11, ptr %55, align 4, !tbaa !45
  call void @glVertex3fv(ptr noundef nonnull %3) #20
  call void @glVertex3fv(ptr noundef nonnull %4) #20
  call void @glEnd() #20
  %56 = load float, ptr %52, align 4, !tbaa !45
  %57 = call float @llvm.fmuladd.f32(float %0, float 1.250000e-01, float %56)
  store float %57, ptr %52, align 4, !tbaa !45
  %58 = trunc i64 %50 to i32
  call fastcc void @draw_xyz_wire(ptr noundef nonnull %4, float noundef %0, i32 noundef %58) #21
  store float 0.000000e+00, ptr %52, align 4, !tbaa !45
  store float 0.000000e+00, ptr %53, align 4, !tbaa !45
  store float 0.000000e+00, ptr %55, align 4, !tbaa !45
  %59 = add nuw nsw i64 %50, 1
  %60 = icmp eq i64 %59, 3
  br i1 %60, label %61, label %49, !llvm.loop !49

61:                                               ; preds = %12, %49, %48, %47, %46, %45, %44
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glVertex3fv(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawcube_size(float noundef %0) unnamed_addr #0 {
  tail call void @glBegin(i32 noundef 3) #20
  %2 = fneg float %0
  tail call void @glVertex3f(float noundef %2, float noundef %2, float noundef %2) #20
  tail call void @glVertex3f(float noundef %2, float noundef %2, float noundef %0) #20
  tail call void @glVertex3f(float noundef %2, float noundef %0, float noundef %0) #20
  tail call void @glVertex3f(float noundef %2, float noundef %0, float noundef %2) #20
  tail call void @glVertex3f(float noundef %2, float noundef %2, float noundef %2) #20
  tail call void @glVertex3f(float noundef %0, float noundef %2, float noundef %2) #20
  tail call void @glVertex3f(float noundef %0, float noundef %2, float noundef %0) #20
  tail call void @glVertex3f(float noundef %0, float noundef %0, float noundef %0) #20
  tail call void @glVertex3f(float noundef %0, float noundef %0, float noundef %2) #20
  tail call void @glVertex3f(float noundef %0, float noundef %2, float noundef %2) #20
  tail call void @glEnd() #20
  tail call void @glBegin(i32 noundef 3) #20
  tail call void @glVertex3f(float noundef %2, float noundef %2, float noundef %0) #20
  tail call void @glVertex3f(float noundef %0, float noundef %2, float noundef %0) #20
  tail call void @glEnd() #20
  tail call void @glBegin(i32 noundef 3) #20
  tail call void @glVertex3f(float noundef %2, float noundef %0, float noundef %0) #20
  tail call void @glVertex3f(float noundef %0, float noundef %0, float noundef %0) #20
  tail call void @glEnd() #20
  tail call void @glBegin(i32 noundef 3) #20
  tail call void @glVertex3f(float noundef %2, float noundef %0, float noundef %2) #20
  tail call void @glVertex3f(float noundef %0, float noundef %0, float noundef %2) #20
  tail call void @glEnd() #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawcircle_size(float noundef %0) unnamed_addr #0 {
  tail call void @glBegin(i32 noundef 2) #20
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i64 [ 0, %1 ], [ %10, %2 ]
  %4 = getelementptr inbounds [32 x float], ptr @cosval, i64 0, i64 %3
  %5 = load float, ptr %4, align 4, !tbaa !45
  %6 = getelementptr inbounds [32 x float], ptr @sinval, i64 0, i64 %3
  %7 = load float, ptr %6, align 4, !tbaa !45
  %8 = fmul float %5, %0
  %9 = fmul float %7, %0
  tail call void @glVertex3f(float noundef %8, float noundef 0.000000e+00, float noundef %9) #20
  %10 = add nuw nsw i64 %3, 1
  %11 = icmp eq i64 %10, 32
  br i1 %11, label %12, label %2, !llvm.loop !50

12:                                               ; preds = %2
  tail call void @glEnd() #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_empty_sphere(float noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr @draw_empty_sphere.displist, align 4, !tbaa !51
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = tail call i32 @glGenLists(i32 noundef 1) #20
  store i32 %5, ptr @draw_empty_sphere.displist, align 4, !tbaa !51
  tail call void @glNewList(i32 noundef %5, i32 noundef 4864) #20
  tail call void @glPushMatrix() #20
  %6 = tail call ptr @gluNewQuadric() #20
  tail call void @gluQuadricDrawStyle(ptr noundef %6, i32 noundef 100013) #20
  tail call void @gluDisk(ptr noundef %6, double noundef 0.000000e+00, double noundef 1.000000e+00, i32 noundef 16, i32 noundef 1) #20
  tail call void @glRotatef(float noundef 9.000000e+01, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 0.000000e+00) #20
  tail call void @gluDisk(ptr noundef %6, double noundef 0.000000e+00, double noundef 1.000000e+00, i32 noundef 16, i32 noundef 1) #20
  tail call void @glRotatef(float noundef 9.000000e+01, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #20
  tail call void @gluDisk(ptr noundef %6, double noundef 0.000000e+00, double noundef 1.000000e+00, i32 noundef 16, i32 noundef 1) #20
  tail call void @gluDeleteQuadric(ptr noundef %6) #20
  tail call void @glPopMatrix() #20
  tail call void @glEndList() #20
  br label %7

7:                                                ; preds = %4, %1
  tail call void @glScalef(float noundef %0, float noundef %0, float noundef %0) #20
  %8 = load i32, ptr @draw_empty_sphere.displist, align 4, !tbaa !51
  tail call void @glCallList(i32 noundef %8) #20
  %9 = fdiv float 1.000000e+00, %0
  tail call void @glScalef(float noundef %9, float noundef %9, float noundef %9) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_empty_cone(float noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @gluNewQuadric() #20
  tail call void @gluQuadricDrawStyle(ptr noundef %2, i32 noundef 100013) #20
  tail call void @glPushMatrix() #20
  tail call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #20
  %3 = fmul float %0, 2.000000e+00
  tail call void @glScalef(float noundef %0, float noundef %3, float noundef %0) #20
  tail call void @glRotatef(float noundef -9.000000e+01, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #20
  tail call void @gluCylinder(ptr noundef %2, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00, i32 noundef 8, i32 noundef 1) #20
  tail call void @glPopMatrix() #20
  tail call void @gluDeleteQuadric(ptr noundef %2) #20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_xyz_wire(ptr nocapture noundef readonly %0, float noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  %9 = fmul float %1, 0x3FB99999A0000000
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #22
  store float %9, ptr %6, align 4, !tbaa !45
  %10 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  store <2 x float> zeroinitializer, ptr %10, align 4, !tbaa !45
  store float 0.000000e+00, ptr %7, align 4, !tbaa !45
  %11 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  store float %9, ptr %11, align 4, !tbaa !45
  %12 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float 0.000000e+00, ptr %12, align 4, !tbaa !45
  store <2 x float> zeroinitializer, ptr %8, align 8, !tbaa !45
  %13 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float %9, ptr %13, align 8, !tbaa !45
  switch i32 %2, label %19 [
    i32 0, label %14
    i32 1, label %15
    i32 2, label %16
  ]

14:                                               ; preds = %3
  tail call void @glBegin(i32 noundef 1) #20
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %6) #21
  call fastcc void @sub_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %7) #21
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %5, ptr noundef %0, ptr noundef nonnull %6) #21
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %7) #21
  call void @glVertex3fv(ptr noundef nonnull %4) #20
  call void @glVertex3fv(ptr noundef nonnull %5) #20
  call fastcc void @mul_v3_fl(ptr noundef nonnull %7, float noundef 2.000000e+00) #21
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %7) #21
  call fastcc void @sub_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %7) #21
  call void @glVertex3fv(ptr noundef nonnull %4) #20
  br label %17

15:                                               ; preds = %3
  tail call void @glBegin(i32 noundef 1) #20
  call fastcc void @mul_v3_fl(ptr noundef nonnull %6, float noundef 7.500000e-01) #21
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %6) #21
  call fastcc void @sub_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %7) #21
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %5, ptr noundef %0, ptr noundef nonnull %6) #21
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %7) #21
  call void @glVertex3fv(ptr noundef nonnull %4) #20
  call void @glVertex3fv(ptr noundef nonnull %5) #20
  call fastcc void @mul_v3_fl(ptr noundef nonnull %7, float noundef 2.000000e+00) #21
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %7) #21
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %0) #21
  call void @glVertex3fv(ptr noundef nonnull %4) #20
  br label %17

16:                                               ; preds = %3
  tail call void @glBegin(i32 noundef 3) #20
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %6) #21
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %8) #21
  call void @glVertex3fv(ptr noundef nonnull %4) #20
  call fastcc void @mul_v3_fl(ptr noundef nonnull %6, float noundef 2.000000e+00) #21
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %6) #21
  call void @glVertex3fv(ptr noundef nonnull %4) #20
  call fastcc void @mul_v3_fl(ptr noundef nonnull %8, float noundef 2.000000e+00) #21
  call fastcc void @sub_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %6) #21
  call fastcc void @sub_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %8) #21
  call void @glVertex3fv(ptr noundef nonnull %4) #20
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %6) #21
  br label %17

17:                                               ; preds = %14, %15, %16
  %18 = phi ptr [ %4, %16 ], [ %5, %15 ], [ %5, %14 ]
  call void @glVertex3fv(ptr noundef nonnull %18) #20
  call void @glEnd() #20
  br label %19

19:                                               ; preds = %17, %3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @drawcircball(i32 noundef %0, ptr nocapture noundef readonly %1, float noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca [32 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %5) #22
  call fastcc void @circball_array_fill(ptr noundef nonnull %5, ptr noundef %1, float noundef %2, ptr noundef %3) #21
  tail call void @glEnableClientState(i32 noundef 32884) #20
  call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %5) #20
  call void @glDrawArrays(i32 noundef %0, i32 noundef 0, i32 noundef 32) #20
  call void @glDisableClientState(i32 noundef 32884) #20
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %5) #22
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @circball_array_fill(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #5 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #22
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %5, ptr noundef %3, float noundef %2) #21
  %7 = getelementptr inbounds [4 x float], ptr %3, i64 1
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %6, ptr noundef nonnull %7, float noundef %2) #21
  %8 = load float, ptr %5, align 4, !tbaa !45
  %9 = load float, ptr %6, align 4, !tbaa !45
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !45
  %13 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !45
  %15 = getelementptr inbounds float, ptr %1, i64 2
  %16 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !45
  %18 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !45
  br label %20

20:                                               ; preds = %4, %20
  %21 = phi i64 [ 0, %4 ], [ %38, %20 ]
  %22 = phi ptr [ %0, %4 ], [ %39, %20 ]
  %23 = load float, ptr %1, align 4, !tbaa !45
  %24 = getelementptr inbounds [32 x float], ptr @sinval, i64 0, i64 %21
  %25 = load float, ptr %24, align 4, !tbaa !45
  %26 = tail call float @llvm.fmuladd.f32(float %25, float %8, float %23)
  %27 = getelementptr inbounds [32 x float], ptr @cosval, i64 0, i64 %21
  %28 = load float, ptr %27, align 4, !tbaa !45
  %29 = tail call float @llvm.fmuladd.f32(float %28, float %9, float %26)
  store float %29, ptr %22, align 4, !tbaa !45
  %30 = load float, ptr %10, align 4, !tbaa !45
  %31 = tail call float @llvm.fmuladd.f32(float %25, float %12, float %30)
  %32 = tail call float @llvm.fmuladd.f32(float %28, float %14, float %31)
  %33 = getelementptr inbounds float, ptr %22, i64 1
  store float %32, ptr %33, align 4, !tbaa !45
  %34 = load float, ptr %15, align 4, !tbaa !45
  %35 = tail call float @llvm.fmuladd.f32(float %25, float %17, float %34)
  %36 = tail call float @llvm.fmuladd.f32(float %28, float %19, float %35)
  %37 = getelementptr inbounds float, ptr %22, i64 2
  store float %36, ptr %37, align 4, !tbaa !45
  %38 = add nuw nsw i64 %21, 1
  %39 = getelementptr inbounds float, ptr %22, i64 3
  %40 = icmp eq i64 %38, 32
  br i1 %40, label %41, label %20, !llvm.loop !52

41:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  ret void
}

; Function Attrs: optsize
declare void @glEnableClientState(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glVertexPointer(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glDrawArrays(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glDisableClientState(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @view3d_cached_text_draw_begin() local_unnamed_addr #6 {
  %1 = load i32, ptr @g_v3d_string_level, align 4, !tbaa !51
  %2 = add nsw i32 %1, 1
  store i32 %2, ptr @g_v3d_string_level, align 4, !tbaa !51
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @view3d_cached_text_draw_add(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, i16 noundef signext %3, i16 noundef signext %4, ptr nocapture noundef readonly %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr @g_v3d_strings_arena, align 8, !tbaa !53
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @__func__.view3d_cached_text_draw_add) #20
  store ptr %10, ptr @g_v3d_strings_arena, align 8, !tbaa !53
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi ptr [ %10, %9 ], [ %7, %6 ]
  %13 = shl i64 %2, 32
  %14 = add i64 %13, 4294967296
  %15 = ashr exact i64 %14, 32
  %16 = add nsw i64 %15, 40
  %17 = tail call ptr @BLI_memarena_alloc(ptr noundef %12, i64 noundef %16) #20
  %18 = load i32, ptr @g_v3d_string_level, align 4, !tbaa !51
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [3 x ptr], ptr @g_v3d_strings, i64 0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !53
  store ptr %21, ptr %17, align 8, !tbaa !53
  store ptr %17, ptr %20, align 8, !tbaa !53
  %22 = getelementptr inbounds %struct.ViewCachedString, ptr %17, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %22, ptr noundef %0) #21
  %23 = getelementptr inbounds %struct.ViewCachedString, ptr %17, i64 0, i32 2
  tail call fastcc void @copy_v4_v4_char(ptr noundef nonnull %23, ptr noundef %5) #21
  %24 = getelementptr inbounds %struct.ViewCachedString, ptr %17, i64 0, i32 4
  store i16 %3, ptr %24, align 4, !tbaa !54
  %25 = getelementptr inbounds %struct.ViewCachedString, ptr %17, i64 0, i32 5
  store i16 %4, ptr %25, align 2, !tbaa !54
  %26 = trunc i64 %2 to i32
  %27 = getelementptr inbounds %struct.ViewCachedString, ptr %17, i64 0, i32 6
  store i32 %26, ptr %27, align 8, !tbaa !51
  %28 = getelementptr inbounds %struct.ViewCachedString, ptr %17, i64 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %28, ptr align 1 %1, i64 %15, i1 false)
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 {
  %3 = load float, ptr %1, align 4, !tbaa !45
  store float %3, ptr %0, align 4, !tbaa !45
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !45
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !45
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !45
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4_char(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 {
  %3 = load i8, ptr %1, align 1, !tbaa !55
  store i8 %3, ptr %0, align 1, !tbaa !55
  %4 = getelementptr inbounds i8, ptr %1, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !55
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %5, ptr %6, align 1, !tbaa !55
  %7 = getelementptr inbounds i8, ptr %1, i64 2
  %8 = load i8, ptr %7, align 1, !tbaa !55
  %9 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !55
  %10 = getelementptr inbounds i8, ptr %1, i64 3
  %11 = load i8, ptr %10, align 1, !tbaa !55
  %12 = getelementptr inbounds i8, ptr %0, i64 3
  store i8 %11, ptr %12, align 1, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @view3d_cached_text_draw_end(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = load i32, ptr @g_v3d_string_level, align 4, !tbaa !51
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [3 x ptr], ptr @g_v3d_strings, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !53
  %11 = icmp eq ptr %10, null
  br i1 %11, label %120, label %12

12:                                               ; preds = %4
  %13 = icmp eq ptr %3, null
  %14 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 3
  %15 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 6
  br label %16

16:                                               ; preds = %12, %42
  %17 = phi ptr [ %10, %12 ], [ %44, %42 ]
  %18 = phi i32 [ 0, %12 ], [ %43, %42 ]
  br i1 %13, label %26, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.ViewCachedString, ptr %17, i64 0, i32 5
  %21 = load i16, ptr %20, align 2, !tbaa !54
  %22 = and i16 %21, 2
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.ViewCachedString, ptr %17, i64 0, i32 1
  tail call void @mul_m4_v3(ptr noundef nonnull %3, ptr noundef nonnull %25) #20
  br label %26

26:                                               ; preds = %24, %19, %16
  %27 = getelementptr inbounds %struct.ViewCachedString, ptr %17, i64 0, i32 5
  %28 = load i16, ptr %27, align 2, !tbaa !54
  %29 = and i16 %28, 8
  %30 = icmp eq i16 %29, 0
  %31 = select i1 %30, ptr %15, ptr %14
  %32 = trunc i16 %28 to i8
  %33 = lshr i8 %32, 4
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.ViewCachedString, ptr %17, i64 0, i32 1
  %36 = getelementptr inbounds %struct.ViewCachedString, ptr %17, i64 0, i32 3
  %37 = tail call i32 @ED_view3d_project_short_ex(ptr noundef %1, ptr noundef nonnull %31, i8 noundef zeroext %34, ptr noundef nonnull %35, ptr noundef nonnull %36, i32 noundef 7) #20
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = add nsw i32 %18, 1
  br label %42

41:                                               ; preds = %26
  store i16 12000, ptr %36, align 8, !tbaa !54
  br label %42

42:                                               ; preds = %39, %41
  %43 = phi i32 [ %40, %39 ], [ %18, %41 ]
  %44 = load ptr, ptr %17, align 8, !tbaa !53
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %16, !llvm.loop !59

46:                                               ; preds = %42
  %47 = icmp eq i32 %43, 0
  br i1 %47, label %120, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.RegionView3D, ptr %6, i64 0, i32 32
  %50 = load i16, ptr %49, align 2, !tbaa !60
  %51 = and i16 %50, 4
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  tail call void @ED_view3d_clipping_disable() #20
  br label %54

54:                                               ; preds = %53, %48
  tail call void @glMatrixMode(i32 noundef 5889) #20
  tail call void @glPushMatrix() #20
  tail call void @glMatrixMode(i32 noundef 5888) #20
  tail call void @glPushMatrix() #20
  tail call void @wmOrtho2_region_ui(ptr noundef %1) #20
  tail call void @glLoadIdentity() #20
  %55 = icmp eq i8 %2, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 47
  %58 = load i8, ptr %57, align 8, !tbaa !62
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  tail call void @glDisable(i32 noundef 2929) #20
  br label %62

61:                                               ; preds = %54
  tail call void @glDepthMask(i8 noundef zeroext 0) #20
  br label %62

62:                                               ; preds = %56, %60, %61
  %63 = load i32, ptr @g_v3d_string_level, align 4, !tbaa !51
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [3 x ptr], ptr @g_v3d_strings, i64 0, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !53
  %67 = icmp eq ptr %66, null
  br i1 %67, label %108, label %68

68:                                               ; preds = %62
  %69 = select i1 %55, float 2.000000e+00, float 0.000000e+00
  br label %70

70:                                               ; preds = %68, %104
  %71 = phi ptr [ %66, %68 ], [ %106, %104 ]
  %72 = phi i32 [ 0, %68 ], [ %105, %104 ]
  %73 = getelementptr inbounds %struct.ViewCachedString, ptr %71, i64 0, i32 3
  %74 = load i16, ptr %73, align 8, !tbaa !54
  %75 = icmp eq i16 %74, 12000
  br i1 %75, label %104, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.ViewCachedString, ptr %71, i64 0, i32 2
  %78 = load i32, ptr %77, align 4, !tbaa !55
  %79 = icmp eq i32 %72, %78
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  tail call void @glColor3ubv(ptr noundef nonnull %77) #20
  %81 = load i32, ptr %77, align 4, !tbaa !55
  %82 = load i16, ptr %73, align 8, !tbaa !54
  br label %83

83:                                               ; preds = %80, %76
  %84 = phi i16 [ %82, %80 ], [ %74, %76 ]
  %85 = phi i32 [ %81, %80 ], [ %72, %76 ]
  %86 = getelementptr inbounds %struct.ViewCachedString, ptr %71, i64 0, i32 5
  %87 = load i16, ptr %86, align 2, !tbaa !54
  %88 = and i16 %87, 4
  %89 = icmp eq i16 %88, 0
  %90 = select i1 %89, ptr @BLF_draw_default, ptr @BLF_draw_default_ascii
  %91 = sext i16 %84 to i32
  %92 = getelementptr inbounds %struct.ViewCachedString, ptr %71, i64 0, i32 4
  %93 = load i16, ptr %92, align 4, !tbaa !54
  %94 = sext i16 %93 to i32
  %95 = add nsw i32 %94, %91
  %96 = sitofp i32 %95 to float
  %97 = getelementptr inbounds %struct.ViewCachedString, ptr %71, i64 0, i32 3, i64 1
  %98 = load i16, ptr %97, align 2, !tbaa !54
  %99 = sitofp i16 %98 to float
  %100 = getelementptr inbounds %struct.ViewCachedString, ptr %71, i64 0, i32 7
  %101 = getelementptr inbounds %struct.ViewCachedString, ptr %71, i64 0, i32 6
  %102 = load i32, ptr %101, align 8, !tbaa !51
  %103 = sext i32 %102 to i64
  tail call void %90(float noundef %96, float noundef %99, float noundef %69, ptr noundef nonnull %100, i64 noundef %103) #20, !callees !63
  br label %104

104:                                              ; preds = %70, %83
  %105 = phi i32 [ %85, %83 ], [ %72, %70 ]
  %106 = load ptr, ptr %71, align 8, !tbaa !53
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %70, !llvm.loop !64

108:                                              ; preds = %104, %62
  br i1 %55, label %114, label %109

109:                                              ; preds = %108
  %110 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 47
  %111 = load i8, ptr %110, align 8, !tbaa !62
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %109
  tail call void @glEnable(i32 noundef 2929) #20
  br label %115

114:                                              ; preds = %108
  tail call void @glDepthMask(i8 noundef zeroext 1) #20
  br label %115

115:                                              ; preds = %109, %113, %114
  tail call void @glMatrixMode(i32 noundef 5889) #20
  tail call void @glPopMatrix() #20
  tail call void @glMatrixMode(i32 noundef 5888) #20
  tail call void @glPopMatrix() #20
  %116 = load i16, ptr %49, align 2, !tbaa !60
  %117 = and i16 %116, 4
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %115
  tail call void @ED_view3d_clipping_enable() #20
  br label %120

120:                                              ; preds = %4, %115, %119, %46
  %121 = load i32, ptr @g_v3d_string_level, align 4, !tbaa !51
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [3 x ptr], ptr @g_v3d_strings, i64 0, i64 %122
  store ptr null, ptr %123, align 8, !tbaa !53
  %124 = icmp eq i32 %121, 0
  %125 = load ptr, ptr @g_v3d_strings_arena, align 8
  %126 = icmp ne ptr %125, null
  %127 = select i1 %124, i1 %126, i1 false
  br i1 %127, label %128, label %130

128:                                              ; preds = %120
  tail call void @BLI_memarena_free(ptr noundef nonnull %125) #20
  store ptr null, ptr @g_v3d_strings_arena, align 8, !tbaa !53
  %129 = load i32, ptr @g_v3d_string_level, align 4, !tbaa !51
  br label %130

130:                                              ; preds = %128, %120
  %131 = phi i32 [ %129, %128 ], [ %121, %120 ]
  %132 = add nsw i32 %131, -1
  store i32 %132, ptr @g_v3d_string_level, align 4, !tbaa !51
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ED_view3d_project_short_ex(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_view3d_clipping_disable() local_unnamed_addr #1

; Function Attrs: optsize
declare void @glMatrixMode(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glPushMatrix() local_unnamed_addr #1

; Function Attrs: optsize
declare void @wmOrtho2_region_ui(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glLoadIdentity() local_unnamed_addr #1

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glDepthMask(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glColor3ubv(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLF_draw_default_ascii(float noundef, float noundef, float noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLF_draw_default(float noundef, float noundef, float noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glPopMatrix() local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_view3d_clipping_enable() local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @draw_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef signext %4) local_unnamed_addr #0 {
  %6 = alloca [4 x i8], align 1
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [3 x float], align 8
  %11 = alloca [3 x float], align 8
  %12 = alloca [3 x float], align 4
  %13 = alloca %struct.BoundBox, align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [4 x [4 x float]], align 16
  %16 = alloca [3 x float], align 4
  %17 = alloca [4 x i8], align 1
  %18 = alloca [4 x i8], align 1
  %19 = alloca %struct.ListBase, align 8
  %20 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !39
  %22 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %23 = load ptr, ptr %22, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  %24 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !19
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.Base, ptr %25, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !39
  br label %30

30:                                               ; preds = %5, %27
  %31 = phi ptr [ %29, %27 ], [ null, %5 ]
  %32 = icmp eq ptr %21, %31
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 29
  %35 = load i16, ptr %34, align 2, !tbaa !15
  %36 = trunc i16 %35 to i8
  %37 = lshr i8 %36, 2
  %38 = and i8 %37, 1
  %39 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !16
  %40 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 109
  %41 = load ptr, ptr %40, align 8, !tbaa !65
  %42 = icmp eq ptr %41, null
  %43 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !66
  %45 = icmp eq ptr %21, %44
  br i1 %45, label %63, label %46

46:                                               ; preds = %30
  %47 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 102
  %48 = load i8, ptr %47, align 8, !tbaa !67
  %49 = zext i8 %48 to i32
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %914

52:                                               ; preds = %46
  %53 = icmp eq i8 %38, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %52
  %55 = and i32 %49, 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %914

57:                                               ; preds = %54
  br i1 %42, label %58, label %64

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 55
  %60 = load i16, ptr %59, align 8, !tbaa !68
  %61 = and i16 %60, 2832
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %82, label %914

63:                                               ; preds = %52, %30
  br i1 %42, label %82, label %64

64:                                               ; preds = %57, %63
  %65 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 13), align 2, !tbaa !69
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %914

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 27
  %69 = load i32, ptr %68, align 8, !tbaa !41
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %67, %75
  %72 = phi ptr [ %73, %75 ], [ %40, %67 ]
  %73 = load ptr, ptr %72, align 8, !tbaa !53
  %74 = icmp eq ptr %73, null
  br i1 %74, label %82, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.ParticleSystem, ptr %73, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !70
  %78 = getelementptr inbounds %struct.ParticleSettings, ptr %77, i64 0, i32 15
  %79 = load i32, ptr %78, align 8, !tbaa !72
  %80 = and i32 %79, 8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %71, label %82, !llvm.loop !74

82:                                               ; preds = %71, %75, %58, %67, %63
  %83 = phi i8 [ 0, %67 ], [ 0, %63 ], [ 0, %58 ], [ 0, %75 ], [ %38, %71 ]
  %84 = sext i16 %4 to i32
  %85 = and i32 %84, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %135

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 4
  %89 = load i32, ptr %88, align 8, !tbaa !75
  %90 = and i32 %89, 512
  %91 = icmp eq i32 %90, 0
  %92 = and i16 %35, 64
  %93 = icmp eq i16 %92, 0
  %94 = select i1 %91, i1 %93, i1 false
  br i1 %94, label %95, label %135

95:                                               ; preds = %87
  %96 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 27
  %97 = load i32, ptr %96, align 8, !tbaa !41
  %98 = and i32 %97, 32
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %135

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 49
  %102 = load i8, ptr %101, align 2, !tbaa !76
  %103 = icmp ne i8 %102, 0
  br i1 %103, label %115, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 48
  %106 = load i8, ptr %105, align 1, !tbaa !77
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 86
  %110 = load i16, ptr %109, align 4, !tbaa !78
  %111 = and i16 %110, 192
  %112 = icmp eq i16 %111, 64
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 45
  tail call void @ED_view3d_after_add(ptr noundef nonnull %114, ptr noundef nonnull %3, i16 noundef signext %4) #20
  br label %914

115:                                              ; preds = %108, %104, %100
  %116 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %117 = load i16, ptr %116, align 8, !tbaa !79
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %119, label %135

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 88
  %121 = load i8, ptr %120, align 1, !tbaa !80
  %122 = icmp ne i8 %121, 8
  %123 = or i1 %103, %122
  br i1 %123, label %135, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 48
  %126 = load i8, ptr %125, align 1, !tbaa !77
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 86
  %130 = load i16, ptr %129, align 4, !tbaa !78
  %131 = and i16 %130, 192
  %132 = icmp eq i16 %131, 128
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 44
  tail call void @ED_view3d_after_add(ptr noundef nonnull %134, ptr noundef nonnull %3, i16 noundef signext %4) #20
  br label %914

135:                                              ; preds = %119, %95, %124, %128, %115, %87, %82
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #20
  tail call void @view3d_cached_text_draw_begin() #21
  %136 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 22
  %137 = load ptr, ptr %136, align 8, !tbaa !81
  %138 = icmp eq ptr %137, null
  %139 = icmp ne i8 %38, 0
  %140 = select i1 %138, i1 true, i1 %139
  br i1 %140, label %144, label %141

141:                                              ; preds = %135
  %142 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 21
  tail call void @draw_motion_paths_init(ptr noundef %2, ptr noundef %1) #20
  %143 = load ptr, ptr %136, align 8, !tbaa !81
  tail call void @draw_motion_path_instance(ptr noundef %0, ptr noundef nonnull %21, ptr noundef null, ptr noundef nonnull %142, ptr noundef %143) #20
  tail call void @draw_motion_paths_cleanup(ptr noundef %2) #20
  br label %144

144:                                              ; preds = %141, %135
  tail call void @ED_view3d_init_mats_rv3d_gl(ptr noundef nonnull %21, ptr noundef %23) #20
  %145 = and i32 %84, 2
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = tail call i32 @ED_view3d_project_base(ptr noundef %1, ptr noundef %3) #20
  call fastcc void @draw_object_wire_color(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %6) #21
  call void @glColor3ubv(ptr noundef nonnull %6) #20
  br label %149

149:                                              ; preds = %147, %144
  %150 = phi ptr [ %6, %147 ], [ null, %144 ]
  %151 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 24
  %152 = load i16, ptr %151, align 8, !tbaa !5
  %153 = and i16 %152, 255
  %154 = icmp eq i16 %153, 6
  %155 = select i1 %154, i16 3, i16 %153
  %156 = zext nneg i16 %155 to i32
  %157 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 87
  %158 = load i8, ptr %157, align 2, !tbaa !82
  %159 = zext i8 %158 to i32
  %160 = call i32 @llvm.umin.i32(i32 %156, i32 %159)
  %161 = trunc i32 %160 to i8
  %162 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 47
  %163 = load i8, ptr %162, align 8, !tbaa !62
  %164 = icmp eq i8 %163, 0
  %165 = icmp ugt i32 %160, 2
  %166 = and i1 %164, %165
  %167 = select i1 %166, i8 2, i8 %161
  br i1 %32, label %168, label %184

168:                                              ; preds = %149
  %169 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 27
  %170 = load i32, ptr %169, align 8, !tbaa !41
  %171 = and i32 %170, 28
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %184, label %173

173:                                              ; preds = %168
  %174 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %175 = load i16, ptr %174, align 8, !tbaa !79
  %176 = icmp eq i16 %175, 1
  br i1 %176, label %177, label %184

177:                                              ; preds = %173
  %178 = icmp ult i8 %167, 3
  %179 = zext i1 %178 to i8
  %180 = call i8 @llvm.umax.i8(i8 %167, i8 3)
  %181 = and i32 %170, 12
  %182 = icmp eq i32 %181, 0
  %183 = select i1 %182, i8 %180, i8 100
  call void @glEnable(i32 noundef 2929) #20
  br label %184

184:                                              ; preds = %168, %177, %173, %149
  %185 = phi i1 [ false, %177 ], [ true, %173 ], [ true, %168 ], [ true, %149 ]
  %186 = phi i8 [ %179, %177 ], [ 0, %173 ], [ 0, %168 ], [ 0, %149 ]
  %187 = phi i8 [ %183, %177 ], [ %167, %173 ], [ %167, %168 ], [ %167, %149 ]
  %188 = load i16, ptr %34, align 2, !tbaa !15
  %189 = zext i16 %188 to i32
  %190 = and i32 %189, 4096
  %191 = icmp ne i32 %190, 0
  %192 = icmp eq i8 %187, 3
  %193 = select i1 %191, i1 %192, i1 false
  %194 = and i1 %185, %193
  %195 = and i32 %39, 32
  %196 = and i32 %189, 64
  %197 = or disjoint i32 %196, %195
  %198 = icmp eq i32 %197, 0
  %199 = select i1 %194, i1 %198, i1 false
  br i1 %199, label %200, label %201

200:                                              ; preds = %184
  call fastcc void @draw_object_matcap_check(ptr noundef nonnull %2) #21
  br label %203

201:                                              ; preds = %184
  %202 = icmp eq i8 %187, 0
  br i1 %202, label %212, label %203

203:                                              ; preds = %200, %201
  %204 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 86
  %205 = load i16, ptr %204, align 4, !tbaa !78
  %206 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 27
  %207 = load i32, ptr %206, align 8, !tbaa !41
  %208 = and i32 %207, 1
  %209 = icmp eq i32 %208, 0
  %210 = and i16 %205, 36
  %211 = select i1 %209, i16 %205, i16 %210
  br label %212

212:                                              ; preds = %203, %201
  %213 = phi i16 [ 0, %201 ], [ %211, %203 ]
  %214 = icmp eq i8 %83, 0
  br i1 %214, label %215, label %419

215:                                              ; preds = %212
  %216 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 28
  %217 = load i16, ptr %216, align 8, !tbaa !83
  %218 = and i16 %217, 2048
  %219 = icmp eq i16 %218, 0
  %220 = select i1 %219, i1 true, i1 %139
  br i1 %220, label %248, label %221

221:                                              ; preds = %215
  %222 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %223 = load i16, ptr %222, align 8, !tbaa !79
  %224 = icmp ne i16 %223, 1
  %225 = icmp ugt i8 %187, 2
  %226 = select i1 %224, i1 %225, i1 false
  br i1 %226, label %227, label %248

227:                                              ; preds = %221
  %228 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 27
  %229 = load i32, ptr %228, align 8, !tbaa !41
  %230 = and i32 %229, 1
  %231 = and i32 %84, 4
  %232 = or disjoint i32 %230, %231
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %248

234:                                              ; preds = %227
  %235 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 86
  %236 = load i16, ptr %235, align 4, !tbaa !78
  %237 = and i16 %236, 32
  %238 = icmp eq i16 %237, 0
  br i1 %238, label %239, label %248

239:                                              ; preds = %234
  %240 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 53
  %241 = load i16, ptr %240, align 4, !tbaa !84
  %242 = and i16 %241, 1
  %243 = icmp ne i16 %242, 0
  %244 = and i32 %84, 3
  %245 = icmp eq i32 %244, 0
  %246 = and i1 %245, %243
  br i1 %246, label %247, label %248

247:                                              ; preds = %239
  call fastcc void @drawObjectSelect(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %1, ptr noundef %3, ptr noundef %150) #21
  br label %248

248:                                              ; preds = %227, %247, %239, %234, %221, %215
  %249 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 3
  %250 = load i16, ptr %249, align 8, !tbaa !79
  switch i16 %250, label %385 [
    i16 1, label %251
    i16 4, label %255
    i16 2, label %280
    i16 3, label %280
    i16 5, label %307
    i16 0, label %328
    i16 10, label %337
    i16 11, label %339
    i16 12, label %349
    i16 22, label %351
    i16 25, label %364
  ]

251:                                              ; preds = %248
  %252 = call fastcc zeroext i8 @draw_mesh_object(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %23, ptr noundef %3, i8 noundef zeroext %187, ptr noundef %150, i16 noundef signext %4) #21
  %253 = and i16 %213, -33
  %254 = select i1 %146, i16 %253, i16 %213
  br label %387

255:                                              ; preds = %248
  %256 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 19
  %257 = load ptr, ptr %256, align 8, !tbaa !85
  %258 = getelementptr inbounds %struct.Curve, ptr %257, i64 0, i32 53
  %259 = load ptr, ptr %258, align 8, !tbaa !86
  %260 = icmp eq ptr %259, null
  br i1 %260, label %262, label %261

261:                                              ; preds = %255
  call fastcc void @draw_editfont(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %23, ptr noundef %3, i8 noundef zeroext %187, i16 noundef signext %4, ptr noundef %150) #21
  br label %387

262:                                              ; preds = %255
  %263 = icmp eq i8 %187, 1
  br i1 %263, label %264, label %273

264:                                              ; preds = %262
  %265 = icmp eq i8 %38, 0
  br i1 %265, label %269, label %266

266:                                              ; preds = %264
  %267 = load i16, ptr %151, align 8, !tbaa !5
  %268 = icmp sgt i16 %267, 1
  br i1 %268, label %419, label %269

269:                                              ; preds = %264, %266
  %270 = load ptr, ptr %20, align 8, !tbaa !39
  call fastcc void @ensure_curve_cache(ptr noundef %0, ptr noundef %270) #21
  %271 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 84
  %272 = load i8, ptr %271, align 2, !tbaa !89
  call fastcc void @draw_bounding_volume(ptr noundef nonnull %21, i8 noundef zeroext %272) #21
  br label %387

273:                                              ; preds = %262
  %274 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 15
  %275 = load ptr, ptr %274, align 8, !tbaa !90
  %276 = call zeroext i8 @ED_view3d_boundbox_clip(ptr noundef %23, ptr noundef %275) #20
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %387, label %278

278:                                              ; preds = %273
  %279 = call fastcc zeroext i8 @drawDispList(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %23, ptr noundef %3, i8 noundef zeroext %187, i16 noundef signext %4, ptr noundef %150) #21, !range !18
  br label %387

280:                                              ; preds = %248, %248
  %281 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 19
  %282 = load ptr, ptr %281, align 8, !tbaa !85
  %283 = getelementptr inbounds %struct.Curve, ptr %282, i64 0, i32 4
  %284 = load ptr, ptr %283, align 8, !tbaa !91
  %285 = icmp eq ptr %284, null
  br i1 %285, label %289, label %286

286:                                              ; preds = %280
  %287 = call ptr @BKE_curve_editNurbs_get(ptr noundef nonnull %282) #20
  %288 = load ptr, ptr %287, align 8, !tbaa !92
  call fastcc void @draw_editnurb(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %23, ptr noundef %3, ptr noundef %288, i8 noundef zeroext %187, i16 noundef signext %4, ptr noundef %150) #21
  br label %387

289:                                              ; preds = %280
  %290 = icmp eq i8 %187, 1
  br i1 %290, label %291, label %300

291:                                              ; preds = %289
  %292 = icmp eq i8 %38, 0
  br i1 %292, label %296, label %293

293:                                              ; preds = %291
  %294 = load i16, ptr %151, align 8, !tbaa !5
  %295 = icmp sgt i16 %294, 1
  br i1 %295, label %419, label %296

296:                                              ; preds = %291, %293
  %297 = load ptr, ptr %20, align 8, !tbaa !39
  call fastcc void @ensure_curve_cache(ptr noundef %0, ptr noundef %297) #21
  %298 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 84
  %299 = load i8, ptr %298, align 2, !tbaa !89
  call fastcc void @draw_bounding_volume(ptr noundef nonnull %21, i8 noundef zeroext %299) #21
  br label %387

300:                                              ; preds = %289
  %301 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 15
  %302 = load ptr, ptr %301, align 8, !tbaa !90
  %303 = call zeroext i8 @ED_view3d_boundbox_clip(ptr noundef %23, ptr noundef %302) #20
  %304 = icmp eq i8 %303, 0
  br i1 %304, label %387, label %305

305:                                              ; preds = %300
  %306 = call fastcc zeroext i8 @drawDispList(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %23, ptr noundef %3, i8 noundef zeroext %187, i16 noundef signext %4, ptr noundef %150) #21, !range !18
  br label %387

307:                                              ; preds = %248
  %308 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 19
  %309 = load ptr, ptr %308, align 8, !tbaa !85
  %310 = getelementptr inbounds %struct.MetaBall, ptr %309, i64 0, i32 4
  %311 = load ptr, ptr %310, align 8, !tbaa !93
  %312 = icmp eq ptr %311, null
  br i1 %312, label %315, label %313

313:                                              ; preds = %307
  %314 = call fastcc zeroext i8 @drawmball(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %23, ptr noundef %3, i8 noundef zeroext %187, i16 noundef signext %4, ptr noundef %150) #21, !range !18
  br label %387

315:                                              ; preds = %307
  %316 = icmp eq i8 %187, 1
  br i1 %316, label %317, label %326

317:                                              ; preds = %315
  %318 = icmp eq i8 %38, 0
  br i1 %318, label %322, label %319

319:                                              ; preds = %317
  %320 = load i16, ptr %151, align 8, !tbaa !5
  %321 = icmp sgt i16 %320, 1
  br i1 %321, label %419, label %322

322:                                              ; preds = %317, %319
  %323 = load ptr, ptr %20, align 8, !tbaa !39
  call fastcc void @ensure_curve_cache(ptr noundef %0, ptr noundef %323) #21
  %324 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 84
  %325 = load i8, ptr %324, align 2, !tbaa !89
  call fastcc void @draw_bounding_volume(ptr noundef nonnull %21, i8 noundef zeroext %325) #21
  br label %387

326:                                              ; preds = %315
  %327 = call fastcc zeroext i8 @drawmball(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %23, ptr noundef %3, i8 noundef zeroext %187, i16 noundef signext %4, ptr noundef %150) #21, !range !18
  br label %387

328:                                              ; preds = %248
  br i1 %139, label %419, label %329

329:                                              ; preds = %328
  %330 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 88
  %331 = load i8, ptr %330, align 1, !tbaa !80
  %332 = icmp eq i8 %331, 8
  br i1 %332, label %333, label %334

333:                                              ; preds = %329
  call fastcc void @draw_empty_image(ptr noundef nonnull %21, i16 noundef signext %4, ptr noundef %150) #21
  br label %391

334:                                              ; preds = %329
  %335 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 89
  %336 = load float, ptr %335, align 8, !tbaa !95
  call void @drawaxes(float noundef %336, i8 noundef zeroext %331) #21
  br label %391

337:                                              ; preds = %248
  br i1 %139, label %419, label %338

338:                                              ; preds = %337
  call fastcc void @drawlamp(ptr noundef nonnull %2, ptr noundef %23, ptr noundef %3, i8 noundef zeroext %187, i16 noundef signext %4, ptr noundef %150, i8 noundef zeroext %33) #21
  br label %391

339:                                              ; preds = %248
  br i1 %139, label %340, label %348

340:                                              ; preds = %339
  %341 = getelementptr inbounds %struct.RegionView3D, ptr %23, i64 0, i32 25
  %342 = load i8, ptr %341, align 1, !tbaa !96
  %343 = icmp eq i8 %342, 2
  br i1 %343, label %344, label %419

344:                                              ; preds = %340
  %345 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 15
  %346 = load ptr, ptr %345, align 8, !tbaa !97
  %347 = icmp eq ptr %346, %21
  br i1 %347, label %348, label %419

348:                                              ; preds = %344, %339
  call fastcc void @drawcamera(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %23, ptr noundef %3, i16 noundef signext %4, ptr noundef %150) #21
  br label %387

349:                                              ; preds = %248
  br i1 %139, label %419, label %350

350:                                              ; preds = %349
  call fastcc void @drawspeaker() #21
  br label %391

351:                                              ; preds = %248
  br i1 %139, label %419, label %352

352:                                              ; preds = %351
  %353 = icmp eq i8 %187, 1
  br i1 %353, label %354, label %362

354:                                              ; preds = %352
  %355 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 27
  %356 = load i32, ptr %355, align 8, !tbaa !41
  %357 = and i32 %356, 1
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %362

359:                                              ; preds = %354
  %360 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 84
  %361 = load i8, ptr %360, align 2, !tbaa !89
  call fastcc void @draw_bounding_volume(ptr noundef nonnull %21, i8 noundef zeroext %361) #21
  br label %391

362:                                              ; preds = %352, %354
  %363 = phi i8 [ 2, %354 ], [ %187, %352 ]
  call fastcc void @ensure_curve_cache(ptr noundef %0, ptr noundef nonnull %21) #21
  call fastcc void @drawlattice(ptr noundef nonnull %2, ptr noundef nonnull %21) #21
  br label %391

364:                                              ; preds = %248
  br i1 %139, label %419, label %365

365:                                              ; preds = %364
  %366 = icmp eq i8 %187, 1
  br i1 %366, label %367, label %375

367:                                              ; preds = %365
  %368 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 27
  %369 = load i32, ptr %368, align 8, !tbaa !41
  %370 = and i32 %369, 65
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %377

372:                                              ; preds = %367
  %373 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 84
  %374 = load i8, ptr %373, align 2, !tbaa !89
  call fastcc void @draw_bounding_volume(ptr noundef nonnull %21, i8 noundef zeroext %374) #21
  br label %391

375:                                              ; preds = %365
  %376 = icmp ugt i8 %187, 2
  br i1 %376, label %381, label %377

377:                                              ; preds = %375, %367
  %378 = phi i8 [ %187, %375 ], [ 2, %367 ]
  %379 = zext nneg i8 %378 to i16
  %380 = call zeroext i8 @draw_armature(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %1, ptr noundef %3, i16 noundef signext %379, i16 noundef signext %4, ptr noundef %150, i8 noundef zeroext 0) #20
  br label %391

381:                                              ; preds = %375
  %382 = call i32 @GPU_enable_material(i32 noundef 0, ptr noundef null) #20
  %383 = zext i8 %187 to i16
  %384 = call zeroext i8 @draw_armature(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %1, ptr noundef %3, i16 noundef signext %383, i16 noundef signext %4, ptr noundef %150, i8 noundef zeroext 0) #20
  call void @GPU_disable_material() #20
  br label %391

385:                                              ; preds = %248
  br i1 %139, label %419, label %386

386:                                              ; preds = %385
  call void @drawaxes(float noundef 1.000000e+00, i8 noundef zeroext 1) #21
  br label %391

387:                                              ; preds = %251, %313, %322, %326, %348, %286, %300, %305, %296, %261, %273, %278, %269
  %388 = phi i8 [ 0, %348 ], [ 0, %286 ], [ 0, %296 ], [ %306, %305 ], [ 0, %300 ], [ 0, %261 ], [ 0, %269 ], [ %279, %278 ], [ 0, %273 ], [ %252, %251 ], [ 0, %313 ], [ 0, %322 ], [ %327, %326 ]
  %389 = phi i8 [ %187, %348 ], [ %187, %286 ], [ 1, %296 ], [ %187, %305 ], [ %187, %300 ], [ %187, %261 ], [ 1, %269 ], [ %187, %278 ], [ %187, %273 ], [ %187, %251 ], [ %187, %313 ], [ 1, %322 ], [ %187, %326 ]
  %390 = phi i16 [ %213, %348 ], [ %213, %286 ], [ %213, %296 ], [ %213, %305 ], [ %213, %300 ], [ %213, %261 ], [ %213, %269 ], [ %213, %278 ], [ %213, %273 ], [ %254, %251 ], [ %213, %313 ], [ %213, %322 ], [ %213, %326 ]
  br i1 %139, label %419, label %391

391:                                              ; preds = %333, %334, %338, %350, %359, %362, %372, %381, %386, %377, %387
  %392 = phi i16 [ %390, %387 ], [ %213, %377 ], [ %213, %386 ], [ %213, %381 ], [ %213, %372 ], [ %213, %362 ], [ %213, %359 ], [ %213, %350 ], [ %213, %338 ], [ %213, %334 ], [ %213, %333 ]
  %393 = phi i8 [ %389, %387 ], [ %378, %377 ], [ %187, %386 ], [ %187, %381 ], [ 1, %372 ], [ %363, %362 ], [ 1, %359 ], [ %187, %350 ], [ %187, %338 ], [ %187, %334 ], [ %187, %333 ]
  %394 = phi i8 [ %388, %387 ], [ %380, %377 ], [ 0, %386 ], [ %384, %381 ], [ 0, %372 ], [ 0, %362 ], [ 0, %359 ], [ 0, %350 ], [ 0, %338 ], [ 0, %334 ], [ 0, %333 ]
  %395 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 111
  %396 = load ptr, ptr %395, align 8, !tbaa !98
  %397 = icmp eq ptr %396, null
  br i1 %397, label %410, label %398

398:                                              ; preds = %391
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #22
  %399 = getelementptr inbounds %struct.SoftBody, ptr %396, i64 0, i32 28
  %400 = load i16, ptr %399, align 2, !tbaa !99
  %401 = and i16 %400, 4
  %402 = icmp eq i16 %401, 0
  br i1 %402, label %409, label %403

403:                                              ; preds = %398
  %404 = getelementptr inbounds %struct.RegionView3D, ptr %23, i64 0, i32 1
  call void @glLoadMatrixf(ptr noundef nonnull %404) #20
  %405 = getelementptr inbounds %struct.SoftBody, ptr %396, i64 0, i32 52
  call void @copy_m3_m3(ptr noundef nonnull %8, ptr noundef nonnull %405) #20
  %406 = getelementptr inbounds %struct.SoftBody, ptr %396, i64 0, i32 51
  call void @copy_m3_m3(ptr noundef nonnull %7, ptr noundef nonnull %406) #20
  call void @mul_m3_m3m3(ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %8) #20
  %407 = getelementptr inbounds %struct.SoftBody, ptr %396, i64 0, i32 50
  call fastcc void @ob_draw_RE_motion(ptr noundef nonnull %407, ptr noundef nonnull %9) #21
  %408 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 47
  call void @glMultMatrixf(ptr noundef nonnull %408) #20
  br label %409

409:                                              ; preds = %398, %403
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #22
  br label %410

410:                                              ; preds = %409, %391
  %411 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 110
  %412 = load ptr, ptr %411, align 8, !tbaa !101
  %413 = icmp eq ptr %412, null
  br i1 %413, label %419, label %414

414:                                              ; preds = %410
  %415 = getelementptr inbounds %struct.PartDeflect, ptr %412, i64 0, i32 2
  %416 = load i16, ptr %415, align 2, !tbaa !102
  %417 = icmp eq i16 %416, 0
  br i1 %417, label %419, label %418

418:                                              ; preds = %414
  call fastcc void @draw_forcefield(ptr noundef nonnull %21, ptr noundef %23, i16 noundef signext %4, ptr noundef %150) #21
  br label %419

419:                                              ; preds = %266, %293, %328, %337, %344, %340, %349, %351, %364, %385, %319, %387, %418, %414, %410, %212
  %420 = phi i8 [ 0, %212 ], [ %388, %387 ], [ %394, %418 ], [ %394, %414 ], [ %394, %410 ], [ 0, %319 ], [ 0, %385 ], [ 0, %364 ], [ 0, %351 ], [ 0, %349 ], [ 0, %340 ], [ 0, %344 ], [ 0, %337 ], [ 0, %328 ], [ 0, %293 ], [ 0, %266 ]
  %421 = phi i8 [ %187, %212 ], [ %389, %387 ], [ %393, %418 ], [ %393, %414 ], [ %393, %410 ], [ 1, %319 ], [ %187, %385 ], [ %187, %364 ], [ %187, %351 ], [ %187, %349 ], [ %187, %340 ], [ %187, %344 ], [ %187, %337 ], [ %187, %328 ], [ 1, %293 ], [ 1, %266 ]
  %422 = phi i16 [ %213, %212 ], [ %390, %387 ], [ %392, %418 ], [ %392, %414 ], [ %392, %410 ], [ %213, %319 ], [ %213, %385 ], [ %213, %364 ], [ %213, %351 ], [ %213, %349 ], [ %213, %340 ], [ %213, %344 ], [ %213, %337 ], [ %213, %328 ], [ %213, %293 ], [ %213, %266 ]
  %423 = load ptr, ptr %40, align 8, !tbaa !65
  %424 = icmp eq ptr %423, null
  br i1 %424, label %462, label %425

425:                                              ; preds = %419
  %426 = load ptr, ptr %43, align 8, !tbaa !66
  %427 = icmp eq ptr %21, %426
  br i1 %427, label %462, label %428

428:                                              ; preds = %425
  br i1 %146, label %429, label %435

429:                                              ; preds = %428
  %430 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 53
  %431 = load i16, ptr %430, align 4, !tbaa !84
  %432 = and i16 %431, 1
  %433 = icmp eq i16 %432, 0
  br i1 %433, label %435, label %434

434:                                              ; preds = %429
  call void @cpack(i32 noundef 16777215) #20
  br label %435

435:                                              ; preds = %429, %434, %428
  %436 = getelementptr inbounds %struct.RegionView3D, ptr %23, i64 0, i32 1
  call void @glLoadMatrixf(ptr noundef nonnull %436) #20
  call void @view3d_cached_text_draw_begin() #21
  %437 = load ptr, ptr %40, align 8, !tbaa !53
  %438 = icmp eq ptr %437, null
  br i1 %438, label %458, label %439

439:                                              ; preds = %435
  %440 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 27
  br label %441

441:                                              ; preds = %439, %455
  %442 = phi ptr [ %437, %439 ], [ %456, %455 ]
  %443 = load i32, ptr %440, align 8, !tbaa !41
  %444 = and i32 %443, 32
  %445 = icmp ne i32 %444, 0
  %446 = select i1 %445, i1 %32, i1 false
  br i1 %446, label %447, label %455

447:                                              ; preds = %441
  %448 = call ptr @PE_create_current(ptr noundef %0, ptr noundef nonnull %21) #20
  %449 = icmp eq ptr %448, null
  br i1 %449, label %455, label %450

450:                                              ; preds = %447
  %451 = getelementptr inbounds %struct.PTCacheEdit, ptr %448, i64 0, i32 4
  %452 = load ptr, ptr %451, align 8, !tbaa !104
  %453 = icmp eq ptr %452, %442
  br i1 %453, label %454, label %455

454:                                              ; preds = %450
  call fastcc void @draw_update_ptcache_edit(ptr noundef %0, ptr noundef nonnull %21, ptr noundef nonnull %448) #21
  br label %455

455:                                              ; preds = %447, %450, %454, %441
  call fastcc void @draw_new_particle_system(ptr noundef %0, ptr noundef %2, ptr noundef %23, ptr noundef %3, ptr noundef nonnull %442, i8 noundef zeroext %421, i16 noundef signext %4) #21
  %456 = load ptr, ptr %442, align 8, !tbaa !53
  %457 = icmp eq ptr %456, null
  br i1 %457, label %458, label %441, !llvm.loop !107

458:                                              ; preds = %455, %435
  %459 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 50
  %460 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 47
  %461 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %459, ptr noundef nonnull %460) #20
  call void @view3d_cached_text_draw_end(ptr noundef %2, ptr noundef %1, i8 noundef zeroext 0, ptr noundef null) #21
  call void @glMultMatrixf(ptr noundef nonnull %460) #20
  br label %462

462:                                              ; preds = %458, %425, %419
  br i1 %86, label %463, label %478

463:                                              ; preds = %462
  %464 = load ptr, ptr %43, align 8, !tbaa !66
  %465 = icmp eq ptr %464, null
  br i1 %465, label %466, label %478

466:                                              ; preds = %463
  %467 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 27
  %468 = load i32, ptr %467, align 8, !tbaa !41
  %469 = and i32 %468, 32
  %470 = icmp ne i32 %469, 0
  %471 = select i1 %470, i1 %32, i1 false
  br i1 %471, label %472, label %478

472:                                              ; preds = %466
  %473 = call ptr @PE_create_current(ptr noundef nonnull %0, ptr noundef nonnull %21) #20
  %474 = icmp eq ptr %473, null
  br i1 %474, label %478, label %475

475:                                              ; preds = %472
  %476 = getelementptr inbounds %struct.RegionView3D, ptr %23, i64 0, i32 1
  call void @glLoadMatrixf(ptr noundef nonnull %476) #20
  call fastcc void @draw_update_ptcache_edit(ptr noundef nonnull %0, ptr noundef nonnull %21, ptr noundef nonnull %473) #21
  call fastcc void @draw_ptcache_edit(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %473) #21
  %477 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 47
  call void @glMultMatrixf(ptr noundef nonnull %477) #20
  br label %478

478:                                              ; preds = %472, %475, %466, %463, %462
  %479 = call ptr @modifiers_findByType(ptr noundef nonnull %21, i32 noundef 31) #20
  %480 = icmp eq ptr %479, null
  br i1 %480, label %627, label %481

481:                                              ; preds = %478
  %482 = call zeroext i8 @modifier_isEnabled(ptr noundef %0, ptr noundef nonnull %479, i32 noundef 1) #20
  %483 = icmp eq i8 %482, 0
  br i1 %483, label %627, label %484

484:                                              ; preds = %481
  %485 = getelementptr inbounds %struct.SmokeModifierData, ptr %479, i64 0, i32 1
  %486 = load ptr, ptr %485, align 8, !tbaa !108
  %487 = icmp eq ptr %486, null
  br i1 %487, label %627, label %488

488:                                              ; preds = %484
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %13) #22
  %489 = getelementptr inbounds %struct.RegionView3D, ptr %23, i64 0, i32 1
  call void @glLoadMatrixf(ptr noundef nonnull %489) #20
  %490 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 47
  call void @glMultMatrixf(ptr noundef nonnull %490) #20
  %491 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %486, i64 0, i32 37
  %492 = load i32, ptr %491, align 4, !tbaa !111
  %493 = and i32 %492, 128
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %521, label %495

495:                                              ; preds = %488
  %496 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %486, i64 0, i32 12
  %497 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %486, i64 0, i32 15
  %498 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %486, i64 0, i32 31
  %499 = load i32, ptr %498, align 4, !tbaa !113
  %500 = sitofp i32 %499 to float
  %501 = load <2 x float>, ptr %496, align 8, !tbaa !45
  %502 = load <2 x float>, ptr %497, align 4, !tbaa !45
  %503 = fneg <2 x float> %502
  %504 = insertelement <2 x float> poison, float %500, i64 0
  %505 = shufflevector <2 x float> %504, <2 x float> poison, <2 x i32> zeroinitializer
  %506 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %503, <2 x float> %505, <2 x float> %501)
  store <2 x float> %506, ptr %10, align 8, !tbaa !45
  %507 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %486, i64 0, i32 12, i64 2
  %508 = load float, ptr %507, align 4, !tbaa !45
  %509 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %486, i64 0, i32 15, i64 2
  %510 = load float, ptr %509, align 4, !tbaa !45
  %511 = fneg float %510
  %512 = call float @llvm.fmuladd.f32(float %511, float %500, float %508)
  %513 = getelementptr inbounds float, ptr %10, i64 2
  store float %512, ptr %513, align 8, !tbaa !45
  %514 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %486, i64 0, i32 13
  %515 = load <2 x float>, ptr %514, align 4, !tbaa !45
  %516 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %502, <2 x float> %505, <2 x float> %515)
  store <2 x float> %516, ptr %11, align 8, !tbaa !45
  %517 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %486, i64 0, i32 13, i64 2
  %518 = load float, ptr %517, align 4, !tbaa !45
  %519 = call float @llvm.fmuladd.f32(float %510, float %500, float %518)
  %520 = getelementptr inbounds float, ptr %11, i64 2
  store float %519, ptr %520, align 8, !tbaa !45
  call void @BKE_boundbox_init_from_minmax(ptr noundef nonnull %13, ptr noundef nonnull %10, ptr noundef nonnull %11) #20
  call fastcc void @draw_box(ptr noundef nonnull %13) #21
  br label %521

521:                                              ; preds = %495, %488
  %522 = load ptr, ptr %485, align 8, !tbaa !108
  %523 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %522, i64 0, i32 1
  %524 = load ptr, ptr %523, align 8, !tbaa !114
  %525 = icmp eq ptr %524, null
  br i1 %525, label %626, label %526

526:                                              ; preds = %521
  %527 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %528 = load i32, ptr %527, align 8, !tbaa !115
  %529 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %522, i64 0, i32 47
  %530 = load ptr, ptr %529, align 8, !tbaa !53
  %531 = getelementptr inbounds %struct.PointCache, ptr %530, i64 0, i32 5
  %532 = load i32, ptr %531, align 4, !tbaa !116
  %533 = icmp slt i32 %528, %532
  br i1 %533, label %626, label %534

534:                                              ; preds = %526
  %535 = getelementptr inbounds %struct.RegionView3D, ptr %23, i64 0, i32 2, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef nonnull %535) #21
  %536 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 50
  %537 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %536, ptr noundef nonnull %490) #20
  call void @mul_mat3_m4_v3(ptr noundef nonnull %536, ptr noundef nonnull %12) #20
  %538 = call fastcc float @normalize_v3(ptr noundef nonnull %12) #21
  %539 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %486, i64 0, i32 12
  %540 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %486, i64 0, i32 15
  %541 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %486, i64 0, i32 24
  %542 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %486, i64 0, i32 20
  %543 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 36
  %544 = load <2 x float>, ptr %539, align 8, !tbaa !45
  %545 = load <2 x float>, ptr %540, align 4, !tbaa !45
  %546 = load <2 x i32>, ptr %541, align 8, !tbaa !51
  %547 = sitofp <2 x i32> %546 to <2 x float>
  %548 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %545, <2 x float> %547, <2 x float> %544)
  %549 = load <2 x float>, ptr %542, align 8, !tbaa !45
  %550 = fadd <2 x float> %549, %548
  %551 = load <2 x float>, ptr %543, align 4, !tbaa !45
  %552 = call <2 x float> @llvm.fabs.v2f32(<2 x float> %551)
  %553 = fmul <2 x float> %550, %552
  store <2 x float> %553, ptr %10, align 8, !tbaa !45
  %554 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %486, i64 0, i32 12, i64 2
  %555 = load float, ptr %554, align 8, !tbaa !45
  %556 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %486, i64 0, i32 15, i64 2
  %557 = load float, ptr %556, align 4, !tbaa !45
  %558 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %486, i64 0, i32 24, i64 2
  %559 = load i32, ptr %558, align 8, !tbaa !51
  %560 = sitofp i32 %559 to float
  %561 = call float @llvm.fmuladd.f32(float %557, float %560, float %555)
  %562 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %486, i64 0, i32 20, i64 2
  %563 = load float, ptr %562, align 8, !tbaa !45
  %564 = fadd float %563, %561
  %565 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 36, i64 2
  %566 = load float, ptr %565, align 4, !tbaa !45
  %567 = call float @llvm.fabs.f32(float %566)
  %568 = fmul float %564, %567
  %569 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  store float %568, ptr %569, align 8, !tbaa !45
  %570 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %486, i64 0, i32 25
  %571 = load <2 x i32>, ptr %570, align 4, !tbaa !51
  %572 = sitofp <2 x i32> %571 to <2 x float>
  %573 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %545, <2 x float> %572, <2 x float> %544)
  %574 = fadd <2 x float> %549, %573
  %575 = fmul <2 x float> %552, %574
  store <2 x float> %575, ptr %11, align 8, !tbaa !45
  %576 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %486, i64 0, i32 25, i64 2
  %577 = load i32, ptr %576, align 4, !tbaa !51
  %578 = sitofp i32 %577 to float
  %579 = call float @llvm.fmuladd.f32(float %557, float %578, float %555)
  %580 = fadd float %563, %579
  %581 = fmul float %567, %580
  %582 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  store float %581, ptr %582, align 8, !tbaa !45
  %583 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %486, i64 0, i32 6
  %584 = load ptr, ptr %583, align 8, !tbaa !118
  %585 = icmp eq ptr %584, null
  br i1 %585, label %591, label %586

586:                                              ; preds = %534
  %587 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %486, i64 0, i32 38
  %588 = load i32, ptr %587, align 8, !tbaa !119
  %589 = and i32 %588, 1
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %591, label %609

591:                                              ; preds = %586, %534
  %592 = load ptr, ptr %485, align 8, !tbaa !108
  %593 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %592, i64 0, i32 7
  store ptr null, ptr %593, align 8, !tbaa !120
  call void @GPU_create_smoke(ptr noundef nonnull %479, i32 noundef 0) #20
  %594 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %486, i64 0, i32 7
  %595 = load ptr, ptr %594, align 8, !tbaa !120
  %596 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %486, i64 0, i32 26
  %597 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %486, i64 0, i32 28
  %598 = load float, ptr %597, align 8, !tbaa !121
  %599 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %486, i64 0, i32 29
  %600 = load float, ptr %599, align 4, !tbaa !122
  %601 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %486, i64 0, i32 36
  %602 = load i32, ptr %601, align 8, !tbaa !123
  %603 = sitofp i32 %602 to float
  %604 = fmul float %600, %603
  %605 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %486, i64 0, i32 9
  %606 = load ptr, ptr %605, align 8, !tbaa !124
  %607 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %486, i64 0, i32 10
  %608 = load ptr, ptr %607, align 8, !tbaa !125
  call void @draw_smoke_volume(ptr noundef nonnull %486, ptr noundef nonnull %21, ptr noundef %595, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %596, float noundef %598, float noundef %604, ptr noundef nonnull %12, ptr noundef %606, ptr noundef %608) #20
  br label %625

609:                                              ; preds = %586
  %610 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %486, i64 0, i32 7
  store ptr null, ptr %610, align 8, !tbaa !120
  call void @GPU_create_smoke(ptr noundef nonnull %479, i32 noundef 1) #20
  %611 = load ptr, ptr %610, align 8, !tbaa !120
  %612 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %486, i64 0, i32 43
  %613 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %486, i64 0, i32 28
  %614 = load float, ptr %613, align 8, !tbaa !121
  %615 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %486, i64 0, i32 29
  %616 = load float, ptr %615, align 4, !tbaa !122
  %617 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %486, i64 0, i32 36
  %618 = load i32, ptr %617, align 8, !tbaa !123
  %619 = sitofp i32 %618 to float
  %620 = fmul float %616, %619
  %621 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %486, i64 0, i32 9
  %622 = load ptr, ptr %621, align 8, !tbaa !124
  %623 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %486, i64 0, i32 10
  %624 = load ptr, ptr %623, align 8, !tbaa !125
  call void @draw_smoke_volume(ptr noundef nonnull %486, ptr noundef nonnull %21, ptr noundef %611, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %612, float noundef %614, float noundef %620, ptr noundef nonnull %12, ptr noundef %622, ptr noundef %624) #20
  br label %625

625:                                              ; preds = %609, %591
  call void @GPU_free_smoke(ptr noundef nonnull %479) #20
  br label %626

626:                                              ; preds = %625, %526, %521
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #22
  br label %627

627:                                              ; preds = %484, %626, %481, %478
  br i1 %139, label %737, label %628

628:                                              ; preds = %627
  %629 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 106
  %630 = load ptr, ptr %629, align 8, !tbaa !53
  %631 = icmp eq ptr %630, null
  br i1 %631, label %648, label %632

632:                                              ; preds = %628, %645
  %633 = phi ptr [ %646, %645 ], [ %630, %628 ]
  %634 = getelementptr inbounds %struct.bConstraint, ptr %633, i64 0, i32 3
  %635 = load i16, ptr %634, align 8, !tbaa !126
  %636 = icmp eq i16 %635, 17
  br i1 %636, label %637, label %645

637:                                              ; preds = %632
  %638 = getelementptr inbounds %struct.bConstraint, ptr %633, i64 0, i32 2
  %639 = load ptr, ptr %638, align 8, !tbaa !128
  %640 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %639, i64 0, i32 12
  %641 = load i16, ptr %640, align 8, !tbaa !129
  %642 = and i16 %641, 64
  %643 = icmp eq i16 %642, 0
  br i1 %643, label %645, label %644

644:                                              ; preds = %637
  call fastcc void @draw_rigid_body_pivot(ptr noundef nonnull %639, i16 noundef signext %4, ptr noundef %150) #21
  br label %645

645:                                              ; preds = %637, %644, %632
  %646 = load ptr, ptr %633, align 8, !tbaa !53
  %647 = icmp eq ptr %646, null
  br i1 %647, label %648, label %632, !llvm.loop !131

648:                                              ; preds = %645, %628
  %649 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 99
  %650 = load i32, ptr %649, align 8, !tbaa !132
  %651 = and i32 %650, 2048
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %668, label %653

653:                                              ; preds = %648
  %654 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 27
  %655 = load i32, ptr %654, align 8, !tbaa !41
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %657, label %668

657:                                              ; preds = %653
  %658 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 84
  %659 = load i8, ptr %658, align 2, !tbaa !89
  %660 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 85
  %661 = load i8, ptr %660, align 1, !tbaa !133
  %662 = icmp ne i8 %659, %661
  %663 = and i16 %422, 1
  %664 = icmp eq i16 %663, 0
  %665 = select i1 %662, i1 true, i1 %664
  br i1 %665, label %666, label %668

666:                                              ; preds = %657
  call void @setlinestyle(i32 noundef 2) #20
  %667 = load i8, ptr %660, align 1, !tbaa !133
  call fastcc void @draw_bounding_volume(ptr noundef nonnull %21, i8 noundef zeroext %667) #21
  call void @setlinestyle(i32 noundef 0) #20
  br label %668

668:                                              ; preds = %657, %666, %653, %648
  %669 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 128
  %670 = load ptr, ptr %669, align 8, !tbaa !134
  %671 = icmp eq ptr %670, null
  br i1 %671, label %673, label %672

672:                                              ; preds = %668
  call fastcc void @draw_rigidbody_shape(ptr noundef nonnull %21) #21
  br label %673

673:                                              ; preds = %672, %668
  %674 = zext i16 %422 to i32
  %675 = icmp eq i16 %422, 0
  br i1 %675, label %712, label %676

676:                                              ; preds = %673
  %677 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !16
  %678 = and i32 %677, 1
  %679 = icmp eq i32 %678, 0
  br i1 %679, label %680, label %712

680:                                              ; preds = %676
  %681 = and i32 %674, 2
  %682 = icmp eq i32 %681, 0
  br i1 %682, label %684, label %683

683:                                              ; preds = %680
  call void @drawaxes(float noundef 1.000000e+00, i8 noundef zeroext 1) #21
  br label %684

684:                                              ; preds = %683, %680
  %685 = and i32 %674, 1
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %690, label %687

687:                                              ; preds = %684
  %688 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 84
  %689 = load i8, ptr %688, align 2, !tbaa !89
  call fastcc void @draw_bounding_volume(ptr noundef nonnull %21, i8 noundef zeroext %689) #21
  br label %690

690:                                              ; preds = %687, %684
  %691 = and i32 %674, 4
  %692 = icmp eq i32 %691, 0
  br i1 %692, label %696, label %693

693:                                              ; preds = %690
  br i1 %146, label %694, label %695

694:                                              ; preds = %693
  call void @glColor3ubv(ptr noundef %150) #20
  br label %695

695:                                              ; preds = %694, %693
  call fastcc void @drawtexspace(ptr noundef nonnull %21) #21
  br label %696

696:                                              ; preds = %695, %690
  %697 = and i32 %674, 8
  %698 = icmp ne i32 %697, 0
  %699 = icmp eq i16 %4, 0
  %700 = and i1 %699, %698
  br i1 %700, label %701, label %704

701:                                              ; preds = %696
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %14, i8 0, i64 12, i1 false)
  %702 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 4, i64 2
  %703 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %702) #23
  call void @view3d_cached_text_draw_add(ptr noundef nonnull %14, ptr noundef nonnull %702, i64 noundef %703, i16 noundef signext 10, i16 noundef signext 0, ptr noundef %150) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #22
  br label %704

704:                                              ; preds = %701, %696
  %705 = and i32 %674, 32
  %706 = icmp eq i32 %705, 0
  %707 = icmp ult i8 %421, 3
  %708 = select i1 %706, i1 true, i1 %707
  %709 = xor i1 %146, true
  %710 = or i1 %708, %709
  br i1 %710, label %712, label %711

711:                                              ; preds = %704
  call fastcc void @draw_wire_extra(ptr noundef %0, ptr noundef %23, ptr noundef nonnull %21, ptr noundef %150) #21
  br label %712

712:                                              ; preds = %673, %676, %711, %704
  %713 = icmp ugt i8 %421, 3
  br i1 %713, label %737, label %714

714:                                              ; preds = %712
  %715 = load i32, ptr %649, align 8, !tbaa !132
  %716 = and i32 %715, 1
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %723, label %718

718:                                              ; preds = %714
  %719 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 85
  %720 = load i8, ptr %719, align 1, !tbaa !133
  %721 = and i8 %720, -2
  %722 = icmp eq i8 %721, 4
  br i1 %722, label %723, label %730

723:                                              ; preds = %718, %714
  %724 = and i32 %715, 2048
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %737, label %726

726:                                              ; preds = %723
  %727 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 84
  %728 = load i8, ptr %727, align 2, !tbaa !89
  %729 = icmp eq i8 %728, 1
  br i1 %729, label %730, label %737

730:                                              ; preds = %718, %726
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %15) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %16, i8 0, i64 12, i1 false)
  %731 = getelementptr inbounds %struct.RegionView3D, ptr %23, i64 0, i32 5
  %732 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %15, ptr noundef nonnull %731) #20
  br i1 %146, label %733, label %734

733:                                              ; preds = %730
  call void @glColor3ubv(ptr noundef %150) #20
  br label %734

734:                                              ; preds = %733, %730
  call void @setlinestyle(i32 noundef 2) #20
  %735 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 71
  %736 = load float, ptr %735, align 4, !tbaa !135
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %16, float noundef %736, ptr noundef nonnull %15) #21
  call void @setlinestyle(i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %15) #22
  br label %737

737:                                              ; preds = %627, %723, %726, %734, %712
  %738 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 50
  %739 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 47
  %740 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %738, ptr noundef nonnull %739) #20
  call void @view3d_cached_text_draw_end(ptr noundef %2, ptr noundef %1, i8 noundef zeroext 1, ptr noundef null) #21
  %741 = load i16, ptr %34, align 2, !tbaa !15
  %742 = and i16 %741, -8193
  store i16 %742, ptr %34, align 2, !tbaa !15
  %743 = getelementptr inbounds %struct.RegionView3D, ptr %23, i64 0, i32 1
  call void @glLoadMatrixf(ptr noundef nonnull %743) #20
  %744 = icmp eq i8 %186, 0
  br i1 %744, label %746, label %745

745:                                              ; preds = %737
  call void @glDisable(i32 noundef 2929) #20
  br label %746

746:                                              ; preds = %745, %737
  %747 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 4
  %748 = load i32, ptr %747, align 8, !tbaa !75
  %749 = and i32 %748, 512
  %750 = icmp ne i32 %749, 0
  %751 = select i1 %750, i1 true, i1 %139
  br i1 %751, label %914, label %752

752:                                              ; preds = %746
  br i1 %32, label %753, label %758

753:                                              ; preds = %752
  %754 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 27
  %755 = load i32, ptr %754, align 8, !tbaa !41
  %756 = and i32 %755, 30
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %758, label %794

758:                                              ; preds = %752, %753
  %759 = load ptr, ptr %24, align 8, !tbaa !19
  %760 = icmp eq ptr %759, %3
  br i1 %760, label %770, label %761

761:                                              ; preds = %758
  %762 = and i32 %748, 1
  %763 = icmp eq i32 %762, 0
  br i1 %763, label %764, label %770

764:                                              ; preds = %761
  %765 = icmp eq i8 %420, 0
  br i1 %765, label %766, label %770

766:                                              ; preds = %764
  %767 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 28
  %768 = load i16, ptr %767, align 8, !tbaa !83
  %769 = icmp sgt i16 %768, -1
  br i1 %769, label %794, label %770

770:                                              ; preds = %764, %766, %758, %761
  %771 = phi i32 [ 1, %761 ], [ 2, %758 ], [ 0, %766 ], [ 0, %764 ]
  br i1 %86, label %774, label %772

772:                                              ; preds = %770
  call void @glBegin(i32 noundef 0) #20
  %773 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 47, i64 3
  call void @glVertex3fv(ptr noundef nonnull %773) #20
  call void @glEnd() #20
  br label %794

774:                                              ; preds = %770
  %775 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 67), align 4
  %776 = icmp sgt i16 %775, 0
  %777 = select i1 %146, i1 %776, i1 false
  br i1 %777, label %778, label %794

778:                                              ; preds = %774
  %779 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !16
  %780 = and i32 %779, 1
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %782, label %794

782:                                              ; preds = %778
  %783 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 47, i64 3
  %784 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 3
  %785 = load ptr, ptr %784, align 8, !tbaa !136
  %786 = icmp eq ptr %785, null
  br i1 %786, label %787, label %792

787:                                              ; preds = %782
  %788 = getelementptr inbounds %struct.ID, ptr %21, i64 0, i32 6
  %789 = load i32, ptr %788, align 4, !tbaa !137
  %790 = icmp sgt i32 %789, 1
  %791 = zext i1 %790 to i32
  br label %792

792:                                              ; preds = %787, %782
  %793 = phi i32 [ 1, %782 ], [ %791, %787 ]
  call fastcc void @drawcentercircle(ptr noundef nonnull %2, ptr noundef %23, ptr noundef nonnull %783, i32 noundef %771, i32 noundef %793) #21
  br label %794

794:                                              ; preds = %766, %774, %792, %778, %772, %753
  %795 = icmp eq i16 %4, 0
  br i1 %795, label %796, label %914

796:                                              ; preds = %794
  %797 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 28
  %798 = load i16, ptr %797, align 8, !tbaa !83
  %799 = and i16 %798, 4
  %800 = icmp eq i16 %799, 0
  br i1 %800, label %801, label %914

801:                                              ; preds = %796
  %802 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 129
  %803 = load ptr, ptr %802, align 8, !tbaa !138
  %804 = load ptr, ptr %43, align 8, !tbaa !66
  %805 = icmp eq ptr %21, %804
  br i1 %805, label %823, label %806

806:                                              ; preds = %801
  call fastcc void @draw_hooks(ptr noundef nonnull %21) #21
  %807 = load ptr, ptr %43, align 8, !tbaa !66
  %808 = icmp eq ptr %21, %807
  br i1 %808, label %823, label %809

809:                                              ; preds = %806
  %810 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 9
  %811 = load ptr, ptr %810, align 8, !tbaa !139
  %812 = icmp eq ptr %811, null
  br i1 %812, label %823, label %813

813:                                              ; preds = %809
  %814 = getelementptr inbounds %struct.Object, ptr %811, i64 0, i32 52
  %815 = load i32, ptr %814, align 8, !tbaa !140
  %816 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 22
  %817 = load i32, ptr %816, align 8, !tbaa !141
  %818 = and i32 %817, %815
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %823, label %820

820:                                              ; preds = %813
  call void @setlinestyle(i32 noundef 3) #20
  call void @glBegin(i32 noundef 1) #20
  %821 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 47, i64 3
  call void @glVertex3fv(ptr noundef nonnull %821) #20
  %822 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 35
  call void @glVertex3fv(ptr noundef nonnull %822) #20
  call void @glEnd() #20
  call void @setlinestyle(i32 noundef 0) #20
  br label %823

823:                                              ; preds = %801, %820, %813, %809, %806
  %824 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 106
  %825 = load ptr, ptr %824, align 8, !tbaa !142
  %826 = icmp eq ptr %825, null
  br i1 %826, label %896, label %827

827:                                              ; preds = %823
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #22
  call void @UI_GetThemeColor3ubv(i32 noundef 24, ptr noundef nonnull %17) #20
  call void @UI_make_axis_color(ptr noundef nonnull %17, ptr noundef nonnull %18, i8 noundef zeroext 90) #20
  call void @glColor3ubv(ptr noundef nonnull %18) #20
  %828 = call ptr @BKE_constraints_make_evalob(ptr noundef nonnull %0, ptr noundef nonnull %21, ptr noundef null, i16 noundef signext 1) #20
  %829 = load ptr, ptr %824, align 8, !tbaa !53
  %830 = icmp eq ptr %829, null
  br i1 %830, label %895, label %831

831:                                              ; preds = %827
  %832 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 2
  %833 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 47, i64 3
  br label %834

834:                                              ; preds = %831, %892
  %835 = phi ptr [ %829, %831 ], [ %893, %892 ]
  %836 = getelementptr inbounds %struct.bConstraint, ptr %835, i64 0, i32 3
  %837 = load i16, ptr %836, align 8, !tbaa !126
  switch i16 %837, label %856 [
    i16 26, label %838
    i16 28, label %844
  ]

838:                                              ; preds = %834
  %839 = getelementptr inbounds %struct.bConstraint, ptr %835, i64 0, i32 2
  %840 = load ptr, ptr %839, align 8, !tbaa !128
  %841 = getelementptr inbounds %struct.bFollowTrackConstraint, ptr %840, i64 0, i32 5
  %842 = load ptr, ptr %841, align 8, !tbaa !143
  %843 = icmp eq ptr %842, null
  br i1 %843, label %850, label %853

844:                                              ; preds = %834
  %845 = getelementptr inbounds %struct.bConstraint, ptr %835, i64 0, i32 2
  %846 = load ptr, ptr %845, align 8, !tbaa !128
  %847 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %846, i64 0, i32 5
  %848 = load ptr, ptr %847, align 8, !tbaa !145
  %849 = icmp eq ptr %848, null
  br i1 %849, label %850, label %853

850:                                              ; preds = %844, %838
  %851 = load ptr, ptr %832, align 8, !tbaa !147
  %852 = icmp eq ptr %851, null
  br i1 %852, label %892, label %853

853:                                              ; preds = %844, %838, %850
  %854 = phi ptr [ %851, %850 ], [ %848, %844 ], [ %842, %838 ]
  call void @setlinestyle(i32 noundef 3) #20
  call void @glBegin(i32 noundef 1) #20
  %855 = getelementptr inbounds %struct.Object, ptr %854, i64 0, i32 47, i64 3
  call void @glVertex3fv(ptr noundef nonnull %855) #20
  call void @glVertex3fv(ptr noundef nonnull %833) #20
  call void @glEnd() #20
  call void @setlinestyle(i32 noundef 0) #20
  br label %892

856:                                              ; preds = %834
  %857 = call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %835) #20
  %858 = icmp eq ptr %857, null
  br i1 %858, label %892, label %859

859:                                              ; preds = %856
  %860 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %857, i64 0, i32 8
  %861 = load ptr, ptr %860, align 8, !tbaa !148
  %862 = icmp eq ptr %861, null
  br i1 %862, label %892, label %863

863:                                              ; preds = %859
  %864 = getelementptr inbounds %struct.bConstraint, ptr %835, i64 0, i32 4
  %865 = load i16, ptr %864, align 2, !tbaa !150
  %866 = and i16 %865, 1
  %867 = icmp eq i16 %866, 0
  br i1 %867, label %892, label %868

868:                                              ; preds = %863
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  %869 = call i32 %861(ptr noundef nonnull %835, ptr noundef nonnull %19) #20
  %870 = load ptr, ptr %19, align 8, !tbaa !53
  %871 = icmp eq ptr %870, null
  br i1 %871, label %886, label %872

872:                                              ; preds = %868
  %873 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %857, i64 0, i32 10
  br label %874

874:                                              ; preds = %872, %882
  %875 = phi ptr [ %870, %872 ], [ %884, %882 ]
  %876 = load ptr, ptr %873, align 8, !tbaa !151
  %877 = icmp eq ptr %876, null
  br i1 %877, label %880, label %878

878:                                              ; preds = %874
  %879 = call float @BKE_scene_frame_get(ptr noundef %0) #20
  call void %876(ptr noundef nonnull %835, ptr noundef %828, ptr noundef nonnull %875, float noundef %879) #20
  br label %882

880:                                              ; preds = %874
  %881 = getelementptr inbounds %struct.bConstraintTarget, ptr %875, i64 0, i32 4
  call void @unit_m4(ptr noundef nonnull %881) #20
  br label %882

882:                                              ; preds = %880, %878
  call void @setlinestyle(i32 noundef 3) #20
  call void @glBegin(i32 noundef 1) #20
  %883 = getelementptr inbounds %struct.bConstraintTarget, ptr %875, i64 0, i32 4, i64 3
  call void @glVertex3fv(ptr noundef nonnull %883) #20
  call void @glVertex3fv(ptr noundef nonnull %833) #20
  call void @glEnd() #20
  call void @setlinestyle(i32 noundef 0) #20
  %884 = load ptr, ptr %875, align 8, !tbaa !53
  %885 = icmp eq ptr %884, null
  br i1 %885, label %886, label %874, !llvm.loop !152

886:                                              ; preds = %882, %868
  %887 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %857, i64 0, i32 9
  %888 = load ptr, ptr %887, align 8, !tbaa !153
  %889 = icmp eq ptr %888, null
  br i1 %889, label %891, label %890

890:                                              ; preds = %886
  call void %888(ptr noundef nonnull %835, ptr noundef nonnull %19, i8 noundef zeroext 1) #20
  br label %891

891:                                              ; preds = %890, %886
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #22
  br label %892

892:                                              ; preds = %856, %859, %863, %891, %850, %853
  %893 = load ptr, ptr %835, align 8, !tbaa !53
  %894 = icmp eq ptr %893, null
  br i1 %894, label %895, label %834, !llvm.loop !154

895:                                              ; preds = %892, %827
  call void @BKE_constraints_clear_evalob(ptr noundef %828) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #22
  br label %896

896:                                              ; preds = %895, %823
  %897 = icmp eq ptr %803, null
  br i1 %897, label %914, label %898

898:                                              ; preds = %896
  call void @UI_ThemeColor(i32 noundef 25) #20
  call void @setlinestyle(i32 noundef 3) #20
  call void @glBegin(i32 noundef 1) #20
  %899 = load ptr, ptr %803, align 8, !tbaa !155
  %900 = icmp eq ptr %899, null
  br i1 %900, label %905, label %901

901:                                              ; preds = %898
  %902 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 47, i64 3
  call void @glVertex3fv(ptr noundef nonnull %902) #20
  %903 = load ptr, ptr %803, align 8, !tbaa !155
  %904 = getelementptr inbounds %struct.Object, ptr %903, i64 0, i32 47, i64 3
  call void @glVertex3fv(ptr noundef nonnull %904) #20
  br label %905

905:                                              ; preds = %901, %898
  %906 = getelementptr inbounds %struct.RigidBodyCon, ptr %803, i64 0, i32 1
  %907 = load ptr, ptr %906, align 8, !tbaa !157
  %908 = icmp eq ptr %907, null
  br i1 %908, label %913, label %909

909:                                              ; preds = %905
  %910 = getelementptr inbounds %struct.Object, ptr %21, i64 0, i32 47, i64 3
  call void @glVertex3fv(ptr noundef nonnull %910) #20
  %911 = load ptr, ptr %906, align 8, !tbaa !157
  %912 = getelementptr inbounds %struct.Object, ptr %911, i64 0, i32 47, i64 3
  call void @glVertex3fv(ptr noundef nonnull %912) #20
  br label %913

913:                                              ; preds = %909, %905
  call void @glEnd() #20
  call void @setlinestyle(i32 noundef 0) #20
  br label %914

914:                                              ; preds = %794, %796, %913, %896, %746, %64, %58, %54, %46, %133, %113
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  ret void
}

; Function Attrs: optsize
declare void @ED_view3d_after_add(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @draw_motion_paths_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @draw_motion_path_instance(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @draw_motion_paths_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_view3d_init_mats_rv3d_gl(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ED_view3d_project_base(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_object_wire_color(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Base, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !39
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 27
  %7 = load i32, ptr %6, align 8, !tbaa !41
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 25, i32 27
  %11 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !66
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 10), align 4, !tbaa !158
  %16 = and i16 %15, 1
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Base, ptr %1, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !75
  %21 = and i32 %20, 3
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %62

23:                                               ; preds = %18, %14, %3
  %24 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !136
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %50

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 53
  %29 = load i16, ptr %28, align 4, !tbaa !84
  %30 = and i16 %29, 4096
  %31 = icmp eq i16 %30, 0
  %32 = getelementptr inbounds %struct.Base, ptr %1, i64 0, i32 4
  %33 = load i32, ptr %32, align 8, !tbaa !75
  %34 = and i32 %33, 3
  %35 = icmp eq i32 %34, 0
  br i1 %31, label %37, label %36

36:                                               ; preds = %27
  br i1 %35, label %62, label %58

37:                                               ; preds = %27
  br i1 %35, label %43, label %38

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !19
  %41 = icmp eq ptr %40, %1
  %42 = select i1 %41, i32 29, i32 28
  br label %62

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 3
  %45 = load i16, ptr %44, align 8, !tbaa !79
  switch i16 %45, label %49 [
    i16 10, label %62
    i16 12, label %46
    i16 11, label %47
    i16 0, label %48
  ]

46:                                               ; preds = %43
  br label %62

47:                                               ; preds = %43
  br label %62

48:                                               ; preds = %43
  br label %62

49:                                               ; preds = %43
  br label %62

50:                                               ; preds = %23
  %51 = getelementptr inbounds %struct.Base, ptr %1, i64 0, i32 4
  %52 = load i32, ptr %51, align 8, !tbaa !75
  %53 = and i32 %52, 3
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i64 1, i64 2
  %56 = getelementptr inbounds [3 x i32], ptr @colortab, i64 0, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !51
  tail call fastcc void @cpack_cpy_3ub(ptr noundef %2, i32 noundef %57) #21
  br label %65

58:                                               ; preds = %36
  %59 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !19
  %61 = icmp eq ptr %60, %1
  br i1 %61, label %62, label %64

62:                                               ; preds = %38, %46, %47, %48, %18, %36, %43, %49, %58
  %63 = phi i32 [ 31, %58 ], [ %42, %38 ], [ 90, %46 ], [ 91, %47 ], [ 92, %48 ], [ 32, %18 ], [ 30, %36 ], [ 89, %43 ], [ %10, %49 ]
  tail call void @UI_GetThemeColor3ubv(i32 noundef %63, ptr noundef %2) #20
  br label %65

64:                                               ; preds = %58
  tail call void @UI_GetThemeColorShade3ubv(i32 noundef 31, i32 noundef -16, ptr noundef %2) #20
  br label %65

65:                                               ; preds = %62, %64, %50
  %66 = getelementptr inbounds i8, ptr %2, i64 3
  store i8 -1, ptr %66, align 1, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_object_matcap_check(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 52
  %3 = load ptr, ptr %2, align 8, !tbaa !159
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !53
  %7 = tail call ptr %6(i64 noundef 944, ptr noundef nonnull @.str) #20
  store ptr %7, ptr %2, align 8, !tbaa !159
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(944) %7, ptr noundef nonnull align 8 dereferenceable(944) @defmaterial, i64 944, i1 false), !tbaa.struct !160
  %8 = load ptr, ptr %2, align 8, !tbaa !159
  %9 = getelementptr inbounds %struct.Material, ptr %8, i64 0, i32 136
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %9) #21
  %10 = load ptr, ptr %2, align 8, !tbaa !159
  %11 = getelementptr inbounds %struct.Material, ptr %10, i64 0, i32 106
  store ptr null, ptr %11, align 8, !tbaa !161
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi ptr [ %10, %5 ], [ %3, %1 ]
  %14 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 36
  %15 = load i16, ptr %14, align 4, !tbaa !165
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i16 812, ptr %14, align 4, !tbaa !165
  br label %18

18:                                               ; preds = %17, %12
  %19 = phi i16 [ 812, %17 ], [ %15, %12 ]
  %20 = getelementptr inbounds %struct.Material, ptr %13, i64 0, i32 106
  %21 = load ptr, ptr %20, align 8, !tbaa !161
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = sext i16 %19 to i32
  %25 = tail call ptr @UI_icon_to_preview(i32 noundef %24) #20
  %26 = load ptr, ptr %2, align 8, !tbaa !159
  %27 = getelementptr inbounds %struct.Material, ptr %26, i64 0, i32 106
  store ptr %25, ptr %27, align 8, !tbaa !161
  br label %28

28:                                               ; preds = %23, %18
  %29 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 29
  %30 = load i16, ptr %29, align 2, !tbaa !15
  %31 = or i16 %30, 8192
  store i16 %31, ptr %29, align 2, !tbaa !15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawObjectSelect(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.ARegion, ptr %2, i64 0, i32 30
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = tail call float @UI_GetThemeValuef(i32 noundef 37) #20
  %11 = fmul float %10, 2.000000e+00
  tail call void @glLineWidth(float noundef %11) #20
  tail call void @glDepthMask(i8 noundef zeroext 0) #20
  %12 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 3
  %13 = load i16, ptr %12, align 8, !tbaa !79
  switch i16 %13, label %67 [
    i16 4, label %14
    i16 2, label %14
    i16 3, label %14
    i16 5, label %43
    i16 25, label %56
  ]

14:                                               ; preds = %5, %5, %5
  %15 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 120
  %16 = load ptr, ptr %15, align 8, !tbaa !166
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  tail call void @DM_update_materials(ptr noundef nonnull %16, ptr noundef nonnull %9) #20
  tail call fastcc void @ensure_curve_cache(ptr noundef %0, ptr noundef nonnull %9) #21
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %16, i64 0, i32 25
  %20 = load ptr, ptr %19, align 8, !tbaa !167
  %21 = tail call i32 %20(ptr noundef nonnull %16) #20
  %22 = icmp sgt i32 %21, 0
  %23 = zext i1 %22 to i8
  br label %28

24:                                               ; preds = %14
  tail call fastcc void @ensure_curve_cache(ptr noundef %0, ptr noundef nonnull %9) #21
  %25 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 118
  %26 = load ptr, ptr %25, align 8, !tbaa !170
  %27 = tail call zeroext i8 @BKE_displist_has_faces(ptr noundef %26) #20
  br label %28

28:                                               ; preds = %24, %18
  %29 = phi i8 [ %23, %18 ], [ %27, %24 ]
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %67, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 15
  %33 = load ptr, ptr %32, align 8, !tbaa !90
  %34 = tail call zeroext i8 @ED_view3d_boundbox_clip(ptr noundef %7, ptr noundef %33) #20
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %67, label %36

36:                                               ; preds = %31
  br i1 %17, label %38, label %37

37:                                               ; preds = %36
  tail call fastcc void @draw_mesh_object_outline(ptr noundef %1, ptr noundef nonnull %9, ptr noundef nonnull %16) #21
  br label %67

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 118
  %40 = load ptr, ptr %39, align 8, !tbaa !170
  %41 = load i16, ptr %12, align 8, !tbaa !79
  %42 = tail call fastcc zeroext i8 @drawDispListwire(ptr noundef %40, i16 noundef signext %41) #21, !range !18
  br label %67

43:                                               ; preds = %5
  %44 = tail call zeroext i8 @BKE_mball_is_basis(ptr noundef nonnull %9) #20
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %67, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 4
  %48 = load i32, ptr %47, align 8, !tbaa !75
  %49 = and i32 %48, 512
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 118
  %53 = load ptr, ptr %52, align 8, !tbaa !170
  %54 = load i16, ptr %12, align 8, !tbaa !79
  %55 = tail call fastcc zeroext i8 @drawDispListwire(ptr noundef %53, i16 noundef signext %54) #21, !range !18
  br label %67

56:                                               ; preds = %5
  %57 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 27
  %58 = load i32, ptr %57, align 8, !tbaa !41
  %59 = and i32 %58, 64
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %63 = load ptr, ptr %62, align 8, !tbaa !19
  %64 = icmp eq ptr %63, %3
  br i1 %64, label %67, label %65

65:                                               ; preds = %61, %56
  %66 = tail call zeroext i8 @draw_armature(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, i16 noundef signext 2, i16 noundef signext 0, ptr noundef %4, i8 noundef zeroext 1) #20
  br label %67

67:                                               ; preds = %5, %28, %31, %38, %37, %46, %51, %43, %61, %65
  tail call void @glLineWidth(float noundef 1.000000e+00) #20
  tail call void @glDepthMask(i8 noundef zeroext 1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @draw_mesh_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, ptr noundef %6, i16 noundef signext %7) unnamed_addr #0 {
  %9 = alloca i8, align 1
  %10 = alloca ptr, align 8
  %11 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !39
  %13 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !66
  %15 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !85
  %17 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 20
  %18 = load ptr, ptr %17, align 8, !tbaa !171
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #22
  store i8 0, ptr %9, align 1, !tbaa !55
  %19 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 29
  %20 = load i16, ptr %19, align 2, !tbaa !15
  %21 = and i16 %20, 64
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %41, label %23

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 31
  %25 = load i32, ptr %24, align 8, !tbaa !173
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %23, %37
  %28 = phi i32 [ %38, %37 ], [ 0, %23 ]
  %29 = trunc i32 %28 to i16
  %30 = tail call ptr @give_current_material(ptr noundef nonnull %12, i16 noundef signext %29) #20
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.Material, ptr %30, i64 0, i32 53
  %34 = load i32, ptr %33, align 4, !tbaa !174
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %168, label %37

37:                                               ; preds = %32, %27
  %38 = add nuw nsw i32 %28, 1
  %39 = load i32, ptr %24, align 8, !tbaa !173
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %27, label %41, !llvm.loop !175

41:                                               ; preds = %37, %23, %8
  %42 = icmp eq ptr %14, null
  %43 = icmp eq ptr %12, %14
  %44 = or i1 %42, %43
  br i1 %44, label %64, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %15, align 8, !tbaa !85
  %47 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 19
  %48 = load ptr, ptr %47, align 8, !tbaa !85
  %49 = icmp eq ptr %46, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %45
  %51 = tail call ptr @BKE_key_from_object(ptr noundef nonnull %12) #20
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = tail call ptr @BKE_key_from_object(ptr noundef nonnull %14) #20
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 26
  %58 = load ptr, ptr %57, align 8, !tbaa !176
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 26
  %62 = load ptr, ptr %61, align 8, !tbaa !176
  %63 = icmp eq ptr %62, null
  br label %64

64:                                               ; preds = %60, %53, %50, %56, %45, %41
  %65 = phi i1 [ false, %50 ], [ false, %53 ], [ false, %56 ], [ false, %45 ], [ false, %41 ], [ %63, %60 ]
  %66 = load i16, ptr %19, align 2, !tbaa !15
  %67 = and i16 %66, 1024
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  tail call void @glEnable(i32 noundef 2884) #20
  tail call void @glCullFace(i32 noundef 1029) #20
  br label %70

70:                                               ; preds = %69, %64
  %71 = or i1 %43, %65
  br i1 %71, label %72, label %96

72:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #22
  %73 = icmp ne ptr %14, %12
  br i1 %73, label %74, label %76

74:                                               ; preds = %72
  %75 = tail call ptr @editbmesh_get_derived_base(ptr noundef nonnull %12, ptr noundef %18) #20
  store ptr %75, ptr %10, align 8, !tbaa !53
  br label %81

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 42
  %78 = load i64, ptr %77, align 8, !tbaa !177
  %79 = call ptr @editbmesh_get_derived_cage_and_final(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %18, ptr noundef nonnull %10, i64 noundef %78) #20
  %80 = load ptr, ptr %10, align 8, !tbaa !53
  br label %81

81:                                               ; preds = %76, %74
  %82 = phi ptr [ %75, %74 ], [ %80, %76 ]
  %83 = phi ptr [ %75, %74 ], [ %79, %76 ]
  call void @DM_update_materials(ptr noundef %82, ptr noundef nonnull %12) #20
  call void @DM_update_materials(ptr noundef %83, ptr noundef nonnull %12) #20
  %84 = icmp ugt i8 %5, 2
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = call zeroext i8 @draw_glsl_material(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %2, i8 noundef zeroext %5) #21, !range !18
  call void @GPU_begin_object_materials(ptr noundef nonnull %2, ptr noundef %3, ptr noundef %0, ptr noundef nonnull %12, i8 noundef zeroext %86, ptr noundef null) #20
  br label %87

87:                                               ; preds = %85, %81
  %88 = load ptr, ptr %10, align 8, !tbaa !53
  call fastcc void @draw_em_fancy(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %12, ptr noundef %18, ptr noundef %83, ptr noundef %88, i8 noundef zeroext %5) #21
  call void @GPU_end_object_materials() #20
  %89 = load ptr, ptr %10, align 8
  %90 = icmp ne ptr %89, null
  %91 = select i1 %73, i1 %90, i1 false
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.DerivedMesh, ptr %89, i64 0, i32 95
  %94 = load ptr, ptr %93, align 8, !tbaa !178
  call void %94(ptr noundef nonnull %89) #20
  br label %95

95:                                               ; preds = %92, %87
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #22
  br label %123

96:                                               ; preds = %70
  %97 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 30
  %98 = load i32, ptr %97, align 8, !tbaa !179
  %99 = icmp slt i32 %98, 5
  br i1 %99, label %107, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 15
  %102 = load ptr, ptr %101, align 8, !tbaa !90
  %103 = icmp eq ptr %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %100
  %105 = tail call zeroext i8 @ED_view3d_boundbox_clip(ptr noundef %3, ptr noundef nonnull %102) #20
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %123, label %107

107:                                              ; preds = %104, %100, %96
  %108 = icmp ugt i8 %5, 2
  br i1 %108, label %109, label %118

109:                                              ; preds = %107
  %110 = tail call zeroext i8 @draw_glsl_material(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %2, i8 noundef zeroext %5) #21, !range !18
  %111 = icmp eq i8 %5, 3
  %112 = icmp ne i8 %110, 0
  %113 = or i1 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = tail call fastcc zeroext i8 @check_alpha_pass(ptr noundef %4) #21, !range !180
  %116 = icmp eq i8 %115, 0
  %117 = select i1 %116, ptr null, ptr %9
  call void @GPU_begin_object_materials(ptr noundef nonnull %2, ptr noundef %3, ptr noundef %0, ptr noundef nonnull %12, i8 noundef zeroext %110, ptr noundef %117) #20
  br label %118

118:                                              ; preds = %114, %109, %107
  call fastcc void @draw_mesh_fancy(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, ptr noundef %6, i16 noundef signext %7) #21
  call void @GPU_end_object_materials() #20
  %119 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 26
  %120 = load i32, ptr %119, align 8, !tbaa !181
  %121 = icmp eq i32 %120, 0
  %122 = zext i1 %121 to i8
  br label %123

123:                                              ; preds = %118, %104, %95
  %124 = phi i8 [ 0, %95 ], [ 0, %104 ], [ %122, %118 ]
  %125 = and i16 %7, 1
  %126 = icmp eq i16 %125, 0
  br i1 %126, label %127, label %163

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 4
  %129 = load i32, ptr %128, align 8, !tbaa !75
  %130 = and i32 %129, 512
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %163

132:                                              ; preds = %127
  %133 = load i16, ptr %19, align 2, !tbaa !15
  %134 = and i16 %133, 64
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %136, label %163

136:                                              ; preds = %132
  %137 = load i8, ptr %9, align 1, !tbaa !55
  %138 = icmp eq i8 %137, 0
  %139 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 86
  %140 = load i16, ptr %139, align 4, !tbaa !78
  br i1 %138, label %148, label %141

141:                                              ; preds = %136
  %142 = and i16 %140, 64
  %143 = icmp eq i16 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 46
  br label %161

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 44
  br label %161

148:                                              ; preds = %136
  %149 = and i16 %140, 192
  %150 = icmp eq i16 %149, 192
  br i1 %150, label %151, label %163

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 49
  %153 = load i8, ptr %152, align 2, !tbaa !76
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 48
  %157 = load i8, ptr %156, align 1, !tbaa !77
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 45
  br label %161

161:                                              ; preds = %159, %144, %146
  %162 = phi ptr [ %147, %146 ], [ %145, %144 ], [ %160, %159 ]
  call void @ED_view3d_after_add(ptr noundef nonnull %162, ptr noundef nonnull %4, i16 noundef signext %7) #20
  br label %163

163:                                              ; preds = %161, %151, %155, %148, %132, %127, %123
  %164 = load i16, ptr %19, align 2, !tbaa !15
  %165 = and i16 %164, 1024
  %166 = icmp eq i16 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %163
  call void @glDisable(i32 noundef 2884) #20
  br label %168

168:                                              ; preds = %32, %163, %167
  %169 = phi i8 [ %124, %167 ], [ %124, %163 ], [ 1, %32 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #22
  ret i8 %169
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_editfont(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4, i16 noundef signext %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [2 x [2 x float]], align 16
  %14 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !39
  %16 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !85
  %18 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 53
  %19 = load ptr, ptr %18, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #22
  %20 = getelementptr inbounds %struct.EditFont, ptr %19, i64 0, i32 5
  tail call fastcc void @draw_editfont_textcurs(ptr noundef %2, ptr noundef nonnull %20) #21
  %21 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 23
  %22 = load i32, ptr %21, align 4, !tbaa !182
  %23 = and i32 %22, 512
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %7
  tail call void @cpack(i32 noundef 16777215) #20
  tail call void @set_inverted_drawing(i32 noundef 1) #20
  %26 = tail call fastcc zeroext i8 @drawDispList(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i8 noundef zeroext 2, i16 noundef signext %5, ptr noundef %6) #21, !range !18
  tail call void @set_inverted_drawing(i32 noundef 0) #20
  br label %29

27:                                               ; preds = %7
  %28 = tail call fastcc zeroext i8 @drawDispList(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i8 noundef zeroext %4, i16 noundef signext %5, ptr noundef %6) #21, !range !18
  br label %29

29:                                               ; preds = %27, %25
  %30 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 46
  %31 = load float, ptr %30, align 8, !tbaa !183
  %32 = fcmp une float %31, 0.000000e+00
  br i1 %32, label %33, label %55

33:                                               ; preds = %29
  tail call void @UI_ThemeColor(i32 noundef 27) #20
  %34 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 35
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %34) #21
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %34) #21
  %35 = load float, ptr %30, align 8, !tbaa !183
  %36 = load float, ptr %8, align 4, !tbaa !45
  %37 = fadd float %35, %36
  store float %37, ptr %8, align 4, !tbaa !45
  %38 = load float, ptr %9, align 4, !tbaa !45
  %39 = fadd float %35, %38
  store float %39, ptr %9, align 4, !tbaa !45
  %40 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 38
  %41 = load float, ptr %40, align 8, !tbaa !184
  %42 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 40
  %43 = load float, ptr %42, align 8, !tbaa !185
  %44 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !45
  %46 = tail call float @llvm.fmuladd.f32(float %41, float %43, float %45)
  store float %46, ptr %44, align 4, !tbaa !45
  %47 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 34
  %48 = load i16, ptr %47, align 8, !tbaa !186
  %49 = sitofp i16 %48 to float
  %50 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !45
  %52 = fneg float %41
  %53 = fmul float %52, %49
  %54 = tail call float @llvm.fmuladd.f32(float %53, float %43, float %51)
  store float %54, ptr %50, align 4, !tbaa !45
  tail call void @setlinestyle(i32 noundef 3) #20
  tail call void @glBegin(i32 noundef 3) #20
  call void @glVertex2fv(ptr noundef nonnull %8) #20
  call void @glVertex2fv(ptr noundef nonnull %9) #20
  call void @glEnd() #20
  call void @setlinestyle(i32 noundef 0) #20
  br label %55

55:                                               ; preds = %33, %29
  call void @setlinestyle(i32 noundef 3) #20
  %56 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 60
  %57 = load i32, ptr %56, align 8, !tbaa !187
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %117

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 59
  %61 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 61
  %62 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 44
  %63 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 45
  %64 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 40
  %65 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %66 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  br label %67

67:                                               ; preds = %59, %112
  %68 = phi i32 [ %57, %59 ], [ %113, %112 ]
  %69 = phi i64 [ 0, %59 ], [ %114, %112 ]
  %70 = load ptr, ptr %60, align 8, !tbaa !188
  %71 = getelementptr inbounds %struct.TextBox, ptr %70, i64 %69, i32 2
  %72 = load float, ptr %71, align 4, !tbaa !189
  %73 = fcmp une float %72, 0.000000e+00
  br i1 %73, label %74, label %112

74:                                               ; preds = %67
  %75 = load i32, ptr %61, align 4, !tbaa !191
  %76 = add nsw i32 %75, -1
  %77 = zext i32 %76 to i64
  %78 = icmp eq i64 %69, %77
  %79 = select i1 %78, i32 29, i32 25
  call void @UI_ThemeColor(i32 noundef %79) #20
  %80 = load float, ptr %62, align 8, !tbaa !192
  %81 = load ptr, ptr %60, align 8, !tbaa !188
  %82 = getelementptr inbounds %struct.TextBox, ptr %81, i64 %69
  %83 = load float, ptr %82, align 4, !tbaa !193
  %84 = fadd float %80, %83
  store float %84, ptr %8, align 4, !tbaa !45
  %85 = load float, ptr %63, align 4, !tbaa !194
  %86 = getelementptr inbounds %struct.TextBox, ptr %81, i64 %69, i32 1
  %87 = load float, ptr %86, align 4, !tbaa !195
  %88 = fadd float %85, %87
  %89 = load float, ptr %64, align 8, !tbaa !185
  %90 = fadd float %88, %89
  store float %90, ptr %65, align 4, !tbaa !45
  store float 0x3F50624DE0000000, ptr %66, align 4, !tbaa !45
  call void @glBegin(i32 noundef 3) #20
  call void @glVertex3fv(ptr noundef nonnull %8) #20
  %91 = load ptr, ptr %60, align 8, !tbaa !188
  %92 = getelementptr inbounds %struct.TextBox, ptr %91, i64 %69, i32 2
  %93 = load float, ptr %92, align 4, !tbaa !189
  %94 = load float, ptr %8, align 4, !tbaa !45
  %95 = fadd float %93, %94
  store float %95, ptr %8, align 4, !tbaa !45
  call void @glVertex3fv(ptr noundef nonnull %8) #20
  %96 = load ptr, ptr %60, align 8, !tbaa !188
  %97 = getelementptr inbounds %struct.TextBox, ptr %96, i64 %69, i32 3
  %98 = load float, ptr %97, align 4, !tbaa !196
  %99 = load float, ptr %65, align 4, !tbaa !45
  %100 = fsub float %99, %98
  store float %100, ptr %65, align 4, !tbaa !45
  call void @glVertex3fv(ptr noundef nonnull %8) #20
  %101 = load ptr, ptr %60, align 8, !tbaa !188
  %102 = getelementptr inbounds %struct.TextBox, ptr %101, i64 %69, i32 2
  %103 = load float, ptr %102, align 4, !tbaa !189
  %104 = load float, ptr %8, align 4, !tbaa !45
  %105 = fsub float %104, %103
  store float %105, ptr %8, align 4, !tbaa !45
  call void @glVertex3fv(ptr noundef nonnull %8) #20
  %106 = load ptr, ptr %60, align 8, !tbaa !188
  %107 = getelementptr inbounds %struct.TextBox, ptr %106, i64 %69, i32 3
  %108 = load float, ptr %107, align 4, !tbaa !196
  %109 = load float, ptr %65, align 4, !tbaa !45
  %110 = fadd float %108, %109
  store float %110, ptr %65, align 4, !tbaa !45
  call void @glVertex3fv(ptr noundef nonnull %8) #20
  call void @glEnd() #20
  %111 = load i32, ptr %56, align 8, !tbaa !187
  br label %112

112:                                              ; preds = %67, %74
  %113 = phi i32 [ %68, %67 ], [ %111, %74 ]
  %114 = add nuw nsw i64 %69, 1
  %115 = sext i32 %113 to i64
  %116 = icmp slt i64 %114, %115
  br i1 %116, label %67, label %117, !llvm.loop !197

117:                                              ; preds = %112, %55
  call void @setlinestyle(i32 noundef 0) #20
  %118 = call i32 @BKE_vfont_select_get(ptr noundef %15, ptr noundef nonnull %10, ptr noundef nonnull %11) #20
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %190, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.EditFont, ptr %19, i64 0, i32 4
  %122 = load ptr, ptr %121, align 8, !tbaa !198
  %123 = icmp eq ptr %122, null
  br i1 %123, label %190, label %124

124:                                              ; preds = %120
  %125 = load i32, ptr %11, align 4, !tbaa !51
  %126 = load i32, ptr %10, align 4, !tbaa !51
  %127 = sub nsw i32 %125, %126
  call void @cpack(i32 noundef 16777215) #20
  call void @set_inverted_drawing(i32 noundef 1) #20
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %189, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  %131 = zext nneg i32 %127 to i64
  %132 = add i32 %125, 1
  %133 = sub i32 %132, %126
  %134 = zext i32 %133 to i64
  br label %135

135:                                              ; preds = %129, %186
  %136 = phi i64 [ 0, %129 ], [ %187, %186 ]
  %137 = load ptr, ptr %121, align 8, !tbaa !198
  %138 = getelementptr %struct.EditFontSelBox, ptr %137, i64 %136
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #22
  %139 = icmp eq i64 %136, %131
  br i1 %139, label %154, label %140

140:                                              ; preds = %135
  %141 = getelementptr %struct.EditFontSelBox, ptr %138, i64 1, i32 1
  %142 = load float, ptr %141, align 4, !tbaa !200
  %143 = getelementptr inbounds %struct.EditFontSelBox, ptr %137, i64 %136, i32 1
  %144 = load float, ptr %143, align 4, !tbaa !200
  %145 = fcmp oeq float %142, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %140
  %147 = getelementptr %struct.EditFontSelBox, ptr %138, i64 1
  %148 = load float, ptr %147, align 4, !tbaa !202
  %149 = load float, ptr %138, align 4, !tbaa !202
  %150 = fsub float %148, %149
  br label %157

151:                                              ; preds = %140
  %152 = getelementptr inbounds %struct.EditFontSelBox, ptr %137, i64 %136, i32 2
  %153 = load float, ptr %152, align 4, !tbaa !203
  br label %157

154:                                              ; preds = %135
  %155 = getelementptr inbounds %struct.EditFontSelBox, ptr %137, i64 %131, i32 2
  %156 = load float, ptr %155, align 4, !tbaa !203
  br label %157

157:                                              ; preds = %146, %151, %154
  %158 = phi float [ %150, %146 ], [ %153, %151 ], [ %156, %154 ]
  store float 0x3F50624DE0000000, ptr %130, align 4, !tbaa !45
  call void @glBegin(i32 noundef 7) #20
  %159 = getelementptr inbounds %struct.EditFontSelBox, ptr %137, i64 %136, i32 4
  %160 = load float, ptr %159, align 4, !tbaa !204
  %161 = fcmp oeq float %160, 0.000000e+00
  br i1 %161, label %162, label %179

162:                                              ; preds = %157
  %163 = load float, ptr %138, align 4, !tbaa !202
  %164 = getelementptr inbounds %struct.EditFontSelBox, ptr %137, i64 %136, i32 1
  %165 = load float, ptr %164, align 4, !tbaa !200
  call fastcc void @copy_v2_fl2(ptr noundef nonnull %12, float noundef %163, float noundef %165) #21
  call void @glVertex3fv(ptr noundef nonnull %12) #20
  %166 = load float, ptr %138, align 4, !tbaa !202
  %167 = fadd float %158, %166
  %168 = load float, ptr %164, align 4, !tbaa !200
  call fastcc void @copy_v2_fl2(ptr noundef nonnull %12, float noundef %167, float noundef %168) #21
  call void @glVertex3fv(ptr noundef nonnull %12) #20
  %169 = load float, ptr %138, align 4, !tbaa !202
  %170 = fadd float %158, %169
  %171 = load float, ptr %164, align 4, !tbaa !200
  %172 = getelementptr inbounds %struct.EditFontSelBox, ptr %137, i64 %136, i32 3
  %173 = load float, ptr %172, align 4, !tbaa !205
  %174 = fadd float %171, %173
  call fastcc void @copy_v2_fl2(ptr noundef nonnull %12, float noundef %170, float noundef %174) #21
  call void @glVertex3fv(ptr noundef nonnull %12) #20
  %175 = load float, ptr %138, align 4, !tbaa !202
  %176 = load float, ptr %164, align 4, !tbaa !200
  %177 = load float, ptr %172, align 4, !tbaa !205
  %178 = fadd float %176, %177
  call fastcc void @copy_v2_fl2(ptr noundef nonnull %12, float noundef %175, float noundef %178) #21
  call void @glVertex3fv(ptr noundef nonnull %12) #20
  br label %186

179:                                              ; preds = %157
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #22
  call void @angle_to_mat2(ptr noundef nonnull %13, float noundef %160) #20
  %180 = load float, ptr %138, align 4, !tbaa !202
  %181 = getelementptr inbounds %struct.EditFontSelBox, ptr %137, i64 %136, i32 1
  %182 = load float, ptr %181, align 4, !tbaa !200
  call fastcc void @copy_v2_fl2(ptr noundef nonnull %12, float noundef %180, float noundef %182) #21
  call void @glVertex3fv(ptr noundef nonnull %12) #20
  call fastcc void @copy_v2_fl2(ptr noundef nonnull %12, float noundef %158, float noundef 0.000000e+00) #21
  call void @mul_m2v2(ptr noundef nonnull %13, ptr noundef nonnull %12) #20
  call fastcc void @add_v2_v2(ptr noundef nonnull %12, ptr noundef nonnull %138) #21
  call void @glVertex3fv(ptr noundef nonnull %12) #20
  %183 = getelementptr inbounds %struct.EditFontSelBox, ptr %137, i64 %136, i32 3
  %184 = load float, ptr %183, align 4, !tbaa !205
  call fastcc void @copy_v2_fl2(ptr noundef nonnull %12, float noundef %158, float noundef %184) #21
  call void @mul_m2v2(ptr noundef nonnull %13, ptr noundef nonnull %12) #20
  call fastcc void @add_v2_v2(ptr noundef nonnull %12, ptr noundef nonnull %138) #21
  call void @glVertex3fv(ptr noundef nonnull %12) #20
  %185 = load float, ptr %183, align 4, !tbaa !205
  call fastcc void @copy_v2_fl2(ptr noundef nonnull %12, float noundef 0.000000e+00, float noundef %185) #21
  call void @mul_m2v2(ptr noundef nonnull %13, ptr noundef nonnull %12) #20
  call fastcc void @add_v2_v2(ptr noundef nonnull %12, ptr noundef nonnull %138) #21
  call void @glVertex3fv(ptr noundef nonnull %12) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #22
  br label %186

186:                                              ; preds = %179, %162
  call void @glEnd() #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #22
  %187 = add nuw nsw i64 %136, 1
  %188 = icmp eq i64 %187, %134
  br i1 %188, label %189, label %135, !llvm.loop !206

189:                                              ; preds = %186, %124
  call void @set_inverted_drawing(i32 noundef 0) #20
  br label %190

190:                                              ; preds = %189, %120, %117
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ensure_curve_cache(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 118
  %4 = load ptr, ptr %3, align 8, !tbaa !170
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !207
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.CurveCache, ptr %4, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !209
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %2, %9
  %14 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %15 = load i16, ptr %14, align 8, !tbaa !79
  switch i16 %15, label %22 [
    i16 2, label %16
    i16 3, label %16
    i16 4, label %16
    i16 5, label %17
    i16 22, label %21
  ]

16:                                               ; preds = %13, %13, %13
  tail call void @BKE_displist_make_curveTypes(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 0) #20
  br label %22

17:                                               ; preds = %13
  %18 = load ptr, ptr @G, align 8, !tbaa !210
  %19 = getelementptr inbounds %struct.Main, ptr %18, i64 0, i32 46
  %20 = load ptr, ptr %19, align 8, !tbaa !211
  tail call void @BKE_displist_make_mball(ptr noundef %20, ptr noundef %0, ptr noundef nonnull %1) #20
  br label %22

21:                                               ; preds = %13
  tail call void @BKE_lattice_modifiers_calc(ptr noundef %0, ptr noundef nonnull %1) #20
  br label %22

22:                                               ; preds = %6, %16, %17, %21, %13, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_bounding_volume(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct.BoundBox, align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [8 x [3 x float]], align 16
  %7 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %3) #22
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !79
  switch i16 %9, label %22 [
    i16 1, label %10
    i16 2, label %12
    i16 3, label %12
    i16 4, label %12
    i16 5, label %14
    i16 25, label %20
  ]

10:                                               ; preds = %2
  %11 = tail call ptr @BKE_mesh_boundbox_get(ptr noundef nonnull %0) #20
  br label %23

12:                                               ; preds = %2, %2, %2
  %13 = tail call ptr @BKE_curve_boundbox_get(ptr noundef nonnull %0) #20
  br label %23

14:                                               ; preds = %2
  %15 = tail call zeroext i8 @BKE_mball_is_basis(ptr noundef nonnull %0) #20
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %67, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 15
  %19 = load ptr, ptr %18, align 8, !tbaa !90
  br label %23

20:                                               ; preds = %2
  %21 = tail call ptr @BKE_armature_boundbox_get(ptr noundef nonnull %0) #20
  br label %23

22:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) @__const.draw_bounding_volume.min, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) @__const.draw_bounding_volume.max, i64 12, i1 false)
  call void @BKE_boundbox_init_from_minmax(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  br label %26

23:                                               ; preds = %12, %20, %17, %10
  %24 = phi ptr [ %11, %10 ], [ %13, %12 ], [ %19, %17 ], [ %21, %20 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %67, label %26

26:                                               ; preds = %22, %23
  %27 = phi ptr [ %3, %22 ], [ %24, %23 ]
  %28 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 99
  %29 = load i32, ptr %28, align 8, !tbaa !132
  %30 = and i32 %29, 2048
  %31 = icmp eq i32 %30, 0
  %32 = icmp eq i8 %1, 0
  br i1 %31, label %64, label %33

33:                                               ; preds = %26
  br i1 %32, label %34, label %63

34:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #22
  call void @BKE_boundbox_calc_size_aabb(ptr noundef nonnull %27, ptr noundef nonnull %7) #20
  %35 = getelementptr inbounds [8 x [3 x float]], ptr %6, i64 0, i64 3
  %36 = getelementptr inbounds [8 x [3 x float]], ptr %6, i64 0, i64 2
  %37 = getelementptr inbounds [8 x [3 x float]], ptr %6, i64 0, i64 1
  %38 = getelementptr inbounds [8 x [3 x float]], ptr %6, i64 0, i64 7
  %39 = getelementptr inbounds [8 x [3 x float]], ptr %6, i64 0, i64 6
  %40 = getelementptr inbounds [8 x [3 x float]], ptr %6, i64 0, i64 5
  %41 = getelementptr inbounds [8 x [3 x float]], ptr %6, i64 0, i64 4
  %42 = getelementptr inbounds [8 x [3 x float]], ptr %6, i64 0, i64 5, i64 1
  %43 = getelementptr inbounds [8 x [3 x float]], ptr %6, i64 0, i64 4, i64 1
  %44 = load <2 x float>, ptr %7, align 8, !tbaa !45
  %45 = fneg <2 x float> %44
  %46 = extractelement <2 x float> %45, i64 0
  store float %46, ptr %35, align 4, !tbaa !45
  store float %46, ptr %36, align 8, !tbaa !45
  %47 = extractelement <2 x float> %44, i64 0
  store float %47, ptr %40, align 4, !tbaa !45
  store float %47, ptr %41, align 16, !tbaa !45
  %48 = extractelement <2 x float> %45, i64 1
  store float %48, ptr %42, align 16, !tbaa !45
  store float %48, ptr %43, align 4, !tbaa !45
  store <2 x float> %45, ptr %37, align 4, !tbaa !45
  store <2 x float> %45, ptr %6, align 16, !tbaa !45
  store <2 x float> %44, ptr %38, align 4, !tbaa !45
  store <2 x float> %44, ptr %39, align 8, !tbaa !45
  %49 = getelementptr inbounds [8 x [3 x float]], ptr %6, i64 0, i64 3, i64 1
  %50 = extractelement <2 x float> %44, i64 1
  store float %50, ptr %49, align 8, !tbaa !45
  %51 = getelementptr inbounds [8 x [3 x float]], ptr %6, i64 0, i64 2, i64 1
  store float %50, ptr %51, align 4, !tbaa !45
  %52 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %53 = load float, ptr %52, align 8, !tbaa !45
  %54 = fneg float %53
  %55 = getelementptr inbounds [8 x [3 x float]], ptr %6, i64 0, i64 7, i64 2
  store float %54, ptr %55, align 4, !tbaa !45
  %56 = getelementptr inbounds [8 x [3 x float]], ptr %6, i64 0, i64 4, i64 2
  store float %54, ptr %56, align 8, !tbaa !45
  %57 = getelementptr inbounds [8 x [3 x float]], ptr %6, i64 0, i64 3, i64 2
  store float %54, ptr %57, align 4, !tbaa !45
  %58 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float %54, ptr %58, align 8, !tbaa !45
  %59 = getelementptr inbounds [8 x [3 x float]], ptr %6, i64 0, i64 6, i64 2
  store float %53, ptr %59, align 16, !tbaa !45
  %60 = getelementptr inbounds [8 x [3 x float]], ptr %6, i64 0, i64 5, i64 2
  store float %53, ptr %60, align 4, !tbaa !45
  %61 = getelementptr inbounds [8 x [3 x float]], ptr %6, i64 0, i64 2, i64 2
  store float %53, ptr %61, align 16, !tbaa !45
  %62 = getelementptr inbounds [8 x [3 x float]], ptr %6, i64 0, i64 1, i64 2
  store float %53, ptr %62, align 4, !tbaa !45
  call fastcc void @draw_box(ptr noundef nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #22
  br label %67

63:                                               ; preds = %33
  call fastcc void @draw_bb_quadric(ptr noundef nonnull %27, i8 noundef zeroext %1, i8 noundef zeroext 1) #21
  br label %67

64:                                               ; preds = %26
  br i1 %32, label %65, label %66

65:                                               ; preds = %64
  call fastcc void @draw_box(ptr noundef nonnull %27) #21
  br label %67

66:                                               ; preds = %64
  call fastcc void @draw_bb_quadric(ptr noundef nonnull %27, i8 noundef zeroext %1, i8 noundef zeroext 0) #21
  br label %67

67:                                               ; preds = %14, %63, %34, %66, %65, %23
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %3) #22
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @ED_view3d_boundbox_clip(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @drawDispList(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4, i16 noundef signext %5, ptr noundef %6) unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 29
  %9 = load i16, ptr %8, align 2, !tbaa !15
  %10 = and i16 %9, 1024
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void @glEnable(i32 noundef 2884) #20
  tail call void @glCullFace(i32 noundef 1029) #20
  br label %13

13:                                               ; preds = %12, %7
  %14 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !39
  tail call fastcc void @ensure_curve_cache(ptr noundef %0, ptr noundef %15) #21
  %16 = tail call fastcc zeroext i8 @drawDispList_nobackface(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i16 noundef signext %5, ptr noundef %6) #21, !range !18
  %17 = load i16, ptr %8, align 2, !tbaa !15
  %18 = and i16 %17, 1024
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  tail call void @glDisable(i32 noundef 2884) #20
  br label %21

21:                                               ; preds = %20, %13
  ret i8 %16
}

; Function Attrs: optsize
declare ptr @BKE_curve_editNurbs_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_editnurb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, i8 noundef zeroext %5, i16 noundef signext %6, ptr noundef %7) unnamed_addr #0 {
  %9 = alloca [3 x i8], align 1
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !213
  %14 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !39
  %16 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !85
  %18 = tail call ptr @BKE_curve_vert_active_get(ptr noundef %17) #20
  %19 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 16
  %20 = load i16, ptr %19, align 8, !tbaa !214
  %21 = trunc i16 %20 to i8
  %22 = and i8 %21, 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %9) #22
  call void @UI_GetThemeColor3ubv(i32 noundef 27, ptr noundef nonnull %9) #20
  call void @glColor3ubv(ptr noundef nonnull %9) #20
  %23 = call fastcc zeroext i8 @drawDispList(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %5, i16 noundef signext %6, ptr noundef %7) #21, !range !18
  %24 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 29
  %25 = load i16, ptr %24, align 2, !tbaa !15
  %26 = and i16 %25, 64
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %144

28:                                               ; preds = %8
  %29 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 47
  %30 = load i8, ptr %29, align 8, !tbaa !62
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  call void @glDepthFunc(i32 noundef 519) #20
  br label %33

33:                                               ; preds = %32, %28
  %34 = icmp eq ptr %4, null
  br i1 %34, label %68, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 31
  %37 = icmp ne i8 %22, 0
  br label %38

38:                                               ; preds = %35, %50
  %39 = phi ptr [ %4, %35 ], [ %52, %50 ]
  %40 = phi i32 [ 0, %35 ], [ %51, %50 ]
  %41 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 2
  %42 = load i16, ptr %41, align 8, !tbaa !215
  %43 = icmp eq i16 %42, 1
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i32, ptr %36, align 4, !tbaa !217
  %46 = icmp ne i32 %40, %45
  %47 = select i1 %46, i1 true, i1 %37
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  call fastcc void @drawhandlesN_active(ptr noundef nonnull %39) #21
  br label %49

49:                                               ; preds = %48, %44
  call fastcc void @drawhandlesN(ptr noundef nonnull %39, i8 noundef zeroext 0, i8 noundef zeroext %22) #21
  br label %50

50:                                               ; preds = %49, %38
  %51 = add nuw nsw i32 %40, 1
  %52 = load ptr, ptr %39, align 8, !tbaa !218
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %38, !llvm.loop !219

54:                                               ; preds = %50
  call fastcc void @draw_editnurb_splines(ptr noundef %15, ptr noundef nonnull %4, i8 noundef zeroext 0) #21
  call fastcc void @draw_editnurb_splines(ptr noundef %15, ptr noundef nonnull %4, i8 noundef zeroext 1) #21
  br i1 %34, label %69, label %55

55:                                               ; preds = %54, %65
  %56 = phi ptr [ %66, %65 ], [ %4, %54 ]
  %57 = getelementptr inbounds %struct.Nurb, ptr %56, i64 0, i32 2
  %58 = load i16, ptr %57, align 8, !tbaa !215
  %59 = icmp eq i16 %58, 1
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i16, ptr %19, align 8, !tbaa !214
  %62 = and i16 %61, 1
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  call fastcc void @drawhandlesN(ptr noundef nonnull %56, i8 noundef zeroext 1, i8 noundef zeroext %22) #21
  br label %65

65:                                               ; preds = %64, %60, %55
  call fastcc void @drawvertsN(ptr noundef nonnull %56, i8 noundef zeroext 0, i8 noundef zeroext %22, ptr noundef null) #21
  %66 = load ptr, ptr %56, align 8, !tbaa !218
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %55, !llvm.loop !220

68:                                               ; preds = %33
  call fastcc void @draw_editnurb_splines(ptr noundef %15, ptr noundef %4, i8 noundef zeroext 0) #21
  call fastcc void @draw_editnurb_splines(ptr noundef %15, ptr noundef %4, i8 noundef zeroext 1) #21
  br label %69

69:                                               ; preds = %65, %68, %54
  %70 = load i8, ptr %29, align 8, !tbaa !62
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  call void @glDepthFunc(i32 noundef 515) #20
  br label %73

73:                                               ; preds = %72, %69
  call void @glColor3ubv(ptr noundef nonnull %9) #20
  %74 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 23
  %75 = load i32, ptr %74, align 4, !tbaa !182
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %131, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.ToolSettings, ptr %13, i64 0, i32 6
  %80 = load float, ptr %79, align 8, !tbaa !221
  %81 = fcmp ogt float %80, 0x3F589374C0000000
  br i1 %81, label %82, label %131

82:                                               ; preds = %78
  %83 = load i16, ptr %19, align 8, !tbaa !214
  %84 = and i16 %83, 2
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %86, label %131

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 118
  %88 = load ptr, ptr %87, align 8, !tbaa !170
  %89 = getelementptr inbounds %struct.CurveCache, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !53
  %91 = icmp ne ptr %4, null
  %92 = icmp ne ptr %90, null
  %93 = select i1 %91, i1 %92, i1 false
  br i1 %93, label %94, label %131

94:                                               ; preds = %86
  %95 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %96 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  br label %97

97:                                               ; preds = %94, %125
  %98 = phi ptr [ %90, %94 ], [ %127, %125 ]
  %99 = phi ptr [ %4, %94 ], [ %126, %125 ]
  %100 = getelementptr inbounds %struct.BevList, ptr %98, i64 0, i32 2
  %101 = load i32, ptr %100, align 8, !tbaa !51
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %125

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.Nurb, ptr %99, i64 0, i32 9
  %105 = load i16, ptr %104, align 4, !tbaa !228
  %106 = sdiv i16 %105, 16
  %107 = sext i16 %106 to i32
  %108 = getelementptr inbounds %struct.BevList, ptr %98, i64 0, i32 9
  %109 = add nsw i32 %107, 1
  %110 = sext i32 %109 to i64
  %111 = xor i32 %107, -1
  br label %112

112:                                              ; preds = %103, %112
  %113 = phi i32 [ %101, %103 ], [ %123, %112 ]
  %114 = phi ptr [ %108, %103 ], [ %122, %112 ]
  %115 = getelementptr inbounds %struct.BevPoint, ptr %114, i64 0, i32 2
  %116 = load float, ptr %115, align 4, !tbaa !229
  %117 = load float, ptr %79, align 8, !tbaa !221
  %118 = fmul float %116, %117
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #22
  store float %118, ptr %10, align 4, !tbaa !45
  store <2 x float> zeroinitializer, ptr %95, align 4, !tbaa !45
  %119 = fneg float %118
  store float %119, ptr %11, align 4, !tbaa !45
  store <2 x float> zeroinitializer, ptr %96, align 4, !tbaa !45
  %120 = getelementptr inbounds %struct.BevPoint, ptr %114, i64 0, i32 9
  call void @mul_qt_v3(ptr noundef nonnull %120, ptr noundef nonnull %10) #20
  call void @mul_qt_v3(ptr noundef nonnull %120, ptr noundef nonnull %11) #20
  call fastcc void @add_v3_v3(ptr noundef nonnull %10, ptr noundef nonnull %114) #21
  call fastcc void @add_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %114) #21
  %121 = getelementptr inbounds %struct.BevPoint, ptr %114, i64 0, i32 7
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %10, ptr noundef nonnull %121, float noundef %119) #21
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %11, ptr noundef nonnull %121, float noundef %119) #21
  call void @glBegin(i32 noundef 3) #20
  call void @glVertex3fv(ptr noundef nonnull %10) #20
  call void @glVertex3fv(ptr noundef nonnull %114) #20
  call void @glVertex3fv(ptr noundef nonnull %11) #20
  call void @glEnd() #20
  %122 = getelementptr inbounds %struct.BevPoint, ptr %114, i64 %110
  %123 = add i32 %113, %111
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #22
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %112, label %125, !llvm.loop !231

125:                                              ; preds = %112, %97
  %126 = load ptr, ptr %99, align 8, !tbaa !218
  %127 = load ptr, ptr %98, align 8, !tbaa !53
  %128 = icmp ne ptr %126, null
  %129 = icmp ne ptr %127, null
  %130 = select i1 %128, i1 %129, i1 false
  br i1 %130, label %97, label %131, !llvm.loop !232

131:                                              ; preds = %125, %86, %82, %78, %73
  %132 = load i8, ptr %29, align 8, !tbaa !62
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %131
  call void @glDepthFunc(i32 noundef 519) #20
  br label %135

135:                                              ; preds = %134, %131
  br i1 %34, label %140, label %136

136:                                              ; preds = %135, %136
  %137 = phi ptr [ %138, %136 ], [ %4, %135 ]
  call fastcc void @drawvertsN(ptr noundef nonnull %137, i8 noundef zeroext 1, i8 noundef zeroext %22, ptr noundef %18) #21
  %138 = load ptr, ptr %137, align 8, !tbaa !218
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %136, !llvm.loop !233

140:                                              ; preds = %136, %135
  %141 = load i8, ptr %29, align 8, !tbaa !62
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %140
  call void @glDepthFunc(i32 noundef 515) #20
  br label %144

144:                                              ; preds = %140, %143, %8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @drawmball(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4, i16 noundef signext %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x i8], align 1
  %10 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #22
  %12 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !85
  %14 = getelementptr inbounds %struct.MetaBall, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !93
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %7
  %18 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !16
  %19 = and i32 %18, 32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #22
  call void @UI_GetThemeColor4ubv(i32 noundef 27, ptr noundef nonnull %9) #20
  call void @glColor3ubv(ptr noundef nonnull %9) #20
  %22 = call fastcc zeroext i8 @drawDispList(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i8 noundef zeroext %4, i16 noundef signext %5, ptr noundef nonnull %9) #21, !range !18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #22
  %23 = load ptr, ptr %14, align 8, !tbaa !93
  br label %33

24:                                               ; preds = %7
  %25 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !75
  %27 = and i32 %26, 512
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = tail call fastcc zeroext i8 @drawDispList(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i8 noundef zeroext %4, i16 noundef signext %5, ptr noundef %6) #21, !range !18
  br label %31

31:                                               ; preds = %29, %24
  %32 = getelementptr inbounds %struct.MetaBall, ptr %13, i64 0, i32 2
  br label %33

33:                                               ; preds = %17, %21, %31
  %34 = phi ptr [ %32, %31 ], [ %23, %21 ], [ %15, %17 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !92
  %36 = icmp eq ptr %35, null
  br i1 %36, label %111, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 29
  %39 = load i16, ptr %38, align 2, !tbaa !15
  %40 = and i16 %39, 4
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %111

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 5
  %44 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %43) #20
  %45 = call fastcc float @normalize_v3(ptr noundef nonnull %8) #21
  %46 = getelementptr inbounds [4 x [4 x float]], ptr %8, i64 0, i64 1
  %47 = call fastcc float @normalize_v3(ptr noundef nonnull %46) #21
  %48 = load ptr, ptr %14, align 8, !tbaa !93
  %49 = icmp eq ptr %48, null
  %50 = and i16 %5, 2
  %51 = icmp eq i16 %50, 0
  %52 = and i1 %51, %49
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  call void @glColor3ubv(ptr noundef %6) #20
  br label %54

54:                                               ; preds = %53, %42
  br label %55

55:                                               ; preds = %54, %107
  %56 = phi i32 [ %108, %107 ], [ 1, %54 ]
  %57 = phi ptr [ %109, %107 ], [ %35, %54 ]
  %58 = load ptr, ptr %14, align 8, !tbaa !93
  %59 = icmp eq ptr %58, null
  br i1 %59, label %76, label %60

60:                                               ; preds = %55
  br i1 %51, label %61, label %67

61:                                               ; preds = %60
  %62 = getelementptr inbounds %struct.MetaElem, ptr %57, i64 0, i32 4
  %63 = load i16, ptr %62, align 2, !tbaa !234
  %64 = and i16 %63, 17
  %65 = icmp eq i16 %64, 17
  %66 = select i1 %65, i32 10526960, i32 3158176
  call void @cpack(i32 noundef %66) #20
  br label %67

67:                                               ; preds = %61, %60
  %68 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !16
  %69 = and i32 %68, 32
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = trunc i32 %56 to i16
  %73 = getelementptr inbounds %struct.MetaElem, ptr %57, i64 0, i32 5
  store i16 %72, ptr %73, align 4, !tbaa !236
  %74 = add nsw i32 %56, 1
  %75 = call zeroext i8 @GPU_select_load_id(i32 noundef %56) #20
  br label %76

76:                                               ; preds = %67, %71, %55
  %77 = phi i32 [ %74, %71 ], [ %56, %67 ], [ %56, %55 ]
  %78 = getelementptr inbounds %struct.MetaElem, ptr %57, i64 0, i32 7
  %79 = getelementptr inbounds %struct.MetaElem, ptr %57, i64 0, i32 14
  %80 = load float, ptr %79, align 8, !tbaa !237
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %78, float noundef %80, ptr noundef nonnull %8) #21
  %81 = load ptr, ptr %14, align 8, !tbaa !93
  %82 = icmp eq ptr %81, null
  br i1 %82, label %107, label %83

83:                                               ; preds = %76
  br i1 %51, label %84, label %90

84:                                               ; preds = %83
  %85 = getelementptr inbounds %struct.MetaElem, ptr %57, i64 0, i32 4
  %86 = load i16, ptr %85, align 2, !tbaa !234
  %87 = and i16 %86, 17
  %88 = icmp eq i16 %87, 1
  %89 = select i1 %88, i32 10547360, i32 3186736
  call void @cpack(i32 noundef %89) #20
  br label %90

90:                                               ; preds = %84, %83
  %91 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !16
  %92 = and i32 %91, 32
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %90
  %95 = trunc i32 %77 to i16
  %96 = getelementptr inbounds %struct.MetaElem, ptr %57, i64 0, i32 6
  store i16 %95, ptr %96, align 2, !tbaa !238
  %97 = add nsw i32 %77, 1
  %98 = call zeroext i8 @GPU_select_load_id(i32 noundef %77) #20
  br label %99

99:                                               ; preds = %94, %90
  %100 = phi i32 [ %97, %94 ], [ %77, %90 ]
  %101 = load float, ptr %79, align 8, !tbaa !237
  %102 = getelementptr inbounds %struct.MetaElem, ptr %57, i64 0, i32 16
  %103 = load float, ptr %102, align 8, !tbaa !239
  %104 = call float @atanf(float noundef %103) #20
  %105 = fmul float %101, %104
  %106 = fdiv float %105, 0x3FF921FB60000000
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %78, float noundef %106, ptr noundef nonnull %8) #21
  br label %107

107:                                              ; preds = %99, %76
  %108 = phi i32 [ %100, %99 ], [ %77, %76 ]
  %109 = load ptr, ptr %57, align 8, !tbaa !240
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %55, !llvm.loop !241

111:                                              ; preds = %107, %37, %33
  %112 = phi i8 [ 1, %33 ], [ 0, %37 ], [ 0, %107 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #22
  ret i8 %112
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_empty_image(ptr noundef %0, i16 noundef signext %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 131
  %7 = load ptr, ptr %6, align 8, !tbaa !242
  %8 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef %5, ptr noundef %7, ptr noundef null) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !243
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !246
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  tail call void @IMB_rect_from_float(ptr noundef nonnull %8) #20
  %19 = load ptr, ptr %11, align 8, !tbaa !243
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %10, %18
  %22 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !247
  %24 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !248
  br label %26

26:                                               ; preds = %14, %18, %3, %21
  %27 = phi i32 [ %23, %21 ], [ 1, %3 ], [ 1, %18 ], [ 1, %14 ]
  %28 = phi i32 [ %25, %21 ], [ 1, %3 ], [ 1, %18 ], [ 1, %14 ]
  %29 = icmp eq ptr %5, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.Image, ptr %5, i64 0, i32 34
  %32 = load float, ptr %31, align 8, !tbaa !249
  %33 = getelementptr inbounds %struct.Image, ptr %5, i64 0, i32 35
  %34 = load float, ptr %33, align 4, !tbaa !251
  %35 = fcmp ogt float %32, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = fdiv float %34, %32
  br label %42

38:                                               ; preds = %30
  %39 = fcmp olt float %32, %34
  br i1 %39, label %40, label %42

40:                                               ; preds = %38
  %41 = fdiv float %32, %34
  br label %42

42:                                               ; preds = %26, %38, %36, %40
  %43 = phi float [ %37, %36 ], [ 1.000000e+00, %40 ], [ 1.000000e+00, %38 ], [ 1.000000e+00, %26 ]
  %44 = phi float [ 1.000000e+00, %36 ], [ %41, %40 ], [ 1.000000e+00, %38 ], [ 1.000000e+00, %26 ]
  %45 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 130
  %46 = load float, ptr %45, align 8, !tbaa !45
  %47 = sitofp i32 %27 to float
  %48 = fmul float %46, %47
  %49 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 130, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !45
  %51 = sitofp i32 %28 to float
  %52 = fmul float %50, %51
  tail call void @glMatrixMode(i32 noundef 5888) #20
  tail call void @glPushMatrix() #20
  tail call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #20
  %53 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 89
  %54 = load float, ptr %53, align 8, !tbaa !95
  %55 = fmul float %44, %47
  %56 = fmul float %43, %51
  %57 = tail call fastcc float @max_ff(float noundef %55, float noundef %56) #21
  %58 = fdiv float %54, %57
  %59 = fmul float %44, %58
  %60 = fmul float %43, %58
  tail call void @glScalef(float noundef %59, float noundef %60, float noundef 1.000000e+00) #20
  br i1 %9, label %79, label %61

61:                                               ; preds = %42
  %62 = getelementptr inbounds %struct.ImBuf, ptr %8, i64 0, i32 8
  %63 = load ptr, ptr %62, align 8, !tbaa !243
  %64 = icmp eq ptr %63, null
  br i1 %64, label %79, label %65

65:                                               ; preds = %61
  %66 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 90), align 4, !tbaa !252
  %67 = fcmp une float %66, 1.000000e+00
  %68 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 20), align 8, !tbaa !256
  %69 = and i16 %68, 4
  %70 = icmp eq i16 %69, 0
  %71 = select i1 %70, i32 9729, i32 9728
  tail call void @glEnable(i32 noundef 3042) #20
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #20
  br i1 %67, label %72, label %76

72:                                               ; preds = %65
  tail call void @glEnable(i32 noundef 3008) #20
  %73 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 90), align 4, !tbaa !252
  tail call void @glAlphaFunc(i32 noundef 516, float noundef %73) #20
  %74 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 98
  tail call void @glColor4fv(ptr noundef nonnull %74) #20
  %75 = load ptr, ptr %62, align 8, !tbaa !243
  tail call void @glaDrawPixelsTex(float noundef %48, float noundef %52, i32 noundef %27, i32 noundef %28, i32 noundef 6408, i32 noundef 5121, i32 noundef %71, ptr noundef %75) #20
  tail call void @glPixelTransferf(i32 noundef 3356, float noundef 1.000000e+00) #20
  tail call void @glDisable(i32 noundef 3042) #20
  tail call void @glDisable(i32 noundef 3008) #20
  tail call void @glAlphaFunc(i32 noundef 516, float noundef 0.000000e+00) #20
  br label %79

76:                                               ; preds = %65
  %77 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 98
  tail call void @glColor4fv(ptr noundef nonnull %77) #20
  %78 = load ptr, ptr %62, align 8, !tbaa !243
  tail call void @glaDrawPixelsTex(float noundef %48, float noundef %52, i32 noundef %27, i32 noundef %28, i32 noundef 6408, i32 noundef 5121, i32 noundef %71, ptr noundef %78) #20
  tail call void @glPixelTransferf(i32 noundef 3356, float noundef 1.000000e+00) #20
  tail call void @glDisable(i32 noundef 3042) #20
  br label %79

79:                                               ; preds = %72, %76, %61, %42
  %80 = and i16 %1, 2
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  tail call void @glColor3ubv(ptr noundef %2) #20
  br label %83

83:                                               ; preds = %82, %79
  tail call void @glBegin(i32 noundef 2) #20
  tail call void @glVertex2f(float noundef %48, float noundef %52) #20
  %84 = fadd float %48, %47
  tail call void @glVertex2f(float noundef %84, float noundef %52) #20
  %85 = fadd float %52, %51
  tail call void @glVertex2f(float noundef %84, float noundef %85) #20
  tail call void @glVertex2f(float noundef %48, float noundef %85) #20
  tail call void @glEnd() #20
  tail call void @glMatrixMode(i32 noundef 5888) #20
  tail call void @glPopMatrix() #20
  tail call void @BKE_image_release_ibuf(ptr noundef %5, ptr noundef %8, ptr noundef null) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawlamp(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i16 noundef signext %4, ptr noundef %5, i8 noundef zeroext %6) unnamed_addr #0 {
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca [4 x i8], align 1
  %13 = alloca [4 x i8], align 1
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x [3 x float]], align 16
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = getelementptr inbounds %struct.Base, ptr %2, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !39
  %23 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 47
  %24 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 47, i64 3
  %25 = tail call float @ED_view3d_pixel_size(ptr noundef %1, ptr noundef nonnull %24) #20
  %26 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #22
  %28 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 25
  %29 = load i8, ptr %28, align 1, !tbaa !96
  %30 = icmp eq i8 %29, 2
  br i1 %30, label %31, label %36

31:                                               ; preds = %7
  %32 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 15
  %33 = load ptr, ptr %32, align 8, !tbaa !97
  %34 = load ptr, ptr %21, align 8, !tbaa !39
  %35 = icmp eq ptr %33, %34
  br label %36

36:                                               ; preds = %31, %7
  %37 = phi i1 [ false, %7 ], [ %35, %31 ]
  %38 = icmp ugt i8 %3, 2
  br i1 %38, label %39, label %64

39:                                               ; preds = %36
  %40 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !16
  %41 = and i32 %40, 32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.Lamp, ptr %27, i64 0, i32 2
  %45 = load i16, ptr %44, align 8, !tbaa !257
  %46 = icmp eq i16 %45, 2
  br i1 %46, label %47, label %64

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.Lamp, ptr %27, i64 0, i32 4
  %49 = load i32, ptr %48, align 4, !tbaa !259
  %50 = and i32 %49, 131072
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.Base, ptr %2, i64 0, i32 4
  %54 = load i32, ptr %53, align 8, !tbaa !75
  %55 = and i32 %54, 512
  %56 = icmp ne i32 %55, 0
  %57 = select i1 %56, i1 true, i1 %37
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 48
  %60 = load i8, ptr %59, align 1, !tbaa !77
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 44
  tail call void @ED_view3d_after_add(ptr noundef nonnull %63, ptr noundef nonnull %2, i16 noundef signext %4) #20
  br label %322

64:                                               ; preds = %36, %39, %43, %47, %58, %52
  %65 = phi i1 [ true, %58 ], [ false, %52 ], [ false, %47 ], [ false, %43 ], [ false, %39 ], [ false, %36 ]
  tail call void @glPushMatrix() #20
  %66 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 1
  tail call void @glLoadMatrixf(ptr noundef nonnull %66) #20
  %67 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 67), align 4, !tbaa !260
  %68 = sitofp i16 %67 to float
  %69 = fmul float %68, 5.000000e-01
  %70 = fmul float %25, %69
  %71 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 2
  call void @copy_m4_m4(ptr noundef nonnull %11, ptr noundef nonnull %71) #20
  %72 = call fastcc float @normalize_v3(ptr noundef nonnull %11) #21
  %73 = getelementptr inbounds [4 x [4 x float]], ptr %11, i64 0, i64 1
  %74 = call fastcc float @normalize_v3(ptr noundef nonnull %73) #21
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %24) #21
  %75 = and i16 %4, 2
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %64
  %78 = load i8, ptr %5, align 1, !tbaa !55
  store i8 %78, ptr %12, align 1, !tbaa !55
  %79 = getelementptr inbounds i8, ptr %5, i64 1
  %80 = load i8, ptr %79, align 1, !tbaa !55
  %81 = getelementptr inbounds [4 x i8], ptr %12, i64 0, i64 1
  store i8 %80, ptr %81, align 1, !tbaa !55
  %82 = getelementptr inbounds i8, ptr %5, i64 2
  %83 = load i8, ptr %82, align 1, !tbaa !55
  %84 = getelementptr inbounds [4 x i8], ptr %12, i64 0, i64 2
  store i8 %83, ptr %84, align 1, !tbaa !55
  %85 = getelementptr inbounds [4 x i8], ptr %12, i64 0, i64 3
  store i8 -102, ptr %85, align 1, !tbaa !55
  call void @glColor4ubv(ptr noundef nonnull %12) #20
  %86 = fcmp ogt float %70, 0.000000e+00
  br i1 %86, label %89, label %124

87:                                               ; preds = %64
  %88 = fcmp ogt float %70, 0.000000e+00
  br i1 %88, label %106, label %124

89:                                               ; preds = %77
  %90 = getelementptr inbounds %struct.ID, ptr %22, i64 0, i32 6
  %91 = load i32, ptr %90, align 4, !tbaa !137
  %92 = icmp sgt i32 %91, 1
  br i1 %92, label %93, label %102

93:                                               ; preds = %89
  %94 = icmp eq i8 %6, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 53
  %97 = load i16, ptr %96, align 4, !tbaa !84
  %98 = and i16 %97, 1
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %95, %93
  call void @glColor4ub(i8 noundef zeroext -120, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -101) #20
  br label %102

101:                                              ; preds = %95
  call void @glColor4ub(i8 noundef zeroext 119, i8 noundef zeroext -52, i8 noundef zeroext -52, i8 noundef zeroext -101) #20
  br label %102

102:                                              ; preds = %100, %101, %89
  call void @glEnable(i32 noundef 3042) #20
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %8, float noundef %70, ptr noundef nonnull %11) #21
  call void @glDisable(i32 noundef 3042) #20
  call void @drawcircball(i32 noundef 9, ptr noundef nonnull %8, float noundef %70, ptr noundef nonnull %11) #21
  %103 = load i32, ptr %90, align 4, !tbaa !137
  %104 = icmp sgt i32 %103, 1
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  call void @glColor4ubv(ptr noundef nonnull %12) #20
  br label %107

106:                                              ; preds = %87
  call void @glEnable(i32 noundef 3042) #20
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %8, float noundef %70, ptr noundef nonnull %11) #21
  call void @glDisable(i32 noundef 3042) #20
  call void @drawcircball(i32 noundef 9, ptr noundef nonnull %8, float noundef %70, ptr noundef nonnull %11) #21
  br label %107

107:                                              ; preds = %106, %102, %105
  %108 = fmul float %70, 3.000000e+00
  call void @setlinestyle(i32 noundef 3) #20
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %8, float noundef %108, ptr noundef nonnull %11) #21
  %109 = getelementptr inbounds %struct.Lamp, ptr %27, i64 0, i32 2
  %110 = load i16, ptr %109, align 8, !tbaa !257
  %111 = icmp eq i16 %110, 3
  br i1 %111, label %125, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.Lamp, ptr %27, i64 0, i32 4
  %114 = load i32, ptr %113, align 4, !tbaa !259
  %115 = and i32 %114, 8192
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = and i32 %114, 1
  %119 = icmp ne i32 %118, 0
  %120 = icmp eq i16 %110, 2
  %121 = and i1 %120, %119
  br i1 %121, label %122, label %125

122:                                              ; preds = %117, %112
  %123 = call float @llvm.fmuladd.f32(float %25, float 3.000000e+00, float %108)
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %8, float noundef %123, ptr noundef nonnull %11) #21
  br label %125

124:                                              ; preds = %87, %77
  call void @setlinestyle(i32 noundef 3) #20
  br label %125

125:                                              ; preds = %107, %122, %117, %124
  %126 = phi float [ %108, %122 ], [ %108, %117 ], [ %108, %107 ], [ 0.000000e+00, %124 ]
  %127 = getelementptr inbounds %struct.Lamp, ptr %27, i64 0, i32 2
  %128 = load i16, ptr %127, align 8, !tbaa !257
  %129 = icmp eq i16 %128, 1
  br i1 %129, label %130, label %151

130:                                              ; preds = %125
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #22
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %16) #22
  %131 = getelementptr inbounds [4 x [4 x float]], ptr %11, i64 0, i64 2
  call void @axis_angle_normalized_to_mat3_ex(ptr noundef nonnull %16, ptr noundef nonnull %131, float noundef 0x3FE6A09E60000000, float noundef 0x3FE6A09E60000000) #20
  %132 = fmul float %126, 0x3FF3333340000000
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %14, ptr noundef nonnull %11, float noundef %132) #21
  %133 = fmul float %126, 2.500000e+00
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %15, ptr noundef nonnull %11, float noundef %133) #21
  %134 = load float, ptr %8, align 4, !tbaa !45
  %135 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %136 = load float, ptr %135, align 4, !tbaa !45
  %137 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %138 = load float, ptr %137, align 4, !tbaa !45
  call void @glTranslatef(float noundef %134, float noundef %136, float noundef %138) #20
  call void @setlinestyle(i32 noundef 3) #20
  call void @glBegin(i32 noundef 1) #20
  br label %139

139:                                              ; preds = %130, %139
  %140 = phi i16 [ 0, %130 ], [ %141, %139 ]
  call void @glVertex3fv(ptr noundef nonnull %14) #20
  call void @glVertex3fv(ptr noundef nonnull %15) #20
  call void @mul_m3_v3(ptr noundef nonnull %16, ptr noundef nonnull %14) #20
  call void @mul_m3_v3(ptr noundef nonnull %16, ptr noundef nonnull %15) #20
  %141 = add nuw nsw i16 %140, 1
  %142 = icmp eq i16 %141, 8
  br i1 %142, label %143, label %139, !llvm.loop !261

143:                                              ; preds = %139
  call void @glEnd() #20
  %144 = load float, ptr %8, align 4, !tbaa !45
  %145 = fneg float %144
  %146 = load float, ptr %135, align 4, !tbaa !45
  %147 = fneg float %146
  %148 = load float, ptr %137, align 4, !tbaa !45
  %149 = fneg float %148
  call void @glTranslatef(float noundef %145, float noundef %147, float noundef %149) #20
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #22
  %150 = load i16, ptr %127, align 8, !tbaa !257
  br label %151

151:                                              ; preds = %143, %125
  %152 = phi i16 [ %150, %143 ], [ %128, %125 ]
  %153 = icmp eq i16 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.Lamp, ptr %27, i64 0, i32 4
  %156 = load i32, ptr %155, align 4, !tbaa !259
  %157 = and i32 %156, 64
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.Lamp, ptr %27, i64 0, i32 16
  %161 = load float, ptr %160, align 8, !tbaa !262
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %8, float noundef %161, ptr noundef nonnull %11) #21
  br label %162

162:                                              ; preds = %154, %159, %151
  call void @glPopMatrix() #20
  call fastcc void @zero_v3(ptr noundef nonnull %8) #21
  br i1 %37, label %301, label %163

163:                                              ; preds = %162
  %164 = load i16, ptr %127, align 8, !tbaa !257
  switch i16 %164, label %301 [
    i16 2, label %165
    i16 5, label %165
    i16 3, label %227
    i16 1, label %227
    i16 4, label %279
  ]

165:                                              ; preds = %163, %163
  call fastcc void @copy_v3_fl3(ptr noundef nonnull %9, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00) #21
  %166 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 3, i64 0, i64 2
  %167 = load float, ptr %166, align 8, !tbaa !45
  %168 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 3, i64 1, i64 2
  %169 = load float, ptr %168, align 8, !tbaa !45
  %170 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 3, i64 2, i64 2
  %171 = load float, ptr %170, align 8, !tbaa !45
  call fastcc void @copy_v3_fl3(ptr noundef nonnull %10, float noundef %167, float noundef %169, float noundef %171) #21
  call void @mul_transposed_mat3_m4_v3(ptr noundef nonnull %23, ptr noundef nonnull %10) #20
  %172 = getelementptr inbounds %struct.Lamp, ptr %27, i64 0, i32 16
  %173 = load float, ptr %172, align 8, !tbaa !262
  %174 = fneg float %173
  %175 = getelementptr inbounds %struct.Lamp, ptr %27, i64 0, i32 17
  %176 = load float, ptr %175, align 4, !tbaa !263
  %177 = fmul float %176, 5.000000e-01
  %178 = call float @cosf(float noundef %177) #20
  %179 = fneg float %178
  %180 = call float @llvm.fmuladd.f32(float %179, float %178, float 1.000000e+00)
  %181 = call float @sqrtf(float noundef %180) #20
  %182 = fmul float %181, %174
  call fastcc void @spotvolume(ptr noundef nonnull %9, ptr noundef nonnull %10, float noundef %178) #21
  call fastcc void @mul_v3_fl(ptr noundef nonnull %9, float noundef %174) #21
  call fastcc void @mul_v3_fl(ptr noundef nonnull %10, float noundef %174) #21
  call void @glBegin(i32 noundef 3) #20
  call void @glVertex3fv(ptr noundef nonnull %10) #20
  call void @glVertex3fv(ptr noundef nonnull %8) #20
  call void @glVertex3fv(ptr noundef nonnull %9) #20
  call void @glEnd() #20
  %183 = fmul float %178, %174
  call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %183) #20
  %184 = getelementptr inbounds %struct.Lamp, ptr %27, i64 0, i32 4
  %185 = load i32, ptr %184, align 4, !tbaa !259
  %186 = and i32 %185, 128
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %193, label %188

188:                                              ; preds = %165
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #22
  %189 = call float @llvm.fabs.f32(float %182)
  %190 = getelementptr inbounds [3 x float], ptr %17, i64 0, i64 1
  store float %189, ptr %190, align 4, !tbaa !45
  store float %189, ptr %17, align 4, !tbaa !45
  %191 = getelementptr inbounds [3 x float], ptr %17, i64 0, i64 2
  store float 0.000000e+00, ptr %191, align 4, !tbaa !45
  call void @glBegin(i32 noundef 2) #20
  call void @glVertex3fv(ptr noundef nonnull %17) #20
  %192 = fneg float %189
  store float %192, ptr %190, align 4, !tbaa !45
  call void @glVertex3fv(ptr noundef nonnull %17) #20
  store float %192, ptr %17, align 4, !tbaa !45
  call void @glVertex3fv(ptr noundef nonnull %17) #20
  store float %189, ptr %190, align 4, !tbaa !45
  call void @glVertex3fv(ptr noundef nonnull %17) #20
  call void @glEnd() #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #22
  br label %195

193:                                              ; preds = %165
  %194 = call float @llvm.fabs.f32(float %182)
  call void @circ(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %194) #20
  br label %195

195:                                              ; preds = %193, %188
  %196 = load i16, ptr %127, align 8, !tbaa !257
  %197 = icmp eq i16 %196, 2
  br i1 %197, label %198, label %209

198:                                              ; preds = %195
  %199 = call float @llvm.fabs.f32(float %182)
  %200 = getelementptr inbounds %struct.Lamp, ptr %27, i64 0, i32 18
  %201 = load float, ptr %200, align 8, !tbaa !264
  %202 = fmul float %201, %201
  %203 = fsub float 1.000000e+00, %202
  %204 = fmul float %199, %203
  %205 = fcmp une float %204, 0.000000e+00
  %206 = fcmp une float %204, %199
  %207 = and i1 %205, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %198
  call void @circ(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %204) #20
  br label %209

209:                                              ; preds = %198, %208, %195
  br i1 %65, label %210, label %211

210:                                              ; preds = %209
  call fastcc void @draw_transp_spot_volume(ptr noundef nonnull %27, float noundef %183, float noundef %182) #21
  br label %211

211:                                              ; preds = %210, %209
  %212 = fneg float %183
  call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %212) #20
  %213 = load i16, ptr %127, align 8, !tbaa !257
  %214 = icmp eq i16 %213, 2
  br i1 %214, label %215, label %223

215:                                              ; preds = %211
  %216 = load i32, ptr %184, align 4, !tbaa !259
  %217 = and i32 %216, 1
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %223, label %219

219:                                              ; preds = %215
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #22
  %220 = getelementptr inbounds %struct.Lamp, ptr %27, i64 0, i32 25
  %221 = load float, ptr %220, align 4, !tbaa !265
  %222 = fdiv float %221, %212
  call void @interp_v3_v3v3(ptr noundef nonnull %18, ptr noundef nonnull %8, ptr noundef nonnull %9, float noundef %222) #20
  call void @interp_v3_v3v3(ptr noundef nonnull %19, ptr noundef nonnull %8, ptr noundef nonnull %10, float noundef %222) #20
  call void @glBegin(i32 noundef 3) #20
  call void @glVertex3fv(ptr noundef nonnull %18) #20
  call void @glVertex3fv(ptr noundef nonnull %19) #20
  call void @glEnd() #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #22
  br label %301

223:                                              ; preds = %215, %211
  call void @glBegin(i32 noundef 3) #20
  %224 = fneg float %126
  call void @glVertex3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %224) #20
  %225 = load float, ptr %172, align 8, !tbaa !262
  %226 = fneg float %225
  call void @glVertex3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %226) #20
  call void @glEnd() #20
  br label %301

227:                                              ; preds = %163, %163
  call void @glBegin(i32 noundef 3) #20
  %228 = fneg float %126
  %229 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  store float %228, ptr %229, align 4, !tbaa !45
  call void @glVertex3fv(ptr noundef nonnull %8) #20
  %230 = getelementptr inbounds %struct.Lamp, ptr %27, i64 0, i32 16
  %231 = load float, ptr %230, align 8, !tbaa !262
  %232 = fneg float %231
  store float %232, ptr %229, align 4, !tbaa !45
  call void @glVertex3fv(ptr noundef nonnull %8) #20
  call void @glEnd() #20
  %233 = load i16, ptr %127, align 8, !tbaa !257
  %234 = icmp eq i16 %233, 3
  br i1 %234, label %235, label %301

235:                                              ; preds = %227
  call fastcc void @zero_v3(ptr noundef nonnull %8) #21
  call void @setlinestyle(i32 noundef 4) #20
  %236 = getelementptr inbounds [3 x float], ptr %20, i64 0, i64 2
  %237 = getelementptr inbounds [3 x float], ptr %20, i64 0, i64 1
  br label %238

238:                                              ; preds = %235, %275
  %239 = phi i16 [ 1, %235 ], [ %276, %275 ]
  %240 = phi i16 [ 0, %235 ], [ %277, %275 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %20, i8 0, i64 12, i1 false)
  call void @glBegin(i32 noundef 3) #20
  %241 = icmp ult i16 %240, 2
  %242 = and i16 %240, 32766
  %243 = icmp eq i16 %242, 2
  %244 = sitofp i16 %239 to float
  %245 = fmul float %126, %244
  br label %246

246:                                              ; preds = %238, %267
  %247 = phi float [ 0x3F947AE140000000, %238 ], [ %272, %267 ]
  %248 = phi i16 [ 0, %238 ], [ %273, %267 ]
  br i1 %241, label %249, label %257

249:                                              ; preds = %246
  %250 = icmp eq i16 %248, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %249
  store float %245, ptr %20, align 4, !tbaa !45
  br label %267

252:                                              ; preds = %249
  %253 = load float, ptr %20, align 4, !tbaa !45
  %254 = sitofp i16 %248 to float
  %255 = fmul float %254, 0x3FC1EB8520000000
  %256 = call float @llvm.fmuladd.f32(float %244, float %255, float %253)
  store float %256, ptr %20, align 4, !tbaa !45
  br label %267

257:                                              ; preds = %246
  br i1 %243, label %258, label %267

258:                                              ; preds = %257
  %259 = icmp eq i16 %248, 0
  br i1 %259, label %265, label %260

260:                                              ; preds = %258
  %261 = load float, ptr %237, align 4, !tbaa !45
  %262 = sitofp i16 %248 to float
  %263 = fmul float %262, 0x3FC1EB8520000000
  %264 = call float @llvm.fmuladd.f32(float %244, float %263, float %261)
  br label %265

265:                                              ; preds = %258, %260
  %266 = phi float [ %264, %260 ], [ %245, %258 ]
  store float %266, ptr %237, align 4, !tbaa !45
  br label %267

267:                                              ; preds = %265, %257, %251, %252
  %268 = load float, ptr %236, align 4, !tbaa !45
  %269 = sitofp i16 %248 to float
  %270 = fneg float %269
  %271 = call float @llvm.fmuladd.f32(float %270, float %247, float %268)
  store float %271, ptr %236, align 4, !tbaa !45
  call void @glVertex3fv(ptr noundef nonnull %20) #20
  %272 = fmul float %247, 0x3FF6666660000000
  %273 = add nuw nsw i16 %248, 1
  %274 = icmp eq i16 %273, 6
  br i1 %274, label %275, label %246, !llvm.loop !266

275:                                              ; preds = %267
  call void @glEnd() #20
  %276 = sub nsw i16 0, %239
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #22
  %277 = add nuw nsw i16 %240, 1
  %278 = icmp eq i16 %277, 4
  br i1 %278, label %301, label %238, !llvm.loop !267

279:                                              ; preds = %163
  call void @setlinestyle(i32 noundef 3) #20
  %280 = getelementptr inbounds %struct.Lamp, ptr %27, i64 0, i32 42
  %281 = load i16, ptr %280, align 2, !tbaa !268
  switch i16 %281, label %296 [
    i16 0, label %282
    i16 1, label %287
  ]

282:                                              ; preds = %279
  %283 = getelementptr inbounds %struct.Lamp, ptr %27, i64 0, i32 43
  %284 = load float, ptr %283, align 4, !tbaa !269
  %285 = fmul float %284, -5.000000e-01
  %286 = fmul float %284, 5.000000e-01
  call void @fdrawbox(float noundef %285, float noundef %285, float noundef %286, float noundef %286) #20
  br label %296

287:                                              ; preds = %279
  %288 = getelementptr inbounds %struct.Lamp, ptr %27, i64 0, i32 43
  %289 = load float, ptr %288, align 4, !tbaa !269
  %290 = fmul float %289, -5.000000e-01
  %291 = getelementptr inbounds %struct.Lamp, ptr %27, i64 0, i32 44
  %292 = load float, ptr %291, align 8, !tbaa !270
  %293 = fmul float %292, -5.000000e-01
  %294 = fmul float %289, 5.000000e-01
  %295 = fmul float %292, 5.000000e-01
  call void @fdrawbox(float noundef %290, float noundef %293, float noundef %294, float noundef %295) #20
  br label %296

296:                                              ; preds = %279, %287, %282
  call void @glBegin(i32 noundef 3) #20
  %297 = fneg float %126
  call void @glVertex3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %297) #20
  %298 = getelementptr inbounds %struct.Lamp, ptr %27, i64 0, i32 16
  %299 = load float, ptr %298, align 8, !tbaa !262
  %300 = fneg float %299
  call void @glVertex3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %300) #20
  call void @glEnd() #20
  br label %301

301:                                              ; preds = %275, %163, %223, %219, %296, %227, %162
  call void @glPushMatrix() #20
  call void @glLoadMatrixf(ptr noundef nonnull %66) #20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %24) #21
  call void @setlinestyle(i32 noundef 0) #20
  %302 = load i16, ptr %127, align 8, !tbaa !257
  %303 = icmp eq i16 %302, 2
  br i1 %303, label %304, label %311

304:                                              ; preds = %301
  %305 = getelementptr inbounds %struct.Lamp, ptr %27, i64 0, i32 4
  %306 = load i32, ptr %305, align 4, !tbaa !259
  %307 = and i32 %306, 1
  %308 = icmp eq i32 %307, 0
  %309 = select i1 %308, i1 true, i1 %37
  br i1 %309, label %311, label %310

310:                                              ; preds = %304
  call fastcc void @drawshadbuflimits(ptr noundef nonnull %27, ptr noundef nonnull %23) #21
  br label %311

311:                                              ; preds = %310, %304, %301
  br i1 %76, label %312, label %313

312:                                              ; preds = %311
  call void @UI_GetThemeColor4ubv(i32 noundef 89, ptr noundef nonnull %13) #20
  call void @glColor4ubv(ptr noundef nonnull %13) #20
  br label %313

313:                                              ; preds = %312, %311
  call void @glEnable(i32 noundef 3042) #20
  %314 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %315 = load float, ptr %314, align 4, !tbaa !45
  %316 = fcmp ogt float %315, 0.000000e+00
  %317 = fneg float %126
  %318 = select i1 %316, float %317, float %126
  %319 = fadd float %315, %318
  store float %319, ptr %314, align 4, !tbaa !45
  call void @glBegin(i32 noundef 3) #20
  call void @glVertex3fv(ptr noundef nonnull %8) #20
  store float 0.000000e+00, ptr %314, align 4, !tbaa !45
  call void @glVertex3fv(ptr noundef nonnull %8) #20
  call void @glEnd() #20
  call void @glPointSize(float noundef 2.000000e+00) #20
  call void @glBegin(i32 noundef 0) #20
  call void @glVertex3fv(ptr noundef nonnull %8) #20
  call void @glEnd() #20
  call void @glPointSize(float noundef 1.000000e+00) #20
  call void @glDisable(i32 noundef 3042) #20
  br i1 %76, label %320, label %321

320:                                              ; preds = %313
  call void @glColor3ubv(ptr noundef %5) #20
  br label %321

321:                                              ; preds = %320, %313
  call void @glPopMatrix() #20
  br label %322

322:                                              ; preds = %321, %62
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawcamera(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, i16 noundef signext %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca [3 x float], align 8
  %8 = alloca [4 x [3 x float]], align 16
  %9 = alloca [2 x float], align 4
  %10 = alloca [2 x float], align 8
  %11 = alloca [3 x float], align 8
  %12 = alloca float, align 4
  %13 = alloca [4 x float], align 16
  %14 = alloca [4 x [4 x float]], align 16
  %15 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #22
  %17 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 25
  %18 = load i8, ptr %17, align 1, !tbaa !96
  %19 = icmp eq i8 %18, 2
  br i1 %19, label %20, label %25

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 15
  %22 = load ptr, ptr %21, align 8, !tbaa !97
  %23 = icmp eq ptr %16, %22
  %24 = zext i1 %23 to i8
  br label %25

25:                                               ; preds = %20, %6
  %26 = phi i8 [ 0, %6 ], [ %24, %20 ]
  %27 = tail call ptr @BKE_object_movieclip_get(ptr noundef %0, ptr noundef %16, i8 noundef zeroext 0) #20
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call fastcc void @draw_viewport_reconstruction(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull %27, i16 noundef signext %4, ptr noundef %5, i8 noundef zeroext 0) #21
  tail call fastcc void @draw_viewport_reconstruction(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull %27, i16 noundef signext %4, ptr noundef %5, i8 noundef zeroext 1) #21
  br label %30

30:                                               ; preds = %29, %25
  %31 = icmp eq i8 %26, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %30
  %33 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !16
  %34 = and i32 %33, 32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = and i16 %4, 2
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i8, ptr %5, align 1, !tbaa !55
  store i8 %40, ptr @view3d_camera_border_hack_col, align 1, !tbaa !55
  %41 = getelementptr inbounds i8, ptr %5, i64 1
  %42 = load i8, ptr %41, align 1, !tbaa !55
  store i8 %42, ptr getelementptr inbounds ([3 x i8], ptr @view3d_camera_border_hack_col, i64 0, i64 1), align 1, !tbaa !55
  %43 = getelementptr inbounds i8, ptr %5, i64 2
  %44 = load i8, ptr %43, align 1, !tbaa !55
  store i8 %44, ptr getelementptr inbounds ([3 x i8], ptr @view3d_camera_border_hack_col, i64 0, i64 2), align 1, !tbaa !55
  br label %46

45:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #22
  call void @glGetFloatv(i32 noundef 2816, ptr noundef nonnull %13) #20
  call void @rgb_float_to_uchar(ptr noundef nonnull @view3d_camera_border_hack_col, ptr noundef nonnull %13) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #22
  br label %46

46:                                               ; preds = %45, %39
  store i8 1, ptr @view3d_camera_border_hack_test, align 1, !tbaa !55
  br label %142

47:                                               ; preds = %32, %30
  %48 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 19
  %49 = load ptr, ptr %48, align 8, !tbaa !85
  %50 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 47
  %51 = tail call fastcc float @len_v3(ptr noundef nonnull %50) #21
  %52 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 47, i64 1
  %53 = tail call fastcc float @len_v3(ptr noundef nonnull %52) #21
  %54 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  %55 = insertelement <2 x float> poison, float %51, i64 0
  %56 = insertelement <2 x float> %55, float %53, i64 1
  %57 = fdiv <2 x float> <float 1.000000e+00, float 1.000000e+00>, %56
  store <2 x float> %57, ptr %11, align 8, !tbaa !45
  %58 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 47, i64 2
  %59 = tail call fastcc float @len_v3(ptr noundef nonnull %58) #21
  %60 = fdiv float 1.000000e+00, %59
  %61 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  store float %60, ptr %61, align 8, !tbaa !45
  %62 = getelementptr inbounds %struct.Camera, ptr %49, i64 0, i32 10
  %63 = load float, ptr %62, align 8, !tbaa !271
  call void @BKE_camera_view_frame_ex(ptr noundef %0, ptr noundef %49, float noundef %63, i8 noundef zeroext %26, ptr noundef nonnull %11, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef nonnull %8) #20
  call void @glDisable(i32 noundef 2896) #20
  call void @glDisable(i32 noundef 2884) #20
  call void @glBegin(i32 noundef 2) #20
  call void @glVertex3fv(ptr noundef nonnull %8) #20
  %64 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 1
  call void @glVertex3fv(ptr noundef nonnull %64) #20
  %65 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 2
  call void @glVertex3fv(ptr noundef nonnull %65) #20
  %66 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 3
  call void @glVertex3fv(ptr noundef nonnull %66) #20
  call void @glEnd() #20
  br i1 %31, label %67, label %142

67:                                               ; preds = %47
  call fastcc void @zero_v3(ptr noundef nonnull %7) #21
  call void @glBegin(i32 noundef 3) #20
  call void @glVertex3fv(ptr noundef nonnull %64) #20
  call void @glVertex3fv(ptr noundef nonnull %7) #20
  call void @glVertex3fv(ptr noundef nonnull %8) #20
  call void @glVertex3fv(ptr noundef nonnull %66) #20
  call void @glVertex3fv(ptr noundef nonnull %7) #20
  call void @glVertex3fv(ptr noundef nonnull %65) #20
  call void @glEnd() #20
  %68 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 1, i64 2
  %69 = load float, ptr %68, align 4, !tbaa !45
  %70 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float %69, ptr %70, align 8, !tbaa !45
  %71 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 15
  %72 = getelementptr inbounds [2 x float], ptr %10, i64 0, i64 1
  %73 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  %74 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  br label %75

75:                                               ; preds = %67, %80
  %76 = phi i1 [ true, %67 ], [ false, %80 ]
  br i1 %76, label %80, label %77

77:                                               ; preds = %75
  %78 = load ptr, ptr %71, align 8, !tbaa !97
  %79 = icmp eq ptr %16, %78
  br i1 %79, label %80, label %106

80:                                               ; preds = %77, %75
  %81 = phi i32 [ 2, %75 ], [ 4, %77 ]
  call void @glBegin(i32 noundef %81) #20
  %82 = load float, ptr %12, align 4, !tbaa !45
  %83 = load float, ptr %73, align 4, !tbaa !45
  %84 = fadd float %83, 0x3FB99999A0000000
  %85 = load <2 x float>, ptr %10, align 8, !tbaa !45
  %86 = insertelement <2 x float> poison, float %82, i64 0
  %87 = shufflevector <2 x float> %86, <2 x float> poison, <2 x i32> zeroinitializer
  %88 = insertelement <2 x float> <float 0xBFE6666660000000, float poison>, float %84, i64 1
  %89 = fmul <2 x float> %87, %88
  %90 = load <2 x float>, ptr %11, align 8, !tbaa !45
  %91 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %89, <2 x float> %90, <2 x float> %85)
  store <2 x float> %91, ptr %7, align 8, !tbaa !45
  call void @glVertex3fv(ptr noundef nonnull %7) #20
  %92 = load float, ptr %10, align 8, !tbaa !45
  %93 = load float, ptr %12, align 4, !tbaa !45
  %94 = fmul float %93, 0x3FE6666660000000
  %95 = load float, ptr %11, align 8, !tbaa !45
  %96 = call float @llvm.fmuladd.f32(float %94, float %95, float %92)
  store float %96, ptr %7, align 8, !tbaa !45
  call void @glVertex3fv(ptr noundef nonnull %7) #20
  %97 = load float, ptr %10, align 8, !tbaa !45
  store float %97, ptr %7, align 8, !tbaa !45
  %98 = load float, ptr %72, align 4, !tbaa !45
  %99 = load float, ptr %12, align 4, !tbaa !45
  %100 = fmul float %99, 0x3FF19999A0000000
  %101 = load float, ptr %73, align 4, !tbaa !45
  %102 = fadd float %101, 0x3FE6666660000000
  %103 = fmul float %100, %102
  %104 = load float, ptr %54, align 4, !tbaa !45
  %105 = call float @llvm.fmuladd.f32(float %103, float %104, float %98)
  store float %105, ptr %74, align 4, !tbaa !45
  call void @glVertex3fv(ptr noundef nonnull %7) #20
  call void @glEnd() #20
  br i1 %76, label %75, label %106, !llvm.loop !273

106:                                              ; preds = %77, %80
  %107 = and i16 %4, 4
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %109, label %142

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.Camera, ptr %49, i64 0, i32 4
  %111 = load i16, ptr %110, align 2, !tbaa !274
  %112 = and i16 %111, 3
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %142, label %114

114:                                              ; preds = %109
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #22
  call void @copy_m4_m4(ptr noundef nonnull %14, ptr noundef nonnull %50) #20
  call void @normalize_m4(ptr noundef nonnull %14) #20
  call void @glPushMatrix() #20
  %115 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 1
  call void @glLoadMatrixf(ptr noundef nonnull %115) #20
  call void @glMultMatrixf(ptr noundef nonnull %14) #20
  %116 = load i16, ptr %110, align 2, !tbaa !274
  %117 = and i16 %116, 1
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %127, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.Camera, ptr %49, i64 0, i32 6
  %121 = load float, ptr %120, align 8, !tbaa !275
  %122 = getelementptr inbounds %struct.Camera, ptr %49, i64 0, i32 7
  %123 = load float, ptr %122, align 4, !tbaa !276
  call fastcc void @draw_limit_line(float noundef %121, float noundef %123, i16 noundef signext %4, i32 noundef 7864319) #21
  %124 = call float @BKE_camera_object_dof_distance(ptr noundef %16) #20
  %125 = load float, ptr %62, align 8, !tbaa !271
  call fastcc void @draw_focus_cross(float noundef %124, float noundef %125) #21
  %126 = load i16, ptr %110, align 2, !tbaa !274
  br label %127

127:                                              ; preds = %119, %114
  %128 = phi i16 [ %126, %119 ], [ %116, %114 ]
  %129 = and i16 %128, 2
  %130 = icmp eq i16 %129, 0
  br i1 %130, label %141, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !277
  %134 = icmp eq ptr %133, null
  br i1 %134, label %141, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.World, ptr %133, i64 0, i32 31
  %137 = load float, ptr %136, align 4, !tbaa !278
  %138 = getelementptr inbounds %struct.World, ptr %133, i64 0, i32 32
  %139 = load float, ptr %138, align 8, !tbaa !280
  %140 = fadd float %137, %139
  call fastcc void @draw_limit_line(float noundef %137, float noundef %140, i16 noundef signext %4, i32 noundef 16777215) #21
  br label %141

141:                                              ; preds = %131, %135, %127
  call void @glPopMatrix() #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #22
  br label %142

142:                                              ; preds = %106, %141, %109, %47, %46
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawspeaker() unnamed_addr #0 {
  %1 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %1) #22
  tail call void @glEnable(i32 noundef 3042) #20
  %2 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 2
  %3 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 1
  br label %4

4:                                                ; preds = %0, %21
  %5 = phi i32 [ 0, %0 ], [ %22, %21 ]
  %6 = sitofp i32 %5 to float
  %7 = call float @llvm.fmuladd.f32(float %6, float 2.500000e-01, float -1.250000e-01)
  store float %7, ptr %2, align 8, !tbaa !45
  call void @glBegin(i32 noundef 2) #20
  %8 = icmp eq i32 %5, 0
  %9 = select i1 %8, float 5.000000e-01, float 2.500000e-01
  br label %10

10:                                               ; preds = %4, %10
  %11 = phi i32 [ 0, %4 ], [ %19, %10 ]
  %12 = sitofp i32 %11 to float
  %13 = fmul float %12, 0x400921FB60000000
  %14 = fmul float %13, 1.250000e-01
  %15 = call float @cosf(float noundef %14) #20
  %16 = fmul float %9, %15
  store float %16, ptr %1, align 8, !tbaa !45
  %17 = call float @sinf(float noundef %14) #20
  %18 = fmul float %9, %17
  store float %18, ptr %3, align 4, !tbaa !45
  call void @glVertex3fv(ptr noundef nonnull %1) #20
  %19 = add nuw nsw i32 %11, 1
  %20 = icmp eq i32 %19, 16
  br i1 %20, label %21, label %10, !llvm.loop !281

21:                                               ; preds = %10
  call void @glEnd() #20
  %22 = add nuw nsw i32 %5, 1
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %24, label %4, !llvm.loop !282

24:                                               ; preds = %21, %47
  %25 = phi i32 [ %48, %47 ], [ 0, %21 ]
  %26 = add nsw i32 %25, -1
  %27 = and i32 %25, 1
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 %26, i32 0
  %30 = sitofp i32 %29 to float
  %31 = fmul float %30, 5.000000e-01
  store float %31, ptr %1, align 8, !tbaa !45
  %32 = add nsw i32 %25, -2
  %33 = select i1 %28, i32 0, i32 %32
  %34 = sitofp i32 %33 to float
  %35 = fmul float %34, 5.000000e-01
  store float %35, ptr %3, align 4, !tbaa !45
  call void @glBegin(i32 noundef 3) #20
  br label %36

36:                                               ; preds = %24, %42
  %37 = phi i32 [ 0, %24 ], [ %45, %42 ]
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load <2 x float>, ptr %1, align 8, !tbaa !45
  %41 = fmul <2 x float> %40, <float 5.000000e-01, float 5.000000e-01>
  store <2 x float> %41, ptr %1, align 8, !tbaa !45
  br label %42

42:                                               ; preds = %39, %36
  %43 = sitofp i32 %37 to float
  %44 = call float @llvm.fmuladd.f32(float %43, float 2.500000e-01, float -1.250000e-01)
  store float %44, ptr %2, align 8, !tbaa !45
  call void @glVertex3fv(ptr noundef nonnull %1) #20
  %45 = add nuw nsw i32 %37, 1
  %46 = icmp eq i32 %45, 3
  br i1 %46, label %47, label %36, !llvm.loop !283

47:                                               ; preds = %42
  %48 = add nuw nsw i32 %25, 1
  call void @glEnd() #20
  %49 = icmp eq i32 %48, 4
  br i1 %49, label %50, label %24, !llvm.loop !284

50:                                               ; preds = %47
  call void @glDisable(i32 noundef 3042) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawlattice(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = getelementptr inbounds %struct.Lattice, ptr %4, i64 0, i32 26
  %6 = load ptr, ptr %5, align 8, !tbaa !285
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 118
  %9 = load ptr, ptr %8, align 8, !tbaa !170
  %10 = tail call ptr @BKE_displist_find(ptr noundef %9, i32 noundef 7) #20
  br i1 %7, label %25, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8, !tbaa !285
  %13 = load ptr, ptr %12, align 8, !tbaa !287
  tail call void @UI_ThemeColor(i32 noundef 27) #20
  %14 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 25
  %15 = load ptr, ptr %14, align 8, !tbaa !289
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.Lattice, ptr %13, i64 0, i32 24
  %19 = load ptr, ptr %18, align 8, !tbaa !290
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 97
  %23 = load i16, ptr %22, align 2, !tbaa !291
  %24 = zext i16 %23 to i32
  tail call void @glShadeModel(i32 noundef 7425) #20
  br label %25

25:                                               ; preds = %11, %17, %21, %2
  %26 = phi i32 [ %24, %21 ], [ 0, %17 ], [ 0, %11 ], [ 0, %2 ]
  %27 = phi ptr [ %13, %21 ], [ %13, %17 ], [ %13, %11 ], [ %4, %2 ]
  tail call void @glBegin(i32 noundef 1) #20
  %28 = getelementptr inbounds %struct.Lattice, ptr %27, i64 0, i32 4
  %29 = load i16, ptr %28, align 4, !tbaa !292
  %30 = icmp sgt i16 %29, 0
  br i1 %30, label %31, label %118

31:                                               ; preds = %25
  %32 = zext nneg i16 %29 to i32
  %33 = getelementptr inbounds %struct.Lattice, ptr %27, i64 0, i32 3
  %34 = getelementptr inbounds %struct.Lattice, ptr %27, i64 0, i32 2
  %35 = getelementptr inbounds %struct.Lattice, ptr %27, i64 0, i32 5
  %36 = load i16, ptr %33, align 2, !tbaa !293
  br label %37

37:                                               ; preds = %31, %111
  %38 = phi i16 [ %29, %31 ], [ %112, %111 ]
  %39 = phi i16 [ %36, %31 ], [ %113, %111 ]
  %40 = phi i16 [ %36, %31 ], [ %114, %111 ]
  %41 = phi i32 [ %32, %31 ], [ %116, %111 ]
  %42 = phi i32 [ 0, %31 ], [ %115, %111 ]
  %43 = icmp eq i32 %42, 0
  %44 = add nsw i32 %41, -1
  %45 = icmp eq i32 %42, %44
  %46 = select i1 %43, i1 true, i1 %45
  %47 = icmp sgt i16 %40, 0
  br i1 %47, label %48, label %111

48:                                               ; preds = %37
  %49 = zext nneg i16 %40 to i32
  %50 = add nsw i32 %42, -1
  %51 = load i16, ptr %34, align 8, !tbaa !294
  br label %52

52:                                               ; preds = %48, %103
  %53 = phi i16 [ %39, %48 ], [ %104, %103 ]
  %54 = phi i16 [ %51, %48 ], [ %105, %103 ]
  %55 = phi i32 [ %49, %48 ], [ %107, %103 ]
  %56 = phi i32 [ 0, %48 ], [ %106, %103 ]
  %57 = icmp eq i32 %56, 0
  %58 = add nsw i32 %55, -1
  %59 = icmp eq i32 %56, %58
  %60 = select i1 %57, i1 true, i1 %59
  %61 = icmp sgt i16 %54, 0
  br i1 %61, label %62, label %103

62:                                               ; preds = %52
  %63 = zext nneg i16 %54 to i32
  %64 = add nsw i32 %56, -1
  %65 = select i1 %60, i1 true, i1 %46
  br label %66

66:                                               ; preds = %62, %96
  %67 = phi i32 [ %63, %62 ], [ %99, %96 ]
  %68 = phi i32 [ 0, %62 ], [ %97, %96 ]
  %69 = icmp eq i32 %68, 0
  %70 = add nsw i32 %67, -1
  %71 = icmp eq i32 %68, %70
  %72 = select i1 %69, i1 true, i1 %71
  br i1 %43, label %80, label %73

73:                                               ; preds = %66
  %74 = select i1 %72, i1 true, i1 %60
  br i1 %74, label %79, label %75

75:                                               ; preds = %73
  %76 = load i16, ptr %35, align 2, !tbaa !295
  %77 = and i16 %76, 2
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75, %73
  tail call fastcc void @drawlattice__point(ptr noundef nonnull %27, ptr noundef %10, i32 noundef %68, i32 noundef %56, i32 noundef %50, i32 noundef %26) #21
  tail call fastcc void @drawlattice__point(ptr noundef nonnull %27, ptr noundef %10, i32 noundef %68, i32 noundef %56, i32 noundef %42, i32 noundef %26) #21
  br label %80

80:                                               ; preds = %79, %66
  br i1 %57, label %88, label %81

81:                                               ; preds = %75, %80
  %82 = select i1 %72, i1 true, i1 %46
  br i1 %82, label %87, label %83

83:                                               ; preds = %81
  %84 = load i16, ptr %35, align 2, !tbaa !295
  %85 = and i16 %84, 2
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83, %81
  tail call fastcc void @drawlattice__point(ptr noundef nonnull %27, ptr noundef %10, i32 noundef %68, i32 noundef %64, i32 noundef %42, i32 noundef %26) #21
  tail call fastcc void @drawlattice__point(ptr noundef nonnull %27, ptr noundef %10, i32 noundef %68, i32 noundef %56, i32 noundef %42, i32 noundef %26) #21
  br label %88

88:                                               ; preds = %87, %83, %80
  br i1 %69, label %96, label %89

89:                                               ; preds = %88
  br i1 %65, label %94, label %90

90:                                               ; preds = %89
  %91 = load i16, ptr %35, align 2, !tbaa !295
  %92 = and i16 %91, 2
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %90, %89
  %95 = add nsw i32 %68, -1
  tail call fastcc void @drawlattice__point(ptr noundef nonnull %27, ptr noundef %10, i32 noundef %95, i32 noundef %56, i32 noundef %42, i32 noundef %26) #21
  tail call fastcc void @drawlattice__point(ptr noundef nonnull %27, ptr noundef %10, i32 noundef %68, i32 noundef %56, i32 noundef %42, i32 noundef %26) #21
  br label %96

96:                                               ; preds = %94, %90, %88
  %97 = add nuw nsw i32 %68, 1
  %98 = load i16, ptr %34, align 8, !tbaa !294
  %99 = sext i16 %98 to i32
  %100 = icmp slt i32 %97, %99
  br i1 %100, label %66, label %101, !llvm.loop !296

101:                                              ; preds = %96
  %102 = load i16, ptr %33, align 2, !tbaa !293
  br label %103

103:                                              ; preds = %101, %52
  %104 = phi i16 [ %102, %101 ], [ %53, %52 ]
  %105 = phi i16 [ %98, %101 ], [ %54, %52 ]
  %106 = add nuw nsw i32 %56, 1
  %107 = sext i16 %104 to i32
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %52, label %109, !llvm.loop !297

109:                                              ; preds = %103
  %110 = load i16, ptr %28, align 4, !tbaa !292
  br label %111

111:                                              ; preds = %109, %37
  %112 = phi i16 [ %110, %109 ], [ %38, %37 ]
  %113 = phi i16 [ %104, %109 ], [ %39, %37 ]
  %114 = phi i16 [ %104, %109 ], [ %40, %37 ]
  %115 = add nuw nsw i32 %42, 1
  %116 = sext i16 %112 to i32
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %37, label %118, !llvm.loop !298

118:                                              ; preds = %111, %25
  tail call void @glEnd() #20
  %119 = icmp eq i32 %26, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %118
  tail call void @glShadeModel(i32 noundef 7424) #20
  br label %121

121:                                              ; preds = %120, %118
  br i1 %7, label %132, label %122

122:                                              ; preds = %121
  %123 = tail call ptr @BKE_lattice_active_point_get(ptr noundef nonnull %27) #20
  %124 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 47
  %125 = load i8, ptr %124, align 8, !tbaa !62
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %122
  tail call void @glDisable(i32 noundef 2929) #20
  br label %128

128:                                              ; preds = %127, %122
  tail call fastcc void @lattice_draw_verts(ptr noundef nonnull %27, ptr noundef %10, ptr noundef %123, i16 noundef signext 0) #21
  tail call fastcc void @lattice_draw_verts(ptr noundef nonnull %27, ptr noundef %10, ptr noundef %123, i16 noundef signext 1) #21
  %129 = load i8, ptr %124, align 8, !tbaa !62
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %128
  tail call void @glEnable(i32 noundef 2929) #20
  br label %132

132:                                              ; preds = %128, %131, %121
  ret void
}

; Function Attrs: optsize
declare i32 @GPU_enable_material(i32 noundef, ptr noundef) #1

; Function Attrs: optsize
declare zeroext i8 @draw_armature(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GPU_disable_material() local_unnamed_addr #1

; Function Attrs: optsize
declare void @glLoadMatrixf(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @copy_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mul_m3_m3m3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ob_draw_RE_motion(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [3 x float], align 8
  %5 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  call void @copy_m3_m3(ptr noundef nonnull %3, ptr noundef %1) #20
  call void @glColor4ub(i8 noundef zeroext 127, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -101) #20
  call void @glBegin(i32 noundef 1) #20
  %6 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %7 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store <2 x float> zeroinitializer, ptr %7, align 4, !tbaa !45
  store float -4.000000e+00, ptr %4, align 8, !tbaa !45
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef %0) #21
  call void @glVertex3fv(ptr noundef nonnull %4) #20
  %8 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float 0.000000e+00, ptr %8, align 8, !tbaa !45
  store <2 x float> <float 4.000000e+00, float 0.000000e+00>, ptr %5, align 8, !tbaa !45
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %5) #20
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef %0) #21
  call void @glVertex3fv(ptr noundef nonnull %5) #20
  call void @glEnd() #20
  store <2 x float> <float 0.000000e+00, float 2.000000e+00>, ptr %7, align 4, !tbaa !45
  store float 2.000000e+00, ptr %4, align 8, !tbaa !45
  call void @glBegin(i32 noundef 1) #20
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef %0) #21
  call void @glVertex3fv(ptr noundef nonnull %4) #20
  call void @glVertex3fv(ptr noundef nonnull %5) #20
  call void @glEnd() #20
  store <2 x float> <float 0.000000e+00, float -2.000000e+00>, ptr %7, align 4, !tbaa !45
  store float 2.000000e+00, ptr %4, align 8, !tbaa !45
  call void @glBegin(i32 noundef 1) #20
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef %0) #21
  call void @glVertex3fv(ptr noundef nonnull %4) #20
  call void @glVertex3fv(ptr noundef nonnull %5) #20
  call void @glEnd() #20
  store <2 x float> <float 2.000000e+00, float 0.000000e+00>, ptr %7, align 4, !tbaa !45
  store float 2.000000e+00, ptr %4, align 8, !tbaa !45
  call void @glBegin(i32 noundef 1) #20
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef %0) #21
  call void @glVertex3fv(ptr noundef nonnull %4) #20
  call void @glVertex3fv(ptr noundef nonnull %5) #20
  call void @glEnd() #20
  store <2 x float> <float -2.000000e+00, float 0.000000e+00>, ptr %7, align 4, !tbaa !45
  store float 2.000000e+00, ptr %4, align 8, !tbaa !45
  call void @glBegin(i32 noundef 1) #20
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef %0) #21
  call void @glVertex3fv(ptr noundef nonnull %4) #20
  call void @glVertex3fv(ptr noundef nonnull %5) #20
  call void @glEnd() #20
  call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 127, i8 noundef zeroext 0, i8 noundef zeroext -101) #20
  call void @glBegin(i32 noundef 1) #20
  store float 0.000000e+00, ptr %6, align 8, !tbaa !45
  store float 0.000000e+00, ptr %4, align 8, !tbaa !45
  store float -4.000000e+00, ptr %7, align 4, !tbaa !45
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef %0) #21
  call void @glVertex3fv(ptr noundef nonnull %4) #20
  store float 0.000000e+00, ptr %8, align 8, !tbaa !45
  store <2 x float> <float 0.000000e+00, float 4.000000e+00>, ptr %5, align 8, !tbaa !45
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %5) #20
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef %0) #21
  call void @glVertex3fv(ptr noundef nonnull %5) #20
  call void @glEnd() #20
  store float 0.000000e+00, ptr %4, align 8, !tbaa !45
  store float 2.000000e+00, ptr %6, align 8, !tbaa !45
  store float 2.000000e+00, ptr %7, align 4, !tbaa !45
  call void @glBegin(i32 noundef 1) #20
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef %0) #21
  call void @glVertex3fv(ptr noundef nonnull %4) #20
  call void @glVertex3fv(ptr noundef nonnull %5) #20
  call void @glEnd() #20
  store float 0.000000e+00, ptr %4, align 8, !tbaa !45
  store float -2.000000e+00, ptr %6, align 8, !tbaa !45
  store float 2.000000e+00, ptr %7, align 4, !tbaa !45
  call void @glBegin(i32 noundef 1) #20
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef %0) #21
  call void @glVertex3fv(ptr noundef nonnull %4) #20
  call void @glVertex3fv(ptr noundef nonnull %5) #20
  call void @glEnd() #20
  store float 2.000000e+00, ptr %4, align 8, !tbaa !45
  store float 0.000000e+00, ptr %6, align 8, !tbaa !45
  store float 2.000000e+00, ptr %7, align 4, !tbaa !45
  call void @glBegin(i32 noundef 1) #20
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef %0) #21
  call void @glVertex3fv(ptr noundef nonnull %4) #20
  call void @glVertex3fv(ptr noundef nonnull %5) #20
  call void @glEnd() #20
  store float 0.000000e+00, ptr %6, align 8, !tbaa !45
  store <2 x float> <float -2.000000e+00, float 2.000000e+00>, ptr %4, align 8, !tbaa !45
  call void @glBegin(i32 noundef 1) #20
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef %0) #21
  call void @glVertex3fv(ptr noundef nonnull %4) #20
  call void @glVertex3fv(ptr noundef nonnull %5) #20
  call void @glEnd() #20
  call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 127, i8 noundef zeroext -101) #20
  call void @glBegin(i32 noundef 1) #20
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !45
  store float -4.000000e+00, ptr %6, align 8, !tbaa !45
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef %0) #21
  call void @glVertex3fv(ptr noundef nonnull %4) #20
  store <2 x float> zeroinitializer, ptr %5, align 8, !tbaa !45
  store float 4.000000e+00, ptr %8, align 8, !tbaa !45
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %5) #20
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef %0) #21
  call void @glVertex3fv(ptr noundef nonnull %5) #20
  call void @glEnd() #20
  store <2 x float> <float 0.000000e+00, float 2.000000e+00>, ptr %4, align 8, !tbaa !45
  store float 2.000000e+00, ptr %6, align 8, !tbaa !45
  call void @glBegin(i32 noundef 1) #20
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef %0) #21
  call void @glVertex3fv(ptr noundef nonnull %4) #20
  call void @glVertex3fv(ptr noundef nonnull %5) #20
  call void @glEnd() #20
  store <2 x float> <float 0.000000e+00, float -2.000000e+00>, ptr %4, align 8, !tbaa !45
  store float 2.000000e+00, ptr %6, align 8, !tbaa !45
  call void @glBegin(i32 noundef 1) #20
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef %0) #21
  call void @glVertex3fv(ptr noundef nonnull %4) #20
  call void @glVertex3fv(ptr noundef nonnull %5) #20
  call void @glEnd() #20
  store <2 x float> <float 2.000000e+00, float 0.000000e+00>, ptr %4, align 8, !tbaa !45
  store float 2.000000e+00, ptr %6, align 8, !tbaa !45
  call void @glBegin(i32 noundef 1) #20
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef %0) #21
  call void @glVertex3fv(ptr noundef nonnull %4) #20
  call void @glVertex3fv(ptr noundef nonnull %5) #20
  call void @glEnd() #20
  store <2 x float> <float -2.000000e+00, float 0.000000e+00>, ptr %4, align 8, !tbaa !45
  store float 2.000000e+00, ptr %6, align 8, !tbaa !45
  call void @glBegin(i32 noundef 1) #20
  call void @mul_m3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  call fastcc void @add_v3_v3(ptr noundef nonnull %4, ptr noundef %0) #21
  call void @glVertex3fv(ptr noundef nonnull %4) #20
  call void @glVertex3fv(ptr noundef nonnull %5) #20
  call void @glEnd() #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #22
  ret void
}

; Function Attrs: optsize
declare void @glMultMatrixf(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_forcefield(ptr noundef %0, ptr noundef %1, i16 noundef signext %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [3 x float], align 8
  %8 = alloca [4 x float], align 16
  %9 = alloca [3 x float], align 4
  %10 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 110
  %11 = load ptr, ptr %10, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  %12 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %13 = load i16, ptr %12, align 8, !tbaa !79
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 89
  %17 = load float, ptr %16, align 8, !tbaa !95
  br label %18

18:                                               ; preds = %4, %15
  %19 = phi float [ %17, %15 ], [ 1.000000e+00, %4 ]
  %20 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 5
  %21 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %20) #20
  %22 = getelementptr inbounds %struct.PartDeflect, ptr %11, i64 0, i32 2
  %23 = load i16, ptr %22, align 2, !tbaa !102
  switch i16 %23, label %90 [
    i16 4, label %24
    i16 1, label %35
    i16 2, label %52
    i16 5, label %62
  ]

24:                                               ; preds = %18
  %25 = and i16 %2, 2
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  call fastcc void @ob_wire_color_blend_theme_id(ptr noundef %3, float noundef 5.000000e-01) #21
  br label %28

28:                                               ; preds = %27, %24
  %29 = getelementptr inbounds %struct.PartDeflect, ptr %11, i64 0, i32 9
  %30 = load float, ptr %29, align 4, !tbaa !299
  call void @unit_m4(ptr noundef nonnull %6) #20
  %31 = fmul float %30, 0x3FB99999A0000000
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %7, float noundef %19, ptr noundef nonnull %6) #21
  %32 = fmul float %31, 5.000000e-01
  %33 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float %32, ptr %33, align 8, !tbaa !45
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %7, float noundef %19, ptr noundef nonnull %6) #21
  store float %31, ptr %33, align 8, !tbaa !45
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %7, float noundef %19, ptr noundef nonnull %6) #21
  %34 = fmul float %31, 1.500000e+00
  store float %34, ptr %33, align 8, !tbaa !45
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %7, float noundef %19, ptr noundef nonnull %6) #21
  store float 0.000000e+00, ptr %33, align 8, !tbaa !45
  br label %90

35:                                               ; preds = %18
  %36 = and i16 %2, 2
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %7, float noundef %19, ptr noundef nonnull %5) #21
  %39 = fmul float %19, 1.500000e+00
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %7, float noundef %39, ptr noundef nonnull %5) #21
  br label %50

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.PartDeflect, ptr %11, i64 0, i32 13
  %42 = load float, ptr %41, align 4, !tbaa !300
  call fastcc void @ob_wire_color_blend_theme_id(ptr noundef %3, float noundef 5.000000e-01) #21
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %7, float noundef %19, ptr noundef nonnull %5) #21
  %43 = call float @powf(float noundef 1.500000e+00, float noundef %42) #20
  %44 = fdiv float 0x3FD99999A0000000, %43
  %45 = fsub float 0x3FECCCCCC0000000, %44
  call fastcc void @ob_wire_color_blend_theme_id(ptr noundef %3, float noundef %45) #21
  %46 = fmul float %19, 1.500000e+00
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %7, float noundef %46, ptr noundef nonnull %5) #21
  %47 = call float @exp2f(float %42) #22
  %48 = fdiv float 0x3FD99999A0000000, %47
  %49 = fsub float 0x3FECCCCCC0000000, %48
  call fastcc void @ob_wire_color_blend_theme_id(ptr noundef %3, float noundef %49) #21
  br label %50

50:                                               ; preds = %38, %40
  %51 = fmul float %19, 2.000000e+00
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %7, float noundef %51, ptr noundef nonnull %5) #21
  br label %90

52:                                               ; preds = %18
  call void @unit_m4(ptr noundef nonnull %6) #20
  %53 = getelementptr inbounds %struct.PartDeflect, ptr %11, i64 0, i32 9
  %54 = load float, ptr %53, align 4, !tbaa !299
  %55 = and i16 %2, 2
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  call fastcc void @ob_wire_color_blend_theme_id(ptr noundef %3, float noundef 0x3FE6666660000000) #21
  br label %58

58:                                               ; preds = %57, %52
  %59 = fcmp olt float %54, 0.000000e+00
  br i1 %59, label %60, label %61

60:                                               ; preds = %58
  call fastcc void @drawspiral(ptr noundef nonnull %7, float noundef %19, ptr noundef nonnull %6, i32 noundef 1) #21
  call fastcc void @drawspiral(ptr noundef nonnull %7, float noundef %19, ptr noundef nonnull %6, i32 noundef 16) #21
  br label %90

61:                                               ; preds = %58
  call fastcc void @drawspiral(ptr noundef nonnull %7, float noundef %19, ptr noundef nonnull %6, i32 noundef -1) #21
  call fastcc void @drawspiral(ptr noundef nonnull %7, float noundef %19, ptr noundef nonnull %6, i32 noundef -16) #21
  br label %90

62:                                               ; preds = %18
  %63 = load i16, ptr %12, align 8, !tbaa !79
  %64 = icmp eq i16 %63, 2
  br i1 %64, label %65, label %90

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %67 = load ptr, ptr %66, align 8, !tbaa !85
  %68 = getelementptr inbounds %struct.Curve, ptr %67, i64 0, i32 23
  %69 = load i32, ptr %68, align 4, !tbaa !182
  %70 = and i32 %69, 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %90, label %72

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 118
  %74 = load ptr, ptr %73, align 8, !tbaa !170
  %75 = getelementptr inbounds %struct.CurveCache, ptr %74, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !301
  %77 = icmp eq ptr %76, null
  br i1 %77, label %90, label %78

78:                                               ; preds = %72
  %79 = load ptr, ptr %76, align 8, !tbaa !302
  %80 = icmp eq ptr %79, null
  br i1 %80, label %90, label %81

81:                                               ; preds = %78
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #22
  %82 = getelementptr inbounds %struct.PartDeflect, ptr %11, i64 0, i32 9
  %83 = load float, ptr %82, align 4, !tbaa !299
  %84 = and i16 %2, 2
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  call fastcc void @ob_wire_color_blend_theme_id(ptr noundef %3, float noundef 5.000000e-01) #21
  br label %87

87:                                               ; preds = %86, %81
  call void @setlinestyle(i32 noundef 3) #20
  %88 = call i32 @where_on_path(ptr noundef nonnull %0, float noundef 1.000000e+00, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef null, ptr noundef null, ptr noundef null) #20
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %8, float noundef %83, ptr noundef nonnull %5) #21
  call void @setlinestyle(i32 noundef 0) #20
  %89 = call i32 @where_on_path(ptr noundef nonnull %0, float noundef 0.000000e+00, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef null, ptr noundef null, ptr noundef null) #20
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %8, float noundef %83, ptr noundef nonnull %5) #21
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #22
  br label %90

90:                                               ; preds = %65, %72, %78, %87, %18, %60, %61, %50, %62, %28
  call void @setlinestyle(i32 noundef 3) #20
  %91 = and i16 %2, 2
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  call fastcc void @ob_wire_color_blend_theme_id(ptr noundef %3, float noundef 5.000000e-01) #21
  br label %94

94:                                               ; preds = %93, %90
  %95 = getelementptr inbounds %struct.PartDeflect, ptr %11, i64 0, i32 3
  %96 = load i16, ptr %95, align 8, !tbaa !304
  switch i16 %96, label %229 [
    i16 0, label %97
    i16 1, label %112
    i16 2, label %162
  ]

97:                                               ; preds = %94
  %98 = load i32, ptr %11, align 8, !tbaa !305
  %99 = and i32 %98, 1
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.PartDeflect, ptr %11, i64 0, i32 14
  %103 = load float, ptr %102, align 8, !tbaa !306
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %7, float noundef %103, ptr noundef nonnull %5) #21
  %104 = load i32, ptr %11, align 8, !tbaa !305
  br label %105

105:                                              ; preds = %101, %97
  %106 = phi i32 [ %104, %101 ], [ %98, %97 ]
  %107 = and i32 %106, 256
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %229, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.PartDeflect, ptr %11, i64 0, i32 15
  %111 = load float, ptr %110, align 4, !tbaa !307
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %7, float noundef %111, ptr noundef nonnull %5) #21
  br label %229

112:                                              ; preds = %94
  call void @unit_m4(ptr noundef nonnull %6) #20
  store <2 x float> zeroinitializer, ptr %7, align 8, !tbaa !45
  %113 = load i32, ptr %11, align 8, !tbaa !305
  %114 = and i32 %113, 512
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.PartDeflect, ptr %11, i64 0, i32 17
  %118 = load float, ptr %117, align 4, !tbaa !308
  br label %119

119:                                              ; preds = %112, %116
  %120 = phi float [ %118, %116 ], [ 1.000000e+00, %112 ]
  %121 = and i32 %113, 1
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.PartDeflect, ptr %11, i64 0, i32 14
  %125 = load float, ptr %124, align 8, !tbaa !306
  br label %126

126:                                              ; preds = %119, %123
  %127 = phi float [ %125, %123 ], [ 0.000000e+00, %119 ]
  %128 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float %127, ptr %128, align 8, !tbaa !45
  %129 = and i32 %113, 513
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %138, label %131

131:                                              ; preds = %126
  %132 = and i32 %113, 32
  %133 = icmp eq i32 %132, 0
  %134 = fmul float %127, -2.000000e+00
  %135 = fneg float %127
  %136 = select i1 %133, float %134, float %135
  call fastcc void @drawtube(ptr noundef nonnull %7, float noundef %120, float noundef %136, ptr noundef nonnull %6) #21
  %137 = load i32, ptr %11, align 8, !tbaa !305
  br label %138

138:                                              ; preds = %131, %126
  %139 = phi i32 [ %137, %131 ], [ %113, %126 ]
  %140 = and i32 %139, 1024
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.PartDeflect, ptr %11, i64 0, i32 18
  %144 = load float, ptr %143, align 8, !tbaa !309
  br label %145

145:                                              ; preds = %138, %142
  %146 = phi float [ %144, %142 ], [ 1.000000e+00, %138 ]
  %147 = and i32 %139, 256
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.PartDeflect, ptr %11, i64 0, i32 15
  %151 = load float, ptr %150, align 4, !tbaa !307
  br label %152

152:                                              ; preds = %145, %149
  %153 = phi float [ %151, %149 ], [ 0.000000e+00, %145 ]
  store float %153, ptr %128, align 8, !tbaa !45
  %154 = and i32 %139, 1280
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %229, label %156

156:                                              ; preds = %152
  %157 = and i32 %139, 32
  %158 = icmp eq i32 %157, 0
  %159 = fmul float %153, -2.000000e+00
  %160 = fneg float %153
  %161 = select i1 %158, float %159, float %160
  call fastcc void @drawtube(ptr noundef nonnull %7, float noundef %146, float noundef %161, ptr noundef nonnull %6) #21
  br label %229

162:                                              ; preds = %94
  call void @unit_m4(ptr noundef nonnull %6) #20
  %163 = load i32, ptr %11, align 8, !tbaa !305
  %164 = and i32 %163, 512
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %170, label %166

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.PartDeflect, ptr %11, i64 0, i32 17
  %168 = load float, ptr %167, align 4, !tbaa !308
  %169 = fmul float %168, 0x3F91DF46A0000000
  br label %170

170:                                              ; preds = %162, %166
  %171 = phi float [ %169, %166 ], [ 0x3F91DF46A0000000, %162 ]
  %172 = and i32 %163, 1
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.PartDeflect, ptr %11, i64 0, i32 14
  %176 = load float, ptr %175, align 8, !tbaa !306
  br label %177

177:                                              ; preds = %170, %174
  %178 = phi float [ %176, %174 ], [ 0.000000e+00, %170 ]
  %179 = and i32 %163, 513
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %196, label %181

181:                                              ; preds = %177
  %182 = call float @sinf(float noundef %171) #20
  %183 = fmul float %178, %182
  %184 = call float @cosf(float noundef %171) #20
  %185 = fmul float %178, %184
  call fastcc void @drawcone(ptr noundef nonnull %7, float noundef %183, float noundef %185, ptr noundef nonnull %6) #21
  %186 = load i32, ptr %11, align 8, !tbaa !305
  %187 = and i32 %186, 32
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %181
  %190 = call float @sinf(float noundef %171) #20
  %191 = fmul float %178, %190
  %192 = fneg float %178
  %193 = call float @cosf(float noundef %171) #20
  %194 = fmul float %193, %192
  call fastcc void @drawcone(ptr noundef nonnull %7, float noundef %191, float noundef %194, ptr noundef nonnull %6) #21
  %195 = load i32, ptr %11, align 8, !tbaa !305
  br label %196

196:                                              ; preds = %181, %189, %177
  %197 = phi i32 [ %186, %181 ], [ %195, %189 ], [ %163, %177 ]
  %198 = and i32 %197, 1024
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %204, label %200

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.PartDeflect, ptr %11, i64 0, i32 18
  %202 = load float, ptr %201, align 8, !tbaa !309
  %203 = fmul float %202, 0x3F91DF46A0000000
  br label %204

204:                                              ; preds = %196, %200
  %205 = phi float [ %203, %200 ], [ 0x3F91DF46A0000000, %196 ]
  %206 = and i32 %197, 256
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.PartDeflect, ptr %11, i64 0, i32 15
  %210 = load float, ptr %209, align 4, !tbaa !307
  br label %211

211:                                              ; preds = %204, %208
  %212 = phi float [ %210, %208 ], [ 0.000000e+00, %204 ]
  %213 = and i32 %197, 1280
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %229, label %215

215:                                              ; preds = %211
  %216 = call float @sinf(float noundef %205) #20
  %217 = fmul float %212, %216
  %218 = call float @cosf(float noundef %205) #20
  %219 = fmul float %212, %218
  call fastcc void @drawcone(ptr noundef nonnull %7, float noundef %217, float noundef %219, ptr noundef nonnull %6) #21
  %220 = load i32, ptr %11, align 8, !tbaa !305
  %221 = and i32 %220, 32
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %215
  %224 = call float @sinf(float noundef %205) #20
  %225 = fmul float %212, %224
  %226 = fneg float %212
  %227 = call float @cosf(float noundef %205) #20
  %228 = fmul float %227, %226
  call fastcc void @drawcone(ptr noundef nonnull %7, float noundef %225, float noundef %228, ptr noundef nonnull %6) #21
  br label %229

229:                                              ; preds = %211, %223, %215, %94, %152, %156, %105, %109
  call void @setlinestyle(i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #22
  ret void
}

; Function Attrs: optsize
declare void @cpack(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @PE_create_current(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_update_ptcache_edit(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !104
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ParticleSystem, ptr %5, i64 0, i32 25
  %9 = load i32, ptr %8, align 4, !tbaa !310
  %10 = and i32 %9, 32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void @PE_update_object(ptr noundef %0, ptr noundef %1, i32 noundef 0) #20
  br label %13

13:                                               ; preds = %12, %7, %3
  %14 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !311
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !115
  %20 = sitofp i32 %19 to float
  tail call void @psys_cache_edit_paths(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, float noundef %20) #20
  br label %21

21:                                               ; preds = %17, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_new_particle_system(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, i8 noundef zeroext %5, i16 noundef signext %6) unnamed_addr #0 {
  %8 = alloca %struct.ParticleKey, align 4
  %9 = alloca %struct.ParticleBillboardData, align 8
  %10 = alloca %struct.ParticleSimulationData, align 8
  %11 = alloca [3 x float], align 4
  %12 = alloca [4 x [4 x float]], align 16
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [2 x i32], align 4
  %17 = alloca [32 x i8], align 16
  %18 = alloca [4 x i8], align 4
  %19 = alloca [4 x [4 x float]], align 16
  %20 = alloca [3 x float], align 4
  %21 = alloca [3 x float], align 4
  %22 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !39
  %24 = tail call ptr @PE_settings(ptr noundef %0) #20
  %25 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !70
  %27 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !312
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #22
  %29 = getelementptr inbounds i8, ptr %10, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %29, i8 0, i64 16, i1 false)
  %30 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 48
  %31 = load ptr, ptr %30, align 8, !tbaa !313
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %15, i8 0, i64 12, i1 false)
  %32 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 53
  %33 = load i16, ptr %32, align 4, !tbaa !84
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #22
  store i32 -16777216, ptr %18, align 4
  %34 = icmp eq ptr %26, null
  br i1 %34, label %812, label %35

35:                                               ; preds = %7
  %36 = tail call i32 @psys_check_enabled(ptr noundef nonnull %23, ptr noundef nonnull %4) #20
  %37 = icmp eq i32 %36, 0
  %38 = icmp eq ptr %28, null
  %39 = select i1 %37, i1 true, i1 %38
  br i1 %39, label %812, label %40

40:                                               ; preds = %35
  %41 = tail call i32 @psys_in_edit_mode(ptr noundef %0, ptr noundef nonnull %4) #20
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load i16, ptr %24, align 8, !tbaa !314
  %45 = and i16 %44, 16
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %812, label %47

47:                                               ; preds = %43, %40
  %48 = getelementptr inbounds %struct.ParticleSettings, ptr %26, i64 0, i32 17
  %49 = load i16, ptr %48, align 8, !tbaa !315
  %50 = icmp eq i16 %49, 10
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.ParticleSettings, ptr %26, i64 0, i32 21
  %53 = load i16, ptr %52, align 8, !tbaa !316
  br label %54

54:                                               ; preds = %47, %51
  %55 = phi i16 [ %53, %51 ], [ %49, %47 ]
  %56 = sext i16 %55 to i32
  %57 = icmp eq i16 %55, 0
  br i1 %57, label %812, label %58

58:                                               ; preds = %54
  store ptr %0, ptr %10, align 8, !tbaa !317
  %59 = getelementptr inbounds %struct.ParticleSimulationData, ptr %10, i64 0, i32 1
  store ptr %23, ptr %59, align 8, !tbaa !319
  %60 = getelementptr inbounds %struct.ParticleSimulationData, ptr %10, i64 0, i32 2
  store ptr %4, ptr %60, align 8, !tbaa !320
  %61 = tail call ptr @psys_get_modifier(ptr noundef nonnull %23, ptr noundef nonnull %4) #20
  %62 = getelementptr inbounds %struct.ParticleSimulationData, ptr %10, i64 0, i32 3
  store ptr %61, ptr %62, align 8, !tbaa !321
  %63 = getelementptr inbounds %struct.ParticleSettings, ptr %26, i64 0, i32 11
  %64 = load i16, ptr %63, align 8, !tbaa !322
  %65 = icmp eq i16 %64, 2
  br i1 %65, label %66, label %75

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 25
  %68 = load i32, ptr %67, align 4, !tbaa !310
  %69 = and i32 %68, 1024
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  call void @psys_count_keyed_targets(ptr noundef nonnull %10) #20
  %72 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 33
  %73 = load i16, ptr %72, align 8, !tbaa !323
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %812, label %75

75:                                               ; preds = %66, %71, %58
  %76 = and i16 %33, 1
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = call ptr @psys_get_current(ptr noundef nonnull %23) #20
  %80 = icmp ne ptr %79, %4
  br label %81

81:                                               ; preds = %78, %75
  %82 = phi i1 [ true, %75 ], [ %80, %78 ]
  %83 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 25
  %84 = load i32, ptr %83, align 4, !tbaa !310
  %85 = or i32 %84, 64
  store i32 %85, ptr %83, align 4, !tbaa !310
  %86 = getelementptr inbounds %struct.ParticleSettings, ptr %26, i64 0, i32 7
  %87 = load i16, ptr %86, align 8, !tbaa !324
  %88 = icmp eq i16 %87, 2
  br i1 %88, label %89, label %93

89:                                               ; preds = %81
  %90 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 8
  %91 = load ptr, ptr %90, align 8, !tbaa !325
  %92 = icmp eq ptr %91, null
  br i1 %92, label %101, label %93

93:                                               ; preds = %89, %81
  %94 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 28
  %95 = load i32, ptr %94, align 8, !tbaa !326
  %96 = getelementptr inbounds %struct.ParticleSettings, ptr %26, i64 0, i32 30
  %97 = load i16, ptr %96, align 2, !tbaa !327
  %98 = sext i16 %97 to i32
  %99 = mul nsw i32 %95, %98
  %100 = sdiv i32 %99, 100
  br label %101

101:                                              ; preds = %89, %93
  %102 = phi i32 [ %100, %93 ], [ 0, %89 ]
  %103 = getelementptr inbounds %struct.ParticleSettings, ptr %26, i64 0, i32 31
  %104 = load i16, ptr %103, align 4, !tbaa !328
  %105 = call ptr @give_current_material(ptr noundef nonnull %23, i16 noundef signext %104) #20
  %106 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 47
  %107 = load i8, ptr %106, align 8, !tbaa !62
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %101
  call void @glDepthMask(i8 noundef zeroext 1) #20
  br label %110

110:                                              ; preds = %109, %101
  %111 = icmp eq ptr %105, null
  br i1 %111, label %118, label %112

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct.ParticleSettings, ptr %26, i64 0, i32 23
  %114 = load i16, ptr %113, align 4, !tbaa !329
  %115 = icmp eq i16 %114, 1
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.Material, ptr %105, i64 0, i32 4
  call void @rgb_float_to_uchar(ptr noundef nonnull %18, ptr noundef nonnull %117) #20
  call fastcc void @copy_v3_v3(ptr noundef nonnull %15, ptr noundef nonnull %117) #21
  br label %118

118:                                              ; preds = %116, %112, %110
  %119 = and i16 %6, 2
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  call void @glColor3ubv(ptr noundef nonnull %18) #20
  br label %122

122:                                              ; preds = %121, %118
  %123 = call float @psys_get_timestep(ptr noundef nonnull %10) #20
  %124 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 4
  %125 = load i32, ptr %124, align 8, !tbaa !75
  %126 = and i32 %125, 512
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %122
  %129 = load i16, ptr %32, align 4, !tbaa !84
  %130 = and i16 %129, 4096
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %19) #22
  %133 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 47
  %134 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 19
  call void @mul_m4_m4m4(ptr noundef nonnull %19, ptr noundef nonnull %133, ptr noundef nonnull %134) #20
  call void @glMultMatrixf(ptr noundef nonnull %19) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %19) #22
  br label %135

135:                                              ; preds = %132, %128, %122
  %136 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 50
  %137 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 47
  %138 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %136, ptr noundef nonnull %137) #20
  %139 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 26
  %140 = load i32, ptr %139, align 8, !tbaa !330
  %141 = call float @BKE_scene_frame_get(ptr noundef %0) #20
  switch i16 %55, label %212 [
    i16 6, label %142
    i16 1, label %150
    i16 2, label %157
    i16 3, label %162
    i16 4, label %162
    i16 7, label %170
    i16 8, label %175
    i16 9, label %180
    i16 5, label %211
  ]

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 7
  %144 = load ptr, ptr %143, align 8, !tbaa !331
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %212

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 8
  %148 = load ptr, ptr %147, align 8, !tbaa !325
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %212

150:                                              ; preds = %135, %146
  %151 = getelementptr inbounds %struct.ParticleSettings, ptr %26, i64 0, i32 18
  %152 = load i16, ptr %151, align 2, !tbaa !332
  %153 = icmp eq i16 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %150
  %155 = sitofp i16 %152 to float
  call void @glPointSize(float noundef %155) #20
  br label %212

156:                                              ; preds = %150
  call void @glPointSize(float noundef 2.000000e+00) #20
  br label %212

157:                                              ; preds = %135
  %158 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 2
  call void @copy_m4_m4(ptr noundef nonnull %12, ptr noundef nonnull %158) #20
  %159 = call fastcc float @normalize_v3(ptr noundef nonnull %12) #21
  %160 = getelementptr inbounds [4 x [4 x float]], ptr %12, i64 0, i64 1
  %161 = call fastcc float @normalize_v3(ptr noundef nonnull %160) #21
  br label %162

162:                                              ; preds = %135, %135, %157
  %163 = getelementptr inbounds %struct.ParticleSettings, ptr %26, i64 0, i32 18
  %164 = load i16, ptr %163, align 2, !tbaa !332
  %165 = icmp eq i16 %164, 0
  %166 = sitofp i16 %164 to float
  %167 = select i1 %165, float 2.000000e+00, float %166
  %168 = icmp eq i16 %55, 4
  %169 = zext i1 %168 to i8
  br label %212

170:                                              ; preds = %135
  %171 = getelementptr inbounds %struct.ParticleSettings, ptr %26, i64 0, i32 125
  %172 = load ptr, ptr %171, align 8, !tbaa !333
  %173 = icmp eq ptr %172, null
  %174 = zext i1 %173 to i32
  br label %212

175:                                              ; preds = %135
  %176 = getelementptr inbounds %struct.ParticleSettings, ptr %26, i64 0, i32 122
  %177 = load ptr, ptr %176, align 8, !tbaa !334
  %178 = icmp eq ptr %177, null
  %179 = zext i1 %178 to i32
  br label %212

180:                                              ; preds = %135
  %181 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 15
  %182 = load ptr, ptr %181, align 8, !tbaa !97
  %183 = icmp eq ptr %182, null
  %184 = getelementptr inbounds %struct.ParticleSettings, ptr %26, i64 0, i32 126
  %185 = load ptr, ptr %184, align 8, !tbaa !335
  %186 = icmp eq ptr %185, null
  br i1 %183, label %187, label %196

187:                                              ; preds = %180
  br i1 %186, label %188, label %197

188:                                              ; preds = %187
  %189 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  store i16 1, ptr %48, align 8, !tbaa !315
  %190 = getelementptr inbounds %struct.ParticleSettings, ptr %26, i64 0, i32 18
  %191 = load i16, ptr %190, align 2, !tbaa !332
  %192 = icmp eq i16 %191, 0
  br i1 %192, label %195, label %193

193:                                              ; preds = %188
  %194 = sitofp i16 %191 to float
  call void @glPointSize(float noundef %194) #20
  br label %199

195:                                              ; preds = %188
  call void @glPointSize(float noundef 2.000000e+00) #20
  br label %199

196:                                              ; preds = %180
  br i1 %186, label %198, label %197

197:                                              ; preds = %187, %196
  store ptr %185, ptr %9, align 8, !tbaa !336
  br label %199

198:                                              ; preds = %196
  store ptr %182, ptr %9, align 8, !tbaa !336
  br label %199

199:                                              ; preds = %197, %198, %193, %195
  %200 = phi i32 [ 1, %193 ], [ 1, %195 ], [ 9, %197 ], [ 9, %198 ]
  %201 = getelementptr inbounds %struct.ParticleSettings, ptr %26, i64 0, i32 37
  %202 = load i16, ptr %201, align 8, !tbaa !338
  %203 = getelementptr inbounds %struct.ParticleBillboardData, ptr %9, i64 0, i32 13
  store i16 %202, ptr %203, align 8, !tbaa !339
  %204 = getelementptr inbounds %struct.ParticleSettings, ptr %26, i64 0, i32 39
  %205 = load i16, ptr %204, align 4, !tbaa !340
  %206 = getelementptr inbounds %struct.ParticleBillboardData, ptr %9, i64 0, i32 15
  store i16 %205, ptr %206, align 4, !tbaa !341
  %207 = getelementptr inbounds %struct.ParticleSettings, ptr %26, i64 0, i32 15
  %208 = load i32, ptr %207, align 8, !tbaa !72
  %209 = and i32 %208, 128
  %210 = getelementptr inbounds %struct.ParticleBillboardData, ptr %9, i64 0, i32 9
  store i32 %209, ptr %210, align 8, !tbaa !342
  br label %212

211:                                              ; preds = %135
  br label %212

212:                                              ; preds = %135, %146, %142, %162, %175, %170, %154, %156, %211, %199
  %213 = phi i32 [ 5, %211 ], [ %200, %199 ], [ 1, %154 ], [ 1, %156 ], [ %174, %170 ], [ %179, %175 ], [ %56, %162 ], [ 6, %142 ], [ 6, %146 ], [ %56, %135 ]
  %214 = phi i8 [ 0, %211 ], [ 0, %199 ], [ 0, %154 ], [ 0, %156 ], [ 0, %170 ], [ 0, %175 ], [ %169, %162 ], [ 0, %142 ], [ 0, %146 ], [ 0, %135 ]
  %215 = phi i8 [ 1, %211 ], [ 0, %199 ], [ 0, %154 ], [ 0, %156 ], [ 0, %170 ], [ 0, %175 ], [ 0, %162 ], [ 0, %142 ], [ 0, %146 ], [ 0, %135 ]
  %216 = phi float [ 1.000000e+00, %211 ], [ 1.000000e+00, %199 ], [ 1.000000e+00, %154 ], [ 1.000000e+00, %156 ], [ 1.000000e+00, %170 ], [ 1.000000e+00, %175 ], [ %167, %162 ], [ 1.000000e+00, %142 ], [ 1.000000e+00, %146 ], [ 1.000000e+00, %135 ]
  %217 = getelementptr inbounds %struct.ParticleSettings, ptr %26, i64 0, i32 15
  %218 = load i32, ptr %217, align 8, !tbaa !72
  %219 = and i32 %218, 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %229, label %221

221:                                              ; preds = %212
  %222 = load i16, ptr %48, align 8, !tbaa !315
  %223 = icmp eq i16 %222, 2
  br i1 %223, label %229, label %224

224:                                              ; preds = %221
  %225 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 2
  call void @copy_m4_m4(ptr noundef nonnull %12, ptr noundef nonnull %225) #20
  %226 = call fastcc float @normalize_v3(ptr noundef nonnull %12) #21
  %227 = getelementptr inbounds [4 x [4 x float]], ptr %12, i64 0, i64 1
  %228 = call fastcc float @normalize_v3(ptr noundef nonnull %227) #21
  br label %229

229:                                              ; preds = %224, %221, %212
  switch i32 %213, label %235 [
    i32 5, label %230
    i32 3, label %230
    i32 1, label %230
  ]

230:                                              ; preds = %229, %229, %229
  %231 = getelementptr inbounds %struct.ParticleSettings, ptr %26, i64 0, i32 23
  %232 = load i16, ptr %231, align 4, !tbaa !329
  %233 = icmp sgt i16 %232, 1
  %234 = select i1 %233, i8 1, i8 %214
  br label %235

235:                                              ; preds = %230, %229
  %236 = phi i8 [ %214, %229 ], [ %234, %230 ]
  %237 = icmp eq i8 %236, 0
  %238 = icmp ne ptr %31, null
  %239 = select i1 %237, i1 %238, i1 false
  br i1 %239, label %240, label %246

240:                                              ; preds = %235
  %241 = getelementptr inbounds %struct.ParticleDrawData, ptr %31, i64 0, i32 4
  %242 = load ptr, ptr %241, align 8, !tbaa !343
  %243 = icmp eq ptr %242, null
  br i1 %243, label %246, label %244

244:                                              ; preds = %240
  %245 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  call void %245(ptr noundef nonnull %242) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %241, i8 0, i64 16, i1 false)
  br label %246

246:                                              ; preds = %244, %240, %235
  switch i32 %213, label %247 [
    i32 6, label %341
    i32 2, label %341
    i32 0, label %341
  ]

247:                                              ; preds = %246
  %248 = add nsw i32 %140, %102
  %249 = mul i32 %248, 12
  br i1 %238, label %253, label %250

250:                                              ; preds = %247
  %251 = load ptr, ptr @MEM_callocN, align 8, !tbaa !53
  %252 = call ptr %251(i64 noundef 88, ptr noundef nonnull @.str.9) #20
  store ptr %252, ptr %30, align 8, !tbaa !313
  br label %253

253:                                              ; preds = %250, %247
  %254 = phi ptr [ %31, %247 ], [ %252, %250 ]
  %255 = load i16, ptr %48, align 8, !tbaa !315
  %256 = icmp eq i16 %255, 10
  br i1 %256, label %257, label %263

257:                                              ; preds = %253
  %258 = getelementptr inbounds %struct.ParticleSettings, ptr %26, i64 0, i32 119
  %259 = load i32, ptr %258, align 8, !tbaa !345
  %260 = icmp sgt i32 %259, 1
  br i1 %260, label %261, label %263

261:                                              ; preds = %257
  %262 = mul nsw i32 %259, %249
  call void @psys_make_temp_pointcache(ptr noundef nonnull %23, ptr noundef nonnull %4) #20
  br label %263

263:                                              ; preds = %261, %257, %253
  %264 = phi i32 [ %262, %261 ], [ %249, %257 ], [ %249, %253 ]
  switch i32 %213, label %273 [
    i32 4, label %265
    i32 3, label %265
    i32 5, label %269
    i32 9, label %271
  ]

265:                                              ; preds = %263, %263
  %266 = mul nsw i32 %264, 6
  %267 = icmp eq i32 %213, 3
  %268 = select i1 %267, i8 %236, i8 1
  br label %273

269:                                              ; preds = %263
  %270 = shl nsw i32 %264, 1
  br label %273

271:                                              ; preds = %263
  %272 = shl nsw i32 %264, 2
  br label %273

273:                                              ; preds = %265, %263, %271, %269
  %274 = phi i8 [ %236, %263 ], [ %236, %271 ], [ %236, %269 ], [ %268, %265 ]
  %275 = phi i32 [ %264, %263 ], [ %272, %271 ], [ %270, %269 ], [ %266, %265 ]
  %276 = phi i1 [ true, %263 ], [ false, %271 ], [ true, %269 ], [ true, %265 ]
  %277 = getelementptr inbounds %struct.ParticleDrawData, ptr %254, i64 0, i32 9
  %278 = load i32, ptr %277, align 8, !tbaa !346
  %279 = icmp eq i32 %278, %275
  br i1 %279, label %281, label %280

280:                                              ; preds = %273
  call void @psys_free_pdd(ptr noundef nonnull %4) #20
  br label %281

281:                                              ; preds = %280, %273
  %282 = load ptr, ptr %254, align 8, !tbaa !347
  %283 = icmp eq ptr %282, null
  br i1 %283, label %284, label %288

284:                                              ; preds = %281
  %285 = load ptr, ptr @MEM_callocN, align 8, !tbaa !53
  %286 = sext i32 %275 to i64
  %287 = call ptr %285(i64 noundef %286, ptr noundef nonnull @.str.10) #20
  store ptr %287, ptr %254, align 8, !tbaa !347
  br label %288

288:                                              ; preds = %284, %281
  %289 = icmp eq i8 %274, 0
  br i1 %289, label %298, label %290

290:                                              ; preds = %288
  %291 = getelementptr inbounds %struct.ParticleDrawData, ptr %254, i64 0, i32 4
  %292 = load ptr, ptr %291, align 8, !tbaa !343
  %293 = icmp eq ptr %292, null
  br i1 %293, label %294, label %298

294:                                              ; preds = %290
  %295 = load ptr, ptr @MEM_callocN, align 8, !tbaa !53
  %296 = sext i32 %275 to i64
  %297 = call ptr %295(i64 noundef %296, ptr noundef nonnull @.str.11) #20
  store ptr %297, ptr %291, align 8, !tbaa !343
  br label %298

298:                                              ; preds = %294, %290, %288
  br i1 %276, label %307, label %299

299:                                              ; preds = %298
  %300 = getelementptr inbounds %struct.ParticleDrawData, ptr %254, i64 0, i32 2
  %301 = load ptr, ptr %300, align 8, !tbaa !348
  %302 = icmp eq ptr %301, null
  br i1 %302, label %303, label %307

303:                                              ; preds = %299
  %304 = load ptr, ptr @MEM_callocN, align 8, !tbaa !53
  %305 = sext i32 %275 to i64
  %306 = call ptr %304(i64 noundef %305, ptr noundef nonnull @.str.12) #20
  store ptr %306, ptr %300, align 8, !tbaa !348
  br label %307

307:                                              ; preds = %303, %299, %298
  %308 = load i32, ptr %217, align 8, !tbaa !72
  %309 = and i32 %308, 1
  %310 = icmp ne i32 %309, 0
  %311 = icmp ne i32 %213, 5
  %312 = and i1 %311, %310
  %313 = getelementptr inbounds %struct.ParticleDrawData, ptr %254, i64 0, i32 6
  %314 = load ptr, ptr %313, align 8, !tbaa !349
  %315 = icmp eq ptr %314, null
  br i1 %312, label %316, label %323

316:                                              ; preds = %307
  br i1 %315, label %317, label %329

317:                                              ; preds = %316
  %318 = load ptr, ptr @MEM_callocN, align 8, !tbaa !53
  %319 = mul nsw i32 %248, 6
  %320 = sext i32 %319 to i64
  %321 = shl nsw i64 %320, 2
  %322 = call ptr %318(i64 noundef %321, ptr noundef nonnull @.str.13) #20
  br label %326

323:                                              ; preds = %307
  br i1 %315, label %329, label %324

324:                                              ; preds = %323
  %325 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  call void %325(ptr noundef nonnull %314) #20
  br label %326

326:                                              ; preds = %317, %324
  %327 = phi ptr [ null, %324 ], [ %322, %317 ]
  %328 = phi i8 [ %215, %324 ], [ 1, %317 ]
  store ptr %327, ptr %313, align 8, !tbaa !349
  br label %329

329:                                              ; preds = %326, %323, %316
  %330 = phi ptr [ null, %323 ], [ %314, %316 ], [ %327, %326 ]
  %331 = phi i8 [ %215, %323 ], [ 1, %316 ], [ %328, %326 ]
  %332 = load ptr, ptr %254, align 8, !tbaa !347
  %333 = getelementptr inbounds %struct.ParticleDrawData, ptr %254, i64 0, i32 1
  store ptr %332, ptr %333, align 8, !tbaa !350
  %334 = getelementptr inbounds %struct.ParticleDrawData, ptr %254, i64 0, i32 7
  store ptr %330, ptr %334, align 8, !tbaa !351
  %335 = getelementptr inbounds %struct.ParticleDrawData, ptr %254, i64 0, i32 4
  %336 = load ptr, ptr %335, align 8, !tbaa !343
  %337 = getelementptr inbounds %struct.ParticleDrawData, ptr %254, i64 0, i32 5
  store ptr %336, ptr %337, align 8, !tbaa !352
  %338 = getelementptr inbounds %struct.ParticleDrawData, ptr %254, i64 0, i32 2
  %339 = load ptr, ptr %338, align 8, !tbaa !348
  %340 = getelementptr inbounds %struct.ParticleDrawData, ptr %254, i64 0, i32 3
  store ptr %339, ptr %340, align 8, !tbaa !353
  store i32 %275, ptr %277, align 8, !tbaa !346
  br label %349

341:                                              ; preds = %246, %246, %246
  %342 = load ptr, ptr %30, align 8, !tbaa !313
  %343 = icmp eq ptr %342, null
  br i1 %343, label %347, label %344

344:                                              ; preds = %341
  call void @psys_free_pdd(ptr noundef nonnull %4) #20
  %345 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  %346 = load ptr, ptr %30, align 8, !tbaa !313
  call void %345(ptr noundef %346) #20
  store ptr null, ptr %30, align 8, !tbaa !313
  br label %353

347:                                              ; preds = %341
  %348 = icmp eq ptr %31, null
  br i1 %348, label %353, label %349

349:                                              ; preds = %329, %347
  %350 = phi ptr [ %254, %329 ], [ %31, %347 ]
  %351 = phi i8 [ %331, %329 ], [ %215, %347 ]
  %352 = getelementptr inbounds %struct.ParticleDrawData, ptr %350, i64 0, i32 8
  store ptr %15, ptr %352, align 8, !tbaa !354
  br label %353

353:                                              ; preds = %344, %349, %347
  %354 = phi i1 [ true, %349 ], [ false, %347 ], [ false, %344 ]
  %355 = phi ptr [ %350, %349 ], [ null, %347 ], [ null, %344 ]
  %356 = phi i8 [ %351, %349 ], [ %215, %347 ], [ %215, %344 ]
  %357 = call ptr @psys_create_lattice_deform_data(ptr noundef nonnull %10) #20
  %358 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 15
  store ptr %357, ptr %358, align 8, !tbaa !355
  %359 = icmp eq i32 %213, 2
  %360 = or i1 %359, %354
  %361 = icmp ne i32 %213, 6
  %362 = and i1 %361, %360
  br i1 %362, label %363, label %629

363:                                              ; preds = %353
  br i1 %354, label %364, label %380

364:                                              ; preds = %363
  %365 = getelementptr inbounds %struct.ParticleDrawData, ptr %355, i64 0, i32 10
  %366 = load i32, ptr %365, align 4, !tbaa !356
  %367 = and i32 %366, 1
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %380, label %369

369:                                              ; preds = %364
  %370 = getelementptr inbounds %struct.ParticleDrawData, ptr %355, i64 0, i32 6
  %371 = load ptr, ptr %370, align 8, !tbaa !349
  %372 = icmp eq ptr %371, null
  br i1 %372, label %373, label %380

373:                                              ; preds = %369
  %374 = load i32, ptr %217, align 8, !tbaa !72
  %375 = and i32 %374, 532
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %380

377:                                              ; preds = %373
  %378 = getelementptr inbounds %struct.ParticleDrawData, ptr %355, i64 0, i32 11
  %379 = load i32, ptr %378, align 8, !tbaa !357
  br label %629

380:                                              ; preds = %369, %373, %364, %363
  %381 = add nsw i32 %140, %102
  %382 = icmp sgt i32 %381, 0
  br i1 %382, label %383, label %629

383:                                              ; preds = %380
  %384 = icmp eq i32 %102, 0
  %385 = getelementptr inbounds %struct.ParticleSettings, ptr %26, i64 0, i32 23
  %386 = getelementptr inbounds %struct.ParticleSettings, ptr %26, i64 0, i32 47
  %387 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 4
  %388 = getelementptr inbounds %struct.ParticleSettings, ptr %26, i64 0, i32 119
  %389 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 0, i32 4
  %390 = getelementptr inbounds %struct.ParticleSettings, ptr %26, i64 0, i32 118
  %391 = getelementptr inbounds %struct.ParticleSettings, ptr %26, i64 0, i32 88
  %392 = getelementptr inbounds %struct.ParticleDrawData, ptr %355, i64 0, i32 6
  %393 = getelementptr inbounds %struct.ParticleDrawData, ptr %355, i64 0, i32 7
  %394 = getelementptr inbounds %struct.ParticleKey, ptr %8, i64 0, i32 1
  %395 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 29
  %396 = sext i32 %140 to i64
  %397 = zext nneg i32 %381 to i64
  br label %398

398:                                              ; preds = %383, %622
  %399 = phi i64 [ 0, %383 ], [ %626, %622 ]
  %400 = phi ptr [ %28, %383 ], [ %627, %622 ]
  %401 = phi i64 [ undef, %383 ], [ %625, %622 ]
  %402 = phi i32 [ 0, %383 ], [ %624, %622 ]
  %403 = phi i32 [ 0, %383 ], [ %623, %622 ]
  %404 = icmp sge i64 %399, %396
  br i1 %404, label %469, label %405

405:                                              ; preds = %398
  br i1 %384, label %410, label %406

406:                                              ; preds = %405
  %407 = load i32, ptr %217, align 8, !tbaa !72
  %408 = and i32 %407, 256
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %622, label %410

410:                                              ; preds = %406, %405
  %411 = getelementptr inbounds %struct.ParticleData, ptr %400, i64 0, i32 17
  %412 = load i16, ptr %411, align 4, !tbaa !358
  %413 = and i16 %412, 3
  %414 = icmp eq i16 %413, 0
  br i1 %414, label %415, label %622

415:                                              ; preds = %410
  %416 = getelementptr inbounds %struct.ParticleData, ptr %400, i64 0, i32 6
  %417 = load float, ptr %416, align 4, !tbaa !361
  %418 = fsub float %141, %417
  %419 = getelementptr inbounds %struct.ParticleData, ptr %400, i64 0, i32 7
  %420 = load float, ptr %419, align 8, !tbaa !362
  %421 = fdiv float %418, %420
  store float %417, ptr %13, align 4, !tbaa !45
  %422 = getelementptr inbounds %struct.ParticleData, ptr %400, i64 0, i32 8
  %423 = load float, ptr %422, align 4, !tbaa !363
  store float %423, ptr %14, align 4, !tbaa !45
  %424 = getelementptr inbounds %struct.ParticleData, ptr %400, i64 0, i32 13
  %425 = load float, ptr %424, align 4, !tbaa !364
  %426 = load i16, ptr %63, align 8, !tbaa !322
  %427 = icmp eq i16 %426, 3
  br i1 %427, label %428, label %433

428:                                              ; preds = %415
  %429 = getelementptr inbounds %struct.ParticleData, ptr %400, i64 0, i32 4
  %430 = load ptr, ptr %429, align 8, !tbaa !365
  %431 = getelementptr inbounds %struct.BoidParticle, ptr %430, i64 0, i32 1
  %432 = load float, ptr %431, align 8, !tbaa !366
  br label %433

433:                                              ; preds = %415, %428
  %434 = phi float [ %432, %428 ], [ -1.000000e+00, %415 ]
  %435 = trunc i64 %399 to i32
  %436 = add i32 %435, 21
  %437 = call fastcc float @psys_frand(ptr noundef %4, i32 noundef %436) #21
  %438 = trunc i64 %399 to i32
  %439 = add i32 %438, 22
  %440 = call fastcc float @psys_frand(ptr noundef %4, i32 noundef %439) #21
  %441 = load i16, ptr %385, align 4, !tbaa !329
  %442 = icmp sgt i16 %441, 1
  br i1 %442, label %443, label %481

443:                                              ; preds = %433
  switch i16 %441, label %467 [
    i16 2, label %444
    i16 3, label %449
  ]

444:                                              ; preds = %443
  %445 = getelementptr inbounds %struct.ParticleKey, ptr %400, i64 0, i32 1
  %446 = call fastcc float @len_v3(ptr noundef nonnull %445) #21
  %447 = load float, ptr %386, align 8, !tbaa !369
  %448 = fdiv float %446, %447
  br label %461

449:                                              ; preds = %443
  %450 = getelementptr inbounds %struct.ParticleKey, ptr %400, i64 0, i32 1
  %451 = getelementptr inbounds %struct.ParticleData, ptr %400, i64 0, i32 1, i32 1
  %452 = call fastcc float @len_v3v3(ptr noundef nonnull %450, ptr noundef nonnull %451) #21
  %453 = getelementptr inbounds %struct.ParticleKey, ptr %400, i64 0, i32 4
  %454 = load float, ptr %453, align 4, !tbaa !370
  %455 = getelementptr inbounds %struct.ParticleData, ptr %400, i64 0, i32 1, i32 4
  %456 = load float, ptr %455, align 4, !tbaa !371
  %457 = fsub float %454, %456
  %458 = load float, ptr %386, align 8, !tbaa !369
  %459 = fmul float %457, %458
  %460 = fdiv float %452, %459
  br label %461

461:                                              ; preds = %449, %444
  %462 = phi float [ %460, %449 ], [ %448, %444 ]
  %463 = fcmp olt float %462, 0.000000e+00
  br i1 %463, label %467, label %464

464:                                              ; preds = %461
  %465 = fcmp ogt float %462, 1.000000e+00
  br i1 %465, label %466, label %467

466:                                              ; preds = %464
  br label %467

467:                                              ; preds = %443, %461, %464, %466
  %468 = phi float [ 1.000000e+00, %466 ], [ %462, %464 ], [ 0.000000e+00, %461 ], [ 1.000000e+00, %443 ]
  call void @weight_to_rgb(ptr noundef nonnull %15, float noundef %468) #20
  br label %481

469:                                              ; preds = %398
  %470 = load ptr, ptr %387, align 8, !tbaa !372
  %471 = sub nsw i64 %399, %396
  %472 = getelementptr inbounds %struct.ChildParticle, ptr %470, i64 %471
  %473 = call float @psys_get_child_time(ptr noundef %4, ptr noundef %472, float noundef %141, ptr noundef nonnull %13, ptr noundef nonnull %14) #20
  %474 = call float @psys_get_child_size(ptr noundef %4, ptr noundef %472, float noundef %141, ptr noundef null) #20
  %475 = trunc i64 %399 to i32
  %476 = add i32 %475, 21
  %477 = call fastcc float @psys_frand(ptr noundef %4, i32 noundef %476) #21
  %478 = trunc i64 %399 to i32
  %479 = add i32 %478, 22
  %480 = call fastcc float @psys_frand(ptr noundef %4, i32 noundef %479) #21
  br label %481

481:                                              ; preds = %433, %467, %469
  %482 = phi float [ %434, %467 ], [ %434, %433 ], [ -1.000000e+00, %469 ]
  %483 = phi float [ %421, %467 ], [ %421, %433 ], [ %473, %469 ]
  %484 = phi float [ %440, %467 ], [ %440, %433 ], [ %480, %469 ]
  %485 = phi float [ %437, %467 ], [ %437, %433 ], [ %477, %469 ]
  %486 = phi float [ %425, %467 ], [ %425, %433 ], [ %474, %469 ]
  %487 = fadd float %485, -5.000000e-01
  %488 = fmul float %487, 2.000000e+00
  %489 = load i16, ptr %48, align 8, !tbaa !315
  %490 = icmp eq i16 %489, 10
  br i1 %490, label %491, label %549

491:                                              ; preds = %481
  %492 = load i32, ptr %388, align 8, !tbaa !345
  %493 = icmp sgt i32 %492, 1
  br i1 %493, label %494, label %549

494:                                              ; preds = %491
  %495 = load float, ptr %390, align 4, !tbaa !373
  %496 = load float, ptr %391, align 8, !tbaa !374
  %497 = fneg float %496
  %498 = call float @llvm.fmuladd.f32(float %497, float %484, float 1.000000e+00)
  %499 = fmul float %495, %498
  %500 = sitofp i32 %492 to float
  %501 = fmul float %498, %500
  %502 = fptosi float %501 to i32
  %503 = icmp eq i32 %502, 0
  %504 = sitofp i32 %502 to float
  %505 = select i1 %503, float 1.000000e+00, float %504
  %506 = fdiv float %499, %505
  %507 = icmp sgt i32 %502, 0
  br i1 %507, label %508, label %622

508:                                              ; preds = %494
  %509 = load i32, ptr %217, align 8, !tbaa !72
  %510 = and i32 %509, 32
  %511 = icmp eq i32 %510, 0
  %512 = select i1 %511, float %483, float %141
  %513 = fsub float %512, %499
  %514 = trunc i64 %399 to i32
  br label %515

515:                                              ; preds = %508, %544
  %516 = phi float [ %520, %544 ], [ %513, %508 ]
  %517 = phi i32 [ %547, %544 ], [ 0, %508 ]
  %518 = phi i32 [ %546, %544 ], [ 0, %508 ]
  %519 = phi i32 [ %545, %544 ], [ %403, %508 ]
  %520 = fadd float %506, %516
  %521 = load i32, ptr %217, align 8, !tbaa !72
  %522 = and i32 %521, 32
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %530, label %524

524:                                              ; preds = %515
  %525 = load float, ptr %13, align 4, !tbaa !45
  %526 = fcmp olt float %520, %525
  %527 = load float, ptr %14, align 4
  %528 = fcmp ogt float %520, %527
  %529 = select i1 %526, i1 true, i1 %528
  br i1 %529, label %544, label %539

530:                                              ; preds = %515
  %531 = fcmp olt float %520, 0.000000e+00
  %532 = fcmp ogt float %520, 1.000000e+00
  %533 = or i1 %531, %532
  br i1 %533, label %544, label %534

534:                                              ; preds = %530
  %535 = load float, ptr %13, align 4, !tbaa !45
  %536 = load float, ptr %14, align 4, !tbaa !45
  %537 = fsub float %536, %535
  %538 = call float @llvm.fmuladd.f32(float %520, float %537, float %535)
  br label %539

539:                                              ; preds = %524, %534
  %540 = phi float [ %538, %534 ], [ %520, %524 ]
  %541 = fneg float %540
  store float %541, ptr %389, align 4, !tbaa !375
  call void @psys_get_particle_on_path(ptr noundef nonnull %10, i32 noundef %514, ptr noundef nonnull %8, i8 noundef zeroext %356) #20
  %542 = load ptr, ptr %30, align 8, !tbaa !313
  call fastcc void @draw_particle_data(ptr noundef %4, ptr noundef %2, ptr noundef nonnull %8, i32 noundef %213, ptr noundef nonnull %12, ptr noundef nonnull %9, ptr noundef %542, float noundef %520, float noundef %486, float noundef %488, float noundef %216) #21
  %543 = add nsw i32 %519, 1
  br label %544

544:                                              ; preds = %530, %524, %539
  %545 = phi i32 [ %519, %524 ], [ %543, %539 ], [ %519, %530 ]
  %546 = phi i32 [ %518, %524 ], [ 1, %539 ], [ %518, %530 ]
  %547 = add nuw nsw i32 %517, 1
  %548 = icmp eq i32 %547, %502
  br i1 %548, label %556, label %515, !llvm.loop !376

549:                                              ; preds = %491, %481
  store float %141, ptr %389, align 4, !tbaa !375
  %550 = trunc i64 %399 to i32
  %551 = call i32 @psys_get_particle_state(ptr noundef nonnull %10, i32 noundef %550, ptr noundef nonnull %8, i32 noundef 0) #20
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %622, label %553

553:                                              ; preds = %549
  %554 = load ptr, ptr %30, align 8, !tbaa !313
  call fastcc void @draw_particle_data(ptr noundef %4, ptr noundef %2, ptr noundef nonnull %8, i32 noundef %213, ptr noundef nonnull %12, ptr noundef nonnull %9, ptr noundef %554, float noundef %483, float noundef %486, float noundef %488, float noundef %216) #21
  %555 = add nsw i32 %403, 1
  br label %558

556:                                              ; preds = %544
  %557 = icmp eq i32 %546, 0
  br i1 %557, label %622, label %558

558:                                              ; preds = %553, %556
  %559 = phi i32 [ %555, %553 ], [ %545, %556 ]
  %560 = load i32, ptr %217, align 8, !tbaa !72
  %561 = and i32 %560, 1
  %562 = icmp ne i32 %561, 0
  %563 = and i1 %354, %562
  br i1 %563, label %564, label %576

564:                                              ; preds = %558
  %565 = load ptr, ptr %392, align 8, !tbaa !349
  %566 = icmp eq ptr %565, null
  br i1 %566, label %576, label %567

567:                                              ; preds = %564
  %568 = load ptr, ptr %393, align 8, !tbaa !351
  call fastcc void @copy_v3_v3(ptr noundef %568, ptr noundef nonnull %8) #21
  %569 = load ptr, ptr %393, align 8, !tbaa !351
  %570 = getelementptr inbounds float, ptr %569, i64 3
  store ptr %570, ptr %393, align 8, !tbaa !351
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %11, ptr noundef nonnull %394, float noundef %123) #21
  %571 = load ptr, ptr %393, align 8, !tbaa !351
  call fastcc void @add_v3_v3v3(ptr noundef %571, ptr noundef nonnull %8, ptr noundef nonnull %11) #21
  %572 = load ptr, ptr %393, align 8, !tbaa !351
  %573 = getelementptr inbounds float, ptr %572, i64 3
  store ptr %573, ptr %393, align 8, !tbaa !351
  %574 = add nsw i32 %402, 1
  %575 = load i32, ptr %217, align 8, !tbaa !72
  br label %576

576:                                              ; preds = %567, %564, %558
  %577 = phi i32 [ %575, %567 ], [ %560, %564 ], [ %560, %558 ]
  %578 = phi i32 [ %574, %567 ], [ %402, %564 ], [ %402, %558 ]
  %579 = and i32 %577, 4
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %583, label %581

581:                                              ; preds = %576
  call void @setlinestyle(i32 noundef 3) #20
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %8, float noundef %486, ptr noundef nonnull %12) #21
  call void @setlinestyle(i32 noundef 0) #20
  %582 = load i32, ptr %217, align 8, !tbaa !72
  br label %583

583:                                              ; preds = %581, %576
  %584 = phi i32 [ %582, %581 ], [ %577, %576 ]
  %585 = and i32 %584, 512
  %586 = icmp eq i32 %585, 0
  %587 = and i32 %584, 16
  %588 = icmp eq i32 %587, 0
  %589 = and i32 %584, 528
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %622, label %591

591:                                              ; preds = %583
  %592 = load i16, ptr %395, align 2, !tbaa !15
  %593 = and i16 %592, 4
  %594 = icmp eq i16 %593, 0
  br i1 %594, label %595, label %622

595:                                              ; preds = %591
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #22
  store i8 0, ptr %17, align 16, !tbaa !55
  %596 = or i1 %404, %588
  br i1 %586, label %608, label %597

597:                                              ; preds = %595
  br i1 %596, label %605, label %598

598:                                              ; preds = %597
  %599 = load i16, ptr %63, align 8, !tbaa !322
  %600 = icmp eq i16 %599, 3
  br i1 %600, label %601, label %605

601:                                              ; preds = %598
  %602 = fpext float %482 to double
  %603 = trunc i64 %399 to i32
  %604 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %17, i64 noundef 32, ptr noundef nonnull @.str.14, i32 noundef %603, double noundef %602) #20
  br label %615

605:                                              ; preds = %598, %597
  %606 = trunc i64 %399 to i32
  %607 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %17, i64 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %606) #20
  br label %615

608:                                              ; preds = %595
  br i1 %596, label %620, label %609

609:                                              ; preds = %608
  %610 = load i16, ptr %63, align 8, !tbaa !322
  %611 = icmp eq i16 %610, 3
  br i1 %611, label %612, label %615

612:                                              ; preds = %609
  %613 = fpext float %482 to double
  %614 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %17, i64 noundef 32, ptr noundef nonnull @.str.15, double noundef %613) #20
  br label %615

615:                                              ; preds = %609, %612, %601, %605
  %616 = phi i64 [ %401, %609 ], [ %614, %612 ], [ %607, %605 ], [ %604, %601 ]
  %617 = load i8, ptr %17, align 16, !tbaa !55
  %618 = icmp eq i8 %617, 0
  br i1 %618, label %620, label %619

619:                                              ; preds = %615
  call void @mul_v3_m4v3(ptr noundef nonnull %20, ptr noundef nonnull %136, ptr noundef nonnull %8) #20
  call void @view3d_cached_text_draw_add(ptr noundef nonnull %20, ptr noundef nonnull %17, i64 noundef %616, i16 noundef signext 10, i16 noundef signext 6, ptr noundef nonnull %18) #21
  br label %620

620:                                              ; preds = %608, %619, %615
  %621 = phi i64 [ %616, %619 ], [ %616, %615 ], [ %401, %608 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #22
  br label %622

622:                                              ; preds = %494, %549, %583, %556, %620, %591, %410, %406
  %623 = phi i32 [ %403, %406 ], [ %403, %410 ], [ %559, %620 ], [ %559, %591 ], [ %545, %556 ], [ %559, %583 ], [ %403, %549 ], [ %403, %494 ]
  %624 = phi i32 [ %402, %406 ], [ %402, %410 ], [ %578, %620 ], [ %578, %591 ], [ %402, %556 ], [ %578, %583 ], [ %402, %549 ], [ %402, %494 ]
  %625 = phi i64 [ %401, %406 ], [ %401, %410 ], [ %621, %620 ], [ %401, %591 ], [ %401, %556 ], [ %401, %583 ], [ %401, %549 ], [ %401, %494 ]
  %626 = add nuw nsw i64 %399, 1
  %627 = getelementptr inbounds %struct.ParticleData, ptr %400, i64 1
  %628 = icmp eq i64 %626, %397
  br i1 %628, label %629, label %398, !llvm.loop !377

629:                                              ; preds = %622, %380, %377, %353
  %630 = phi i32 [ %379, %377 ], [ 0, %353 ], [ 0, %380 ], [ %623, %622 ]
  %631 = phi i32 [ 0, %377 ], [ 0, %353 ], [ 0, %380 ], [ %624, %622 ]
  call void @glGetIntegerv(i32 noundef 2880, ptr noundef nonnull %16) #20
  call void @glEnableClientState(i32 noundef 32884) #20
  %632 = icmp eq i32 %213, 6
  br i1 %632, label %633, label %726

633:                                              ; preds = %629
  call void @glEnableClientState(i32 noundef 32885) #20
  br i1 %120, label %634, label %639

634:                                              ; preds = %633
  %635 = getelementptr inbounds %struct.ParticleSettings, ptr %26, i64 0, i32 23
  %636 = load i16, ptr %635, align 4, !tbaa !329
  %637 = icmp eq i16 %636, 1
  br i1 %637, label %638, label %639

638:                                              ; preds = %634
  call void @glEnableClientState(i32 noundef 32886) #20
  br label %639

639:                                              ; preds = %634, %638, %633
  call void @glEnable(i32 noundef 2896) #20
  call void @glColorMaterial(i32 noundef 1032, i32 noundef 4609) #20
  call void @glEnable(i32 noundef 2903) #20
  %640 = icmp eq i32 %102, 0
  br i1 %640, label %645, label %641

641:                                              ; preds = %639
  %642 = load i32, ptr %217, align 8, !tbaa !72
  %643 = and i32 %642, 256
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %674, label %645

645:                                              ; preds = %641, %639
  %646 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 7
  %647 = load ptr, ptr %646, align 8, !tbaa !331
  %648 = icmp eq ptr %647, null
  br i1 %648, label %674, label %649

649:                                              ; preds = %645
  %650 = icmp sgt i32 %140, 0
  br i1 %650, label %651, label %674

651:                                              ; preds = %649
  %652 = getelementptr inbounds %struct.ParticleSettings, ptr %26, i64 0, i32 23
  %653 = zext nneg i32 %140 to i64
  br label %654

654:                                              ; preds = %651, %671
  %655 = phi i64 [ 0, %651 ], [ %672, %671 ]
  %656 = getelementptr inbounds ptr, ptr %647, i64 %655
  %657 = load ptr, ptr %656, align 8, !tbaa !53
  %658 = getelementptr inbounds %struct.ParticleCacheKey, ptr %657, i64 0, i32 5
  %659 = load i32, ptr %658, align 4, !tbaa !378
  %660 = icmp sgt i32 %659, 0
  br i1 %660, label %661, label %671

661:                                              ; preds = %654
  call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 60, ptr noundef nonnull %657) #20
  %662 = getelementptr inbounds %struct.ParticleCacheKey, ptr %657, i64 0, i32 1
  call void @glNormalPointer(i32 noundef 5126, i32 noundef 60, ptr noundef nonnull %662) #20
  br i1 %120, label %663, label %668

663:                                              ; preds = %661
  %664 = load i16, ptr %652, align 4, !tbaa !329
  %665 = icmp eq i16 %664, 1
  br i1 %665, label %666, label %668

666:                                              ; preds = %663
  %667 = getelementptr inbounds %struct.ParticleCacheKey, ptr %657, i64 0, i32 3
  call void @glColorPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 60, ptr noundef nonnull %667) #20
  br label %668

668:                                              ; preds = %663, %666, %661
  %669 = load i32, ptr %658, align 4, !tbaa !378
  %670 = add nsw i32 %669, 1
  call void @glDrawArrays(i32 noundef 3, i32 noundef 0, i32 noundef %670) #20
  br label %671

671:                                              ; preds = %654, %668
  %672 = add nuw nsw i64 %655, 1
  %673 = icmp eq i64 %672, %653
  br i1 %673, label %674, label %654, !llvm.loop !380

674:                                              ; preds = %671, %645, %641, %649
  %675 = phi i1 [ false, %649 ], [ false, %641 ], [ false, %645 ], [ %650, %671 ]
  %676 = phi i32 [ %140, %649 ], [ 0, %641 ], [ 0, %645 ], [ %140, %671 ]
  %677 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 7
  %678 = getelementptr inbounds %struct.ParticleSystem, ptr %4, i64 0, i32 8
  %679 = load ptr, ptr %678, align 8, !tbaa !325
  %680 = icmp sgt i32 %102, 0
  br i1 %680, label %681, label %700

681:                                              ; preds = %674
  %682 = getelementptr inbounds %struct.ParticleSettings, ptr %26, i64 0, i32 23
  %683 = zext nneg i32 %102 to i64
  br label %684

684:                                              ; preds = %681, %694
  %685 = phi i64 [ 0, %681 ], [ %698, %694 ]
  %686 = getelementptr inbounds ptr, ptr %679, i64 %685
  %687 = load ptr, ptr %686, align 8, !tbaa !53
  call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 60, ptr noundef %687) #20
  %688 = getelementptr inbounds %struct.ParticleCacheKey, ptr %687, i64 0, i32 1
  call void @glNormalPointer(i32 noundef 5126, i32 noundef 60, ptr noundef nonnull %688) #20
  br i1 %120, label %689, label %694

689:                                              ; preds = %684
  %690 = load i16, ptr %682, align 4, !tbaa !329
  %691 = icmp eq i16 %690, 1
  br i1 %691, label %692, label %694

692:                                              ; preds = %689
  %693 = getelementptr inbounds %struct.ParticleCacheKey, ptr %687, i64 0, i32 3
  call void @glColorPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 60, ptr noundef nonnull %693) #20
  br label %694

694:                                              ; preds = %689, %692, %684
  %695 = getelementptr inbounds %struct.ParticleCacheKey, ptr %687, i64 0, i32 5
  %696 = load i32, ptr %695, align 4, !tbaa !378
  %697 = add nsw i32 %696, 1
  call void @glDrawArrays(i32 noundef 3, i32 noundef 0, i32 noundef %697) #20
  %698 = add nuw nsw i64 %685, 1
  %699 = icmp eq i64 %698, %683
  br i1 %699, label %700, label %684, !llvm.loop !381

700:                                              ; preds = %694, %674
  %701 = getelementptr inbounds %struct.ParticleSettings, ptr %26, i64 0, i32 23
  %702 = load i16, ptr %701, align 4, !tbaa !329
  %703 = icmp eq i16 %702, 1
  br i1 %703, label %704, label %705

704:                                              ; preds = %700
  call void @glDisableClientState(i32 noundef 32886) #20
  br label %705

705:                                              ; preds = %704, %700
  call void @glDisable(i32 noundef 2903) #20
  call void @glLineWidth(float noundef 1.000000e+00) #20
  %706 = load i32, ptr %217, align 8, !tbaa !72
  %707 = and i32 %706, 512
  %708 = icmp eq i32 %707, 0
  br i1 %708, label %773, label %709

709:                                              ; preds = %705
  %710 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 29
  %711 = load i16, ptr %710, align 2, !tbaa !15
  %712 = and i16 %711, 4
  %713 = icmp eq i16 %712, 0
  br i1 %713, label %714, label %773

714:                                              ; preds = %709
  %715 = load ptr, ptr %677, align 8, !tbaa !331
  br i1 %675, label %716, label %773

716:                                              ; preds = %714
  %717 = zext nneg i32 %676 to i64
  br label %718

718:                                              ; preds = %716, %718
  %719 = phi i64 [ 0, %716 ], [ %724, %718 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #22
  %720 = trunc i64 %719 to i32
  %721 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %17, i64 noundef 32, ptr noundef nonnull @.str.16, i32 noundef %720) #20
  %722 = getelementptr inbounds ptr, ptr %715, i64 %719
  %723 = load ptr, ptr %722, align 8, !tbaa !53
  call void @mul_v3_m4v3(ptr noundef nonnull %21, ptr noundef nonnull %136, ptr noundef %723) #20
  call void @view3d_cached_text_draw_add(ptr noundef nonnull %21, ptr noundef nonnull %17, i64 noundef %721, i16 noundef signext 10, i16 noundef signext 6, ptr noundef nonnull %18) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #22
  %724 = add nuw nsw i64 %719, 1
  %725 = icmp eq i64 %724, %717
  br i1 %725, label %773, label %718, !llvm.loop !382

726:                                              ; preds = %629
  br i1 %354, label %727, label %784

727:                                              ; preds = %726
  switch i32 %213, label %728 [
    i32 2, label %774
    i32 0, label %774
  ]

728:                                              ; preds = %727
  call void @glDisableClientState(i32 noundef 32886) #20
  %729 = load ptr, ptr %355, align 8, !tbaa !347
  %730 = icmp eq ptr %729, null
  br i1 %730, label %733, label %731

731:                                              ; preds = %728
  call void @glEnableClientState(i32 noundef 32884) #20
  %732 = load ptr, ptr %355, align 8, !tbaa !347
  call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 0, ptr noundef %732) #20
  br label %734

733:                                              ; preds = %728
  call void @glDisableClientState(i32 noundef 32884) #20
  br label %734

734:                                              ; preds = %733, %731
  br i1 %120, label %735, label %746

735:                                              ; preds = %734
  br i1 %82, label %745, label %736

736:                                              ; preds = %735
  call void @UI_ThemeColor(i32 noundef 29) #20
  %737 = getelementptr inbounds %struct.ParticleSettings, ptr %26, i64 0, i32 18
  %738 = load i16, ptr %737, align 2, !tbaa !332
  %739 = icmp eq i16 %738, 0
  %740 = sext i16 %738 to i32
  %741 = add nsw i32 %740, 2
  %742 = sitofp i32 %741 to float
  %743 = select i1 %739, float 4.000000e+00, float %742
  call void @glPointSize(float noundef %743) #20
  call void @glLineWidth(float noundef 3.000000e+00) #20
  %744 = zext i8 %5 to i32
  call fastcc void @draw_particle_arrays(i32 noundef %213, i32 noundef %630, i32 noundef %744, i32 noundef 1) #21
  br label %745

745:                                              ; preds = %736, %735
  call void @glColor3fv(ptr noundef nonnull %15) #20
  br label %746

746:                                              ; preds = %745, %734
  %747 = getelementptr inbounds %struct.ParticleSettings, ptr %26, i64 0, i32 18
  %748 = load i16, ptr %747, align 2, !tbaa !332
  %749 = icmp eq i16 %748, 0
  %750 = sitofp i16 %748 to float
  %751 = select i1 %749, float 2.000000e+00, float %750
  call void @glPointSize(float noundef %751) #20
  call void @glLineWidth(float noundef 1.000000e+00) #20
  %752 = getelementptr inbounds %struct.ParticleDrawData, ptr %355, i64 0, i32 2
  %753 = load ptr, ptr %752, align 8, !tbaa !348
  %754 = icmp ne ptr %753, null
  %755 = zext i8 %5 to i32
  %756 = icmp ugt i8 %5, 2
  %757 = and i1 %756, %754
  br i1 %757, label %758, label %760

758:                                              ; preds = %746
  call void @glEnableClientState(i32 noundef 32885) #20
  %759 = load ptr, ptr %752, align 8, !tbaa !348
  call void @glNormalPointer(i32 noundef 5126, i32 noundef 0, ptr noundef %759) #20
  call void @glEnable(i32 noundef 2896) #20
  br label %761

760:                                              ; preds = %746
  call void @glDisableClientState(i32 noundef 32885) #20
  call void @glDisable(i32 noundef 2896) #20
  br label %761

761:                                              ; preds = %760, %758
  br i1 %120, label %762, label %768

762:                                              ; preds = %761
  %763 = getelementptr inbounds %struct.ParticleDrawData, ptr %355, i64 0, i32 4
  %764 = load ptr, ptr %763, align 8, !tbaa !343
  %765 = icmp eq ptr %764, null
  br i1 %765, label %768, label %766

766:                                              ; preds = %762
  call void @glEnableClientState(i32 noundef 32886) #20
  %767 = load ptr, ptr %763, align 8, !tbaa !343
  call void @glColorPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 0, ptr noundef %767) #20
  br label %768

768:                                              ; preds = %762, %766, %761
  call fastcc void @draw_particle_arrays(i32 noundef %213, i32 noundef %630, i32 noundef %755, i32 noundef 0) #21
  %769 = getelementptr inbounds %struct.ParticleDrawData, ptr %355, i64 0, i32 10
  %770 = load i32, ptr %769, align 4, !tbaa !356
  %771 = or i32 %770, 1
  store i32 %771, ptr %769, align 4, !tbaa !356
  %772 = getelementptr inbounds %struct.ParticleDrawData, ptr %355, i64 0, i32 11
  store i32 %630, ptr %772, align 8, !tbaa !357
  br label %774

773:                                              ; preds = %718, %714, %705, %709
  br i1 %354, label %774, label %784

774:                                              ; preds = %768, %727, %727, %773
  %775 = getelementptr inbounds %struct.ParticleDrawData, ptr %355, i64 0, i32 6
  %776 = load ptr, ptr %775, align 8, !tbaa !349
  %777 = icmp eq ptr %776, null
  br i1 %777, label %784, label %778

778:                                              ; preds = %774
  br i1 %120, label %779, label %781

779:                                              ; preds = %778
  call void @glDisableClientState(i32 noundef 32886) #20
  call void @cpack(i32 noundef 12632256) #20
  %780 = load ptr, ptr %775, align 8, !tbaa !349
  br label %781

781:                                              ; preds = %779, %778
  %782 = phi ptr [ %780, %779 ], [ %776, %778 ]
  call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 0, ptr noundef %782) #20
  %783 = shl nsw i32 %631, 1
  call void @glDrawArrays(i32 noundef 1, i32 noundef 0, i32 noundef %783) #20
  br label %784

784:                                              ; preds = %726, %781, %774, %773
  %785 = load i32, ptr %16, align 4, !tbaa !51
  call void @glPolygonMode(i32 noundef 1028, i32 noundef %785) #20
  %786 = getelementptr inbounds [2 x i32], ptr %16, i64 0, i64 1
  %787 = load i32, ptr %786, align 4, !tbaa !51
  call void @glPolygonMode(i32 noundef 1029, i32 noundef %787) #20
  call void @glDisable(i32 noundef 2896) #20
  call void @glDisableClientState(i32 noundef 32886) #20
  call void @glDisableClientState(i32 noundef 32884) #20
  call void @glDisableClientState(i32 noundef 32885) #20
  %788 = load i32, ptr %83, align 4, !tbaa !310
  %789 = and i32 %788, -65
  store i32 %789, ptr %83, align 4, !tbaa !310
  %790 = icmp eq i32 %213, 9
  br i1 %790, label %791, label %795

791:                                              ; preds = %784
  call void @psys_free_pdd(ptr noundef nonnull %4) #20
  %792 = getelementptr inbounds %struct.ParticleDrawData, ptr %355, i64 0, i32 10
  %793 = load i32, ptr %792, align 4, !tbaa !356
  %794 = and i32 %793, -2
  store i32 %794, ptr %792, align 4, !tbaa !356
  br label %795

795:                                              ; preds = %791, %784
  %796 = load ptr, ptr %358, align 8, !tbaa !355
  %797 = icmp eq ptr %796, null
  br i1 %797, label %799, label %798

798:                                              ; preds = %795
  call void @end_latt_deform(ptr noundef nonnull %796) #20
  store ptr null, ptr %358, align 8, !tbaa !355
  br label %799

799:                                              ; preds = %798, %795
  br i1 %354, label %800, label %802

800:                                              ; preds = %799
  %801 = getelementptr inbounds %struct.ParticleDrawData, ptr %355, i64 0, i32 8
  store ptr null, ptr %801, align 8, !tbaa !354
  br label %802

802:                                              ; preds = %800, %799
  %803 = load i32, ptr %124, align 8, !tbaa !75
  %804 = and i32 %803, 512
  %805 = icmp eq i32 %804, 0
  br i1 %805, label %812, label %806

806:                                              ; preds = %802
  %807 = load i16, ptr %32, align 4, !tbaa !84
  %808 = and i16 %807, 4096
  %809 = icmp eq i16 %808, 0
  br i1 %809, label %812, label %810

810:                                              ; preds = %806
  %811 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 1
  call void @glLoadMatrixf(ptr noundef nonnull %811) #20
  br label %812

812:                                              ; preds = %802, %806, %810, %71, %54, %43, %7, %35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #22
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_ptcache_edit(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = tail call ptr @PE_settings(ptr noundef %0) #20
  %7 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 11
  %8 = load i32, ptr %7, align 8, !tbaa !383
  %9 = load i16, ptr %6, align 8, !tbaa !314
  %10 = and i16 %9, 128
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ParticleEditSettings, ptr %6, i64 0, i32 11
  %14 = load i32, ptr %13, align 4, !tbaa !384
  br label %15

15:                                               ; preds = %3, %12
  %16 = phi i32 [ %14, %12 ], [ 0, %3 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  %17 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !311
  %19 = icmp eq ptr %18, null
  br i1 %19, label %321, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !115
  %23 = sitofp i32 %22 to float
  tail call void @PE_hide_keys_time(ptr noundef %0, ptr noundef nonnull %2, float noundef %23) #20
  %24 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 28
  %25 = load i16, ptr %24, align 8, !tbaa !83
  %26 = and i16 %25, 4096
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  tail call void @glDisable(i32 noundef 2929) #20
  br label %29

29:                                               ; preds = %28, %20
  call void @UI_GetThemeColor3fv(i32 noundef 34, ptr noundef nonnull %4) #20
  call void @UI_GetThemeColor3fv(i32 noundef 33, ptr noundef nonnull %5) #20
  %30 = load ptr, ptr %17, align 8, !tbaa !311
  %31 = load ptr, ptr %30, align 8, !tbaa !53
  %32 = getelementptr inbounds %struct.ParticleCacheKey, ptr %31, i64 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !378
  call void @glEnable(i32 noundef 3042) #20
  %34 = load ptr, ptr @MEM_callocN, align 8, !tbaa !53
  %35 = shl i32 %33, 2
  %36 = add i32 %35, 4
  %37 = sext i32 %36 to i64
  %38 = shl nsw i64 %37, 2
  %39 = call ptr %34(i64 noundef %38, ptr noundef nonnull @.str.17) #20
  call void @glEnableClientState(i32 noundef 32884) #20
  call void @glEnableClientState(i32 noundef 32886) #20
  call void @glColorMaterial(i32 noundef 1032, i32 noundef 4609) #20
  call void @glEnable(i32 noundef 2903) #20
  call void @glShadeModel(i32 noundef 7425) #20
  %40 = getelementptr inbounds %struct.ParticleEditSettings, ptr %6, i64 0, i32 3
  %41 = load i16, ptr %40, align 2, !tbaa !385
  %42 = icmp eq i16 %41, 6
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  call void @glLineWidth(float noundef 2.000000e+00) #20
  call void @glDisable(i32 noundef 2896) #20
  br label %44

44:                                               ; preds = %43, %29
  %45 = load ptr, ptr %17, align 8, !tbaa !311
  %46 = getelementptr inbounds %struct.PTCacheEdit, ptr %2, i64 0, i32 2
  %47 = icmp sgt i32 %8, 0
  br i1 %47, label %48, label %106

48:                                               ; preds = %44
  %49 = load ptr, ptr %46, align 8, !tbaa !386
  %50 = icmp slt i32 %33, 0
  %51 = icmp eq i32 %16, 0
  %52 = getelementptr inbounds %struct.ParticleEditSettings, ptr %6, i64 0, i32 11
  %53 = zext nneg i32 %8 to i64
  br label %54

54:                                               ; preds = %48, %99
  %55 = phi i64 [ 0, %48 ], [ %103, %99 ]
  %56 = phi ptr [ %49, %48 ], [ %104, %99 ]
  %57 = getelementptr inbounds ptr, ptr %45, i64 %55
  %58 = load ptr, ptr %57, align 8, !tbaa !53
  call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 60, ptr noundef %58) #20
  %59 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %56, i64 0, i32 2
  %60 = load i16, ptr %59, align 4, !tbaa !387
  %61 = and i16 %60, 8
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %54
  br i1 %50, label %73, label %64

64:                                               ; preds = %63
  %65 = getelementptr inbounds %struct.ParticleCacheKey, ptr %58, i64 0, i32 3
  br label %66

66:                                               ; preds = %64, %66
  %67 = phi ptr [ %39, %64 ], [ %71, %66 ]
  %68 = phi i32 [ 0, %64 ], [ %70, %66 ]
  call fastcc void @copy_v3_v3(ptr noundef %67, ptr noundef nonnull %65) #21
  %69 = getelementptr inbounds float, ptr %67, i64 3
  store float 2.500000e-01, ptr %69, align 4, !tbaa !45
  %70 = add nuw i32 %68, 1
  %71 = getelementptr inbounds float, ptr %67, i64 4
  %72 = icmp eq i32 %68, %33
  br i1 %72, label %73, label %66, !llvm.loop !389

73:                                               ; preds = %66, %63
  call void @glColorPointer(i32 noundef 4, i32 noundef 5126, i32 noundef 16, ptr noundef %39) #20
  br label %99

74:                                               ; preds = %54
  br i1 %51, label %97, label %75

75:                                               ; preds = %74
  br i1 %50, label %96, label %76

76:                                               ; preds = %75, %76
  %77 = phi ptr [ %94, %76 ], [ %39, %75 ]
  %78 = phi ptr [ %93, %76 ], [ %58, %75 ]
  %79 = phi i32 [ %92, %76 ], [ 0, %75 ]
  %80 = getelementptr inbounds %struct.ParticleCacheKey, ptr %78, i64 0, i32 3
  call fastcc void @copy_v3_v3(ptr noundef %77, ptr noundef nonnull %80) #21
  %81 = load i32, ptr %21, align 8, !tbaa !115
  %82 = sitofp i32 %81 to float
  %83 = getelementptr inbounds %struct.ParticleCacheKey, ptr %78, i64 0, i32 4
  %84 = load float, ptr %83, align 4, !tbaa !390
  %85 = fsub float %82, %84
  %86 = call float @llvm.fabs.f32(float %85)
  %87 = load i32, ptr %52, align 4, !tbaa !384
  %88 = sitofp i32 %87 to float
  %89 = fdiv float %86, %88
  %90 = fsub float 1.000000e+00, %89
  %91 = getelementptr inbounds float, ptr %77, i64 3
  store float %90, ptr %91, align 4, !tbaa !45
  %92 = add nuw i32 %79, 1
  %93 = getelementptr inbounds %struct.ParticleCacheKey, ptr %78, i64 1
  %94 = getelementptr inbounds float, ptr %77, i64 4
  %95 = icmp eq i32 %79, %33
  br i1 %95, label %96, label %76, !llvm.loop !391

96:                                               ; preds = %76, %75
  call void @glColorPointer(i32 noundef 4, i32 noundef 5126, i32 noundef 16, ptr noundef %39) #20
  br label %99

97:                                               ; preds = %74
  %98 = getelementptr inbounds %struct.ParticleCacheKey, ptr %58, i64 0, i32 3
  call void @glColorPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 60, ptr noundef nonnull %98) #20
  br label %99

99:                                               ; preds = %96, %97, %73
  %100 = getelementptr inbounds %struct.ParticleCacheKey, ptr %58, i64 0, i32 5
  %101 = load i32, ptr %100, align 4, !tbaa !378
  %102 = add nsw i32 %101, 1
  call void @glDrawArrays(i32 noundef 3, i32 noundef 0, i32 noundef %102) #20
  %103 = add nuw nsw i64 %55, 1
  %104 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %56, i64 1
  %105 = icmp eq i64 %103, %53
  br i1 %105, label %106, label %54, !llvm.loop !392

106:                                              ; preds = %99, %44
  %107 = icmp eq ptr %39, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %106
  %109 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  call void %109(ptr noundef nonnull %39) #20
  br label %110

110:                                              ; preds = %108, %106
  %111 = getelementptr inbounds %struct.ParticleEditSettings, ptr %6, i64 0, i32 8
  %112 = load i32, ptr %111, align 8, !tbaa !393
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %315, label %114

114:                                              ; preds = %110
  %115 = call float @UI_GetThemeValuef(i32 noundef 36) #20
  call void @glPointSize(float noundef %115) #20
  %116 = load i32, ptr %111, align 8, !tbaa !393
  switch i32 %116, label %315 [
    i32 2, label %117
    i32 4, label %278
  ]

117:                                              ; preds = %114
  %118 = load ptr, ptr %46, align 8, !tbaa !386
  br i1 %47, label %119, label %315

119:                                              ; preds = %117, %131
  %120 = phi i32 [ %132, %131 ], [ 0, %117 ]
  %121 = phi ptr [ %134, %131 ], [ %118, %117 ]
  %122 = phi i32 [ %133, %131 ], [ 0, %117 ]
  %123 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %121, i64 0, i32 2
  %124 = load i16, ptr %123, align 4, !tbaa !387
  %125 = and i16 %124, 8
  %126 = icmp eq i16 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %119
  %128 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %121, i64 0, i32 1
  %129 = load i32, ptr %128, align 8, !tbaa !394
  %130 = add nsw i32 %129, %120
  br label %131

131:                                              ; preds = %119, %127
  %132 = phi i32 [ %120, %119 ], [ %130, %127 ]
  %133 = add nuw nsw i32 %122, 1
  %134 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %121, i64 1
  %135 = icmp eq i32 %133, %8
  br i1 %135, label %136, label %119, !llvm.loop !395

136:                                              ; preds = %131
  %137 = icmp eq i32 %132, 0
  br i1 %137, label %161, label %138

138:                                              ; preds = %136
  %139 = icmp eq ptr %118, null
  br i1 %139, label %152, label %140

140:                                              ; preds = %138
  %141 = load ptr, ptr %118, align 8, !tbaa !396
  %142 = getelementptr inbounds %struct.PTCacheEditKey, ptr %141, i64 0, i32 7
  %143 = load i16, ptr %142, align 4, !tbaa !397
  %144 = and i16 %143, 8
  %145 = icmp eq i16 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %140
  %147 = load ptr, ptr @MEM_callocN, align 8, !tbaa !53
  %148 = mul nsw i32 %132, 3
  %149 = sext i32 %148 to i64
  %150 = shl nsw i64 %149, 2
  %151 = call ptr %147(i64 noundef %150, ptr noundef nonnull @.str.18) #20
  br label %152

152:                                              ; preds = %146, %140, %138
  %153 = phi ptr [ null, %140 ], [ %151, %146 ], [ null, %138 ]
  %154 = load ptr, ptr @MEM_callocN, align 8, !tbaa !53
  %155 = icmp eq i32 %16, 0
  %156 = select i1 %155, i32 3, i32 4
  %157 = mul nsw i32 %132, %156
  %158 = sext i32 %157 to i64
  %159 = shl nsw i64 %158, 2
  %160 = call ptr %154(i64 noundef %159, ptr noundef nonnull @.str.19) #20
  br label %161

161:                                              ; preds = %152, %136
  %162 = phi ptr [ %153, %152 ], [ null, %136 ]
  %163 = phi ptr [ %160, %152 ], [ null, %136 ]
  br i1 %47, label %164, label %270

164:                                              ; preds = %161
  %165 = load ptr, ptr %46, align 8, !tbaa !386
  %166 = icmp eq i32 %16, 0
  %167 = getelementptr inbounds %struct.ParticleEditSettings, ptr %6, i64 0, i32 11
  br label %168

168:                                              ; preds = %164, %219
  %169 = phi ptr [ %163, %164 ], [ %221, %219 ]
  %170 = phi ptr [ %162, %164 ], [ %220, %219 ]
  %171 = phi ptr [ %165, %164 ], [ %223, %219 ]
  %172 = phi i32 [ 0, %164 ], [ %222, %219 ]
  %173 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %171, i64 0, i32 2
  %174 = load i16, ptr %173, align 4, !tbaa !387
  %175 = and i16 %174, 8
  %176 = icmp eq i16 %175, 0
  br i1 %176, label %177, label %219

177:                                              ; preds = %168
  %178 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %171, i64 0, i32 1
  %179 = load i32, ptr %178, align 8, !tbaa !394
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %219

181:                                              ; preds = %177
  %182 = load ptr, ptr %171, align 8, !tbaa !396
  br label %183

183:                                              ; preds = %181, %212
  %184 = phi ptr [ %214, %212 ], [ %169, %181 ]
  %185 = phi ptr [ %193, %212 ], [ %170, %181 ]
  %186 = phi i32 [ %215, %212 ], [ 0, %181 ]
  %187 = phi ptr [ %216, %212 ], [ %182, %181 ]
  %188 = icmp eq ptr %185, null
  br i1 %188, label %192, label %189

189:                                              ; preds = %183
  %190 = load ptr, ptr %187, align 8, !tbaa !399
  call fastcc void @copy_v3_v3(ptr noundef nonnull %185, ptr noundef %190) #21
  %191 = getelementptr inbounds float, ptr %185, i64 3
  br label %192

192:                                              ; preds = %189, %183
  %193 = phi ptr [ %191, %189 ], [ null, %183 ]
  %194 = getelementptr inbounds %struct.PTCacheEditKey, ptr %187, i64 0, i32 7
  %195 = load i16, ptr %194, align 4, !tbaa !397
  %196 = and i16 %195, 1
  %197 = icmp eq i16 %196, 0
  %198 = select i1 %197, ptr %5, ptr %4
  call fastcc void @copy_v3_v3(ptr noundef %184, ptr noundef nonnull %198) #21
  br i1 %166, label %212, label %199

199:                                              ; preds = %192
  %200 = load i32, ptr %21, align 8, !tbaa !115
  %201 = sitofp i32 %200 to float
  %202 = getelementptr inbounds %struct.PTCacheEditKey, ptr %187, i64 0, i32 3
  %203 = load ptr, ptr %202, align 8, !tbaa !400
  %204 = load float, ptr %203, align 4, !tbaa !45
  %205 = fsub float %201, %204
  %206 = call float @llvm.fabs.f32(float %205)
  %207 = load i32, ptr %167, align 4, !tbaa !384
  %208 = sitofp i32 %207 to float
  %209 = fdiv float %206, %208
  %210 = fsub float 1.000000e+00, %209
  %211 = getelementptr inbounds float, ptr %184, i64 3
  store float %210, ptr %211, align 4, !tbaa !45
  br label %212

212:                                              ; preds = %199, %192
  %213 = phi i64 [ 4, %199 ], [ 3, %192 ]
  %214 = getelementptr inbounds float, ptr %184, i64 %213
  %215 = add nuw nsw i32 %186, 1
  %216 = getelementptr inbounds %struct.PTCacheEditKey, ptr %187, i64 1
  %217 = load i32, ptr %178, align 8, !tbaa !394
  %218 = icmp slt i32 %215, %217
  br i1 %218, label %183, label %219, !llvm.loop !401

219:                                              ; preds = %212, %177, %168
  %220 = phi ptr [ %170, %168 ], [ %170, %177 ], [ %193, %212 ]
  %221 = phi ptr [ %169, %168 ], [ %169, %177 ], [ %214, %212 ]
  %222 = add nuw nsw i32 %172, 1
  %223 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %171, i64 1
  %224 = icmp eq i32 %222, %8
  br i1 %224, label %225, label %168, !llvm.loop !402

225:                                              ; preds = %219
  br i1 %47, label %226, label %270

226:                                              ; preds = %225
  %227 = load ptr, ptr %46, align 8, !tbaa !386
  %228 = icmp eq i32 %16, 0
  %229 = select i1 %228, i32 3, i32 4
  %230 = shl nuw nsw i32 %229, 2
  br label %231

231:                                              ; preds = %226, %264
  %232 = phi ptr [ %163, %226 ], [ %266, %264 ]
  %233 = phi ptr [ %162, %226 ], [ %265, %264 ]
  %234 = phi ptr [ %227, %226 ], [ %268, %264 ]
  %235 = phi i32 [ 0, %226 ], [ %267, %264 ]
  %236 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %234, i64 0, i32 2
  %237 = load i16, ptr %236, align 4, !tbaa !387
  %238 = and i16 %237, 8
  %239 = icmp eq i16 %238, 0
  br i1 %239, label %240, label %264

240:                                              ; preds = %231
  %241 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %234, i64 0, i32 1
  %242 = load i32, ptr %241, align 8, !tbaa !394
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %264, label %244

244:                                              ; preds = %240
  %245 = load ptr, ptr %234, align 8, !tbaa !396
  %246 = getelementptr inbounds %struct.PTCacheEditKey, ptr %245, i64 0, i32 7
  %247 = load i16, ptr %246, align 4, !tbaa !397
  %248 = and i16 %247, 8
  %249 = icmp eq i16 %248, 0
  br i1 %249, label %252, label %250

250:                                              ; preds = %244
  %251 = getelementptr inbounds %struct.PTCacheEditKey, ptr %245, i64 0, i32 4
  call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 56, ptr noundef nonnull %251) #20
  br label %253

252:                                              ; preds = %244
  call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 12, ptr noundef %233) #20
  br label %253

253:                                              ; preds = %252, %250
  call void @glColorPointer(i32 noundef %229, i32 noundef 5126, i32 noundef %230, ptr noundef %232) #20
  %254 = load i32, ptr %241, align 8, !tbaa !394
  call void @glDrawArrays(i32 noundef 0, i32 noundef 0, i32 noundef %254) #20
  %255 = icmp eq ptr %233, null
  %256 = load i32, ptr %241, align 8, !tbaa !394
  %257 = mul nsw i32 %256, 3
  %258 = sext i32 %257 to i64
  %259 = select i1 %255, i64 0, i64 %258
  %260 = getelementptr inbounds float, ptr %233, i64 %259
  %261 = mul nsw i32 %256, %229
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds float, ptr %232, i64 %262
  br label %264

264:                                              ; preds = %231, %240, %253
  %265 = phi ptr [ %233, %231 ], [ %233, %240 ], [ %260, %253 ]
  %266 = phi ptr [ %232, %231 ], [ %232, %240 ], [ %263, %253 ]
  %267 = add nuw nsw i32 %235, 1
  %268 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %234, i64 1
  %269 = icmp eq i32 %267, %8
  br i1 %269, label %270, label %231, !llvm.loop !403

270:                                              ; preds = %264, %161, %225
  %271 = icmp eq ptr %162, null
  br i1 %271, label %274, label %272

272:                                              ; preds = %270
  %273 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  call void %273(ptr noundef nonnull %162) #20
  br label %274

274:                                              ; preds = %272, %270
  %275 = icmp eq ptr %163, null
  br i1 %275, label %315, label %276

276:                                              ; preds = %274
  %277 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  call void %277(ptr noundef nonnull %163) #20
  br label %315

278:                                              ; preds = %114
  br i1 %47, label %279, label %315

279:                                              ; preds = %278
  %280 = load ptr, ptr %46, align 8, !tbaa !386
  br label %281

281:                                              ; preds = %279, %311
  %282 = phi ptr [ %313, %311 ], [ %280, %279 ]
  %283 = phi i32 [ %312, %311 ], [ 0, %279 ]
  %284 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %282, i64 0, i32 2
  %285 = load i16, ptr %284, align 4, !tbaa !387
  %286 = and i16 %285, 8
  %287 = icmp eq i16 %286, 0
  br i1 %287, label %288, label %311

288:                                              ; preds = %281
  %289 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %282, i64 0, i32 1
  %290 = load i32, ptr %289, align 8, !tbaa !394
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %311, label %292

292:                                              ; preds = %288
  %293 = load ptr, ptr %282, align 8, !tbaa !396
  %294 = sext i32 %290 to i64
  %295 = getelementptr inbounds %struct.PTCacheEditKey, ptr %293, i64 %294
  %296 = getelementptr %struct.PTCacheEditKey, ptr %295, i64 -1, i32 7
  %297 = load i16, ptr %296, align 4, !tbaa !397
  %298 = and i16 %297, 1
  %299 = icmp eq i16 %298, 0
  %300 = select i1 %299, ptr %5, ptr %4
  call void @glColor3fv(ptr noundef nonnull %300) #20
  call void @glBegin(i32 noundef 0) #20
  %301 = load i16, ptr %296, align 4, !tbaa !397
  %302 = and i16 %301, 8
  %303 = icmp eq i16 %302, 0
  br i1 %303, label %306, label %304

304:                                              ; preds = %292
  %305 = getelementptr %struct.PTCacheEditKey, ptr %295, i64 -1, i32 4
  br label %309

306:                                              ; preds = %292
  %307 = getelementptr inbounds %struct.PTCacheEditKey, ptr %295, i64 -1
  %308 = load ptr, ptr %307, align 8, !tbaa !399
  br label %309

309:                                              ; preds = %306, %304
  %310 = phi ptr [ %305, %304 ], [ %308, %306 ]
  call void @glVertex3fv(ptr noundef %310) #20
  call void @glEnd() #20
  br label %311

311:                                              ; preds = %281, %288, %309
  %312 = add nuw nsw i32 %283, 1
  %313 = getelementptr inbounds %struct.PTCacheEditPoint, ptr %282, i64 1
  %314 = icmp eq i32 %312, %8
  br i1 %314, label %315, label %281, !llvm.loop !404

315:                                              ; preds = %311, %117, %278, %114, %274, %276, %110
  call void @glDisable(i32 noundef 3042) #20
  call void @glDisable(i32 noundef 2896) #20
  call void @glDisable(i32 noundef 2903) #20
  call void @glDisableClientState(i32 noundef 32886) #20
  call void @glDisableClientState(i32 noundef 32885) #20
  call void @glDisableClientState(i32 noundef 32884) #20
  call void @glShadeModel(i32 noundef 7424) #20
  %316 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 47
  %317 = load i8, ptr %316, align 8, !tbaa !62
  %318 = icmp eq i8 %317, 0
  br i1 %318, label %320, label %319

319:                                              ; preds = %315
  call void @glEnable(i32 noundef 2929) #20
  br label %320

320:                                              ; preds = %319, %315
  call void @glLineWidth(float noundef 1.000000e+00) #20
  call void @glPointSize(float noundef 1.000000e+00) #20
  br label %321

321:                                              ; preds = %15, %320
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  ret void
}

; Function Attrs: optsize
declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @modifier_isEnabled(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_boundbox_init_from_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_box(ptr noundef %0) unnamed_addr #0 {
  tail call void @glBegin(i32 noundef 3) #20
  tail call void @glVertex3fv(ptr noundef %0) #20
  %2 = getelementptr inbounds [3 x float], ptr %0, i64 1
  tail call void @glVertex3fv(ptr noundef nonnull %2) #20
  %3 = getelementptr inbounds [3 x float], ptr %0, i64 2
  tail call void @glVertex3fv(ptr noundef nonnull %3) #20
  %4 = getelementptr inbounds [3 x float], ptr %0, i64 3
  tail call void @glVertex3fv(ptr noundef nonnull %4) #20
  tail call void @glVertex3fv(ptr noundef %0) #20
  %5 = getelementptr inbounds [3 x float], ptr %0, i64 4
  tail call void @glVertex3fv(ptr noundef nonnull %5) #20
  %6 = getelementptr inbounds [3 x float], ptr %0, i64 5
  tail call void @glVertex3fv(ptr noundef nonnull %6) #20
  %7 = getelementptr inbounds [3 x float], ptr %0, i64 6
  tail call void @glVertex3fv(ptr noundef nonnull %7) #20
  %8 = getelementptr inbounds [3 x float], ptr %0, i64 7
  tail call void @glVertex3fv(ptr noundef nonnull %8) #20
  tail call void @glVertex3fv(ptr noundef nonnull %5) #20
  tail call void @glEnd() #20
  tail call void @glBegin(i32 noundef 1) #20
  tail call void @glVertex3fv(ptr noundef nonnull %2) #20
  tail call void @glVertex3fv(ptr noundef nonnull %6) #20
  tail call void @glVertex3fv(ptr noundef nonnull %3) #20
  tail call void @glVertex3fv(ptr noundef nonnull %7) #20
  tail call void @glVertex3fv(ptr noundef nonnull %4) #20
  tail call void @glVertex3fv(ptr noundef nonnull %8) #20
  tail call void @glEnd() #20
  ret void
}

; Function Attrs: optsize
declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #21
  ret float %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: optsize
declare void @GPU_create_smoke(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @draw_smoke_volume(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GPU_free_smoke(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_rigid_body_pivot(ptr noundef %0, i16 noundef signext %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #22
  %7 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %0, i64 0, i32 6
  call void @eul_to_mat4(ptr noundef nonnull %4, ptr noundef nonnull %7) #20
  call void @glLineWidth(float noundef 4.000000e+00) #20
  call void @setlinestyle(i32 noundef 2) #20
  %8 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %0, i64 0, i32 3
  %9 = and i16 %1, 2
  %10 = icmp eq i16 %9, 0
  br label %11

11:                                               ; preds = %3, %17
  %12 = phi i64 [ 0, %3 ], [ %18, %17 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #22
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %8) #21
  %13 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %12
  store float 1.000000e+00, ptr %13, align 4, !tbaa !45
  call void @glBegin(i32 noundef 1) #20
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  call fastcc void @add_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %5) #21
  call void @glVertex3fv(ptr noundef nonnull %8) #20
  call void @glVertex3fv(ptr noundef nonnull %6) #20
  call void @glEnd() #20
  br i1 %10, label %14, label %17

14:                                               ; preds = %11
  %15 = shl i64 %12, 2
  %16 = call ptr @llvm.load.relative.i64(ptr @reltable.draw_rigid_body_pivot, i64 %15)
  call void @view3d_cached_text_draw_add(ptr noundef nonnull %6, ptr noundef %16, i64 noundef 2, i16 noundef signext 0, i16 noundef signext 4, ptr noundef %2) #21
  br label %17

17:                                               ; preds = %14, %11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  %18 = add nuw nsw i64 %12, 1
  %19 = icmp eq i64 %18, 3
  br i1 %19, label %20, label %11, !llvm.loop !405

20:                                               ; preds = %17
  call void @glLineWidth(float noundef 1.000000e+00) #20
  call void @setlinestyle(i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #22
  ret void
}

; Function Attrs: optsize
declare void @setlinestyle(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_rigidbody_shape(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [3 x float], align 8
  %3 = alloca [8 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %5 = load i16, ptr %4, align 8, !tbaa !79
  %6 = icmp eq i16 %5, 1
  br i1 %6, label %7, label %48

7:                                                ; preds = %1
  %8 = tail call ptr @BKE_mesh_boundbox_get(ptr noundef nonnull %0) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %48, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 128
  %12 = load ptr, ptr %11, align 8, !tbaa !134
  %13 = getelementptr inbounds %struct.RigidBodyOb, ptr %12, i64 0, i32 3
  %14 = load i16, ptr %13, align 2, !tbaa !406
  switch i16 %14, label %48 [
    i16 0, label %15
    i16 1, label %44
    i16 4, label %45
    i16 3, label %46
    i16 2, label %47
  ]

15:                                               ; preds = %10
  call void @BKE_boundbox_calc_size_aabb(ptr noundef nonnull %8, ptr noundef nonnull %2) #20
  %16 = getelementptr inbounds [8 x [3 x float]], ptr %3, i64 0, i64 3
  %17 = getelementptr inbounds [8 x [3 x float]], ptr %3, i64 0, i64 2
  %18 = getelementptr inbounds [8 x [3 x float]], ptr %3, i64 0, i64 1
  %19 = getelementptr inbounds [8 x [3 x float]], ptr %3, i64 0, i64 7
  %20 = getelementptr inbounds [8 x [3 x float]], ptr %3, i64 0, i64 6
  %21 = getelementptr inbounds [8 x [3 x float]], ptr %3, i64 0, i64 5
  %22 = getelementptr inbounds [8 x [3 x float]], ptr %3, i64 0, i64 4
  %23 = getelementptr inbounds [8 x [3 x float]], ptr %3, i64 0, i64 5, i64 1
  %24 = getelementptr inbounds [8 x [3 x float]], ptr %3, i64 0, i64 4, i64 1
  %25 = load <2 x float>, ptr %2, align 8, !tbaa !45
  %26 = fneg <2 x float> %25
  %27 = extractelement <2 x float> %26, i64 0
  store float %27, ptr %16, align 4, !tbaa !45
  store float %27, ptr %17, align 8, !tbaa !45
  %28 = extractelement <2 x float> %25, i64 0
  store float %28, ptr %21, align 4, !tbaa !45
  store float %28, ptr %22, align 16, !tbaa !45
  %29 = extractelement <2 x float> %26, i64 1
  store float %29, ptr %23, align 16, !tbaa !45
  store float %29, ptr %24, align 4, !tbaa !45
  store <2 x float> %26, ptr %18, align 4, !tbaa !45
  store <2 x float> %26, ptr %3, align 16, !tbaa !45
  store <2 x float> %25, ptr %19, align 4, !tbaa !45
  store <2 x float> %25, ptr %20, align 8, !tbaa !45
  %30 = getelementptr inbounds [8 x [3 x float]], ptr %3, i64 0, i64 3, i64 1
  %31 = extractelement <2 x float> %25, i64 1
  store float %31, ptr %30, align 8, !tbaa !45
  %32 = getelementptr inbounds [8 x [3 x float]], ptr %3, i64 0, i64 2, i64 1
  store float %31, ptr %32, align 4, !tbaa !45
  %33 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  %34 = load float, ptr %33, align 8, !tbaa !45
  %35 = fneg float %34
  %36 = getelementptr inbounds [8 x [3 x float]], ptr %3, i64 0, i64 7, i64 2
  store float %35, ptr %36, align 4, !tbaa !45
  %37 = getelementptr inbounds [8 x [3 x float]], ptr %3, i64 0, i64 4, i64 2
  store float %35, ptr %37, align 8, !tbaa !45
  %38 = getelementptr inbounds [8 x [3 x float]], ptr %3, i64 0, i64 3, i64 2
  store float %35, ptr %38, align 4, !tbaa !45
  %39 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  store float %35, ptr %39, align 8, !tbaa !45
  %40 = getelementptr inbounds [8 x [3 x float]], ptr %3, i64 0, i64 6, i64 2
  store float %34, ptr %40, align 16, !tbaa !45
  %41 = getelementptr inbounds [8 x [3 x float]], ptr %3, i64 0, i64 5, i64 2
  store float %34, ptr %41, align 4, !tbaa !45
  %42 = getelementptr inbounds [8 x [3 x float]], ptr %3, i64 0, i64 2, i64 2
  store float %34, ptr %42, align 16, !tbaa !45
  %43 = getelementptr inbounds [8 x [3 x float]], ptr %3, i64 0, i64 1, i64 2
  store float %34, ptr %43, align 4, !tbaa !45
  call fastcc void @draw_box(ptr noundef nonnull %3) #21
  br label %48

44:                                               ; preds = %10
  tail call fastcc void @draw_bb_quadric(ptr noundef nonnull %8, i8 noundef zeroext 1, i8 noundef zeroext 1) #21
  br label %48

45:                                               ; preds = %10
  tail call fastcc void @draw_bb_quadric(ptr noundef nonnull %8, i8 noundef zeroext 3, i8 noundef zeroext 1) #21
  br label %48

46:                                               ; preds = %10
  tail call fastcc void @draw_bb_quadric(ptr noundef nonnull %8, i8 noundef zeroext 2, i8 noundef zeroext 1) #21
  br label %48

47:                                               ; preds = %10
  tail call fastcc void @draw_bb_quadric(ptr noundef nonnull %8, i8 noundef zeroext 7, i8 noundef zeroext 1) #21
  br label %48

48:                                               ; preds = %1, %15, %44, %45, %46, %47, %10, %7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawtexspace(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [8 x [3 x float]], align 16
  %3 = alloca [3 x float], align 8
  %4 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !79
  switch i16 %6, label %52 [
    i16 1, label %7
    i16 2, label %10
    i16 3, label %10
    i16 4, label %10
    i16 5, label %13
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !85
  call void @BKE_mesh_texspace_get(ptr noundef %9, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull %4) #20
  br label %18

10:                                               ; preds = %1, %1, %1
  %11 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !85
  call void @BKE_curve_texspace_get(ptr noundef %12, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull %4) #20
  br label %18

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !85
  %16 = getelementptr inbounds %struct.MetaBall, ptr %15, i64 0, i32 13
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %16) #21
  %17 = getelementptr inbounds %struct.MetaBall, ptr %15, i64 0, i32 12
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %17) #21
  br label %18

18:                                               ; preds = %10, %13, %7
  %19 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 3
  %20 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 2
  %21 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 1
  %22 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 7
  %23 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 6
  %24 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 5
  %25 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 4
  %26 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 5, i64 1
  %27 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 4, i64 1
  %28 = load <2 x float>, ptr %3, align 8, !tbaa !45
  %29 = load <2 x float>, ptr %4, align 8, !tbaa !45
  %30 = fsub <2 x float> %28, %29
  %31 = extractelement <2 x float> %30, i64 0
  store float %31, ptr %19, align 4, !tbaa !45
  store float %31, ptr %20, align 8, !tbaa !45
  %32 = extractelement <2 x float> %30, i64 1
  store float %32, ptr %26, align 16, !tbaa !45
  store float %32, ptr %27, align 4, !tbaa !45
  store <2 x float> %30, ptr %21, align 4, !tbaa !45
  store <2 x float> %30, ptr %2, align 16, !tbaa !45
  %33 = fadd <2 x float> %28, %29
  %34 = extractelement <2 x float> %33, i64 0
  store float %34, ptr %24, align 4, !tbaa !45
  store float %34, ptr %25, align 16, !tbaa !45
  store <2 x float> %33, ptr %22, align 4, !tbaa !45
  store <2 x float> %33, ptr %23, align 8, !tbaa !45
  %35 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 3, i64 1
  %36 = extractelement <2 x float> %33, i64 1
  store float %36, ptr %35, align 8, !tbaa !45
  %37 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 2, i64 1
  store float %36, ptr %37, align 4, !tbaa !45
  %38 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %39 = load float, ptr %38, align 8, !tbaa !45
  %40 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %41 = load float, ptr %40, align 8, !tbaa !45
  %42 = fsub float %39, %41
  %43 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 7, i64 2
  store float %42, ptr %43, align 4, !tbaa !45
  %44 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 4, i64 2
  store float %42, ptr %44, align 8, !tbaa !45
  %45 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 3, i64 2
  store float %42, ptr %45, align 4, !tbaa !45
  %46 = getelementptr inbounds [3 x float], ptr %2, i64 0, i64 2
  store float %42, ptr %46, align 8, !tbaa !45
  %47 = fadd float %39, %41
  %48 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 6, i64 2
  store float %47, ptr %48, align 16, !tbaa !45
  %49 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 5, i64 2
  store float %47, ptr %49, align 4, !tbaa !45
  %50 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 2, i64 2
  store float %47, ptr %50, align 16, !tbaa !45
  %51 = getelementptr inbounds [8 x [3 x float]], ptr %2, i64 0, i64 1, i64 2
  store float %47, ptr %51, align 4, !tbaa !45
  call void @setlinestyle(i32 noundef 2) #20
  call fastcc void @draw_box(ptr noundef nonnull %2) #21
  call void @setlinestyle(i32 noundef 0) #20
  br label %52

52:                                               ; preds = %1, %18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_wire_extra(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !79
  %7 = add i16 %6, -2
  %8 = icmp ult i16 %7, 4
  br i1 %8, label %9, label %41

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !66
  %12 = icmp eq ptr %11, %2
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @UI_ThemeColor(i32 noundef 27) #20
  br label %15

14:                                               ; preds = %9
  tail call void @glColor3ubv(ptr noundef %3) #20
  br label %15

15:                                               ; preds = %14, %13
  tail call void @ED_view3d_polygon_offset(ptr noundef %1, float noundef 1.000000e+00) #20
  tail call void @glDepthMask(i8 noundef zeroext 0) #20
  %16 = load i16, ptr %5, align 8, !tbaa !79
  switch i16 %16, label %40 [
    i16 4, label %17
    i16 2, label %17
    i16 3, label %17
    i16 5, label %32
  ]

17:                                               ; preds = %15, %15, %15
  %18 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 15
  %19 = load ptr, ptr %18, align 8, !tbaa !90
  %20 = tail call zeroext i8 @ED_view3d_boundbox_clip(ptr noundef %1, ptr noundef %19) #20
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 120
  %24 = load ptr, ptr %23, align 8, !tbaa !166
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call fastcc void @drawCurveDMWired(ptr noundef nonnull %2) #21
  br label %40

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 118
  %29 = load ptr, ptr %28, align 8, !tbaa !170
  %30 = load i16, ptr %5, align 8, !tbaa !79
  %31 = tail call fastcc zeroext i8 @drawDispListwire(ptr noundef %29, i16 noundef signext %30) #21, !range !18
  br label %40

32:                                               ; preds = %15
  %33 = tail call zeroext i8 @BKE_mball_is_basis(ptr noundef nonnull %2) #20
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 118
  %37 = load ptr, ptr %36, align 8, !tbaa !170
  %38 = load i16, ptr %5, align 8, !tbaa !79
  %39 = tail call fastcc zeroext i8 @drawDispListwire(ptr noundef %37, i16 noundef signext %38) #21, !range !18
  br label %40

40:                                               ; preds = %15, %35, %32, %17, %27, %26
  tail call void @glDepthMask(i8 noundef zeroext 1) #20
  tail call void @ED_view3d_polygon_offset(ptr noundef %1, float noundef 0.000000e+00) #20
  br label %41

41:                                               ; preds = %4, %40
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawcentercircle(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [32 x [3 x float]], align 16
  %7 = tail call float @ED_view3d_pixel_size(ptr noundef %1, ptr noundef %2) #20
  %8 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 67), align 4, !tbaa !260
  %9 = sitofp i16 %8 to float
  %10 = fmul float %7, %9
  %11 = fmul float %10, 5.000000e-01
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %6) #22
  %12 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 47
  %13 = load i8, ptr %12, align 8, !tbaa !62
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  tail call void @glDepthFunc(i32 noundef 519) #20
  br label %16

16:                                               ; preds = %15, %5
  tail call void @glEnable(i32 noundef 3042) #20
  %17 = icmp eq i32 %4, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %16
  %19 = add i32 %3, -1
  %20 = icmp ult i32 %19, 2
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void @glColor4ub(i8 noundef zeroext -120, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -101) #20
  br label %27

22:                                               ; preds = %18
  tail call void @glColor4ub(i8 noundef zeroext 85, i8 noundef zeroext -52, i8 noundef zeroext -52, i8 noundef zeroext -101) #20
  br label %27

23:                                               ; preds = %16
  switch i32 %3, label %26 [
    i32 2, label %24
    i32 1, label %25
  ]

24:                                               ; preds = %23
  tail call void @UI_ThemeColorShadeAlpha(i32 noundef 29, i32 noundef 0, i32 noundef -80) #20
  br label %27

25:                                               ; preds = %23
  tail call void @UI_ThemeColorShadeAlpha(i32 noundef 28, i32 noundef 0, i32 noundef -80) #20
  br label %27

26:                                               ; preds = %23
  tail call void @UI_ThemeColorShadeAlpha(i32 noundef 32, i32 noundef 0, i32 noundef -80) #20
  br label %27

27:                                               ; preds = %24, %26, %25, %21, %22
  %28 = getelementptr inbounds %struct.RegionView3D, ptr %1, i64 0, i32 2
  call fastcc void @circball_array_fill(ptr noundef nonnull %6, ptr noundef %2, float noundef %11, ptr noundef nonnull %28) #21
  tail call void @glEnableClientState(i32 noundef 32884) #20
  call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 0, ptr noundef nonnull %6) #20
  call void @glDrawArrays(i32 noundef 9, i32 noundef 0, i32 noundef 32) #20
  call void @UI_ThemeColorShadeAlpha(i32 noundef 25, i32 noundef 0, i32 noundef -30) #20
  call void @glDrawArrays(i32 noundef 2, i32 noundef 0, i32 noundef 32) #20
  call void @glDisableClientState(i32 noundef 32884) #20
  call void @glDisable(i32 noundef 3042) #20
  %29 = load i8, ptr %12, align 8, !tbaa !62
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  call void @glDepthFunc(i32 noundef 515) #20
  br label %32

32:                                               ; preds = %31, %27
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %6) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_hooks(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #22
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 26
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  br label %8

8:                                                ; preds = %6, %22
  %9 = phi ptr [ %4, %6 ], [ %23, %22 ]
  %10 = getelementptr inbounds %struct.ModifierData, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !408
  %12 = icmp eq i32 %11, 9
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.HookModifierData, ptr %9, i64 0, i32 4
  call void @mul_v3_m4v3(ptr noundef nonnull %2, ptr noundef nonnull %7, ptr noundef nonnull %14) #20
  %15 = getelementptr inbounds %struct.HookModifierData, ptr %9, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !409
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  call void @setlinestyle(i32 noundef 3) #20
  call void @glBegin(i32 noundef 1) #20
  %19 = load ptr, ptr %15, align 8, !tbaa !409
  %20 = getelementptr inbounds %struct.Object, ptr %19, i64 0, i32 47, i64 3
  call void @glVertex3fv(ptr noundef nonnull %20) #20
  call void @glVertex3fv(ptr noundef nonnull %2) #20
  call void @glEnd() #20
  call void @setlinestyle(i32 noundef 0) #20
  br label %21

21:                                               ; preds = %18, %13
  call void @glPointSize(float noundef 3.000000e+00) #20
  call void @bglBegin(i32 noundef 0) #20
  call void @bglVertex3fv(ptr noundef nonnull %2) #20
  call void @bglEnd() #20
  call void @glPointSize(float noundef 1.000000e+00) #20
  br label %22

22:                                               ; preds = %8, %21
  %23 = load ptr, ptr %9, align 8, !tbaa !53
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %8, !llvm.loop !411

25:                                               ; preds = %22, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #22
  ret void
}

; Function Attrs: optsize
declare void @UI_GetThemeColor3ubv(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_make_axis_color(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_constraints_make_evalob(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_constraint_typeinfo_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BKE_scene_frame_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_constraints_clear_evalob(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @draw_object_backbufsel(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !213
  %7 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 47
  tail call void @glMultMatrixf(ptr noundef nonnull %7) #20
  tail call void @glClearDepth(double noundef 1.000000e+00) #20
  tail call void @glClear(i32 noundef 256) #20
  tail call void @glEnable(i32 noundef 2929) #20
  %8 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !79
  %10 = icmp eq i16 %9, 1
  br i1 %10, label %11, label %71

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %13 = load i32, ptr %12, align 8, !tbaa !41
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !85
  br i1 %15, label %61, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.Mesh, ptr %17, i64 0, i32 20
  %20 = load ptr, ptr %19, align 8, !tbaa !171
  %21 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !412
  %22 = tail call ptr @editbmesh_get_derived_cage(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %20, i64 noundef %21) #20
  %23 = load ptr, ptr %20, align 8, !tbaa !413
  tail call void @BM_mesh_elem_table_ensure(ptr noundef %23, i8 noundef zeroext 11) #20
  tail call void @DM_update_materials(ptr noundef %22, ptr noundef nonnull %3) #20
  %24 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 8
  %25 = load i16, ptr %24, align 2, !tbaa !415
  %26 = trunc i16 %25 to i8
  %27 = lshr i8 %26, 2
  %28 = and i8 %27, 1
  tail call fastcc void @bbs_mesh_solid_EM(ptr noundef nonnull %20, ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef %22, i8 noundef zeroext %28) #21
  %29 = load i16, ptr %24, align 2, !tbaa !415
  %30 = and i16 %29, 4
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %18
  %33 = load ptr, ptr %20, align 8, !tbaa !413
  %34 = getelementptr inbounds %struct.BMesh, ptr %33, i64 0, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !416
  %36 = add nsw i32 %35, 1
  br label %37

37:                                               ; preds = %18, %32
  %38 = phi i32 [ %36, %32 ], [ 1, %18 ]
  store i32 %38, ptr @bm_solidoffs, align 4, !tbaa !51
  tail call void @ED_view3d_polygon_offset(ptr noundef %2, float noundef 1.000000e+00) #20
  %39 = load i32, ptr @bm_solidoffs, align 4, !tbaa !51
  tail call fastcc void @bbs_mesh_wire(ptr noundef nonnull %20, ptr noundef %22, i32 noundef %39) #21
  %40 = load i32, ptr @bm_solidoffs, align 4, !tbaa !51
  %41 = load ptr, ptr %20, align 8, !tbaa !413
  %42 = getelementptr inbounds %struct.BMesh, ptr %41, i64 0, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !418
  %44 = add i32 %43, %40
  store i32 %44, ptr @bm_wireoffs, align 4, !tbaa !51
  %45 = load i16, ptr %24, align 2, !tbaa !415
  %46 = and i16 %45, 1
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 10), align 4, !tbaa !158
  %50 = and i16 %49, 2
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %48, %37
  tail call fastcc void @bbs_mesh_verts(ptr noundef nonnull %20, ptr noundef %22, i32 noundef %44) #21
  %53 = load i32, ptr @bm_wireoffs, align 4, !tbaa !51
  %54 = load ptr, ptr %20, align 8, !tbaa !413
  %55 = load i32, ptr %54, align 8, !tbaa !419
  %56 = add i32 %55, %53
  br label %57

57:                                               ; preds = %48, %52
  %58 = phi i32 [ %56, %52 ], [ %44, %48 ]
  store i32 %58, ptr @bm_vertoffs, align 4, !tbaa !51
  tail call void @ED_view3d_polygon_offset(ptr noundef %2, float noundef 0.000000e+00) #20
  %59 = getelementptr inbounds %struct.DerivedMesh, ptr %22, i64 0, i32 95
  %60 = load ptr, ptr %59, align 8, !tbaa !178
  tail call void %60(ptr noundef %22) #20
  br label %71

61:                                               ; preds = %11
  %62 = getelementptr inbounds %struct.Mesh, ptr %17, i64 0, i32 46
  %63 = load i8, ptr %62, align 1, !tbaa !420
  %64 = and i8 %63, 32
  %65 = icmp eq i8 %64, 0
  %66 = and i32 %13, 8
  %67 = icmp eq i32 %66, 0
  %68 = or i1 %67, %65
  br i1 %68, label %70, label %69

69:                                               ; preds = %61
  tail call fastcc void @bbs_mesh_solid_verts(ptr noundef nonnull %0, ptr noundef nonnull %3) #21
  br label %71

70:                                               ; preds = %61
  tail call fastcc void @bbs_mesh_solid_faces(ptr noundef nonnull %0, ptr noundef nonnull %3) #21
  br label %71

71:                                               ; preds = %69, %70, %4, %57
  %72 = getelementptr inbounds %struct.RegionView3D, ptr %2, i64 0, i32 1
  tail call void @glLoadMatrixf(ptr noundef nonnull %72) #20
  ret void
}

; Function Attrs: optsize
declare void @glClearDepth(double noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glClear(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @editbmesh_get_derived_cage(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BM_mesh_elem_table_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @DM_update_materials(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bbs_mesh_solid_EM(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr noundef %4, i8 noundef zeroext %5) unnamed_addr #0 {
  tail call void @cpack(i32 noundef 0) #20
  %7 = icmp eq i8 %5, 0
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 89
  %9 = load ptr, ptr %8, align 8, !tbaa !421
  %10 = load ptr, ptr %0, align 8, !tbaa !413
  br i1 %7, label %21, label %11

11:                                               ; preds = %6
  tail call void %9(ptr noundef %4, ptr noundef nonnull @bbs_mesh_solid__setSolidDrawOptions, ptr noundef nonnull @GPU_enable_material, ptr noundef null, ptr noundef %10, i32 noundef 0) #20
  %12 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 87
  %13 = load i8, ptr %12, align 2, !tbaa !82
  %14 = tail call fastcc zeroext i8 @check_ob_drawface_dot(ptr noundef %1, ptr noundef %2, i8 noundef zeroext %13) #21, !range !18
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = tail call float @UI_GetThemeValuef(i32 noundef 48) #20
  tail call void @glPointSize(float noundef %17) #20
  tail call void @bglBegin(i32 noundef 0) #20
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 74
  %19 = load ptr, ptr %18, align 8, !tbaa !422
  %20 = load ptr, ptr %0, align 8, !tbaa !413
  tail call void %19(ptr noundef nonnull %4, ptr noundef nonnull @bbs_mesh_solid__drawCenter, ptr noundef %20, i32 noundef 0) #20
  tail call void @bglEnd() #20
  br label %22

21:                                               ; preds = %6
  tail call void %9(ptr noundef %4, ptr noundef nonnull @bbs_mesh_mask__setSolidDrawOptions, ptr noundef nonnull @GPU_enable_material, ptr noundef null, ptr noundef %10, i32 noundef 0) #20
  br label %22

22:                                               ; preds = %11, %16, %21
  ret void
}

; Function Attrs: optsize
declare void @ED_view3d_polygon_offset(ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bbs_mesh_wire(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.drawBMOffset_userData, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  %5 = load ptr, ptr %0, align 8, !tbaa !413
  store ptr %5, ptr %4, align 8, !tbaa !423
  %6 = getelementptr inbounds %struct.drawBMOffset_userData, ptr %4, i64 0, i32 1
  store i32 %2, ptr %6, align 8, !tbaa !425
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 92
  %8 = load ptr, ptr %7, align 8, !tbaa !426
  call void %8(ptr noundef %1, ptr noundef nonnull @bbs_mesh_wire__setDrawOptions, ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bbs_mesh_verts(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.drawBMOffset_userData, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  %5 = load ptr, ptr %0, align 8, !tbaa !413
  store ptr %5, ptr %4, align 8, !tbaa !423
  %6 = getelementptr inbounds %struct.drawBMOffset_userData, ptr %4, i64 0, i32 1
  store i32 %2, ptr %6, align 8, !tbaa !425
  %7 = tail call float @UI_GetThemeValuef(i32 noundef 36) #20
  tail call void @glPointSize(float noundef %7) #20
  tail call void @bglBegin(i32 noundef 0) #20
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 71
  %9 = load ptr, ptr %8, align 8, !tbaa !427
  call void %9(ptr noundef %1, ptr noundef nonnull @bbs_mesh_verts__mapFunc, ptr noundef nonnull %4, i32 noundef 0) #20
  call void @bglEnd() #20
  call void @glPointSize(float noundef 1.000000e+00) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bbs_mesh_solid_verts(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 42
  %6 = load i64, ptr %5, align 8, !tbaa !177
  %7 = tail call ptr @mesh_get_derived_final(ptr noundef %0, ptr noundef %1, i64 noundef %6) #20
  tail call void @glColor3ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #20
  tail call void @DM_update_materials(ptr noundef %7, ptr noundef %1) #20
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 89
  %9 = load ptr, ptr %8, align 8, !tbaa !421
  tail call void %9(ptr noundef %7, ptr noundef nonnull @bbs_mesh_solid_hide2__setDrawOpts, ptr noundef nonnull @GPU_enable_material, ptr noundef null, ptr noundef %4, i32 noundef 0) #20
  tail call fastcc void @bbs_obmode_mesh_verts(ptr noundef %1, ptr noundef %7) #21
  %10 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 26
  %11 = load i32, ptr %10, align 8, !tbaa !181
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr @bm_vertoffs, align 4, !tbaa !51
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %7, i64 0, i32 95
  %14 = load ptr, ptr %13, align 8, !tbaa !178
  tail call void %14(ptr noundef %7) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bbs_mesh_solid_faces(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 42
  %4 = load i64, ptr %3, align 8, !tbaa !177
  %5 = tail call ptr @mesh_get_derived_final(ptr noundef %0, ptr noundef %1, i64 noundef %4) #20
  %6 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !85
  tail call void @glColor3ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #20
  tail call void @DM_update_materials(ptr noundef %5, ptr noundef %1) #20
  %8 = getelementptr inbounds %struct.Mesh, ptr %7, i64 0, i32 46
  %9 = load i8, ptr %8, align 1, !tbaa !420
  %10 = and i8 %9, 8
  %11 = icmp eq i8 %10, 0
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %5, i64 0, i32 89
  %13 = load ptr, ptr %12, align 8, !tbaa !421
  %14 = select i1 %11, ptr @bbs_mesh_solid__setDrawOpts, ptr @bbs_mesh_solid_hide__setDrawOpts
  tail call void %13(ptr noundef %5, ptr noundef nonnull %14, ptr noundef nonnull @GPU_enable_material, ptr noundef null, ptr noundef nonnull %7, i32 noundef 0) #20
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %5, i64 0, i32 95
  %16 = load ptr, ptr %15, align 8, !tbaa !178
  tail call void %16(ptr noundef nonnull %5) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @draw_object_instance(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = icmp eq ptr %3, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !79
  switch i16 %10, label %21 [
    i16 1, label %11
    i16 0, label %13
  ]

11:                                               ; preds = %8
  %12 = zext i8 %4 to i16
  tail call fastcc void @draw_object_mesh_instance(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i16 noundef signext %12, i32 noundef %5) #21
  br label %21

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 88
  %15 = load i8, ptr %14, align 1, !tbaa !80
  %16 = icmp eq i8 %15, 8
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call fastcc void @draw_empty_image(ptr noundef nonnull %3, i16 noundef signext 2, ptr noundef null) #21
  br label %21

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 89
  %20 = load float, ptr %19, align 8, !tbaa !95
  tail call void @drawaxes(float noundef %20, i8 noundef zeroext %15) #21
  br label %21

21:                                               ; preds = %17, %18, %6, %8, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_object_mesh_instance(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i16 noundef signext %4, i32 noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 27
  %8 = load i32, ptr %7, align 8, !tbaa !41
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load i64, ptr @CD_MASK_BAREMESH, align 8, !tbaa !412
  %13 = tail call ptr @mesh_get_derived_final(ptr noundef %0, ptr noundef nonnull %3, i64 noundef %12) #20
  tail call void @DM_update_materials(ptr noundef %13, ptr noundef nonnull %3) #20
  %14 = icmp ult i16 %4, 3
  br i1 %14, label %22, label %32

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !85
  %18 = getelementptr inbounds %struct.Mesh, ptr %17, i64 0, i32 20
  %19 = load ptr, ptr %18, align 8, !tbaa !171
  %20 = tail call ptr @editbmesh_get_derived_base(ptr noundef nonnull %3, ptr noundef %19) #20
  tail call void @DM_update_materials(ptr noundef %20, ptr noundef nonnull %3) #20
  %21 = icmp ult i16 %4, 3
  br i1 %21, label %27, label %32

22:                                               ; preds = %11
  %23 = icmp eq ptr %13, null
  br i1 %23, label %72, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.DerivedMesh, ptr %13, i64 0, i32 84
  %26 = load ptr, ptr %25, align 8, !tbaa !428
  tail call void %26(ptr noundef nonnull %13, i8 noundef zeroext 1, i8 noundef zeroext 0) #20
  br label %68

27:                                               ; preds = %15
  %28 = icmp eq ptr %20, null
  br i1 %28, label %72, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.DerivedMesh, ptr %20, i64 0, i32 84
  %31 = load ptr, ptr %30, align 8, !tbaa !428
  tail call void %31(ptr noundef nonnull %20, i8 noundef zeroext 1, i8 noundef zeroext 0) #20
  br label %61

32:                                               ; preds = %15, %11
  %33 = phi ptr [ null, %15 ], [ %13, %11 ]
  %34 = phi ptr [ %20, %15 ], [ null, %11 ]
  %35 = icmp eq i32 %5, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = icmp eq ptr %33, null
  %38 = select i1 %37, ptr %34, ptr %33
  tail call fastcc void @draw_mesh_object_outline(ptr noundef %1, ptr noundef nonnull %3, ptr noundef %38) #21
  br label %39

39:                                               ; preds = %36, %32
  %40 = icmp eq ptr %33, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %39
  %42 = trunc i16 %4 to i8
  %43 = tail call zeroext i8 @draw_glsl_material(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext %42) #21, !range !18
  tail call void @GPU_begin_object_materials(ptr noundef %1, ptr noundef %2, ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext %43, ptr noundef null) #20
  br label %45

44:                                               ; preds = %39
  tail call void @glEnable(i32 noundef 2903) #20
  tail call void @UI_ThemeColor(i32 noundef 74) #20
  tail call void @glDisable(i32 noundef 2903) #20
  br label %45

45:                                               ; preds = %44, %41
  %46 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 55
  %47 = load i16, ptr %46, align 8, !tbaa !68
  %48 = and i16 %47, 4
  %49 = icmp eq i16 %48, 0
  %50 = select i1 %49, i32 2305, i32 2304
  tail call void @glFrontFace(i32 noundef %50) #20
  tail call void @glEnable(i32 noundef 2896) #20
  br i1 %40, label %51, label %57

51:                                               ; preds = %45
  %52 = icmp eq ptr %34, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %51
  tail call void @glDisable(i32 noundef 2896) #20
  br label %72

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.DerivedMesh, ptr %34, i64 0, i32 89
  %56 = load ptr, ptr %55, align 8, !tbaa !421
  tail call void %56(ptr noundef nonnull %34, ptr noundef null, ptr noundef nonnull @GPU_enable_material, ptr noundef null, ptr noundef null, i32 noundef 0) #20
  tail call void @glDisable(i32 noundef 2896) #20
  br label %61

57:                                               ; preds = %45
  %58 = getelementptr inbounds %struct.DerivedMesh, ptr %33, i64 0, i32 86
  %59 = load ptr, ptr %58, align 8, !tbaa !429
  tail call void %59(ptr noundef nonnull %33, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull @GPU_enable_material) #20
  tail call void @GPU_end_object_materials() #20
  tail call void @glDisable(i32 noundef 2896) #20
  %60 = icmp eq ptr %34, null
  br i1 %60, label %68, label %65

61:                                               ; preds = %29, %54
  %62 = phi ptr [ %34, %54 ], [ %20, %29 ]
  %63 = getelementptr inbounds %struct.DerivedMesh, ptr %62, i64 0, i32 95
  %64 = load ptr, ptr %63, align 8, !tbaa !178
  tail call void %64(ptr noundef nonnull %62) #20
  br label %72

65:                                               ; preds = %57
  %66 = getelementptr inbounds %struct.DerivedMesh, ptr %34, i64 0, i32 95
  %67 = load ptr, ptr %66, align 8, !tbaa !178
  tail call void %67(ptr noundef nonnull %34) #20
  br label %68

68:                                               ; preds = %24, %57, %65
  %69 = phi ptr [ %33, %65 ], [ %13, %24 ], [ %33, %57 ]
  %70 = getelementptr inbounds %struct.DerivedMesh, ptr %69, i64 0, i32 95
  %71 = load ptr, ptr %70, align 8, !tbaa !178
  tail call void %71(ptr noundef nonnull %69) #20
  br label %72

72:                                               ; preds = %22, %53, %27, %61, %68
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #7 {
  %4 = load float, ptr %1, align 4, !tbaa !45
  %5 = load float, ptr %2, align 4, !tbaa !45
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !45
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !45
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !45
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !45
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !45
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !45
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #7 {
  %3 = load float, ptr %1, align 4, !tbaa !45
  %4 = load float, ptr %0, align 4, !tbaa !45
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !45
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !45
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !45
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !45
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !45
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !45
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #7 {
  %4 = load float, ptr %1, align 4, !tbaa !45
  %5 = load float, ptr %2, align 4, !tbaa !45
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !45
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !45
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !45
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !45
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !45
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !45
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #7 {
  %3 = load float, ptr %1, align 4, !tbaa !45
  %4 = load float, ptr %0, align 4, !tbaa !45
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !45
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !45
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !45
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !45
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !45
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !45
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #7 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !45
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !45
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !45
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #7 {
  %4 = load float, ptr %1, align 4, !tbaa !45
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !45
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !45
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !45
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !45
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !45
  ret void
}

; Function Attrs: optsize
declare void @glVertex3f(float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @glGenLists(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glNewList(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gluNewQuadric() local_unnamed_addr #1

; Function Attrs: optsize
declare void @gluQuadricDrawStyle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gluDisk(ptr noundef, double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glRotatef(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gluDeleteQuadric(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glEndList() local_unnamed_addr #1

; Function Attrs: optsize
declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glCallList(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gluCylinder(ptr noundef, double noundef, double noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_GetThemeColorShade3ubv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @cpack_cpy_3ub(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #11 {
  %3 = trunc i32 %1 to i8
  store i8 %3, ptr %0, align 1, !tbaa !55
  %4 = lshr i32 %1, 8
  %5 = trunc i32 %4 to i8
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  store i8 %5, ptr %6, align 1, !tbaa !55
  %7 = lshr i32 %1, 16
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds i8, ptr %0, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #11 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare ptr @UI_icon_to_preview(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glLineWidth(float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @UI_GetThemeValuef(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BKE_displist_has_faces(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_mesh_object_outline(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.View3D, ptr %0, i64 0, i32 48
  %5 = load i8, ptr %4, align 1, !tbaa !77
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 27
  %9 = load i32, ptr %8, align 8, !tbaa !41
  %10 = and i32 %9, 30
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %7
  %13 = tail call float @UI_GetThemeValuef(i32 noundef 37) #20
  %14 = fmul float %13, 2.000000e+00
  tail call void @glLineWidth(float noundef %14) #20
  tail call void @glDepthMask(i8 noundef zeroext 0) #20
  %15 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 86
  %16 = load i16, ptr %15, align 4, !tbaa !78
  %17 = and i16 %16, 128
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  tail call void @glPolygonMode(i32 noundef 1032, i32 noundef 6913) #20
  %20 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 86
  %21 = load ptr, ptr %20, align 8, !tbaa !429
  tail call void %21(ptr noundef %2, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull @GPU_enable_material) #20
  tail call void @glPolygonMode(i32 noundef 1032, i32 noundef 6914) #20
  tail call void @GPU_disable_material() #20
  br label %25

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 84
  %24 = load ptr, ptr %23, align 8, !tbaa !428
  tail call void %24(ptr noundef %2, i8 noundef zeroext 0, i8 noundef zeroext 1) #20
  br label %25

25:                                               ; preds = %22, %19
  tail call void @glLineWidth(float noundef 1.000000e+00) #20
  tail call void @glDepthMask(i8 noundef zeroext 1) #20
  br label %26

26:                                               ; preds = %25, %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @drawDispListwire(ptr noundef %0, i16 noundef signext %1) unnamed_addr #0 {
  %3 = add i16 %1, -2
  %4 = and i16 %3, -3
  %5 = icmp eq i16 %4, 0
  %6 = select i1 %5, i32 -49, i32 -1
  %7 = tail call fastcc zeroext i8 @drawDispListwire_ex(ptr noundef %0, i32 noundef %6) #21, !range !18
  ret i8 %7
}

; Function Attrs: optsize
declare zeroext i8 @BKE_mball_is_basis(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glPolygonMode(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @drawDispListwire_ex(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %107, label %4

4:                                                ; preds = %2
  tail call void @glEnableClientState(i32 noundef 32884) #20
  tail call void @glPolygonMode(i32 noundef 1032, i32 noundef 6913) #20
  %5 = load ptr, ptr %0, align 8, !tbaa !53
  %6 = icmp eq ptr %5, null
  br i1 %6, label %106, label %7

7:                                                ; preds = %4, %103
  %8 = phi ptr [ %104, %103 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.DispList, ptr %8, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !430
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %103, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.DispList, ptr %8, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !432
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %103, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.DispList, ptr %8, i64 0, i32 2
  %18 = load i16, ptr %17, align 8, !tbaa !433
  %19 = zext nneg i16 %18 to i32
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, %1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %103, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.DispList, ptr %8, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !434
  switch i16 %18, label %103 [
    i16 1, label %26
    i16 0, label %36
    i16 2, label %46
    i16 4, label %93
    i16 5, label %98
  ]

26:                                               ; preds = %23
  tail call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 0, ptr noundef %25) #20
  %27 = load i32, ptr %9, align 4, !tbaa !430
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %103

29:                                               ; preds = %26, %29
  %30 = phi i32 [ %33, %29 ], [ 0, %26 ]
  %31 = load i32, ptr %13, align 8, !tbaa !432
  %32 = mul nsw i32 %31, %30
  tail call void @glDrawArrays(i32 noundef 3, i32 noundef %32, i32 noundef %31) #20
  %33 = add nuw nsw i32 %30, 1
  %34 = load i32, ptr %9, align 4, !tbaa !430
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %29, label %103, !llvm.loop !435

36:                                               ; preds = %23
  tail call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 0, ptr noundef %25) #20
  %37 = load i32, ptr %9, align 4, !tbaa !430
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %103

39:                                               ; preds = %36, %39
  %40 = phi i32 [ %43, %39 ], [ 0, %36 ]
  %41 = load i32, ptr %13, align 8, !tbaa !432
  %42 = mul nsw i32 %41, %40
  tail call void @glDrawArrays(i32 noundef 2, i32 noundef %42, i32 noundef %41) #20
  %43 = add nuw nsw i32 %40, 1
  %44 = load i32, ptr %9, align 4, !tbaa !430
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %39, label %103, !llvm.loop !436

46:                                               ; preds = %23
  tail call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 0, ptr noundef %25) #20
  %47 = load i32, ptr %9, align 4, !tbaa !430
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.DispList, ptr %8, i64 0, i32 3
  br label %56

51:                                               ; preds = %56, %46
  %52 = load i32, ptr %13, align 8, !tbaa !432
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %103

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.DispList, ptr %8, i64 0, i32 3
  br label %67

56:                                               ; preds = %49, %56
  %57 = phi i32 [ 0, %49 ], [ %64, %56 ]
  %58 = load i16, ptr %50, align 2, !tbaa !437
  %59 = and i16 %58, 1
  %60 = icmp eq i16 %59, 0
  %61 = load i32, ptr %13, align 8, !tbaa !432
  %62 = mul nsw i32 %61, %57
  %63 = select i1 %60, i32 3, i32 2
  tail call void @glDrawArrays(i32 noundef %63, i32 noundef %62, i32 noundef %61) #20
  %64 = add nuw nsw i32 %57, 1
  %65 = load i32, ptr %9, align 4, !tbaa !430
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %56, label %51, !llvm.loop !438

67:                                               ; preds = %54, %88
  %68 = phi i64 [ 0, %54 ], [ %89, %88 ]
  %69 = phi i32 [ %52, %54 ], [ %90, %88 ]
  %70 = load ptr, ptr %24, align 8, !tbaa !434
  %71 = load i32, ptr %9, align 4, !tbaa !430
  %72 = load i16, ptr %55, align 2, !tbaa !437
  %73 = and i16 %72, 2
  %74 = icmp eq i16 %73, 0
  %75 = select i1 %74, i32 3, i32 2
  tail call void @glBegin(i32 noundef %75) #20
  %76 = icmp eq i32 %71, 0
  br i1 %76, label %88, label %77

77:                                               ; preds = %67
  %78 = mul nuw nsw i64 %68, 3
  %79 = getelementptr inbounds float, ptr %70, i64 %78
  %80 = mul nsw i32 %69, 3
  %81 = sext i32 %80 to i64
  br label %82

82:                                               ; preds = %77, %82
  %83 = phi ptr [ %79, %77 ], [ %86, %82 ]
  %84 = phi i32 [ %71, %77 ], [ %85, %82 ]
  %85 = add nsw i32 %84, -1
  tail call void @glVertex3fv(ptr noundef %83) #20
  %86 = getelementptr inbounds float, ptr %83, i64 %81
  %87 = icmp eq i32 %85, 0
  br i1 %87, label %88, label %82, !llvm.loop !439

88:                                               ; preds = %82, %67
  tail call void @glEnd() #20
  %89 = add nuw nsw i64 %68, 1
  %90 = load i32, ptr %13, align 8, !tbaa !432
  %91 = sext i32 %90 to i64
  %92 = icmp slt i64 %89, %91
  br i1 %92, label %67, label %103, !llvm.loop !440

93:                                               ; preds = %23
  tail call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 0, ptr noundef %25) #20
  %94 = load i32, ptr %9, align 4, !tbaa !430
  %95 = mul nsw i32 %94, 3
  %96 = getelementptr inbounds %struct.DispList, ptr %8, i64 0, i32 10
  %97 = load ptr, ptr %96, align 8, !tbaa !441
  tail call void @glDrawElements(i32 noundef 4, i32 noundef %95, i32 noundef 5125, ptr noundef %97) #20
  br label %103

98:                                               ; preds = %23
  tail call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 0, ptr noundef %25) #20
  %99 = load i32, ptr %9, align 4, !tbaa !430
  %100 = shl nsw i32 %99, 2
  %101 = getelementptr inbounds %struct.DispList, ptr %8, i64 0, i32 10
  %102 = load ptr, ptr %101, align 8, !tbaa !441
  tail call void @glDrawElements(i32 noundef 7, i32 noundef %100, i32 noundef 5125, ptr noundef %102) #20
  br label %103

103:                                              ; preds = %88, %39, %29, %51, %36, %26, %93, %98, %23, %16, %7, %12
  %104 = load ptr, ptr %8, align 8, !tbaa !53
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %7, !llvm.loop !442

106:                                              ; preds = %103, %4
  tail call void @glDisableClientState(i32 noundef 32884) #20
  tail call void @glPolygonMode(i32 noundef 1032, i32 noundef 6914) #20
  br label %107

107:                                              ; preds = %2, %106
  %108 = phi i8 [ 0, %106 ], [ 1, %2 ]
  ret i8 %108
}

; Function Attrs: optsize
declare void @glDrawElements(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @give_current_material(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_key_from_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glCullFace(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @editbmesh_get_derived_base(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @editbmesh_get_derived_cage_and_final(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GPU_begin_object_materials(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_em_fancy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i8 noundef zeroext %7) unnamed_addr #0 {
  %9 = alloca [4 x i8], align 1
  %10 = alloca [4 x i8], align 1
  %11 = alloca [4 x i8], align 1
  %12 = alloca [4 x i8], align 1
  %13 = alloca [4 x i8], align 1
  %14 = alloca [4 x i8], align 1
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  %17 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !85
  %19 = load ptr, ptr %4, align 8, !tbaa !413
  %20 = tail call ptr @BM_mesh_active_face_get(ptr noundef %19, i8 noundef zeroext 0, i8 noundef zeroext 1) #20
  %21 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 29
  %22 = load i16, ptr %21, align 2, !tbaa !15
  %23 = and i16 %22, 16384
  %24 = icmp eq i16 %23, 0
  %25 = icmp ult i8 %7, 3
  %26 = or i1 %25, %24
  %27 = load ptr, ptr %4, align 8, !tbaa !413
  %28 = getelementptr inbounds %struct.BMesh, ptr %27, i64 0, i32 32, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !443
  %30 = icmp eq ptr %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %8
  %32 = getelementptr inbounds %struct.BMEditSelection, ptr %29, i64 0, i32 3
  %33 = load i8, ptr %32, align 8, !tbaa !444
  switch i8 %33, label %40 [
    i8 2, label %34
    i8 1, label %37
  ]

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.BMEditSelection, ptr %29, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !446
  br label %40

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.BMEditSelection, ptr %29, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !446
  br label %40

40:                                               ; preds = %34, %37, %31, %8
  %41 = phi ptr [ null, %8 ], [ null, %34 ], [ %39, %37 ], [ null, %31 ]
  %42 = phi ptr [ null, %8 ], [ %36, %34 ], [ null, %37 ], [ null, %31 ]
  tail call void @BM_mesh_elem_table_ensure(ptr noundef nonnull %27, i8 noundef zeroext 11) #20
  %43 = tail call fastcc zeroext i8 @check_object_draw_editweight(ptr noundef %18, ptr noundef %6) #21, !range !18
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %40
  br i1 %25, label %49, label %46

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.Mesh, ptr %18, i64 0, i32 20
  %48 = load ptr, ptr %47, align 8, !tbaa !171
  tail call void @draw_mesh_paint_weight_faces(ptr noundef %6, i8 noundef zeroext 1, ptr noundef nonnull @draw_em_fancy__setFaceOpts, ptr noundef %48) #20
  tail call void @ED_view3d_polygon_offset(ptr noundef %16, float noundef 1.000000e+00) #20
  tail call void @glDepthMask(i8 noundef zeroext 0) #20
  br label %97

49:                                               ; preds = %45
  tail call void @glEnable(i32 noundef 2929) #20
  %50 = getelementptr inbounds %struct.Mesh, ptr %18, i64 0, i32 20
  %51 = load ptr, ptr %50, align 8, !tbaa !171
  tail call void @draw_mesh_paint_weight_faces(ptr noundef %6, i8 noundef zeroext 0, ptr noundef nonnull @draw_em_fancy__setFaceOpts, ptr noundef %51) #20
  %52 = load ptr, ptr %50, align 8, !tbaa !171
  %53 = load ptr, ptr %52, align 8, !tbaa !413
  tail call void @draw_mesh_paint_weight_edges(ptr noundef %16, ptr noundef %6, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef nonnull @draw_dm_edges__setDrawOptions, ptr noundef %53) #20
  tail call void @glDisable(i32 noundef 2929) #20
  br label %97

54:                                               ; preds = %40
  br i1 %25, label %92, label %55

55:                                               ; preds = %54
  br i1 %26, label %61, label %56

56:                                               ; preds = %55
  tail call void @glColorMask(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #20
  %57 = getelementptr inbounds %struct.DerivedMesh, ptr %5, i64 0, i32 89
  %58 = load ptr, ptr %57, align 8, !tbaa !421
  %59 = getelementptr inbounds %struct.Mesh, ptr %18, i64 0, i32 20
  %60 = load ptr, ptr %59, align 8, !tbaa !171
  tail call void %58(ptr noundef %5, ptr noundef nonnull @draw_em_fancy__setFaceOpts, ptr noundef nonnull @GPU_enable_material, ptr noundef null, ptr noundef %60, i32 noundef 0) #20
  tail call void @glColorMask(i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #20
  br label %91

61:                                               ; preds = %55
  %62 = tail call zeroext i8 @check_object_draw_texture(ptr noundef %0, ptr noundef nonnull %2, i8 noundef zeroext %7) #21, !range !18
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %76, label %64

64:                                               ; preds = %61
  %65 = tail call zeroext i8 @draw_glsl_material(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %2, i8 noundef zeroext %7) #21, !range !18
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 55
  %69 = load i16, ptr %68, align 8, !tbaa !68
  %70 = and i16 %69, 4
  %71 = icmp eq i16 %70, 0
  %72 = select i1 %71, i32 2305, i32 2304
  tail call void @glFrontFace(i32 noundef %72) #20
  %73 = getelementptr inbounds %struct.DerivedMesh, ptr %6, i64 0, i32 91
  %74 = load ptr, ptr %73, align 8, !tbaa !447
  tail call void %74(ptr noundef %6, ptr noundef nonnull @GPU_enable_material, ptr noundef nonnull @draw_em_fancy__setGLSLFaceOpts, ptr noundef nonnull %4) #20
  tail call void @GPU_disable_material() #20
  tail call void @glFrontFace(i32 noundef 2305) #20
  br label %91

75:                                               ; preds = %64
  tail call void @draw_mesh_textured(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %16, ptr noundef nonnull %3, ptr noundef %6, i32 noundef 0) #20
  br label %91

76:                                               ; preds = %61
  %77 = getelementptr inbounds %struct.Mesh, ptr %18, i64 0, i32 38
  %78 = load i16, ptr %77, align 2, !tbaa !448
  %79 = lshr i16 %78, 2
  %80 = and i16 %79, 1
  %81 = zext nneg i16 %80 to i32
  tail call void @glLightModeli(i32 noundef 2898, i32 noundef %81) #20
  tail call void @glEnable(i32 noundef 2896) #20
  %82 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 55
  %83 = load i16, ptr %82, align 8, !tbaa !68
  %84 = and i16 %83, 4
  %85 = icmp eq i16 %84, 0
  %86 = select i1 %85, i32 2305, i32 2304
  tail call void @glFrontFace(i32 noundef %86) #20
  %87 = getelementptr inbounds %struct.DerivedMesh, ptr %6, i64 0, i32 89
  %88 = load ptr, ptr %87, align 8, !tbaa !421
  %89 = getelementptr inbounds %struct.Mesh, ptr %18, i64 0, i32 20
  %90 = load ptr, ptr %89, align 8, !tbaa !171
  tail call void %88(ptr noundef %6, ptr noundef nonnull @draw_em_fancy__setFaceOpts, ptr noundef nonnull @GPU_enable_material, ptr noundef null, ptr noundef %90, i32 noundef 0) #20
  tail call void @glFrontFace(i32 noundef 2305) #20
  tail call void @glDisable(i32 noundef 2896) #20
  tail call void @glLightModeli(i32 noundef 2898, i32 noundef 0) #20
  br label %91

91:                                               ; preds = %76, %75, %67, %56
  tail call void @UI_ThemeColor(i32 noundef 27) #20
  tail call void @ED_view3d_polygon_offset(ptr noundef %16, float noundef 1.000000e+00) #20
  tail call void @glDepthMask(i8 noundef zeroext 0) #20
  br label %97

92:                                               ; preds = %54
  %93 = icmp eq ptr %5, %6
  br i1 %93, label %97, label %94

94:                                               ; preds = %92
  tail call void @UI_ThemeColorBlend(i32 noundef 27, i32 noundef 2, float noundef 0x3FE6666660000000) #20
  %95 = getelementptr inbounds %struct.DerivedMesh, ptr %6, i64 0, i32 84
  %96 = load ptr, ptr %95, align 8, !tbaa !428
  tail call void %96(ptr noundef %6, i8 noundef zeroext 1, i8 noundef zeroext 0) #20
  br label %97

97:                                               ; preds = %91, %94, %92, %46, %49
  %98 = getelementptr inbounds %struct.Mesh, ptr %18, i64 0, i32 36
  %99 = load i32, ptr %98, align 8, !tbaa !449
  %100 = and i32 %99, 2
  %101 = icmp ne i32 %100, 0
  %102 = select i1 %101, i1 %26, i1 false
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #22
  call void @UI_GetThemeColor4ubv(i32 noundef 42, ptr noundef nonnull %9) #20
  call void @UI_GetThemeColor4ubv(i32 noundef 43, ptr noundef nonnull %10) #20
  call void @UI_GetThemeColor4ubv(i32 noundef 127, ptr noundef nonnull %11) #20
  call void @glEnable(i32 noundef 3042) #20
  call void @glDepthMask(i8 noundef zeroext 0) #20
  %104 = call zeroext i8 @check_object_draw_texture(ptr noundef %0, ptr noundef nonnull %2, i8 noundef zeroext %7) #21, !range !18
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 3
  store i8 0, ptr %107, align 1, !tbaa !55
  br label %108

108:                                              ; preds = %106, %103
  call fastcc void @draw_dm_faces_sel(ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef %20) #21
  call void @glDisable(i32 noundef 3042) #20
  call void @glDepthMask(i8 noundef zeroext 1) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #22
  br label %114

109:                                              ; preds = %97
  %110 = icmp eq ptr %20, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %109
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #22
  %112 = getelementptr inbounds [4 x i8], ptr %13, i64 0, i64 3
  store i8 0, ptr %112, align 1, !tbaa !55
  %113 = getelementptr inbounds [4 x i8], ptr %12, i64 0, i64 3
  store i8 0, ptr %113, align 1, !tbaa !55
  call void @UI_GetThemeColor4ubv(i32 noundef 127, ptr noundef nonnull %14) #20
  call void @glEnable(i32 noundef 3042) #20
  call void @glDepthMask(i8 noundef zeroext 0) #20
  call fastcc void @draw_dm_faces_sel(ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %20) #21
  call void @glDisable(i32 noundef 3042) #20
  call void @glDepthMask(i8 noundef zeroext 1) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #22
  br label %114

114:                                              ; preds = %109, %111, %108
  %115 = load i32, ptr %98, align 8, !tbaa !449
  %116 = and i32 %115, 1
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = call zeroext i8 @check_object_draw_texture(ptr noundef %0, ptr noundef nonnull %2, i8 noundef zeroext %7) #21, !range !18
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %146

121:                                              ; preds = %118
  %122 = load i32, ptr %98, align 8, !tbaa !449
  br label %123

123:                                              ; preds = %121, %114
  %124 = phi i32 [ %122, %121 ], [ %115, %114 ]
  %125 = and i32 %124, 128
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %123
  call void @UI_ThemeColor(i32 noundef 40) #20
  call void @glLineWidth(float noundef 2.000000e+00) #20
  call fastcc void @draw_dm_edges_seams(ptr noundef nonnull %4, ptr noundef %5) #21
  call void @glColor3ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #20
  call void @glLineWidth(float noundef 1.000000e+00) #20
  %128 = load i32, ptr %98, align 8, !tbaa !449
  br label %129

129:                                              ; preds = %127, %123
  %130 = phi i32 [ %128, %127 ], [ %124, %123 ]
  %131 = and i32 %130, 256
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %129
  call void @UI_ThemeColor(i32 noundef 126) #20
  call void @glLineWidth(float noundef 2.000000e+00) #20
  call fastcc void @draw_dm_edges_sharp(ptr noundef nonnull %4, ptr noundef %5) #21
  call void @glColor3ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #20
  call void @glLineWidth(float noundef 1.000000e+00) #20
  %134 = load i32, ptr %98, align 8, !tbaa !449
  br label %135

135:                                              ; preds = %133, %129
  %136 = phi i32 [ %134, %133 ], [ %130, %129 ]
  %137 = and i32 %136, 64
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %135
  call fastcc void @draw_dm_creases(ptr noundef nonnull %4, ptr noundef %5) #21
  %140 = load i32, ptr %98, align 8, !tbaa !449
  br label %141

141:                                              ; preds = %139, %135
  %142 = phi i32 [ %140, %139 ], [ %136, %135 ]
  %143 = and i32 %142, 512
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %141
  call fastcc void @draw_dm_bweights(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %5) #21
  br label %146

146:                                              ; preds = %141, %145, %118
  %147 = phi i16 [ 1, %118 ], [ 0, %145 ], [ 0, %141 ]
  call fastcc void @draw_em_fancy_edges(ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %18, ptr noundef %5, i16 noundef signext %147, ptr noundef %42) #21
  call fastcc void @draw_em_fancy_verts(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef %41, ptr noundef %16) #21
  %148 = load i32, ptr %98, align 8, !tbaa !449
  %149 = and i32 %148, 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %146
  call void @UI_ThemeColor(i32 noundef 44) #20
  call fastcc void @draw_dm_face_normals(ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %3, ptr noundef %5) #21
  %152 = load i32, ptr %98, align 8, !tbaa !449
  br label %153

153:                                              ; preds = %151, %146
  %154 = phi i32 [ %152, %151 ], [ %148, %146 ]
  %155 = and i32 %154, 8
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %153
  call void @UI_ThemeColor(i32 noundef 45) #20
  call fastcc void @draw_dm_vert_normals(ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %3, ptr noundef %5) #21
  %158 = load i32, ptr %98, align 8, !tbaa !449
  br label %159

159:                                              ; preds = %157, %153
  %160 = phi i32 [ %158, %157 ], [ %154, %153 ]
  %161 = and i32 %160, 262144
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %159
  call void @UI_ThemeColor(i32 noundef 46) #20
  call fastcc void @draw_dm_loop_normals(ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %3, ptr noundef %5) #21
  %164 = load i32, ptr %98, align 8, !tbaa !449
  br label %165

165:                                              ; preds = %163, %159
  %166 = phi i32 [ %164, %163 ], [ %160, %159 ]
  %167 = and i32 %166, 15360
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %175, label %169

169:                                              ; preds = %165
  %170 = load i16, ptr %21, align 2, !tbaa !15
  %171 = and i16 %170, 4
  %172 = icmp eq i16 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 38
  call fastcc void @draw_em_measure_stats(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %174) #21
  br label %175

175:                                              ; preds = %173, %169, %165
  %176 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !450
  %177 = and i32 %176, 1
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %188, label %179

179:                                              ; preds = %175
  %180 = load i32, ptr %98, align 8, !tbaa !449
  %181 = and i32 %180, 16384
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %188, label %183

183:                                              ; preds = %179
  %184 = load i16, ptr %21, align 2, !tbaa !15
  %185 = and i16 %184, 4
  %186 = icmp eq i16 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %183
  call fastcc void @draw_em_indices(ptr noundef nonnull %4) #21
  br label %188

188:                                              ; preds = %187, %183, %179, %175
  br i1 %25, label %190, label %189

189:                                              ; preds = %188
  call void @glDepthMask(i8 noundef zeroext 1) #20
  call void @ED_view3d_polygon_offset(ptr noundef %16, float noundef 0.000000e+00) #20
  call void @GPU_disable_material() #20
  br label %190

190:                                              ; preds = %189, %188
  ret void
}

; Function Attrs: optsize
declare void @GPU_end_object_materials() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @check_alpha_pass(ptr nocapture noundef readonly %0) unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.Base, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !75
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !16
  %8 = and i32 %7, 32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Base, ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !39
  %13 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 27
  %14 = load i32, ptr %13, align 8, !tbaa !41
  %15 = and i32 %14, 30
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.Object, ptr %12, i64 0, i32 86
  %19 = load i16, ptr %18, align 4, !tbaa !78
  %20 = trunc i16 %19 to i8
  %21 = and i8 %20, -128
  br label %22

22:                                               ; preds = %10, %6, %1, %17
  %23 = phi i8 [ %21, %17 ], [ 0, %1 ], [ 0, %6 ], [ 0, %10 ]
  ret i8 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_mesh_fancy(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i8 noundef zeroext %5, ptr noundef %6, i16 noundef signext %7) unnamed_addr #0 {
  %9 = alloca %struct.GPUVertexAttribs, align 4
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [4 x float], align 16
  %12 = alloca [4 x [4 x float]], align 16
  %13 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !39
  %15 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !85
  %17 = tail call ptr @give_current_material(ptr noundef %14, i16 noundef signext 1) #20
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.Material, ptr %17, i64 0, i32 2
  %21 = load i16, ptr %20, align 8, !tbaa !451
  %22 = icmp eq i16 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = tail call zeroext i8 @BKE_scene_use_new_shading_nodes(ptr noundef %0) #20
  %25 = icmp eq i8 %24, 0
  br label %26

26:                                               ; preds = %23, %19, %8
  %27 = phi i1 [ false, %19 ], [ false, %8 ], [ %25, %23 ]
  %28 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 42
  %29 = load i64, ptr %28, align 8, !tbaa !177
  %30 = tail call ptr @mesh_get_derived_final(ptr noundef %0, ptr noundef nonnull %14, i64 noundef %29) #20
  %31 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !19
  %33 = icmp eq ptr %32, null
  br i1 %33, label %43, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.Base, ptr %32, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !39
  %37 = icmp eq ptr %14, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = tail call zeroext i8 @BKE_paint_select_face_test(ptr noundef nonnull %14) #20
  %40 = freeze i8 %39
  %41 = icmp ne i8 %40, 0
  %42 = select i1 %41, i32 2, i32 0
  br label %43

43:                                               ; preds = %38, %26, %34
  %44 = phi i1 [ false, %34 ], [ false, %26 ], [ %41, %38 ]
  %45 = phi i1 [ false, %34 ], [ false, %26 ], [ true, %38 ]
  %46 = phi i32 [ 0, %34 ], [ 0, %26 ], [ %42, %38 ]
  %47 = icmp eq ptr %30, null
  br i1 %47, label %386, label %48

48:                                               ; preds = %43
  tail call void @DM_update_materials(ptr noundef nonnull %30, ptr noundef nonnull %14) #20
  %49 = tail call ptr @DM_get_tessface_data_layer(ptr noundef nonnull %30, i32 noundef 20) #20
  %50 = icmp eq ptr %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = tail call zeroext i8 @modifiers_isPreview(ptr noundef nonnull %14) #20
  %53 = icmp ne i8 %52, 0
  %54 = zext i1 %53 to i32
  %55 = or disjoint i32 %46, %54
  br label %56

56:                                               ; preds = %51, %48
  %57 = phi i32 [ %46, %48 ], [ %55, %51 ]
  br i1 %44, label %65, label %58

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 86
  %60 = load i16, ptr %59, align 4, !tbaa !78
  %61 = and i16 %60, 32
  %62 = icmp eq i16 %61, 0
  %63 = lshr exact i16 %61, 4
  %64 = zext nneg i16 %63 to i32
  br label %65

65:                                               ; preds = %58, %56
  %66 = phi i1 [ true, %56 ], [ %62, %58 ]
  %67 = phi i32 [ 0, %56 ], [ %64, %58 ]
  %68 = getelementptr inbounds %struct.DerivedMesh, ptr %30, i64 0, i32 24
  %69 = load ptr, ptr %68, align 8, !tbaa !452
  %70 = tail call i32 %69(ptr noundef nonnull %30) #20
  %71 = getelementptr inbounds %struct.DerivedMesh, ptr %30, i64 0, i32 25
  %72 = load ptr, ptr %71, align 8, !tbaa !167
  %73 = tail call i32 %72(ptr noundef nonnull %30) #20
  %74 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 55
  %75 = load i16, ptr %74, align 8, !tbaa !68
  %76 = and i16 %75, 4
  %77 = icmp eq i16 %76, 0
  %78 = select i1 %77, i32 2305, i32 2304
  tail call void @glFrontFace(i32 noundef %78) #20
  %79 = icmp eq i8 %5, 1
  br i1 %79, label %80, label %92

80:                                               ; preds = %65
  %81 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 29
  %82 = load i16, ptr %81, align 2, !tbaa !15
  %83 = and i16 %82, 4
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 24
  %87 = load i16, ptr %86, align 8, !tbaa !5
  %88 = icmp slt i16 %87, 2
  br i1 %88, label %89, label %327

89:                                               ; preds = %80, %85
  %90 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 84
  %91 = load i8, ptr %90, align 2, !tbaa !89
  tail call fastcc void @draw_bounding_volume(ptr noundef nonnull %14, i8 noundef zeroext %91) #21
  br label %327

92:                                               ; preds = %65
  br i1 %27, label %97, label %93

93:                                               ; preds = %92
  %94 = icmp eq i32 %73, 0
  %95 = icmp eq i32 %70, 0
  %96 = select i1 %94, i1 %95, i1 false
  br i1 %96, label %97, label %100

97:                                               ; preds = %93, %92
  tail call void @glPointSize(float noundef 1.500000e+00) #20
  %98 = getelementptr inbounds %struct.DerivedMesh, ptr %30, i64 0, i32 82
  %99 = load ptr, ptr %98, align 8, !tbaa !453
  tail call void %99(ptr noundef nonnull %30) #20
  tail call void @glPointSize(float noundef 1.000000e+00) #20
  br label %327

100:                                              ; preds = %93
  %101 = icmp eq i8 %5, 2
  %102 = or i1 %101, %94
  br i1 %102, label %329, label %103

103:                                              ; preds = %100
  br i1 %45, label %104, label %109

104:                                              ; preds = %103
  %105 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 27
  %106 = load i32, ptr %105, align 8, !tbaa !41
  %107 = and i32 %106, 16
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104, %103
  %110 = tail call zeroext i8 @check_object_draw_texture(ptr noundef nonnull %0, ptr noundef %2, i8 noundef zeroext %5) #21, !range !18
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %207, label %112

112:                                              ; preds = %109, %104
  %113 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 28
  %114 = load i16, ptr %113, align 8, !tbaa !83
  %115 = and i16 %114, 2048
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %135, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 29
  %119 = load i16, ptr %118, align 2, !tbaa !15
  %120 = and i16 %119, 4
  %121 = icmp eq i16 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 4
  %124 = load i32, ptr %123, align 8, !tbaa !75
  %125 = and i32 %124, 1
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %122
  %128 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !16
  %129 = and i32 %128, 32
  %130 = icmp eq i32 %129, 0
  %131 = xor i1 %44, true
  %132 = and i1 %66, %131
  %133 = select i1 %130, i1 %132, i1 false
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  tail call fastcc void @draw_mesh_object_outline(ptr noundef nonnull %2, ptr noundef nonnull %14, ptr noundef nonnull %30) #21
  br label %135

135:                                              ; preds = %134, %127, %122, %117, %112
  %136 = tail call zeroext i8 @draw_glsl_material(ptr noundef nonnull %0, ptr noundef nonnull %14, ptr noundef nonnull %2, i8 noundef zeroext %5) #21, !range !18
  %137 = icmp ne i8 %136, 0
  %138 = and i32 %57, 1
  %139 = icmp eq i32 %138, 0
  %140 = select i1 %137, i1 %139, i1 false
  br i1 %140, label %141, label %193

141:                                              ; preds = %135
  %142 = load i16, ptr %74, align 8, !tbaa !68
  %143 = and i16 %142, 4
  %144 = icmp eq i16 %143, 0
  %145 = select i1 %144, i32 2305, i32 2304
  tail call void @glFrontFace(i32 noundef %145) #20
  %146 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 29
  %147 = load i16, ptr %146, align 2, !tbaa !15
  %148 = and i16 %147, 8192
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %187, label %150

150:                                              ; preds = %141
  %151 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !454
  %153 = icmp eq ptr %152, null
  br i1 %153, label %187, label %154

154:                                              ; preds = %150
  %155 = tail call ptr @BKE_paint_get_active(ptr noundef nonnull %0) #20
  %156 = icmp eq ptr %155, null
  br i1 %156, label %187, label %157

157:                                              ; preds = %154
  call void @llvm.lifetime.start.p0(i64 2564, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #22
  %158 = getelementptr inbounds %struct.Paint, ptr %155, i64 0, i32 4
  %159 = load i32, ptr %158, align 4, !tbaa !455
  %160 = and i32 %159, 2
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %168, label %162

162:                                              ; preds = %157
  %163 = getelementptr inbounds %struct.RegionView3D, ptr %3, i64 0, i32 32
  %164 = load i16, ptr %163, align 2, !tbaa !60
  %165 = trunc i16 %164 to i8
  %166 = lshr i8 %165, 3
  %167 = and i8 %166, 1
  br label %168

168:                                              ; preds = %162, %157
  %169 = phi i8 [ 0, %157 ], [ %167, %162 ]
  %170 = load ptr, ptr %151, align 8, !tbaa !454
  %171 = getelementptr inbounds %struct.SculptSession, ptr %170, i64 0, i32 21
  %172 = load i8, ptr %171, align 8, !tbaa !456
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %182, label %174

174:                                              ; preds = %168
  %175 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 14
  %176 = load i16, ptr %175, align 4, !tbaa !458
  %177 = and i16 %176, 2
  %178 = icmp eq i16 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %174
  call void @ED_sculpt_redraw_planes_get(ptr noundef nonnull %10, ptr noundef nonnull %1, ptr noundef %3, ptr noundef nonnull %14) #20
  %180 = load ptr, ptr %151, align 8, !tbaa !454
  %181 = getelementptr inbounds %struct.SculptSession, ptr %180, i64 0, i32 21
  store i8 0, ptr %181, align 8, !tbaa !456
  br label %182

182:                                              ; preds = %174, %179, %168
  %183 = phi ptr [ %10, %179 ], [ null, %174 ], [ null, %168 ]
  %184 = call i32 @GPU_enable_material(i32 noundef 1, ptr noundef nonnull %9) #20
  %185 = getelementptr inbounds %struct.DerivedMesh, ptr %30, i64 0, i32 86
  %186 = load ptr, ptr %185, align 8, !tbaa !429
  call void %186(ptr noundef nonnull %30, ptr noundef %183, i8 noundef zeroext %169, ptr noundef null) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 2564, ptr nonnull %9) #22
  br label %190

187:                                              ; preds = %154, %150, %141
  %188 = getelementptr inbounds %struct.DerivedMesh, ptr %30, i64 0, i32 88
  %189 = load ptr, ptr %188, align 8, !tbaa !459
  tail call void %189(ptr noundef nonnull %30, ptr noundef nonnull @GPU_enable_material) #20
  br label %190

190:                                              ; preds = %187, %182
  %191 = phi i1 [ true, %182 ], [ false, %187 ]
  call void @GPU_disable_material() #20
  call void @glFrontFace(i32 noundef 2305) #20
  br i1 %44, label %192, label %194

192:                                              ; preds = %190
  call void @draw_mesh_face_select(ptr noundef %3, ptr noundef %16, ptr noundef nonnull %30) #20
  br label %327

193:                                              ; preds = %135
  tail call void @draw_mesh_textured(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %14, ptr noundef nonnull %30, i32 noundef %57) #20
  br i1 %44, label %327, label %195

194:                                              ; preds = %190
  br i1 %191, label %327, label %195

195:                                              ; preds = %194, %193
  %196 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 29
  %197 = load i16, ptr %196, align 2, !tbaa !15
  %198 = and i16 %197, 4
  %199 = icmp eq i16 %198, 0
  br i1 %199, label %200, label %327

200:                                              ; preds = %195
  %201 = and i16 %7, 2
  %202 = icmp eq i16 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  call void @glColor3ubv(ptr noundef %6) #20
  br label %204

204:                                              ; preds = %203, %200
  %205 = getelementptr inbounds %struct.DerivedMesh, ptr %30, i64 0, i32 85
  %206 = load ptr, ptr %205, align 8, !tbaa !460
  call void %206(ptr noundef nonnull %30) #20
  br label %327

207:                                              ; preds = %109
  switch i8 %5, label %327 [
    i8 3, label %208
    i8 100, label %326
  ]

208:                                              ; preds = %207
  %209 = and i32 %57, 1
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %242, label %211

211:                                              ; preds = %208
  %212 = and i16 %7, 3
  %213 = icmp eq i16 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %211
  %215 = getelementptr inbounds %struct.DerivedMesh, ptr %30, i64 0, i32 86
  %216 = load ptr, ptr %215, align 8, !tbaa !429
  tail call void %216(ptr noundef nonnull %30, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull @GPU_enable_material) #20
  br label %327

217:                                              ; preds = %211
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, ptr noundef nonnull align 16 dereferenceable(16) @__const.draw_mesh_fancy.spec, i64 16, i1 false)
  %218 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 28
  %219 = load i16, ptr %218, align 8, !tbaa !83
  %220 = and i16 %219, 2048
  %221 = icmp eq i16 %220, 0
  br i1 %221, label %238, label %222

222:                                              ; preds = %217
  %223 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 29
  %224 = load i16, ptr %223, align 2, !tbaa !15
  %225 = and i16 %224, 4
  %226 = icmp eq i16 %225, 0
  br i1 %226, label %227, label %238

227:                                              ; preds = %222
  %228 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 4
  %229 = load i32, ptr %228, align 8, !tbaa !75
  %230 = and i32 %229, 1
  %231 = icmp ne i32 %230, 0
  %232 = and i1 %66, %231
  br i1 %232, label %233, label %238

233:                                              ; preds = %227
  %234 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 2
  %235 = load ptr, ptr %234, align 8, !tbaa !454
  %236 = icmp eq ptr %235, null
  br i1 %236, label %237, label %238

237:                                              ; preds = %233
  tail call fastcc void @draw_mesh_object_outline(ptr noundef nonnull %2, ptr noundef nonnull %14, ptr noundef nonnull %30) #21
  br label %238

238:                                              ; preds = %237, %233, %227, %222, %217
  tail call void @GPU_end_object_materials() #20
  %239 = tail call i32 @GPU_enable_material(i32 noundef 0, ptr noundef null) #20
  tail call void @glColorMaterial(i32 noundef 1032, i32 noundef 4610) #20
  call void @glMaterialfv(i32 noundef 1032, i32 noundef 4610, ptr noundef nonnull %11) #20
  call void @glColorMaterial(i32 noundef 1032, i32 noundef 4609) #20
  call void @glEnable(i32 noundef 2896) #20
  call void @glEnable(i32 noundef 2903) #20
  %240 = getelementptr inbounds %struct.DerivedMesh, ptr %30, i64 0, i32 89
  %241 = load ptr, ptr %240, align 8, !tbaa !421
  call void %241(ptr noundef nonnull %30, ptr noundef null, ptr noundef nonnull @draw_dm_override_material_color, ptr noundef null, ptr noundef null, i32 noundef 1) #20
  call void @glDisable(i32 noundef 2903) #20
  call void @glDisable(i32 noundef 2896) #20
  call void @GPU_disable_material() #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #22
  br label %327

242:                                              ; preds = %208
  %243 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 28
  %244 = load i16, ptr %243, align 8, !tbaa !83
  %245 = and i16 %244, 2048
  %246 = icmp eq i16 %245, 0
  br i1 %246, label %263, label %247

247:                                              ; preds = %242
  %248 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 29
  %249 = load i16, ptr %248, align 2, !tbaa !15
  %250 = and i16 %249, 4
  %251 = icmp eq i16 %250, 0
  br i1 %251, label %252, label %263

252:                                              ; preds = %247
  %253 = getelementptr inbounds %struct.Base, ptr %4, i64 0, i32 4
  %254 = load i32, ptr %253, align 8, !tbaa !75
  %255 = and i32 %254, 1
  %256 = icmp ne i32 %255, 0
  %257 = and i1 %66, %256
  br i1 %257, label %258, label %263

258:                                              ; preds = %252
  %259 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 2
  %260 = load ptr, ptr %259, align 8, !tbaa !454
  %261 = icmp eq ptr %260, null
  br i1 %261, label %262, label %263

262:                                              ; preds = %258
  tail call fastcc void @draw_mesh_object_outline(ptr noundef nonnull %2, ptr noundef nonnull %14, ptr noundef nonnull %30) #21
  br label %263

263:                                              ; preds = %262, %258, %252, %247, %242
  %264 = getelementptr inbounds %struct.Mesh, ptr %16, i64 0, i32 38
  %265 = load i16, ptr %264, align 2, !tbaa !448
  %266 = lshr i16 %265, 2
  %267 = and i16 %266, 1
  %268 = zext nneg i16 %267 to i32
  tail call void @glLightModeli(i32 noundef 2898, i32 noundef %268) #20
  tail call void @glEnable(i32 noundef 2896) #20
  %269 = load i16, ptr %74, align 8, !tbaa !68
  %270 = and i16 %269, 4
  %271 = icmp eq i16 %270, 0
  %272 = select i1 %271, i32 2305, i32 2304
  tail call void @glFrontFace(i32 noundef %272) #20
  %273 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 2
  %274 = load ptr, ptr %273, align 8, !tbaa !454
  %275 = icmp eq ptr %274, null
  br i1 %275, label %308, label %276

276:                                              ; preds = %263
  %277 = tail call ptr @BKE_paint_get_active(ptr noundef nonnull %0) #20
  %278 = icmp eq ptr %277, null
  br i1 %278, label %308, label %279

279:                                              ; preds = %276
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #22
  %280 = getelementptr inbounds %struct.Paint, ptr %277, i64 0, i32 4
  %281 = load i32, ptr %280, align 4, !tbaa !455
  %282 = and i32 %281, 2
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %290, label %284

284:                                              ; preds = %279
  %285 = getelementptr inbounds %struct.RegionView3D, ptr %3, i64 0, i32 32
  %286 = load i16, ptr %285, align 2, !tbaa !60
  %287 = trunc i16 %286 to i8
  %288 = lshr i8 %287, 3
  %289 = and i8 %288, 1
  br label %290

290:                                              ; preds = %284, %279
  %291 = phi i8 [ 0, %279 ], [ %289, %284 ]
  %292 = load ptr, ptr %273, align 8, !tbaa !454
  %293 = getelementptr inbounds %struct.SculptSession, ptr %292, i64 0, i32 21
  %294 = load i8, ptr %293, align 8, !tbaa !456
  %295 = icmp eq i8 %294, 0
  br i1 %295, label %304, label %296

296:                                              ; preds = %290
  %297 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 14
  %298 = load i16, ptr %297, align 4, !tbaa !458
  %299 = and i16 %298, 2
  %300 = icmp eq i16 %299, 0
  br i1 %300, label %304, label %301

301:                                              ; preds = %296
  call void @ED_sculpt_redraw_planes_get(ptr noundef nonnull %12, ptr noundef nonnull %1, ptr noundef %3, ptr noundef nonnull %14) #20
  %302 = load ptr, ptr %273, align 8, !tbaa !454
  %303 = getelementptr inbounds %struct.SculptSession, ptr %302, i64 0, i32 21
  store i8 0, ptr %303, align 8, !tbaa !456
  br label %304

304:                                              ; preds = %296, %301, %290
  %305 = phi ptr [ %12, %301 ], [ null, %296 ], [ null, %290 ]
  %306 = getelementptr inbounds %struct.DerivedMesh, ptr %30, i64 0, i32 86
  %307 = load ptr, ptr %306, align 8, !tbaa !429
  call void %307(ptr noundef nonnull %30, ptr noundef %305, i8 noundef zeroext %291, ptr noundef nonnull @GPU_enable_material) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #22
  br label %311

308:                                              ; preds = %276, %263
  %309 = getelementptr inbounds %struct.DerivedMesh, ptr %30, i64 0, i32 86
  %310 = load ptr, ptr %309, align 8, !tbaa !429
  tail call void %310(ptr noundef nonnull %30, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull @GPU_enable_material) #20
  br label %311

311:                                              ; preds = %308, %304
  call void @GPU_disable_material() #20
  call void @glFrontFace(i32 noundef 2305) #20
  call void @glDisable(i32 noundef 2896) #20
  call void @glLightModeli(i32 noundef 2898, i32 noundef 0) #20
  %312 = load ptr, ptr %273, align 8, !tbaa !454
  %313 = icmp eq ptr %312, null
  br i1 %313, label %314, label %327

314:                                              ; preds = %311
  %315 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 29
  %316 = load i16, ptr %315, align 2, !tbaa !15
  %317 = and i16 %316, 4
  %318 = icmp eq i16 %317, 0
  br i1 %318, label %319, label %327

319:                                              ; preds = %314
  %320 = and i16 %7, 2
  %321 = icmp eq i16 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %319
  call void @glColor3ubv(ptr noundef %6) #20
  br label %323

323:                                              ; preds = %322, %319
  %324 = getelementptr inbounds %struct.DerivedMesh, ptr %30, i64 0, i32 85
  %325 = load ptr, ptr %324, align 8, !tbaa !460
  call void %325(ptr noundef nonnull %30) #20
  br label %327

326:                                              ; preds = %207
  tail call void @draw_mesh_paint(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %14, ptr noundef nonnull %30, i32 noundef %57) #20
  br i1 %45, label %369, label %383

327:                                              ; preds = %192, %207, %311, %314, %323, %193, %204, %195, %194, %97, %238, %214, %85, %89
  %328 = icmp eq i32 %67, 0
  br i1 %328, label %368, label %329

329:                                              ; preds = %100, %327
  %330 = phi i32 [ %67, %327 ], [ 1, %100 ]
  %331 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 29
  %332 = load i16, ptr %331, align 2, !tbaa !15
  %333 = and i16 %332, 4
  %334 = icmp eq i16 %333, 0
  br i1 %334, label %339, label %335

335:                                              ; preds = %329
  %336 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 24
  %337 = load i16, ptr %336, align 8, !tbaa !5
  %338 = icmp slt i16 %337, 3
  br i1 %338, label %339, label %368

339:                                              ; preds = %329, %335
  %340 = and i16 %7, 2
  %341 = icmp eq i16 %340, 0
  br i1 %341, label %342, label %350

342:                                              ; preds = %339
  br i1 %45, label %343, label %349

343:                                              ; preds = %342
  %344 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 27
  %345 = load i32, ptr %344, align 8, !tbaa !41
  %346 = and i32 %345, 32
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %349, label %348

348:                                              ; preds = %343
  call fastcc void @ob_wire_color_blend_theme_id(ptr noundef %6, float noundef 0x3FC3333340000000) #21
  br label %350

349:                                              ; preds = %343, %342
  call void @glColor3ubv(ptr noundef %6) #20
  br label %350

350:                                              ; preds = %348, %349, %339
  %351 = icmp ne i8 %5, 2
  %352 = icmp eq i32 %330, 2
  %353 = and i1 %351, %352
  br i1 %353, label %354, label %355

354:                                              ; preds = %350
  call void @ED_view3d_polygon_offset(ptr noundef %3, float noundef 1.000000e+00) #20
  call void @glDepthMask(i8 noundef zeroext 0) #20
  br label %355

355:                                              ; preds = %354, %350
  %356 = getelementptr inbounds %struct.DerivedMesh, ptr %30, i64 0, i32 84
  %357 = load ptr, ptr %356, align 8, !tbaa !428
  %358 = icmp eq i8 %5, 2
  %359 = icmp eq i32 %73, 0
  %360 = select i1 %358, i1 true, i1 %359
  %361 = zext i1 %360 to i8
  %362 = getelementptr inbounds %struct.Object, ptr %14, i64 0, i32 86
  %363 = load i16, ptr %362, align 4, !tbaa !78
  %364 = lshr i16 %363, 8
  %365 = trunc i16 %364 to i8
  %366 = and i8 %365, 1
  call void %357(ptr noundef nonnull %30, i8 noundef zeroext %361, i8 noundef zeroext %366) #20
  br i1 %353, label %367, label %368

367:                                              ; preds = %355
  call void @glDepthMask(i8 noundef zeroext 1) #20
  call void @ED_view3d_polygon_offset(ptr noundef %3, float noundef 0.000000e+00) #20
  br i1 %45, label %369, label %383

368:                                              ; preds = %355, %335, %327
  br i1 %45, label %369, label %383

369:                                              ; preds = %367, %326, %368
  %370 = call zeroext i8 @BKE_paint_select_vert_test(ptr noundef nonnull %14) #20
  %371 = icmp eq i8 %370, 0
  br i1 %371, label %383, label %372

372:                                              ; preds = %369
  %373 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 28
  %374 = load i16, ptr %373, align 8, !tbaa !83
  %375 = and i16 %374, 4096
  call void @glColor3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #20
  %376 = call float @UI_GetThemeValuef(i32 noundef 36) #20
  call void @glPointSize(float noundef %376) #20
  %377 = icmp eq i16 %375, 0
  br i1 %377, label %378, label %380

378:                                              ; preds = %372
  call void @glDisable(i32 noundef 2929) #20
  %379 = load ptr, ptr %15, align 8, !tbaa !85
  call fastcc void @drawSelectedVertices(ptr noundef nonnull %30, ptr noundef %379) #21
  call void @glEnable(i32 noundef 2929) #20
  br label %382

380:                                              ; preds = %372
  call void @ED_view3d_polygon_offset(ptr noundef %3, float noundef 1.000000e+00) #20
  %381 = load ptr, ptr %15, align 8, !tbaa !85
  call fastcc void @drawSelectedVertices(ptr noundef nonnull %30, ptr noundef %381) #21
  call void @ED_view3d_polygon_offset(ptr noundef %3, float noundef 0.000000e+00) #20
  br label %382

382:                                              ; preds = %380, %378
  call void @glPointSize(float noundef 1.000000e+00) #20
  br label %383

383:                                              ; preds = %367, %326, %382, %369, %368
  %384 = getelementptr inbounds %struct.DerivedMesh, ptr %30, i64 0, i32 95
  %385 = load ptr, ptr %384, align 8, !tbaa !178
  call void %385(ptr noundef nonnull %30) #20
  br label %386

386:                                              ; preds = %43, %383
  ret void
}

; Function Attrs: optsize
declare ptr @BM_mesh_active_face_get(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @check_object_draw_editweight(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 36
  %4 = load i32, ptr %3, align 8, !tbaa !449
  %5 = and i32 %4, 16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 14
  %9 = load i32, ptr %8, align 8, !tbaa !461
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %2
  br label %12

12:                                               ; preds = %7, %11
  %13 = phi i8 [ 0, %11 ], [ 1, %7 ]
  ret i8 %13
}

; Function Attrs: optsize
declare void @draw_mesh_paint_weight_faces(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @draw_em_fancy__setFaceOpts(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !413
  %4 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !416
  %6 = icmp sgt i32 %5, %1
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = tail call ptr @BM_face_at_index(ptr noundef nonnull %3, i32 noundef %1) #20
  %9 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %8, i8 noundef zeroext 2) #21, !range !462
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.BMFace, ptr %8, i64 0, i32 5
  %13 = load i16, ptr %12, align 8, !tbaa !463
  %14 = sext i16 %13 to i32
  %15 = add nsw i32 %14, 1
  %16 = tail call i32 @GPU_enable_material(i32 noundef %15, ptr noundef null) #20
  br label %17

17:                                               ; preds = %7, %2, %11
  %18 = phi i32 [ 1, %11 ], [ 1, %2 ], [ 0, %7 ]
  ret i32 %18
}

; Function Attrs: optsize
declare void @draw_mesh_paint_weight_edges(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @draw_dm_edges__setDrawOptions(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @BM_edge_at_index(ptr noundef %0, i32 noundef %1) #20
  %4 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %3, i8 noundef zeroext 2) #21, !range !462
  %5 = icmp eq i8 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: optsize
declare void @glColorMask(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glFrontFace(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @draw_em_fancy__setGLSLFaceOpts(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !413
  %4 = getelementptr inbounds %struct.BMesh, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !416
  %6 = icmp sgt i32 %5, %1
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = tail call ptr @BM_face_at_index(ptr noundef nonnull %3, i32 noundef %1) #20
  %9 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %8, i8 noundef zeroext 2) #21, !range !462
  %10 = icmp eq i8 %9, 0
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi i32 [ 1, %2 ], [ %11, %7 ]
  ret i32 %13
}

; Function Attrs: optsize
declare void @draw_mesh_textured(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glLightModeli(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_ThemeColorBlend(i32 noundef, i32 noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_GetThemeColor4ubv(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_dm_faces_sel(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.drawDMFacesSel_userData, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #22
  %8 = getelementptr inbounds %struct.drawDMFacesSel_userData, ptr %7, i64 0, i32 1
  store ptr %1, ptr %8, align 8, !tbaa !466
  store ptr %2, ptr %7, align 8, !tbaa !53
  %9 = load ptr, ptr %0, align 8, !tbaa !413
  %10 = getelementptr inbounds %struct.drawDMFacesSel_userData, ptr %7, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !468
  %11 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 1
  store ptr %3, ptr %11, align 8, !tbaa !53
  %12 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 2
  store ptr %4, ptr %12, align 8, !tbaa !53
  %13 = getelementptr inbounds %struct.drawDMFacesSel_userData, ptr %7, i64 0, i32 3
  store ptr %5, ptr %13, align 8, !tbaa !469
  %14 = tail call ptr @DM_get_tessface_data_layer(ptr noundef %1, i32 noundef 7) #20
  %15 = getelementptr inbounds %struct.drawDMFacesSel_userData, ptr %7, i64 0, i32 4
  store ptr %14, ptr %15, align 8, !tbaa !470
  %16 = tail call ptr @DM_get_poly_data_layer(ptr noundef %1, i32 noundef 7) #20
  %17 = getelementptr inbounds %struct.drawDMFacesSel_userData, ptr %7, i64 0, i32 5
  store ptr %16, ptr %17, align 8, !tbaa !471
  %18 = icmp eq ptr %14, null
  %19 = icmp eq ptr %16, null
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  br label %22

22:                                               ; preds = %21, %6
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 89
  %24 = load ptr, ptr %23, align 8, !tbaa !421
  call void %24(ptr noundef %1, ptr noundef nonnull @draw_dm_faces_sel__setDrawOptions, ptr noundef nonnull @GPU_enable_material, ptr noundef nonnull @draw_dm_faces_sel__compareDrawOptions, ptr noundef nonnull %7, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_em_fancy_edges(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr noundef %4, i16 noundef signext %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca [4 x i8], align 1
  %9 = alloca [4 x i8], align 1
  %10 = alloca [4 x i8], align 1
  %11 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %12 = load ptr, ptr %11, align 8, !tbaa !213
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #22
  call void @UI_GetThemeColor4ubv(i32 noundef 39, ptr noundef nonnull %9) #20
  call void @UI_GetThemeColor4ubv(i32 noundef 27, ptr noundef nonnull %8) #20
  call void @UI_GetThemeColor4ubv(i32 noundef 127, ptr noundef nonnull %10) #20
  %13 = icmp eq i16 %5, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 3
  store i8 0, ptr %15, align 1, !tbaa !55
  br label %16

16:                                               ; preds = %14, %7
  %17 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 3
  %18 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 3
  %19 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 47
  %20 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 28
  %21 = getelementptr inbounds %struct.ToolSettings, ptr %12, i64 0, i32 8
  %22 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 36
  %23 = getelementptr inbounds %struct.DerivedMesh, ptr %4, i64 0, i32 93
  %24 = getelementptr inbounds %struct.ToolSettings, ptr %12, i64 0, i32 62
  br label %25

25:                                               ; preds = %70, %16
  %26 = phi i1 [ true, %16 ], [ false, %70 ]
  br i1 %26, label %27, label %35

27:                                               ; preds = %25
  %28 = load i8, ptr %19, align 8, !tbaa !62
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %70, label %30

30:                                               ; preds = %27
  %31 = load i16, ptr %20, align 8, !tbaa !83
  %32 = and i16 %31, 4096
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %70

34:                                               ; preds = %30
  call void @glEnable(i32 noundef 3042) #20
  call void @glDisable(i32 noundef 2929) #20
  store i8 85, ptr %17, align 1, !tbaa !55
  br i1 %13, label %36, label %38

35:                                               ; preds = %25
  store i8 -1, ptr %17, align 1, !tbaa !55
  br i1 %13, label %36, label %38

36:                                               ; preds = %35, %34
  %37 = phi i8 [ 85, %34 ], [ -1, %35 ]
  store i8 %37, ptr %18, align 1, !tbaa !55
  br label %38

38:                                               ; preds = %36, %35, %34
  %39 = load i16, ptr %21, align 2, !tbaa !415
  %40 = icmp eq i16 %39, 4
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  call fastcc void @draw_dm_edges_sel(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %6) #21
  br label %68

42:                                               ; preds = %38
  %43 = load i32, ptr %22, align 8, !tbaa !449
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  %46 = and i16 %39, 2
  %47 = icmp eq i16 %46, 0
  %48 = and i1 %47, %45
  br i1 %48, label %66, label %49

49:                                               ; preds = %42
  %50 = load ptr, ptr %23, align 8, !tbaa !472
  %51 = icmp eq ptr %50, null
  br i1 %51, label %65, label %52

52:                                               ; preds = %49
  %53 = and i16 %39, 1
  %54 = icmp eq i16 %53, 0
  %55 = and i32 %43, 16
  %56 = icmp eq i32 %55, 0
  %57 = and i1 %54, %56
  br i1 %57, label %65, label %58

58:                                               ; preds = %52
  call void @glShadeModel(i32 noundef 7425) #20
  %59 = call fastcc zeroext i8 @draw_dm_edges_weight_check(ptr noundef nonnull %3, ptr noundef %2) #21, !range !18
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = load i8, ptr %24, align 2, !tbaa !473
  call fastcc void @draw_dm_edges_weight_interp(ptr noundef %0, ptr noundef nonnull %4, i8 noundef zeroext %62) #21
  br label %64

63:                                               ; preds = %58
  call fastcc void @draw_dm_edges_sel_interp(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %8, ptr noundef nonnull %9) #21
  br label %64

64:                                               ; preds = %63, %61
  call void @glShadeModel(i32 noundef 7424) #20
  br label %68

65:                                               ; preds = %52, %49
  call fastcc void @draw_dm_edges_sel(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %6) #21
  br label %68

66:                                               ; preds = %42
  br i1 %13, label %67, label %68

67:                                               ; preds = %66
  call void @glColor4ubv(ptr noundef nonnull %8) #20
  call fastcc void @draw_dm_edges(ptr noundef %0, ptr noundef %4) #21
  br label %68

68:                                               ; preds = %65, %64, %67, %66, %41
  br i1 %26, label %69, label %71

69:                                               ; preds = %68
  call void @glDisable(i32 noundef 3042) #20
  call void @glEnable(i32 noundef 2929) #20
  br label %70

70:                                               ; preds = %69, %27, %30
  br label %25, !llvm.loop !474

71:                                               ; preds = %68
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_dm_edges_seams(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 92
  %4 = load ptr, ptr %3, align 8, !tbaa !426
  %5 = load ptr, ptr %0, align 8, !tbaa !413
  tail call void %4(ptr noundef %1, ptr noundef nonnull @draw_dm_edges_seams__setDrawOptions, ptr noundef %5) #20
  ret void
}

; Function Attrs: optsize
declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_dm_edges_sharp(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 92
  %4 = load ptr, ptr %3, align 8, !tbaa !426
  %5 = load ptr, ptr %0, align 8, !tbaa !413
  tail call void %4(ptr noundef %1, ptr noundef nonnull @draw_dm_edges_sharp__setDrawOptions, ptr noundef %5) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_dm_creases(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.drawDMLayer_userData, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %4 = load ptr, ptr %0, align 8, !tbaa !413
  store ptr %4, ptr %3, align 8, !tbaa !475
  %5 = getelementptr inbounds %struct.BMesh, ptr %4, i64 0, i32 25
  %6 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %5, i32 noundef 30) #20
  %7 = getelementptr inbounds %struct.drawDMLayer_userData, ptr %3, i64 0, i32 1
  store i32 %6, ptr %7, align 8, !tbaa !477
  %8 = icmp eq i32 %6, -1
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  tail call void @glLineWidth(float noundef 3.000000e+00) #20
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 92
  %11 = load ptr, ptr %10, align 8, !tbaa !426
  call void %11(ptr noundef %1, ptr noundef nonnull @draw_dm_creases__setDrawOptions, ptr noundef nonnull %3) #20
  call void @glLineWidth(float noundef 1.000000e+00) #20
  br label %12

12:                                               ; preds = %9, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_dm_bweights(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.drawDMLayer_userData, align 8
  %5 = alloca %struct.drawDMLayer_userData, align 8
  %6 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !213
  %8 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 8
  %9 = load i16, ptr %8, align 2, !tbaa !415
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  %13 = load ptr, ptr %0, align 8, !tbaa !413
  store ptr %13, ptr %4, align 8, !tbaa !475
  %14 = getelementptr inbounds %struct.BMesh, ptr %13, i64 0, i32 24
  %15 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %14, i32 noundef 29) #20
  %16 = getelementptr inbounds %struct.drawDMLayer_userData, ptr %4, i64 0, i32 1
  store i32 %15, ptr %16, align 8, !tbaa !477
  %17 = icmp eq i32 %15, -1
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  %19 = tail call float @UI_GetThemeValuef(i32 noundef 36) #20
  %20 = fadd float %19, 2.000000e+00
  tail call void @glPointSize(float noundef %20) #20
  tail call void @bglBegin(i32 noundef 0) #20
  %21 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 71
  %22 = load ptr, ptr %21, align 8, !tbaa !427
  call void %22(ptr noundef %2, ptr noundef nonnull @draw_dm_bweights__mapFunc, ptr noundef nonnull %4, i32 noundef 0) #20
  call void @bglEnd() #20
  br label %23

23:                                               ; preds = %18, %12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  br label %34

24:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #22
  %25 = load ptr, ptr %0, align 8, !tbaa !413
  store ptr %25, ptr %5, align 8, !tbaa !475
  %26 = getelementptr inbounds %struct.BMesh, ptr %25, i64 0, i32 25
  %27 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %26, i32 noundef 29) #20
  %28 = getelementptr inbounds %struct.drawDMLayer_userData, ptr %5, i64 0, i32 1
  store i32 %27, ptr %28, align 8, !tbaa !477
  %29 = icmp eq i32 %27, -1
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  tail call void @glLineWidth(float noundef 3.000000e+00) #20
  %31 = getelementptr inbounds %struct.DerivedMesh, ptr %2, i64 0, i32 92
  %32 = load ptr, ptr %31, align 8, !tbaa !426
  call void %32(ptr noundef %2, ptr noundef nonnull @draw_dm_bweights__setDrawOptions, ptr noundef nonnull %5) #20
  call void @glLineWidth(float noundef 1.000000e+00) #20
  br label %33

33:                                               ; preds = %30, %24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #22
  br label %34

34:                                               ; preds = %33, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_em_fancy_verts(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca [4 x i8], align 1
  %9 = alloca [4 x i8], align 1
  %10 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !213
  %12 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 47
  %13 = load i8, ptr %12, align 8, !tbaa !62
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %7
  tail call void @glDepthMask(i8 noundef zeroext 0) #20
  br label %16

16:                                               ; preds = %15, %7
  %17 = getelementptr inbounds [4 x i8], ptr %9, i64 0, i64 3
  %18 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 3
  %19 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 28
  %20 = getelementptr inbounds %struct.ToolSettings, ptr %11, i64 0, i32 8
  %21 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 87
  br label %22

22:                                               ; preds = %16, %61
  %23 = phi i1 [ true, %16 ], [ false, %61 ]
  %24 = phi i8 [ 0, %16 ], [ 1, %61 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #22
  %25 = select i1 %23, i32 33, i32 34
  call void @UI_GetThemeColor3ubv(i32 noundef %25, ptr noundef nonnull %8) #20
  %26 = select i1 %23, i32 27, i32 47
  call void @UI_GetThemeColor3ubv(i32 noundef %26, ptr noundef nonnull %9) #20
  br label %27

27:                                               ; preds = %60, %22
  %28 = phi i1 [ true, %22 ], [ false, %60 ]
  %29 = call float @UI_GetThemeValuef(i32 noundef 36) #20
  %30 = call float @UI_GetThemeValuef(i32 noundef 48) #20
  %31 = insertelement <2 x float> poison, float %29, i64 0
  %32 = insertelement <2 x float> %31, float %30, i64 1
  br i1 %28, label %33, label %44

33:                                               ; preds = %27
  %34 = load i8, ptr %12, align 8, !tbaa !62
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %60, label %36

36:                                               ; preds = %33
  %37 = load i16, ptr %19, align 8, !tbaa !83
  %38 = and i16 %37, 4096
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %36
  call void @glDisable(i32 noundef 2929) #20
  call void @glEnable(i32 noundef 3042) #20
  %41 = fcmp ogt <2 x float> %32, <float 0x4000CCCCC0000000, float 0x4000CCCCC0000000>
  %42 = fmul <2 x float> %32, <float 5.000000e-01, float 5.000000e-01>
  %43 = select <2 x i1> %41, <2 x float> %42, <2 x float> %32
  br label %44

44:                                               ; preds = %27, %40
  %45 = phi i8 [ 100, %40 ], [ -1, %27 ]
  %46 = phi <2 x float> [ %43, %40 ], [ %32, %27 ]
  store i8 %45, ptr %17, align 1, !tbaa !55
  store i8 %45, ptr %18, align 1, !tbaa !55
  %47 = load i16, ptr %20, align 2, !tbaa !415
  %48 = and i16 %47, 1
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  %51 = extractelement <2 x float> %46, i64 0
  call void @glPointSize(float noundef %51) #20
  call void @glColor4ubv(ptr noundef nonnull %8) #20
  call fastcc void @draw_dm_verts(ptr noundef %3, ptr noundef %4, i8 noundef zeroext %24, ptr noundef %5, ptr noundef %6) #21
  br label %52

52:                                               ; preds = %50, %44
  %53 = load i8, ptr %21, align 2, !tbaa !82
  %54 = call fastcc zeroext i8 @check_ob_drawface_dot(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %53) #21, !range !18
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = extractelement <2 x float> %46, i64 1
  call void @glPointSize(float noundef %57) #20
  call void @glColor4ubv(ptr noundef nonnull %9) #20
  call fastcc void @draw_dm_face_centers(ptr noundef %3, ptr noundef %4, i8 noundef zeroext %24) #21
  br label %58

58:                                               ; preds = %56, %52
  br i1 %28, label %59, label %61

59:                                               ; preds = %58
  call void @glDisable(i32 noundef 3042) #20
  call void @glEnable(i32 noundef 2929) #20
  br label %60

60:                                               ; preds = %59, %33, %36
  br label %27, !llvm.loop !478

61:                                               ; preds = %58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #22
  br i1 %23, label %22, label %62, !llvm.loop !479

62:                                               ; preds = %61
  %63 = load i8, ptr %12, align 8, !tbaa !62
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  call void @glDepthMask(i8 noundef zeroext 1) #20
  br label %66

66:                                               ; preds = %65, %62
  call void @glPointSize(float noundef 1.000000e+00) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_dm_face_normals(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.drawDMNormal_userData, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #22
  %6 = load ptr, ptr %0, align 8, !tbaa !413
  store ptr %6, ptr %5, align 8, !tbaa !480
  %7 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !213
  %9 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 6
  %10 = load float, ptr %9, align 8, !tbaa !221
  %11 = getelementptr inbounds %struct.drawDMNormal_userData, ptr %5, i64 0, i32 2
  store float %10, ptr %11, align 4, !tbaa !482
  call fastcc void @calcDrawDMNormalScale(ptr noundef %2, ptr noundef nonnull %5) #21
  call void @glBegin(i32 noundef 1) #20
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 74
  %13 = load ptr, ptr %12, align 8, !tbaa !422
  call void %13(ptr noundef %3, ptr noundef nonnull @draw_dm_face_normals__mapFunc, ptr noundef nonnull %5, i32 noundef 1) #20
  call void @glEnd() #20
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_dm_vert_normals(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.drawDMNormal_userData, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #22
  %6 = load ptr, ptr %0, align 8, !tbaa !413
  store ptr %6, ptr %5, align 8, !tbaa !480
  %7 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !213
  %9 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 6
  %10 = load float, ptr %9, align 8, !tbaa !221
  %11 = getelementptr inbounds %struct.drawDMNormal_userData, ptr %5, i64 0, i32 2
  store float %10, ptr %11, align 4, !tbaa !482
  call fastcc void @calcDrawDMNormalScale(ptr noundef %2, ptr noundef nonnull %5) #21
  call void @glBegin(i32 noundef 1) #20
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 71
  %13 = load ptr, ptr %12, align 8, !tbaa !427
  call void %13(ptr noundef %3, ptr noundef nonnull @draw_dm_vert_normals__mapFunc, ptr noundef nonnull %5, i32 noundef 1) #20
  call void @glEnd() #20
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_dm_loop_normals(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.drawDMNormal_userData, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #22
  %6 = load ptr, ptr %0, align 8, !tbaa !413
  store ptr %6, ptr %5, align 8, !tbaa !480
  %7 = getelementptr inbounds %struct.Scene, ptr %1, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !213
  %9 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 6
  %10 = load float, ptr %9, align 8, !tbaa !221
  %11 = getelementptr inbounds %struct.drawDMNormal_userData, ptr %5, i64 0, i32 2
  store float %10, ptr %11, align 4, !tbaa !482
  call fastcc void @calcDrawDMNormalScale(ptr noundef %2, ptr noundef nonnull %5) #21
  call void @glBegin(i32 noundef 1) #20
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 73
  %13 = load ptr, ptr %12, align 8, !tbaa !483
  call void %13(ptr noundef %3, ptr noundef nonnull @draw_dm_loop_normals__mapFunc, ptr noundef nonnull %5, i32 noundef 1) #20
  call void @glEnd() #20
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_em_measure_stats(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [32 x i8], align 16
  %12 = alloca [4 x i8], align 4
  %13 = alloca [4 x [4 x float]], align 16
  %14 = alloca %struct.BMIter, align 8
  %15 = alloca %struct.BoundBox, align 4
  %16 = alloca %struct.bglMats, align 8
  %17 = alloca %struct.rcti, align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca [3 x float], align 4
  %23 = alloca [3 x float], align 4
  %24 = alloca [3 x float], align 4
  %25 = alloca [3 x float], align 4
  %26 = alloca %struct.BMIter, align 8
  %27 = alloca [3 x float], align 4
  %28 = alloca [3 x float], align 4
  %29 = getelementptr inbounds %struct.UnitSettings, ptr %4, i64 0, i32 1
  %30 = load i8, ptr %29, align 4, !tbaa !484
  %31 = icmp eq i8 %30, 0
  %32 = select i1 %31, i16 20, i16 16
  %33 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %34 = load ptr, ptr %33, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #22
  store i32 -16777216, ptr %12, align 4
  %35 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 31
  %36 = select i1 %31, ptr %35, ptr %4
  %37 = load float, ptr %36, align 4, !tbaa !45
  %38 = getelementptr inbounds %struct.UnitSettings, ptr %4, i64 0, i32 3
  %39 = load i16, ptr %38, align 2, !tbaa !485
  %40 = trunc i16 %39 to i8
  %41 = and i8 %40, 1
  %42 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 28
  %43 = load i16, ptr %42, align 8, !tbaa !83
  %44 = lshr i16 %43, 13
  %45 = trunc i16 %44 to i8
  %46 = and i8 %45, 1
  %47 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 10), align 4, !tbaa !158
  %48 = trunc i16 %47 to i8
  %49 = lshr i8 %48, 1
  %50 = and i8 %49, 1
  %51 = getelementptr inbounds %struct.Mesh, ptr %34, i64 0, i32 36
  %52 = load i32, ptr %51, align 8, !tbaa !449
  %53 = and i32 %52, 9216
  %54 = icmp eq i32 %53, 9216
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #22
  %55 = tail call ptr @EDBM_mesh_deform_dm_get(ptr noundef %3) #20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #22
  %56 = fcmp ugt float %37, 0x3F847AE140000000
  br i1 %56, label %57, label %64

57:                                               ; preds = %5
  %58 = fcmp ugt float %37, 0x3FB99999A0000000
  br i1 %58, label %59, label %64

59:                                               ; preds = %57
  %60 = fcmp ugt float %37, 1.000000e+00
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  %62 = fcmp ugt float %37, 1.000000e+01
  %63 = select i1 %62, ptr @.str.5, ptr @.str.4
  br label %64

64:                                               ; preds = %61, %59, %57, %5
  %65 = phi ptr [ @.str.1, %5 ], [ @.str.2, %57 ], [ @.str.3, %59 ], [ %63, %61 ]
  %66 = load i32, ptr %51, align 8, !tbaa !449
  %67 = and i32 %66, 9216
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %84, label %69

69:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %15) #22
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %16) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %16, i8 0, i64 272, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #22
  store i32 0, ptr %17, align 4, !tbaa !486
  %70 = getelementptr inbounds %struct.rcti, ptr %17, i64 0, i32 1
  %71 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 5
  %72 = load i16, ptr %71, align 8, !tbaa !487
  %73 = sext i16 %72 to i32
  store i32 %73, ptr %70, align 4, !tbaa !488
  %74 = getelementptr inbounds %struct.rcti, ptr %17, i64 0, i32 2
  store i32 0, ptr %74, align 4, !tbaa !489
  %75 = getelementptr inbounds %struct.rcti, ptr %17, i64 0, i32 3
  %76 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 6
  %77 = load i16, ptr %76, align 2, !tbaa !490
  %78 = sext i16 %77 to i32
  store i32 %78, ptr %75, align 4, !tbaa !491
  %79 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 30
  %80 = load ptr, ptr %79, align 8, !tbaa !56
  %81 = getelementptr inbounds %struct.BMEditMesh, ptr %3, i64 0, i32 14
  %82 = load ptr, ptr %81, align 8, !tbaa !492
  call void @view3d_get_transformation(ptr noundef %0, ptr noundef %80, ptr noundef %82, ptr noundef nonnull %16) #20
  call void @ED_view3d_clipping_calc(ptr noundef nonnull %15, ptr noundef nonnull %13, ptr noundef nonnull %16, ptr noundef nonnull %17) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %15) #22
  %83 = load i32, ptr %51, align 8, !tbaa !449
  br label %84

84:                                               ; preds = %69, %64
  %85 = phi i32 [ %83, %69 ], [ %66, %64 ]
  %86 = and i32 %85, 1024
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %161, label %88

88:                                               ; preds = %84
  call void @UI_GetThemeColor3ubv(i32 noundef 135, ptr noundef nonnull %12) #20
  %89 = icmp eq ptr %55, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %88
  %91 = load ptr, ptr %3, align 8, !tbaa !413
  call void @BM_mesh_elem_index_ensure(ptr noundef %91, i8 noundef zeroext 1) #20
  br label %92

92:                                               ; preds = %90, %88
  %93 = load ptr, ptr %3, align 8, !tbaa !413
  %94 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %14, ptr noundef %93, i8 noundef zeroext 2, ptr noundef null) #21
  %95 = icmp eq ptr %94, null
  br i1 %95, label %161, label %96

96:                                               ; preds = %92
  %97 = icmp eq i8 %50, 0
  %98 = getelementptr inbounds %struct.DerivedMesh, ptr %55, i64 0, i32 76
  %99 = icmp eq i8 %46, 0
  %100 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  br label %101

101:                                              ; preds = %96, %158
  %102 = phi ptr [ %94, %96 ], [ %159, %158 ]
  %103 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %102, i8 noundef zeroext 1) #21, !range !462
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %101
  br i1 %97, label %158, label %106

106:                                              ; preds = %105
  %107 = getelementptr inbounds %struct.BMEdge, ptr %102, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !493
  %109 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %108, i8 noundef zeroext 1) #21, !range !462
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.BMEdge, ptr %102, i64 0, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !496
  %114 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %113, i8 noundef zeroext 1) #21, !range !462
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %158, label %116

116:                                              ; preds = %111, %106, %101
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #22
  br i1 %89, label %126, label %117

117:                                              ; preds = %116
  %118 = load ptr, ptr %98, align 8, !tbaa !497
  %119 = getelementptr inbounds %struct.BMEdge, ptr %102, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !493
  %121 = call fastcc i32 @_bm_elem_index_get(ptr noundef %120) #21
  call void %118(ptr noundef nonnull %55, i32 noundef %121, ptr noundef nonnull %6) #20
  %122 = load ptr, ptr %98, align 8, !tbaa !497
  %123 = getelementptr inbounds %struct.BMEdge, ptr %102, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !496
  %125 = call fastcc i32 @_bm_elem_index_get(ptr noundef %124) #21
  call void %122(ptr noundef nonnull %55, i32 noundef %125, ptr noundef nonnull %7) #20
  br label %133

126:                                              ; preds = %116
  %127 = getelementptr inbounds %struct.BMEdge, ptr %102, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !493
  %129 = getelementptr inbounds %struct.BMVert, ptr %128, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %129) #21
  %130 = getelementptr inbounds %struct.BMEdge, ptr %102, i64 0, i32 3
  %131 = load ptr, ptr %130, align 8, !tbaa !496
  %132 = getelementptr inbounds %struct.BMVert, ptr %131, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %132) #21
  br label %133

133:                                              ; preds = %126, %117
  call fastcc void @copy_v3_v3(ptr noundef nonnull %18, ptr noundef nonnull %6) #21
  call fastcc void @copy_v3_v3(ptr noundef nonnull %19, ptr noundef nonnull %7) #21
  %134 = call zeroext i8 @clip_segment_v3_plane_n(ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %13, i32 noundef 4) #20
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %157, label %136

136:                                              ; preds = %133
  br i1 %54, label %137, label %138

137:                                              ; preds = %136
  call void @interp_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %6, ptr noundef nonnull %7, float noundef 0x3FD99999A0000000) #20
  br label %139

138:                                              ; preds = %136
  call void @mid_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %18, ptr noundef nonnull %19) #20
  br label %139

139:                                              ; preds = %138, %137
  br i1 %99, label %141, label %140

140:                                              ; preds = %139
  call void @mul_mat3_m4_v3(ptr noundef nonnull %100, ptr noundef nonnull %6) #20
  call void @mul_mat3_m4_v3(ptr noundef nonnull %100, ptr noundef nonnull %7) #20
  br label %141

141:                                              ; preds = %140, %139
  %142 = load i8, ptr %29, align 4, !tbaa !484
  %143 = icmp eq i8 %142, 0
  %144 = call fastcc float @len_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #21
  br i1 %143, label %152, label %145

145:                                              ; preds = %141
  %146 = load float, ptr %4, align 4, !tbaa !498
  %147 = fmul float %144, %146
  %148 = fpext float %147 to double
  %149 = load i8, ptr %29, align 4, !tbaa !484
  %150 = zext i8 %149 to i32
  %151 = call i64 @bUnit_AsString(ptr noundef nonnull %11, i32 noundef 32, double noundef %148, i32 noundef 3, i32 noundef %150, i32 noundef 1, i8 noundef zeroext %41, i8 noundef zeroext 0) #20
  br label %155

152:                                              ; preds = %141
  %153 = fpext float %144 to double
  %154 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %11, i64 noundef 32, ptr noundef nonnull %65, double noundef %153) #20
  br label %155

155:                                              ; preds = %152, %145
  %156 = phi i64 [ %151, %145 ], [ %154, %152 ]
  call void @view3d_cached_text_draw_add(ptr noundef nonnull %9, ptr noundef nonnull %11, i64 noundef %156, i16 noundef signext 0, i16 noundef signext %32, ptr noundef nonnull %12) #21
  br label %157

157:                                              ; preds = %155, %133
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #22
  br label %158

158:                                              ; preds = %105, %111, %157
  %159 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %14) #21
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %101, !llvm.loop !499

161:                                              ; preds = %158, %92, %84
  %162 = load i32, ptr %51, align 8, !tbaa !449
  %163 = and i32 %162, 8192
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %292, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.UnitSettings, ptr %4, i64 0, i32 2
  %167 = load i8, ptr %166, align 1, !tbaa !500
  %168 = icmp eq i8 %167, 2
  call void @UI_GetThemeColor3ubv(i32 noundef 136, ptr noundef nonnull %12) #20
  %169 = icmp eq ptr %55, null
  br i1 %169, label %172, label %170

170:                                              ; preds = %165
  %171 = load ptr, ptr %3, align 8, !tbaa !413
  call void @BM_mesh_elem_index_ensure(ptr noundef %171, i8 noundef zeroext 9) #20
  br label %172

172:                                              ; preds = %170, %165
  %173 = load ptr, ptr %3, align 8, !tbaa !413
  %174 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %14, ptr noundef %173, i8 noundef zeroext 2, ptr noundef null) #21
  %175 = icmp eq ptr %174, null
  br i1 %175, label %292, label %176

176:                                              ; preds = %172
  %177 = icmp eq i8 %50, 0
  %178 = getelementptr inbounds %struct.DerivedMesh, ptr %55, i64 0, i32 76
  %179 = getelementptr inbounds %struct.DerivedMesh, ptr %55, i64 0, i32 79
  %180 = icmp eq i8 %46, 0
  %181 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 50
  br label %182

182:                                              ; preds = %176, %289
  %183 = phi ptr [ %174, %176 ], [ %290, %289 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #22
  %184 = call zeroext i8 @BM_edge_loop_pair(ptr noundef nonnull %183, ptr noundef nonnull %20, ptr noundef nonnull %21) #20
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %289, label %186

186:                                              ; preds = %182
  %187 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %183, i8 noundef zeroext 1) #21, !range !462
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %189, label %234

189:                                              ; preds = %186
  br i1 %177, label %289, label %190

190:                                              ; preds = %189
  %191 = getelementptr inbounds %struct.BMEdge, ptr %183, i64 0, i32 2
  %192 = load ptr, ptr %191, align 8, !tbaa !493
  %193 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %192, i8 noundef zeroext 1) #21, !range !462
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %195, label %234

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.BMEdge, ptr %183, i64 0, i32 3
  %197 = load ptr, ptr %196, align 8, !tbaa !496
  %198 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %197, i8 noundef zeroext 1) #21, !range !462
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %200, label %234

200:                                              ; preds = %195
  %201 = load ptr, ptr %20, align 8, !tbaa !53
  %202 = getelementptr inbounds %struct.BMLoop, ptr %201, i64 0, i32 6
  %203 = load ptr, ptr %202, align 8, !tbaa !501
  %204 = getelementptr inbounds %struct.BMLoop, ptr %203, i64 0, i32 6
  %205 = load ptr, ptr %204, align 8, !tbaa !501
  %206 = getelementptr inbounds %struct.BMLoop, ptr %205, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !503
  %208 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %207, i8 noundef zeroext 1) #21, !range !462
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %210, label %234

210:                                              ; preds = %200
  %211 = getelementptr inbounds %struct.BMLoop, ptr %201, i64 0, i32 7
  %212 = load ptr, ptr %211, align 8, !tbaa !504
  %213 = getelementptr inbounds %struct.BMLoop, ptr %212, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !503
  %215 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %214, i8 noundef zeroext 1) #21, !range !462
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %217, label %234

217:                                              ; preds = %210
  %218 = load ptr, ptr %21, align 8, !tbaa !53
  %219 = getelementptr inbounds %struct.BMLoop, ptr %218, i64 0, i32 6
  %220 = load ptr, ptr %219, align 8, !tbaa !501
  %221 = getelementptr inbounds %struct.BMLoop, ptr %220, i64 0, i32 6
  %222 = load ptr, ptr %221, align 8, !tbaa !501
  %223 = getelementptr inbounds %struct.BMLoop, ptr %222, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !503
  %225 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %224, i8 noundef zeroext 1) #21, !range !462
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %227, label %234

227:                                              ; preds = %217
  %228 = getelementptr inbounds %struct.BMLoop, ptr %218, i64 0, i32 7
  %229 = load ptr, ptr %228, align 8, !tbaa !504
  %230 = getelementptr inbounds %struct.BMLoop, ptr %229, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !503
  %232 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %231, i8 noundef zeroext 1) #21, !range !462
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %289, label %234

234:                                              ; preds = %227, %217, %210, %200, %195, %190, %186
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #22
  br i1 %169, label %244, label %235

235:                                              ; preds = %234
  %236 = load ptr, ptr %178, align 8, !tbaa !497
  %237 = getelementptr inbounds %struct.BMEdge, ptr %183, i64 0, i32 2
  %238 = load ptr, ptr %237, align 8, !tbaa !493
  %239 = call fastcc i32 @_bm_elem_index_get(ptr noundef %238) #21
  call void %236(ptr noundef nonnull %55, i32 noundef %239, ptr noundef nonnull %6) #20
  %240 = load ptr, ptr %178, align 8, !tbaa !497
  %241 = getelementptr inbounds %struct.BMEdge, ptr %183, i64 0, i32 3
  %242 = load ptr, ptr %241, align 8, !tbaa !496
  %243 = call fastcc i32 @_bm_elem_index_get(ptr noundef %242) #21
  call void %240(ptr noundef nonnull %55, i32 noundef %243, ptr noundef nonnull %7) #20
  br label %251

244:                                              ; preds = %234
  %245 = getelementptr inbounds %struct.BMEdge, ptr %183, i64 0, i32 2
  %246 = load ptr, ptr %245, align 8, !tbaa !493
  %247 = getelementptr inbounds %struct.BMVert, ptr %246, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %247) #21
  %248 = getelementptr inbounds %struct.BMEdge, ptr %183, i64 0, i32 3
  %249 = load ptr, ptr %248, align 8, !tbaa !496
  %250 = getelementptr inbounds %struct.BMVert, ptr %249, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %250) #21
  br label %251

251:                                              ; preds = %244, %235
  call fastcc void @copy_v3_v3(ptr noundef nonnull %22, ptr noundef nonnull %6) #21
  call fastcc void @copy_v3_v3(ptr noundef nonnull %23, ptr noundef nonnull %7) #21
  %252 = call zeroext i8 @clip_segment_v3_plane_n(ptr noundef nonnull %22, ptr noundef nonnull %23, ptr noundef nonnull %13, i32 noundef 4) #20
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %288, label %254

254:                                              ; preds = %251
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #22
  br i1 %54, label %255, label %256

255:                                              ; preds = %254
  call void @interp_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %23, ptr noundef nonnull %22, float noundef 0x3FD99999A0000000) #20
  br label %257

256:                                              ; preds = %254
  call void @mid_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %22, ptr noundef nonnull %23) #20
  br label %257

257:                                              ; preds = %256, %255
  br i1 %169, label %269, label %258

258:                                              ; preds = %257
  %259 = load ptr, ptr %179, align 8, !tbaa !505
  %260 = load ptr, ptr %20, align 8, !tbaa !53
  %261 = getelementptr inbounds %struct.BMLoop, ptr %260, i64 0, i32 3
  %262 = load ptr, ptr %261, align 8, !tbaa !506
  %263 = call fastcc i32 @_bm_elem_index_get(ptr noundef %262) #21
  call void %259(ptr noundef nonnull %55, i32 noundef %263, ptr noundef nonnull %24) #20
  %264 = load ptr, ptr %179, align 8, !tbaa !505
  %265 = load ptr, ptr %21, align 8, !tbaa !53
  %266 = getelementptr inbounds %struct.BMLoop, ptr %265, i64 0, i32 3
  %267 = load ptr, ptr %266, align 8, !tbaa !506
  %268 = call fastcc i32 @_bm_elem_index_get(ptr noundef %267) #21
  call void %264(ptr noundef nonnull %55, i32 noundef %268, ptr noundef nonnull %25) #20
  br label %278

269:                                              ; preds = %257
  %270 = load ptr, ptr %20, align 8, !tbaa !53
  %271 = getelementptr inbounds %struct.BMLoop, ptr %270, i64 0, i32 3
  %272 = load ptr, ptr %271, align 8, !tbaa !506
  %273 = getelementptr inbounds %struct.BMFace, ptr %272, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %24, ptr noundef nonnull %273) #21
  %274 = load ptr, ptr %21, align 8, !tbaa !53
  %275 = getelementptr inbounds %struct.BMLoop, ptr %274, i64 0, i32 3
  %276 = load ptr, ptr %275, align 8, !tbaa !506
  %277 = getelementptr inbounds %struct.BMFace, ptr %276, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %25, ptr noundef nonnull %277) #21
  br label %278

278:                                              ; preds = %269, %258
  br i1 %180, label %282, label %279

279:                                              ; preds = %278
  call void @mul_mat3_m4_v3(ptr noundef nonnull %181, ptr noundef nonnull %24) #20
  call void @mul_mat3_m4_v3(ptr noundef nonnull %181, ptr noundef nonnull %25) #20
  %280 = call fastcc float @normalize_v3(ptr noundef nonnull %24) #21
  %281 = call fastcc float @normalize_v3(ptr noundef nonnull %25) #21
  br label %282

282:                                              ; preds = %279, %278
  %283 = call float @angle_normalized_v3v3(ptr noundef nonnull %24, ptr noundef nonnull %25) #20
  %284 = fmul float %283, 0x404CA5DC20000000
  %285 = select i1 %168, float %283, float %284
  %286 = fpext float %285 to double
  %287 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %11, i64 noundef 32, ptr noundef nonnull @.str.6, double noundef %286) #20
  call void @view3d_cached_text_draw_add(ptr noundef nonnull %9, ptr noundef nonnull %11, i64 noundef %287, i16 noundef signext 0, i16 noundef signext %32, ptr noundef nonnull %12) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #22
  br label %288

288:                                              ; preds = %282, %251
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #22
  br label %289

289:                                              ; preds = %189, %227, %288, %182
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #22
  %290 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %14) #21
  %291 = icmp eq ptr %290, null
  br i1 %291, label %292, label %182, !llvm.loop !507

292:                                              ; preds = %289, %172, %161
  %293 = load i32, ptr %51, align 8, !tbaa !449
  %294 = and i32 %293, 2048
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %413, label %296

296:                                              ; preds = %292
  call void @UI_GetThemeColor3ubv(i32 noundef 137, ptr noundef nonnull %12) #20
  %297 = icmp eq ptr %55, null
  br i1 %297, label %300, label %298

298:                                              ; preds = %296
  %299 = load ptr, ptr %3, align 8, !tbaa !413
  call void @BM_mesh_elem_index_ensure(ptr noundef %299, i8 noundef zeroext 1) #20
  br label %300

300:                                              ; preds = %298, %296
  call fastcc void @zero_v3(ptr noundef nonnull %9) #21
  %301 = getelementptr inbounds %struct.BMEditMesh, ptr %3, i64 0, i32 4
  %302 = load i32, ptr %301, align 8, !tbaa !508
  %303 = icmp sgt i32 %302, 0
  br i1 %303, label %304, label %413

304:                                              ; preds = %300
  %305 = getelementptr inbounds %struct.BMEditMesh, ptr %3, i64 0, i32 3
  %306 = getelementptr inbounds %struct.DerivedMesh, ptr %55, i64 0, i32 76
  %307 = icmp eq i8 %46, 0
  %308 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  br label %309

309:                                              ; preds = %304, %384
  %310 = phi i64 [ 0, %304 ], [ %387, %384 ]
  %311 = phi float [ 0.000000e+00, %304 ], [ %386, %384 ]
  %312 = phi i32 [ 0, %304 ], [ %382, %384 ]
  %313 = phi ptr [ null, %304 ], [ %349, %384 ]
  %314 = load ptr, ptr %305, align 8, !tbaa !509
  %315 = getelementptr inbounds [3 x ptr], ptr %314, i64 %310
  %316 = icmp eq ptr %313, null
  %317 = load ptr, ptr %315, align 8, !tbaa !53
  br i1 %316, label %344, label %318

318:                                              ; preds = %309
  %319 = getelementptr inbounds %struct.BMLoop, ptr %317, i64 0, i32 3
  %320 = load ptr, ptr %319, align 8, !tbaa !506
  %321 = icmp eq ptr %320, %313
  br i1 %321, label %344, label %322

322:                                              ; preds = %318
  %323 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %313, i8 noundef zeroext 1) #21, !range !462
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %342, label %325

325:                                              ; preds = %322
  %326 = sitofp i32 %312 to float
  %327 = fdiv float 1.000000e+00, %326
  call fastcc void @mul_v3_fl(ptr noundef nonnull %9, float noundef %327) #21
  %328 = load i8, ptr %29, align 4, !tbaa !484
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %337, label %330

330:                                              ; preds = %325
  %331 = load float, ptr %4, align 4, !tbaa !498
  %332 = fmul float %311, %331
  %333 = fmul float %331, %332
  %334 = fpext float %333 to double
  %335 = zext i8 %328 to i32
  %336 = call i64 @bUnit_AsString(ptr noundef nonnull %11, i32 noundef 32, double noundef %334, i32 noundef 3, i32 noundef %335, i32 noundef 2, i8 noundef zeroext %41, i8 noundef zeroext 0) #20
  br label %340

337:                                              ; preds = %325
  %338 = fpext float %311 to double
  %339 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %11, i64 noundef 32, ptr noundef nonnull %65, double noundef %338) #20
  br label %340

340:                                              ; preds = %337, %330
  %341 = phi i64 [ %336, %330 ], [ %339, %337 ]
  call void @view3d_cached_text_draw_add(ptr noundef nonnull %9, ptr noundef nonnull %11, i64 noundef %341, i16 noundef signext 0, i16 noundef signext %32, ptr noundef nonnull %12) #21
  br label %342

342:                                              ; preds = %340, %322
  call fastcc void @zero_v3(ptr noundef nonnull %9) #21
  %343 = load ptr, ptr %315, align 8, !tbaa !53
  br label %344

344:                                              ; preds = %342, %318, %309
  %345 = phi ptr [ %343, %342 ], [ %317, %318 ], [ %317, %309 ]
  %346 = phi i32 [ 0, %342 ], [ %312, %318 ], [ %312, %309 ]
  %347 = phi float [ 0.000000e+00, %342 ], [ %311, %318 ], [ %311, %309 ]
  %348 = getelementptr inbounds %struct.BMLoop, ptr %345, i64 0, i32 3
  %349 = load ptr, ptr %348, align 8, !tbaa !506
  br i1 %297, label %367, label %350

350:                                              ; preds = %344
  %351 = load ptr, ptr %306, align 8, !tbaa !497
  %352 = getelementptr inbounds %struct.BMLoop, ptr %345, i64 0, i32 1
  %353 = load ptr, ptr %352, align 8, !tbaa !503
  %354 = call fastcc i32 @_bm_elem_index_get(ptr noundef %353) #21
  call void %351(ptr noundef nonnull %55, i32 noundef %354, ptr noundef nonnull %6) #20
  %355 = load ptr, ptr %306, align 8, !tbaa !497
  %356 = getelementptr inbounds ptr, ptr %315, i64 1
  %357 = load ptr, ptr %356, align 8, !tbaa !53
  %358 = getelementptr inbounds %struct.BMLoop, ptr %357, i64 0, i32 1
  %359 = load ptr, ptr %358, align 8, !tbaa !503
  %360 = call fastcc i32 @_bm_elem_index_get(ptr noundef %359) #21
  call void %355(ptr noundef nonnull %55, i32 noundef %360, ptr noundef nonnull %7) #20
  %361 = load ptr, ptr %306, align 8, !tbaa !497
  %362 = getelementptr inbounds ptr, ptr %315, i64 2
  %363 = load ptr, ptr %362, align 8, !tbaa !53
  %364 = getelementptr inbounds %struct.BMLoop, ptr %363, i64 0, i32 1
  %365 = load ptr, ptr %364, align 8, !tbaa !503
  %366 = call fastcc i32 @_bm_elem_index_get(ptr noundef %365) #21
  call void %361(ptr noundef nonnull %55, i32 noundef %366, ptr noundef nonnull %8) #20
  br label %381

367:                                              ; preds = %344
  %368 = getelementptr inbounds %struct.BMLoop, ptr %345, i64 0, i32 1
  %369 = load ptr, ptr %368, align 8, !tbaa !503
  %370 = getelementptr inbounds %struct.BMVert, ptr %369, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %370) #21
  %371 = getelementptr inbounds ptr, ptr %315, i64 1
  %372 = load ptr, ptr %371, align 8, !tbaa !53
  %373 = getelementptr inbounds %struct.BMLoop, ptr %372, i64 0, i32 1
  %374 = load ptr, ptr %373, align 8, !tbaa !503
  %375 = getelementptr inbounds %struct.BMVert, ptr %374, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %375) #21
  %376 = getelementptr inbounds ptr, ptr %315, i64 2
  %377 = load ptr, ptr %376, align 8, !tbaa !53
  %378 = getelementptr inbounds %struct.BMLoop, ptr %377, i64 0, i32 1
  %379 = load ptr, ptr %378, align 8, !tbaa !503
  %380 = getelementptr inbounds %struct.BMVert, ptr %379, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %380) #21
  br label %381

381:                                              ; preds = %367, %350
  call fastcc void @add_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %6) #21
  call fastcc void @add_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %7) #21
  call fastcc void @add_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %8) #21
  %382 = add nsw i32 %346, 3
  br i1 %307, label %384, label %383

383:                                              ; preds = %381
  call void @mul_mat3_m4_v3(ptr noundef nonnull %308, ptr noundef nonnull %6) #20
  call void @mul_mat3_m4_v3(ptr noundef nonnull %308, ptr noundef nonnull %7) #20
  call void @mul_mat3_m4_v3(ptr noundef nonnull %308, ptr noundef nonnull %8) #20
  br label %384

384:                                              ; preds = %383, %381
  %385 = call float @area_tri_v3(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #20
  %386 = fadd float %347, %385
  %387 = add nuw nsw i64 %310, 1
  %388 = load i32, ptr %301, align 8, !tbaa !508
  %389 = sext i32 %388 to i64
  %390 = icmp slt i64 %387, %389
  br i1 %390, label %309, label %391, !llvm.loop !510

391:                                              ; preds = %384
  %392 = sitofp i32 %382 to float
  %393 = icmp eq ptr %349, null
  br i1 %393, label %413, label %394

394:                                              ; preds = %391
  %395 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %349, i8 noundef zeroext 1) #21, !range !462
  %396 = icmp eq i8 %395, 0
  br i1 %396, label %413, label %397

397:                                              ; preds = %394
  %398 = fdiv float 1.000000e+00, %392
  call fastcc void @mul_v3_fl(ptr noundef nonnull %9, float noundef %398) #21
  %399 = load i8, ptr %29, align 4, !tbaa !484
  %400 = icmp eq i8 %399, 0
  br i1 %400, label %408, label %401

401:                                              ; preds = %397
  %402 = load float, ptr %4, align 4, !tbaa !498
  %403 = fmul float %386, %402
  %404 = fmul float %402, %403
  %405 = fpext float %404 to double
  %406 = zext i8 %399 to i32
  %407 = call i64 @bUnit_AsString(ptr noundef nonnull %11, i32 noundef 32, double noundef %405, i32 noundef 3, i32 noundef %406, i32 noundef 2, i8 noundef zeroext %41, i8 noundef zeroext 0) #20
  br label %411

408:                                              ; preds = %397
  %409 = fpext float %386 to double
  %410 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %11, i64 noundef 32, ptr noundef nonnull %65, double noundef %409) #20
  br label %411

411:                                              ; preds = %408, %401
  %412 = phi i64 [ %407, %401 ], [ %410, %408 ]
  call void @view3d_cached_text_draw_add(ptr noundef nonnull %9, ptr noundef nonnull %11, i64 noundef %412, i16 noundef signext 0, i16 noundef signext %32, ptr noundef nonnull %12) #21
  br label %413

413:                                              ; preds = %300, %391, %411, %394, %292
  %414 = load i32, ptr %51, align 8, !tbaa !449
  %415 = and i32 %414, 4096
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %520, label %417

417:                                              ; preds = %413
  %418 = getelementptr inbounds %struct.UnitSettings, ptr %4, i64 0, i32 2
  %419 = load i8, ptr %418, align 1, !tbaa !500
  %420 = icmp eq i8 %419, 2
  call void @UI_GetThemeColor3ubv(i32 noundef 138, ptr noundef nonnull %12) #20
  %421 = icmp eq ptr %55, null
  br i1 %421, label %424, label %422

422:                                              ; preds = %417
  %423 = load ptr, ptr %3, align 8, !tbaa !413
  call void @BM_mesh_elem_index_ensure(ptr noundef %423, i8 noundef zeroext 1) #20
  br label %424

424:                                              ; preds = %422, %417
  %425 = load ptr, ptr %3, align 8, !tbaa !413
  %426 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %14, ptr noundef %425, i8 noundef zeroext 3, ptr noundef null) #21
  %427 = icmp eq ptr %426, null
  br i1 %427, label %520, label %428

428:                                              ; preds = %424
  %429 = icmp ne i8 %50, 0
  %430 = getelementptr inbounds %struct.DerivedMesh, ptr %55, i64 0, i32 76
  %431 = icmp eq i8 %46, 0
  %432 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 47
  br label %433

433:                                              ; preds = %428, %517
  %434 = phi ptr [ %426, %428 ], [ %518, %517 ]
  %435 = call fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr noundef nonnull %434) #21
  %436 = icmp ne i8 %435, 0
  %437 = select i1 %436, i1 true, i1 %429
  br i1 %437, label %438, label %517

438:                                              ; preds = %433
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %26) #22
  %439 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %26, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %434) #21
  %440 = icmp eq ptr %439, null
  br i1 %440, label %516, label %441

441:                                              ; preds = %438
  %442 = getelementptr inbounds %struct.BMFace, ptr %434, i64 0, i32 2
  %443 = getelementptr inbounds %struct.BMFace, ptr %434, i64 0, i32 3
  br label %444

444:                                              ; preds = %441, %512
  %445 = phi i8 [ 1, %441 ], [ %513, %512 ]
  %446 = phi ptr [ %439, %441 ], [ %514, %512 ]
  br i1 %436, label %453, label %447

447:                                              ; preds = %444
  br i1 %429, label %448, label %512

448:                                              ; preds = %447
  %449 = getelementptr inbounds %struct.BMLoop, ptr %446, i64 0, i32 1
  %450 = load ptr, ptr %449, align 8, !tbaa !503
  %451 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %450, i8 noundef zeroext 1) #21, !range !462
  %452 = icmp eq i8 %451, 0
  br i1 %452, label %512, label %453

453:                                              ; preds = %448, %444
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #22
  %454 = icmp eq i8 %445, 0
  br i1 %454, label %472, label %455

455:                                              ; preds = %453
  br i1 %421, label %471, label %456

456:                                              ; preds = %455
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %28) #22
  call fastcc void @zero_v3(ptr noundef nonnull %9) #21
  %457 = load ptr, ptr %442, align 8, !tbaa !511
  br label %458

458:                                              ; preds = %458, %456
  %459 = phi ptr [ %457, %456 ], [ %465, %458 ]
  %460 = load ptr, ptr %430, align 8, !tbaa !497
  %461 = getelementptr inbounds %struct.BMLoop, ptr %459, i64 0, i32 1
  %462 = load ptr, ptr %461, align 8, !tbaa !503
  %463 = call fastcc i32 @_bm_elem_index_get(ptr noundef %462) #21
  call void %460(ptr noundef nonnull %55, i32 noundef %463, ptr noundef nonnull %28) #20
  call fastcc void @add_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %28) #21
  %464 = getelementptr inbounds %struct.BMLoop, ptr %459, i64 0, i32 6
  %465 = load ptr, ptr %464, align 8, !tbaa !501
  %466 = icmp eq ptr %465, %457
  br i1 %466, label %467, label %458, !llvm.loop !512

467:                                              ; preds = %458
  %468 = load i32, ptr %443, align 8, !tbaa !513
  %469 = sitofp i32 %468 to float
  %470 = fdiv float 1.000000e+00, %469
  call fastcc void @mul_v3_fl(ptr noundef nonnull %9, float noundef %470) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #22
  br label %473

471:                                              ; preds = %455
  call void @BM_face_calc_center_bounds(ptr noundef nonnull %434, ptr noundef nonnull %9) #20
  br label %490

472:                                              ; preds = %453
  br i1 %421, label %490, label %473

473:                                              ; preds = %467, %472
  %474 = load ptr, ptr %430, align 8, !tbaa !497
  %475 = getelementptr inbounds %struct.BMLoop, ptr %446, i64 0, i32 7
  %476 = load ptr, ptr %475, align 8, !tbaa !504
  %477 = getelementptr inbounds %struct.BMLoop, ptr %476, i64 0, i32 1
  %478 = load ptr, ptr %477, align 8, !tbaa !503
  %479 = call fastcc i32 @_bm_elem_index_get(ptr noundef %478) #21
  call void %474(ptr noundef nonnull %55, i32 noundef %479, ptr noundef nonnull %6) #20
  %480 = load ptr, ptr %430, align 8, !tbaa !497
  %481 = getelementptr inbounds %struct.BMLoop, ptr %446, i64 0, i32 1
  %482 = load ptr, ptr %481, align 8, !tbaa !503
  %483 = call fastcc i32 @_bm_elem_index_get(ptr noundef %482) #21
  call void %480(ptr noundef nonnull %55, i32 noundef %483, ptr noundef nonnull %7) #20
  %484 = load ptr, ptr %430, align 8, !tbaa !497
  %485 = getelementptr inbounds %struct.BMLoop, ptr %446, i64 0, i32 6
  %486 = load ptr, ptr %485, align 8, !tbaa !501
  %487 = getelementptr inbounds %struct.BMLoop, ptr %486, i64 0, i32 1
  %488 = load ptr, ptr %487, align 8, !tbaa !503
  %489 = call fastcc i32 @_bm_elem_index_get(ptr noundef %488) #21
  call void %484(ptr noundef nonnull %55, i32 noundef %489, ptr noundef nonnull %8) #20
  br label %504

490:                                              ; preds = %471, %472
  %491 = getelementptr inbounds %struct.BMLoop, ptr %446, i64 0, i32 7
  %492 = load ptr, ptr %491, align 8, !tbaa !504
  %493 = getelementptr inbounds %struct.BMLoop, ptr %492, i64 0, i32 1
  %494 = load ptr, ptr %493, align 8, !tbaa !503
  %495 = getelementptr inbounds %struct.BMVert, ptr %494, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %495) #21
  %496 = getelementptr inbounds %struct.BMLoop, ptr %446, i64 0, i32 1
  %497 = load ptr, ptr %496, align 8, !tbaa !503
  %498 = getelementptr inbounds %struct.BMVert, ptr %497, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %498) #21
  %499 = getelementptr inbounds %struct.BMLoop, ptr %446, i64 0, i32 6
  %500 = load ptr, ptr %499, align 8, !tbaa !501
  %501 = getelementptr inbounds %struct.BMLoop, ptr %500, i64 0, i32 1
  %502 = load ptr, ptr %501, align 8, !tbaa !503
  %503 = getelementptr inbounds %struct.BMVert, ptr %502, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %503) #21
  br label %504

504:                                              ; preds = %490, %473
  call fastcc void @copy_v3_v3(ptr noundef nonnull %27, ptr noundef nonnull %7) #21
  br i1 %431, label %506, label %505

505:                                              ; preds = %504
  call void @mul_mat3_m4_v3(ptr noundef nonnull %432, ptr noundef nonnull %6) #20
  call void @mul_mat3_m4_v3(ptr noundef nonnull %432, ptr noundef nonnull %7) #20
  call void @mul_mat3_m4_v3(ptr noundef nonnull %432, ptr noundef nonnull %8) #20
  br label %506

506:                                              ; preds = %505, %504
  %507 = call float @angle_v3v3v3(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #20
  %508 = fmul float %507, 0x404CA5DC20000000
  %509 = select i1 %420, float %507, float %508
  %510 = fpext float %509 to double
  %511 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %11, i64 noundef 32, ptr noundef nonnull @.str.6, double noundef %510) #20
  call void @interp_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %27, float noundef 0x3FE99999A0000000) #20
  call void @view3d_cached_text_draw_add(ptr noundef nonnull %10, ptr noundef nonnull %11, i64 noundef %511, i16 noundef signext 0, i16 noundef signext %32, ptr noundef nonnull %12) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #22
  br label %512

512:                                              ; preds = %447, %448, %506
  %513 = phi i8 [ 0, %506 ], [ %445, %448 ], [ %445, %447 ]
  %514 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %26) #21
  %515 = icmp eq ptr %514, null
  br i1 %515, label %516, label %444, !llvm.loop !514

516:                                              ; preds = %512, %438
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %26) #22
  br label %517

517:                                              ; preds = %433, %516
  %518 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %14) #21
  %519 = icmp eq ptr %518, null
  br i1 %519, label %520, label %433, !llvm.loop !515

520:                                              ; preds = %517, %424, %413
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_em_indices(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [32 x i8], align 16
  %3 = alloca [3 x float], align 4
  %4 = alloca [4 x i8], align 1
  %5 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #22
  %6 = load ptr, ptr %0, align 8, !tbaa !413
  %7 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 12
  %8 = load i16, ptr %7, align 4, !tbaa !516
  %9 = and i16 %8, 1
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %1
  call void @UI_GetThemeColor3ubv(i32 noundef 138, ptr noundef nonnull %4) #20
  %12 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %6, i8 noundef zeroext 1, ptr noundef null) #21
  %13 = icmp eq ptr %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %11, %22
  %15 = phi i32 [ %23, %22 ], [ 0, %11 ]
  %16 = phi ptr [ %24, %22 ], [ %12, %11 ]
  %17 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %16, i8 noundef zeroext 1) #21, !range !462
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %2, i64 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %15) #20
  %21 = getelementptr inbounds %struct.BMVert, ptr %16, i64 0, i32 2
  call void @view3d_cached_text_draw_add(ptr noundef nonnull %21, ptr noundef nonnull %2, i64 noundef %20, i16 noundef signext 0, i16 noundef signext 20, ptr noundef nonnull %4) #21
  br label %22

22:                                               ; preds = %19, %14
  %23 = add nuw nsw i32 %15, 1
  %24 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #21
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %14, !llvm.loop !517

26:                                               ; preds = %22, %11, %1
  %27 = load i16, ptr %7, align 4, !tbaa !516
  %28 = and i16 %27, 2
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %26
  call void @UI_GetThemeColor3ubv(i32 noundef 135, ptr noundef nonnull %4) #20
  %31 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %6, i8 noundef zeroext 2, ptr noundef null) #21
  %32 = icmp eq ptr %31, null
  br i1 %32, label %50, label %33

33:                                               ; preds = %30, %46
  %34 = phi ptr [ %48, %46 ], [ %31, %30 ]
  %35 = phi i32 [ %47, %46 ], [ 0, %30 ]
  %36 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %34, i8 noundef zeroext 1) #21, !range !462
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %33
  %39 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %2, i64 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %35) #20
  %40 = getelementptr inbounds %struct.BMEdge, ptr %34, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !493
  %42 = getelementptr inbounds %struct.BMVert, ptr %41, i64 0, i32 2
  %43 = getelementptr inbounds %struct.BMEdge, ptr %34, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !496
  %45 = getelementptr inbounds %struct.BMVert, ptr %44, i64 0, i32 2
  call void @mid_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %42, ptr noundef nonnull %45) #20
  call void @view3d_cached_text_draw_add(ptr noundef nonnull %3, ptr noundef nonnull %2, i64 noundef %39, i16 noundef signext 0, i16 noundef signext 20, ptr noundef nonnull %4) #21
  br label %46

46:                                               ; preds = %38, %33
  %47 = add nuw nsw i32 %35, 1
  %48 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #21
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %33, !llvm.loop !518

50:                                               ; preds = %46, %30, %26
  %51 = load i16, ptr %7, align 4, !tbaa !516
  %52 = and i16 %51, 4
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %50
  call void @UI_GetThemeColor3ubv(i32 noundef 137, ptr noundef nonnull %4) #20
  %55 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %6, i8 noundef zeroext 3, ptr noundef null) #21
  %56 = icmp eq ptr %55, null
  br i1 %56, label %68, label %57

57:                                               ; preds = %54, %64
  %58 = phi i32 [ %65, %64 ], [ 0, %54 ]
  %59 = phi ptr [ %66, %64 ], [ %55, %54 ]
  %60 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %59, i8 noundef zeroext 1) #21, !range !462
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  call void @BM_face_calc_center_mean(ptr noundef nonnull %59, ptr noundef nonnull %3) #20
  %63 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %2, i64 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %58) #20
  call void @view3d_cached_text_draw_add(ptr noundef nonnull %3, ptr noundef nonnull %2, i64 noundef %63, i16 noundef signext 0, i16 noundef signext 20, ptr noundef nonnull %4) #21
  br label %64

64:                                               ; preds = %62, %57
  %65 = add nuw nsw i32 %58, 1
  %66 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #21
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %57, !llvm.loop !519

68:                                               ; preds = %64, %54, %50
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #22
  ret void
}

; Function Attrs: optsize
declare ptr @BM_face_at_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !520
  %5 = and i8 %4, %1
  ret i8 %5
}

; Function Attrs: optsize
declare ptr @BM_edge_at_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DM_get_tessface_data_layer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @DM_get_poly_data_layer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @draw_dm_faces_sel__setDrawOptions(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drawDMFacesSel_userData, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !468
  %5 = tail call ptr @BM_face_at_index(ptr noundef %4, i32 noundef %1) #20
  %6 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %5, i8 noundef zeroext 2) #21, !range !462
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.drawDMFacesSel_userData, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !469
  %11 = icmp eq ptr %5, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds [3 x ptr], ptr %0, i64 0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  tail call void @glColor4ubv(ptr noundef %14) #20
  br label %25

15:                                               ; preds = %8
  %16 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %5, i8 noundef zeroext 1) #21, !range !462
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i64
  %19 = getelementptr inbounds [3 x ptr], ptr %0, i64 0, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  %21 = getelementptr inbounds i8, ptr %20, i64 3
  %22 = load i8, ptr %21, align 1, !tbaa !55
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  tail call void @glColor4ubv(ptr noundef nonnull %20) #20
  br label %25

25:                                               ; preds = %2, %15, %24, %12
  %26 = phi i32 [ 3, %12 ], [ 1, %24 ], [ 0, %15 ], [ 0, %2 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @draw_dm_faces_sel__compareDrawOptions(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.drawDMFacesSel_userData, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !470
  %6 = icmp eq ptr %5, null
  br i1 %6, label %60, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.drawDMFacesSel_userData, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !471
  %10 = tail call fastcc i32 @DM_origindex_mface_mpoly(ptr noundef nonnull %5, ptr noundef %9, i32 noundef %1) #21
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.drawDMFacesSel_userData, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !468
  %15 = tail call ptr @BM_face_at_index(ptr noundef %14, i32 noundef %10) #20
  %16 = load ptr, ptr %4, align 8, !tbaa !470
  %17 = load ptr, ptr %8, align 8, !tbaa !471
  br label %18

18:                                               ; preds = %7, %12
  %19 = phi ptr [ %17, %12 ], [ %9, %7 ]
  %20 = phi ptr [ %16, %12 ], [ %5, %7 ]
  %21 = phi ptr [ %15, %12 ], [ null, %7 ]
  %22 = tail call fastcc i32 @DM_origindex_mface_mpoly(ptr noundef %20, ptr noundef %19, i32 noundef %2) #21
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %60, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.drawDMFacesSel_userData, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !468
  %27 = tail call ptr @BM_face_at_index(ptr noundef %26, i32 noundef %22) #20
  %28 = icmp eq ptr %21, null
  %29 = icmp eq ptr %27, null
  %30 = select i1 %28, i1 true, i1 %29
  br i1 %30, label %60, label %31

31:                                               ; preds = %24
  %32 = icmp eq ptr %21, %27
  br i1 %32, label %60, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.drawDMFacesSel_userData, ptr %0, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !469
  %36 = icmp eq ptr %21, %35
  %37 = icmp eq ptr %27, %35
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %60, label %39

39:                                               ; preds = %33
  %40 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %21, i8 noundef zeroext 1) #21, !range !462
  %41 = icmp ne i8 %40, 0
  %42 = zext i1 %41 to i64
  %43 = getelementptr inbounds [3 x ptr], ptr %0, i64 0, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !53
  %45 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %27, i8 noundef zeroext 1) #21, !range !462
  %46 = icmp ne i8 %45, 0
  %47 = zext i1 %46 to i64
  %48 = getelementptr inbounds [3 x ptr], ptr %0, i64 0, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !53
  %50 = getelementptr inbounds i8, ptr %44, i64 3
  %51 = load i8, ptr %50, align 1, !tbaa !55
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %39
  %54 = getelementptr inbounds i8, ptr %49, i64 3
  %55 = load i8, ptr %54, align 1, !tbaa !55
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = icmp eq ptr %44, %49
  %59 = zext i1 %58 to i32
  br label %60

60:                                               ; preds = %18, %39, %53, %33, %31, %24, %3, %57
  %61 = phi i32 [ %59, %57 ], [ 0, %3 ], [ 0, %24 ], [ 1, %31 ], [ 0, %33 ], [ 0, %53 ], [ 0, %39 ], [ 0, %18 ]
  ret i32 %61
}

; Function Attrs: optsize
declare void @glColor4ubv(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @DM_origindex_mface_mpoly(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #13 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds i32, ptr %0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !51
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = icmp eq ptr %1, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %8
  %11 = sext i32 %6 to i64
  %12 = getelementptr inbounds i32, ptr %1, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !51
  br label %14

14:                                               ; preds = %8, %3, %10
  %15 = phi i32 [ %13, %10 ], [ -1, %3 ], [ %6, %8 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_dm_edges_sel(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.drawDMEdgesSel_userData, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #22
  %8 = getelementptr inbounds %struct.drawDMEdgesSel_userData, ptr %7, i64 0, i32 1
  store ptr %2, ptr %8, align 8, !tbaa !521
  %9 = getelementptr inbounds %struct.drawDMEdgesSel_userData, ptr %7, i64 0, i32 2
  store ptr %3, ptr %9, align 8, !tbaa !523
  %10 = getelementptr inbounds %struct.drawDMEdgesSel_userData, ptr %7, i64 0, i32 3
  store ptr %4, ptr %10, align 8, !tbaa !524
  %11 = load ptr, ptr %0, align 8, !tbaa !413
  store ptr %11, ptr %7, align 8, !tbaa !525
  %12 = getelementptr inbounds %struct.drawDMEdgesSel_userData, ptr %7, i64 0, i32 4
  store ptr %5, ptr %12, align 8, !tbaa !526
  %13 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 92
  %14 = load ptr, ptr %13, align 8, !tbaa !426
  call void %14(ptr noundef %1, ptr noundef nonnull @draw_dm_edges_sel__setDrawOptions, ptr noundef nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #22
  ret void
}

; Function Attrs: optsize
declare void @glShadeModel(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @draw_dm_edges_weight_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 36
  %4 = load i32, ptr %3, align 8, !tbaa !449
  %5 = and i32 %4, 16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 24
  %9 = load i16, ptr %8, align 8, !tbaa !5
  %10 = icmp eq i16 %9, 2
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 29
  %13 = load i16, ptr %12, align 2, !tbaa !15
  %14 = zext i16 %13 to i32
  %15 = and i32 %14, 4096
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = and i32 %14, 16384
  %19 = icmp ne i32 %18, 0
  %20 = icmp sgt i16 %9, 2
  %21 = and i1 %20, %19
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %2
  br label %23

23:                                               ; preds = %7, %11, %17, %22
  %24 = phi i8 [ 0, %22 ], [ 1, %17 ], [ 1, %11 ], [ 1, %7 ]
  ret i8 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_dm_edges_weight_interp(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.drawDMEdgesWeightInterp_userData, align 8
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #22
  %6 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 14
  %7 = load ptr, ptr %6, align 8, !tbaa !492
  %8 = load ptr, ptr %0, align 8, !tbaa !413
  store ptr %8, ptr %4, align 8, !tbaa !527
  %9 = getelementptr inbounds %struct.BMesh, ptr %8, i64 0, i32 24
  %10 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %9, i32 noundef 2) #20
  %11 = getelementptr inbounds %struct.drawDMEdgesWeightInterp_userData, ptr %4, i64 0, i32 1
  store i32 %10, ptr %11, align 8, !tbaa !529
  %12 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 25
  %13 = tail call i32 @BLI_countlist(ptr noundef nonnull %12) #20
  %14 = getelementptr inbounds %struct.drawDMEdgesWeightInterp_userData, ptr %4, i64 0, i32 2
  store i32 %13, ptr %14, align 4, !tbaa !530
  %15 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 97
  %16 = load i16, ptr %15, align 2, !tbaa !291
  %17 = zext i16 %16 to i32
  %18 = add nsw i32 %17, -1
  %19 = getelementptr inbounds %struct.drawDMEdgesWeightInterp_userData, ptr %4, i64 0, i32 3
  store i32 %18, ptr %19, align 8, !tbaa !531
  %20 = getelementptr inbounds %struct.drawDMEdgesWeightInterp_userData, ptr %4, i64 0, i32 4
  store i8 %2, ptr %20, align 4, !tbaa !532
  %21 = getelementptr inbounds %struct.drawDMEdgesWeightInterp_userData, ptr %4, i64 0, i32 5
  call void @UI_GetThemeColor3fv(i32 noundef 35, ptr noundef nonnull %21) #20
  %22 = load i32, ptr %19, align 8, !tbaa !531
  %23 = icmp ne i32 %22, -1
  %24 = load i32, ptr %11, align 8
  %25 = icmp ne i32 %24, -1
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  call void @glEnable(i32 noundef 3042) #20
  %28 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 93
  %29 = load ptr, ptr %28, align 8, !tbaa !472
  call void %29(ptr noundef %1, ptr noundef nonnull @draw_dm_edges_sel_interp__setDrawOptions, ptr noundef nonnull @draw_dm_edges_weight_interp__setDrawInterpOptions, ptr noundef nonnull %4) #20
  call void @glDisable(i32 noundef 3042) #20
  br label %38

30:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  %31 = load i8, ptr %20, align 4, !tbaa !532
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  call void @weight_to_rgb(ptr noundef nonnull %5, float noundef 0.000000e+00) #20
  br label %35

34:                                               ; preds = %30
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %21) #21
  br label %35

35:                                               ; preds = %34, %33
  call void @glColor3fv(ptr noundef nonnull %5) #20
  %36 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 93
  %37 = load ptr, ptr %36, align 8, !tbaa !472
  call void %37(ptr noundef %1, ptr noundef nonnull @draw_dm_edges_sel_interp__setDrawOptions, ptr noundef nonnull @draw_dm_edges_nop_interp__setDrawInterpOptions, ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  br label %38

38:                                               ; preds = %35, %27
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_dm_edges_sel_interp(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.drawDMEdgesSelInterp_userData, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #22
  %6 = load ptr, ptr %0, align 8, !tbaa !413
  store ptr %6, ptr %5, align 8, !tbaa !533
  %7 = getelementptr inbounds %struct.drawDMEdgesSelInterp_userData, ptr %5, i64 0, i32 1
  store ptr %2, ptr %7, align 8, !tbaa !535
  %8 = getelementptr inbounds %struct.drawDMEdgesSelInterp_userData, ptr %5, i64 0, i32 2
  store ptr %3, ptr %8, align 8, !tbaa !536
  %9 = getelementptr inbounds %struct.drawDMEdgesSelInterp_userData, ptr %5, i64 0, i32 3
  store ptr null, ptr %9, align 8, !tbaa !537
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 93
  %11 = load ptr, ptr %10, align 8, !tbaa !472
  call void %11(ptr noundef %1, ptr noundef nonnull @draw_dm_edges_sel_interp__setDrawOptions, ptr noundef nonnull @draw_dm_edges_sel_interp__setDrawInterpOptions, ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_dm_edges(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 92
  %4 = load ptr, ptr %3, align 8, !tbaa !426
  %5 = load ptr, ptr %0, align 8, !tbaa !413
  tail call void %4(ptr noundef %1, ptr noundef nonnull @draw_dm_edges__setDrawOptions, ptr noundef %5) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @draw_dm_edges_sel__setDrawOptions(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !525
  %4 = tail call ptr @BM_edge_at_index(ptr noundef %3, i32 noundef %1) #20
  %5 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %4, i8 noundef zeroext 2) #21, !range !462
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.drawDMEdgesSel_userData, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !526
  %10 = icmp eq ptr %4, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.drawDMEdgesSel_userData, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !524
  tail call void @glColor4ubv(ptr noundef %13) #20
  br label %25

14:                                               ; preds = %7
  %15 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %4, i8 noundef zeroext 1) #21, !range !462
  %16 = icmp eq i8 %15, 0
  %17 = getelementptr inbounds %struct.drawDMEdgesSel_userData, ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds %struct.drawDMEdgesSel_userData, ptr %0, i64 0, i32 1
  %19 = select i1 %16, ptr %18, ptr %17
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  %21 = getelementptr inbounds i8, ptr %20, i64 3
  %22 = load i8, ptr %21, align 1, !tbaa !55
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  tail call void @glColor4ubv(ptr noundef nonnull %20) #20
  br label %25

25:                                               ; preds = %2, %11, %24, %14
  %26 = phi i32 [ 0, %14 ], [ 1, %24 ], [ 1, %11 ], [ 0, %2 ]
  ret i32 %26
}

; Function Attrs: optsize
declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_GetThemeColor3fv(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @draw_dm_edges_sel_interp__setDrawOptions(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !533
  %4 = tail call ptr @BM_edge_at_index(ptr noundef %3, i32 noundef %1) #20
  %5 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %4, i8 noundef zeroext 2) #21, !range !462
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @draw_dm_edges_weight_interp__setDrawInterpOptions(ptr nocapture noundef readonly %0, i32 noundef %1, float noundef %2) #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = load ptr, ptr %0, align 8, !tbaa !527
  %8 = tail call ptr @BM_edge_at_index(ptr noundef %7, i32 noundef %1) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  %9 = fcmp oeq float %2, 0.000000e+00
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.BMEdge, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !493
  call fastcc void @bm_color_from_weight(ptr noundef nonnull %4, ptr noundef %12, ptr noundef nonnull %0) #21
  br label %23

13:                                               ; preds = %3
  %14 = fcmp oeq float %2, 1.000000e+00
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.BMEdge, ptr %8, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !496
  call fastcc void @bm_color_from_weight(ptr noundef nonnull %4, ptr noundef %17, ptr noundef nonnull %0) #21
  br label %23

18:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #22
  %19 = getelementptr inbounds %struct.BMEdge, ptr %8, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !493
  call fastcc void @bm_color_from_weight(ptr noundef nonnull %5, ptr noundef %20, ptr noundef nonnull %0) #21
  %21 = getelementptr inbounds %struct.BMEdge, ptr %8, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !496
  call fastcc void @bm_color_from_weight(ptr noundef nonnull %6, ptr noundef %22, ptr noundef nonnull %0) #21
  call void @interp_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, float noundef %2) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  br label %23

23:                                               ; preds = %15, %18, %10
  call void @glColor3fv(ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  ret void
}

; Function Attrs: optsize
declare void @weight_to_rgb(ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glColor3fv(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @draw_dm_edges_nop_interp__setDrawInterpOptions(ptr nocapture readnone %0, i32 %1, float %2) #14 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_color_from_weight(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !538
  %5 = getelementptr inbounds %struct.drawDMEdgesWeightInterp_userData, ptr %2, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !529
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %4, i64 %7
  %9 = getelementptr inbounds %struct.drawDMEdgesWeightInterp_userData, ptr %2, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !531
  %11 = tail call float @defvert_find_weight(ptr noundef %8, i32 noundef %10) #20
  %12 = fcmp oeq float %11, 0.000000e+00
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.drawDMEdgesWeightInterp_userData, ptr %2, i64 0, i32 4
  %15 = load i8, ptr %14, align 4, !tbaa !532
  switch i8 %15, label %23 [
    i8 1, label %21
    i8 2, label %16
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.drawDMEdgesWeightInterp_userData, ptr %2, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !530
  %19 = tail call zeroext i8 @defvert_is_weight_zero(ptr noundef %8, i32 noundef %18) #20
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %13, %16
  %22 = getelementptr inbounds %struct.drawDMEdgesWeightInterp_userData, ptr %2, i64 0, i32 5
  tail call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef nonnull %22) #21
  br label %24

23:                                               ; preds = %13, %16, %3
  tail call void @weight_to_rgb(ptr noundef %0, float noundef %11) #20
  br label %24

24:                                               ; preds = %23, %21
  ret void
}

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @defvert_is_weight_zero(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @draw_dm_edges_sel_interp__setDrawInterpOptions(ptr nocapture noundef %0, i32 noundef %1, float noundef %2) #0 {
  %4 = alloca [4 x i8], align 1
  %5 = load ptr, ptr %0, align 8, !tbaa !533
  %6 = tail call ptr @BM_edge_at_index(ptr noundef %5, i32 noundef %1) #20
  %7 = getelementptr inbounds %struct.BMEdge, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !493
  %9 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %8, i8 noundef zeroext 1) #21, !range !462
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 1, i32 2
  %12 = getelementptr inbounds %struct.BMEdge, ptr %6, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !496
  %14 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %13, i8 noundef zeroext 1) #21, !range !462
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, i32 1, i32 2
  %17 = zext nneg i32 %11 to i64
  %18 = getelementptr inbounds ptr, ptr %0, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !53
  %20 = zext nneg i32 %16 to i64
  %21 = getelementptr inbounds ptr, ptr %0, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !53
  %23 = icmp eq i32 %11, %16
  %24 = fcmp oeq float %2, 0.000000e+00
  %25 = or i1 %24, %23
  br i1 %25, label %30, label %26

26:                                               ; preds = %3
  %27 = fcmp oeq float %2, 1.000000e+00
  br i1 %27, label %30, label %28

28:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  call void @interp_v4_v4v4_uchar(ptr noundef nonnull %4, ptr noundef %19, ptr noundef %22, float noundef %2) #20
  call void @glColor4ubv(ptr noundef nonnull %4) #20
  %29 = getelementptr inbounds %struct.drawDMEdgesSelInterp_userData, ptr %0, i64 0, i32 3
  store ptr null, ptr %29, align 8, !tbaa !537
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  br label %36

30:                                               ; preds = %26, %3
  %31 = phi ptr [ %19, %3 ], [ %22, %26 ]
  %32 = getelementptr inbounds %struct.drawDMEdgesSelInterp_userData, ptr %0, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !537
  %34 = icmp eq ptr %33, %31
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store ptr %31, ptr %32, align 8, !tbaa !537
  tail call void @glColor4ubv(ptr noundef %31) #20
  br label %36

36:                                               ; preds = %30, %35, %28
  ret void
}

; Function Attrs: optsize
declare void @interp_v4_v4v4_uchar(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @draw_dm_edges_seams__setDrawOptions(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @BM_edge_at_index(ptr noundef %0, i32 noundef %1) #20
  %4 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %3, i8 noundef zeroext 2) #21, !range !462
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %3, i8 noundef zeroext 4) #21, !range !462
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6, %2
  br label %10

10:                                               ; preds = %6, %9
  %11 = phi i32 [ 0, %9 ], [ 1, %6 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @draw_dm_edges_sharp__setDrawOptions(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @BM_edge_at_index(ptr noundef %0, i32 noundef %1) #20
  %4 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %3, i8 noundef zeroext 2) #21, !range !462
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %3, i8 noundef zeroext 8) #21, !range !462
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %2
  br label %10

10:                                               ; preds = %6, %9
  %11 = phi i32 [ 0, %9 ], [ 1, %6 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @draw_dm_creases__setDrawOptions(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !475
  %4 = tail call ptr @BM_edge_at_index(ptr noundef %3, i32 noundef %1) #20
  %5 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %4, i8 noundef zeroext 2) #21, !range !462
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = load ptr, ptr %4, align 8, !tbaa !540
  %9 = getelementptr inbounds %struct.drawDMLayer_userData, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !477
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %8, i64 %11
  %13 = load float, ptr %12, align 4, !tbaa !45
  %14 = fcmp oeq float %13, 0.000000e+00
  br i1 %14, label %16, label %15

15:                                               ; preds = %7
  tail call void @UI_ThemeColorBlend(i32 noundef 27, i32 noundef 134, float noundef %13) #20
  br label %16

16:                                               ; preds = %2, %7, %15
  %17 = phi i32 [ 1, %15 ], [ 0, %7 ], [ 0, %2 ]
  ret i32 %17
}

; Function Attrs: optsize
declare void @glPointSize(float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @bglBegin(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @draw_dm_bweights__mapFunc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #0 {
  %6 = load ptr, ptr %0, align 8, !tbaa !475
  %7 = tail call ptr @BM_vert_at_index(ptr noundef %6, i32 noundef %1) #20
  %8 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %7, i8 noundef zeroext 2) #21, !range !462
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %5
  %11 = load ptr, ptr %7, align 8, !tbaa !538
  %12 = getelementptr inbounds %struct.drawDMLayer_userData, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !477
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %11, i64 %14
  %16 = load float, ptr %15, align 4, !tbaa !45
  %17 = fcmp une float %16, 0.000000e+00
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  tail call void @UI_ThemeColorBlend(i32 noundef 33, i32 noundef 34, float noundef %16) #20
  tail call void @bglVertex3fv(ptr noundef %2) #20
  br label %19

19:                                               ; preds = %10, %18, %5
  ret void
}

; Function Attrs: optsize
declare void @bglEnd() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @draw_dm_bweights__setDrawOptions(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !475
  %4 = tail call ptr @BM_edge_at_index(ptr noundef %3, i32 noundef %1) #20
  %5 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %4, i8 noundef zeroext 2) #21, !range !462
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = load ptr, ptr %4, align 8, !tbaa !540
  %9 = getelementptr inbounds %struct.drawDMLayer_userData, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !477
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %8, i64 %11
  %13 = load float, ptr %12, align 4, !tbaa !45
  %14 = fcmp oeq float %13, 0.000000e+00
  br i1 %14, label %16, label %15

15:                                               ; preds = %7
  tail call void @UI_ThemeColorBlend(i32 noundef 27, i32 noundef 39, float noundef %13) #20
  br label %16

16:                                               ; preds = %2, %7, %15
  %17 = phi i32 [ 1, %15 ], [ 0, %7 ], [ 0, %2 ]
  ret i32 %17
}

; Function Attrs: optsize
declare ptr @BM_vert_at_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @bglVertex3fv(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_dm_verts(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.drawDMVerts_userData, align 8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %6) #22
  %7 = getelementptr inbounds %struct.drawDMVerts_userData, ptr %6, i64 0, i32 2
  store i8 %2, ptr %7, align 8, !tbaa !541
  %8 = getelementptr inbounds %struct.drawDMVerts_userData, ptr %6, i64 0, i32 1
  store ptr %3, ptr %8, align 8, !tbaa !543
  %9 = load ptr, ptr %0, align 8, !tbaa !413
  store ptr %9, ptr %6, align 8, !tbaa !544
  %10 = getelementptr inbounds %struct.drawDMVerts_userData, ptr %6, i64 0, i32 3
  call void @UI_GetThemeColor4ubv(i32 noundef 127, ptr noundef nonnull %10) #20
  %11 = getelementptr inbounds %struct.drawDMVerts_userData, ptr %6, i64 0, i32 4
  call void @UI_GetThemeColor4ubv(i32 noundef 34, ptr noundef nonnull %11) #20
  %12 = getelementptr inbounds %struct.drawDMVerts_userData, ptr %6, i64 0, i32 5
  call void @UI_GetThemeColor4ubv(i32 noundef 33, ptr noundef nonnull %12) #20
  %13 = getelementptr inbounds %struct.drawDMVerts_userData, ptr %6, i64 0, i32 6
  call void @UI_GetThemeColor4ubv(i32 noundef 164, ptr noundef nonnull %13) #20
  %14 = call float @UI_GetThemeValuef(i32 noundef 36) #20
  %15 = getelementptr inbounds %struct.drawDMVerts_userData, ptr %6, i64 0, i32 7
  store float %14, ptr %15, align 4, !tbaa !545
  %16 = load ptr, ptr %0, align 8, !tbaa !413
  %17 = getelementptr inbounds %struct.BMesh, ptr %16, i64 0, i32 24
  %18 = call i32 @CustomData_get_offset(ptr noundef nonnull %17, i32 noundef 36) #20
  %19 = getelementptr inbounds %struct.drawDMVerts_userData, ptr %6, i64 0, i32 8
  store i32 %18, ptr %19, align 8, !tbaa !546
  %20 = getelementptr inbounds %struct.drawDMVerts_userData, ptr %6, i64 0, i32 9
  %21 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 1
  %22 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 14
  %23 = load ptr, ptr %22, align 8, !tbaa !492
  %24 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 47
  call void @mul_m4_m4m4(ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %24) #20
  %25 = call zeroext i8 @invert_m4(ptr noundef nonnull %20) #20
  call void @bglBegin(i32 noundef 0) #20
  %26 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 71
  %27 = load ptr, ptr %26, align 8, !tbaa !427
  call void %27(ptr noundef %1, ptr noundef nonnull @draw_dm_verts__mapFunc, ptr noundef nonnull %6, i32 noundef 0) #20
  call void @bglEnd() #20
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %6) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @check_ob_drawface_dot(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %4, align 8, !tbaa !213
  %6 = getelementptr inbounds %struct.ToolSettings, ptr %5, i64 0, i32 8
  %7 = load i16, ptr %6, align 2, !tbaa !415
  %8 = and i16 %7, 4
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %33, label %10

10:                                               ; preds = %3
  %11 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !16
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 28
  %16 = load i16, ptr %15, align 8, !tbaa !83
  %17 = and i16 %16, 4096
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %14
  %20 = icmp eq i8 %2, 5
  %21 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 24
  %22 = load i16, ptr %21, align 8, !tbaa !5
  %23 = icmp eq i16 %22, 5
  %24 = select i1 %20, i1 %23, i1 false
  br i1 %24, label %33, label %25

25:                                               ; preds = %19
  %26 = icmp sgt i16 %22, 2
  br i1 %26, label %27, label %32

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 29
  %29 = load i16, ptr %28, align 2, !tbaa !15
  %30 = and i16 %29, 8
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %25
  br label %33

33:                                               ; preds = %19, %27, %14, %10, %3, %32
  %34 = phi i8 [ 1, %32 ], [ 0, %3 ], [ 0, %10 ], [ 1, %14 ], [ 0, %27 ], [ 0, %19 ]
  ret i8 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_dm_face_centers(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.drawBMSelect_userData, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  %5 = load ptr, ptr %0, align 8, !tbaa !413
  store ptr %5, ptr %4, align 8, !tbaa !547
  %6 = getelementptr inbounds %struct.drawBMSelect_userData, ptr %4, i64 0, i32 1
  store i8 %2, ptr %6, align 8, !tbaa !549
  tail call void @bglBegin(i32 noundef 0) #20
  %7 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 74
  %8 = load ptr, ptr %7, align 8, !tbaa !422
  call void %8(ptr noundef %1, ptr noundef nonnull @draw_dm_face_centers__mapFunc, ptr noundef nonnull %4, i32 noundef 0) #20
  call void @bglEnd() #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  ret void
}

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @invert_m4(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @draw_dm_verts__mapFunc(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #0 {
  %6 = load ptr, ptr %0, align 8, !tbaa !544
  %7 = tail call ptr @BM_vert_at_index(ptr noundef %6, i32 noundef %1) #20
  %8 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %7, i8 noundef zeroext 2) #21, !range !462
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %55

10:                                               ; preds = %5
  %11 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %7, i8 noundef zeroext 1) #21, !range !462
  %12 = getelementptr inbounds %struct.drawDMVerts_userData, ptr %0, i64 0, i32 2
  %13 = load i8, ptr %12, align 8, !tbaa !541
  %14 = icmp eq i8 %11, %13
  br i1 %14, label %15, label %55

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.drawDMVerts_userData, ptr %0, i64 0, i32 8
  %17 = load i32, ptr %16, align 8, !tbaa !546
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %40, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %7, align 8, !tbaa !538
  %21 = sext i32 %17 to i64
  %22 = getelementptr inbounds i8, ptr %20, i64 %21
  %23 = getelementptr inbounds %struct.MVertSkin, ptr %22, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !550
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %19
  %28 = load float, ptr %22, align 4, !tbaa !45
  %29 = getelementptr inbounds [3 x float], ptr %22, i64 0, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !45
  %31 = fadd float %28, %30
  %32 = fmul float %31, 5.000000e-01
  tail call void @bglEnd() #20
  %33 = getelementptr inbounds %struct.drawDMVerts_userData, ptr %0, i64 0, i32 6
  tail call void @glColor4ubv(ptr noundef nonnull %33) #20
  %34 = getelementptr inbounds %struct.drawDMVerts_userData, ptr %0, i64 0, i32 9
  tail call void @drawcircball(i32 noundef 1, ptr noundef %2, float noundef %32, ptr noundef nonnull %34) #21
  %35 = load i8, ptr %12, align 8, !tbaa !541
  %36 = icmp eq i8 %35, 0
  %37 = getelementptr inbounds %struct.drawDMVerts_userData, ptr %0, i64 0, i32 4
  %38 = getelementptr inbounds %struct.drawDMVerts_userData, ptr %0, i64 0, i32 5
  %39 = select i1 %36, ptr %38, ptr %37
  tail call void @glColor4ubv(ptr noundef nonnull %39) #20
  tail call void @bglBegin(i32 noundef 0) #20
  br label %40

40:                                               ; preds = %19, %27, %15
  %41 = getelementptr inbounds %struct.drawDMVerts_userData, ptr %0, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !543
  %43 = icmp eq ptr %7, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.drawDMVerts_userData, ptr %0, i64 0, i32 3
  tail call void @glColor4ubv(ptr noundef nonnull %45) #20
  tail call void @bglEnd() #20
  %46 = getelementptr inbounds %struct.drawDMVerts_userData, ptr %0, i64 0, i32 7
  %47 = load float, ptr %46, align 4, !tbaa !545
  tail call void @glPointSize(float noundef %47) #20
  tail call void @bglBegin(i32 noundef 0) #20
  tail call void @bglVertex3fv(ptr noundef %2) #20
  tail call void @bglEnd() #20
  %48 = load i8, ptr %12, align 8, !tbaa !541
  %49 = icmp eq i8 %48, 0
  %50 = getelementptr inbounds %struct.drawDMVerts_userData, ptr %0, i64 0, i32 4
  %51 = getelementptr inbounds %struct.drawDMVerts_userData, ptr %0, i64 0, i32 5
  %52 = select i1 %49, ptr %51, ptr %50
  tail call void @glColor4ubv(ptr noundef nonnull %52) #20
  %53 = load float, ptr %46, align 4, !tbaa !545
  tail call void @glPointSize(float noundef %53) #20
  tail call void @bglBegin(i32 noundef 0) #20
  br label %55

54:                                               ; preds = %40
  tail call void @bglVertex3fv(ptr noundef %2) #20
  br label %55

55:                                               ; preds = %44, %54, %10, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @draw_dm_face_centers__mapFunc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture readnone %3) #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !547
  %6 = tail call ptr @BM_face_at_index(ptr noundef %5, i32 noundef %1) #20
  %7 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %6, i8 noundef zeroext 2) #21, !range !462
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %6, i8 noundef zeroext 1) #21, !range !462
  %11 = getelementptr inbounds %struct.drawBMSelect_userData, ptr %0, i64 0, i32 1
  %12 = load i8, ptr %11, align 8, !tbaa !549
  %13 = icmp eq i8 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  tail call void @bglVertex3fv(ptr noundef %2) #20
  br label %15

15:                                               ; preds = %14, %9, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calcDrawDMNormalScale(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  %5 = call zeroext i8 @is_uniform_scaled_m3(ptr noundef nonnull %3) #20
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds %struct.drawDMNormal_userData, ptr %1, i64 0, i32 1
  store i32 %6, ptr %7, align 8, !tbaa !552
  %8 = icmp eq i8 %5, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.drawDMNormal_userData, ptr %1, i64 0, i32 4
  %11 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %10, ptr noundef nonnull %3) #20
  %12 = getelementptr inbounds %struct.drawDMNormal_userData, ptr %1, i64 0, i32 3
  call void @copy_m3_m3(ptr noundef nonnull %12, ptr noundef nonnull %10) #20
  call void @transpose_m3(ptr noundef nonnull %12) #20
  br label %13

13:                                               ; preds = %9, %2
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @draw_dm_face_normals__mapFunc(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca [3 x float], align 4
  %6 = load ptr, ptr %0, align 8, !tbaa !480
  %7 = tail call ptr @BM_face_at_index(ptr noundef %6, i32 noundef %1) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  %8 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %7, i8 noundef zeroext 2) #21, !range !462
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.drawDMNormal_userData, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !552
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.drawDMNormal_userData, ptr %0, i64 0, i32 3
  call void @mul_v3_m3v3(ptr noundef nonnull %5, ptr noundef nonnull %15, ptr noundef %3) #20
  %16 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #21
  %17 = getelementptr inbounds %struct.drawDMNormal_userData, ptr %0, i64 0, i32 4
  call void @mul_m3_v3(ptr noundef nonnull %17, ptr noundef nonnull %5) #20
  br label %19

18:                                               ; preds = %10
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %3) #21
  br label %19

19:                                               ; preds = %18, %14
  call void @glVertex3fv(ptr noundef %2) #20
  %20 = load float, ptr %2, align 4, !tbaa !45
  %21 = load float, ptr %5, align 4, !tbaa !45
  %22 = getelementptr inbounds %struct.drawDMNormal_userData, ptr %0, i64 0, i32 2
  %23 = load float, ptr %22, align 4, !tbaa !482
  %24 = call float @llvm.fmuladd.f32(float %21, float %23, float %20)
  %25 = getelementptr inbounds float, ptr %2, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !45
  %27 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !45
  %29 = call float @llvm.fmuladd.f32(float %28, float %23, float %26)
  %30 = getelementptr inbounds float, ptr %2, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !45
  %32 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !45
  %34 = call float @llvm.fmuladd.f32(float %33, float %23, float %31)
  call void @glVertex3f(float noundef %24, float noundef %29, float noundef %34) #20
  br label %35

35:                                               ; preds = %19, %4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  ret void
}

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @is_uniform_scaled_m3(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @transpose_m3(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mul_v3_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @draw_dm_vert_normals__mapFunc(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr nocapture noundef readonly %4) #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = load ptr, ptr %0, align 8, !tbaa !480
  %9 = tail call ptr @BM_vert_at_index(ptr noundef %8, i32 noundef %1) #20
  %10 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %9, i8 noundef zeroext 2) #21, !range !462
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #22
  %13 = icmp eq ptr %3, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %12
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %3) #21
  br label %16

15:                                               ; preds = %12
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %6, ptr noundef %4) #21
  br label %16

16:                                               ; preds = %15, %14
  %17 = getelementptr inbounds %struct.drawDMNormal_userData, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !552
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.drawDMNormal_userData, ptr %0, i64 0, i32 3
  call void @mul_v3_m3v3(ptr noundef nonnull %7, ptr noundef nonnull %21, ptr noundef nonnull %6) #20
  %22 = call fastcc float @normalize_v3(ptr noundef nonnull %7) #21
  %23 = getelementptr inbounds %struct.drawDMNormal_userData, ptr %0, i64 0, i32 4
  call void @mul_m3_v3(ptr noundef nonnull %23, ptr noundef nonnull %7) #20
  br label %25

24:                                               ; preds = %16
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %6) #21
  br label %25

25:                                               ; preds = %24, %20
  call void @glVertex3fv(ptr noundef %2) #20
  %26 = load float, ptr %2, align 4, !tbaa !45
  %27 = load float, ptr %7, align 4, !tbaa !45
  %28 = getelementptr inbounds %struct.drawDMNormal_userData, ptr %0, i64 0, i32 2
  %29 = load float, ptr %28, align 4, !tbaa !482
  %30 = call float @llvm.fmuladd.f32(float %27, float %29, float %26)
  %31 = getelementptr inbounds float, ptr %2, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !45
  %33 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !45
  %35 = call float @llvm.fmuladd.f32(float %34, float %29, float %32)
  %36 = getelementptr inbounds float, ptr %2, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !45
  %38 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !45
  %40 = call float @llvm.fmuladd.f32(float %39, float %29, float %37)
  call void @glVertex3f(float noundef %30, float noundef %35, float noundef %40) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #22
  br label %41

41:                                               ; preds = %25, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @normal_short_to_float_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 {
  %3 = load <2 x i16>, ptr %1, align 2, !tbaa !54
  %4 = sitofp <2 x i16> %3 to <2 x float>
  %5 = fmul <2 x float> %4, <float 0x3F00002000000000, float 0x3F00002000000000>
  store <2 x float> %5, ptr %0, align 4, !tbaa !45
  %6 = getelementptr inbounds i16, ptr %1, i64 2
  %7 = load i16, ptr %6, align 2, !tbaa !54
  %8 = sitofp i16 %7 to float
  %9 = fmul float %8, 0x3F00002000000000
  %10 = getelementptr inbounds float, ptr %0, i64 2
  store float %9, ptr %10, align 4, !tbaa !45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @draw_dm_loop_normals__mapFunc(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca [3 x float], align 4
  %7 = icmp eq ptr %4, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %0, align 8, !tbaa !480
  %10 = tail call ptr @BM_vert_at_index(ptr noundef %9, i32 noundef %1) #20
  %11 = load ptr, ptr %0, align 8, !tbaa !480
  %12 = tail call ptr @BM_face_at_index(ptr noundef %11, i32 noundef %2) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #22
  %13 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %10, i8 noundef zeroext 2) #21, !range !462
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %8
  %16 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %12, i8 noundef zeroext 2) #21, !range !462
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.drawDMNormal_userData, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !552
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.drawDMNormal_userData, ptr %0, i64 0, i32 3
  call void @mul_v3_m3v3(ptr noundef nonnull %6, ptr noundef nonnull %23, ptr noundef nonnull %4) #20
  %24 = call fastcc float @normalize_v3(ptr noundef nonnull %6) #21
  %25 = getelementptr inbounds %struct.drawDMNormal_userData, ptr %0, i64 0, i32 4
  call void @mul_m3_v3(ptr noundef nonnull %25, ptr noundef nonnull %6) #20
  br label %27

26:                                               ; preds = %18
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %4) #21
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr inbounds %struct.drawDMNormal_userData, ptr %0, i64 0, i32 2
  %29 = load float, ptr %28, align 4, !tbaa !482
  call fastcc void @mul_v3_fl(ptr noundef nonnull %6, float noundef %29) #21
  call fastcc void @add_v3_v3(ptr noundef nonnull %6, ptr noundef %3) #21
  call void @glVertex3fv(ptr noundef %3) #20
  call void @glVertex3fv(ptr noundef nonnull %6) #20
  br label %30

30:                                               ; preds = %27, %15, %8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #22
  br label %31

31:                                               ; preds = %30, %5
  ret void
}

; Function Attrs: optsize
declare ptr @EDBM_mesh_deform_dm_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @view3d_get_transformation(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_view3d_clipping_calc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #21
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #21
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !553
  ret i32 %3
}

; Function Attrs: optsize
declare zeroext i8 @clip_segment_v3_plane_n(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @bUnit_AsString(ptr noundef, i32 noundef, double noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #22
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #21
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #22
  ret float %4
}

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !554
  %4 = tail call ptr %3(ptr noundef %0) #20
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @BM_edge_loop_pair(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #11 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !45
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !45
  ret void
}

; Function Attrs: optsize
declare float @area_tri_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !520
  %4 = and i8 %3, 1
  ret i8 %4
}

; Function Attrs: optsize
declare void @BM_face_calc_center_bounds(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @angle_v3v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !556
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  switch i8 %2, label %25 [
    i8 1, label %8
    i8 2, label %11
    i8 3, label %14
    i8 4, label %17
    i8 5, label %18
    i8 6, label %19
    i8 7, label %20
    i8 8, label %21
    i8 9, label %22
    i8 10, label %23
    i8 11, label %24
  ]

8:                                                ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !557
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !554
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !558
  br label %26

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !557
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !554
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !559
  br label %26

14:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !557
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !554
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !560
  br label %26

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !557
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !554
  br label %26

18:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !557
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !554
  br label %26

19:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !557
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !554
  br label %26

20:                                               ; preds = %4
  store ptr @bmiter__vert_of_edge_begin, ptr %6, align 8, !tbaa !557
  store ptr @bmiter__vert_of_edge_step, ptr %7, align 8, !tbaa !554
  br label %26

21:                                               ; preds = %4
  store ptr @bmiter__face_of_edge_begin, ptr %6, align 8, !tbaa !557
  store ptr @bmiter__face_of_edge_step, ptr %7, align 8, !tbaa !554
  br label %26

22:                                               ; preds = %4
  store ptr @bmiter__vert_of_face_begin, ptr %6, align 8, !tbaa !557
  store ptr @bmiter__vert_of_face_step, ptr %7, align 8, !tbaa !554
  br label %26

23:                                               ; preds = %4
  store ptr @bmiter__edge_of_face_begin, ptr %6, align 8, !tbaa !557
  store ptr @bmiter__edge_of_face_step, ptr %7, align 8, !tbaa !554
  br label %26

24:                                               ; preds = %4
  store ptr @bmiter__loop_of_face_begin, ptr %6, align 8, !tbaa !557
  store ptr @bmiter__loop_of_face_step, ptr %7, align 8, !tbaa !554
  br label %26

25:                                               ; preds = %4
  unreachable

26:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %17, %14, %11, %8
  %27 = phi ptr [ %3, %24 ], [ %3, %23 ], [ %3, %22 ], [ %3, %21 ], [ %3, %20 ], [ %3, %19 ], [ %3, %18 ], [ %3, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ]
  %28 = phi ptr [ @bmiter__loop_of_face_begin, %24 ], [ @bmiter__edge_of_face_begin, %23 ], [ @bmiter__vert_of_face_begin, %22 ], [ @bmiter__face_of_edge_begin, %21 ], [ @bmiter__vert_of_edge_begin, %20 ], [ @bmiter__loop_of_vert_begin, %19 ], [ @bmiter__face_of_vert_begin, %18 ], [ @bmiter__edge_of_vert_begin, %17 ], [ @bmiter__elem_of_mesh_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %27, ptr %0, align 8, !tbaa !55
  tail call void %28(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__face_of_vert_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__face_of_vert_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__loop_of_vert_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__loop_of_vert_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__vert_of_edge_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__vert_of_edge_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__face_of_edge_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__face_of_edge_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__vert_of_face_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__vert_of_face_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__edge_of_face_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__edge_of_face_step(ptr noundef) #1

; Function Attrs: optsize
declare void @bmiter__loop_of_face_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__loop_of_face_step(ptr noundef) #1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #21
  %3 = tail call float @sqrtf(float noundef %2) #20
  ret float %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 {
  %3 = load float, ptr %0, align 4, !tbaa !45
  %4 = load float, ptr %1, align 4, !tbaa !45
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !45
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !45
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !45
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !45
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: optsize
declare void @BM_face_calc_center_mean(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @mesh_get_derived_final(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @BKE_paint_select_face_test(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @modifiers_isPreview(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_paint_get_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_sculpt_redraw_planes_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @draw_mesh_face_select(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glColorMaterial(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glMaterialfv(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @draw_dm_override_material_color(i32 %0, ptr nocapture readnone %1) #14 {
  ret i32 1
}

; Function Attrs: optsize
declare void @draw_mesh_paint(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ob_wire_color_blend_theme_id(ptr noundef %0, float noundef %1) unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  call void @rgb_uchar_to_float(ptr noundef nonnull %3, ptr noundef %0) #20
  call void @UI_GetThemeColor3fv(i32 noundef 2, ptr noundef nonnull %4) #20
  call void @interp_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %3, float noundef %1) #20
  call void @glColor3fv(ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #22
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BKE_paint_select_vert_test(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glColor3f(float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawSelectedVertices(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.drawDMVertSel_userData, align 8
  %4 = alloca [3 x i8], align 1
  %5 = alloca [3 x i8], align 1
  %6 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %4, i8 0, i64 3, i1 false)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %5, ptr noundef nonnull align 1 dereferenceable(3) @__const.drawSelectedVertices.sel_col, i64 3, i1 false)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %6, i8 -1, i64 3, i1 false)
  %7 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 15
  %8 = load ptr, ptr %7, align 8, !tbaa !561
  store ptr %8, ptr %3, align 8, !tbaa !562
  %9 = tail call i32 @BKE_mesh_mselect_active_get(ptr noundef %1, i32 noundef 0) #20
  %10 = getelementptr inbounds %struct.drawDMVertSel_userData, ptr %3, i64 0, i32 1
  store i32 %9, ptr %10, align 8, !tbaa !564
  %11 = getelementptr inbounds %struct.drawDMVertSel_userData, ptr %3, i64 0, i32 3
  store i8 -1, ptr %11, align 8, !tbaa !565
  %12 = getelementptr inbounds %struct.drawDMVertSel_userData, ptr %3, i64 0, i32 2
  store ptr %4, ptr %12, align 8, !tbaa !53
  %13 = getelementptr inbounds %struct.drawDMVertSel_userData, ptr %3, i64 0, i32 2, i64 1
  store ptr %5, ptr %13, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.drawDMVertSel_userData, ptr %3, i64 0, i32 2, i64 2
  store ptr %6, ptr %14, align 8, !tbaa !53
  call void @glBegin(i32 noundef 0) #20
  %15 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 71
  %16 = load ptr, ptr %15, align 8, !tbaa !427
  call void %16(ptr noundef %0, ptr noundef nonnull @drawSelectedVertices__mapFunc, ptr noundef nonnull %3, i32 noundef 0) #20
  call void @glEnd() #20
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #22
  ret void
}

; Function Attrs: optsize
declare void @rgb_uchar_to_float(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BKE_mesh_mselect_active_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @drawSelectedVertices__mapFunc(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #0 {
  %6 = load ptr, ptr %0, align 8, !tbaa !562
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.MVert, ptr %6, i64 %7, i32 2
  %9 = load i8, ptr %8, align 2, !tbaa !566
  %10 = and i8 %9, 16
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.drawDMVertSel_userData, ptr %0, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !564
  %15 = icmp eq i32 %14, %1
  %16 = and i8 %9, 1
  %17 = select i1 %15, i8 2, i8 %16
  %18 = getelementptr inbounds %struct.drawDMVertSel_userData, ptr %0, i64 0, i32 3
  %19 = load i8, ptr %18, align 8, !tbaa !565
  %20 = icmp eq i8 %17, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %12
  %22 = zext nneg i8 %17 to i64
  %23 = getelementptr inbounds %struct.drawDMVertSel_userData, ptr %0, i64 0, i32 2, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !53
  tail call void @glColor3ubv(ptr noundef %24) #20
  store i8 %17, ptr %18, align 8, !tbaa !565
  br label %25

25:                                               ; preds = %21, %12
  tail call void @glVertex3fv(ptr noundef %2) #20
  br label %26

26:                                               ; preds = %25, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_editfont_textcurs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call void @cpack(i32 noundef 0) #20
  tail call void @ED_view3d_polygon_offset(ptr noundef %0, float noundef -1.000000e+00) #20
  tail call void @set_inverted_drawing(i32 noundef 1) #20
  tail call void @glBegin(i32 noundef 7) #20
  tail call void @glVertex2fv(ptr noundef %1) #20
  %3 = getelementptr inbounds [2 x float], ptr %1, i64 1
  tail call void @glVertex2fv(ptr noundef nonnull %3) #20
  %4 = getelementptr inbounds [2 x float], ptr %1, i64 2
  tail call void @glVertex2fv(ptr noundef nonnull %4) #20
  %5 = getelementptr inbounds [2 x float], ptr %1, i64 3
  tail call void @glVertex2fv(ptr noundef nonnull %5) #20
  tail call void @glEnd() #20
  tail call void @set_inverted_drawing(i32 noundef 0) #20
  tail call void @ED_view3d_polygon_offset(ptr noundef %0, float noundef 0.000000e+00) #20
  ret void
}

; Function Attrs: optsize
declare void @set_inverted_drawing(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glVertex2fv(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BKE_vfont_select_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @copy_v2_fl2(ptr nocapture noundef writeonly %0, float noundef %1, float noundef %2) unnamed_addr #11 {
  store float %1, ptr %0, align 4, !tbaa !45
  %4 = getelementptr inbounds float, ptr %0, i64 1
  store float %2, ptr %4, align 4, !tbaa !45
  ret void
}

; Function Attrs: optsize
declare void @angle_to_mat2(ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mul_m2v2(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v2_v2(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #7 {
  %3 = load float, ptr %1, align 4, !tbaa !45
  %4 = load float, ptr %0, align 4, !tbaa !45
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !45
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !45
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !45
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !45
  ret void
}

; Function Attrs: optsize
declare void @BKE_displist_make_curveTypes(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_displist_make_mball(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_lattice_modifiers_calc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_mesh_boundbox_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_curve_boundbox_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_armature_boundbox_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_boundbox_calc_size_aabb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_bb_quadric(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  %6 = tail call ptr @gluNewQuadric() #20
  tail call void @gluQuadricDrawStyle(ptr noundef %6, i32 noundef 100013) #20
  call void @BKE_boundbox_calc_size_aabb(ptr noundef %0, ptr noundef nonnull %4) #20
  %7 = icmp eq i8 %2, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  call fastcc void @zero_v3(ptr noundef nonnull %5) #21
  br label %10

9:                                                ; preds = %3
  call void @BKE_boundbox_calc_center_aabb(ptr noundef %0, ptr noundef nonnull %5) #20
  br label %10

10:                                               ; preds = %9, %8
  call void @glPushMatrix() #20
  switch i8 %1, label %79 [
    i8 1, label %11
    i8 2, label %26
    i8 3, label %42
    i8 7, label %58
  ]

11:                                               ; preds = %10
  %12 = load float, ptr %4, align 4
  %13 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %14 = load float, ptr %13, align 4
  %15 = fcmp ogt float %12, %14
  %16 = select i1 %15, float %12, float %14
  %17 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !45
  %19 = fcmp ogt float %16, %18
  %20 = select i1 %19, float %16, float %18
  %21 = load float, ptr %5, align 4, !tbaa !45
  %22 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !45
  %24 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !45
  call void @glTranslatef(float noundef %21, float noundef %23, float noundef %25) #20
  call void @glScalef(float noundef %20, float noundef %20, float noundef %20) #20
  call void @gluSphere(ptr noundef %6, double noundef 1.000000e+00, i32 noundef 8, i32 noundef 5) #20
  br label %79

26:                                               ; preds = %10
  %27 = load float, ptr %4, align 4
  %28 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %29 = load float, ptr %28, align 4
  %30 = fcmp ogt float %27, %29
  %31 = select i1 %30, float %27, float %29
  %32 = load float, ptr %5, align 4, !tbaa !45
  %33 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !45
  %35 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !45
  %37 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !45
  %39 = fsub float %36, %38
  call void @glTranslatef(float noundef %32, float noundef %34, float noundef %39) #20
  %40 = load float, ptr %37, align 4, !tbaa !45
  %41 = fmul float %40, 2.000000e+00
  call void @glScalef(float noundef %31, float noundef %31, float noundef %41) #20
  call void @gluCylinder(ptr noundef %6, double noundef 1.000000e+00, double noundef 1.000000e+00, double noundef 1.000000e+00, i32 noundef 8, i32 noundef 1) #20
  br label %79

42:                                               ; preds = %10
  %43 = load float, ptr %4, align 4
  %44 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %45 = load float, ptr %44, align 4
  %46 = fcmp ogt float %43, %45
  %47 = select i1 %46, float %43, float %45
  %48 = load float, ptr %5, align 4, !tbaa !45
  %49 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !45
  %51 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !45
  %53 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !45
  %55 = fsub float %52, %54
  call void @glTranslatef(float noundef %48, float noundef %50, float noundef %55) #20
  %56 = load float, ptr %53, align 4, !tbaa !45
  %57 = fmul float %56, 2.000000e+00
  call void @glScalef(float noundef %47, float noundef %47, float noundef %57) #20
  call void @gluCylinder(ptr noundef %6, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00, i32 noundef 8, i32 noundef 1) #20
  br label %79

58:                                               ; preds = %10
  %59 = load float, ptr %4, align 4
  %60 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %61 = load float, ptr %60, align 4
  %62 = fcmp ogt float %59, %61
  %63 = select i1 %62, float %59, float %61
  %64 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %65 = load float, ptr %64, align 4
  %66 = fcmp ogt float %65, %63
  %67 = fsub float %65, %63
  %68 = fmul float %67, 2.000000e+00
  %69 = select i1 %66, float %68, float 0.000000e+00
  %70 = load float, ptr %5, align 4, !tbaa !45
  %71 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !45
  %73 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %74 = load float, ptr %73, align 4, !tbaa !45
  %75 = fneg float %69
  %76 = call float @llvm.fmuladd.f32(float %75, float 5.000000e-01, float %74)
  call void @glTranslatef(float noundef %70, float noundef %72, float noundef %76) #20
  %77 = fpext float %63 to double
  %78 = fpext float %69 to double
  call void @gluCylinder(ptr noundef %6, double noundef %77, double noundef %77, double noundef %78, i32 noundef 8, i32 noundef 1) #20
  call void @gluSphere(ptr noundef %6, double noundef %77, i32 noundef 8, i32 noundef 4) #20
  call void @glTranslatef(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %69) #20
  call void @gluSphere(ptr noundef %6, double noundef %77, i32 noundef 8, i32 noundef 4) #20
  br label %79

79:                                               ; preds = %10, %26, %58, %42, %11
  call void @glPopMatrix() #20
  call void @gluDeleteQuadric(ptr noundef %6) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  ret void
}

; Function Attrs: optsize
declare void @BKE_boundbox_calc_center_aabb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gluSphere(ptr noundef, double noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @drawDispList_nobackface(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4, i16 noundef signext %5, ptr noundef %6) unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 29
  %11 = load i16, ptr %10, align 2, !tbaa !15
  %12 = and i16 %11, 4
  %13 = icmp ugt i8 %4, 2
  %14 = tail call fastcc zeroext i8 @drawCurveDerivedMesh(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) #21, !range !18
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %120, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 3
  %18 = load i16, ptr %17, align 8, !tbaa !79
  %19 = icmp eq i16 %18, 5
  %20 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 55
  %21 = load i16, ptr %20, align 8, !tbaa !68
  %22 = and i16 %21, 4
  %23 = icmp eq i16 %22, 0
  %24 = select i1 %23, i32 2304, i32 2305
  %25 = select i1 %23, i32 2305, i32 2304
  %26 = select i1 %19, i32 %25, i32 %24
  tail call void @glFrontFace(i32 noundef %26) #20
  %27 = load i16, ptr %17, align 8, !tbaa !79
  switch i16 %27, label %120 [
    i16 4, label %28
    i16 2, label %28
    i16 3, label %85
    i16 5, label %103
  ]

28:                                               ; preds = %16, %16
  %29 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %30 = load ptr, ptr %29, align 8, !tbaa !85
  %31 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 118
  %32 = load ptr, ptr %31, align 8, !tbaa !170
  br i1 %13, label %33, label %75

33:                                               ; preds = %28
  %34 = tail call zeroext i8 @BKE_displist_has_faces(ptr noundef %32) #20
  %35 = load ptr, ptr %32, align 8, !tbaa !92
  %36 = icmp eq ptr %35, null
  br i1 %36, label %120, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.DispList, ptr %35, i64 0, i32 9
  %39 = load ptr, ptr %38, align 8, !tbaa !568
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  tail call void @BKE_displist_normals_add(ptr noundef nonnull %32) #20
  br label %42

42:                                               ; preds = %41, %37
  store i1 true, ptr @index3_nors_incr, align 1
  %43 = icmp eq i16 %12, 0
  %44 = icmp eq i8 %34, 0
  br i1 %43, label %45, label %48

45:                                               ; preds = %42
  br i1 %44, label %71, label %46

46:                                               ; preds = %45
  %47 = tail call fastcc zeroext i8 @drawDispListwire_ex(ptr noundef nonnull %32, i32 noundef 2) #21, !range !18
  br label %49

48:                                               ; preds = %42
  br i1 %44, label %74, label %49

49:                                               ; preds = %46, %48
  %50 = tail call zeroext i8 @draw_glsl_material(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %1, i8 noundef zeroext %4) #21, !range !18
  tail call void @GPU_begin_object_materials(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %0, ptr noundef nonnull %9, i8 noundef zeroext %50, ptr noundef null) #20
  tail call fastcc void @drawDispListsolid(ptr noundef nonnull %32, ptr noundef nonnull %9, i16 noundef signext %5, ptr noundef %6, i8 noundef zeroext %50) #21
  tail call void @GPU_end_object_materials() #20
  %51 = getelementptr inbounds %struct.Curve, ptr %30, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !91
  %53 = icmp eq ptr %52, null
  br i1 %53, label %74, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.Curve, ptr %30, i64 0, i32 5
  %56 = load ptr, ptr %55, align 8, !tbaa !569
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %74

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.Curve, ptr %30, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !570
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %74

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.Curve, ptr %30, i64 0, i32 25
  %64 = load float, ptr %63, align 4, !tbaa !571
  %65 = fcmp oeq float %64, 0.000000e+00
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.Curve, ptr %30, i64 0, i32 26
  %68 = load float, ptr %67, align 8, !tbaa !572
  %69 = fcmp oeq float %68, 0.000000e+00
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  tail call void @cpack(i32 noundef 0) #20
  br label %71

71:                                               ; preds = %45, %70
  %72 = load i16, ptr %17, align 8, !tbaa !79
  %73 = tail call fastcc zeroext i8 @drawDispListwire(ptr noundef nonnull %32, i16 noundef signext %72) #21, !range !18
  br label %74

74:                                               ; preds = %71, %49, %54, %58, %62, %66, %48
  store i1 false, ptr @index3_nors_incr, align 1
  br label %120

75:                                               ; preds = %28
  %76 = icmp eq i16 %12, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %75
  %78 = tail call zeroext i8 @BKE_displist_has_faces(ptr noundef %32) #20
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %120, label %80

80:                                               ; preds = %77
  %81 = load i16, ptr %17, align 8, !tbaa !79
  br label %82

82:                                               ; preds = %80, %75
  %83 = phi i16 [ %81, %80 ], [ %27, %75 ]
  %84 = tail call fastcc zeroext i8 @drawDispListwire(ptr noundef %32, i16 noundef signext %83) #21, !range !18
  br label %120

85:                                               ; preds = %16
  %86 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 118
  %87 = load ptr, ptr %86, align 8, !tbaa !170
  br i1 %13, label %88, label %101

88:                                               ; preds = %85
  %89 = load ptr, ptr %87, align 8, !tbaa !92
  %90 = icmp eq ptr %89, null
  br i1 %90, label %120, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.DispList, ptr %89, i64 0, i32 9
  %93 = load ptr, ptr %92, align 8, !tbaa !568
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  tail call void @BKE_displist_normals_add(ptr noundef nonnull %87) #20
  br label %96

96:                                               ; preds = %95, %91
  %97 = tail call zeroext i8 @draw_glsl_material(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %1, i8 noundef zeroext %4) #21, !range !18
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  tail call void @GPU_begin_object_materials(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %0, ptr noundef nonnull %9, i8 noundef zeroext 1, ptr noundef null) #20
  tail call fastcc void @drawDispListsolid(ptr noundef nonnull %87, ptr noundef nonnull %9, i16 noundef signext %5, ptr noundef %6, i8 noundef zeroext 1) #21
  tail call void @GPU_end_object_materials() #20
  br label %120

100:                                              ; preds = %96
  tail call void @GPU_begin_object_materials(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %0, ptr noundef nonnull %9, i8 noundef zeroext 0, ptr noundef null) #20
  tail call fastcc void @drawDispListsolid(ptr noundef nonnull %87, ptr noundef nonnull %9, i16 noundef signext %5, ptr noundef %6, i8 noundef zeroext 0) #21
  tail call void @GPU_end_object_materials() #20
  br label %120

101:                                              ; preds = %85
  %102 = tail call fastcc zeroext i8 @drawDispListwire(ptr noundef %87, i16 noundef signext 3) #21, !range !18
  br label %120

103:                                              ; preds = %16
  %104 = tail call zeroext i8 @BKE_mball_is_basis(ptr noundef nonnull %9) #20
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %120, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 118
  %108 = load ptr, ptr %107, align 8, !tbaa !170
  %109 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef %108) #21, !range !18
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %106
  br i1 %13, label %112, label %117

112:                                              ; preds = %111
  %113 = tail call zeroext i8 @draw_glsl_material(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %1, i8 noundef zeroext %4) #21, !range !18
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %112
  tail call void @GPU_begin_object_materials(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %0, ptr noundef nonnull %9, i8 noundef zeroext 1, ptr noundef null) #20
  tail call fastcc void @drawDispListsolid(ptr noundef %108, ptr noundef nonnull %9, i16 noundef signext %5, ptr noundef %6, i8 noundef zeroext 1) #21
  tail call void @GPU_end_object_materials() #20
  br label %120

116:                                              ; preds = %112
  tail call void @GPU_begin_object_materials(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %0, ptr noundef nonnull %9, i8 noundef zeroext 0, ptr noundef null) #20
  tail call fastcc void @drawDispListsolid(ptr noundef %108, ptr noundef nonnull %9, i16 noundef signext %5, ptr noundef %6, i8 noundef zeroext 0) #21
  tail call void @GPU_end_object_materials() #20
  br label %120

117:                                              ; preds = %111
  %118 = load i16, ptr %17, align 8, !tbaa !79
  %119 = tail call fastcc zeroext i8 @drawDispListwire(ptr noundef %108, i16 noundef signext %118) #21, !range !18
  br label %120

120:                                              ; preds = %16, %77, %99, %100, %116, %115, %103, %74, %33, %106, %88, %7, %117, %101, %82
  %121 = phi i8 [ %119, %117 ], [ %102, %101 ], [ %84, %82 ], [ 0, %7 ], [ 1, %88 ], [ 1, %106 ], [ 1, %33 ], [ 0, %74 ], [ 0, %103 ], [ 0, %115 ], [ 0, %116 ], [ 0, %100 ], [ 0, %99 ], [ 0, %77 ], [ 0, %16 ]
  ret i8 %121
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @drawCurveDerivedMesh(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.Base, ptr %3, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !39
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 120
  %9 = load ptr, ptr %8, align 8, !tbaa !166
  %10 = icmp eq ptr %9, null
  br i1 %10, label %43, label %11

11:                                               ; preds = %5
  tail call void @DM_update_materials(ptr noundef nonnull %9, ptr noundef nonnull %7) #20
  %12 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 55
  %13 = load i16, ptr %12, align 8, !tbaa !68
  %14 = and i16 %13, 4
  %15 = icmp eq i16 %14, 0
  %16 = select i1 %15, i32 2305, i32 2304
  tail call void @glFrontFace(i32 noundef %16) #20
  %17 = icmp ugt i8 %4, 2
  br i1 %17, label %18, label %33

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 25
  %20 = load ptr, ptr %19, align 8, !tbaa !167
  %21 = tail call i32 %20(ptr noundef nonnull %9) #20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %18
  %24 = tail call zeroext i8 @draw_glsl_material(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %1, i8 noundef zeroext %4) #21, !range !18
  tail call void @GPU_begin_object_materials(ptr noundef %1, ptr noundef %2, ptr noundef %0, ptr noundef nonnull %7, i8 noundef zeroext %24, ptr noundef null) #20
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  tail call void @glEnable(i32 noundef 2896) #20
  %27 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 86
  %28 = load ptr, ptr %27, align 8, !tbaa !429
  tail call void %28(ptr noundef nonnull %9, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull @GPU_enable_material) #20
  tail call void @glDisable(i32 noundef 2896) #20
  br label %32

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.DerivedMesh, ptr %9, i64 0, i32 88
  %31 = load ptr, ptr %30, align 8, !tbaa !459
  tail call void %31(ptr noundef nonnull %9, ptr noundef nonnull @GPU_enable_material) #20
  br label %32

32:                                               ; preds = %29, %26
  tail call void @GPU_end_object_materials() #20
  br label %43

33:                                               ; preds = %18, %11
  %34 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 29
  %35 = load i16, ptr %34, align 2, !tbaa !15
  %36 = and i16 %35, 4
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.View3D, ptr %1, i64 0, i32 24
  %40 = load i16, ptr %39, align 8, !tbaa !5
  %41 = icmp slt i16 %40, 3
  br i1 %41, label %42, label %43

42:                                               ; preds = %33, %38
  tail call fastcc void @drawCurveDMWired(ptr noundef nonnull %7) #21
  br label %43

43:                                               ; preds = %32, %42, %38, %5
  %44 = phi i8 [ 1, %5 ], [ 0, %38 ], [ 0, %42 ], [ 0, %32 ]
  ret i8 %44
}

; Function Attrs: optsize
declare void @BKE_displist_normals_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawDispListsolid(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef signext %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca %struct.GPUVertexAttribs, align 4
  call void @llvm.lifetime.start.p0(i64 2564, ptr nonnull %6) #22
  %7 = icmp eq ptr %0, null
  br i1 %7, label %116, label %8

8:                                                ; preds = %5
  tail call void @glEnable(i32 noundef 2896) #20
  tail call void @glEnableClientState(i32 noundef 32884) #20
  %9 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !79
  %11 = icmp eq i16 %10, 5
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @glShadeModel(i32 noundef 7425) #20
  br label %13

13:                                               ; preds = %12, %8
  %14 = load ptr, ptr %0, align 8, !tbaa !53
  %15 = icmp eq ptr %14, null
  br i1 %15, label %115, label %16

16:                                               ; preds = %13
  %17 = icmp eq i8 %4, 0
  %18 = select i1 %17, ptr null, ptr %6
  %19 = and i16 %2, 2
  %20 = icmp eq i16 %19, 0
  br label %21

21:                                               ; preds = %16, %112
  %22 = phi ptr [ %14, %16 ], [ %113, %112 ]
  %23 = getelementptr inbounds %struct.DispList, ptr %22, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !434
  %25 = getelementptr inbounds %struct.DispList, ptr %22, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !568
  %27 = getelementptr inbounds %struct.DispList, ptr %22, i64 0, i32 2
  %28 = load i16, ptr %27, align 8, !tbaa !433
  switch i16 %28, label %112 [
    i16 1, label %29
    i16 0, label %45
    i16 2, label %59
    i16 4, label %80
    i16 5, label %99
  ]

29:                                               ; preds = %21
  %30 = load i16, ptr %9, align 8, !tbaa !79
  %31 = icmp eq i16 %30, 3
  br i1 %31, label %32, label %112

32:                                               ; preds = %29
  call void @glDisable(i32 noundef 2896) #20
  br i1 %20, label %33, label %34

33:                                               ; preds = %32
  call void @glColor3ubv(ptr noundef %3) #20
  br label %34

34:                                               ; preds = %33, %32
  call void @glBegin(i32 noundef 3) #20
  %35 = getelementptr inbounds %struct.DispList, ptr %22, i64 0, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !432
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %34, %38
  %39 = phi i32 [ %41, %38 ], [ %36, %34 ]
  %40 = phi ptr [ %42, %38 ], [ %24, %34 ]
  call void @glVertex3fv(ptr noundef %40) #20
  %41 = add nsw i32 %39, -1
  %42 = getelementptr inbounds float, ptr %40, i64 3
  %43 = icmp eq i32 %41, 0
  br i1 %43, label %44, label %38, !llvm.loop !573

44:                                               ; preds = %38, %34
  call void @glEnd() #20
  call void @glEnable(i32 noundef 2896) #20
  br label %112

45:                                               ; preds = %21
  %46 = load i16, ptr %9, align 8, !tbaa !79
  %47 = icmp eq i16 %46, 3
  br i1 %47, label %48, label %112

48:                                               ; preds = %45
  call void @glDisable(i32 noundef 2896) #20
  call void @glBegin(i32 noundef 2) #20
  %49 = getelementptr inbounds %struct.DispList, ptr %22, i64 0, i32 5
  %50 = load i32, ptr %49, align 8, !tbaa !432
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %48, %52
  %53 = phi i32 [ %55, %52 ], [ %50, %48 ]
  %54 = phi ptr [ %56, %52 ], [ %24, %48 ]
  call void @glVertex3fv(ptr noundef %54) #20
  %55 = add nsw i32 %53, -1
  %56 = getelementptr inbounds float, ptr %54, i64 3
  %57 = icmp eq i32 %55, 0
  br i1 %57, label %58, label %52, !llvm.loop !574

58:                                               ; preds = %52, %48
  call void @glEnd() #20
  call void @glEnable(i32 noundef 2896) #20
  br label %112

59:                                               ; preds = %21
  %60 = getelementptr inbounds %struct.DispList, ptr %22, i64 0, i32 10
  %61 = load ptr, ptr %60, align 8, !tbaa !441
  %62 = icmp eq ptr %61, null
  br i1 %62, label %112, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.DispList, ptr %22, i64 0, i32 6
  %65 = load i16, ptr %64, align 4, !tbaa !575
  %66 = sext i16 %65 to i32
  %67 = add nsw i32 %66, 1
  %68 = call i32 @GPU_enable_material(i32 noundef %67, ptr noundef %18) #20
  %69 = getelementptr inbounds %struct.DispList, ptr %22, i64 0, i32 7
  %70 = load i16, ptr %69, align 2, !tbaa !576
  %71 = and i16 %70, 1
  %72 = icmp eq i16 %71, 0
  %73 = select i1 %72, i32 7424, i32 7425
  call void @glShadeModel(i32 noundef %73) #20
  call void @glEnableClientState(i32 noundef 32885) #20
  %74 = load ptr, ptr %23, align 8, !tbaa !434
  call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 0, ptr noundef %74) #20
  %75 = load ptr, ptr %25, align 8, !tbaa !568
  call void @glNormalPointer(i32 noundef 5126, i32 noundef 0, ptr noundef %75) #20
  %76 = getelementptr inbounds %struct.DispList, ptr %22, i64 0, i32 12
  %77 = load i32, ptr %76, align 4, !tbaa !577
  %78 = shl nsw i32 %77, 2
  %79 = load ptr, ptr %60, align 8, !tbaa !441
  call void @glDrawElements(i32 noundef 7, i32 noundef %78, i32 noundef 5125, ptr noundef %79) #20
  call void @glDisableClientState(i32 noundef 32885) #20
  br label %112

80:                                               ; preds = %21
  %81 = getelementptr inbounds %struct.DispList, ptr %22, i64 0, i32 6
  %82 = load i16, ptr %81, align 4, !tbaa !575
  %83 = sext i16 %82 to i32
  %84 = add nsw i32 %83, 1
  %85 = call i32 @GPU_enable_material(i32 noundef %84, ptr noundef %18) #20
  %86 = load ptr, ptr %23, align 8, !tbaa !434
  call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 0, ptr noundef %86) #20
  %87 = load i1, ptr @index3_nors_incr, align 1
  br i1 %87, label %90, label %88

88:                                               ; preds = %80
  call void @glEnableClientState(i32 noundef 32885) #20
  %89 = load ptr, ptr %25, align 8, !tbaa !568
  call void @glNormalPointer(i32 noundef 5126, i32 noundef 0, ptr noundef %89) #20
  br label %91

90:                                               ; preds = %80
  call void @glNormal3fv(ptr noundef %26) #20
  br label %91

91:                                               ; preds = %90, %88
  %92 = getelementptr inbounds %struct.DispList, ptr %22, i64 0, i32 4
  %93 = load i32, ptr %92, align 4, !tbaa !430
  %94 = mul nsw i32 %93, 3
  %95 = getelementptr inbounds %struct.DispList, ptr %22, i64 0, i32 10
  %96 = load ptr, ptr %95, align 8, !tbaa !441
  call void @glDrawElements(i32 noundef 4, i32 noundef %94, i32 noundef 5125, ptr noundef %96) #20
  %97 = load i1, ptr @index3_nors_incr, align 1
  br i1 %97, label %112, label %98

98:                                               ; preds = %91
  call void @glDisableClientState(i32 noundef 32885) #20
  br label %112

99:                                               ; preds = %21
  %100 = getelementptr inbounds %struct.DispList, ptr %22, i64 0, i32 6
  %101 = load i16, ptr %100, align 4, !tbaa !575
  %102 = sext i16 %101 to i32
  %103 = add nsw i32 %102, 1
  %104 = call i32 @GPU_enable_material(i32 noundef %103, ptr noundef %18) #20
  call void @glEnableClientState(i32 noundef 32885) #20
  %105 = load ptr, ptr %23, align 8, !tbaa !434
  call void @glVertexPointer(i32 noundef 3, i32 noundef 5126, i32 noundef 0, ptr noundef %105) #20
  %106 = load ptr, ptr %25, align 8, !tbaa !568
  call void @glNormalPointer(i32 noundef 5126, i32 noundef 0, ptr noundef %106) #20
  %107 = getelementptr inbounds %struct.DispList, ptr %22, i64 0, i32 4
  %108 = load i32, ptr %107, align 4, !tbaa !430
  %109 = shl nsw i32 %108, 2
  %110 = getelementptr inbounds %struct.DispList, ptr %22, i64 0, i32 10
  %111 = load ptr, ptr %110, align 8, !tbaa !441
  call void @glDrawElements(i32 noundef 7, i32 noundef %109, i32 noundef 5125, ptr noundef %111) #20
  call void @glDisableClientState(i32 noundef 32885) #20
  br label %112

112:                                              ; preds = %91, %98, %59, %63, %45, %58, %29, %44, %21, %99
  %113 = load ptr, ptr %22, align 8, !tbaa !53
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %21, !llvm.loop !578

115:                                              ; preds = %112, %13
  call void @glDisableClientState(i32 noundef 32884) #20
  call void @glShadeModel(i32 noundef 7424) #20
  call void @glDisable(i32 noundef 2896) #20
  call void @glFrontFace(i32 noundef 2305) #20
  br label %116

116:                                              ; preds = %5, %115
  call void @llvm.lifetime.end.p0(i64 2564, ptr nonnull %6) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = load ptr, ptr %0, align 8, !tbaa !92
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawCurveDMWired(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 120
  %3 = load ptr, ptr %2, align 8, !tbaa !166
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %3, i64 0, i32 84
  %5 = load ptr, ptr %4, align 8, !tbaa !428
  tail call void %5(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 0) #20
  ret void
}

; Function Attrs: optsize
declare void @glNormalPointer(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glNormal3fv(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_curve_vert_active_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glDepthFunc(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawhandlesN_active(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 4
  %3 = load i16, ptr %2, align 4, !tbaa !579
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %5, label %30

5:                                                ; preds = %1
  tail call void @UI_ThemeColor(i32 noundef 64) #20
  tail call void @glLineWidth(float noundef 2.000000e+00) #20
  tail call void @glBegin(i32 noundef 1) #20
  %6 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !215
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %9, label %29

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !580
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  %15 = load ptr, ptr %14, align 8, !tbaa !581
  br label %16

16:                                               ; preds = %13, %26
  %17 = phi i32 [ %19, %26 ], [ %11, %13 ]
  %18 = phi ptr [ %27, %26 ], [ %15, %13 ]
  %19 = add nsw i32 %17, -1
  %20 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 0, i32 10
  %21 = load i8, ptr %20, align 2, !tbaa !582
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  tail call void @glVertex3fv(ptr noundef nonnull %18) #20
  %24 = getelementptr inbounds float, ptr %18, i64 3
  tail call void @glVertex3fv(ptr noundef nonnull %24) #20
  tail call void @glVertex3fv(ptr noundef nonnull %24) #20
  %25 = getelementptr inbounds float, ptr %18, i64 6
  tail call void @glVertex3fv(ptr noundef nonnull %25) #20
  br label %26

26:                                               ; preds = %23, %16
  %27 = getelementptr inbounds %struct.BezTriple, ptr %18, i64 1
  %28 = icmp eq i32 %19, 0
  br i1 %28, label %29, label %16, !llvm.loop !584

29:                                               ; preds = %26, %9, %5
  tail call void @glEnd() #20
  tail call void @glColor3ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #20
  tail call void @glLineWidth(float noundef 1.000000e+00) #20
  br label %30

30:                                               ; preds = %1, %29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawhandlesN(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [6 x [3 x i8]], align 16
  %5 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 4
  %6 = load i16, ptr %5, align 4, !tbaa !579
  %7 = icmp ne i16 %6, 0
  %8 = icmp ne i8 %2, 0
  %9 = or i1 %8, %7
  br i1 %9, label %88, label %10

10:                                               ; preds = %3
  tail call void @glBegin(i32 noundef 1) #20
  %11 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 2
  %12 = load i16, ptr %11, align 8, !tbaa !215
  %13 = icmp eq i16 %12, 1
  br i1 %13, label %14, label %87

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %4) #22
  %15 = icmp eq i8 %1, 0
  %16 = select i1 %15, i64 54, i64 59
  br label %17

17:                                               ; preds = %14, %17
  %18 = phi i64 [ 0, %14 ], [ %22, %17 ]
  %19 = add nuw nsw i64 %18, %16
  %20 = getelementptr inbounds [6 x [3 x i8]], ptr %4, i64 0, i64 %18
  %21 = trunc i64 %19 to i32
  call void @UI_GetThemeColor3ubv(i32 noundef %21, ptr noundef nonnull %20) #20
  %22 = add nuw nsw i64 %18, 1
  %23 = icmp eq i64 %22, 6
  br i1 %23, label %24, label %17, !llvm.loop !585

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !580
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %86, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  %30 = load ptr, ptr %29, align 8, !tbaa !581
  br label %31

31:                                               ; preds = %28, %83
  %32 = phi i32 [ %34, %83 ], [ %26, %28 ]
  %33 = phi ptr [ %84, %83 ], [ %30, %28 ]
  %34 = add nsw i32 %32, -1
  %35 = getelementptr inbounds %struct.BezTriple, ptr %33, i64 0, i32 10
  %36 = load i8, ptr %35, align 2, !tbaa !582
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %83

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.BezTriple, ptr %33, i64 0, i32 8
  %40 = load i8, ptr %39, align 4, !tbaa !586
  %41 = and i8 %40, 1
  %42 = icmp eq i8 %41, %1
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.BezTriple, ptr %33, i64 0, i32 5
  %45 = load i8, ptr %44, align 1, !tbaa !587
  %46 = call i8 @llvm.umin.i8(i8 %45, i8 5)
  %47 = zext nneg i8 %46 to i64
  %48 = getelementptr inbounds [6 x [3 x i8]], ptr %4, i64 0, i64 %47
  call void @glColor3ubv(ptr noundef nonnull %48) #20
  call void @glVertex3fv(ptr noundef nonnull %33) #20
  %49 = getelementptr inbounds float, ptr %33, i64 3
  call void @glVertex3fv(ptr noundef nonnull %49) #20
  %50 = getelementptr inbounds %struct.BezTriple, ptr %33, i64 0, i32 6
  %51 = load i8, ptr %50, align 2, !tbaa !588
  %52 = call i8 @llvm.umin.i8(i8 %51, i8 5)
  %53 = zext nneg i8 %52 to i64
  %54 = getelementptr inbounds [6 x [3 x i8]], ptr %4, i64 0, i64 %53
  call void @glColor3ubv(ptr noundef nonnull %54) #20
  call void @glVertex3fv(ptr noundef nonnull %49) #20
  %55 = getelementptr inbounds float, ptr %33, i64 6
  br label %81

56:                                               ; preds = %38
  %57 = getelementptr inbounds %struct.BezTriple, ptr %33, i64 0, i32 7
  %58 = load i8, ptr %57, align 1, !tbaa !589
  %59 = and i8 %58, 1
  %60 = icmp eq i8 %59, %1
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.BezTriple, ptr %33, i64 0, i32 5
  %63 = load i8, ptr %62, align 1, !tbaa !587
  %64 = call i8 @llvm.umin.i8(i8 %63, i8 5)
  %65 = zext nneg i8 %64 to i64
  %66 = getelementptr inbounds [6 x [3 x i8]], ptr %4, i64 0, i64 %65
  call void @glColor3ubv(ptr noundef nonnull %66) #20
  call void @glVertex3fv(ptr noundef nonnull %33) #20
  %67 = getelementptr inbounds float, ptr %33, i64 3
  br label %81

68:                                               ; preds = %56
  %69 = getelementptr inbounds %struct.BezTriple, ptr %33, i64 0, i32 9
  %70 = load i8, ptr %69, align 1, !tbaa !590
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, %1
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = getelementptr inbounds [3 x [3 x float]], ptr %33, i64 0, i64 1
  %75 = getelementptr inbounds %struct.BezTriple, ptr %33, i64 0, i32 6
  %76 = load i8, ptr %75, align 2, !tbaa !588
  %77 = call i8 @llvm.umin.i8(i8 %76, i8 5)
  %78 = zext nneg i8 %77 to i64
  %79 = getelementptr inbounds [6 x [3 x i8]], ptr %4, i64 0, i64 %78
  call void @glColor3ubv(ptr noundef nonnull %79) #20
  call void @glVertex3fv(ptr noundef nonnull %74) #20
  %80 = getelementptr inbounds [3 x [3 x float]], ptr %33, i64 0, i64 2
  br label %81

81:                                               ; preds = %61, %73, %43
  %82 = phi ptr [ %55, %43 ], [ %80, %73 ], [ %67, %61 ]
  call void @glVertex3fv(ptr noundef nonnull %82) #20
  br label %83

83:                                               ; preds = %81, %68, %31
  %84 = getelementptr inbounds %struct.BezTriple, ptr %33, i64 1
  %85 = icmp eq i32 %34, 0
  br i1 %85, label %86, label %31, !llvm.loop !591

86:                                               ; preds = %83, %24
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %4) #22
  br label %87

87:                                               ; preds = %86, %10
  call void @glEnd() #20
  br label %88

88:                                               ; preds = %3, %87
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_editnurb_splines(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %175, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !85
  %8 = icmp eq i8 %2, 0
  %9 = getelementptr inbounds %struct.Curve, ptr %7, i64 0, i32 31
  br label %10

10:                                               ; preds = %5, %171
  %11 = phi ptr [ %1, %5 ], [ %173, %171 ]
  %12 = phi i32 [ 0, %5 ], [ %172, %171 ]
  %13 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 4
  %14 = load i16, ptr %13, align 4, !tbaa !579
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %171

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 2
  %18 = load i16, ptr %17, align 8, !tbaa !215
  switch i16 %18, label %171 [
    i16 0, label %19
    i16 4, label %54
  ]

19:                                               ; preds = %16
  br i1 %8, label %20, label %24

20:                                               ; preds = %19
  %21 = load i32, ptr %9, align 4, !tbaa !217
  %22 = icmp eq i32 %12, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  tail call fastcc void @editnurb_draw_active_poly(ptr noundef nonnull %11) #21
  br label %24

24:                                               ; preds = %23, %20, %19
  tail call void @UI_ThemeColor(i32 noundef 50) #20
  %25 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 7
  %26 = load i32, ptr %25, align 4, !tbaa !592
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %171

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 17
  %30 = load ptr, ptr %29, align 8, !tbaa !593
  %31 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 13
  %32 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 6
  br label %33

33:                                               ; preds = %28, %49
  %34 = phi ptr [ %30, %28 ], [ %50, %49 ]
  %35 = phi i32 [ 0, %28 ], [ %51, %49 ]
  %36 = load i16, ptr %31, align 4, !tbaa !594
  %37 = and i16 %36, 1
  %38 = icmp eq i16 %37, 0
  %39 = select i1 %38, i32 3, i32 2
  tail call void @glBegin(i32 noundef %39) #20
  %40 = load i32, ptr %32, align 8, !tbaa !580
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %33, %42
  %43 = phi ptr [ %46, %42 ], [ %34, %33 ]
  %44 = phi i32 [ %45, %42 ], [ 0, %33 ]
  tail call void @glVertex3fv(ptr noundef %43) #20
  %45 = add nuw nsw i32 %44, 1
  %46 = getelementptr inbounds %struct.BPoint, ptr %43, i64 1
  %47 = load i32, ptr %32, align 8, !tbaa !580
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %42, label %49, !llvm.loop !595

49:                                               ; preds = %42, %33
  %50 = phi ptr [ %34, %33 ], [ %46, %42 ]
  tail call void @glEnd() #20
  %51 = add nuw nsw i32 %35, 1
  %52 = load i32, ptr %25, align 4, !tbaa !592
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %33, label %171, !llvm.loop !596

54:                                               ; preds = %16
  br i1 %8, label %55, label %59

55:                                               ; preds = %54
  %56 = load i32, ptr %9, align 4, !tbaa !217
  %57 = icmp eq i32 %12, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  tail call fastcc void @editnurb_draw_active_nurbs(ptr noundef nonnull %11) #21
  br label %59

59:                                               ; preds = %58, %55, %54
  %60 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 17
  %61 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 7
  %62 = load i32, ptr %61, align 4, !tbaa !592
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %171

64:                                               ; preds = %59
  %65 = load ptr, ptr %60, align 8, !tbaa !593
  %66 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 6
  br label %67

67:                                               ; preds = %64, %110
  %68 = phi i32 [ %62, %64 ], [ %111, %110 ]
  %69 = phi ptr [ %65, %64 ], [ %112, %110 ]
  %70 = phi i32 [ 0, %64 ], [ %113, %110 ]
  %71 = load i32, ptr %66, align 8, !tbaa !580
  %72 = getelementptr inbounds %struct.BPoint, ptr %69, i64 1
  %73 = icmp sgt i32 %71, 1
  br i1 %73, label %74, label %110

74:                                               ; preds = %67, %105
  %75 = phi i32 [ %78, %105 ], [ %71, %67 ]
  %76 = phi ptr [ %106, %105 ], [ %72, %67 ]
  %77 = phi ptr [ %76, %105 ], [ %69, %67 ]
  %78 = add nsw i32 %75, -1
  %79 = getelementptr inbounds %struct.BPoint, ptr %77, i64 1, i32 4
  %80 = load i16, ptr %79, align 2, !tbaa !597
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %82, label %105

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.BPoint, ptr %77, i64 0, i32 4
  %84 = load i16, ptr %83, align 2, !tbaa !597
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.BPoint, ptr %77, i64 1, i32 3
  %88 = load i16, ptr %87, align 4, !tbaa !599
  %89 = and i16 %88, 1
  %90 = icmp eq i16 %89, 0
  br i1 %8, label %97, label %91

91:                                               ; preds = %86
  br i1 %90, label %105, label %92

92:                                               ; preds = %91
  %93 = getelementptr inbounds %struct.BPoint, ptr %77, i64 0, i32 3
  %94 = load i16, ptr %93, align 4, !tbaa !599
  %95 = and i16 %94, 1
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %105, label %103

97:                                               ; preds = %86
  br i1 %90, label %103, label %98

98:                                               ; preds = %97
  %99 = getelementptr inbounds %struct.BPoint, ptr %77, i64 0, i32 3
  %100 = load i16, ptr %99, align 4, !tbaa !599
  %101 = and i16 %100, 1
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %97, %98, %92
  %104 = phi i32 [ 52, %92 ], [ 50, %98 ], [ 50, %97 ]
  tail call void @UI_ThemeColor(i32 noundef %104) #20
  tail call void @glBegin(i32 noundef 3) #20
  tail call void @glVertex3fv(ptr noundef nonnull %76) #20
  tail call void @glVertex3fv(ptr noundef nonnull %77) #20
  tail call void @glEnd() #20
  br label %105

105:                                              ; preds = %103, %92, %91, %98, %82, %74
  %106 = getelementptr inbounds %struct.BPoint, ptr %76, i64 1
  %107 = icmp ugt i32 %75, 2
  br i1 %107, label %74, label %108, !llvm.loop !600

108:                                              ; preds = %105
  %109 = load i32, ptr %61, align 4, !tbaa !592
  br label %110

110:                                              ; preds = %108, %67
  %111 = phi i32 [ %68, %67 ], [ %109, %108 ]
  %112 = phi ptr [ %72, %67 ], [ %106, %108 ]
  %113 = add nuw nsw i32 %70, 1
  %114 = icmp slt i32 %113, %111
  br i1 %114, label %67, label %115, !llvm.loop !601

115:                                              ; preds = %110
  %116 = icmp sgt i32 %111, 1
  br i1 %116, label %117, label %171

117:                                              ; preds = %115
  %118 = getelementptr inbounds %struct.Nurb, ptr %11, i64 0, i32 6
  %119 = load i32, ptr %118, align 8, !tbaa !580
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %171

121:                                              ; preds = %117
  %122 = zext nneg i32 %119 to i64
  br label %123

123:                                              ; preds = %121, %166
  %124 = phi i32 [ %119, %121 ], [ %167, %166 ]
  %125 = phi i64 [ 0, %121 ], [ %168, %166 ]
  %126 = load i32, ptr %61, align 4, !tbaa !592
  %127 = icmp sgt i32 %126, 1
  br i1 %127, label %128, label %166

128:                                              ; preds = %123
  %129 = load ptr, ptr %60, align 8, !tbaa !593
  %130 = getelementptr inbounds %struct.BPoint, ptr %129, i64 %125
  br label %131

131:                                              ; preds = %128, %162
  %132 = phi i32 [ %135, %162 ], [ %126, %128 ]
  %133 = phi ptr [ %134, %162 ], [ %130, %128 ]
  %134 = getelementptr inbounds %struct.BPoint, ptr %133, i64 %122
  %135 = add nsw i32 %132, -1
  %136 = getelementptr inbounds %struct.BPoint, ptr %133, i64 %122, i32 4
  %137 = load i16, ptr %136, align 2, !tbaa !597
  %138 = icmp eq i16 %137, 0
  br i1 %138, label %139, label %162

139:                                              ; preds = %131
  %140 = getelementptr inbounds %struct.BPoint, ptr %133, i64 0, i32 4
  %141 = load i16, ptr %140, align 2, !tbaa !597
  %142 = icmp eq i16 %141, 0
  br i1 %142, label %143, label %162

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.BPoint, ptr %133, i64 %122, i32 3
  %145 = load i16, ptr %144, align 4, !tbaa !599
  %146 = and i16 %145, 1
  %147 = icmp eq i16 %146, 0
  br i1 %8, label %154, label %148

148:                                              ; preds = %143
  br i1 %147, label %162, label %149

149:                                              ; preds = %148
  %150 = getelementptr inbounds %struct.BPoint, ptr %133, i64 0, i32 3
  %151 = load i16, ptr %150, align 4, !tbaa !599
  %152 = and i16 %151, 1
  %153 = icmp eq i16 %152, 0
  br i1 %153, label %162, label %160

154:                                              ; preds = %143
  br i1 %147, label %160, label %155

155:                                              ; preds = %154
  %156 = getelementptr inbounds %struct.BPoint, ptr %133, i64 0, i32 3
  %157 = load i16, ptr %156, align 4, !tbaa !599
  %158 = and i16 %157, 1
  %159 = icmp eq i16 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %154, %155, %149
  %161 = phi i32 [ 53, %149 ], [ 51, %155 ], [ 51, %154 ]
  tail call void @UI_ThemeColor(i32 noundef %161) #20
  tail call void @glBegin(i32 noundef 3) #20
  tail call void @glVertex3fv(ptr noundef nonnull %134) #20
  tail call void @glVertex3fv(ptr noundef nonnull %133) #20
  tail call void @glEnd() #20
  br label %162

162:                                              ; preds = %160, %149, %148, %155, %139, %131
  %163 = icmp ugt i32 %132, 2
  br i1 %163, label %131, label %164, !llvm.loop !602

164:                                              ; preds = %162
  %165 = load i32, ptr %118, align 8, !tbaa !580
  br label %166

166:                                              ; preds = %164, %123
  %167 = phi i32 [ %165, %164 ], [ %124, %123 ]
  %168 = add nuw nsw i64 %125, 1
  %169 = sext i32 %167 to i64
  %170 = icmp slt i64 %168, %169
  br i1 %170, label %123, label %171, !llvm.loop !603

171:                                              ; preds = %166, %49, %59, %117, %24, %16, %115, %10
  %172 = add nuw nsw i32 %12, 1
  %173 = load ptr, ptr %11, align 8, !tbaa !218
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %10, !llvm.loop !604

175:                                              ; preds = %171, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawvertsN(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef readnone %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 4
  %6 = load i16, ptr %5, align 4, !tbaa !579
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %110

8:                                                ; preds = %4
  %9 = icmp eq i8 %1, 0
  %10 = select i1 %9, i32 33, i32 34
  tail call void @UI_ThemeColor(i32 noundef %10) #20
  %11 = tail call float @UI_GetThemeValuef(i32 noundef 36) #20
  tail call void @glPointSize(float noundef %11) #20
  tail call void @bglBegin(i32 noundef 0) #20
  %12 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !215
  %14 = icmp eq i16 %13, 1
  %15 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !580
  br i1 %14, label %17, label %81

17:                                               ; preds = %8
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %109, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 18
  %21 = load ptr, ptr %20, align 8, !tbaa !581
  %22 = icmp eq i8 %1, 1
  %23 = icmp eq i8 %2, 0
  %24 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 1
  %25 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 7
  %26 = getelementptr inbounds %struct.BezTriple, ptr %3, i64 0, i32 9
  %27 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 2
  br label %28

28:                                               ; preds = %19, %78
  %29 = phi i32 [ %16, %19 ], [ %31, %78 ]
  %30 = phi ptr [ %21, %19 ], [ %79, %78 ]
  %31 = add nsw i32 %29, -1
  %32 = getelementptr inbounds %struct.BezTriple, ptr %30, i64 0, i32 10
  %33 = load i8, ptr %32, align 2, !tbaa !582
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %78

35:                                               ; preds = %28
  %36 = icmp eq ptr %30, %3
  %37 = and i1 %22, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  tail call void @UI_ThemeColor(i32 noundef 65) #20
  tail call void @bglVertex3fv(ptr noundef nonnull %24) #20
  br i1 %23, label %39, label %49

39:                                               ; preds = %38
  %40 = load i8, ptr %25, align 1, !tbaa !589
  %41 = and i8 %40, 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void @bglVertex3fv(ptr noundef nonnull %3) #20
  br label %44

44:                                               ; preds = %43, %39
  %45 = load i8, ptr %26, align 1, !tbaa !590
  %46 = and i8 %45, 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  tail call void @bglVertex3fv(ptr noundef nonnull %27) #20
  br label %49

49:                                               ; preds = %44, %48, %38
  tail call void @UI_ThemeColor(i32 noundef 34) #20
  br label %78

50:                                               ; preds = %35
  br i1 %23, label %58, label %51

51:                                               ; preds = %50
  %52 = getelementptr inbounds %struct.BezTriple, ptr %30, i64 0, i32 8
  %53 = load i8, ptr %52, align 4, !tbaa !586
  %54 = and i8 %53, 1
  %55 = icmp eq i8 %54, %1
  br i1 %55, label %56, label %78

56:                                               ; preds = %51
  %57 = getelementptr inbounds [3 x [3 x float]], ptr %30, i64 0, i64 1
  tail call void @bglVertex3fv(ptr noundef nonnull %57) #20
  br label %78

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.BezTriple, ptr %30, i64 0, i32 7
  %60 = load i8, ptr %59, align 1, !tbaa !589
  %61 = and i8 %60, 1
  %62 = icmp eq i8 %61, %1
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  tail call void @bglVertex3fv(ptr noundef nonnull %30) #20
  br label %64

64:                                               ; preds = %63, %58
  %65 = getelementptr inbounds %struct.BezTriple, ptr %30, i64 0, i32 8
  %66 = load i8, ptr %65, align 4, !tbaa !586
  %67 = and i8 %66, 1
  %68 = icmp eq i8 %67, %1
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = getelementptr inbounds [3 x [3 x float]], ptr %30, i64 0, i64 1
  tail call void @bglVertex3fv(ptr noundef nonnull %70) #20
  br label %71

71:                                               ; preds = %69, %64
  %72 = getelementptr inbounds %struct.BezTriple, ptr %30, i64 0, i32 9
  %73 = load i8, ptr %72, align 1, !tbaa !590
  %74 = and i8 %73, 1
  %75 = icmp eq i8 %74, %1
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = getelementptr inbounds [3 x [3 x float]], ptr %30, i64 0, i64 2
  tail call void @bglVertex3fv(ptr noundef nonnull %77) #20
  br label %78

78:                                               ; preds = %49, %71, %76, %51, %56, %28
  %79 = getelementptr inbounds %struct.BezTriple, ptr %30, i64 1
  %80 = icmp eq i32 %31, 0
  br i1 %80, label %109, label %28, !llvm.loop !605

81:                                               ; preds = %8
  %82 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 7
  %83 = load i32, ptr %82, align 4, !tbaa !592
  %84 = mul nsw i32 %83, %16
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %109, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %88 = load ptr, ptr %87, align 8, !tbaa !593
  %89 = zext i8 %1 to i16
  br label %90

90:                                               ; preds = %86, %106
  %91 = phi i32 [ %84, %86 ], [ %93, %106 ]
  %92 = phi ptr [ %88, %86 ], [ %107, %106 ]
  %93 = add nsw i32 %91, -1
  %94 = getelementptr inbounds %struct.BPoint, ptr %92, i64 0, i32 4
  %95 = load i16, ptr %94, align 2, !tbaa !597
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %90
  %98 = icmp eq ptr %92, %3
  br i1 %98, label %99, label %100

99:                                               ; preds = %97
  tail call void @UI_ThemeColor(i32 noundef 65) #20
  tail call void @bglVertex3fv(ptr noundef nonnull %3) #20
  tail call void @UI_ThemeColor(i32 noundef %10) #20
  br label %106

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.BPoint, ptr %92, i64 0, i32 3
  %102 = load i16, ptr %101, align 4, !tbaa !599
  %103 = and i16 %102, 1
  %104 = icmp eq i16 %103, %89
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  tail call void @bglVertex3fv(ptr noundef nonnull %92) #20
  br label %106

106:                                              ; preds = %99, %105, %100, %90
  %107 = getelementptr inbounds %struct.BPoint, ptr %92, i64 1
  %108 = icmp eq i32 %93, 0
  br i1 %108, label %109, label %90, !llvm.loop !606

109:                                              ; preds = %106, %78, %81, %17
  tail call void @bglEnd() #20
  tail call void @glPointSize(float noundef 1.000000e+00) #20
  br label %110

110:                                              ; preds = %4, %109
  ret void
}

; Function Attrs: optsize
declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #7 {
  %4 = load float, ptr %1, align 4, !tbaa !45
  %5 = load float, ptr %0, align 4, !tbaa !45
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !45
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !45
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !45
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !45
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !45
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !45
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @editnurb_draw_active_poly(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  tail call void @UI_ThemeColor(i32 noundef 64) #20
  tail call void @glLineWidth(float noundef 2.000000e+00) #20
  %2 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !592
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %31

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %7 = load ptr, ptr %6, align 8, !tbaa !593
  %8 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 13
  %9 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  br label %10

10:                                               ; preds = %5, %26
  %11 = phi i32 [ 0, %5 ], [ %28, %26 ]
  %12 = phi ptr [ %7, %5 ], [ %27, %26 ]
  %13 = load i16, ptr %8, align 4, !tbaa !594
  %14 = and i16 %13, 1
  %15 = icmp eq i16 %14, 0
  %16 = select i1 %15, i32 3, i32 2
  tail call void @glBegin(i32 noundef %16) #20
  %17 = load i32, ptr %9, align 8, !tbaa !580
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %10, %19
  %20 = phi i32 [ %22, %19 ], [ 0, %10 ]
  %21 = phi ptr [ %23, %19 ], [ %12, %10 ]
  tail call void @glVertex3fv(ptr noundef %21) #20
  %22 = add nuw nsw i32 %20, 1
  %23 = getelementptr inbounds %struct.BPoint, ptr %21, i64 1
  %24 = load i32, ptr %9, align 8, !tbaa !580
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %19, label %26, !llvm.loop !607

26:                                               ; preds = %19, %10
  %27 = phi ptr [ %12, %10 ], [ %23, %19 ]
  tail call void @glEnd() #20
  %28 = add nuw nsw i32 %11, 1
  %29 = load i32, ptr %2, align 4, !tbaa !592
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %10, label %31, !llvm.loop !608

31:                                               ; preds = %26, %1
  tail call void @glColor3ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #20
  tail call void @glLineWidth(float noundef 1.000000e+00) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @editnurb_draw_active_nurbs(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  tail call void @UI_ThemeColor(i32 noundef 64) #20
  tail call void @glLineWidth(float noundef 2.000000e+00) #20
  tail call void @glBegin(i32 noundef 1) #20
  %2 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 17
  %3 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 4, !tbaa !592
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %77

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !593
  %8 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  br label %9

9:                                                ; preds = %6, %34
  %10 = phi i32 [ %4, %6 ], [ %35, %34 ]
  %11 = phi ptr [ %7, %6 ], [ %36, %34 ]
  %12 = phi i32 [ 0, %6 ], [ %37, %34 ]
  %13 = load i32, ptr %8, align 8, !tbaa !580
  %14 = getelementptr inbounds %struct.BPoint, ptr %11, i64 1
  %15 = icmp sgt i32 %13, 1
  br i1 %15, label %16, label %34

16:                                               ; preds = %9, %29
  %17 = phi i32 [ %20, %29 ], [ %13, %9 ]
  %18 = phi ptr [ %30, %29 ], [ %14, %9 ]
  %19 = phi ptr [ %18, %29 ], [ %11, %9 ]
  %20 = add nsw i32 %17, -1
  %21 = getelementptr inbounds %struct.BPoint, ptr %19, i64 1, i32 4
  %22 = load i16, ptr %21, align 2, !tbaa !597
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.BPoint, ptr %19, i64 0, i32 4
  %26 = load i16, ptr %25, align 2, !tbaa !597
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  tail call void @glVertex3fv(ptr noundef nonnull %18) #20
  tail call void @glVertex3fv(ptr noundef nonnull %19) #20
  br label %29

29:                                               ; preds = %28, %24, %16
  %30 = getelementptr inbounds %struct.BPoint, ptr %18, i64 1
  %31 = icmp ugt i32 %17, 2
  br i1 %31, label %16, label %32, !llvm.loop !609

32:                                               ; preds = %29
  %33 = load i32, ptr %3, align 4, !tbaa !592
  br label %34

34:                                               ; preds = %32, %9
  %35 = phi i32 [ %10, %9 ], [ %33, %32 ]
  %36 = phi ptr [ %14, %9 ], [ %30, %32 ]
  %37 = add nuw nsw i32 %12, 1
  %38 = icmp slt i32 %37, %35
  br i1 %38, label %9, label %39, !llvm.loop !610

39:                                               ; preds = %34
  %40 = icmp sgt i32 %35, 1
  br i1 %40, label %41, label %77

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.Nurb, ptr %0, i64 0, i32 6
  %43 = load i32, ptr %42, align 8, !tbaa !580
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %77

45:                                               ; preds = %41
  %46 = zext nneg i32 %43 to i64
  br label %47

47:                                               ; preds = %45, %72
  %48 = phi i32 [ %43, %45 ], [ %73, %72 ]
  %49 = phi i64 [ 0, %45 ], [ %74, %72 ]
  %50 = load i32, ptr %3, align 4, !tbaa !592
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %72

52:                                               ; preds = %47
  %53 = load ptr, ptr %2, align 8, !tbaa !593
  %54 = getelementptr inbounds %struct.BPoint, ptr %53, i64 %49
  br label %55

55:                                               ; preds = %52, %68
  %56 = phi i32 [ %59, %68 ], [ %50, %52 ]
  %57 = phi ptr [ %58, %68 ], [ %54, %52 ]
  %58 = getelementptr inbounds %struct.BPoint, ptr %57, i64 %46
  %59 = add nsw i32 %56, -1
  %60 = getelementptr inbounds %struct.BPoint, ptr %57, i64 %46, i32 4
  %61 = load i16, ptr %60, align 2, !tbaa !597
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.BPoint, ptr %57, i64 0, i32 4
  %65 = load i16, ptr %64, align 2, !tbaa !597
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  tail call void @glVertex3fv(ptr noundef nonnull %58) #20
  tail call void @glVertex3fv(ptr noundef nonnull %57) #20
  br label %68

68:                                               ; preds = %67, %63, %55
  %69 = icmp ugt i32 %56, 2
  br i1 %69, label %55, label %70, !llvm.loop !611

70:                                               ; preds = %68
  %71 = load i32, ptr %42, align 8, !tbaa !580
  br label %72

72:                                               ; preds = %70, %47
  %73 = phi i32 [ %71, %70 ], [ %48, %47 ]
  %74 = add nuw nsw i64 %49, 1
  %75 = sext i32 %73 to i64
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %47, label %77, !llvm.loop !612

77:                                               ; preds = %72, %1, %41, %39
  tail call void @glEnd() #20
  tail call void @glColor3ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #20
  tail call void @glLineWidth(float noundef 1.000000e+00) #20
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @GPU_select_load_id(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @atanf(float noundef) local_unnamed_addr #15

; Function Attrs: optsize
declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @IMB_rect_from_float(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #14 {
  %3 = fcmp ogt float %0, %1
  %4 = select i1 %3, float %0, float %1
  ret float %4
}

; Function Attrs: optsize
declare void @glAlphaFunc(i32 noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glColor4fv(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glaDrawPixelsTex(float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glPixelTransferf(i32 noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @ED_view3d_pixel_size(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @axis_angle_normalized_to_mat3_ex(ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @copy_v3_fl3(ptr nocapture noundef writeonly %0, float noundef %1, float noundef %2, float noundef %3) unnamed_addr #11 {
  store float %1, ptr %0, align 4, !tbaa !45
  %5 = getelementptr inbounds float, ptr %0, i64 1
  store float %2, ptr %5, align 4, !tbaa !45
  %6 = getelementptr inbounds float, ptr %0, i64 2
  store float %3, ptr %6, align 4, !tbaa !45
  ret void
}

; Function Attrs: optsize
declare void @mul_transposed_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #15

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @spotvolume(ptr noundef %0, ptr noundef %1, float noundef %2) unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x [3 x float]], align 16
  %8 = alloca [3 x [3 x float]], align 16
  %9 = alloca [3 x [3 x float]], align 16
  %10 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #22
  %11 = tail call fastcc float @normalize_v3(ptr noundef %0) #21
  %12 = tail call fastcc float @normalize_v3(ptr noundef %1) #21
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %0) #21
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %5, ptr noundef %0, ptr noundef nonnull %4) #21
  %13 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #21
  %14 = fcmp oeq float %13, 0.000000e+00
  %15 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %16 = load float, ptr %15, align 4
  %17 = select i1 %14, float 1.000000e+00, float %16
  %18 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 1
  store float %17, ptr %18, align 4, !tbaa !45
  %19 = load float, ptr %5, align 4, !tbaa !45
  %20 = fneg float %19
  %21 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 2
  store float %20, ptr %21, align 8, !tbaa !45
  %22 = getelementptr inbounds [4 x float], ptr %10, i64 0, i64 3
  store float 0.000000e+00, ptr %22, align 4, !tbaa !45
  %23 = call fastcc float @normalize_v3(ptr noundef nonnull %18) #21
  %24 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !45
  %26 = tail call fastcc float @saacos(float noundef %25) #21
  %27 = fmul float %26, 5.000000e-01
  %28 = tail call float @cosf(float noundef %27) #20
  %29 = fneg float %28
  %30 = tail call float @llvm.fmuladd.f32(float %29, float %28, float 1.000000e+00)
  %31 = tail call float @sqrtf(float noundef %30) #20
  store float %28, ptr %10, align 16, !tbaa !45
  %32 = load <2 x float>, ptr %18, align 4, !tbaa !45
  %33 = insertelement <2 x float> poison, float %31, i64 0
  %34 = shufflevector <2 x float> %33, <2 x float> poison, <2 x i32> zeroinitializer
  %35 = fmul <2 x float> %34, %32
  store <2 x float> %35, ptr %18, align 4, !tbaa !45
  store float 0.000000e+00, ptr %22, align 4, !tbaa !45
  call void @quat_to_mat3(ptr noundef nonnull %6, ptr noundef nonnull %10) #20
  call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef %0) #21
  call void @unit_m3(ptr noundef nonnull %7) #20
  %36 = fneg float %2
  %37 = call float @llvm.fmuladd.f32(float %36, float %2, float 1.000000e+00)
  %38 = call float @sqrtf(float noundef %37) #20
  store float %2, ptr %7, align 16, !tbaa !45
  %39 = fneg float %38
  %40 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 1
  store float %39, ptr %40, align 4, !tbaa !45
  %41 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  store float %38, ptr %41, align 4, !tbaa !45
  %42 = getelementptr inbounds [3 x [3 x float]], ptr %7, i64 0, i64 1, i64 1
  store float %2, ptr %42, align 16, !tbaa !45
  call void @mul_m3_m3m3(ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %6) #20
  store float %38, ptr %40, align 4, !tbaa !45
  store float %39, ptr %41, align 4, !tbaa !45
  call void @mul_m3_m3m3(ptr noundef nonnull %9, ptr noundef nonnull %7, ptr noundef nonnull %6) #20
  call void @transpose_m3(ptr noundef nonnull %6) #20
  call void @mul_m3_m3m3(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %8) #20
  call void @mul_m3_v3(ptr noundef nonnull %7, ptr noundef %0) #20
  call void @mul_m3_m3m3(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %9) #20
  call void @mul_m3_v3(ptr noundef nonnull %7, ptr noundef %1) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  ret void
}

; Function Attrs: optsize
declare void @circ(float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #15

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_transp_spot_volume(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2) unnamed_addr #0 {
  tail call void @glEnable(i32 noundef 2884) #20
  tail call void @glEnable(i32 noundef 3042) #20
  tail call void @glDepthMask(i8 noundef zeroext 0) #20
  tail call void @glCullFace(i32 noundef 1028) #20
  tail call void @glBlendFunc(i32 noundef 0, i32 noundef 770) #20
  tail call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x3FD99999A0000000) #20
  tail call fastcc void @draw_spot_cone(ptr noundef %0, float noundef %1, float noundef %2) #21
  tail call void @glCullFace(i32 noundef 1029) #20
  tail call void @glBlendFunc(i32 noundef 1, i32 noundef 1) #20
  tail call void @glColor4f(float noundef 0x3FC99999A0000000, float noundef 0x3FC99999A0000000, float noundef 0x3FC99999A0000000, float noundef 1.000000e+00) #20
  tail call fastcc void @draw_spot_cone(ptr noundef %0, float noundef %1, float noundef %2) #21
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #20
  tail call void @glDisable(i32 noundef 3042) #20
  tail call void @glDepthMask(i8 noundef zeroext 1) #20
  tail call void @glDisable(i32 noundef 2884) #20
  tail call void @glCullFace(i32 noundef 1029) #20
  ret void
}

; Function Attrs: optsize
declare void @fdrawbox(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawshadbuflimits(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  %6 = getelementptr inbounds [4 x float], ptr %1, i64 2
  call fastcc void @negate_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %7 = call fastcc float @normalize_v3(ptr noundef nonnull %5) #21
  %8 = getelementptr inbounds [4 x float], ptr %1, i64 3
  %9 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 25
  %10 = load float, ptr %9, align 4, !tbaa !265
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %3, ptr noundef nonnull %8, ptr noundef nonnull %5, float noundef %10) #21
  %11 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 26
  %12 = load float, ptr %11, align 8, !tbaa !613
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %4, ptr noundef nonnull %8, ptr noundef nonnull %5, float noundef %12) #21
  tail call void @glBegin(i32 noundef 3) #20
  call void @glVertex3fv(ptr noundef nonnull %3) #20
  call void @glVertex3fv(ptr noundef nonnull %4) #20
  call void @glEnd() #20
  call void @glPointSize(float noundef 3.000000e+00) #20
  call void @bglBegin(i32 noundef 0) #20
  call void @bglVertex3fv(ptr noundef nonnull %3) #20
  call void @bglVertex3fv(ptr noundef nonnull %4) #20
  call void @bglEnd() #20
  call void @glPointSize(float noundef 1.000000e+00) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #7 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !45
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !45
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !45
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !45
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !45
  %15 = load float, ptr %8, align 4, !tbaa !45
  %16 = load float, ptr %2, align 4, !tbaa !45
  %17 = load float, ptr %1, align 4, !tbaa !45
  %18 = load float, ptr %6, align 4, !tbaa !45
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !45
  %23 = load float, ptr %1, align 4, !tbaa !45
  %24 = load float, ptr %10, align 4, !tbaa !45
  %25 = load float, ptr %4, align 4, !tbaa !45
  %26 = load float, ptr %2, align 4, !tbaa !45
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @saacos(float noundef %0) unnamed_addr #16 {
  %2 = fcmp ugt float %0, -1.000000e+00
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = fcmp ult float %0, 1.000000e+00
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call float @acosf(float noundef %0) #20
  br label %7

7:                                                ; preds = %3, %1, %5
  %8 = phi float [ %6, %5 ], [ 0x400921FB60000000, %1 ], [ 0.000000e+00, %3 ]
  ret float %8
}

; Function Attrs: optsize
declare void @quat_to_mat3(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @unit_m3(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @acosf(float noundef) local_unnamed_addr #15

; Function Attrs: optsize
declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_spot_cone(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2) unnamed_addr #0 {
  %4 = tail call float @llvm.fabs.f32(float %2)
  tail call void @glBegin(i32 noundef 6) #20
  %5 = fneg float %1
  tail call void @glVertex3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %5) #20
  %6 = getelementptr inbounds %struct.Lamp, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !259
  %8 = and i32 %7, 128
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  tail call void @glVertex3f(float noundef %4, float noundef %4, float noundef 0.000000e+00) #20
  %11 = fneg float %4
  tail call void @glVertex3f(float noundef %11, float noundef %4, float noundef 0.000000e+00) #20
  tail call void @glVertex3f(float noundef %11, float noundef %11, float noundef 0.000000e+00) #20
  tail call void @glVertex3f(float noundef %4, float noundef %11, float noundef 0.000000e+00) #20
  tail call void @glVertex3f(float noundef %4, float noundef %4, float noundef 0.000000e+00) #20
  br label %25

12:                                               ; preds = %3, %12
  %13 = phi i32 [ %23, %12 ], [ 0, %3 ]
  %14 = sitofp i32 %13 to double
  %15 = fmul double %14, 0x400921FB54442D18
  %16 = fmul double %15, 2.000000e+00
  %17 = fmul double %16, 3.125000e-02
  %18 = fptrunc double %17 to float
  %19 = tail call float @cosf(float noundef %18) #20
  %20 = fmul float %4, %19
  %21 = tail call float @sinf(float noundef %18) #20
  %22 = fmul float %4, %21
  tail call void @glVertex3f(float noundef %20, float noundef %22, float noundef 0.000000e+00) #20
  %23 = add nuw nsw i32 %13, 1
  %24 = icmp eq i32 %23, 33
  br i1 %24, label %25, label %12, !llvm.loop !614

25:                                               ; preds = %12, %10
  tail call void @glEnd() #20
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 {
  %3 = load float, ptr %1, align 4, !tbaa !45
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !45
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !45
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !45
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !45
  %11 = fneg float %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #7 {
  %5 = load float, ptr %1, align 4, !tbaa !45
  %6 = load float, ptr %2, align 4, !tbaa !45
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  store float %7, ptr %0, align 4, !tbaa !45
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !45
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !45
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !45
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !45
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !45
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %3, float %15)
  %19 = getelementptr inbounds float, ptr %0, i64 2
  store float %18, ptr %19, align 4, !tbaa !45
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_object_movieclip_get(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_viewport_reconstruction(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, i16 noundef signext %4, ptr noundef %5, i8 noundef zeroext %6) unnamed_addr #0 {
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #22
  store i32 1, ptr %8, align 4, !tbaa !51
  %9 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 29
  %10 = load i16, ptr %9, align 2, !tbaa !15
  %11 = and i16 %10, 132
  %12 = icmp eq i16 %11, 128
  br i1 %12, label %13, label %33

13:                                               ; preds = %7
  tail call void @glEnable(i32 noundef 2896) #20
  tail call void @glColorMaterial(i32 noundef 1032, i32 noundef 4609) #20
  tail call void @glEnable(i32 noundef 2903) #20
  tail call void @glShadeModel(i32 noundef 7425) #20
  %14 = getelementptr inbounds %struct.MovieClip, ptr %3, i64 0, i32 11, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %19, %17 ], [ %15, %13 ]
  call fastcc void @draw_viewport_object_reconstruction(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %18, i16 noundef signext %4, ptr noundef %5, ptr noundef nonnull %8, i8 noundef zeroext %6) #21
  %19 = load ptr, ptr %18, align 8, !tbaa !53
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %17, !llvm.loop !615

21:                                               ; preds = %17, %13
  tail call void @glShadeModel(i32 noundef 7424) #20
  tail call void @glDisable(i32 noundef 2903) #20
  tail call void @glDisable(i32 noundef 2896) #20
  %22 = zext i16 %4 to i32
  %23 = and i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void @glColor3ubv(ptr noundef %5) #20
  br label %26

26:                                               ; preds = %25, %21
  %27 = and i32 %22, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.Base, ptr %1, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !616
  %32 = tail call zeroext i8 @GPU_select_load_id(i32 noundef %31) #20
  br label %33

33:                                               ; preds = %26, %29, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #22
  ret void
}

; Function Attrs: optsize
declare void @glGetFloatv(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @rgb_float_to_uchar(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_camera_view_frame_ex(ptr noundef, ptr noundef, float noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @normalize_m4(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_limit_line(float noundef %0, float noundef %1, i16 noundef signext %2, i32 noundef %3) unnamed_addr #0 {
  tail call void @glBegin(i32 noundef 1) #20
  %5 = fneg float %0
  tail call void @glVertex3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %5) #20
  %6 = fneg float %1
  tail call void @glVertex3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %6) #20
  tail call void @glEnd() #20
  %7 = zext i16 %2 to i32
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %4
  tail call void @glPointSize(float noundef 3.000000e+00) #20
  tail call void @glBegin(i32 noundef 0) #20
  %11 = and i32 %7, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void @cpack(i32 noundef %3) #20
  br label %14

14:                                               ; preds = %13, %10
  tail call void @glVertex3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %5) #20
  tail call void @glVertex3f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef %6) #20
  tail call void @glEnd() #20
  tail call void @glPointSize(float noundef 1.000000e+00) #20
  br label %15

15:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_focus_cross(float noundef %0, float noundef %1) unnamed_addr #0 {
  tail call void @glBegin(i32 noundef 1) #20
  %3 = fneg float %1
  %4 = fneg float %0
  tail call void @glVertex3f(float noundef %3, float noundef 0.000000e+00, float noundef %4) #20
  tail call void @glVertex3f(float noundef %1, float noundef 0.000000e+00, float noundef %4) #20
  tail call void @glVertex3f(float noundef 0.000000e+00, float noundef %3, float noundef %4) #20
  tail call void @glVertex3f(float noundef 0.000000e+00, float noundef %1, float noundef %4) #20
  tail call void @glEnd() #20
  ret void
}

; Function Attrs: optsize
declare float @BKE_camera_object_dof_distance(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_viewport_object_reconstruction(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, i16 noundef signext %5, ptr noundef %6, ptr nocapture noundef %7, i8 noundef zeroext %8) unnamed_addr #0 {
  %10 = alloca [4 x [4 x float]], align 16
  %11 = alloca [4 x [4 x float]], align 16
  %12 = alloca [4 x i8], align 1
  %13 = alloca [4 x i8], align 1
  %14 = alloca [3 x float], align 4
  %15 = alloca [4 x [4 x float]], align 16
  %16 = alloca [3 x float], align 4
  %17 = getelementptr inbounds %struct.MovieClip, ptr %3, i64 0, i32 11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #22
  %18 = load i32, ptr %7, align 4, !tbaa !51
  %19 = tail call ptr @BKE_tracking_object_get_tracks(ptr noundef nonnull %17, ptr noundef %4) #20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #22
  call void @UI_GetThemeColor4ubv(i32 noundef 3, ptr noundef nonnull %12) #20
  call void @UI_GetThemeColor4ubv(i32 noundef 28, ptr noundef nonnull %13) #20
  %20 = getelementptr inbounds %struct.Base, ptr %1, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !39
  call void @BKE_tracking_get_camera_object_matrix(ptr noundef %0, ptr noundef %21, ptr noundef nonnull %10) #20
  %22 = load ptr, ptr %20, align 8, !tbaa !39
  %23 = getelementptr inbounds %struct.Object, ptr %22, i64 0, i32 36
  call fastcc void @copy_v3_v3(ptr noundef nonnull %14, ptr noundef nonnull %23) #21
  %24 = getelementptr inbounds %struct.MovieTrackingObject, ptr %4, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !617
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %9
  %29 = getelementptr inbounds %struct.MovieTrackingObject, ptr %4, i64 0, i32 4
  %30 = load float, ptr %29, align 4, !tbaa !620
  call fastcc void @mul_v3_fl(ptr noundef nonnull %14, float noundef %30) #21
  br label %31

31:                                               ; preds = %28, %9
  call void @glPushMatrix() #20
  %32 = load i32, ptr %24, align 8, !tbaa !617
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %20, align 8, !tbaa !39
  %37 = getelementptr inbounds %struct.Object, ptr %36, i64 0, i32 47
  %38 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %11, ptr noundef nonnull %37) #20
  call void @glMultMatrixf(ptr noundef nonnull %11) #20
  call void @glMultMatrixf(ptr noundef nonnull %10) #20
  br label %46

39:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %15) #22
  %40 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !115
  %42 = sitofp i32 %41 to float
  %43 = call float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef %3, float noundef %42) #20
  %44 = fptosi float %43 to i32
  call void @BKE_tracking_camera_get_reconstructed_interpolate(ptr noundef nonnull %17, ptr noundef nonnull %4, i32 noundef %44, ptr noundef nonnull %15) #20
  %45 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %11, ptr noundef nonnull %15) #20
  call void @glMultMatrixf(ptr noundef nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %15) #22
  br label %46

46:                                               ; preds = %39, %35
  %47 = load ptr, ptr %19, align 8, !tbaa !53
  %48 = icmp eq ptr %47, null
  br i1 %48, label %164, label %49

49:                                               ; preds = %46
  %50 = icmp eq i8 %8, 0
  %51 = zext i16 %5 to i32
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  %54 = getelementptr inbounds %struct.Base, ptr %1, i64 0, i32 3
  %55 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 8
  %56 = load float, ptr %14, align 4
  %57 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 1
  %58 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 2
  %59 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 24
  %60 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 9
  %61 = and i32 %51, 2
  %62 = icmp eq i32 %61, 0
  %63 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 29
  br label %64

64:                                               ; preds = %49, %160
  %65 = phi ptr [ %47, %49 ], [ %162, %160 ]
  %66 = phi i32 [ %18, %49 ], [ %161, %160 ]
  %67 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %65, i64 0, i32 13
  %68 = load i32, ptr %67, align 8, !tbaa !621
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %65, i64 0, i32 14
  %73 = load i32, ptr %72, align 4, !tbaa !623
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %65, i64 0, i32 15
  %78 = load i32, ptr %77, align 8, !tbaa !624
  %79 = and i32 %78, 1
  %80 = icmp ne i32 %79, 0
  %81 = select i1 %50, i1 true, i1 %80
  br i1 %81, label %82, label %160

82:                                               ; preds = %64, %71, %76
  %83 = phi i1 [ %80, %76 ], [ true, %71 ], [ true, %64 ]
  %84 = and i32 %68, 2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %160, label %86

86:                                               ; preds = %82
  br i1 %53, label %92, label %87

87:                                               ; preds = %86
  %88 = load i32, ptr %54, align 4, !tbaa !616
  %89 = shl i32 %66, 16
  %90 = add i32 %88, %89
  %91 = call zeroext i8 @GPU_select_load_id(i32 noundef %90) #20
  br label %92

92:                                               ; preds = %87, %86
  call void @glPushMatrix() #20
  %93 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %65, i64 0, i32 11
  %94 = load float, ptr %93, align 8, !tbaa !45
  %95 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %65, i64 0, i32 11, i64 1
  %96 = load float, ptr %95, align 4, !tbaa !45
  %97 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %65, i64 0, i32 11, i64 2
  %98 = load float, ptr %97, align 8, !tbaa !45
  call void @glTranslatef(float noundef %94, float noundef %96, float noundef %98) #20
  %99 = load float, ptr %55, align 4, !tbaa !625
  %100 = fdiv float %99, 0x3FA99999A0000000
  %101 = fdiv float %100, %56
  %102 = load float, ptr %57, align 4, !tbaa !45
  %103 = fdiv float %100, %102
  %104 = load float, ptr %58, align 4, !tbaa !45
  %105 = fdiv float %100, %104
  call void @glScalef(float noundef %101, float noundef %103, float noundef %105) #20
  %106 = load i16, ptr %59, align 8, !tbaa !5
  %107 = icmp eq i16 %106, 2
  br i1 %107, label %108, label %119

108:                                              ; preds = %92
  call void @glDisable(i32 noundef 2896) #20
  br i1 %62, label %109, label %117

109:                                              ; preds = %108
  br i1 %83, label %110, label %115

110:                                              ; preds = %109
  %111 = load i32, ptr %67, align 8, !tbaa !621
  %112 = and i32 %111, 128
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  call void @glColor3ubv(ptr noundef %6) #20
  br label %117

115:                                              ; preds = %110, %109
  %116 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %65, i64 0, i32 16
  call void @glColor3fv(ptr noundef nonnull %116) #20
  br label %117

117:                                              ; preds = %114, %115, %108
  %118 = load i8, ptr %60, align 8, !tbaa !626
  call void @drawaxes(float noundef 0x3FA99999A0000000, i8 noundef zeroext %118) #21
  call void @glEnable(i32 noundef 2896) #20
  br label %149

119:                                              ; preds = %92
  %120 = icmp sgt i16 %106, 2
  br i1 %120, label %121, label %149

121:                                              ; preds = %119
  %122 = load i8, ptr %60, align 8, !tbaa !626
  %123 = icmp eq i8 %122, 6
  br i1 %123, label %124, label %137

124:                                              ; preds = %121
  br i1 %83, label %125, label %128

125:                                              ; preds = %124
  br i1 %62, label %126, label %127

126:                                              ; preds = %125
  call void @glColor3ubv(ptr noundef %6) #20
  br label %127

127:                                              ; preds = %126, %125
  call void @glLineWidth(float noundef 2.000000e+00) #20
  call void @glDisable(i32 noundef 2896) #20
  call void @glPolygonMode(i32 noundef 1032, i32 noundef 6913) #20
  call fastcc void @draw_bundle_sphere() #21
  call void @glPolygonMode(i32 noundef 1032, i32 noundef 6914) #20
  call void @glEnable(i32 noundef 2896) #20
  call void @glLineWidth(float noundef 1.000000e+00) #20
  br label %128

128:                                              ; preds = %127, %124
  br i1 %62, label %129, label %136

129:                                              ; preds = %128
  %130 = load i32, ptr %67, align 8, !tbaa !621
  %131 = and i32 %130, 128
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %65, i64 0, i32 16
  call void @glColor3fv(ptr noundef nonnull %134) #20
  br label %136

135:                                              ; preds = %129
  call void @UI_ThemeColor(i32 noundef 144) #20
  br label %136

136:                                              ; preds = %133, %135, %128
  call fastcc void @draw_bundle_sphere() #21
  br label %149

137:                                              ; preds = %121
  call void @glDisable(i32 noundef 2896) #20
  br i1 %62, label %138, label %147

138:                                              ; preds = %137
  br i1 %83, label %139, label %140

139:                                              ; preds = %138
  call void @glColor3ubv(ptr noundef %6) #20
  br label %147

140:                                              ; preds = %138
  %141 = load i32, ptr %67, align 8, !tbaa !621
  %142 = and i32 %141, 128
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %65, i64 0, i32 16
  call void @glColor3fv(ptr noundef nonnull %145) #20
  br label %147

146:                                              ; preds = %140
  call void @UI_ThemeColor(i32 noundef 25) #20
  br label %147

147:                                              ; preds = %139, %146, %144, %137
  %148 = load i8, ptr %60, align 8, !tbaa !626
  call void @drawaxes(float noundef 0x3FA99999A0000000, i8 noundef zeroext %148) #21
  call void @glEnable(i32 noundef 2896) #20
  br label %149

149:                                              ; preds = %119, %147, %136, %117
  call void @glPopMatrix() #20
  br i1 %53, label %150, label %158

150:                                              ; preds = %149
  %151 = load i16, ptr %63, align 2, !tbaa !15
  %152 = and i16 %151, 512
  %153 = icmp eq i16 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %150
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #22
  call void @mul_v3_m4v3(ptr noundef nonnull %16, ptr noundef nonnull %10, ptr noundef nonnull %93) #20
  %155 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %65, i64 0, i32 2
  %156 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %155) #23
  %157 = select i1 %83, ptr %13, ptr %12
  call void @view3d_cached_text_draw_add(ptr noundef nonnull %16, ptr noundef nonnull %155, i64 noundef %156, i16 noundef signext 10, i16 noundef signext 8, ptr noundef nonnull %157) #21
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #22
  br label %158

158:                                              ; preds = %154, %150, %149
  %159 = add nsw i32 %66, 1
  br label %160

160:                                              ; preds = %82, %76, %158
  %161 = phi i32 [ %159, %158 ], [ %66, %76 ], [ %66, %82 ]
  %162 = load ptr, ptr %65, align 8, !tbaa !53
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %64, !llvm.loop !627

164:                                              ; preds = %160, %46
  %165 = phi i32 [ %18, %46 ], [ %161, %160 ]
  %166 = and i16 %5, 1
  %167 = icmp eq i16 %166, 0
  br i1 %167, label %168, label %196

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.View3D, ptr %2, i64 0, i32 29
  %170 = load i16, ptr %169, align 2, !tbaa !15
  %171 = and i16 %170, 256
  %172 = icmp eq i16 %171, 0
  br i1 %172, label %196, label %173

173:                                              ; preds = %168
  %174 = load i32, ptr %24, align 8, !tbaa !617
  %175 = and i32 %174, 1
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %196, label %177

177:                                              ; preds = %173
  %178 = call ptr @BKE_tracking_object_get_reconstruction(ptr noundef nonnull %17, ptr noundef nonnull %4) #20
  %179 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %178, i64 0, i32 3
  %180 = load i32, ptr %179, align 4, !tbaa !628
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %196, label %182

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %178, i64 0, i32 4
  %184 = load ptr, ptr %183, align 8, !tbaa !629
  call void @glDisable(i32 noundef 2896) #20
  call void @UI_ThemeColor(i32 noundef 148) #20
  call void @glLineWidth(float noundef 2.000000e+00) #20
  call void @glBegin(i32 noundef 3) #20
  %185 = load i32, ptr %179, align 4, !tbaa !628
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %182, %187
  %188 = phi i32 [ %191, %187 ], [ 0, %182 ]
  %189 = phi ptr [ %192, %187 ], [ %184, %182 ]
  %190 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %189, i64 0, i32 2, i64 3
  call void @glVertex3fv(ptr noundef nonnull %190) #20
  %191 = add nuw nsw i32 %188, 1
  %192 = getelementptr inbounds %struct.MovieReconstructedCamera, ptr %189, i64 1
  %193 = load i32, ptr %179, align 4, !tbaa !628
  %194 = icmp slt i32 %191, %193
  br i1 %194, label %187, label %195, !llvm.loop !630

195:                                              ; preds = %187, %182
  call void @glEnd() #20
  call void @glLineWidth(float noundef 1.000000e+00) #20
  call void @glEnable(i32 noundef 2896) #20
  br label %196

196:                                              ; preds = %177, %195, %168, %173, %164
  call void @glPopMatrix() #20
  store i32 %165, ptr %7, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #22
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_tracking_object_get_tracks(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_tracking_get_camera_object_matrix(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BKE_movieclip_remap_scene_to_clip_frame(ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_tracking_camera_get_reconstructed_interpolate(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_bundle_sphere() unnamed_addr #0 {
  %1 = load i32, ptr @draw_bundle_sphere.displist, align 4, !tbaa !51
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 @glGenLists(i32 noundef 1) #20
  store i32 %4, ptr @draw_bundle_sphere.displist, align 4, !tbaa !51
  tail call void @glNewList(i32 noundef %4, i32 noundef 4864) #20
  %5 = tail call ptr @gluNewQuadric() #20
  tail call void @gluQuadricDrawStyle(ptr noundef %5, i32 noundef 100012) #20
  tail call void @glShadeModel(i32 noundef 7425) #20
  tail call void @gluSphere(ptr noundef %5, double noundef 5.000000e-02, i32 noundef 8, i32 noundef 8) #20
  tail call void @glShadeModel(i32 noundef 7424) #20
  tail call void @gluDeleteQuadric(ptr noundef %5) #20
  tail call void @glEndList() #20
  %6 = load i32, ptr @draw_bundle_sphere.displist, align 4, !tbaa !51
  br label %7

7:                                                ; preds = %3, %0
  %8 = phi i32 [ %6, %3 ], [ %1, %0 ]
  tail call void @glCallList(i32 noundef %8) #20
  ret void
}

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_tracking_object_get_reconstruction(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_displist_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawlattice__point(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 3
  %9 = load i16, ptr %8, align 2, !tbaa !293
  %10 = sext i16 %9 to i32
  %11 = mul nsw i32 %10, %4
  %12 = add nsw i32 %11, %3
  %13 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 2
  %14 = load i16, ptr %13, align 8, !tbaa !294
  %15 = sext i16 %14 to i32
  %16 = mul nsw i32 %12, %15
  %17 = add nsw i32 %16, %2
  %18 = icmp eq i32 %5, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #22
  %20 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 24
  %21 = load ptr, ptr %20, align 8, !tbaa !290
  %22 = sext i32 %17 to i64
  %23 = getelementptr inbounds %struct.MDeformVert, ptr %21, i64 %22
  %24 = add nsw i32 %5, -1
  %25 = tail call ptr @defvert_find_index(ptr noundef %23, i32 noundef %24) #20
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.MDeformWeight, ptr %25, i64 0, i32 1
  %29 = load float, ptr %28, align 4, !tbaa !631
  br label %30

30:                                               ; preds = %19, %27
  %31 = phi float [ %29, %27 ], [ 0.000000e+00, %19 ]
  call void @weight_to_rgb(ptr noundef nonnull %7, float noundef %31) #20
  call void @glColor3fv(ptr noundef nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #22
  br label %32

32:                                               ; preds = %30, %6
  %33 = icmp eq ptr %1, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.DispList, ptr %1, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !434
  %37 = mul nsw i32 %17, 3
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, ptr %36, i64 %38
  br label %45

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 21
  %42 = load ptr, ptr %41, align 8, !tbaa !633
  %43 = sext i32 %17 to i64
  %44 = getelementptr inbounds %struct.BPoint, ptr %42, i64 %43
  br label %45

45:                                               ; preds = %40, %34
  %46 = phi ptr [ %44, %40 ], [ %39, %34 ]
  call void @glVertex3fv(ptr noundef %46) #20
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_lattice_active_point_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lattice_draw_verts(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef readnone %2, i16 noundef signext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 21
  %6 = load ptr, ptr %5, align 8, !tbaa !633
  %7 = icmp eq ptr %1, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.DispList, ptr %1, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !434
  br label %11

11:                                               ; preds = %4, %8
  %12 = phi ptr [ %10, %8 ], [ null, %4 ]
  %13 = icmp eq i16 %3, 0
  %14 = select i1 %13, i32 33, i32 34
  tail call void @UI_ThemeColor(i32 noundef %14) #20
  %15 = tail call float @UI_GetThemeValuef(i32 noundef 36) #20
  tail call void @glPointSize(float noundef %15) #20
  tail call void @bglBegin(i32 noundef 0) #20
  %16 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 4
  %17 = load i16, ptr %16, align 4, !tbaa !292
  %18 = icmp sgt i16 %17, 0
  br i1 %18, label %19, label %118

19:                                               ; preds = %11
  %20 = zext nneg i16 %17 to i32
  %21 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 3
  %22 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 2
  %23 = getelementptr inbounds %struct.Lattice, ptr %0, i64 0, i32 5
  %24 = load i16, ptr %21, align 2, !tbaa !293
  %25 = getelementptr inbounds %struct.BPoint, ptr %2, i64 0, i32 3
  br label %26

26:                                               ; preds = %19, %109
  %27 = phi i16 [ %17, %19 ], [ %110, %109 ]
  %28 = phi i16 [ %24, %19 ], [ %111, %109 ]
  %29 = phi i16 [ %24, %19 ], [ %112, %109 ]
  %30 = phi i32 [ %20, %19 ], [ %116, %109 ]
  %31 = phi ptr [ %6, %19 ], [ %114, %109 ]
  %32 = phi ptr [ %12, %19 ], [ %113, %109 ]
  %33 = phi i32 [ 0, %19 ], [ %115, %109 ]
  %34 = icmp eq i32 %33, 0
  %35 = add nsw i32 %30, -1
  %36 = icmp eq i32 %33, %35
  %37 = icmp sgt i16 %29, 0
  br i1 %37, label %38, label %109

38:                                               ; preds = %26
  %39 = zext nneg i16 %29 to i32
  %40 = load i16, ptr %22, align 8, !tbaa !294
  br label %41

41:                                               ; preds = %38, %99
  %42 = phi i16 [ %100, %99 ], [ %28, %38 ]
  %43 = phi i16 [ %101, %99 ], [ %40, %38 ]
  %44 = phi i32 [ %105, %99 ], [ %39, %38 ]
  %45 = phi ptr [ %103, %99 ], [ %31, %38 ]
  %46 = phi ptr [ %102, %99 ], [ %32, %38 ]
  %47 = phi i32 [ %104, %99 ], [ 0, %38 ]
  %48 = icmp eq i32 %47, 0
  %49 = add nsw i32 %44, -1
  %50 = icmp eq i32 %47, %49
  %51 = icmp sgt i16 %43, 0
  br i1 %51, label %52, label %99

52:                                               ; preds = %41
  %53 = zext nneg i16 %43 to i32
  br label %54

54:                                               ; preds = %52, %90
  %55 = phi i32 [ %95, %90 ], [ %53, %52 ]
  %56 = phi ptr [ %92, %90 ], [ %45, %52 ]
  %57 = phi ptr [ %93, %90 ], [ %46, %52 ]
  %58 = phi i32 [ %91, %90 ], [ 0, %52 ]
  %59 = icmp eq i32 %58, 0
  %60 = add nsw i32 %55, -1
  %61 = icmp eq i32 %58, %60
  %62 = load i16, ptr %23, align 2, !tbaa !295
  %63 = and i16 %62, 2
  %64 = icmp eq i16 %63, 0
  %65 = or i1 %59, %64
  %66 = select i1 %65, i1 true, i1 %61
  %67 = or i1 %48, %66
  %68 = select i1 %67, i1 true, i1 %50
  %69 = or i1 %34, %68
  %70 = select i1 %69, i1 true, i1 %36
  br i1 %70, label %71, label %90

71:                                               ; preds = %54
  %72 = getelementptr inbounds %struct.BPoint, ptr %56, i64 0, i32 4
  %73 = load i16, ptr %72, align 2, !tbaa !597
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %71
  %76 = icmp eq ptr %56, %2
  br i1 %76, label %77, label %83

77:                                               ; preds = %75
  %78 = load i16, ptr %25, align 4, !tbaa !599
  %79 = and i16 %78, 1
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  tail call void @UI_ThemeColor(i32 noundef 65) #20
  %82 = select i1 %7, ptr %2, ptr %57
  tail call void @bglVertex3fv(ptr noundef %82) #20
  tail call void @UI_ThemeColor(i32 noundef %14) #20
  br label %90

83:                                               ; preds = %77, %75
  %84 = getelementptr inbounds %struct.BPoint, ptr %56, i64 0, i32 3
  %85 = load i16, ptr %84, align 4, !tbaa !599
  %86 = and i16 %85, 1
  %87 = icmp eq i16 %86, %3
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = select i1 %7, ptr %56, ptr %57
  tail call void @bglVertex3fv(ptr noundef %89) #20
  br label %90

90:                                               ; preds = %71, %83, %88, %81, %54
  %91 = add nuw nsw i32 %58, 1
  %92 = getelementptr inbounds %struct.BPoint, ptr %56, i64 1
  %93 = getelementptr inbounds float, ptr %57, i64 3
  %94 = load i16, ptr %22, align 8, !tbaa !294
  %95 = sext i16 %94 to i32
  %96 = icmp slt i32 %91, %95
  br i1 %96, label %54, label %97, !llvm.loop !634

97:                                               ; preds = %90
  %98 = load i16, ptr %21, align 2, !tbaa !293
  br label %99

99:                                               ; preds = %97, %41
  %100 = phi i16 [ %42, %41 ], [ %98, %97 ]
  %101 = phi i16 [ %43, %41 ], [ %94, %97 ]
  %102 = phi ptr [ %46, %41 ], [ %93, %97 ]
  %103 = phi ptr [ %45, %41 ], [ %92, %97 ]
  %104 = add nuw nsw i32 %47, 1
  %105 = sext i16 %100 to i32
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %41, label %107, !llvm.loop !635

107:                                              ; preds = %99
  %108 = load i16, ptr %16, align 4, !tbaa !292
  br label %109

109:                                              ; preds = %107, %26
  %110 = phi i16 [ %27, %26 ], [ %108, %107 ]
  %111 = phi i16 [ %28, %26 ], [ %100, %107 ]
  %112 = phi i16 [ %29, %26 ], [ %100, %107 ]
  %113 = phi ptr [ %32, %26 ], [ %102, %107 ]
  %114 = phi ptr [ %31, %26 ], [ %103, %107 ]
  %115 = add nuw nsw i32 %33, 1
  %116 = sext i16 %110 to i32
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %26, label %118, !llvm.loop !636

118:                                              ; preds = %109, %11
  tail call void @glPointSize(float noundef 1.000000e+00) #20
  tail call void @bglEnd() #20
  ret void
}

; Function Attrs: optsize
declare ptr @defvert_find_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawspiral(ptr nocapture noundef readonly %0, float noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [3 x float], align 8
  %6 = alloca [3 x float], align 8
  %7 = alloca [3 x float], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #22
  %8 = icmp sgt i32 %3, -1
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %6, ptr noundef %2, float noundef %1) #21
  %9 = getelementptr inbounds [4 x float], ptr %2, i64 1
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %7, ptr noundef nonnull %9, float noundef %1) #21
  tail call void @glBegin(i32 noundef 3) #20
  br i1 %8, label %10, label %50

10:                                               ; preds = %4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %0) #21
  call void @glVertex3fv(ptr noundef nonnull %5) #20
  %11 = load <2 x float>, ptr %6, align 8, !tbaa !45
  %12 = load <2 x float>, ptr %7, align 8, !tbaa !45
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %15 = load float, ptr %14, align 8, !tbaa !45
  %16 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %17 = load float, ptr %16, align 8, !tbaa !45
  %18 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  br label %19

19:                                               ; preds = %10, %19
  %20 = phi i32 [ 0, %10 ], [ %48, %19 ]
  %21 = phi i32 [ %3, %10 ], [ %25, %19 ]
  %22 = add nsw i32 %20, %21
  %23 = icmp sgt i32 %22, 31
  %24 = sub nsw i32 1, %20
  %25 = select i1 %23, i32 %24, i32 %21
  %26 = sitofp i32 %20 to float
  %27 = fmul float %26, 3.125000e-02
  %28 = add nsw i32 %25, %20
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [32 x float], ptr @sinval, i64 0, i64 %29
  %31 = load float, ptr %30, align 4, !tbaa !45
  %32 = fmul float %27, %31
  %33 = getelementptr inbounds [32 x float], ptr @cosval, i64 0, i64 %29
  %34 = load float, ptr %33, align 4, !tbaa !45
  %35 = fmul float %27, %34
  %36 = load <2 x float>, ptr %0, align 4, !tbaa !45
  %37 = insertelement <2 x float> poison, float %35, i64 0
  %38 = shufflevector <2 x float> %37, <2 x float> poison, <2 x i32> zeroinitializer
  %39 = fmul <2 x float> %38, %12
  %40 = insertelement <2 x float> poison, float %32, i64 0
  %41 = shufflevector <2 x float> %40, <2 x float> poison, <2 x i32> zeroinitializer
  %42 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %41, <2 x float> %11, <2 x float> %39)
  %43 = fadd <2 x float> %36, %42
  store <2 x float> %43, ptr %5, align 8, !tbaa !45
  %44 = load float, ptr %13, align 4, !tbaa !45
  %45 = fmul float %35, %17
  %46 = call float @llvm.fmuladd.f32(float %32, float %15, float %45)
  %47 = fadd float %44, %46
  store float %47, ptr %18, align 8, !tbaa !45
  call void @glVertex3fv(ptr noundef nonnull %5) #20
  %48 = add nuw nsw i32 %20, 1
  %49 = icmp eq i32 %48, 32
  br i1 %49, label %111, label %19, !llvm.loop !637

50:                                               ; preds = %4
  %51 = sub nsw i32 0, %3
  %52 = zext nneg i32 %51 to i64
  %53 = getelementptr inbounds [32 x float], ptr @sinval, i64 0, i64 %52
  %54 = load float, ptr %53, align 4, !tbaa !45
  %55 = fmul float %54, 9.687500e-01
  %56 = getelementptr inbounds [32 x float], ptr @cosval, i64 0, i64 %52
  %57 = load float, ptr %56, align 4, !tbaa !45
  %58 = fmul float %57, 9.687500e-01
  %59 = load <2 x float>, ptr %7, align 8, !tbaa !45
  %60 = load <2 x float>, ptr %6, align 8, !tbaa !45
  %61 = load <2 x float>, ptr %0, align 4, !tbaa !45
  %62 = insertelement <2 x float> poison, float %58, i64 0
  %63 = shufflevector <2 x float> %62, <2 x float> poison, <2 x i32> zeroinitializer
  %64 = fmul <2 x float> %63, %59
  %65 = insertelement <2 x float> poison, float %55, i64 0
  %66 = shufflevector <2 x float> %65, <2 x float> poison, <2 x i32> zeroinitializer
  %67 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %66, <2 x float> %60, <2 x float> %64)
  %68 = fadd <2 x float> %61, %67
  store <2 x float> %68, ptr %5, align 8, !tbaa !45
  %69 = getelementptr inbounds float, ptr %0, i64 2
  %70 = load float, ptr %69, align 4, !tbaa !45
  %71 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %72 = load float, ptr %71, align 8, !tbaa !45
  %73 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %74 = load float, ptr %73, align 8, !tbaa !45
  %75 = fmul float %58, %74
  %76 = tail call float @llvm.fmuladd.f32(float %55, float %72, float %75)
  %77 = fadd float %70, %76
  %78 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float %77, ptr %78, align 8, !tbaa !45
  call void @glVertex3fv(ptr noundef nonnull %5) #20
  br label %79

79:                                               ; preds = %50, %79
  %80 = phi i32 [ 0, %50 ], [ %109, %79 ]
  %81 = phi i32 [ %51, %50 ], [ %85, %79 ]
  %82 = add nsw i32 %80, %81
  %83 = icmp sgt i32 %82, 31
  %84 = sub nsw i32 1, %80
  %85 = select i1 %83, i32 %84, i32 %81
  %86 = xor i32 %80, 31
  %87 = sitofp i32 %86 to float
  %88 = fmul float %87, 3.125000e-02
  %89 = add nsw i32 %85, %80
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [32 x float], ptr @sinval, i64 0, i64 %90
  %92 = load float, ptr %91, align 4, !tbaa !45
  %93 = fmul float %88, %92
  %94 = getelementptr inbounds [32 x float], ptr @cosval, i64 0, i64 %90
  %95 = load float, ptr %94, align 4, !tbaa !45
  %96 = fmul float %88, %95
  %97 = load <2 x float>, ptr %0, align 4, !tbaa !45
  %98 = insertelement <2 x float> poison, float %96, i64 0
  %99 = shufflevector <2 x float> %98, <2 x float> poison, <2 x i32> zeroinitializer
  %100 = fmul <2 x float> %59, %99
  %101 = insertelement <2 x float> poison, float %93, i64 0
  %102 = shufflevector <2 x float> %101, <2 x float> poison, <2 x i32> zeroinitializer
  %103 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %102, <2 x float> %60, <2 x float> %100)
  %104 = fadd <2 x float> %97, %103
  store <2 x float> %104, ptr %5, align 8, !tbaa !45
  %105 = load float, ptr %69, align 4, !tbaa !45
  %106 = fmul float %74, %96
  %107 = call float @llvm.fmuladd.f32(float %93, float %72, float %106)
  %108 = fadd float %107, %105
  store float %108, ptr %78, align 8, !tbaa !45
  call void @glVertex3fv(ptr noundef nonnull %5) #20
  %109 = add nuw nsw i32 %80, 1
  %110 = icmp eq i32 %109, 32
  br i1 %110, label %111, label %79, !llvm.loop !638

111:                                              ; preds = %79, %19
  call void @glEnd() #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  ret void
}

; Function Attrs: optsize
declare i32 @where_on_path(ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawtube(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  tail call void @drawcircball(i32 noundef 2, ptr noundef %0, float noundef %1, ptr noundef %3) #21
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %0) #21
  %6 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !45
  %8 = fadd float %7, %2
  store float %8, ptr %6, align 4, !tbaa !45
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %5, float noundef %1, ptr noundef %3) #21
  tail call void @glBegin(i32 noundef 1) #20
  %9 = load float, ptr %0, align 4, !tbaa !45
  %10 = fadd float %9, %1
  %11 = getelementptr inbounds float, ptr %0, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !45
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !45
  tail call void @glVertex3f(float noundef %10, float noundef %12, float noundef %14) #20
  %15 = load float, ptr %5, align 4, !tbaa !45
  %16 = fadd float %15, %1
  %17 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !45
  tail call void @glVertex3f(float noundef %16, float noundef %18, float noundef %8) #20
  %19 = load float, ptr %0, align 4, !tbaa !45
  %20 = fsub float %19, %1
  %21 = load float, ptr %11, align 4, !tbaa !45
  %22 = load float, ptr %13, align 4, !tbaa !45
  tail call void @glVertex3f(float noundef %20, float noundef %21, float noundef %22) #20
  %23 = fsub float %15, %1
  tail call void @glVertex3f(float noundef %23, float noundef %18, float noundef %8) #20
  %24 = load float, ptr %0, align 4, !tbaa !45
  %25 = load float, ptr %11, align 4, !tbaa !45
  %26 = fadd float %25, %1
  %27 = load float, ptr %13, align 4, !tbaa !45
  tail call void @glVertex3f(float noundef %24, float noundef %26, float noundef %27) #20
  %28 = fadd float %18, %1
  tail call void @glVertex3f(float noundef %15, float noundef %28, float noundef %8) #20
  %29 = load float, ptr %0, align 4, !tbaa !45
  %30 = load float, ptr %11, align 4, !tbaa !45
  %31 = fsub float %30, %1
  %32 = load float, ptr %13, align 4, !tbaa !45
  tail call void @glVertex3f(float noundef %29, float noundef %31, float noundef %32) #20
  %33 = fsub float %18, %1
  tail call void @glVertex3f(float noundef %15, float noundef %33, float noundef %8) #20
  tail call void @glEnd() #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @drawcone(ptr nocapture noundef readonly %0, float noundef %1, float noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #22
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %0) #21
  %6 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !45
  %8 = fadd float %7, %2
  store float %8, ptr %6, align 4, !tbaa !45
  call void @drawcircball(i32 noundef 2, ptr noundef nonnull %5, float noundef %1, ptr noundef %3) #21
  tail call void @glBegin(i32 noundef 1) #20
  %9 = load float, ptr %0, align 4, !tbaa !45
  %10 = getelementptr inbounds float, ptr %0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !45
  %12 = getelementptr inbounds float, ptr %0, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !45
  tail call void @glVertex3f(float noundef %9, float noundef %11, float noundef %13) #20
  %14 = load float, ptr %5, align 4, !tbaa !45
  %15 = fadd float %14, %1
  %16 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !45
  tail call void @glVertex3f(float noundef %15, float noundef %17, float noundef %8) #20
  %18 = load float, ptr %0, align 4, !tbaa !45
  %19 = load float, ptr %10, align 4, !tbaa !45
  %20 = load float, ptr %12, align 4, !tbaa !45
  tail call void @glVertex3f(float noundef %18, float noundef %19, float noundef %20) #20
  %21 = fsub float %14, %1
  tail call void @glVertex3f(float noundef %21, float noundef %17, float noundef %8) #20
  %22 = load float, ptr %0, align 4, !tbaa !45
  %23 = load float, ptr %10, align 4, !tbaa !45
  %24 = load float, ptr %12, align 4, !tbaa !45
  tail call void @glVertex3f(float noundef %22, float noundef %23, float noundef %24) #20
  %25 = fadd float %17, %1
  tail call void @glVertex3f(float noundef %14, float noundef %25, float noundef %8) #20
  %26 = load float, ptr %0, align 4, !tbaa !45
  %27 = load float, ptr %10, align 4, !tbaa !45
  %28 = load float, ptr %12, align 4, !tbaa !45
  tail call void @glVertex3f(float noundef %26, float noundef %27, float noundef %28) #20
  %29 = fsub float %17, %1
  tail call void @glVertex3f(float noundef %14, float noundef %29, float noundef %8) #20
  tail call void @glEnd() #20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #22
  ret void
}

; Function Attrs: optsize
declare void @PE_update_object(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @psys_cache_edit_paths(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @PE_settings(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @psys_check_enabled(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @psys_in_edit_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @psys_get_modifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @psys_count_keyed_targets(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @psys_get_current(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @psys_get_timestep(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @psys_make_temp_pointcache(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @psys_free_pdd(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @psys_create_lattice_deform_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc float @psys_frand(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 23
  %4 = load i32, ptr %3, align 4, !tbaa !639
  %5 = srem i32 %4, 1024
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_OFFSET, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !51
  %9 = getelementptr inbounds [1024 x i32], ptr @PSYS_FRAND_SEED_MULTIPLIER, i64 0, i64 %6
  %10 = load i32, ptr %9, align 4, !tbaa !51
  %11 = mul i32 %10, %1
  %12 = add i32 %11, %8
  %13 = and i32 %12, 1023
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [1024 x float], ptr @PSYS_FRAND_BASE, i64 0, i64 %14
  %16 = load float, ptr %15, align 4, !tbaa !45
  ret float %16
}

; Function Attrs: optsize
declare float @psys_get_child_time(ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @psys_get_child_size(ptr noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @psys_get_particle_on_path(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_particle_data(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5, ptr noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10) unnamed_addr #0 {
  %12 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !70
  %14 = getelementptr inbounds %struct.ParticleSystem, ptr %0, i64 0, i32 16
  %15 = load ptr, ptr %14, align 8, !tbaa !640
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 47
  tail call void @mul_m4_v3(ptr noundef nonnull %18, ptr noundef %2) #20
  br label %19

19:                                               ; preds = %17, %11
  %20 = icmp eq i32 %3, 9
  br i1 %20, label %21, label %70

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.ParticleSettings, ptr %13, i64 0, i32 43
  %23 = load float, ptr %22, align 8, !tbaa !45
  %24 = getelementptr inbounds %struct.ParticleBillboardData, ptr %5, i64 0, i32 3
  store float %23, ptr %24, align 8, !tbaa !45
  %25 = getelementptr inbounds %struct.ParticleSettings, ptr %13, i64 0, i32 43, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !45
  %27 = getelementptr inbounds %struct.ParticleBillboardData, ptr %5, i64 0, i32 3, i64 1
  store float %26, ptr %27, align 4, !tbaa !45
  %28 = getelementptr inbounds %struct.ParticleSettings, ptr %13, i64 0, i32 44
  %29 = load float, ptr %28, align 8, !tbaa !45
  %30 = fmul float %29, %8
  %31 = getelementptr inbounds %struct.ParticleBillboardData, ptr %5, i64 0, i32 4
  store float %30, ptr %31, align 8, !tbaa !45
  %32 = getelementptr inbounds %struct.ParticleSettings, ptr %13, i64 0, i32 37
  %33 = load i16, ptr %32, align 8, !tbaa !338
  %34 = icmp eq i16 %33, 4
  br i1 %34, label %35, label %55

35:                                               ; preds = %21
  %36 = getelementptr inbounds %struct.ParticleKey, ptr %2, i64 0, i32 1
  %37 = tail call fastcc float @len_v3(ptr noundef nonnull %36) #21
  %38 = getelementptr inbounds %struct.ParticleSettings, ptr %13, i64 0, i32 45
  %39 = load float, ptr %38, align 8, !tbaa !641
  %40 = fmul float %37, %39
  %41 = getelementptr inbounds %struct.ParticleSettings, ptr %13, i64 0, i32 46
  %42 = load float, ptr %41, align 4, !tbaa !642
  %43 = fmul float %37, %42
  %44 = getelementptr inbounds %struct.ParticleSettings, ptr %13, i64 0, i32 44, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !45
  %46 = tail call float @llvm.fmuladd.f32(float %45, float %8, float %40)
  %47 = fadd float %43, %46
  %48 = getelementptr inbounds %struct.ParticleBillboardData, ptr %5, i64 0, i32 4, i64 1
  store float %47, ptr %48, align 4, !tbaa !45
  %49 = fcmp ogt float %47, 0.000000e+00
  br i1 %49, label %50, label %60

50:                                               ; preds = %35
  %51 = fsub float %40, %43
  %52 = fdiv float %51, %47
  %53 = load float, ptr %27, align 4, !tbaa !45
  %54 = fadd float %52, %53
  store float %54, ptr %27, align 4, !tbaa !45
  br label %60

55:                                               ; preds = %21
  %56 = getelementptr inbounds %struct.ParticleSettings, ptr %13, i64 0, i32 44, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !45
  %58 = fmul float %57, %8
  %59 = getelementptr inbounds %struct.ParticleBillboardData, ptr %5, i64 0, i32 4, i64 1
  store float %58, ptr %59, align 4, !tbaa !45
  br label %60

60:                                               ; preds = %35, %50, %55
  %61 = getelementptr inbounds %struct.ParticleSettings, ptr %13, i64 0, i32 41
  %62 = load float, ptr %61, align 8, !tbaa !643
  %63 = getelementptr inbounds %struct.ParticleSettings, ptr %13, i64 0, i32 42
  %64 = load float, ptr %63, align 4, !tbaa !644
  %65 = fneg float %64
  %66 = tail call float @llvm.fmuladd.f32(float %65, float %9, float 1.000000e+00)
  %67 = fmul float %62, %66
  %68 = getelementptr inbounds %struct.ParticleBillboardData, ptr %5, i64 0, i32 5
  store float %67, ptr %68, align 8, !tbaa !645
  %69 = getelementptr inbounds %struct.ParticleBillboardData, ptr %5, i64 0, i32 7
  store float %7, ptr %69, align 8, !tbaa !646
  br label %70

70:                                               ; preds = %60, %19
  %71 = tail call float @ED_view3d_pixel_size(ptr noundef %1, ptr noundef %2) #20
  %72 = fmul float %71, %10
  %73 = getelementptr inbounds %struct.ParticleSettings, ptr %13, i64 0, i32 15
  %74 = load i32, ptr %73, align 8, !tbaa !72
  %75 = trunc i32 %74 to i16
  %76 = getelementptr inbounds %struct.ParticleSettings, ptr %13, i64 0, i32 116
  tail call fastcc void @draw_particle(ptr noundef %2, i32 noundef %3, i16 noundef signext %75, float noundef %72, ptr noundef %4, ptr noundef nonnull %76, ptr noundef %5, ptr noundef %6) #21
  ret void
}

; Function Attrs: optsize
declare i32 @psys_get_particle_state(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glGetIntegerv(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @glColorPointer(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_particle_arrays(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  switch i32 %0, label %15 [
    i32 4, label %5
    i32 3, label %5
    i32 5, label %7
    i32 9, label %9
  ]

5:                                                ; preds = %4, %4
  %6 = mul nsw i32 %1, 6
  tail call void @glDrawArrays(i32 noundef 1, i32 noundef 0, i32 noundef %6) #20
  br label %16

7:                                                ; preds = %4
  %8 = shl nsw i32 %1, 1
  tail call void @glDrawArrays(i32 noundef 1, i32 noundef 0, i32 noundef %8) #20
  br label %16

9:                                                ; preds = %4
  %10 = icmp slt i32 %2, 3
  %11 = icmp ne i32 %3, 0
  %12 = or i1 %10, %11
  %13 = select i1 %12, i32 6913, i32 6914
  tail call void @glPolygonMode(i32 noundef 1032, i32 noundef %13) #20
  %14 = shl nsw i32 %1, 2
  tail call void @glDrawArrays(i32 noundef 7, i32 noundef 0, i32 noundef %14) #20
  br label %16

15:                                               ; preds = %4
  tail call void @glDrawArrays(i32 noundef 0, i32 noundef 0, i32 noundef %1) #20
  br label %16

16:                                               ; preds = %15, %9, %7, %5
  ret void
}

; Function Attrs: optsize
declare void @end_latt_deform(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @draw_particle(ptr noundef %0, i32 noundef %1, i16 noundef signext %2, float noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 {
  %9 = alloca [3 x float], align 8
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 8
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %11, i8 0, i64 12, i1 false)
  %16 = icmp eq ptr %7, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.ParticleDrawData, ptr %7, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !350
  %20 = getelementptr inbounds %struct.ParticleDrawData, ptr %7, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !352
  %22 = getelementptr inbounds %struct.ParticleDrawData, ptr %7, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !354
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef nonnull %23) #21
  br label %26

26:                                               ; preds = %17, %25, %8
  %27 = phi ptr [ %19, %25 ], [ %19, %17 ], [ null, %8 ]
  %28 = phi ptr [ %21, %25 ], [ %21, %17 ], [ null, %8 ]
  switch i32 %1, label %183 [
    i32 1, label %29
    i32 3, label %43
    i32 4, label %43
    i32 5, label %104
    i32 2, label %135
    i32 9, label %136
  ]

29:                                               ; preds = %26
  %30 = icmp eq ptr %27, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %29
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %27, ptr noundef %0) #21
  %32 = getelementptr inbounds %struct.ParticleDrawData, ptr %7, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !350
  %34 = getelementptr inbounds float, ptr %33, i64 3
  store ptr %34, ptr %32, align 8, !tbaa !350
  br label %35

35:                                               ; preds = %31, %29
  %36 = icmp eq ptr %28, null
  br i1 %36, label %183, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.ParticleDrawData, ptr %7, i64 0, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !354
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %28, ptr noundef %39) #21
  %40 = getelementptr inbounds %struct.ParticleDrawData, ptr %7, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !352
  %42 = getelementptr inbounds float, ptr %41, i64 3
  store ptr %42, ptr %40, align 8, !tbaa !352
  br label %183

43:                                               ; preds = %26, %26
  %44 = fmul float %3, 2.000000e+00
  store float %44, ptr %9, align 8, !tbaa !45
  %45 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %46 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  store <2 x float> zeroinitializer, ptr %46, align 4, !tbaa !45
  %47 = getelementptr inbounds %struct.ParticleKey, ptr %0, i64 0, i32 2
  call void @mul_qt_v3(ptr noundef nonnull %47, ptr noundef nonnull %9) #20
  %48 = icmp eq i32 %1, 4
  %49 = icmp eq ptr %28, null
  br i1 %48, label %50, label %60

50:                                               ; preds = %43
  br i1 %49, label %59, label %51

51:                                               ; preds = %50
  %52 = getelementptr inbounds float, ptr %28, i64 4
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %28, align 4, !tbaa !45
  %53 = getelementptr inbounds float, ptr %28, i64 8
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %53, align 4, !tbaa !45
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %52, align 4, !tbaa !45
  %54 = getelementptr inbounds float, ptr %28, i64 16
  %55 = getelementptr inbounds float, ptr %28, i64 12
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %54, align 4, !tbaa !45
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %55, align 4, !tbaa !45
  %56 = getelementptr inbounds %struct.ParticleDrawData, ptr %7, i64 0, i32 5
  %57 = load ptr, ptr %56, align 8, !tbaa !352
  %58 = getelementptr inbounds float, ptr %57, i64 18
  store ptr %58, ptr %56, align 8, !tbaa !352
  br label %59

59:                                               ; preds = %51, %50
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef %0) #21
  br label %81

60:                                               ; preds = %43
  br i1 %49, label %80, label %61

61:                                               ; preds = %60
  %62 = load float, ptr %11, align 8, !tbaa !45
  %63 = getelementptr inbounds float, ptr %28, i64 9
  %64 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  %65 = getelementptr inbounds float, ptr %28, i64 13
  %66 = getelementptr inbounds float, ptr %28, i64 4
  %67 = load <2 x float>, ptr %64, align 4, !tbaa !45
  %68 = getelementptr inbounds float, ptr %28, i64 17
  %69 = extractelement <2 x float> %67, i64 1
  store float %69, ptr %68, align 4, !tbaa !45
  %70 = shufflevector <2 x float> %67, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %71 = insertelement <4 x float> %70, float %62, i64 2
  %72 = shufflevector <4 x float> %71, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  store <4 x float> %72, ptr %65, align 4, !tbaa !45
  %73 = insertelement <4 x float> poison, float %62, i64 0
  %74 = shufflevector <4 x float> %73, <4 x float> %70, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %75 = shufflevector <4 x float> %74, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  store <4 x float> %75, ptr %63, align 4, !tbaa !45
  %76 = getelementptr inbounds float, ptr %28, i64 8
  store float %69, ptr %76, align 4, !tbaa !45
  store <4 x float> %72, ptr %66, align 4, !tbaa !45
  store <4 x float> %75, ptr %28, align 4, !tbaa !45
  %77 = getelementptr inbounds %struct.ParticleDrawData, ptr %7, i64 0, i32 5
  %78 = load ptr, ptr %77, align 8, !tbaa !352
  %79 = getelementptr inbounds float, ptr %78, i64 18
  store ptr %79, ptr %77, align 8, !tbaa !352
  br label %80

80:                                               ; preds = %61, %60
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef %0, ptr noundef nonnull %9) #21
  br label %81

81:                                               ; preds = %80, %59
  call fastcc void @add_v3_v3(ptr noundef nonnull %9, ptr noundef %0) #21
  %82 = getelementptr inbounds %struct.ParticleDrawData, ptr %7, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !350
  call fastcc void @copy_v3_v3(ptr noundef %83, ptr noundef nonnull %9) #21
  %84 = load ptr, ptr %82, align 8, !tbaa !350
  %85 = getelementptr inbounds float, ptr %84, i64 3
  store ptr %85, ptr %82, align 8, !tbaa !350
  call fastcc void @copy_v3_v3(ptr noundef nonnull %85, ptr noundef nonnull %10) #21
  %86 = load ptr, ptr %82, align 8, !tbaa !350
  %87 = getelementptr inbounds float, ptr %86, i64 3
  store ptr %87, ptr %82, align 8, !tbaa !350
  store float %44, ptr %46, align 4, !tbaa !45
  store float 0.000000e+00, ptr %45, align 8, !tbaa !45
  store float 0.000000e+00, ptr %9, align 8, !tbaa !45
  call void @mul_qt_v3(ptr noundef nonnull %47, ptr noundef nonnull %9) #20
  br i1 %48, label %88, label %89

88:                                               ; preds = %81
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef %0) #21
  br label %90

89:                                               ; preds = %81
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef %0, ptr noundef nonnull %9) #21
  br label %90

90:                                               ; preds = %89, %88
  call fastcc void @add_v3_v3(ptr noundef nonnull %9, ptr noundef %0) #21
  %91 = load ptr, ptr %82, align 8, !tbaa !350
  call fastcc void @copy_v3_v3(ptr noundef %91, ptr noundef nonnull %9) #21
  %92 = load ptr, ptr %82, align 8, !tbaa !350
  %93 = getelementptr inbounds float, ptr %92, i64 3
  store ptr %93, ptr %82, align 8, !tbaa !350
  call fastcc void @copy_v3_v3(ptr noundef nonnull %93, ptr noundef nonnull %10) #21
  %94 = load ptr, ptr %82, align 8, !tbaa !350
  %95 = getelementptr inbounds float, ptr %94, i64 3
  store ptr %95, ptr %82, align 8, !tbaa !350
  store float %44, ptr %45, align 8, !tbaa !45
  store <2 x float> zeroinitializer, ptr %9, align 8, !tbaa !45
  call void @mul_qt_v3(ptr noundef nonnull %47, ptr noundef nonnull %9) #20
  br i1 %48, label %96, label %97

96:                                               ; preds = %90
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef %0) #21
  br label %98

97:                                               ; preds = %90
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef %0, ptr noundef nonnull %9) #21
  br label %98

98:                                               ; preds = %97, %96
  call fastcc void @add_v3_v3(ptr noundef nonnull %9, ptr noundef %0) #21
  %99 = load ptr, ptr %82, align 8, !tbaa !350
  call fastcc void @copy_v3_v3(ptr noundef %99, ptr noundef nonnull %9) #21
  %100 = load ptr, ptr %82, align 8, !tbaa !350
  %101 = getelementptr inbounds float, ptr %100, i64 3
  store ptr %101, ptr %82, align 8, !tbaa !350
  call fastcc void @copy_v3_v3(ptr noundef nonnull %101, ptr noundef nonnull %10) #21
  %102 = load ptr, ptr %82, align 8, !tbaa !350
  %103 = getelementptr inbounds float, ptr %102, i64 3
  store ptr %103, ptr %82, align 8, !tbaa !350
  br label %183

104:                                              ; preds = %26
  %105 = getelementptr inbounds %struct.ParticleKey, ptr %0, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %105) #21
  %106 = call fastcc float @normalize_v3(ptr noundef nonnull %9) #21
  %107 = and i16 %2, 4096
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %104
  %110 = tail call fastcc float @len_v3(ptr noundef nonnull %105) #21
  call fastcc void @mul_v3_fl(ptr noundef nonnull %9, float noundef %110) #21
  br label %111

111:                                              ; preds = %109, %104
  %112 = getelementptr inbounds %struct.ParticleDrawData, ptr %7, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !350
  %114 = load float, ptr %5, align 4, !tbaa !45
  %115 = fneg float %114
  call fastcc void @madd_v3_v3v3fl(ptr noundef %113, ptr noundef %0, ptr noundef nonnull %9, float noundef %115) #21
  %116 = load ptr, ptr %112, align 8, !tbaa !350
  %117 = getelementptr inbounds float, ptr %116, i64 3
  store ptr %117, ptr %112, align 8, !tbaa !350
  %118 = getelementptr inbounds float, ptr %5, i64 1
  %119 = load float, ptr %118, align 4, !tbaa !45
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %117, ptr noundef %0, ptr noundef nonnull %9, float noundef %119) #21
  %120 = load ptr, ptr %112, align 8, !tbaa !350
  %121 = getelementptr inbounds float, ptr %120, i64 3
  store ptr %121, ptr %112, align 8, !tbaa !350
  %122 = icmp eq ptr %28, null
  br i1 %122, label %183, label %123

123:                                              ; preds = %111
  %124 = load float, ptr %11, align 8, !tbaa !45
  %125 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  %126 = getelementptr inbounds float, ptr %28, i64 4
  %127 = load <2 x float>, ptr %125, align 4, !tbaa !45
  store <2 x float> %127, ptr %126, align 4, !tbaa !45
  %128 = insertelement <4 x float> poison, float %124, i64 0
  %129 = shufflevector <2 x float> %127, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %130 = shufflevector <4 x float> %128, <4 x float> %129, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %131 = shufflevector <4 x float> %130, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  store <4 x float> %131, ptr %28, align 4, !tbaa !45
  %132 = getelementptr inbounds %struct.ParticleDrawData, ptr %7, i64 0, i32 5
  %133 = load ptr, ptr %132, align 8, !tbaa !352
  %134 = getelementptr inbounds float, ptr %133, i64 6
  store ptr %134, ptr %132, align 8, !tbaa !352
  br label %183

135:                                              ; preds = %26
  tail call void @drawcircball(i32 noundef 2, ptr noundef %0, float noundef %3, ptr noundef %4) #21
  br label %183

136:                                              ; preds = %26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #22
  %137 = icmp eq ptr %28, null
  br i1 %137, label %155, label %138

138:                                              ; preds = %136
  %139 = getelementptr inbounds float, ptr %28, i64 9
  %140 = load <2 x float>, ptr %11, align 8, !tbaa !45
  store <2 x float> %140, ptr %139, align 4, !tbaa !45
  %141 = getelementptr inbounds float, ptr %28, i64 4
  %142 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %143 = load float, ptr %142, align 8, !tbaa !45
  %144 = getelementptr inbounds float, ptr %28, i64 11
  store float %143, ptr %144, align 4, !tbaa !45
  %145 = getelementptr inbounds float, ptr %28, i64 8
  store float %143, ptr %145, align 4, !tbaa !45
  %146 = shufflevector <2 x float> %140, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %147 = insertelement <4 x float> %146, float %143, i64 1
  %148 = shufflevector <4 x float> %147, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  store <4 x float> %148, ptr %141, align 4, !tbaa !45
  %149 = shufflevector <2 x float> %140, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %150 = insertelement <4 x float> %149, float %143, i64 2
  %151 = shufflevector <4 x float> %150, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  store <4 x float> %151, ptr %28, align 4, !tbaa !45
  %152 = getelementptr inbounds %struct.ParticleDrawData, ptr %7, i64 0, i32 5
  %153 = load ptr, ptr %152, align 8, !tbaa !352
  %154 = getelementptr inbounds float, ptr %153, i64 12
  store ptr %154, ptr %152, align 8, !tbaa !352
  br label %155

155:                                              ; preds = %138, %136
  %156 = getelementptr inbounds %struct.ParticleBillboardData, ptr %6, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %156, ptr noundef %0) #21
  %157 = getelementptr inbounds %struct.ParticleBillboardData, ptr %6, i64 0, i32 2
  %158 = getelementptr inbounds %struct.ParticleKey, ptr %0, i64 0, i32 1
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %157, ptr noundef nonnull %158) #21
  call void @psys_make_billboard(ptr noundef %6, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15) #20
  %159 = getelementptr inbounds %struct.ParticleDrawData, ptr %7, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !350
  call fastcc void @add_v3_v3v3(ptr noundef %160, ptr noundef nonnull %15, ptr noundef nonnull %12) #21
  %161 = load ptr, ptr %159, align 8, !tbaa !350
  call fastcc void @add_v3_v3(ptr noundef %161, ptr noundef nonnull %13) #21
  %162 = load ptr, ptr %159, align 8, !tbaa !350
  %163 = getelementptr inbounds float, ptr %162, i64 3
  store ptr %163, ptr %159, align 8, !tbaa !350
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %163, ptr noundef nonnull %15, ptr noundef nonnull %12) #21
  %164 = load ptr, ptr %159, align 8, !tbaa !350
  call fastcc void @add_v3_v3(ptr noundef %164, ptr noundef nonnull %13) #21
  %165 = load ptr, ptr %159, align 8, !tbaa !350
  %166 = getelementptr inbounds float, ptr %165, i64 3
  store ptr %166, ptr %159, align 8, !tbaa !350
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %166, ptr noundef nonnull %15, ptr noundef nonnull %12) #21
  %167 = load ptr, ptr %159, align 8, !tbaa !350
  call fastcc void @sub_v3_v3v3(ptr noundef %167, ptr noundef %167, ptr noundef nonnull %13) #21
  %168 = load ptr, ptr %159, align 8, !tbaa !350
  %169 = getelementptr inbounds float, ptr %168, i64 3
  store ptr %169, ptr %159, align 8, !tbaa !350
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %169, ptr noundef nonnull %15, ptr noundef nonnull %12) #21
  %170 = load ptr, ptr %159, align 8, !tbaa !350
  call fastcc void @sub_v3_v3v3(ptr noundef %170, ptr noundef %170, ptr noundef nonnull %13) #21
  %171 = load ptr, ptr %159, align 8, !tbaa !350
  %172 = getelementptr inbounds float, ptr %171, i64 3
  store ptr %172, ptr %159, align 8, !tbaa !350
  %173 = getelementptr inbounds %struct.ParticleDrawData, ptr %7, i64 0, i32 3
  %174 = load ptr, ptr %173, align 8, !tbaa !353
  call fastcc void @copy_v3_v3(ptr noundef %174, ptr noundef nonnull %14) #21
  %175 = load ptr, ptr %173, align 8, !tbaa !353
  %176 = getelementptr inbounds float, ptr %175, i64 3
  store ptr %176, ptr %173, align 8, !tbaa !353
  call fastcc void @copy_v3_v3(ptr noundef nonnull %176, ptr noundef nonnull %14) #21
  %177 = load ptr, ptr %173, align 8, !tbaa !353
  %178 = getelementptr inbounds float, ptr %177, i64 3
  store ptr %178, ptr %173, align 8, !tbaa !353
  call fastcc void @copy_v3_v3(ptr noundef nonnull %178, ptr noundef nonnull %14) #21
  %179 = load ptr, ptr %173, align 8, !tbaa !353
  %180 = getelementptr inbounds float, ptr %179, i64 3
  store ptr %180, ptr %173, align 8, !tbaa !353
  call fastcc void @copy_v3_v3(ptr noundef nonnull %180, ptr noundef nonnull %14) #21
  %181 = load ptr, ptr %173, align 8, !tbaa !353
  %182 = getelementptr inbounds float, ptr %181, i64 3
  store ptr %182, ptr %173, align 8, !tbaa !353
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #22
  br label %183

183:                                              ; preds = %111, %123, %35, %37, %26, %155, %135, %98
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #22
  ret void
}

; Function Attrs: optsize
declare void @psys_make_billboard(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @PE_hide_keys_time(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #21
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #20
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

; Function Attrs: optsize
declare void @eul_to_mat4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_mesh_texspace_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_curve_texspace_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @UI_ThemeColorShadeAlpha(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @bbs_mesh_solid__setSolidDrawOptions(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @BM_face_at_index(ptr noundef %0, i32 noundef %1) #20
  %4 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %3, i8 noundef zeroext 2) #21, !range !462
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = add nsw i32 %1, 1
  tail call void @WM_framebuffer_index_set(i32 noundef %7) #20
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i32 [ 1, %6 ], [ 0, %2 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @bbs_mesh_solid__drawCenter(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture readnone %3) #0 {
  %5 = tail call ptr @BM_face_at_index(ptr noundef %0, i32 noundef %1) #20
  %6 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %5, i8 noundef zeroext 2) #21, !range !462
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = add nsw i32 %1, 1
  tail call void @WM_framebuffer_index_set(i32 noundef %9) #20
  tail call void @bglVertex3fv(ptr noundef %2) #20
  br label %10

10:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @bbs_mesh_mask__setSolidDrawOptions(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @BM_face_at_index(ptr noundef %0, i32 noundef %1) #20
  %4 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %3, i8 noundef zeroext 2) #21, !range !462
  %5 = icmp eq i8 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: optsize
declare void @WM_framebuffer_index_set(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @bbs_mesh_wire__setDrawOptions(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !423
  %4 = tail call ptr @BM_edge_at_index(ptr noundef %3, i32 noundef %1) #20
  %5 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %4, i8 noundef zeroext 2) #21, !range !462
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.drawBMOffset_userData, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !425
  %10 = add nsw i32 %9, %1
  tail call void @WM_framebuffer_index_set(i32 noundef %10) #20
  br label %11

11:                                               ; preds = %2, %7
  %12 = phi i32 [ 1, %7 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @bbs_mesh_verts__mapFunc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #0 {
  %6 = load ptr, ptr %0, align 8, !tbaa !423
  %7 = tail call ptr @BM_vert_at_index(ptr noundef %6, i32 noundef %1) #20
  %8 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %7, i8 noundef zeroext 2) #21, !range !462
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.drawBMOffset_userData, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !425
  %13 = add nsw i32 %12, %1
  tail call void @WM_framebuffer_index_set(i32 noundef %13) #20
  tail call void @bglVertex3fv(ptr noundef %2) #20
  br label %14

14:                                               ; preds = %10, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @bbs_mesh_solid_hide2__setDrawOpts(ptr nocapture noundef readonly %0, i32 noundef %1) #12 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !647
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.MPoly, ptr %4, i64 %5, i32 3
  %7 = load i8, ptr %6, align 2, !tbaa !648
  %8 = and i8 %7, 16
  %9 = icmp eq i8 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bbs_obmode_mesh_verts(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.drawMVertOffset_userData, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  %6 = getelementptr inbounds %struct.Mesh, ptr %5, i64 0, i32 15
  %7 = load ptr, ptr %6, align 8, !tbaa !561
  store ptr %7, ptr %3, align 8, !tbaa !650
  %8 = getelementptr inbounds %struct.drawMVertOffset_userData, ptr %3, i64 0, i32 1
  store i32 1, ptr %8, align 8, !tbaa !652
  %9 = tail call float @UI_GetThemeValuef(i32 noundef 36) #20
  tail call void @glPointSize(float noundef %9) #20
  tail call void @bglBegin(i32 noundef 0) #20
  %10 = getelementptr inbounds %struct.DerivedMesh, ptr %1, i64 0, i32 71
  %11 = load ptr, ptr %10, align 8, !tbaa !427
  call void %11(ptr noundef %1, ptr noundef nonnull @bbs_obmode_mesh_verts__mapFunc, ptr noundef nonnull %3, i32 noundef 0) #20
  call void @bglEnd() #20
  call void @glPointSize(float noundef 1.000000e+00) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @bbs_obmode_mesh_verts__mapFunc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #0 {
  %6 = load ptr, ptr %0, align 8, !tbaa !650
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.MVert, ptr %6, i64 %7, i32 2
  %9 = load i8, ptr %8, align 2, !tbaa !566
  %10 = and i8 %9, 16
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.drawMVertOffset_userData, ptr %0, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !652
  %15 = add nsw i32 %14, %1
  tail call void @WM_framebuffer_index_set(i32 noundef %15) #20
  tail call void @bglVertex3fv(ptr noundef %2) #20
  br label %16

16:                                               ; preds = %12, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @bbs_mesh_solid_hide__setDrawOpts(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !647
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.MPoly, ptr %4, i64 %5, i32 3
  %7 = load i8, ptr %6, align 2, !tbaa !648
  %8 = and i8 %7, 16
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = add nsw i32 %1, 1
  tail call void @WM_framebuffer_index_set(i32 noundef %11) #20
  br label %12

12:                                               ; preds = %2, %10
  %13 = phi i32 [ 1, %10 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @bbs_mesh_solid__setDrawOpts(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = add nsw i32 %1, 1
  tail call void @WM_framebuffer_index_set(i32 noundef %3) #20
  ret i32 1
}

declare float @exp2f(float) local_unnamed_addr

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #19

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nounwind optsize }
attributes #21 = { optsize }
attributes #22 = { nounwind }
attributes #23 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !13, i64 232}
!6 = !{!"View3D", !7, i64 0, !7, i64 8, !10, i64 16, !11, i64 32, !12, i64 36, !8, i64 40, !8, i64 56, !12, i64 72, !12, i64 76, !8, i64 80, !8, i64 81, !11, i64 84, !11, i64 88, !13, i64 92, !13, i64 94, !7, i64 96, !7, i64 104, !14, i64 112, !10, i64 128, !7, i64 144, !7, i64 152, !8, i64 160, !11, i64 224, !11, i64 228, !13, i64 232, !13, i64 234, !13, i64 236, !13, i64 238, !13, i64 240, !13, i64 242, !12, i64 244, !12, i64 248, !12, i64 252, !12, i64 256, !8, i64 260, !8, i64 272, !13, i64 284, !13, i64 286, !13, i64 288, !8, i64 290, !8, i64 291, !8, i64 292, !8, i64 293, !8, i64 294, !10, i64 296, !10, i64 312, !10, i64 328, !8, i64 344, !8, i64 345, !8, i64 346, !8, i64 347, !7, i64 352, !7, i64 360, !7, i64 368}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"int", !8, i64 0}
!12 = !{!"float", !8, i64 0}
!13 = !{!"short", !8, i64 0}
!14 = !{!"rctf", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!15 = !{!6, !13, i64 242}
!16 = !{!17, !11, i64 2096}
!17 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !10, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !13, i64 2084, !13, i64 2086, !13, i64 2088, !8, i64 2090, !13, i64 2092, !11, i64 2096, !11, i64 2100, !8, i64 2104, !11, i64 2108, !11, i64 2112, !8, i64 2116}
!18 = !{i8 0, i8 2}
!19 = !{!20, !7, i64 168}
!20 = !{!"Scene", !21, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !11, i64 232, !11, i64 236, !11, i64 240, !13, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !22, i64 280, !30, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !13, i64 4376, !13, i64 4378, !11, i64 4380, !10, i64 4384, !31, i64 4400, !32, i64 4416, !35, i64 4600, !7, i64 4608, !36, i64 4616, !7, i64 4640, !37, i64 4648, !37, i64 4656, !24, i64 4664, !25, i64 4824, !38, i64 4888, !7, i64 4952}
!21 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !13, i64 98, !11, i64 100, !11, i64 104, !11, i64 108, !7, i64 112}
!22 = !{!"RenderData", !23, i64 0, !7, i64 248, !7, i64 256, !26, i64 264, !27, i64 328, !11, i64 400, !11, i64 404, !11, i64 408, !12, i64 412, !11, i64 416, !11, i64 420, !11, i64 424, !11, i64 428, !13, i64 432, !13, i64 434, !12, i64 436, !12, i64 440, !12, i64 444, !12, i64 448, !12, i64 452, !13, i64 456, !13, i64 458, !13, i64 460, !13, i64 462, !13, i64 464, !13, i64 466, !11, i64 468, !13, i64 472, !13, i64 474, !13, i64 476, !13, i64 478, !13, i64 480, !13, i64 482, !11, i64 484, !11, i64 488, !13, i64 492, !13, i64 494, !11, i64 496, !11, i64 500, !13, i64 504, !13, i64 506, !13, i64 508, !13, i64 510, !13, i64 512, !8, i64 514, !8, i64 515, !11, i64 516, !11, i64 520, !11, i64 524, !13, i64 528, !13, i64 530, !13, i64 532, !13, i64 534, !13, i64 536, !13, i64 538, !13, i64 540, !13, i64 542, !14, i64 544, !14, i64 560, !28, i64 576, !10, i64 592, !13, i64 608, !13, i64 610, !12, i64 612, !12, i64 616, !12, i64 620, !12, i64 624, !11, i64 628, !12, i64 632, !12, i64 636, !12, i64 640, !12, i64 644, !13, i64 648, !13, i64 650, !13, i64 652, !13, i64 654, !13, i64 656, !13, i64 658, !12, i64 660, !12, i64 664, !13, i64 668, !13, i64 670, !12, i64 672, !12, i64 676, !8, i64 680, !11, i64 1704, !13, i64 1708, !13, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !11, i64 2520, !13, i64 2524, !13, i64 2526, !12, i64 2528, !12, i64 2532, !13, i64 2536, !13, i64 2538, !12, i64 2540, !13, i64 2544, !13, i64 2546, !11, i64 2548, !13, i64 2552, !13, i64 2554, !13, i64 2556, !13, i64 2558, !12, i64 2560, !12, i64 2564, !7, i64 2568, !11, i64 2576, !12, i64 2580, !8, i64 2584, !29, i64 2616, !11, i64 3976, !11, i64 3980}
!23 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !13, i64 8, !13, i64 10, !12, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !24, i64 24, !25, i64 184}
!24 = !{!"ColorManagedViewSettings", !11, i64 0, !11, i64 4, !8, i64 8, !8, i64 72, !12, i64 136, !12, i64 140, !7, i64 144, !7, i64 152}
!25 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!26 = !{!"QuicktimeCodecSettings", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !13, i64 48, !13, i64 50, !11, i64 52, !11, i64 56, !11, i64 60}
!27 = !{!"FFMpegCodecData", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !12, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !7, i64 64}
!28 = !{!"rcti", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!29 = !{!"BakeData", !23, i64 0, !8, i64 248, !13, i64 1272, !13, i64 1274, !13, i64 1276, !13, i64 1278, !12, i64 1280, !12, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!30 = !{!"AudioData", !11, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !11, i64 16, !13, i64 20, !13, i64 22, !12, i64 24, !12, i64 28}
!31 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!32 = !{!"GameData", !31, i64 0, !13, i64 16, !13, i64 18, !13, i64 20, !13, i64 22, !13, i64 24, !13, i64 26, !13, i64 28, !13, i64 30, !13, i64 32, !8, i64 34, !33, i64 40, !13, i64 64, !13, i64 66, !12, i64 68, !34, i64 72, !12, i64 128, !12, i64 132, !11, i64 136, !13, i64 140, !13, i64 142, !13, i64 144, !13, i64 146, !13, i64 148, !13, i64 150, !13, i64 152, !13, i64 154, !13, i64 156, !13, i64 158, !13, i64 160, !13, i64 162, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180}
!33 = !{!"GameDome", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !12, i64 8, !12, i64 12, !7, i64 16}
!34 = !{!"RecastData", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !11, i64 40, !12, i64 44, !12, i64 48, !13, i64 52, !13, i64 54}
!35 = !{!"UnitSettings", !12, i64 0, !8, i64 4, !8, i64 5, !13, i64 6}
!36 = !{!"PhysicsSettings", !8, i64 0, !11, i64 12, !11, i64 16, !11, i64 20}
!37 = !{!"long", !8, i64 0}
!38 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!39 = !{!40, !7, i64 32}
!40 = !{!"Base", !7, i64 0, !7, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !13, i64 28, !13, i64 30, !7, i64 32}
!41 = !{!42, !11, i64 432}
!42 = !{!"Object", !21, i64 0, !7, i64 120, !7, i64 128, !13, i64 136, !13, i64 138, !11, i64 140, !11, i64 144, !11, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !43, i64 312, !7, i64 360, !10, i64 368, !10, i64 384, !10, i64 400, !10, i64 416, !11, i64 432, !11, i64 436, !7, i64 440, !7, i64 448, !11, i64 456, !11, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !12, i64 616, !12, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !11, i64 944, !13, i64 948, !13, i64 950, !13, i64 952, !13, i64 954, !13, i64 956, !13, i64 958, !13, i64 960, !13, i64 962, !13, i64 964, !8, i64 966, !8, i64 967, !11, i64 968, !11, i64 972, !11, i64 976, !11, i64 980, !11, i64 984, !12, i64 988, !12, i64 992, !12, i64 996, !12, i64 1000, !12, i64 1004, !12, i64 1008, !12, i64 1012, !12, i64 1016, !12, i64 1020, !12, i64 1024, !12, i64 1028, !12, i64 1032, !13, i64 1036, !13, i64 1038, !13, i64 1040, !8, i64 1042, !8, i64 1043, !13, i64 1044, !8, i64 1046, !8, i64 1047, !12, i64 1048, !12, i64 1052, !10, i64 1056, !10, i64 1072, !10, i64 1088, !10, i64 1104, !12, i64 1120, !13, i64 1124, !13, i64 1126, !8, i64 1128, !11, i64 1144, !11, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !13, i64 1162, !8, i64 1164, !10, i64 1176, !10, i64 1192, !10, i64 1208, !10, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !13, i64 1266, !12, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !37, i64 1304, !37, i64 1312, !11, i64 1320, !11, i64 1324, !10, i64 1328, !10, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !10, i64 1400, !7, i64 1416}
!43 = !{!"bAnimVizSettings", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !13, i64 16, !13, i64 18, !13, i64 20, !13, i64 22, !13, i64 24, !13, i64 26, !13, i64 28, !13, i64 30, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44}
!44 = !{!20, !13, i64 4558}
!45 = !{!12, !12, i64 0}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = distinct !{!48, !47}
!49 = distinct !{!49, !47}
!50 = distinct !{!50, !47}
!51 = !{!11, !11, i64 0}
!52 = distinct !{!52, !47}
!53 = !{!7, !7, i64 0}
!54 = !{!13, !13, i64 0}
!55 = !{!8, !8, i64 0}
!56 = !{!57, !7, i64 376}
!57 = !{!"ARegion", !7, i64 0, !7, i64 8, !58, i64 16, !28, i64 176, !28, i64 192, !13, i64 208, !13, i64 210, !13, i64 212, !13, i64 214, !13, i64 216, !13, i64 218, !12, i64 220, !13, i64 224, !13, i64 226, !13, i64 228, !13, i64 230, !13, i64 232, !13, i64 234, !13, i64 236, !13, i64 238, !7, i64 240, !10, i64 248, !10, i64 264, !10, i64 280, !10, i64 296, !10, i64 312, !10, i64 328, !10, i64 344, !7, i64 360, !7, i64 368, !7, i64 376}
!58 = !{!"View2D", !14, i64 0, !14, i64 16, !28, i64 32, !28, i64 48, !28, i64 64, !8, i64 80, !8, i64 88, !12, i64 96, !12, i64 100, !13, i64 104, !13, i64 106, !13, i64 108, !13, i64 110, !13, i64 112, !13, i64 114, !13, i64 116, !13, i64 118, !13, i64 120, !13, i64 122, !13, i64 124, !13, i64 126, !7, i64 128, !11, i64 136, !11, i64 140, !7, i64 144, !7, i64 152}
!59 = distinct !{!59, !47}
!60 = !{!61, !13, i64 826}
!61 = !{!"RegionView3D", !8, i64 0, !8, i64 64, !8, i64 128, !8, i64 192, !8, i64 256, !8, i64 320, !8, i64 384, !8, i64 448, !8, i64 544, !7, i64 640, !7, i64 648, !7, i64 656, !7, i64 664, !7, i64 672, !7, i64 680, !7, i64 688, !8, i64 696, !8, i64 760, !12, i64 776, !12, i64 780, !12, i64 784, !12, i64 788, !8, i64 792, !12, i64 804, !8, i64 808, !8, i64 809, !8, i64 810, !8, i64 811, !8, i64 812, !8, i64 813, !8, i64 816, !13, i64 824, !13, i64 826, !8, i64 828, !13, i64 844, !13, i64 846, !12, i64 848, !8, i64 852, !12, i64 864, !8, i64 868}
!62 = !{!6, !8, i64 344}
!63 = !{ptr @BLF_draw_default, ptr @BLF_draw_default_ascii}
!64 = distinct !{!64, !47}
!65 = !{!42, !7, i64 1224}
!66 = !{!20, !7, i64 176}
!67 = !{!42, !8, i64 1160}
!68 = !{!42, !13, i64 952}
!69 = !{!17, !8, i64 2090}
!70 = !{!71, !7, i64 16}
!71 = !{!"ParticleSystem", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !10, i64 72, !10, i64 88, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !8, i64 168, !8, i64 232, !12, i64 296, !12, i64 300, !12, i64 304, !11, i64 308, !11, i64 312, !11, i64 316, !11, i64 320, !11, i64 324, !11, i64 328, !11, i64 332, !11, i64 336, !13, i64 340, !13, i64 342, !13, i64 344, !13, i64 346, !8, i64 348, !8, i64 540, !13, i64 564, !13, i64 566, !7, i64 568, !7, i64 576, !10, i64 584, !7, i64 600, !7, i64 608, !11, i64 616, !11, i64 620, !7, i64 624, !7, i64 632, !7, i64 640, !12, i64 648, !12, i64 652}
!72 = !{!73, !11, i64 176}
!73 = !{!"ParticleSettings", !21, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !11, i64 152, !11, i64 156, !13, i64 160, !13, i64 162, !13, i64 164, !13, i64 166, !13, i64 168, !13, i64 170, !13, i64 172, !13, i64 174, !11, i64 176, !11, i64 180, !13, i64 184, !13, i64 186, !13, i64 188, !13, i64 190, !13, i64 192, !13, i64 194, !13, i64 196, !13, i64 198, !13, i64 200, !13, i64 202, !13, i64 204, !13, i64 206, !13, i64 208, !13, i64 210, !13, i64 212, !13, i64 214, !13, i64 216, !13, i64 218, !13, i64 220, !13, i64 222, !13, i64 224, !13, i64 226, !13, i64 228, !13, i64 230, !12, i64 232, !12, i64 236, !8, i64 240, !8, i64 248, !12, i64 256, !12, i64 260, !12, i64 264, !13, i64 268, !13, i64 270, !12, i64 272, !12, i64 276, !12, i64 280, !12, i64 284, !12, i64 288, !12, i64 292, !12, i64 296, !12, i64 300, !12, i64 304, !12, i64 308, !12, i64 312, !12, i64 316, !8, i64 320, !11, i64 324, !11, i64 328, !11, i64 332, !11, i64 336, !13, i64 340, !8, i64 342, !12, i64 348, !12, i64 352, !12, i64 356, !12, i64 360, !12, i64 364, !12, i64 368, !12, i64 372, !8, i64 376, !12, i64 388, !12, i64 392, !12, i64 396, !12, i64 400, !12, i64 404, !12, i64 408, !12, i64 412, !8, i64 416, !12, i64 428, !12, i64 432, !12, i64 436, !12, i64 440, !11, i64 444, !11, i64 448, !12, i64 452, !12, i64 456, !12, i64 460, !12, i64 464, !12, i64 468, !12, i64 472, !12, i64 476, !12, i64 480, !12, i64 484, !12, i64 488, !12, i64 492, !12, i64 496, !12, i64 500, !12, i64 504, !12, i64 508, !12, i64 512, !12, i64 516, !12, i64 520, !12, i64 524, !12, i64 528, !12, i64 532, !12, i64 536, !12, i64 540, !12, i64 544, !12, i64 548, !8, i64 552, !12, i64 560, !12, i64 564, !11, i64 568, !11, i64 572, !8, i64 576, !7, i64 720, !10, i64 728, !7, i64 744, !7, i64 752, !7, i64 760, !7, i64 768, !7, i64 776, !7, i64 784, !13, i64 792, !8, i64 794}
!74 = distinct !{!74, !47}
!75 = !{!40, !11, i64 24}
!76 = !{!6, !8, i64 346}
!77 = !{!6, !8, i64 345}
!78 = !{!42, !13, i64 1044}
!79 = !{!42, !13, i64 136}
!80 = !{!42, !8, i64 1047}
!81 = !{!42, !7, i64 360}
!82 = !{!42, !8, i64 1046}
!83 = !{!6, !13, i64 240}
!84 = !{!42, !13, i64 948}
!85 = !{!42, !7, i64 296}
!86 = !{!87, !7, i64 376}
!87 = !{!"Curve", !21, i64 0, !7, i64 120, !7, i64 128, !10, i64 136, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !8, i64 208, !8, i64 220, !8, i64 232, !13, i64 244, !13, i64 246, !13, i64 248, !13, i64 250, !12, i64 252, !12, i64 256, !11, i64 260, !13, i64 264, !13, i64 266, !11, i64 268, !12, i64 272, !12, i64 276, !12, i64 280, !13, i64 284, !13, i64 286, !13, i64 288, !13, i64 290, !11, i64 292, !11, i64 296, !8, i64 300, !13, i64 304, !8, i64 306, !8, i64 307, !12, i64 308, !12, i64 312, !12, i64 316, !12, i64 320, !12, i64 324, !12, i64 328, !12, i64 332, !12, i64 336, !12, i64 340, !12, i64 344, !11, i64 348, !11, i64 352, !11, i64 356, !11, i64 360, !11, i64 364, !7, i64 368, !7, i64 376, !8, i64 384, !7, i64 448, !7, i64 456, !7, i64 464, !7, i64 472, !7, i64 480, !11, i64 488, !11, i64 492, !7, i64 496, !88, i64 504, !12, i64 512, !12, i64 516, !12, i64 520, !8, i64 524, !8, i64 525, !8, i64 526}
!88 = !{!"CharInfo", !13, i64 0, !13, i64 2, !8, i64 4, !8, i64 5, !13, i64 6}
!89 = !{!42, !8, i64 1042}
!90 = !{!42, !7, i64 264}
!91 = !{!87, !7, i64 152}
!92 = !{!10, !7, i64 0}
!93 = !{!94, !7, i64 160}
!94 = !{!"MetaBall", !21, i64 0, !7, i64 120, !10, i64 128, !10, i64 144, !7, i64 160, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 185, !13, i64 186, !13, i64 188, !13, i64 190, !8, i64 192, !8, i64 204, !8, i64 216, !12, i64 228, !12, i64 232, !12, i64 236, !7, i64 240}
!95 = !{!42, !12, i64 1048}
!96 = !{!61, !8, i64 809}
!97 = !{!6, !7, i64 96}
!98 = !{!42, !7, i64 1248}
!99 = !{!100, !13, i64 286}
!100 = !{!"SoftBody", !11, i64 0, !11, i64 4, !7, i64 8, !7, i64 16, !8, i64 24, !8, i64 25, !13, i64 26, !12, i64 28, !8, i64 32, !12, i64 96, !12, i64 100, !12, i64 104, !12, i64 108, !12, i64 112, !12, i64 116, !12, i64 120, !12, i64 124, !12, i64 128, !13, i64 132, !8, i64 134, !13, i64 198, !12, i64 200, !12, i64 204, !8, i64 208, !11, i64 272, !11, i64 276, !11, i64 280, !13, i64 284, !13, i64 286, !7, i64 288, !11, i64 296, !11, i64 300, !12, i64 304, !12, i64 308, !12, i64 312, !12, i64 316, !13, i64 320, !13, i64 322, !13, i64 324, !13, i64 326, !13, i64 328, !13, i64 330, !13, i64 332, !13, i64 334, !7, i64 336, !12, i64 344, !12, i64 348, !7, i64 352, !10, i64 360, !7, i64 376, !8, i64 384, !8, i64 396, !8, i64 432, !11, i64 468}
!101 = !{!42, !7, i64 1240}
!102 = !{!103, !13, i64 6}
!103 = !{!"PartDeflect", !11, i64 0, !13, i64 4, !13, i64 6, !13, i64 8, !13, i64 10, !13, i64 12, !13, i64 14, !13, i64 16, !13, i64 18, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !12, i64 100, !12, i64 104, !12, i64 108, !12, i64 112, !12, i64 116, !12, i64 120, !12, i64 124, !7, i64 128, !7, i64 136, !12, i64 144, !11, i64 148, !7, i64 152}
!104 = !{!105, !7, i64 232}
!105 = !{!"PTCacheEdit", !10, i64 0, !7, i64 16, !7, i64 24, !106, i64 32, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !10, i64 280, !11, i64 296, !11, i64 300, !11, i64 304, !11, i64 308, !8, i64 312, !8, i64 315}
!106 = !{!"PTCacheID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192}
!107 = distinct !{!107, !47}
!108 = !{!109, !7, i64 112}
!109 = !{!"SmokeModifierData", !110, i64 0, !7, i64 112, !7, i64 120, !7, i64 128, !12, i64 136, !11, i64 140}
!110 = !{!"ModifierData", !7, i64 0, !7, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !8, i64 32, !7, i64 96, !7, i64 104}
!111 = !{!112, !11, i64 420}
!112 = !{!"SmokeDomainSettings", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !8, i64 96, !8, i64 108, !8, i64 120, !8, i64 132, !8, i64 144, !8, i64 156, !8, i64 168, !8, i64 180, !8, i64 192, !8, i64 204, !8, i64 268, !8, i64 332, !8, i64 344, !8, i64 356, !8, i64 368, !11, i64 380, !12, i64 384, !12, i64 388, !11, i64 392, !11, i64 396, !12, i64 400, !12, i64 404, !12, i64 408, !11, i64 412, !11, i64 416, !11, i64 420, !11, i64 424, !13, i64 428, !13, i64 430, !11, i64 432, !12, i64 436, !8, i64 440, !12, i64 452, !11, i64 456, !11, i64 460, !8, i64 464, !8, i64 480, !7, i64 512, !11, i64 520, !12, i64 524, !12, i64 528, !11, i64 532, !8, i64 536, !11, i64 548, !12, i64 552, !12, i64 556, !12, i64 560, !12, i64 564, !12, i64 568, !8, i64 572}
!113 = !{!112, !11, i64 396}
!114 = !{!112, !7, i64 8}
!115 = !{!20, !11, i64 680}
!116 = !{!117, !11, i64 28}
!117 = !{!"PointCache", !7, i64 0, !7, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !13, i64 60, !13, i64 62, !8, i64 64, !8, i64 128, !8, i64 192, !8, i64 256, !7, i64 1280, !10, i64 1288, !7, i64 1304, !7, i64 1312}
!118 = !{!112, !7, i64 48}
!119 = !{!112, !11, i64 424}
!120 = !{!112, !7, i64 56}
!121 = !{!112, !12, i64 384}
!122 = !{!112, !12, i64 388}
!123 = !{!112, !11, i64 416}
!124 = !{!112, !7, i64 72}
!125 = !{!112, !7, i64 80}
!126 = !{!127, !13, i64 24}
!127 = !{!"bConstraint", !7, i64 0, !7, i64 8, !7, i64 16, !13, i64 24, !13, i64 26, !8, i64 28, !8, i64 29, !8, i64 30, !13, i64 94, !12, i64 96, !12, i64 100, !7, i64 104, !12, i64 112, !12, i64 116}
!128 = !{!127, !7, i64 16}
!129 = !{!130, !13, i64 96}
!130 = !{!"bRigidBodyJointConstraint", !7, i64 0, !7, i64 8, !11, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !8, i64 44, !8, i64 68, !12, i64 92, !13, i64 96, !13, i64 98, !13, i64 100, !13, i64 102}
!131 = distinct !{!131, !47}
!132 = !{!42, !11, i64 1144}
!133 = !{!42, !8, i64 1043}
!134 = !{!42, !7, i64 1368}
!135 = !{!42, !12, i64 996}
!136 = !{!42, !7, i64 24}
!137 = !{!42, !11, i64 100}
!138 = !{!42, !7, i64 1376}
!139 = !{!42, !7, i64 216}
!140 = !{!42, !11, i64 944}
!141 = !{!6, !11, i64 224}
!142 = !{!42, !7, i64 1176}
!143 = !{!144, !7, i64 144}
!144 = !{!"bFollowTrackConstraint", !7, i64 0, !8, i64 8, !11, i64 72, !11, i64 76, !8, i64 80, !7, i64 144, !7, i64 152}
!145 = !{!146, !7, i64 144}
!146 = !{!"bObjectSolverConstraint", !7, i64 0, !11, i64 8, !11, i64 12, !8, i64 16, !8, i64 80, !7, i64 144}
!147 = !{!20, !7, i64 128}
!148 = !{!149, !7, i64 104}
!149 = !{!"bConstraintTypeInfo", !13, i64 0, !13, i64 2, !8, i64 4, !8, i64 36, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128}
!150 = !{!127, !13, i64 26}
!151 = !{!149, !7, i64 120}
!152 = distinct !{!152, !47}
!153 = !{!149, !7, i64 112}
!154 = distinct !{!154, !47}
!155 = !{!156, !7, i64 0}
!156 = !{!"RigidBodyCon", !7, i64 0, !7, i64 8, !13, i64 16, !13, i64 18, !11, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !12, i64 100, !12, i64 104, !12, i64 108, !12, i64 112, !12, i64 116, !7, i64 120}
!157 = !{!156, !7, i64 8}
!158 = !{!17, !13, i64 2084}
!159 = !{!6, !7, i64 360}
!160 = !{i64 0, i64 8, !53, i64 8, i64 8, !53, i64 16, i64 8, !53, i64 24, i64 8, !53, i64 32, i64 66, !55, i64 98, i64 2, !54, i64 100, i64 4, !51, i64 104, i64 4, !51, i64 108, i64 4, !51, i64 112, i64 8, !53, i64 120, i64 8, !53, i64 128, i64 2, !54, i64 130, i64 2, !54, i64 132, i64 4, !45, i64 136, i64 4, !45, i64 140, i64 4, !45, i64 144, i64 4, !45, i64 148, i64 4, !45, i64 152, i64 4, !45, i64 156, i64 4, !45, i64 160, i64 4, !45, i64 164, i64 4, !45, i64 168, i64 4, !45, i64 172, i64 4, !45, i64 176, i64 4, !45, i64 180, i64 4, !45, i64 184, i64 4, !45, i64 188, i64 4, !45, i64 192, i64 4, !45, i64 196, i64 4, !45, i64 200, i64 4, !45, i64 204, i64 4, !45, i64 208, i64 4, !45, i64 212, i64 4, !45, i64 216, i64 4, !45, i64 220, i64 4, !45, i64 224, i64 4, !45, i64 228, i64 4, !45, i64 232, i64 4, !45, i64 236, i64 4, !45, i64 240, i64 12, !55, i64 252, i64 12, !55, i64 264, i64 12, !55, i64 276, i64 4, !45, i64 280, i64 4, !45, i64 284, i64 4, !45, i64 288, i64 2, !54, i64 290, i64 2, !54, i64 292, i64 2, !54, i64 294, i64 2, !54, i64 296, i64 4, !45, i64 300, i64 4, !45, i64 304, i64 4, !45, i64 308, i64 4, !45, i64 312, i64 4, !51, i64 316, i64 4, !51, i64 320, i64 4, !51, i64 324, i64 4, !51, i64 328, i64 4, !45, i64 332, i64 4, !45, i64 336, i64 4, !45, i64 340, i64 4, !45, i64 344, i64 4, !45, i64 348, i64 4, !45, i64 352, i64 4, !45, i64 356, i64 2, !54, i64 358, i64 2, !54, i64 360, i64 2, !54, i64 362, i64 1, !55, i64 363, i64 1, !55, i64 364, i64 4, !45, i64 368, i64 4, !45, i64 372, i64 2, !54, i64 374, i64 2, !54, i64 376, i64 4, !45, i64 380, i64 4, !45, i64 384, i64 4, !45, i64 388, i64 4, !45, i64 392, i64 2, !54, i64 394, i64 2, !54, i64 396, i64 4, !51, i64 400, i64 4, !51, i64 404, i64 4, !51, i64 408, i64 4, !51, i64 412, i64 2, !54, i64 414, i64 2, !54, i64 416, i64 2, !54, i64 418, i64 2, !54, i64 420, i64 4, !45, i64 424, i64 4, !45, i64 428, i64 4, !45, i64 432, i64 4, !45, i64 436, i64 4, !45, i64 440, i64 4, !45, i64 444, i64 4, !45, i64 448, i64 4, !45, i64 452, i64 4, !45, i64 456, i64 4, !45, i64 460, i64 64, !55, i64 524, i64 4, !45, i64 528, i64 4, !45, i64 532, i64 4, !45, i64 536, i64 4, !51, i64 540, i64 1, !55, i64 541, i64 1, !55, i64 542, i64 1, !55, i64 543, i64 1, !55, i64 544, i64 2, !54, i64 546, i64 2, !54, i64 548, i64 2, !54, i64 550, i64 1, !55, i64 551, i64 1, !55, i64 552, i64 2, !54, i64 554, i64 2, !54, i64 556, i64 4, !45, i64 560, i64 4, !45, i64 564, i64 16, !55, i64 580, i64 4, !45, i64 584, i64 4, !45, i64 588, i64 2, !54, i64 590, i64 2, !54, i64 592, i64 8, !53, i64 600, i64 8, !53, i64 608, i64 1, !55, i64 609, i64 1, !55, i64 610, i64 1, !55, i64 611, i64 1, !55, i64 612, i64 2, !54, i64 614, i64 2, !54, i64 616, i64 4, !45, i64 620, i64 4, !45, i64 624, i64 144, !55, i64 768, i64 8, !53, i64 776, i64 8, !53, i64 784, i64 8, !53, i64 792, i64 8, !53, i64 800, i64 4, !45, i64 804, i64 4, !45, i64 808, i64 4, !45, i64 812, i64 4, !45, i64 816, i64 4, !45, i64 820, i64 2, !54, i64 822, i64 2, !54, i64 824, i64 12, !55, i64 836, i64 12, !55, i64 848, i64 4, !45, i64 852, i64 4, !45, i64 856, i64 4, !45, i64 860, i64 4, !45, i64 864, i64 4, !45, i64 868, i64 4, !45, i64 872, i64 4, !45, i64 876, i64 2, !54, i64 878, i64 2, !54, i64 880, i64 4, !51, i64 884, i64 2, !54, i64 886, i64 2, !54, i64 888, i64 16, !55, i64 904, i64 2, !54, i64 906, i64 2, !54, i64 908, i64 2, !54, i64 910, i64 2, !54, i64 912, i64 2, !54, i64 914, i64 6, !55, i64 920, i64 8, !53, i64 928, i64 8, !53, i64 936, i64 8, !53}
!161 = !{!162, !7, i64 792}
!162 = !{!"Material", !21, i64 0, !7, i64 120, !13, i64 128, !13, i64 130, !12, i64 132, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180, !12, i64 184, !12, i64 188, !12, i64 192, !12, i64 196, !12, i64 200, !12, i64 204, !12, i64 208, !12, i64 212, !12, i64 216, !12, i64 220, !163, i64 224, !164, i64 312, !12, i64 328, !12, i64 332, !12, i64 336, !12, i64 340, !12, i64 344, !12, i64 348, !12, i64 352, !13, i64 356, !13, i64 358, !13, i64 360, !8, i64 362, !8, i64 363, !12, i64 364, !12, i64 368, !13, i64 372, !13, i64 374, !12, i64 376, !12, i64 380, !12, i64 384, !12, i64 388, !13, i64 392, !13, i64 394, !11, i64 396, !11, i64 400, !11, i64 404, !11, i64 408, !13, i64 412, !13, i64 414, !13, i64 416, !13, i64 418, !12, i64 420, !12, i64 424, !12, i64 428, !12, i64 432, !12, i64 436, !12, i64 440, !12, i64 444, !12, i64 448, !12, i64 452, !12, i64 456, !8, i64 460, !12, i64 524, !12, i64 528, !12, i64 532, !11, i64 536, !8, i64 540, !8, i64 541, !8, i64 542, !8, i64 543, !13, i64 544, !13, i64 546, !13, i64 548, !8, i64 550, !8, i64 551, !13, i64 552, !13, i64 554, !12, i64 556, !12, i64 560, !8, i64 564, !12, i64 580, !12, i64 584, !13, i64 588, !13, i64 590, !7, i64 592, !7, i64 600, !8, i64 608, !8, i64 609, !8, i64 610, !8, i64 611, !13, i64 612, !13, i64 614, !12, i64 616, !12, i64 620, !8, i64 624, !7, i64 768, !7, i64 776, !7, i64 784, !7, i64 792, !12, i64 800, !12, i64 804, !12, i64 808, !12, i64 812, !12, i64 816, !13, i64 820, !13, i64 822, !8, i64 824, !8, i64 836, !12, i64 848, !12, i64 852, !12, i64 856, !12, i64 860, !12, i64 864, !12, i64 868, !12, i64 872, !13, i64 876, !13, i64 878, !11, i64 880, !13, i64 884, !13, i64 886, !8, i64 888, !13, i64 904, !13, i64 906, !13, i64 908, !13, i64 910, !13, i64 912, !8, i64 914, !7, i64 920, !10, i64 928}
!163 = !{!"VolumeSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !8, i64 16, !8, i64 28, !8, i64 40, !12, i64 52, !12, i64 56, !12, i64 60, !13, i64 64, !13, i64 66, !13, i64 68, !13, i64 70, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84}
!164 = !{!"GameSettings", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!165 = !{!6, !13, i64 284}
!166 = !{!42, !7, i64 1296}
!167 = !{!168, !7, i64 1120}
!168 = !{!"DerivedMesh", !169, i64 0, !169, i64 200, !169, i64 400, !169, i64 600, !169, i64 800, !11, i64 1000, !11, i64 1004, !11, i64 1008, !11, i64 1012, !11, i64 1016, !11, i64 1020, !11, i64 1024, !7, i64 1032, !7, i64 1040, !11, i64 1048, !12, i64 1052, !11, i64 1056, !11, i64 1060, !7, i64 1064, !8, i64 1072, !7, i64 1080, !7, i64 1088, !7, i64 1096, !7, i64 1104, !7, i64 1112, !7, i64 1120, !7, i64 1128, !7, i64 1136, !7, i64 1144, !7, i64 1152, !7, i64 1160, !7, i64 1168, !7, i64 1176, !7, i64 1184, !7, i64 1192, !7, i64 1200, !7, i64 1208, !7, i64 1216, !7, i64 1224, !7, i64 1232, !7, i64 1240, !7, i64 1248, !7, i64 1256, !7, i64 1264, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !7, i64 1304, !7, i64 1312, !7, i64 1320, !7, i64 1328, !7, i64 1336, !7, i64 1344, !7, i64 1352, !7, i64 1360, !7, i64 1368, !7, i64 1376, !7, i64 1384, !7, i64 1392, !7, i64 1400, !7, i64 1408, !7, i64 1416, !7, i64 1424, !7, i64 1432, !7, i64 1440, !7, i64 1448, !7, i64 1456, !7, i64 1464, !7, i64 1472, !7, i64 1480, !7, i64 1488, !7, i64 1496, !7, i64 1504, !7, i64 1512, !7, i64 1520, !7, i64 1528, !7, i64 1536, !7, i64 1544, !7, i64 1552, !7, i64 1560, !7, i64 1568, !7, i64 1576, !7, i64 1584, !7, i64 1592, !7, i64 1600, !7, i64 1608, !7, i64 1616, !7, i64 1624, !7, i64 1632, !7, i64 1640, !7, i64 1648, !7, i64 1656, !7, i64 1664, !7, i64 1672, !7, i64 1680}
!169 = !{!"CustomData", !7, i64 0, !8, i64 8, !11, i64 172, !11, i64 176, !11, i64 180, !7, i64 184, !7, i64 192}
!170 = !{!42, !7, i64 1280}
!171 = !{!172, !7, i64 272}
!172 = !{!"Mesh", !21, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !169, i64 280, !169, i64 480, !169, i64 680, !169, i64 880, !169, i64 1080, !11, i64 1280, !11, i64 1284, !11, i64 1288, !11, i64 1292, !11, i64 1296, !11, i64 1300, !11, i64 1304, !8, i64 1308, !8, i64 1320, !8, i64 1332, !11, i64 1344, !13, i64 1348, !13, i64 1350, !12, i64 1352, !11, i64 1356, !8, i64 1360, !8, i64 1361, !8, i64 1362, !8, i64 1363, !8, i64 1364, !8, i64 1365, !13, i64 1366, !7, i64 1368}
!173 = !{!42, !11, i64 456}
!174 = !{!162, !11, i64 404}
!175 = distinct !{!175, !47}
!176 = !{!42, !7, i64 416}
!177 = !{!20, !37, i64 4648}
!178 = !{!168, !7, i64 1680}
!179 = !{!172, !11, i64 1296}
!180 = !{i8 0, i8 -127}
!181 = !{!172, !11, i64 1280}
!182 = !{!87, !11, i64 268}
!183 = !{!87, !12, i64 344}
!184 = !{!87, !12, i64 312}
!185 = !{!87, !12, i64 320}
!186 = !{!87, !13, i64 304}
!187 = !{!87, !11, i64 488}
!188 = !{!87, !7, i64 480}
!189 = !{!190, !12, i64 8}
!190 = !{!"TextBox", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!191 = !{!87, !11, i64 492}
!192 = !{!87, !12, i64 336}
!193 = !{!190, !12, i64 0}
!194 = !{!87, !12, i64 340}
!195 = !{!190, !12, i64 4}
!196 = !{!190, !12, i64 12}
!197 = distinct !{!197, !47}
!198 = !{!199, !7, i64 32}
!199 = !{!"EditFont", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !8, i64 40, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84}
!200 = !{!201, !12, i64 4}
!201 = !{!"EditFontSelBox", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16}
!202 = !{!201, !12, i64 0}
!203 = !{!201, !12, i64 8}
!204 = !{!201, !12, i64 16}
!205 = !{!201, !12, i64 12}
!206 = distinct !{!206, !47}
!207 = !{!208, !7, i64 0}
!208 = !{!"CurveCache", !10, i64 0, !10, i64 16, !10, i64 32, !7, i64 48}
!209 = !{!208, !7, i64 16}
!210 = !{!17, !7, i64 0}
!211 = !{!212, !7, i64 1888}
!212 = !{!"Main", !7, i64 0, !7, i64 8, !8, i64 16, !13, i64 1040, !13, i64 1042, !13, i64 1044, !13, i64 1046, !37, i64 1048, !8, i64 1056, !13, i64 1072, !7, i64 1080, !10, i64 1088, !10, i64 1104, !10, i64 1120, !10, i64 1136, !10, i64 1152, !10, i64 1168, !10, i64 1184, !10, i64 1200, !10, i64 1216, !10, i64 1232, !10, i64 1248, !10, i64 1264, !10, i64 1280, !10, i64 1296, !10, i64 1312, !10, i64 1328, !10, i64 1344, !10, i64 1360, !10, i64 1376, !10, i64 1392, !10, i64 1408, !10, i64 1424, !10, i64 1440, !10, i64 1456, !10, i64 1472, !10, i64 1488, !10, i64 1504, !10, i64 1520, !10, i64 1536, !10, i64 1552, !10, i64 1568, !10, i64 1584, !10, i64 1600, !10, i64 1616, !8, i64 1632, !7, i64 1888, !7, i64 1896}
!213 = !{!20, !7, i64 264}
!214 = !{!87, !13, i64 248}
!215 = !{!216, !13, i64 16}
!216 = !{!"Nurb", !7, i64 0, !7, i64 8, !13, i64 16, !13, i64 18, !13, i64 20, !13, i64 22, !11, i64 24, !11, i64 28, !8, i64 32, !13, i64 36, !13, i64 38, !13, i64 40, !13, i64 42, !13, i64 44, !13, i64 46, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !13, i64 80, !13, i64 82, !11, i64 84}
!217 = !{!87, !11, i64 292}
!218 = !{!216, !7, i64 0}
!219 = distinct !{!219, !47}
!220 = distinct !{!220, !47}
!221 = !{!222, !12, i64 40}
!222 = !{!"ToolSettings", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !12, i64 32, !12, i64 36, !12, i64 40, !13, i64 44, !13, i64 46, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51, !12, i64 52, !13, i64 56, !8, i64 58, !8, i64 59, !223, i64 64, !225, i64 168, !12, i64 336, !12, i64 340, !13, i64 344, !13, i64 346, !8, i64 348, !8, i64 349, !13, i64 350, !12, i64 352, !12, i64 356, !12, i64 360, !12, i64 364, !12, i64 368, !12, i64 372, !12, i64 376, !12, i64 380, !12, i64 384, !12, i64 388, !13, i64 392, !8, i64 394, !8, i64 395, !8, i64 396, !8, i64 399, !7, i64 400, !8, i64 408, !8, i64 409, !8, i64 410, !8, i64 411, !8, i64 412, !8, i64 413, !8, i64 421, !8, i64 429, !8, i64 430, !8, i64 431, !8, i64 432, !8, i64 433, !13, i64 434, !13, i64 436, !13, i64 438, !13, i64 440, !8, i64 442, !8, i64 443, !8, i64 444, !8, i64 445, !8, i64 446, !8, i64 447, !11, i64 448, !11, i64 452, !11, i64 456, !11, i64 460, !13, i64 464, !13, i64 466, !11, i64 468, !12, i64 472, !12, i64 476, !226, i64 480, !227, i64 608}
!223 = !{!"ImagePaintSettings", !224, i64 0, !13, i64 40, !13, i64 42, !13, i64 44, !13, i64 46, !8, i64 48, !11, i64 52, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !8, i64 88, !12, i64 100}
!224 = !{!"Paint", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24, !11, i64 28, !11, i64 32, !11, i64 36}
!225 = !{!"ParticleEditSettings", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !8, i64 8, !7, i64 120, !12, i64 128, !12, i64 132, !11, i64 136, !11, i64 140, !11, i64 144, !11, i64 148, !7, i64 152, !7, i64 160}
!226 = !{!"UnifiedPaintSettings", !11, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !8, i64 16, !8, i64 28, !11, i64 40, !8, i64 44, !12, i64 52, !11, i64 56, !11, i64 60, !8, i64 64, !8, i64 65, !12, i64 72, !8, i64 76, !11, i64 84, !12, i64 88, !8, i64 92, !8, i64 100, !11, i64 108, !7, i64 112, !12, i64 120, !11, i64 124}
!227 = !{!"MeshStatVis", !8, i64 0, !8, i64 1, !8, i64 3, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !8, i64 20, !8, i64 21, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36}
!228 = !{!216, !13, i64 36}
!229 = !{!230, !12, i64 16}
!230 = !{!"BevPoint", !8, i64 0, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !8, i64 36, !8, i64 48, !8, i64 60, !13, i64 76, !13, i64 78}
!231 = distinct !{!231, !47}
!232 = distinct !{!232, !47}
!233 = distinct !{!233, !47}
!234 = !{!235, !13, i64 26}
!235 = !{!"MetaElem", !7, i64 0, !7, i64 8, !7, i64 16, !13, i64 24, !13, i64 26, !13, i64 28, !13, i64 30, !12, i64 32, !12, i64 36, !12, i64 40, !8, i64 44, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !7, i64 88, !7, i64 96}
!236 = !{!235, !13, i64 28}
!237 = !{!235, !12, i64 72}
!238 = !{!235, !13, i64 30}
!239 = !{!235, !12, i64 80}
!240 = !{!235, !7, i64 0}
!241 = distinct !{!241, !47}
!242 = !{!42, !7, i64 1392}
!243 = !{!244, !7, i64 40}
!244 = !{!"ImBuf", !7, i64 0, !7, i64 8, !11, i64 16, !11, i64 20, !8, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !7, i64 40, !7, i64 48, !8, i64 56, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !7, i64 88, !7, i64 96, !7, i64 104, !12, i64 112, !8, i64 120, !11, i64 280, !11, i64 284, !11, i64 288, !11, i64 292, !7, i64 296, !7, i64 304, !11, i64 312, !8, i64 316, !8, i64 1340, !7, i64 2368, !11, i64 2376, !7, i64 2384, !11, i64 2392, !11, i64 2396, !7, i64 2400, !7, i64 2408, !7, i64 2416, !7, i64 2424, !11, i64 2432, !28, i64 2436, !245, i64 2456}
!245 = !{!"DDSData", !11, i64 0, !11, i64 4, !7, i64 8, !11, i64 16}
!246 = !{!244, !7, i64 48}
!247 = !{!244, !11, i64 16}
!248 = !{!244, !11, i64 20}
!249 = !{!250, !12, i64 1336}
!250 = !{!"Image", !21, i64 0, !8, i64 120, !7, i64 1144, !7, i64 1152, !7, i64 1160, !7, i64 1168, !8, i64 1176, !13, i64 1240, !13, i64 1242, !13, i64 1244, !13, i64 1246, !13, i64 1248, !13, i64 1250, !11, i64 1252, !13, i64 1256, !13, i64 1258, !13, i64 1260, !13, i64 1262, !13, i64 1264, !13, i64 1266, !11, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !12, i64 1296, !11, i64 1300, !13, i64 1304, !13, i64 1306, !11, i64 1308, !11, i64 1312, !8, i64 1316, !8, i64 1317, !13, i64 1318, !8, i64 1320, !12, i64 1336, !12, i64 1340, !38, i64 1344, !8, i64 1408, !8, i64 1409, !8, i64 1416}
!251 = !{!250, !12, i64 1340}
!252 = !{!253, !12, i64 8972}
!253 = !{!"UserDef", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !11, i64 8468, !13, i64 8472, !13, i64 8474, !13, i64 8476, !13, i64 8478, !13, i64 8480, !13, i64 8482, !11, i64 8484, !11, i64 8488, !11, i64 8492, !13, i64 8496, !13, i64 8498, !11, i64 8500, !11, i64 8504, !11, i64 8508, !11, i64 8512, !11, i64 8516, !11, i64 8520, !11, i64 8524, !13, i64 8528, !13, i64 8530, !13, i64 8532, !13, i64 8534, !10, i64 8536, !10, i64 8552, !10, i64 8568, !10, i64 8584, !10, i64 8600, !10, i64 8616, !10, i64 8632, !8, i64 8648, !13, i64 8712, !13, i64 8714, !13, i64 8716, !13, i64 8718, !13, i64 8720, !13, i64 8722, !13, i64 8724, !13, i64 8726, !8, i64 8728, !13, i64 8896, !13, i64 8898, !13, i64 8900, !13, i64 8902, !13, i64 8904, !13, i64 8906, !13, i64 8908, !13, i64 8910, !11, i64 8912, !11, i64 8916, !13, i64 8920, !13, i64 8922, !13, i64 8924, !13, i64 8926, !13, i64 8928, !13, i64 8930, !13, i64 8932, !13, i64 8934, !13, i64 8936, !13, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !13, i64 8944, !13, i64 8946, !13, i64 8948, !13, i64 8950, !13, i64 8952, !13, i64 8954, !12, i64 8956, !12, i64 8960, !11, i64 8964, !13, i64 8968, !13, i64 8970, !12, i64 8972, !13, i64 8976, !13, i64 8978, !13, i64 8980, !13, i64 8982, !254, i64 8984, !8, i64 9760, !8, i64 9772, !13, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !11, i64 10896, !11, i64 10900, !12, i64 10904, !12, i64 10908, !11, i64 10912, !13, i64 10916, !13, i64 10918, !13, i64 10920, !13, i64 10922, !13, i64 10924, !13, i64 10926, !255, i64 10928}
!254 = !{!"ColorBand", !13, i64 0, !13, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!255 = !{!"WalkNavigation", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !13, i64 24, !8, i64 26}
!256 = !{!253, !13, i64 8480}
!257 = !{!258, !13, i64 128}
!258 = !{!"Lamp", !21, i64 0, !7, i64 120, !13, i64 128, !13, i64 130, !11, i64 132, !13, i64 136, !13, i64 138, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180, !12, i64 184, !12, i64 188, !12, i64 192, !12, i64 196, !7, i64 200, !13, i64 208, !13, i64 210, !12, i64 212, !12, i64 216, !12, i64 220, !12, i64 224, !12, i64 228, !12, i64 232, !12, i64 236, !13, i64 240, !13, i64 242, !13, i64 244, !13, i64 246, !8, i64 248, !8, i64 249, !13, i64 250, !13, i64 252, !13, i64 254, !13, i64 256, !13, i64 258, !12, i64 260, !12, i64 264, !12, i64 268, !12, i64 272, !13, i64 276, !13, i64 278, !13, i64 280, !13, i64 282, !13, i64 284, !13, i64 286, !12, i64 288, !12, i64 292, !12, i64 296, !12, i64 300, !12, i64 304, !12, i64 308, !12, i64 312, !12, i64 316, !12, i64 320, !12, i64 324, !12, i64 328, !12, i64 332, !12, i64 336, !13, i64 340, !8, i64 342, !7, i64 344, !8, i64 352, !13, i64 496, !13, i64 498, !8, i64 500, !7, i64 504, !7, i64 512}
!259 = !{!258, !11, i64 132}
!260 = !{!253, !13, i64 8924}
!261 = distinct !{!261, !47}
!262 = !{!258, !12, i64 176}
!263 = !{!258, !12, i64 180}
!264 = !{!258, !12, i64 184}
!265 = !{!258, !12, i64 212}
!266 = distinct !{!266, !47}
!267 = distinct !{!267, !47}
!268 = !{!258, !13, i64 258}
!269 = !{!258, !12, i64 260}
!270 = !{!258, !12, i64 264}
!271 = !{!272, !12, i64 152}
!272 = !{!"Camera", !21, i64 0, !7, i64 120, !8, i64 128, !8, i64 129, !13, i64 130, !12, i64 132, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !7, i64 176, !7, i64 184, !8, i64 192, !8, i64 193}
!273 = distinct !{!273, !47}
!274 = !{!272, !13, i64 130}
!275 = !{!272, !12, i64 136}
!276 = !{!272, !12, i64 140}
!277 = !{!20, !7, i64 136}
!278 = !{!279, !12, i64 220}
!279 = !{!"World", !21, i64 0, !7, i64 120, !13, i64 128, !13, i64 130, !13, i64 132, !13, i64 134, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180, !12, i64 184, !12, i64 188, !12, i64 192, !12, i64 196, !13, i64 200, !13, i64 202, !13, i64 204, !13, i64 206, !13, i64 208, !13, i64 210, !13, i64 212, !13, i64 214, !12, i64 216, !12, i64 220, !12, i64 224, !12, i64 228, !12, i64 232, !12, i64 236, !12, i64 240, !12, i64 244, !12, i64 248, !12, i64 252, !12, i64 256, !12, i64 260, !13, i64 264, !13, i64 266, !13, i64 268, !13, i64 270, !12, i64 272, !12, i64 276, !12, i64 280, !12, i64 284, !13, i64 288, !13, i64 290, !13, i64 292, !13, i64 294, !12, i64 296, !12, i64 300, !12, i64 304, !12, i64 308, !12, i64 312, !12, i64 316, !12, i64 320, !13, i64 324, !13, i64 326, !13, i64 328, !13, i64 330, !13, i64 332, !13, i64 334, !7, i64 336, !7, i64 344, !7, i64 352, !8, i64 360, !13, i64 504, !13, i64 506, !8, i64 508, !7, i64 512, !7, i64 520}
!280 = !{!279, !12, i64 224}
!281 = distinct !{!281, !47}
!282 = distinct !{!282, !47}
!283 = distinct !{!283, !47}
!284 = distinct !{!284, !47}
!285 = !{!286, !7, i64 272}
!286 = !{!"Lattice", !21, i64 0, !7, i64 120, !13, i64 128, !13, i64 130, !13, i64 132, !13, i64 134, !13, i64 136, !13, i64 138, !13, i64 140, !13, i64 142, !8, i64 144, !8, i64 145, !8, i64 146, !8, i64 147, !11, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !8, i64 208, !7, i64 272}
!287 = !{!288, !7, i64 0}
!288 = !{!"EditLatt", !7, i64 0, !11, i64 8, !8, i64 12}
!289 = !{!42, !7, i64 400}
!290 = !{!286, !7, i64 200}
!291 = !{!42, !13, i64 1126}
!292 = !{!286, !13, i64 132}
!293 = !{!286, !13, i64 130}
!294 = !{!286, !13, i64 128}
!295 = !{!286, !13, i64 134}
!296 = distinct !{!296, !47}
!297 = distinct !{!297, !47}
!298 = distinct !{!298, !47}
!299 = !{!103, !12, i64 20}
!300 = !{!103, !12, i64 36}
!301 = !{!208, !7, i64 48}
!302 = !{!303, !7, i64 0}
!303 = !{!"Path", !7, i64 0, !11, i64 8, !12, i64 12}
!304 = !{!103, !13, i64 8}
!305 = !{!103, !11, i64 0}
!306 = !{!103, !12, i64 40}
!307 = !{!103, !12, i64 44}
!308 = !{!103, !12, i64 52}
!309 = !{!103, !12, i64 56}
!310 = !{!71, !11, i64 316}
!311 = !{!105, !7, i64 272}
!312 = !{!71, !7, i64 24}
!313 = !{!71, !7, i64 640}
!314 = !{!225, !13, i64 0}
!315 = !{!73, !13, i64 184}
!316 = !{!73, !13, i64 192}
!317 = !{!318, !7, i64 0}
!318 = !{!"ParticleSimulationData", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !12, i64 40}
!319 = !{!318, !7, i64 8}
!320 = !{!318, !7, i64 16}
!321 = !{!318, !7, i64 24}
!322 = !{!73, !13, i64 168}
!323 = !{!71, !13, i64 344}
!324 = !{!73, !13, i64 160}
!325 = !{!71, !7, i64 64}
!326 = !{!71, !11, i64 328}
!327 = !{!73, !13, i64 210}
!328 = !{!73, !13, i64 212}
!329 = !{!73, !13, i64 196}
!330 = !{!71, !11, i64 320}
!331 = !{!71, !7, i64 56}
!332 = !{!73, !13, i64 186}
!333 = !{!73, !7, i64 752}
!334 = !{!73, !7, i64 720}
!335 = !{!73, !7, i64 760}
!336 = !{!337, !7, i64 0}
!337 = !{!"ParticleBillboardData", !7, i64 0, !8, i64 8, !8, i64 20, !8, i64 32, !8, i64 40, !12, i64 48, !12, i64 52, !12, i64 56, !8, i64 60, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !13, i64 88, !13, i64 90, !13, i64 92, !13, i64 94}
!338 = !{!73, !13, i64 224}
!339 = !{!337, !13, i64 88}
!340 = !{!73, !13, i64 228}
!341 = !{!337, !13, i64 92}
!342 = !{!337, !11, i64 72}
!343 = !{!344, !7, i64 32}
!344 = !{!"ParticleDrawData", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84}
!345 = !{!73, !11, i64 568}
!346 = !{!344, !11, i64 72}
!347 = !{!344, !7, i64 0}
!348 = !{!344, !7, i64 16}
!349 = !{!344, !7, i64 48}
!350 = !{!344, !7, i64 8}
!351 = !{!344, !7, i64 56}
!352 = !{!344, !7, i64 40}
!353 = !{!344, !7, i64 24}
!354 = !{!344, !7, i64 64}
!355 = !{!71, !7, i64 136}
!356 = !{!344, !11, i64 76}
!357 = !{!344, !11, i64 80}
!358 = !{!359, !13, i64 196}
!359 = !{!"ParticleData", !360, i64 0, !360, i64 56, !7, i64 112, !7, i64 120, !7, i64 128, !11, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !11, i64 152, !11, i64 156, !8, i64 160, !12, i64 176, !12, i64 180, !12, i64 184, !11, i64 188, !11, i64 192, !13, i64 196, !13, i64 198}
!360 = !{!"ParticleKey", !8, i64 0, !8, i64 12, !8, i64 24, !8, i64 40, !12, i64 52}
!361 = !{!359, !12, i64 140}
!362 = !{!359, !12, i64 144}
!363 = !{!359, !12, i64 148}
!364 = !{!359, !12, i64 180}
!365 = !{!359, !7, i64 128}
!366 = !{!367, !12, i64 8}
!367 = !{!"BoidParticle", !7, i64 0, !368, i64 8, !8, i64 28, !8, i64 40, !12, i64 52}
!368 = !{!"BoidData", !12, i64 0, !8, i64 4, !13, i64 16, !13, i64 18}
!369 = !{!73, !12, i64 264}
!370 = !{!359, !12, i64 52}
!371 = !{!359, !12, i64 108}
!372 = !{!71, !7, i64 32}
!373 = !{!73, !12, i64 564}
!374 = !{!73, !12, i64 440}
!375 = !{!360, !12, i64 52}
!376 = distinct !{!376, !47}
!377 = distinct !{!377, !47}
!378 = !{!379, !11, i64 56}
!379 = !{!"ParticleCacheKey", !8, i64 0, !8, i64 12, !8, i64 24, !8, i64 40, !12, i64 52, !11, i64 56}
!380 = distinct !{!380, !47}
!381 = distinct !{!381, !47}
!382 = distinct !{!382, !47}
!383 = !{!105, !11, i64 296}
!384 = !{!225, !11, i64 148}
!385 = !{!225, !13, i64 6}
!386 = !{!105, !7, i64 24}
!387 = !{!388, !13, i64 12}
!388 = !{!"PTCacheEditPoint", !7, i64 0, !11, i64 8, !13, i64 12}
!389 = distinct !{!389, !47}
!390 = !{!379, !12, i64 52}
!391 = distinct !{!391, !47}
!392 = distinct !{!392, !47}
!393 = !{!225, !11, i64 136}
!394 = !{!388, !11, i64 8}
!395 = distinct !{!395, !47}
!396 = !{!388, !7, i64 0}
!397 = !{!398, !13, i64 52}
!398 = !{!"PTCacheEditKey", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 44, !12, i64 48, !13, i64 52}
!399 = !{!398, !7, i64 0}
!400 = !{!398, !7, i64 24}
!401 = distinct !{!401, !47}
!402 = distinct !{!402, !47}
!403 = distinct !{!403, !47}
!404 = distinct !{!404, !47}
!405 = distinct !{!405, !47}
!406 = !{!407, !13, i64 18}
!407 = !{!"RigidBodyOb", !7, i64 0, !7, i64 8, !13, i64 16, !13, i64 18, !11, i64 20, !11, i64 24, !13, i64 28, !13, i64 30, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !8, i64 64, !8, i64 80, !12, i64 92}
!408 = !{!110, !11, i64 16}
!409 = !{!410, !7, i64 112}
!410 = !{!"HookModifierData", !110, i64 0, !7, i64 112, !8, i64 120, !8, i64 184, !8, i64 248, !12, i64 260, !7, i64 264, !11, i64 272, !12, i64 276, !8, i64 280}
!411 = distinct !{!411, !47}
!412 = !{!37, !37, i64 0}
!413 = !{!414, !7, i64 0}
!414 = !{!"BMEditMesh", !7, i64 0, !7, i64 8, !11, i64 16, !7, i64 24, !11, i64 32, !7, i64 40, !7, i64 48, !37, i64 56, !7, i64 64, !11, i64 72, !7, i64 80, !11, i64 88, !13, i64 92, !13, i64 94, !7, i64 96, !11, i64 104}
!415 = !{!222, !13, i64 46}
!416 = !{!417, !11, i64 12}
!417 = !{!"BMesh", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !8, i64 28, !8, i64 29, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !11, i64 88, !11, i64 92, !11, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !11, i64 128, !7, i64 136, !169, i64 144, !169, i64 344, !169, i64 544, !169, i64 744, !13, i64 944, !11, i64 948, !11, i64 952, !11, i64 956, !10, i64 960, !7, i64 976, !10, i64 984, !7, i64 1000}
!418 = !{!417, !11, i64 4}
!419 = !{!417, !11, i64 0}
!420 = !{!172, !8, i64 1365}
!421 = !{!168, !7, i64 1632}
!422 = !{!168, !7, i64 1512}
!423 = !{!424, !7, i64 0}
!424 = !{!"drawBMOffset_userData", !7, i64 0, !11, i64 8}
!425 = !{!424, !11, i64 8}
!426 = !{!168, !7, i64 1656}
!427 = !{!168, !7, i64 1488}
!428 = !{!168, !7, i64 1592}
!429 = !{!168, !7, i64 1608}
!430 = !{!431, !11, i64 20}
!431 = !{!"DispList", !7, i64 0, !7, i64 8, !13, i64 16, !13, i64 18, !11, i64 20, !11, i64 24, !13, i64 28, !13, i64 30, !7, i64 32, !7, i64 40, !7, i64 48, !11, i64 56, !11, i64 60, !7, i64 64}
!432 = !{!431, !11, i64 24}
!433 = !{!431, !13, i64 16}
!434 = !{!431, !7, i64 32}
!435 = distinct !{!435, !47}
!436 = distinct !{!436, !47}
!437 = !{!431, !13, i64 18}
!438 = distinct !{!438, !47}
!439 = distinct !{!439, !47}
!440 = distinct !{!440, !47}
!441 = !{!431, !7, i64 48}
!442 = distinct !{!442, !47}
!443 = !{!417, !7, i64 968}
!444 = !{!445, !8, i64 24}
!445 = !{!"BMEditSelection", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24}
!446 = !{!445, !7, i64 16}
!447 = !{!168, !7, i64 1648}
!448 = !{!172, !13, i64 1350}
!449 = !{!172, !11, i64 1344}
!450 = !{!17, !11, i64 2100}
!451 = !{!162, !13, i64 128}
!452 = !{!168, !7, i64 1112}
!453 = !{!168, !7, i64 1576}
!454 = !{!42, !7, i64 128}
!455 = !{!224, !11, i64 28}
!456 = !{!457, !8, i64 144}
!457 = !{!"SculptSession", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !11, i64 32, !11, i64 36, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !11, i64 80, !11, i64 84, !8, i64 88, !7, i64 96, !7, i64 104, !8, i64 112, !8, i64 113, !7, i64 120, !7, i64 128, !7, i64 136, !8, i64 144, !11, i64 148, !7, i64 152, !11, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !8, i64 200, !8, i64 204, !8, i64 216, !11, i64 228}
!458 = !{!57, !13, i64 228}
!459 = !{!168, !7, i64 1624}
!460 = !{!168, !7, i64 1600}
!461 = !{!168, !11, i64 1048}
!462 = !{i8 0, i8 9}
!463 = !{!464, !13, i64 48}
!464 = !{!"BMFace", !465, i64 0, !7, i64 16, !7, i64 24, !11, i64 32, !8, i64 36, !13, i64 48}
!465 = !{!"BMHeader", !7, i64 0, !11, i64 8, !8, i64 12, !8, i64 13, !8, i64 14}
!466 = !{!467, !7, i64 24}
!467 = !{!"drawDMFacesSel_userData", !8, i64 0, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56}
!468 = !{!467, !7, i64 32}
!469 = !{!467, !7, i64 40}
!470 = !{!467, !7, i64 48}
!471 = !{!467, !7, i64 56}
!472 = !{!168, !7, i64 1664}
!473 = !{!222, !8, i64 446}
!474 = distinct !{!474, !47}
!475 = !{!476, !7, i64 0}
!476 = !{!"drawDMLayer_userData", !7, i64 0, !11, i64 8}
!477 = !{!476, !11, i64 8}
!478 = distinct !{!478, !47}
!479 = distinct !{!479, !47}
!480 = !{!481, !7, i64 0}
!481 = !{!"drawDMNormal_userData", !7, i64 0, !11, i64 8, !12, i64 12, !8, i64 16, !8, i64 52}
!482 = !{!481, !12, i64 12}
!483 = !{!168, !7, i64 1504}
!484 = !{!35, !8, i64 4}
!485 = !{!35, !13, i64 6}
!486 = !{!28, !11, i64 0}
!487 = !{!57, !13, i64 208}
!488 = !{!28, !11, i64 4}
!489 = !{!28, !11, i64 8}
!490 = !{!57, !13, i64 210}
!491 = !{!28, !11, i64 12}
!492 = !{!414, !7, i64 96}
!493 = !{!494, !7, i64 24}
!494 = !{!"BMEdge", !465, i64 0, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !495, i64 48, !495, i64 64}
!495 = !{!"BMDiskLink", !7, i64 0, !7, i64 8}
!496 = !{!494, !7, i64 32}
!497 = !{!168, !7, i64 1528}
!498 = !{!35, !12, i64 0}
!499 = distinct !{!499, !47}
!500 = !{!35, !8, i64 5}
!501 = !{!502, !7, i64 56}
!502 = !{!"BMLoop", !465, i64 0, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64}
!503 = !{!502, !7, i64 16}
!504 = !{!502, !7, i64 64}
!505 = !{!168, !7, i64 1552}
!506 = !{!502, !7, i64 32}
!507 = distinct !{!507, !47}
!508 = !{!414, !11, i64 32}
!509 = !{!414, !7, i64 24}
!510 = distinct !{!510, !47}
!511 = !{!464, !7, i64 24}
!512 = distinct !{!512, !47}
!513 = !{!464, !11, i64 32}
!514 = distinct !{!514, !47}
!515 = distinct !{!515, !47}
!516 = !{!414, !13, i64 92}
!517 = distinct !{!517, !47}
!518 = distinct !{!518, !47}
!519 = distinct !{!519, !47}
!520 = !{!465, !8, i64 13}
!521 = !{!522, !7, i64 8}
!522 = !{!"drawDMEdgesSel_userData", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!523 = !{!522, !7, i64 16}
!524 = !{!522, !7, i64 24}
!525 = !{!522, !7, i64 0}
!526 = !{!522, !7, i64 32}
!527 = !{!528, !7, i64 0}
!528 = !{!"drawDMEdgesWeightInterp_userData", !7, i64 0, !11, i64 8, !11, i64 12, !11, i64 16, !8, i64 20, !8, i64 24}
!529 = !{!528, !11, i64 8}
!530 = !{!528, !11, i64 12}
!531 = !{!528, !11, i64 16}
!532 = !{!528, !8, i64 20}
!533 = !{!534, !7, i64 0}
!534 = !{!"drawDMEdgesSelInterp_userData", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!535 = !{!534, !7, i64 8}
!536 = !{!534, !7, i64 16}
!537 = !{!534, !7, i64 24}
!538 = !{!539, !7, i64 0}
!539 = !{!"BMVert", !465, i64 0, !7, i64 16, !8, i64 24, !8, i64 36, !7, i64 48}
!540 = !{!494, !7, i64 0}
!541 = !{!542, !8, i64 16}
!542 = !{!"drawDMVerts_userData", !7, i64 0, !7, i64 8, !8, i64 16, !8, i64 17, !8, i64 21, !8, i64 25, !8, i64 29, !12, i64 36, !11, i64 40, !8, i64 44}
!543 = !{!542, !7, i64 8}
!544 = !{!542, !7, i64 0}
!545 = !{!542, !12, i64 36}
!546 = !{!542, !11, i64 40}
!547 = !{!548, !7, i64 0}
!548 = !{!"drawBMSelect_userData", !7, i64 0, !8, i64 8}
!549 = !{!548, !8, i64 8}
!550 = !{!551, !11, i64 12}
!551 = !{!"MVertSkin", !8, i64 0, !11, i64 12}
!552 = !{!481, !11, i64 8}
!553 = !{!465, !11, i64 8}
!554 = !{!555, !7, i64 48}
!555 = !{!"BMIter", !8, i64 0, !7, i64 40, !7, i64 48, !11, i64 56, !8, i64 60}
!556 = !{!555, !8, i64 60}
!557 = !{!555, !7, i64 40}
!558 = !{!417, !7, i64 32}
!559 = !{!417, !7, i64 40}
!560 = !{!417, !7, i64 56}
!561 = !{!172, !7, i64 232}
!562 = !{!563, !7, i64 0}
!563 = !{!"drawDMVertSel_userData", !7, i64 0, !11, i64 8, !8, i64 16, !8, i64 40}
!564 = !{!563, !11, i64 8}
!565 = !{!563, !8, i64 40}
!566 = !{!567, !8, i64 18}
!567 = !{!"MVert", !8, i64 0, !8, i64 12, !8, i64 18, !8, i64 19}
!568 = !{!431, !7, i64 40}
!569 = !{!87, !7, i64 160}
!570 = !{!87, !7, i64 168}
!571 = !{!87, !12, i64 276}
!572 = !{!87, !12, i64 280}
!573 = distinct !{!573, !47}
!574 = distinct !{!574, !47}
!575 = !{!431, !13, i64 28}
!576 = !{!431, !13, i64 30}
!577 = !{!431, !11, i64 60}
!578 = distinct !{!578, !47}
!579 = !{!216, !13, i64 20}
!580 = !{!216, !11, i64 24}
!581 = !{!216, !7, i64 72}
!582 = !{!583, !8, i64 54}
!583 = !{!"BezTriple", !8, i64 0, !12, i64 36, !12, i64 40, !12, i64 44, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51, !8, i64 52, !8, i64 53, !8, i64 54, !8, i64 55, !12, i64 56, !12, i64 60, !12, i64 64, !8, i64 68}
!584 = distinct !{!584, !47}
!585 = distinct !{!585, !47}
!586 = !{!583, !8, i64 52}
!587 = !{!583, !8, i64 49}
!588 = !{!583, !8, i64 50}
!589 = !{!583, !8, i64 51}
!590 = !{!583, !8, i64 53}
!591 = distinct !{!591, !47}
!592 = !{!216, !11, i64 28}
!593 = !{!216, !7, i64 64}
!594 = !{!216, !13, i64 44}
!595 = distinct !{!595, !47}
!596 = distinct !{!596, !47}
!597 = !{!598, !13, i64 26}
!598 = !{!"BPoint", !8, i64 0, !12, i64 16, !12, i64 20, !13, i64 24, !13, i64 26, !12, i64 28, !12, i64 32}
!599 = !{!598, !13, i64 24}
!600 = distinct !{!600, !47}
!601 = distinct !{!601, !47}
!602 = distinct !{!602, !47}
!603 = distinct !{!603, !47}
!604 = distinct !{!604, !47}
!605 = distinct !{!605, !47}
!606 = distinct !{!606, !47}
!607 = distinct !{!607, !47}
!608 = distinct !{!608, !47}
!609 = distinct !{!609, !47}
!610 = distinct !{!610, !47}
!611 = distinct !{!611, !47}
!612 = distinct !{!612, !47}
!613 = !{!258, !12, i64 216}
!614 = distinct !{!614, !47}
!615 = distinct !{!615, !47}
!616 = !{!40, !11, i64 20}
!617 = !{!618, !11, i64 80}
!618 = !{!"MovieTrackingObject", !7, i64 0, !7, i64 8, !8, i64 16, !11, i64 80, !12, i64 84, !10, i64 88, !10, i64 104, !619, i64 120, !11, i64 144, !11, i64 148}
!619 = !{!"MovieTrackingReconstruction", !11, i64 0, !12, i64 4, !11, i64 8, !11, i64 12, !7, i64 16}
!620 = !{!618, !12, i64 84}
!621 = !{!622, !11, i64 152}
!622 = !{!"MovieTrackingTrack", !7, i64 0, !7, i64 8, !8, i64 16, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !11, i64 120, !11, i64 124, !7, i64 128, !8, i64 136, !12, i64 148, !11, i64 152, !11, i64 156, !11, i64 160, !8, i64 164, !13, i64 176, !13, i64 178, !13, i64 180, !13, i64 182, !11, i64 184, !12, i64 188, !7, i64 192, !12, i64 200, !12, i64 204}
!623 = !{!622, !11, i64 156}
!624 = !{!622, !11, i64 160}
!625 = !{!6, !12, i64 76}
!626 = !{!6, !8, i64 80}
!627 = distinct !{!627, !47}
!628 = !{!619, !11, i64 12}
!629 = !{!619, !7, i64 16}
!630 = distinct !{!630, !47}
!631 = !{!632, !12, i64 4}
!632 = !{!"MDeformWeight", !11, i64 0, !12, i64 4}
!633 = !{!286, !7, i64 176}
!634 = distinct !{!634, !47}
!635 = distinct !{!635, !47}
!636 = distinct !{!636, !47}
!637 = distinct !{!637, !47}
!638 = distinct !{!638, !47}
!639 = !{!71, !11, i64 308}
!640 = !{!71, !7, i64 144}
!641 = !{!73, !12, i64 256}
!642 = !{!73, !12, i64 260}
!643 = !{!73, !12, i64 232}
!644 = !{!73, !12, i64 236}
!645 = !{!337, !12, i64 48}
!646 = !{!337, !12, i64 56}
!647 = !{!172, !7, i64 168}
!648 = !{!649, !8, i64 10}
!649 = !{!"MPoly", !11, i64 0, !11, i64 4, !13, i64 8, !8, i64 10, !8, i64 11}
!650 = !{!651, !7, i64 0}
!651 = !{!"drawMVertOffset_userData", !7, i64 0, !11, i64 8}
!652 = !{!651, !11, i64 8}
