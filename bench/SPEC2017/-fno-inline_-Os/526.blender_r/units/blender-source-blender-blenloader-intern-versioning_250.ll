; ModuleID = 'blender/source/blender/blenloader/intern/versioning_250.c'
source_filename = "blender/source/blender/blenloader/intern/versioning_250.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.SeqIterator = type { ptr, i32, i32, ptr, i32 }
%struct.NodeTreeIterStore = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.bSound = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, float, float, float, float, float, float, i32, i32, ptr, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.bActuator = type { ptr, ptr, ptr, i16, i16, i16, i16, [64 x i8], ptr, ptr }
%struct.bSoundActuator = type { i16, i16, i32, i32, [2 x i16], float, float, ptr, %struct.Sound3D, i16, i16, i16, [1 x i16] }
%struct.Sound3D = type { float, float, float, float, float, float, float, float }
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
%struct.Sequence = type { ptr, ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, float, float, float, float, ptr, i32, i32, i32, float, i32, i8, [3 x i8], %struct.ListBase }
%struct.Strip = type { ptr, ptr, i32, i32, i32, i32, ptr, [768 x i8], ptr, ptr, ptr, ptr, %struct.ColorManagedColorspaceSettings }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.Camera = type { %struct.ID, ptr, i8, i8, i16, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, i8, [7 x i8] }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.Multires = type { %struct.ListBase, ptr, i8, i8, i8, i8, i8, i8, i8, i8, %struct.CustomData, %struct.CustomData, ptr, ptr }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.FileData = type { %struct.ListBase, i32, i32, i32, i32, ptr, ptr, ptr, i32, ptr, [1024 x i8], i8, i32, %struct.z_stream_s, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.FluidsimModifierData = type { %struct.ModifierData, ptr, ptr }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.VoxelData = type { [3 x i32], i32, i16, i16, i16, i16, i16, i16, i32, ptr, float, i32, [1024 x i8], ptr, i32, i32 }
%struct.EffectorWeights = type { ptr, [14 x float], float, i16, [3 x i16], i32 }
%struct.ClothModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ClothSimSettings = type { ptr, float, float, float, [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i8], ptr }
%struct.SoftBody = type { i32, i32, ptr, ptr, i8, i8, i16, float, [64 x i8], float, float, float, float, float, float, float, float, float, i16, [64 x i8], i16, float, float, [64 x i8], i32, i32, i32, i16, i16, ptr, i32, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, float, float, ptr, %struct.ListBase, ptr, [3 x float], [3 x [3 x float]], [3 x [3 x float]], i32 }
%struct.PartDeflect = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, float, i32, ptr }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Key = type { %struct.ID, ptr, ptr, [32 x i8], i32, i32, %struct.ListBase, ptr, ptr, i16, i16, i16, i16, float, i32 }
%struct.KeyBlock = type { ptr, ptr, float, float, i16, i16, i16, i16, i32, i32, ptr, [64 x i8], [64 x i8], float, float }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.Editing = type { ptr, %struct.ListBase, %struct.ListBase, ptr, [1024 x i8], [1024 x i8], i32, i32, i32, i32, %struct.rctf }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.SpaceLink = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16] }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.MultiresModifierData = type { %struct.ModifierData, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.SpaceSeq = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, float, float, i16, i16, i16, i16, i32, float, i32, i32, ptr, %struct.SequencerScopes }
%struct.SequencerScopes = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bPose = type { %struct.ListBase, ptr, i16, i16, i32, i32, float, [3 x float], [3 x float], %struct.ListBase, i32, i32, ptr, ptr, %struct.bAnimVizSettings, [64 x i8] }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.CurveMapping = type { i32, i32, i32, i32, %struct.rctf, %struct.rctf, [4 x %struct.CurveMap], [3 x float], [3 x float], [3 x float], [3 x float] }
%struct.CurveMap = type { i16, i16, float, float, float, [2 x float], [2 x float], ptr, ptr, ptr, [2 x float], [2 x float] }
%struct.FluidsimSettings = type { ptr, i32, i32, i16, i16, i16, i16, float, i16, i16, float, i16, i16, [3 x float], float, float, i32, i32, i32, i32, float, i32, float, float, float, ptr, ptr, [1024 x i8], [3 x float], [3 x float], ptr, i16, i8, i8, float, i32, float, float, i32, i32, float, float, float, ptr, i32, float, float, float, float, float, float, float, i32, float }
%struct.NodeColorBalance = type { [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float] }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.SpaceNode = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, ptr, i16, i16, float, float, float, float, float, [2 x float], %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, %struct.ListBase, ptr }
%struct.SpaceTime = type { ptr, ptr, %struct.ListBase, i32, float, %struct.View2D, %struct.ListBase, i32, i32 }
%struct.ArmatureModifierData = type { %struct.ModifierData, i16, i16, i32, ptr, ptr, [64 x i8] }
%struct.LatticeModifierData = type { %struct.ModifierData, ptr, [64 x i8], float, [4 x i8] }
%struct.CurveModifierData = type { %struct.ModifierData, ptr, [64 x i8], i16, [6 x i8] }
%struct.SmokeModifierData = type { %struct.ModifierData, ptr, ptr, ptr, float, i32 }
%struct.SmokeDomainSettings = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x i32], [3 x float], [3 x float], [4 x [4 x float]], [4 x [4 x float]], [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, float, float, i32, i32, float, float, float, i32, i32, i32, i32, i16, i16, i32, float, [3 x i32], float, i32, i32, [2 x ptr], [2 x %struct.ListBase], ptr, i32, float, float, i32, [3 x float], i32, float, float, float, float, float, [3 x float] }
%struct.SmokeFlowSettings = type { ptr, ptr, ptr, ptr, ptr, i32, float, float, float, float, [3 x float], float, float, float, float, float, i32, float, float, i32, [64 x i8], i16, i16, i16, i16, i32 }
%struct.BoidSettings = type { i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.ListBase }
%struct.SpaceInfo = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], i8, [7 x i8] }
%struct.bObjectActuator = type { i16, i16, i16, i16, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], ptr }
%struct.bSteeringActuator = type { [5 x i8], i8, i16, i32, float, float, float, float, i32, ptr, ptr }
%struct.OceanModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32, float, float, float, float, float, float, float, float, float, float, i32, i32, [1024 x i8], [64 x i8], i8, i8, i8, i8, i16, i16, i32, float, float, i32 }
%struct.bNodeSocket = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], ptr, i16, i16, i16, i16, ptr, [64 x i8], float, float, ptr, i16, i16, i32, ptr, i32, i32, ptr, ptr, %struct.bNodeStack }
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }
%struct.bNodeLink = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.SolidifyModifierData = type { %struct.ModifierData, [64 x i8], float, float, float, float, float, float, float, float, i32, i16, i16 }
%struct.NodeBlurData = type { i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, i16, i8, i8, i32, i32 }
%struct.PointDensity = type { i16, i16, float, float, i16, i16, i32, i32, ptr, i32, i16, i16, ptr, ptr, float, i16, i16, i16, [3 x i16], float, float, float, float, ptr, ptr }
%struct.bCameraActuator = type { ptr, float, float, float, float, i16, i16, float }
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.bActionActuator = type { ptr, i16, i16, float, float, [64 x i8], [64 x i8], i16, i16, i16, i16, i16, i16, float, float }
%struct.bIpoActuator = type { i16, i16, float, float, [64 x i8], [64 x i8], i16, i16, i16, i16 }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.bRigidBodyJointConstraint = type { ptr, ptr, i32, float, float, float, float, float, float, [6 x float], [6 x float], float, i16, i16, i16, i16 }
%struct.bKinematicConstraint = type { ptr, i16, i16, i16, i16, [64 x i8], ptr, [64 x i8], float, float, float, [3 x float], i16, i16, float }
%struct.bRotLimitConstraint = type { float, float, float, float, float, float, i16, i16 }
%struct.MeshDeformModifierData = type { %struct.ModifierData, ptr, [64 x i8], i16, i16, [2 x i16], ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32, [3 x float], float, [4 x [4 x float]], ptr, ptr, ptr }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.bNodeSocketValueFloat = type { i32, float, float, float }
%struct.bNodeSocketValueVector = type { i32, [3 x float], float, float }
%struct.SpaceOops = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, %struct.ListBase, ptr, [32 x i8], %struct.TreeStoreElem, i16, i16, i16, i16, ptr }
%struct.TreeStoreElem = type { i16, i16, i16, i16, ptr }
%struct.SpaceIpo = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.ListBase, i16, i16, i32, float, i32 }
%struct.SpaceNla = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], i16, i16, i32, ptr, %struct.View2D }
%struct.SpaceAction = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.bDopeSheet, i8, i8, i16, float }
%struct.bDopeSheet = type { ptr, %struct.ListBase, ptr, [64 x i8], i32, i32, i32, i32 }
%struct.SpaceButs = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, i16, i16, i16, i16, i16, i16, i16, i16, i8, [7 x i8], ptr, i32, i32, ptr, ptr }
%struct.SpaceText = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], ptr, i32, i32, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, float, %struct.rcti, %struct.rcti, i32, i32, [256 x i8], [256 x i8], i16, i16, [4 x i8], ptr, [2 x float] }

@.str = private unnamed_addr constant [12 x i8] c"%s/BL_proxy\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"NTShader Nodetree\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"NTCompositing Nodetree\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"NTTexture Nodetree\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"ob->matbits\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"preview area for sequencer\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"fcurve -> action actuator do_version\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [29 x i8] c"area region from do_versions\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"nodetree area for node\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"ui area for file\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"toolbar for view3d\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"tool properties for view3d\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"buttons for view3d\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"GPencil View3D\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"GPencil Node\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.16 = private unnamed_addr constant [29 x i8] c"Converted GPencil to ID: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"bNodeSocket\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"default socket value\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @blo_do_versions_250(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.SeqIterator, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca %struct.SeqIterator, align 8
  %7 = alloca %struct.SeqIterator, align 8
  %8 = alloca %struct.SeqIterator, align 8
  %9 = alloca %struct.NodeTreeIterStore, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 3
  %13 = load i16, ptr %12, align 8, !tbaa !34
  %14 = icmp slt i16 %13, 250
  br i1 %14, label %15, label %325

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 31
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %15, %26
  %20 = phi ptr [ %27, %26 ], [ %17, %15 ]
  %21 = getelementptr inbounds %struct.bSound, ptr %20, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.bSound, ptr %20, i64 0, i32 2
  store ptr %22, ptr %25, align 8, !tbaa !48
  store ptr null, ptr %21, align 8, !tbaa !43
  br label %26

26:                                               ; preds = %19, %24
  %27 = load ptr, ptr %20, align 8, !tbaa !42
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %19, !llvm.loop !49

29:                                               ; preds = %26, %15
  %30 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %31 = load ptr, ptr %30, align 8, !tbaa !42
  %32 = icmp eq ptr %31, null
  br i1 %32, label %83, label %36

33:                                               ; preds = %80, %36
  %34 = load ptr, ptr %37, align 8, !tbaa !42
  %35 = icmp eq ptr %34, null
  br i1 %35, label %83, label %36, !llvm.loop !51

36:                                               ; preds = %29, %33
  %37 = phi ptr [ %34, %33 ], [ %31, %29 ]
  %38 = getelementptr inbounds %struct.Object, ptr %37, i64 0, i32 94
  %39 = load ptr, ptr %38, align 8, !tbaa !42
  %40 = icmp eq ptr %39, null
  br i1 %40, label %33, label %41

41:                                               ; preds = %36, %80
  %42 = phi ptr [ %81, %80 ], [ %39, %36 ]
  %43 = getelementptr inbounds %struct.bActuator, ptr %42, i64 0, i32 3
  %44 = load i16, ptr %43, align 8, !tbaa !52
  %45 = icmp eq i16 %44, 5
  br i1 %45, label %46, label %80

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.bActuator, ptr %42, i64 0, i32 8
  %48 = load ptr, ptr %47, align 8, !tbaa !54
  %49 = getelementptr inbounds %struct.bSoundActuator, ptr %48, i64 0, i32 7
  %50 = load ptr, ptr %49, align 8, !tbaa !55
  %51 = icmp eq ptr %50, null
  br i1 %51, label %71, label %52

52:                                               ; preds = %46
  %53 = tail call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %50) #11
  %54 = getelementptr inbounds %struct.bSound, ptr %53, i64 0, i32 12
  %55 = load i32, ptr %54, align 8, !tbaa !58
  %56 = trunc i32 %55 to i16
  %57 = lshr i16 %56, 3
  %58 = and i16 %57, 1
  store i16 %58, ptr %48, align 8, !tbaa !59
  %59 = getelementptr inbounds %struct.bSound, ptr %53, i64 0, i32 8
  %60 = load float, ptr %59, align 8, !tbaa !60
  %61 = getelementptr inbounds %struct.bSoundActuator, ptr %48, i64 0, i32 6
  store float %60, ptr %61, align 4, !tbaa !61
  %62 = getelementptr inbounds %struct.bSound, ptr %53, i64 0, i32 6
  %63 = load float, ptr %62, align 8, !tbaa !62
  %64 = getelementptr inbounds %struct.bSoundActuator, ptr %48, i64 0, i32 8
  %65 = getelementptr inbounds %struct.bSound, ptr %53, i64 0, i32 10
  %66 = load <2 x float>, ptr %65, align 8, !tbaa !63
  %67 = getelementptr inbounds %struct.bSound, ptr %53, i64 0, i32 9
  %68 = load float, ptr %67, align 4, !tbaa !64
  store float %68, ptr %64, align 8, !tbaa !65
  %69 = getelementptr inbounds %struct.bSound, ptr %53, i64 0, i32 7
  %70 = load float, ptr %69, align 4, !tbaa !66
  br label %71

71:                                               ; preds = %46, %52
  %72 = phi float [ %63, %52 ], [ 1.000000e+00, %46 ]
  %73 = phi float [ %70, %52 ], [ 1.000000e+00, %46 ]
  %74 = phi <2 x float> [ %66, %52 ], [ <float 1.000000e+00, float 1.000000e+00>, %46 ]
  %75 = getelementptr inbounds %struct.bSoundActuator, ptr %48, i64 0, i32 5
  store float %72, ptr %75, align 8
  %76 = getelementptr inbounds %struct.bSoundActuator, ptr %48, i64 0, i32 8, i32 1
  store <2 x float> %74, ptr %76, align 4
  %77 = getelementptr inbounds %struct.bSoundActuator, ptr %48, i64 0, i32 8, i32 4
  store float %73, ptr %77, align 8
  %78 = getelementptr inbounds %struct.bSoundActuator, ptr %48, i64 0, i32 8, i32 5
  store <2 x float> <float 3.600000e+02, float 3.600000e+02>, ptr %78, align 4, !tbaa !63
  %79 = getelementptr inbounds %struct.bSoundActuator, ptr %48, i64 0, i32 8, i32 3
  store float 0x47EFFFFFE0000000, ptr %79, align 4, !tbaa !67
  br label %80

80:                                               ; preds = %41, %71
  %81 = load ptr, ptr %42, align 8, !tbaa !42
  %82 = icmp eq ptr %81, null
  br i1 %82, label %33, label %41, !llvm.loop !68

83:                                               ; preds = %33, %29
  %84 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %85 = load ptr, ptr %84, align 8, !tbaa !42
  %86 = icmp eq ptr %85, null
  br i1 %86, label %135, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.SeqIterator, ptr %4, i64 0, i32 4
  %89 = getelementptr inbounds %struct.SeqIterator, ptr %4, i64 0, i32 3
  %90 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 2
  br label %91

91:                                               ; preds = %87, %132
  %92 = phi ptr [ %85, %87 ], [ %133, %132 ]
  %93 = getelementptr inbounds %struct.Scene, ptr %92, i64 0, i32 19
  %94 = load ptr, ptr %93, align 8, !tbaa !69
  %95 = icmp eq ptr %94, null
  br i1 %95, label %132, label %96

96:                                               ; preds = %91
  %97 = load ptr, ptr %94, align 8, !tbaa !88
  %98 = icmp eq ptr %97, null
  br i1 %98, label %132, label %99

99:                                               ; preds = %96
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #12
  call void @BKE_sequence_iterator_begin(ptr noundef nonnull %94, ptr noundef nonnull %4, i8 noundef zeroext 0) #11
  %100 = load i32, ptr %88, align 8, !tbaa !90
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %131, label %102

102:                                              ; preds = %99, %128
  %103 = load ptr, ptr %89, align 8, !tbaa !92
  %104 = getelementptr inbounds %struct.Sequence, ptr %103, i64 0, i32 6
  %105 = load i32, ptr %104, align 4, !tbaa !93
  %106 = icmp eq i32 %105, 5
  br i1 %106, label %107, label %116

107:                                              ; preds = %102
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #12
  %108 = getelementptr inbounds %struct.Sequence, ptr %103, i64 0, i32 24
  %109 = load ptr, ptr %108, align 8, !tbaa !95
  %110 = getelementptr inbounds %struct.Strip, ptr %109, i64 0, i32 7
  %111 = getelementptr inbounds %struct.Strip, ptr %109, i64 0, i32 6
  %112 = load ptr, ptr %111, align 8, !tbaa !96
  call void @BLI_join_dirfile(ptr noundef nonnull %5, i64 noundef 1024, ptr noundef nonnull %110, ptr noundef %112) #11
  %113 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %5, ptr noundef nonnull %90) #11
  %114 = call ptr @sound_new_file(ptr noundef %2, ptr noundef nonnull %5) #11
  %115 = getelementptr inbounds %struct.Sequence, ptr %103, i64 0, i32 37
  store ptr %114, ptr %115, align 8, !tbaa !98
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #12
  br label %116

116:                                              ; preds = %107, %102
  %117 = getelementptr inbounds %struct.Sequence, ptr %103, i64 0, i32 5
  %118 = load i32, ptr %117, align 8, !tbaa !99
  %119 = and i32 %118, 2621440
  %120 = icmp eq i32 %119, 2097152
  br i1 %120, label %121, label %128

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.Sequence, ptr %103, i64 0, i32 24
  %123 = load ptr, ptr %122, align 8, !tbaa !95
  %124 = getelementptr inbounds %struct.Strip, ptr %123, i64 0, i32 8
  %125 = load ptr, ptr %124, align 8, !tbaa !100
  %126 = getelementptr inbounds %struct.Strip, ptr %123, i64 0, i32 7
  %127 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %125, i64 noundef 768, ptr noundef nonnull @.str, ptr noundef nonnull %126) #11
  br label %128

128:                                              ; preds = %116, %121
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %4) #11
  %129 = load i32, ptr %88, align 8, !tbaa !90
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %102, !llvm.loop !101

131:                                              ; preds = %128, %99
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #12
  br label %132

132:                                              ; preds = %91, %96, %131
  %133 = load ptr, ptr %92, align 8, !tbaa !42
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %91, !llvm.loop !102

135:                                              ; preds = %132, %83
  %136 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %137 = load ptr, ptr %136, align 8, !tbaa !42
  %138 = icmp eq ptr %137, null
  br i1 %138, label %143, label %139

139:                                              ; preds = %135, %139
  %140 = phi ptr [ %141, %139 ], [ %137, %135 ]
  call fastcc void @do_versions_windowmanager_2_50(ptr noundef nonnull %140) #13
  call fastcc void @do_versions_gpencil_2_50(ptr noundef %2, ptr noundef nonnull %140) #13
  %141 = load ptr, ptr %140, align 8, !tbaa !42
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %139, !llvm.loop !103

143:                                              ; preds = %139, %135
  %144 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %145 = load ptr, ptr %144, align 8, !tbaa !42
  %146 = icmp eq ptr %145, null
  br i1 %146, label %150, label %153

147:                                              ; preds = %183
  %148 = load ptr, ptr %154, align 8, !tbaa !42
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %153, !llvm.loop !104

150:                                              ; preds = %147, %143
  %151 = load ptr, ptr %84, align 8, !tbaa !42
  %152 = icmp eq ptr %151, null
  br i1 %152, label %235, label %186

153:                                              ; preds = %143, %147
  %154 = phi ptr [ %148, %147 ], [ %145, %143 ]
  %155 = getelementptr inbounds %struct.Material, ptr %154, i64 0, i32 103
  %156 = load ptr, ptr %155, align 8, !tbaa !105
  %157 = icmp eq ptr %156, null
  br i1 %157, label %163, label %158

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.ID, ptr %156, i64 0, i32 4
  %160 = load i8, ptr %159, align 8, !tbaa !109
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %159, ptr noundef nonnull align 1 dereferenceable(18) @.str.1, i64 18, i1 false) #11
  br label %163

163:                                              ; preds = %162, %158, %153
  br label %164

164:                                              ; preds = %163, %183
  %165 = phi i64 [ %184, %183 ], [ 0, %163 ]
  %166 = getelementptr inbounds %struct.Material, ptr %154, i64 0, i32 102, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !42
  %168 = icmp eq ptr %167, null
  br i1 %168, label %183, label %169

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.MTex, ptr %167, i64 0, i32 5
  %171 = load ptr, ptr %170, align 8, !tbaa !110
  %172 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %171) #11
  %173 = icmp eq ptr %172, null
  br i1 %173, label %183, label %174

174:                                              ; preds = %169
  %175 = getelementptr inbounds %struct.Tex, ptr %172, i64 0, i32 61
  %176 = load i8, ptr %175, align 8, !tbaa !112
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %183, label %178

178:                                              ; preds = %174
  %179 = load ptr, ptr %166, align 8, !tbaa !42
  %180 = getelementptr inbounds %struct.MTex, ptr %179, i64 0, i32 19
  %181 = load i16, ptr %180, align 2, !tbaa !115
  %182 = add i16 %181, 1
  store i16 %182, ptr %180, align 2, !tbaa !115
  br label %183

183:                                              ; preds = %164, %178, %174, %169
  %184 = add nuw nsw i64 %165, 1
  %185 = icmp eq i64 %184, 18
  br i1 %185, label %147, label %164, !llvm.loop !116

186:                                              ; preds = %150, %232
  %187 = phi ptr [ %233, %232 ], [ %151, %150 ]
  %188 = getelementptr inbounds %struct.Scene, ptr %187, i64 0, i32 18
  %189 = load ptr, ptr %188, align 8, !tbaa !117
  %190 = icmp eq ptr %189, null
  br i1 %190, label %196, label %191

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.ID, ptr %189, i64 0, i32 4
  %193 = load i8, ptr %192, align 8, !tbaa !109
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %192, ptr noundef nonnull align 1 dereferenceable(23) @.str.2, i64 23, i1 false) #11
  br label %196

196:                                              ; preds = %195, %191, %186
  %197 = getelementptr inbounds %struct.Scene, ptr %187, i64 0, i32 22, i32 47
  %198 = load i32, ptr %197, align 8, !tbaa !118
  %199 = and i32 %198, 1024
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %232, label %201

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.Scene, ptr %187, i64 0, i32 5
  %203 = load ptr, ptr %202, align 8, !tbaa !42
  %204 = icmp eq ptr %203, null
  br i1 %204, label %229, label %205

205:                                              ; preds = %201, %224
  %206 = phi ptr [ %225, %224 ], [ %203, %201 ]
  %207 = getelementptr inbounds %struct.Base, ptr %206, i64 0, i32 7
  %208 = load ptr, ptr %207, align 8, !tbaa !119
  %209 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %208) #11
  %210 = getelementptr inbounds %struct.Object, ptr %209, i64 0, i32 3
  %211 = load i16, ptr %210, align 8, !tbaa !121
  %212 = icmp eq i16 %211, 11
  br i1 %212, label %213, label %224

213:                                              ; preds = %205
  %214 = getelementptr inbounds %struct.ID, ptr %209, i64 0, i32 3
  %215 = load ptr, ptr %214, align 8, !tbaa !124
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %224

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.Object, ptr %209, i64 0, i32 19
  %219 = load ptr, ptr %218, align 8, !tbaa !125
  %220 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %219) #11
  %221 = getelementptr inbounds %struct.Camera, ptr %220, i64 0, i32 4
  %222 = load i16, ptr %221, align 2, !tbaa !126
  %223 = or i16 %222, 128
  store i16 %223, ptr %221, align 2, !tbaa !126
  br label %224

224:                                              ; preds = %205, %213, %217
  %225 = load ptr, ptr %206, align 8, !tbaa !42
  %226 = icmp eq ptr %225, null
  br i1 %226, label %227, label %205, !llvm.loop !128

227:                                              ; preds = %224
  %228 = load i32, ptr %197, align 8, !tbaa !118
  br label %229

229:                                              ; preds = %227, %201
  %230 = phi i32 [ %228, %227 ], [ %198, %201 ]
  %231 = and i32 %230, -1025
  store i32 %231, ptr %197, align 8, !tbaa !118
  br label %232

232:                                              ; preds = %196, %229
  %233 = load ptr, ptr %187, align 8, !tbaa !42
  %234 = icmp eq ptr %233, null
  br i1 %234, label %235, label %186, !llvm.loop !129

235:                                              ; preds = %232, %150
  %236 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %237 = load ptr, ptr %236, align 8, !tbaa !42
  %238 = icmp eq ptr %237, null
  br i1 %238, label %270, label %239

239:                                              ; preds = %235, %267
  %240 = phi ptr [ %268, %267 ], [ %237, %235 ]
  %241 = getelementptr inbounds %struct.Tex, ptr %240, i64 0, i32 52
  %242 = load ptr, ptr %241, align 8, !tbaa !130
  %243 = icmp eq ptr %242, null
  br i1 %243, label %267, label %244

244:                                              ; preds = %239
  %245 = getelementptr inbounds %struct.ID, ptr %242, i64 0, i32 4
  %246 = load i8, ptr %245, align 8, !tbaa !109
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %245, ptr noundef nonnull align 1 dereferenceable(19) @.str.3, i64 19, i1 false) #11
  %249 = load ptr, ptr %241, align 8, !tbaa !130
  br label %250

250:                                              ; preds = %248, %244
  %251 = phi ptr [ %249, %248 ], [ %242, %244 ]
  %252 = getelementptr inbounds %struct.bNodeTree, ptr %251, i64 0, i32 7
  %253 = load ptr, ptr %252, align 8, !tbaa !42
  %254 = icmp eq ptr %253, null
  br i1 %254, label %267, label %255

255:                                              ; preds = %250, %264
  %256 = phi ptr [ %265, %264 ], [ %253, %250 ]
  %257 = getelementptr inbounds %struct.bNode, ptr %256, i64 0, i32 8
  %258 = load i16, ptr %257, align 4, !tbaa !131
  %259 = icmp eq i16 %258, 401
  br i1 %259, label %260, label %264

260:                                              ; preds = %255
  %261 = getelementptr inbounds %struct.bNode, ptr %256, i64 0, i32 33
  %262 = load i16, ptr %261, align 8, !tbaa !133
  %263 = add i16 %262, 1
  store i16 %263, ptr %261, align 8, !tbaa !133
  br label %264

264:                                              ; preds = %255, %260
  %265 = load ptr, ptr %256, align 8, !tbaa !42
  %266 = icmp eq ptr %265, null
  br i1 %266, label %267, label %255, !llvm.loop !134

267:                                              ; preds = %264, %250, %239
  %268 = load ptr, ptr %240, align 8, !tbaa !42
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %239, !llvm.loop !135

270:                                              ; preds = %267, %235
  %271 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %272 = load ptr, ptr %271, align 8, !tbaa !42
  %273 = icmp eq ptr %272, null
  br i1 %273, label %279, label %274

274:                                              ; preds = %270, %274
  %275 = phi ptr [ %277, %274 ], [ %272, %270 ]
  %276 = getelementptr inbounds %struct.Mesh, ptr %275, i64 0, i32 36
  store i32 67, ptr %276, align 8, !tbaa !136
  %277 = load ptr, ptr %275, align 8, !tbaa !42
  %278 = icmp eq ptr %277, null
  br i1 %278, label %279, label %274, !llvm.loop !139

279:                                              ; preds = %274, %270
  %280 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 37
  %281 = load ptr, ptr %280, align 8, !tbaa !42
  %282 = icmp eq ptr %281, null
  br i1 %282, label %283, label %287

283:                                              ; preds = %298, %279
  %284 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 15
  %285 = load ptr, ptr %284, align 8, !tbaa !42
  %286 = icmp eq ptr %285, null
  br i1 %286, label %322, label %306

287:                                              ; preds = %279, %298
  %288 = phi ptr [ %301, %298 ], [ %281, %279 ]
  %289 = getelementptr inbounds %struct.ParticleSettings, ptr %288, i64 0, i32 17
  %290 = load i16, ptr %289, align 8, !tbaa !140
  switch i16 %290, label %293 [
    i16 0, label %298
    i16 1, label %291
  ]

291:                                              ; preds = %287
  %292 = getelementptr inbounds %struct.ParticleSettings, ptr %288, i64 0, i32 21
  store i16 1, ptr %292, align 8, !tbaa !142
  store i16 10, ptr %289, align 8, !tbaa !140
  br label %298

293:                                              ; preds = %287
  %294 = icmp slt i16 %290, 5
  %295 = getelementptr inbounds %struct.ParticleSettings, ptr %288, i64 0, i32 21
  br i1 %294, label %296, label %297

296:                                              ; preds = %293
  store i16 1, ptr %295, align 8, !tbaa !142
  br label %298

297:                                              ; preds = %293
  store i16 %290, ptr %295, align 8, !tbaa !142
  store i16 10, ptr %289, align 8, !tbaa !140
  br label %298

298:                                              ; preds = %287, %291, %297, %296
  %299 = getelementptr inbounds %struct.ParticleSettings, ptr %288, i64 0, i32 118
  store float 1.000000e+00, ptr %299, align 4, !tbaa !143
  %300 = getelementptr inbounds %struct.ParticleSettings, ptr %288, i64 0, i32 110
  store float 1.000000e+00, ptr %300, align 8, !tbaa !144
  %301 = load ptr, ptr %288, align 8, !tbaa !42
  %302 = icmp eq ptr %301, null
  br i1 %302, label %283, label %287, !llvm.loop !145

303:                                              ; preds = %311, %306
  %304 = load ptr, ptr %307, align 8, !tbaa !42
  %305 = icmp eq ptr %304, null
  br i1 %305, label %322, label %306, !llvm.loop !146

306:                                              ; preds = %283, %303
  %307 = phi ptr [ %304, %303 ], [ %285, %283 ]
  %308 = getelementptr inbounds %struct.Curve, ptr %307, i64 0, i32 3
  %309 = load ptr, ptr %308, align 8, !tbaa !42
  %310 = icmp eq ptr %309, null
  br i1 %310, label %303, label %311

311:                                              ; preds = %306, %311
  %312 = phi ptr [ %320, %311 ], [ %309, %306 ]
  %313 = getelementptr inbounds %struct.Nurb, ptr %312, i64 0, i32 2
  %314 = load i16, ptr %313, align 8, !tbaa !147
  %315 = and i16 %314, 8
  %316 = getelementptr inbounds %struct.Nurb, ptr %312, i64 0, i32 5
  %317 = load i16, ptr %316, align 2, !tbaa !149
  %318 = or i16 %317, %315
  store i16 %318, ptr %316, align 2, !tbaa !149
  %319 = and i16 %314, 7
  store i16 %319, ptr %313, align 8, !tbaa !147
  %320 = load ptr, ptr %312, align 8, !tbaa !42
  %321 = icmp eq ptr %320, null
  br i1 %321, label %303, label %311, !llvm.loop !150

322:                                              ; preds = %303, %283
  %323 = load i16, ptr %12, align 8, !tbaa !34
  %324 = icmp slt i16 %323, 250
  br i1 %324, label %332, label %325

325:                                              ; preds = %3, %322
  %326 = phi i16 [ %323, %322 ], [ %13, %3 ]
  %327 = icmp eq i16 %326, 250
  br i1 %327, label %328, label %549

328:                                              ; preds = %325
  %329 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %330 = load i16, ptr %329, align 2, !tbaa !151
  %331 = icmp slt i16 %330, 1
  br i1 %331, label %332, label %549

332:                                              ; preds = %328, %322
  %333 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %334 = load ptr, ptr %333, align 8, !tbaa !42
  %335 = icmp eq ptr %334, null
  br i1 %335, label %395, label %336

336:                                              ; preds = %332, %392
  %337 = phi ptr [ %393, %392 ], [ %334, %332 ]
  %338 = getelementptr inbounds %struct.Object, ptr %337, i64 0, i32 3
  %339 = load i16, ptr %338, align 8, !tbaa !121
  %340 = icmp eq i16 %339, 1
  br i1 %340, label %341, label %361

341:                                              ; preds = %336
  %342 = getelementptr inbounds %struct.Object, ptr %337, i64 0, i32 19
  %343 = load ptr, ptr %342, align 8, !tbaa !125
  %344 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %343) #11
  %345 = load ptr, ptr %342, align 8, !tbaa !125
  store ptr %344, ptr %342, align 8, !tbaa !125
  %346 = icmp eq ptr %344, null
  br i1 %346, label %360, label %347

347:                                              ; preds = %341
  %348 = getelementptr inbounds %struct.ID, ptr %344, i64 0, i32 3
  %349 = load ptr, ptr %348, align 8, !tbaa !152
  %350 = icmp eq ptr %349, null
  br i1 %350, label %351, label %360

351:                                              ; preds = %347
  %352 = getelementptr inbounds %struct.Mesh, ptr %344, i64 0, i32 48
  %353 = load ptr, ptr %352, align 8, !tbaa !153
  %354 = icmp eq ptr %353, null
  br i1 %354, label %360, label %355

355:                                              ; preds = %351
  %356 = getelementptr inbounds %struct.Multires, ptr %353, i64 0, i32 2
  %357 = load i8, ptr %356, align 8, !tbaa !154
  %358 = icmp ugt i8 %357, 1
  br i1 %358, label %359, label %360

359:                                              ; preds = %355
  call void @multires_load_old(ptr noundef nonnull %337, ptr noundef nonnull %344) #11
  br label %360

360:                                              ; preds = %359, %355, %351, %347, %341
  store ptr %345, ptr %342, align 8, !tbaa !125
  br label %361

361:                                              ; preds = %360, %336
  %362 = getelementptr inbounds %struct.Object, ptr %337, i64 0, i32 31
  %363 = load i32, ptr %362, align 8, !tbaa !156
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %392, label %365

365:                                              ; preds = %361
  %366 = getelementptr inbounds %struct.Object, ptr %337, i64 0, i32 30
  %367 = load ptr, ptr %366, align 8, !tbaa !157
  %368 = icmp eq ptr %367, null
  br i1 %368, label %369, label %392

369:                                              ; preds = %365
  %370 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %371 = sext i32 %363 to i64
  %372 = call ptr %370(i64 noundef %371, ptr noundef nonnull @.str.4) #11
  store ptr %372, ptr %366, align 8, !tbaa !157
  %373 = load i32, ptr %362, align 8, !tbaa !156
  %374 = icmp sgt i32 %373, 0
  br i1 %374, label %375, label %392

375:                                              ; preds = %369
  %376 = getelementptr inbounds %struct.Object, ptr %337, i64 0, i32 54
  br label %377

377:                                              ; preds = %375, %377
  %378 = phi i64 [ 0, %375 ], [ %388, %377 ]
  %379 = load i16, ptr %376, align 2, !tbaa !158
  %380 = sext i16 %379 to i32
  %381 = trunc i64 %378 to i32
  %382 = shl nuw i32 1, %381
  %383 = and i32 %382, %380
  %384 = icmp ne i32 %383, 0
  %385 = zext i1 %384 to i8
  %386 = load ptr, ptr %366, align 8, !tbaa !157
  %387 = getelementptr inbounds i8, ptr %386, i64 %378
  store i8 %385, ptr %387, align 1, !tbaa !109
  %388 = add nuw nsw i64 %378, 1
  %389 = load i32, ptr %362, align 8, !tbaa !156
  %390 = sext i32 %389 to i64
  %391 = icmp slt i64 %388, %390
  br i1 %391, label %377, label %392, !llvm.loop !159

392:                                              ; preds = %377, %369, %361, %365
  %393 = load ptr, ptr %337, align 8, !tbaa !42
  %394 = icmp eq ptr %393, null
  br i1 %394, label %395, label %336, !llvm.loop !160

395:                                              ; preds = %392, %332
  %396 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %397 = load ptr, ptr %396, align 8, !tbaa !42
  %398 = icmp eq ptr %397, null
  br i1 %398, label %408, label %399

399:                                              ; preds = %395, %405
  %400 = phi ptr [ %406, %405 ], [ %397, %395 ]
  %401 = getelementptr inbounds %struct.Tex, ptr %400, i64 0, i32 39
  %402 = load i32, ptr %401, align 8, !tbaa !161
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %404, label %405

404:                                              ; preds = %399
  store i32 8, ptr %401, align 8, !tbaa !161
  br label %405

405:                                              ; preds = %399, %404
  %406 = load ptr, ptr %400, align 8, !tbaa !42
  %407 = icmp eq ptr %406, null
  br i1 %407, label %408, label %399, !llvm.loop !162

408:                                              ; preds = %405, %395
  %409 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %410 = load ptr, ptr %409, align 8, !tbaa !42
  %411 = icmp eq ptr %410, null
  br i1 %411, label %482, label %412

412:                                              ; preds = %408, %479
  %413 = phi ptr [ %480, %479 ], [ %410, %408 ]
  %414 = getelementptr inbounds %struct.Material, ptr %413, i64 0, i32 51
  %415 = load i32, ptr %414, align 4, !tbaa !163
  %416 = and i32 %415, 8
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %421, label %418

418:                                              ; preds = %412
  %419 = getelementptr inbounds %struct.Material, ptr %413, i64 0, i32 2
  store i16 3, ptr %419, align 8, !tbaa !164
  %420 = and i32 %415, -9
  br label %421

421:                                              ; preds = %418, %412
  %422 = phi i32 [ %420, %418 ], [ %415, %412 ]
  %423 = and i32 %422, 32
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %428, label %425

425:                                              ; preds = %421
  %426 = getelementptr inbounds %struct.Material, ptr %413, i64 0, i32 2
  store i16 1, ptr %426, align 8, !tbaa !164
  %427 = and i32 %422, -33
  br label %428

428:                                              ; preds = %425, %421
  %429 = phi i32 [ %427, %425 ], [ %422, %421 ]
  %430 = and i32 %429, 131136
  %431 = icmp eq i32 %430, 0
  %432 = and i32 %429, -196673
  %433 = or i32 %429, 65536
  %434 = select i1 %431, i32 %432, i32 %433
  store i32 %434, ptr %414, align 4, !tbaa !163
  %435 = getelementptr inbounds %struct.ID, ptr %413, i64 0, i32 3
  br label %436

436:                                              ; preds = %428, %460
  %437 = phi i64 [ 0, %428 ], [ %461, %460 ]
  %438 = getelementptr inbounds %struct.Material, ptr %413, i64 0, i32 102, i64 %437
  %439 = load ptr, ptr %438, align 8, !tbaa !42
  %440 = icmp eq ptr %439, null
  br i1 %440, label %460, label %441

441:                                              ; preds = %436
  %442 = getelementptr inbounds %struct.MTex, ptr %439, i64 0, i32 5
  %443 = load ptr, ptr %442, align 8, !tbaa !110
  %444 = icmp eq ptr %443, null
  br i1 %444, label %455, label %445

445:                                              ; preds = %441
  %446 = load ptr, ptr %435, align 8, !tbaa !165
  %447 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %446, ptr noundef nonnull %443) #11
  %448 = icmp eq ptr %447, null
  br i1 %448, label %460, label %449

449:                                              ; preds = %445
  %450 = getelementptr inbounds %struct.Tex, ptr %447, i64 0, i32 32
  %451 = load i16, ptr %450, align 8, !tbaa !166
  %452 = icmp eq i16 %451, 0
  br i1 %452, label %453, label %460

453:                                              ; preds = %449
  %454 = load ptr, ptr %438, align 8, !tbaa !42
  br label %455

455:                                              ; preds = %441, %453
  %456 = phi ptr [ %454, %453 ], [ %439, %441 ]
  %457 = getelementptr inbounds %struct.MTex, ptr %456, i64 0, i32 14
  %458 = load i16, ptr %457, align 8, !tbaa !167
  %459 = or i16 %458, 1280
  store i16 %459, ptr %457, align 8, !tbaa !167
  br label %460

460:                                              ; preds = %455, %436, %445, %449
  %461 = add nuw nsw i64 %437, 1
  %462 = icmp eq i64 %461, 18
  br i1 %462, label %463, label %436, !llvm.loop !168

463:                                              ; preds = %460
  %464 = getelementptr inbounds %struct.Material, ptr %413, i64 0, i32 27, i32 14
  %465 = load float, ptr %464, align 8, !tbaa !169
  %466 = fcmp olt float %465, 0x3F1A36E2E0000000
  br i1 %466, label %467, label %479

467:                                              ; preds = %463
  %468 = getelementptr inbounds %struct.Material, ptr %413, i64 0, i32 27
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %468, align 8, !tbaa !63
  %469 = getelementptr inbounds %struct.Material, ptr %413, i64 0, i32 27, i32 2
  store float 1.000000e+00, ptr %469, align 8, !tbaa !170
  %470 = getelementptr inbounds %struct.Material, ptr %413, i64 0, i32 27, i32 4
  %471 = getelementptr inbounds %struct.Material, ptr %413, i64 0, i32 27, i32 4, i64 2
  store float 1.000000e+00, ptr %471, align 8, !tbaa !63
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %470, align 8, !tbaa !63
  %472 = getelementptr inbounds %struct.Material, ptr %413, i64 0, i32 27, i32 7
  store <2 x float> <float 1.000000e+00, float 0x3F847AE140000000>, ptr %472, align 4, !tbaa !63
  %473 = getelementptr inbounds %struct.Material, ptr %413, i64 0, i32 27, i32 10
  store i16 0, ptr %473, align 8, !tbaa !171
  store float 0x3FC99999A0000000, ptr %464, align 8, !tbaa !169
  %474 = getelementptr inbounds %struct.Material, ptr %413, i64 0, i32 27, i32 12
  store i16 1, ptr %474, align 4, !tbaa !172
  %475 = getelementptr inbounds %struct.Material, ptr %413, i64 0, i32 27, i32 11
  %476 = load i16, ptr %475, align 2, !tbaa !173
  %477 = or i16 %476, 8
  store i16 %477, ptr %475, align 2, !tbaa !173
  %478 = getelementptr inbounds %struct.Material, ptr %413, i64 0, i32 27, i32 13
  store i16 50, ptr %478, align 2, !tbaa !174
  br label %479

479:                                              ; preds = %467, %463
  %480 = load ptr, ptr %413, align 8, !tbaa !42
  %481 = icmp eq ptr %480, null
  br i1 %481, label %482, label %412, !llvm.loop !175

482:                                              ; preds = %479, %408
  %483 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %484 = load ptr, ptr %483, align 8, !tbaa !42
  %485 = icmp eq ptr %484, null
  br i1 %485, label %549, label %486

486:                                              ; preds = %482, %540
  %487 = phi ptr [ %547, %540 ], [ %484, %482 ]
  %488 = getelementptr inbounds %struct.Scene, ptr %487, i64 0, i32 20
  %489 = load ptr, ptr %488, align 8, !tbaa !176
  %490 = getelementptr inbounds %struct.ToolSettings, ptr %489, i64 0, i32 6
  %491 = load float, ptr %490, align 8, !tbaa !177
  %492 = fcmp oeq float %491, 0.000000e+00
  br i1 %492, label %501, label %493

493:                                              ; preds = %486
  %494 = getelementptr inbounds %struct.ToolSettings, ptr %489, i64 0, i32 12
  %495 = load i8, ptr %494, align 1, !tbaa !184
  %496 = icmp eq i8 %495, 0
  br i1 %496, label %501, label %497

497:                                              ; preds = %493
  %498 = getelementptr inbounds %struct.ToolSettings, ptr %489, i64 0, i32 4
  %499 = load float, ptr %498, align 8, !tbaa !185
  %500 = fcmp oeq float %499, 0.000000e+00
  br i1 %500, label %501, label %509

501:                                              ; preds = %497, %493, %486
  store float 0x3FB99999A0000000, ptr %490, align 8, !tbaa !177
  %502 = getelementptr inbounds %struct.ToolSettings, ptr %489, i64 0, i32 8
  store i16 1, ptr %502, align 2, !tbaa !186
  %503 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 91), align 8, !tbaa !187
  %504 = getelementptr inbounds %struct.ToolSettings, ptr %489, i64 0, i32 21
  %505 = icmp eq i16 %503, 0
  %506 = select i1 %505, i16 2, i16 %503
  store i16 %506, ptr %504, align 8, !tbaa !191
  %507 = getelementptr inbounds %struct.ToolSettings, ptr %489, i64 0, i32 12
  store i8 1, ptr %507, align 1, !tbaa !184
  %508 = getelementptr inbounds %struct.ToolSettings, ptr %489, i64 0, i32 4
  store float 1.000000e+00, ptr %508, align 8, !tbaa !185
  br label %509

509:                                              ; preds = %501, %497
  %510 = getelementptr inbounds %struct.Scene, ptr %487, i64 0, i32 37
  %511 = getelementptr inbounds %struct.Scene, ptr %487, i64 0, i32 37, i32 11
  %512 = getelementptr inbounds %struct.Scene, ptr %487, i64 0, i32 22, i32 106
  %513 = getelementptr inbounds %struct.Scene, ptr %487, i64 0, i32 22, i32 110
  %514 = load float, ptr %513, align 8, !tbaa !192
  %515 = getelementptr inbounds %struct.Scene, ptr %487, i64 0, i32 37, i32 11, i32 4
  store float %514, ptr %515, align 8, !tbaa !193
  %516 = load <4 x i16>, ptr %512, align 8, !tbaa !194
  store <4 x i16> %516, ptr %511, align 8, !tbaa !194
  %517 = getelementptr inbounds %struct.Scene, ptr %487, i64 0, i32 22, i32 112
  %518 = load ptr, ptr %517, align 8, !tbaa !195
  %519 = getelementptr inbounds %struct.Scene, ptr %487, i64 0, i32 37, i32 11, i32 6
  store ptr %518, ptr %519, align 8, !tbaa !196
  %520 = getelementptr inbounds %struct.Scene, ptr %487, i64 0, i32 22, i32 20
  %521 = load i16, ptr %520, align 8, !tbaa !197
  %522 = icmp ne i16 %521, 0
  %523 = zext i1 %522 to i16
  %524 = getelementptr inbounds %struct.Scene, ptr %487, i64 0, i32 37, i32 1
  %525 = load i16, ptr %524, align 8, !tbaa !198
  %526 = or i16 %525, %523
  store i16 %526, ptr %524, align 8, !tbaa !198
  %527 = getelementptr inbounds %struct.Scene, ptr %487, i64 0, i32 22, i32 21
  %528 = getelementptr inbounds %struct.Scene, ptr %487, i64 0, i32 37, i32 2
  %529 = load <4 x i16>, ptr %527, align 2, !tbaa !194
  %530 = getelementptr inbounds %struct.Scene, ptr %487, i64 0, i32 22, i32 25
  %531 = load i16, ptr %530, align 2, !tbaa !199
  %532 = getelementptr inbounds %struct.Scene, ptr %487, i64 0, i32 37, i32 6
  store i16 %531, ptr %532, align 2, !tbaa !200
  %533 = getelementptr inbounds %struct.Scene, ptr %487, i64 0, i32 22, i32 27
  %534 = load i16, ptr %533, align 8, !tbaa !201
  %535 = getelementptr inbounds %struct.Scene, ptr %487, i64 0, i32 37, i32 13
  store i16 %534, ptr %535, align 2, !tbaa !202
  %536 = getelementptr inbounds %struct.Scene, ptr %487, i64 0, i32 37, i32 12
  switch i16 %534, label %539 [
    i16 1, label %537
    i16 8, label %538
  ]

537:                                              ; preds = %509
  store i16 1, ptr %536, align 8, !tbaa !203
  store i16 5, ptr %535, align 2, !tbaa !202
  br label %540

538:                                              ; preds = %509
  store i16 3, ptr %536, align 8, !tbaa !203
  store i16 5, ptr %535, align 2, !tbaa !202
  br label %540

539:                                              ; preds = %509
  store i16 2, ptr %536, align 8, !tbaa !203
  br label %540

540:                                              ; preds = %538, %539, %537
  %541 = getelementptr inbounds %struct.Scene, ptr %487, i64 0, i32 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %510, ptr noundef nonnull align 8 dereferenceable(16) %541, i64 16, i1 false), !tbaa.struct !204
  store <4 x i16> %529, ptr %528, align 2, !tbaa !194
  %542 = getelementptr inbounds %struct.Scene, ptr %487, i64 0, i32 37, i32 16
  store float 0x40239999A0000000, ptr %542, align 8, !tbaa !205
  %543 = getelementptr inbounds %struct.Scene, ptr %487, i64 0, i32 37, i32 22
  store i16 5, ptr %543, align 2, !tbaa !206
  %544 = getelementptr inbounds %struct.Scene, ptr %487, i64 0, i32 37, i32 19
  store i16 32, ptr %544, align 4, !tbaa !207
  %545 = getelementptr inbounds %struct.Scene, ptr %487, i64 0, i32 37, i32 21
  store i16 128, ptr %545, align 8, !tbaa !208
  %546 = getelementptr inbounds %struct.Scene, ptr %487, i64 0, i32 37, i32 25
  store <4 x i16> <i16 60, i16 5, i16 1, i16 5>, ptr %546, align 8, !tbaa !194
  %547 = load ptr, ptr %487, align 8, !tbaa !42
  %548 = icmp eq ptr %547, null
  br i1 %548, label %549, label %486, !llvm.loop !209

549:                                              ; preds = %540, %482, %328, %325
  %550 = load i16, ptr %12, align 8, !tbaa !34
  %551 = icmp slt i16 %550, 250
  br i1 %551, label %558, label %552

552:                                              ; preds = %549
  %553 = icmp eq i16 %550, 250
  br i1 %553, label %554, label %1940

554:                                              ; preds = %552
  %555 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %556 = load i16, ptr %555, align 2, !tbaa !151
  %557 = icmp slt i16 %556, 2
  br i1 %557, label %558, label %672

558:                                              ; preds = %554, %549
  %559 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %560 = load ptr, ptr %559, align 8, !tbaa !42
  %561 = icmp eq ptr %560, null
  br i1 %561, label %649, label %562

562:                                              ; preds = %558
  %563 = getelementptr inbounds %struct.FileData, ptr %0, i64 0, i32 20
  %564 = load i32, ptr %563, align 4, !tbaa !210
  %565 = and i32 %564, 8
  %566 = icmp eq i32 %565, 0
  %567 = and i32 %564, 16
  %568 = icmp eq i32 %567, 0
  %569 = and i32 %564, 32
  %570 = icmp eq i32 %569, 0
  %571 = and i32 %564, 16384
  %572 = icmp eq i32 %571, 0
  %573 = and i32 %564, 262144
  %574 = icmp eq i32 %573, 0
  %575 = and i32 %564, 131072
  %576 = icmp eq i32 %575, 0
  %577 = and i32 %564, 524288
  %578 = icmp eq i32 %577, 0
  %579 = and i32 %564, 1048576
  %580 = icmp eq i32 %579, 0
  %581 = and i32 %564, 2097152
  %582 = icmp eq i32 %581, 0
  %583 = and i32 %564, 4194304
  %584 = icmp eq i32 %583, 0
  %585 = and i32 %564, 32768
  %586 = icmp eq i32 %585, 0
  %587 = trunc i32 %564 to i16
  %588 = lshr i16 %587, 12
  %589 = and i16 %588, 1
  %590 = select i1 %586, i16 %589, i16 2
  br label %591

591:                                              ; preds = %562, %642
  %592 = phi ptr [ %560, %562 ], [ %647, %642 ]
  br i1 %566, label %597, label %593

593:                                              ; preds = %591
  %594 = getelementptr inbounds %struct.Scene, ptr %592, i64 0, i32 37, i32 18
  %595 = load i32, ptr %594, align 8, !tbaa !213
  %596 = or i32 %595, 2
  store i32 %596, ptr %594, align 8, !tbaa !213
  br label %597

597:                                              ; preds = %593, %591
  br i1 %568, label %602, label %598

598:                                              ; preds = %597
  %599 = getelementptr inbounds %struct.Scene, ptr %592, i64 0, i32 37, i32 18
  %600 = load i32, ptr %599, align 8, !tbaa !213
  %601 = or i32 %600, 4
  store i32 %601, ptr %599, align 8, !tbaa !213
  br label %602

602:                                              ; preds = %598, %597
  br i1 %570, label %607, label %603

603:                                              ; preds = %602
  %604 = getelementptr inbounds %struct.Scene, ptr %592, i64 0, i32 37, i32 18
  %605 = load i32, ptr %604, align 8, !tbaa !213
  %606 = or i32 %605, 8
  store i32 %606, ptr %604, align 8, !tbaa !213
  br label %607

607:                                              ; preds = %603, %602
  br i1 %572, label %612, label %608

608:                                              ; preds = %607
  %609 = getelementptr inbounds %struct.Scene, ptr %592, i64 0, i32 37, i32 18
  %610 = load i32, ptr %609, align 8, !tbaa !213
  %611 = or i32 %610, 16
  store i32 %611, ptr %609, align 8, !tbaa !213
  br label %612

612:                                              ; preds = %608, %607
  br i1 %574, label %617, label %613

613:                                              ; preds = %612
  %614 = getelementptr inbounds %struct.Scene, ptr %592, i64 0, i32 37, i32 18
  %615 = load i32, ptr %614, align 8, !tbaa !213
  %616 = or i32 %615, 256
  store i32 %616, ptr %614, align 8, !tbaa !213
  br label %617

617:                                              ; preds = %613, %612
  br i1 %576, label %622, label %618

618:                                              ; preds = %617
  %619 = getelementptr inbounds %struct.Scene, ptr %592, i64 0, i32 37, i32 18
  %620 = load i32, ptr %619, align 8, !tbaa !213
  %621 = or i32 %620, 128
  store i32 %621, ptr %619, align 8, !tbaa !213
  br label %622

622:                                              ; preds = %618, %617
  br i1 %578, label %627, label %623

623:                                              ; preds = %622
  %624 = getelementptr inbounds %struct.Scene, ptr %592, i64 0, i32 37, i32 18
  %625 = load i32, ptr %624, align 8, !tbaa !213
  %626 = or i32 %625, 512
  store i32 %626, ptr %624, align 8, !tbaa !213
  br label %627

627:                                              ; preds = %623, %622
  br i1 %580, label %632, label %628

628:                                              ; preds = %627
  %629 = getelementptr inbounds %struct.Scene, ptr %592, i64 0, i32 37, i32 18
  %630 = load i32, ptr %629, align 8, !tbaa !213
  %631 = or i32 %630, 1024
  store i32 %631, ptr %629, align 8, !tbaa !213
  br label %632

632:                                              ; preds = %628, %627
  br i1 %582, label %637, label %633

633:                                              ; preds = %632
  %634 = getelementptr inbounds %struct.Scene, ptr %592, i64 0, i32 37, i32 18
  %635 = load i32, ptr %634, align 8, !tbaa !213
  %636 = or i32 %635, 2048
  store i32 %636, ptr %634, align 8, !tbaa !213
  br label %637

637:                                              ; preds = %633, %632
  br i1 %584, label %642, label %638

638:                                              ; preds = %637
  %639 = getelementptr inbounds %struct.Scene, ptr %592, i64 0, i32 37, i32 18
  %640 = load i32, ptr %639, align 8, !tbaa !213
  %641 = or i32 %640, 4096
  store i32 %641, ptr %639, align 8, !tbaa !213
  br label %642

642:                                              ; preds = %638, %637
  %643 = getelementptr inbounds %struct.Scene, ptr %592, i64 0, i32 37, i32 20
  store i16 %590, ptr %643, align 2, !tbaa !214
  %644 = getelementptr inbounds %struct.Scene, ptr %592, i64 0, i32 37, i32 18
  %645 = load i32, ptr %644, align 8, !tbaa !213
  %646 = or i32 %645, 32
  store i32 %646, ptr %644, align 8, !tbaa !213
  %647 = load ptr, ptr %592, align 8, !tbaa !42
  %648 = icmp eq ptr %647, null
  br i1 %648, label %649, label %591, !llvm.loop !215

649:                                              ; preds = %642, %558
  %650 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %651 = load ptr, ptr %650, align 8, !tbaa !42
  %652 = icmp eq ptr %651, null
  br i1 %652, label %666, label %653

653:                                              ; preds = %649, %663
  %654 = phi ptr [ %664, %663 ], [ %651, %649 ]
  %655 = getelementptr inbounds %struct.Object, ptr %654, i64 0, i32 53
  %656 = load i16, ptr %655, align 4, !tbaa !216
  %657 = and i16 %656, 8192
  %658 = icmp eq i16 %657, 0
  br i1 %658, label %663, label %659

659:                                              ; preds = %653
  %660 = getelementptr inbounds %struct.Object, ptr %654, i64 0, i32 27
  %661 = load i32, ptr %660, align 8, !tbaa !217
  %662 = or i32 %661, 64
  store i32 %662, ptr %660, align 8, !tbaa !217
  br label %663

663:                                              ; preds = %653, %659
  %664 = load ptr, ptr %654, align 8, !tbaa !42
  %665 = icmp eq ptr %664, null
  br i1 %665, label %666, label %653, !llvm.loop !218

666:                                              ; preds = %663, %649
  br i1 %551, label %678, label %667

667:                                              ; preds = %666
  %668 = icmp eq i16 %550, 250
  br i1 %668, label %669, label %872

669:                                              ; preds = %667
  %670 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %671 = load i16, ptr %670, align 2, !tbaa !151
  br label %672

672:                                              ; preds = %669, %554
  %673 = phi i16 [ %671, %669 ], [ %556, %554 ]
  %674 = icmp slt i16 %673, 4
  br i1 %674, label %675, label %872

675:                                              ; preds = %672
  %676 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %677 = load ptr, ptr %676, align 8, !tbaa !42
  br label %678

678:                                              ; preds = %675, %666
  %679 = phi ptr [ %677, %675 ], [ %560, %666 ]
  %680 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %681 = icmp eq ptr %679, null
  br i1 %681, label %691, label %682

682:                                              ; preds = %678, %688
  %683 = phi ptr [ %689, %688 ], [ %679, %678 ]
  %684 = getelementptr inbounds %struct.Scene, ptr %683, i64 0, i32 38
  %685 = load float, ptr %684, align 8, !tbaa !219
  %686 = fcmp oeq float %685, 0.000000e+00
  br i1 %686, label %687, label %688

687:                                              ; preds = %682
  store float 1.000000e+00, ptr %684, align 8, !tbaa !219
  br label %688

688:                                              ; preds = %682, %687
  %689 = load ptr, ptr %683, align 8, !tbaa !42
  %690 = icmp eq ptr %689, null
  br i1 %690, label %691, label %682, !llvm.loop !220

691:                                              ; preds = %688, %678
  %692 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %693 = load ptr, ptr %692, align 8, !tbaa !42
  %694 = icmp eq ptr %693, null
  br i1 %694, label %706, label %695

695:                                              ; preds = %691, %702
  %696 = phi ptr [ %704, %702 ], [ %693, %691 ]
  %697 = call ptr @modifiers_findByType(ptr noundef nonnull %696, i32 noundef 26) #11
  %698 = icmp eq ptr %697, null
  br i1 %698, label %702, label %699

699:                                              ; preds = %695
  %700 = getelementptr inbounds %struct.FluidsimModifierData, ptr %697, i64 0, i32 1
  %701 = load ptr, ptr %700, align 8, !tbaa !221
  store ptr %697, ptr %701, align 8, !tbaa !224
  br label %702

702:                                              ; preds = %699, %695
  %703 = getelementptr inbounds %struct.Object, ptr %696, i64 0, i32 83
  store i16 1, ptr %703, align 8, !tbaa !226
  %704 = load ptr, ptr %696, align 8, !tbaa !42
  %705 = icmp eq ptr %704, null
  br i1 %705, label %706, label %695, !llvm.loop !227

706:                                              ; preds = %702, %691
  %707 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %708 = load ptr, ptr %707, align 8, !tbaa !42
  %709 = icmp eq ptr %708, null
  br i1 %709, label %722, label %710

710:                                              ; preds = %706, %718
  %711 = phi ptr [ %720, %718 ], [ %708, %706 ]
  %712 = getelementptr inbounds %struct.Material, ptr %711, i64 0, i32 27, i32 3
  %713 = load float, ptr %712, align 4, !tbaa !228
  %714 = fcmp oeq float %713, 0.000000e+00
  br i1 %714, label %715, label %718

715:                                              ; preds = %710
  store float 1.000000e+00, ptr %712, align 4, !tbaa !228
  %716 = getelementptr inbounds %struct.Material, ptr %711, i64 0, i32 27, i32 5
  %717 = getelementptr inbounds %struct.Material, ptr %711, i64 0, i32 27, i32 6, i64 1
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %717, align 4, !tbaa !63
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %716, align 4, !tbaa !63
  br label %718

718:                                              ; preds = %715, %710
  %719 = getelementptr inbounds %struct.Material, ptr %711, i64 0, i32 102
  call fastcc void @do_version_mtex_factor_2_50(ptr noundef nonnull %719, i16 noundef signext 16717) #13
  %720 = load ptr, ptr %711, align 8, !tbaa !42
  %721 = icmp eq ptr %720, null
  br i1 %721, label %722, label %710, !llvm.loop !229

722:                                              ; preds = %718, %706
  %723 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 21
  %724 = load ptr, ptr %723, align 8, !tbaa !42
  %725 = icmp eq ptr %724, null
  br i1 %725, label %731, label %726

726:                                              ; preds = %722, %726
  %727 = phi ptr [ %729, %726 ], [ %724, %722 ]
  %728 = getelementptr inbounds %struct.Lamp, ptr %727, i64 0, i32 69
  call fastcc void @do_version_mtex_factor_2_50(ptr noundef nonnull %728, i16 noundef signext 16716) #13
  %729 = load ptr, ptr %727, align 8, !tbaa !42
  %730 = icmp eq ptr %729, null
  br i1 %730, label %731, label %726, !llvm.loop !230

731:                                              ; preds = %726, %722
  %732 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 25
  %733 = load ptr, ptr %732, align 8, !tbaa !42
  %734 = icmp eq ptr %733, null
  br i1 %734, label %740, label %735

735:                                              ; preds = %731, %735
  %736 = phi ptr [ %738, %735 ], [ %733, %731 ]
  %737 = getelementptr inbounds %struct.World, ptr %736, i64 0, i32 70
  call fastcc void @do_version_mtex_factor_2_50(ptr noundef nonnull %737, i16 noundef signext 20311) #13
  %738 = load ptr, ptr %736, align 8, !tbaa !42
  %739 = icmp eq ptr %738, null
  br i1 %739, label %740, label %735, !llvm.loop !231

740:                                              ; preds = %735, %731
  %741 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %742 = load ptr, ptr %741, align 8, !tbaa !42
  %743 = icmp eq ptr %742, null
  br i1 %743, label %744, label %747

744:                                              ; preds = %757, %740
  %745 = load ptr, ptr %680, align 8, !tbaa !42
  %746 = icmp eq ptr %745, null
  br i1 %746, label %810, label %761

747:                                              ; preds = %740, %757
  %748 = phi ptr [ %758, %757 ], [ %742, %740 ]
  %749 = getelementptr inbounds %struct.Tex, ptr %748, i64 0, i32 59
  %750 = load ptr, ptr %749, align 8, !tbaa !232
  %751 = icmp eq ptr %750, null
  br i1 %751, label %757, label %752

752:                                              ; preds = %747
  %753 = getelementptr inbounds %struct.VoxelData, ptr %750, i64 0, i32 4
  %754 = load i16, ptr %753, align 4, !tbaa !233
  %755 = icmp eq i16 %754, 0
  br i1 %755, label %756, label %757

756:                                              ; preds = %752
  store i16 2, ptr %753, align 4, !tbaa !233
  br label %757

757:                                              ; preds = %747, %756, %752
  %758 = load ptr, ptr %748, align 8, !tbaa !42
  %759 = icmp eq ptr %758, null
  br i1 %759, label %744, label %747, !llvm.loop !235

760:                                              ; preds = %768
  br i1 %746, label %810, label %777

761:                                              ; preds = %744, %768
  %762 = phi ptr [ %775, %768 ], [ %745, %744 ]
  %763 = getelementptr inbounds %struct.Scene, ptr %762, i64 0, i32 23
  %764 = getelementptr inbounds %struct.Scene, ptr %762, i64 0, i32 23, i32 1
  %765 = load float, ptr %764, align 4, !tbaa !236
  %766 = fcmp oeq float %765, 0.000000e+00
  br i1 %766, label %767, label %768

767:                                              ; preds = %761
  store float 1.000000e+00, ptr %764, align 4, !tbaa !236
  br label %768

768:                                              ; preds = %767, %761
  %769 = phi float [ 1.000000e+00, %767 ], [ %765, %761 ]
  %770 = load i32, ptr %763, align 8, !tbaa !237
  %771 = getelementptr inbounds %struct.Scene, ptr %762, i64 0, i32 22, i32 4, i32 5
  store i32 %770, ptr %771, align 4, !tbaa !238
  %772 = getelementptr inbounds %struct.Scene, ptr %762, i64 0, i32 22, i32 4, i32 8
  store float %769, ptr %772, align 8, !tbaa !239
  %773 = getelementptr inbounds %struct.Scene, ptr %762, i64 0, i32 23, i32 4
  store i32 2, ptr %773, align 8, !tbaa !240
  %774 = getelementptr inbounds %struct.Scene, ptr %762, i64 0, i32 23, i32 2
  store <2 x float> <float 0x407574CCC0000000, float 1.000000e+00>, ptr %774, align 8, !tbaa !63
  %775 = load ptr, ptr %762, align 8, !tbaa !42
  %776 = icmp eq ptr %775, null
  br i1 %776, label %760, label %761, !llvm.loop !241

777:                                              ; preds = %760, %790
  %778 = phi ptr [ %792, %790 ], [ %745, %760 ]
  %779 = phi i8 [ %791, %790 ], [ 0, %760 ]
  %780 = getelementptr inbounds %struct.Scene, ptr %778, i64 0, i32 40
  %781 = getelementptr inbounds %struct.Scene, ptr %778, i64 0, i32 40, i32 1
  %782 = load i32, ptr %781, align 4, !tbaa !242
  %783 = and i32 %782, 1
  %784 = icmp eq i32 %783, 0
  br i1 %784, label %785, label %790

785:                                              ; preds = %777
  %786 = call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %780) #13, !range !243
  %787 = icmp eq i8 %786, 0
  br i1 %787, label %790, label %788

788:                                              ; preds = %785
  store <2 x float> zeroinitializer, ptr %780, align 8, !tbaa !63
  %789 = getelementptr inbounds %struct.Scene, ptr %778, i64 0, i32 40, i32 0, i64 2
  store float 0xC0239EB860000000, ptr %789, align 8, !tbaa !63
  store i32 1, ptr %781, align 4, !tbaa !242
  br label %790

790:                                              ; preds = %777, %785, %788
  %791 = phi i8 [ 1, %788 ], [ %779, %785 ], [ %779, %777 ]
  %792 = load ptr, ptr %778, align 8, !tbaa !42
  %793 = icmp eq ptr %792, null
  br i1 %793, label %794, label %777, !llvm.loop !244

794:                                              ; preds = %790
  %795 = icmp eq i8 %791, 0
  br i1 %795, label %810, label %796

796:                                              ; preds = %794
  %797 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 37
  %798 = load ptr, ptr %797, align 8, !tbaa !42
  %799 = icmp eq ptr %798, null
  br i1 %799, label %810, label %800

800:                                              ; preds = %796, %800
  %801 = phi ptr [ %808, %800 ], [ %798, %796 ]
  %802 = getelementptr inbounds %struct.ParticleSettings, ptr %801, i64 0, i32 84, i64 2
  %803 = load float, ptr %802, align 8, !tbaa !63
  %804 = fdiv float %803, 0xC0239EB860000000
  %805 = getelementptr inbounds %struct.ParticleSettings, ptr %801, i64 0, i32 4
  %806 = load ptr, ptr %805, align 8, !tbaa !245
  %807 = getelementptr inbounds %struct.EffectorWeights, ptr %806, i64 0, i32 2
  store float %804, ptr %807, align 8, !tbaa !246
  %808 = load ptr, ptr %801, align 8, !tbaa !42
  %809 = icmp eq ptr %808, null
  br i1 %809, label %810, label %800, !llvm.loop !248

810:                                              ; preds = %800, %744, %760, %796, %794
  %811 = phi i1 [ false, %796 ], [ true, %794 ], [ true, %760 ], [ true, %744 ], [ %795, %800 ]
  %812 = load ptr, ptr %692, align 8, !tbaa !42
  %813 = icmp eq ptr %812, null
  br i1 %813, label %872, label %814

814:                                              ; preds = %810, %869
  %815 = phi ptr [ %870, %869 ], [ %812, %810 ]
  br i1 %811, label %847, label %816

816:                                              ; preds = %814
  %817 = getelementptr inbounds %struct.Object, ptr %815, i64 0, i32 26
  %818 = load ptr, ptr %817, align 8, !tbaa !42
  %819 = icmp eq ptr %818, null
  br i1 %819, label %836, label %820

820:                                              ; preds = %816, %833
  %821 = phi ptr [ %834, %833 ], [ %818, %816 ]
  %822 = call ptr @modifiers_findByType(ptr noundef nonnull %815, i32 noundef 22) #11
  %823 = icmp eq ptr %822, null
  br i1 %823, label %833, label %824

824:                                              ; preds = %820
  %825 = getelementptr inbounds %struct.ClothModifierData, ptr %822, i64 0, i32 3
  %826 = load ptr, ptr %825, align 8, !tbaa !249
  %827 = getelementptr inbounds %struct.ClothSimSettings, ptr %826, i64 0, i32 4, i64 2
  %828 = load float, ptr %827, align 4, !tbaa !63
  %829 = fdiv float %828, 0xC0239EB860000000
  %830 = getelementptr inbounds %struct.ClothSimSettings, ptr %826, i64 0, i32 41
  %831 = load ptr, ptr %830, align 8, !tbaa !251
  %832 = getelementptr inbounds %struct.EffectorWeights, ptr %831, i64 0, i32 2
  store float %829, ptr %832, align 8, !tbaa !246
  br label %833

833:                                              ; preds = %824, %820
  %834 = load ptr, ptr %821, align 8, !tbaa !42
  %835 = icmp eq ptr %834, null
  br i1 %835, label %836, label %820, !llvm.loop !253

836:                                              ; preds = %833, %816
  %837 = getelementptr inbounds %struct.Object, ptr %815, i64 0, i32 111
  %838 = load ptr, ptr %837, align 8, !tbaa !254
  %839 = icmp eq ptr %838, null
  br i1 %839, label %847, label %840

840:                                              ; preds = %836
  %841 = getelementptr inbounds %struct.SoftBody, ptr %838, i64 0, i32 9
  %842 = load float, ptr %841, align 8, !tbaa !255
  %843 = fdiv float %842, 0x40239EB860000000
  %844 = getelementptr inbounds %struct.SoftBody, ptr %838, i64 0, i32 49
  %845 = load ptr, ptr %844, align 8, !tbaa !257
  %846 = getelementptr inbounds %struct.EffectorWeights, ptr %845, i64 0, i32 2
  store float %843, ptr %846, align 8, !tbaa !246
  br label %847

847:                                              ; preds = %836, %840, %814
  %848 = getelementptr inbounds %struct.Object, ptr %815, i64 0, i32 110
  %849 = load ptr, ptr %848, align 8, !tbaa !258
  %850 = icmp eq ptr %849, null
  br i1 %850, label %869, label %851

851:                                              ; preds = %847
  %852 = getelementptr inbounds %struct.PartDeflect, ptr %849, i64 0, i32 2
  %853 = load i16, ptr %852, align 2, !tbaa !259
  %854 = icmp eq i16 %853, 4
  br i1 %854, label %855, label %857

855:                                              ; preds = %851
  %856 = getelementptr inbounds %struct.PartDeflect, ptr %849, i64 0, i32 4
  store i16 1, ptr %856, align 2, !tbaa !261
  br label %857

857:                                              ; preds = %855, %851
  %858 = load i32, ptr %849, align 8, !tbaa !262
  %859 = and i32 %858, 8
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %861, label %864

861:                                              ; preds = %857
  %862 = and i32 %858, 4096
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %867, label %864

864:                                              ; preds = %861, %857
  %865 = phi i16 [ 1, %857 ], [ 2, %861 ]
  %866 = getelementptr inbounds %struct.PartDeflect, ptr %849, i64 0, i32 4
  store i16 %865, ptr %866, align 2, !tbaa !261
  br label %867

867:                                              ; preds = %864, %861
  %868 = or i32 %858, 16384
  store i32 %868, ptr %849, align 8, !tbaa !262
  br label %869

869:                                              ; preds = %867, %847
  %870 = load ptr, ptr %815, align 8, !tbaa !42
  %871 = icmp eq ptr %870, null
  br i1 %871, label %872, label %814, !llvm.loop !263

872:                                              ; preds = %869, %810, %672, %667
  %873 = load i16, ptr %12, align 8, !tbaa !34
  %874 = icmp sgt i16 %873, 249
  br i1 %874, label %875, label %881

875:                                              ; preds = %872
  %876 = icmp eq i16 %873, 250
  br i1 %876, label %877, label %1940

877:                                              ; preds = %875
  %878 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %879 = load i16, ptr %878, align 2, !tbaa !151
  %880 = icmp slt i16 %879, 6
  br i1 %880, label %881, label %916

881:                                              ; preds = %877, %872
  %882 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %883 = load ptr, ptr %882, align 8, !tbaa !42
  %884 = icmp eq ptr %883, null
  br i1 %884, label %903, label %885

885:                                              ; preds = %881, %900
  %886 = phi ptr [ %901, %900 ], [ %883, %881 ]
  %887 = getelementptr inbounds %struct.Object, ptr %886, i64 0, i32 41
  store float 1.000000e+00, ptr %887, align 8, !tbaa !63
  %888 = getelementptr inbounds %struct.Object, ptr %886, i64 0, i32 43, i64 1
  store float 1.000000e+00, ptr %888, align 4, !tbaa !63
  %889 = getelementptr inbounds %struct.Object, ptr %886, i64 0, i32 18
  %890 = load ptr, ptr %889, align 8, !tbaa !264
  %891 = icmp eq ptr %890, null
  br i1 %891, label %900, label %892

892:                                              ; preds = %885
  %893 = load ptr, ptr %890, align 8, !tbaa !42
  %894 = icmp eq ptr %893, null
  br i1 %894, label %900, label %895

895:                                              ; preds = %892, %895
  %896 = phi ptr [ %898, %895 ], [ %893, %892 ]
  %897 = getelementptr inbounds %struct.bPoseChannel, ptr %896, i64 0, i32 24, i64 1
  store float 1.000000e+00, ptr %897, align 4, !tbaa !63
  %898 = load ptr, ptr %896, align 8, !tbaa !42
  %899 = icmp eq ptr %898, null
  br i1 %899, label %900, label %895, !llvm.loop !265

900:                                              ; preds = %895, %892, %885
  %901 = load ptr, ptr %886, align 8, !tbaa !42
  %902 = icmp eq ptr %901, null
  br i1 %902, label %903, label %885, !llvm.loop !266

903:                                              ; preds = %900, %881
  %904 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 21
  %905 = load ptr, ptr %904, align 8, !tbaa !42
  %906 = icmp eq ptr %905, null
  br i1 %906, label %912, label %907

907:                                              ; preds = %903, %907
  %908 = phi ptr [ %910, %907 ], [ %905, %903 ]
  %909 = getelementptr inbounds %struct.Lamp, ptr %908, i64 0, i32 29
  store float 0x3FA99999A0000000, ptr %909, align 4, !tbaa !267
  %910 = load ptr, ptr %908, align 8, !tbaa !42
  %911 = icmp eq ptr %910, null
  br i1 %911, label %912, label %907, !llvm.loop !269

912:                                              ; preds = %907, %903
  br i1 %874, label %913, label %919

913:                                              ; preds = %912
  %914 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %915 = load i16, ptr %914, align 2, !tbaa !151
  br label %916

916:                                              ; preds = %913, %877
  %917 = phi i16 [ %915, %913 ], [ %879, %877 ]
  %918 = icmp slt i16 %917, 7
  br i1 %918, label %919, label %1081

919:                                              ; preds = %916, %912
  %920 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %921 = load ptr, ptr %920, align 8, !tbaa !42
  %922 = icmp eq ptr %921, null
  br i1 %922, label %956, label %923

923:                                              ; preds = %919, %953
  %924 = phi ptr [ %954, %953 ], [ %921, %919 ]
  %925 = getelementptr inbounds %struct.Mesh, ptr %924, i64 0, i32 4
  %926 = load ptr, ptr %925, align 8, !tbaa !270
  %927 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %926) #11
  %928 = icmp eq ptr %927, null
  br i1 %928, label %953, label %929

929:                                              ; preds = %923
  %930 = getelementptr inbounds %struct.Key, ptr %927, i64 0, i32 2
  %931 = load ptr, ptr %930, align 8, !tbaa !271
  %932 = icmp eq ptr %931, null
  br i1 %932, label %953, label %933

933:                                              ; preds = %929
  %934 = getelementptr inbounds %struct.Mesh, ptr %924, i64 0, i32 26
  %935 = load i32, ptr %934, align 8, !tbaa !273
  %936 = getelementptr inbounds %struct.KeyBlock, ptr %931, i64 0, i32 8
  %937 = load i32, ptr %936, align 8, !tbaa !274
  %938 = call i32 @llvm.smin.i32(i32 %935, i32 %937)
  %939 = icmp sgt i32 %938, 0
  br i1 %939, label %940, label %953

940:                                              ; preds = %933
  %941 = getelementptr inbounds %struct.KeyBlock, ptr %931, i64 0, i32 10
  %942 = load ptr, ptr %941, align 8, !tbaa !276
  %943 = getelementptr inbounds %struct.Mesh, ptr %924, i64 0, i32 15
  %944 = zext nneg i32 %938 to i64
  br label %945

945:                                              ; preds = %940, %945
  %946 = phi i64 [ 0, %940 ], [ %950, %945 ]
  %947 = phi ptr [ %942, %940 ], [ %951, %945 ]
  %948 = load ptr, ptr %943, align 8, !tbaa !277
  %949 = getelementptr inbounds %struct.MVert, ptr %948, i64 %946
  call fastcc void @copy_v3_v3(ptr noundef %949, ptr noundef %947) #13
  %950 = add nuw nsw i64 %946, 1
  %951 = getelementptr inbounds float, ptr %947, i64 3
  %952 = icmp eq i64 %950, %944
  br i1 %952, label %953, label %945, !llvm.loop !278

953:                                              ; preds = %945, %933, %923, %929
  %954 = load ptr, ptr %924, align 8, !tbaa !42
  %955 = icmp eq ptr %954, null
  br i1 %955, label %956, label %923, !llvm.loop !279

956:                                              ; preds = %953, %919
  %957 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 20
  %958 = load ptr, ptr %957, align 8, !tbaa !42
  %959 = icmp eq ptr %958, null
  br i1 %959, label %1002, label %960

960:                                              ; preds = %956, %999
  %961 = phi ptr [ %1000, %999 ], [ %958, %956 ]
  %962 = getelementptr inbounds %struct.Lattice, ptr %961, i64 0, i32 23
  %963 = load ptr, ptr %962, align 8, !tbaa !280
  %964 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %963) #11
  %965 = icmp eq ptr %964, null
  br i1 %965, label %999, label %966

966:                                              ; preds = %960
  %967 = getelementptr inbounds %struct.Key, ptr %964, i64 0, i32 2
  %968 = load ptr, ptr %967, align 8, !tbaa !271
  %969 = icmp eq ptr %968, null
  br i1 %969, label %999, label %970

970:                                              ; preds = %966
  %971 = getelementptr inbounds %struct.Lattice, ptr %961, i64 0, i32 2
  %972 = load i16, ptr %971, align 8, !tbaa !282
  %973 = sext i16 %972 to i32
  %974 = getelementptr inbounds %struct.Lattice, ptr %961, i64 0, i32 3
  %975 = load i16, ptr %974, align 2, !tbaa !283
  %976 = sext i16 %975 to i32
  %977 = mul nsw i32 %976, %973
  %978 = getelementptr inbounds %struct.Lattice, ptr %961, i64 0, i32 4
  %979 = load i16, ptr %978, align 4, !tbaa !284
  %980 = sext i16 %979 to i32
  %981 = mul nsw i32 %977, %980
  %982 = getelementptr inbounds %struct.KeyBlock, ptr %968, i64 0, i32 8
  %983 = load i32, ptr %982, align 8, !tbaa !274
  %984 = call i32 @llvm.smin.i32(i32 %981, i32 %983)
  %985 = icmp sgt i32 %984, 0
  br i1 %985, label %986, label %999

986:                                              ; preds = %970
  %987 = getelementptr inbounds %struct.KeyBlock, ptr %968, i64 0, i32 10
  %988 = load ptr, ptr %987, align 8, !tbaa !276
  %989 = getelementptr inbounds %struct.Lattice, ptr %961, i64 0, i32 21
  %990 = zext nneg i32 %984 to i64
  br label %991

991:                                              ; preds = %986, %991
  %992 = phi i64 [ 0, %986 ], [ %996, %991 ]
  %993 = phi ptr [ %988, %986 ], [ %997, %991 ]
  %994 = load ptr, ptr %989, align 8, !tbaa !285
  %995 = getelementptr inbounds %struct.BPoint, ptr %994, i64 %992
  call fastcc void @copy_v3_v3(ptr noundef %995, ptr noundef %993) #13
  %996 = add nuw nsw i64 %992, 1
  %997 = getelementptr inbounds float, ptr %993, i64 3
  %998 = icmp eq i64 %996, %990
  br i1 %998, label %999, label %991, !llvm.loop !286

999:                                              ; preds = %991, %970, %960, %966
  %1000 = load ptr, ptr %961, align 8, !tbaa !42
  %1001 = icmp eq ptr %1000, null
  br i1 %1001, label %1002, label %960, !llvm.loop !287

1002:                                             ; preds = %999, %956
  %1003 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 15
  %1004 = load ptr, ptr %1003, align 8, !tbaa !42
  %1005 = icmp eq ptr %1004, null
  br i1 %1005, label %1081, label %1006

1006:                                             ; preds = %1002, %1078
  %1007 = phi ptr [ %1079, %1078 ], [ %1004, %1002 ]
  %1008 = getelementptr inbounds %struct.Curve, ptr %1007, i64 0, i32 9
  %1009 = load ptr, ptr %1008, align 8, !tbaa !288
  %1010 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %1009) #11
  %1011 = icmp eq ptr %1010, null
  br i1 %1011, label %1078, label %1012

1012:                                             ; preds = %1006
  %1013 = getelementptr inbounds %struct.Key, ptr %1010, i64 0, i32 2
  %1014 = load ptr, ptr %1013, align 8, !tbaa !271
  %1015 = icmp eq ptr %1014, null
  br i1 %1015, label %1078, label %1016

1016:                                             ; preds = %1012
  %1017 = getelementptr inbounds %struct.Curve, ptr %1007, i64 0, i32 3
  %1018 = load ptr, ptr %1017, align 8, !tbaa !42
  %1019 = icmp eq ptr %1018, null
  br i1 %1019, label %1078, label %1020

1020:                                             ; preds = %1016
  %1021 = getelementptr inbounds %struct.KeyBlock, ptr %1014, i64 0, i32 10
  %1022 = load ptr, ptr %1021, align 8, !tbaa !276
  br label %1023

1023:                                             ; preds = %1020, %1074
  %1024 = phi ptr [ %1076, %1074 ], [ %1018, %1020 ]
  %1025 = phi ptr [ %1075, %1074 ], [ %1022, %1020 ]
  %1026 = getelementptr inbounds %struct.Nurb, ptr %1024, i64 0, i32 18
  %1027 = load ptr, ptr %1026, align 8, !tbaa !291
  %1028 = icmp eq ptr %1027, null
  br i1 %1028, label %1049, label %1029

1029:                                             ; preds = %1023
  %1030 = getelementptr inbounds %struct.Nurb, ptr %1024, i64 0, i32 6
  %1031 = load i32, ptr %1030, align 8, !tbaa !292
  %1032 = icmp sgt i32 %1031, 0
  br i1 %1032, label %1033, label %1074

1033:                                             ; preds = %1029, %1033
  %1034 = phi ptr [ %1044, %1033 ], [ %1025, %1029 ]
  %1035 = phi i32 [ %1045, %1033 ], [ 0, %1029 ]
  %1036 = phi ptr [ %1046, %1033 ], [ %1027, %1029 ]
  call fastcc void @copy_v3_v3(ptr noundef nonnull %1036, ptr noundef %1034) #13
  %1037 = getelementptr inbounds float, ptr %1034, i64 3
  %1038 = getelementptr inbounds [3 x [3 x float]], ptr %1036, i64 0, i64 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %1038, ptr noundef nonnull %1037) #13
  %1039 = getelementptr inbounds float, ptr %1034, i64 6
  %1040 = getelementptr inbounds [3 x [3 x float]], ptr %1036, i64 0, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %1040, ptr noundef nonnull %1039) #13
  %1041 = getelementptr inbounds float, ptr %1034, i64 9
  %1042 = load float, ptr %1041, align 4, !tbaa !63
  %1043 = getelementptr inbounds %struct.BezTriple, ptr %1036, i64 0, i32 1
  store float %1042, ptr %1043, align 4, !tbaa !293
  %1044 = getelementptr inbounds float, ptr %1034, i64 10
  %1045 = add nuw nsw i32 %1035, 1
  %1046 = getelementptr inbounds %struct.BezTriple, ptr %1036, i64 1
  %1047 = load i32, ptr %1030, align 8, !tbaa !292
  %1048 = icmp slt i32 %1045, %1047
  br i1 %1048, label %1033, label %1074, !llvm.loop !295

1049:                                             ; preds = %1023
  %1050 = getelementptr inbounds %struct.Nurb, ptr %1024, i64 0, i32 17
  %1051 = load ptr, ptr %1050, align 8, !tbaa !296
  %1052 = icmp eq ptr %1051, null
  br i1 %1052, label %1074, label %1053

1053:                                             ; preds = %1049
  %1054 = getelementptr inbounds %struct.Nurb, ptr %1024, i64 0, i32 6
  %1055 = getelementptr inbounds %struct.Nurb, ptr %1024, i64 0, i32 7
  %1056 = load i32, ptr %1054, align 8, !tbaa !292
  %1057 = load i32, ptr %1055, align 4, !tbaa !297
  %1058 = mul nsw i32 %1057, %1056
  %1059 = icmp sgt i32 %1058, 0
  br i1 %1059, label %1060, label %1074

1060:                                             ; preds = %1053, %1060
  %1061 = phi ptr [ %1067, %1060 ], [ %1025, %1053 ]
  %1062 = phi i32 [ %1068, %1060 ], [ 0, %1053 ]
  %1063 = phi ptr [ %1069, %1060 ], [ %1051, %1053 ]
  call fastcc void @copy_v3_v3(ptr noundef nonnull %1063, ptr noundef %1061) #13
  %1064 = getelementptr inbounds float, ptr %1061, i64 3
  %1065 = load float, ptr %1064, align 4, !tbaa !63
  %1066 = getelementptr inbounds %struct.BPoint, ptr %1063, i64 0, i32 1
  store float %1065, ptr %1066, align 4, !tbaa !298
  %1067 = getelementptr inbounds float, ptr %1061, i64 4
  %1068 = add nuw nsw i32 %1062, 1
  %1069 = getelementptr inbounds %struct.BPoint, ptr %1063, i64 1
  %1070 = load i32, ptr %1054, align 8, !tbaa !292
  %1071 = load i32, ptr %1055, align 4, !tbaa !297
  %1072 = mul nsw i32 %1071, %1070
  %1073 = icmp slt i32 %1068, %1072
  br i1 %1073, label %1060, label %1074, !llvm.loop !300

1074:                                             ; preds = %1033, %1060, %1029, %1053, %1049
  %1075 = phi ptr [ %1025, %1049 ], [ %1025, %1053 ], [ %1025, %1029 ], [ %1067, %1060 ], [ %1044, %1033 ]
  %1076 = load ptr, ptr %1024, align 8, !tbaa !42
  %1077 = icmp eq ptr %1076, null
  br i1 %1077, label %1078, label %1023, !llvm.loop !301

1078:                                             ; preds = %1074, %1016, %1006, %1012
  %1079 = load ptr, ptr %1007, align 8, !tbaa !42
  %1080 = icmp eq ptr %1079, null
  br i1 %1080, label %1081, label %1006, !llvm.loop !302

1081:                                             ; preds = %1078, %1002, %916
  %1082 = load i16, ptr %12, align 8, !tbaa !34
  %1083 = icmp slt i16 %1082, 250
  br i1 %1083, label %1090, label %1084

1084:                                             ; preds = %1081
  %1085 = icmp eq i16 %1082, 250
  br i1 %1085, label %1086, label %1648

1086:                                             ; preds = %1084
  %1087 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1088 = load i16, ptr %1087, align 2, !tbaa !151
  %1089 = icmp slt i16 %1088, 8
  br i1 %1089, label %1090, label %1278

1090:                                             ; preds = %1086, %1081
  %1091 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1092 = load ptr, ptr %1091, align 8, !tbaa !42
  %1093 = icmp eq ptr %1092, null
  br i1 %1093, label %1119, label %1094

1094:                                             ; preds = %1090, %1116
  %1095 = phi ptr [ %1117, %1116 ], [ %1092, %1090 ]
  %1096 = getelementptr inbounds %struct.Scene, ptr %1095, i64 0, i32 22, i32 26
  %1097 = load i32, ptr %1096, align 4, !tbaa !303
  %1098 = icmp eq i32 %1097, 0
  br i1 %1098, label %1099, label %1100

1099:                                             ; preds = %1094
  store i32 1, ptr %1096, align 4, !tbaa !303
  br label %1100

1100:                                             ; preds = %1099, %1094
  %1101 = getelementptr inbounds %struct.Scene, ptr %1095, i64 0, i32 22, i32 62
  %1102 = load i16, ptr %1101, align 2, !tbaa !304
  %1103 = icmp eq i16 %1102, 0
  br i1 %1103, label %1104, label %1107

1104:                                             ; preds = %1100
  %1105 = getelementptr inbounds %struct.Scene, ptr %1095, i64 0, i32 22, i32 54
  %1106 = load i16, ptr %1105, align 2, !tbaa !305
  store i16 %1106, ptr %1101, align 2, !tbaa !304
  br label %1107

1107:                                             ; preds = %1104, %1100
  %1108 = getelementptr inbounds %struct.Scene, ptr %1095, i64 0, i32 19
  %1109 = load ptr, ptr %1108, align 8, !tbaa !69
  %1110 = icmp eq ptr %1109, null
  br i1 %1110, label %1116, label %1111

1111:                                             ; preds = %1107
  %1112 = getelementptr inbounds %struct.Editing, ptr %1109, i64 0, i32 1
  %1113 = load ptr, ptr %1112, align 8, !tbaa !306
  %1114 = icmp eq ptr %1113, null
  br i1 %1114, label %1116, label %1115

1115:                                             ; preds = %1111
  call fastcc void @do_versions_seq_unique_name_all_strips(ptr noundef nonnull %1095, ptr noundef nonnull %1112) #13
  br label %1116

1116:                                             ; preds = %1115, %1111, %1107
  %1117 = load ptr, ptr %1095, align 8, !tbaa !42
  %1118 = icmp eq ptr %1117, null
  br i1 %1118, label %1119, label %1094, !llvm.loop !307

1119:                                             ; preds = %1116, %1090
  %1120 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 35
  %1121 = load ptr, ptr %1120, align 8, !tbaa !42
  %1122 = icmp eq ptr %1121, null
  br i1 %1122, label %1135, label %1126

1123:                                             ; preds = %1131, %1126
  %1124 = load ptr, ptr %1127, align 8, !tbaa !42
  %1125 = icmp eq ptr %1124, null
  br i1 %1125, label %1135, label %1126, !llvm.loop !308

1126:                                             ; preds = %1119, %1123
  %1127 = phi ptr [ %1124, %1123 ], [ %1121, %1119 ]
  %1128 = getelementptr inbounds %struct.bNodeTree, ptr %1127, i64 0, i32 7
  %1129 = load ptr, ptr %1128, align 8, !tbaa !42
  %1130 = icmp eq ptr %1129, null
  br i1 %1130, label %1123, label %1131

1131:                                             ; preds = %1126, %1131
  %1132 = phi ptr [ %1133, %1131 ], [ %1129, %1126 ]
  call void @nodeUniqueName(ptr noundef nonnull %1127, ptr noundef nonnull %1132) #11
  %1133 = load ptr, ptr %1132, align 8, !tbaa !42
  %1134 = icmp eq ptr %1133, null
  br i1 %1134, label %1123, label %1131, !llvm.loop !309

1135:                                             ; preds = %1123, %1119
  %1136 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %1137 = load ptr, ptr %1136, align 8, !tbaa !42
  %1138 = icmp eq ptr %1137, null
  br i1 %1138, label %1148, label %1139

1139:                                             ; preds = %1135, %1145
  %1140 = phi ptr [ %1146, %1145 ], [ %1137, %1135 ]
  %1141 = getelementptr inbounds %struct.Object, ptr %1140, i64 0, i32 87
  %1142 = load i8, ptr %1141, align 2, !tbaa !310
  %1143 = icmp eq i8 %1142, 4
  br i1 %1143, label %1144, label %1145

1144:                                             ; preds = %1139
  store i8 5, ptr %1141, align 2, !tbaa !310
  br label %1145

1145:                                             ; preds = %1144, %1139
  %1146 = load ptr, ptr %1140, align 8, !tbaa !42
  %1147 = icmp eq ptr %1146, null
  br i1 %1147, label %1148, label %1139, !llvm.loop !311

1148:                                             ; preds = %1145, %1135
  %1149 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %1150 = load ptr, ptr %1149, align 8, !tbaa !42
  %1151 = icmp eq ptr %1150, null
  br i1 %1151, label %1181, label %1155

1152:                                             ; preds = %1160, %1155
  %1153 = load ptr, ptr %1156, align 8, !tbaa !42
  %1154 = icmp eq ptr %1153, null
  br i1 %1154, label %1181, label %1155, !llvm.loop !312

1155:                                             ; preds = %1148, %1152
  %1156 = phi ptr [ %1153, %1152 ], [ %1150, %1148 ]
  %1157 = getelementptr inbounds %struct.bScreen, ptr %1156, i64 0, i32 3
  %1158 = load ptr, ptr %1157, align 8, !tbaa !42
  %1159 = icmp eq ptr %1158, null
  br i1 %1159, label %1152, label %1163

1160:                                             ; preds = %1178, %1163
  %1161 = load ptr, ptr %1164, align 8, !tbaa !42
  %1162 = icmp eq ptr %1161, null
  br i1 %1162, label %1152, label %1163, !llvm.loop !313

1163:                                             ; preds = %1155, %1160
  %1164 = phi ptr [ %1161, %1160 ], [ %1158, %1155 ]
  %1165 = getelementptr inbounds %struct.ScrArea, ptr %1164, i64 0, i32 19
  %1166 = load ptr, ptr %1165, align 8, !tbaa !42
  %1167 = icmp eq ptr %1166, null
  br i1 %1167, label %1160, label %1168

1168:                                             ; preds = %1163, %1178
  %1169 = phi ptr [ %1179, %1178 ], [ %1166, %1163 ]
  %1170 = getelementptr inbounds %struct.SpaceLink, ptr %1169, i64 0, i32 3
  %1171 = load i32, ptr %1170, align 8, !tbaa !314
  %1172 = icmp eq i32 %1171, 1
  br i1 %1172, label %1173, label %1178

1173:                                             ; preds = %1168
  %1174 = getelementptr inbounds %struct.View3D, ptr %1169, i64 0, i32 24
  %1175 = load i16, ptr %1174, align 8, !tbaa !316
  %1176 = icmp eq i16 %1175, 4
  br i1 %1176, label %1177, label %1178

1177:                                             ; preds = %1173
  store i16 3, ptr %1174, align 8, !tbaa !316
  br label %1178

1178:                                             ; preds = %1173, %1177, %1168
  %1179 = load ptr, ptr %1169, align 8, !tbaa !42
  %1180 = icmp eq ptr %1179, null
  br i1 %1180, label %1160, label %1168, !llvm.loop !318

1181:                                             ; preds = %1152, %1148
  %1182 = load i16, ptr %12, align 8, !tbaa !34
  %1183 = icmp eq i16 %1182, 250
  br i1 %1183, label %1184, label %1280

1184:                                             ; preds = %1181
  %1185 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %1186 = load ptr, ptr %1185, align 8, !tbaa !319
  %1187 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 25
  %1188 = load ptr, ptr %1187, align 8, !tbaa !320
  %1189 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %1190 = load ptr, ptr %1189, align 8, !tbaa !321
  %1191 = load ptr, ptr %1091, align 8, !tbaa !42
  %1192 = icmp eq ptr %1191, null
  br i1 %1192, label %1278, label %1193

1193:                                             ; preds = %1184, %1193
  %1194 = phi ptr [ %1201, %1193 ], [ %1191, %1184 ]
  %1195 = phi i32 [ %1200, %1193 ], [ 0, %1184 ]
  %1196 = getelementptr inbounds %struct.Scene, ptr %1194, i64 0, i32 22, i32 67
  %1197 = load i32, ptr %1196, align 4, !tbaa !322
  %1198 = and i32 %1197, 1
  %1199 = icmp eq i32 %1198, 0
  %1200 = select i1 %1199, i32 %1195, i32 1
  %1201 = load ptr, ptr %1194, align 8, !tbaa !42
  %1202 = icmp eq ptr %1201, null
  br i1 %1202, label %1203, label %1193, !llvm.loop !323

1203:                                             ; preds = %1193
  %1204 = icmp eq i32 %1200, 0
  br i1 %1204, label %1278, label %1205

1205:                                             ; preds = %1203
  %1206 = icmp eq ptr %1186, null
  br i1 %1206, label %1207, label %1209

1207:                                             ; preds = %1242, %1205
  %1208 = icmp eq ptr %1190, null
  br i1 %1208, label %1249, label %1251

1209:                                             ; preds = %1205, %1242
  %1210 = phi ptr [ %1247, %1242 ], [ %1186, %1205 ]
  %1211 = getelementptr inbounds %struct.Material, ptr %1210, i64 0, i32 92
  %1212 = load ptr, ptr %1211, align 8, !tbaa !324
  %1213 = icmp eq ptr %1212, null
  br i1 %1213, label %1226, label %1214

1214:                                             ; preds = %1209
  %1215 = load i16, ptr %1212, align 4, !tbaa !325
  %1216 = icmp sgt i16 %1215, 0
  br i1 %1216, label %1217, label %1226

1217:                                             ; preds = %1214
  %1218 = getelementptr inbounds %struct.ColorBand, ptr %1212, i64 0, i32 6
  br label %1219

1219:                                             ; preds = %1217, %1219
  %1220 = phi i64 [ 0, %1217 ], [ %1222, %1219 ]
  %1221 = getelementptr inbounds %struct.CBData, ptr %1218, i64 %1220
  call fastcc void @srgb_to_linearrgb_v3_v3(ptr noundef nonnull %1221, ptr noundef nonnull %1221) #13
  %1222 = add nuw nsw i64 %1220, 1
  %1223 = load i16, ptr %1212, align 4, !tbaa !325
  %1224 = sext i16 %1223 to i64
  %1225 = icmp slt i64 %1222, %1224
  br i1 %1225, label %1219, label %1226, !llvm.loop !326

1226:                                             ; preds = %1219, %1214, %1209
  %1227 = getelementptr inbounds %struct.Material, ptr %1210, i64 0, i32 93
  %1228 = load ptr, ptr %1227, align 8, !tbaa !327
  %1229 = icmp eq ptr %1228, null
  br i1 %1229, label %1242, label %1230

1230:                                             ; preds = %1226
  %1231 = load i16, ptr %1228, align 4, !tbaa !325
  %1232 = icmp sgt i16 %1231, 0
  br i1 %1232, label %1233, label %1242

1233:                                             ; preds = %1230
  %1234 = getelementptr inbounds %struct.ColorBand, ptr %1228, i64 0, i32 6
  br label %1235

1235:                                             ; preds = %1233, %1235
  %1236 = phi i64 [ 0, %1233 ], [ %1238, %1235 ]
  %1237 = getelementptr inbounds %struct.CBData, ptr %1234, i64 %1236
  call fastcc void @srgb_to_linearrgb_v3_v3(ptr noundef nonnull %1237, ptr noundef nonnull %1237) #13
  %1238 = add nuw nsw i64 %1236, 1
  %1239 = load i16, ptr %1228, align 4, !tbaa !325
  %1240 = sext i16 %1239 to i64
  %1241 = icmp slt i64 %1238, %1240
  br i1 %1241, label %1235, label %1242, !llvm.loop !328

1242:                                             ; preds = %1235, %1230, %1226
  %1243 = getelementptr inbounds %struct.Material, ptr %1210, i64 0, i32 4
  call fastcc void @srgb_to_linearrgb_v3_v3(ptr noundef nonnull %1243, ptr noundef nonnull %1243) #13
  %1244 = getelementptr inbounds %struct.Material, ptr %1210, i64 0, i32 7
  call fastcc void @srgb_to_linearrgb_v3_v3(ptr noundef nonnull %1244, ptr noundef nonnull %1244) #13
  %1245 = getelementptr inbounds %struct.Material, ptr %1210, i64 0, i32 10
  call fastcc void @srgb_to_linearrgb_v3_v3(ptr noundef nonnull %1245, ptr noundef nonnull %1245) #13
  %1246 = getelementptr inbounds %struct.Material, ptr %1210, i64 0, i32 115
  call fastcc void @srgb_to_linearrgb_v3_v3(ptr noundef nonnull %1246, ptr noundef nonnull %1246) #13
  %1247 = load ptr, ptr %1210, align 8, !tbaa !329
  %1248 = icmp eq ptr %1247, null
  br i1 %1248, label %1207, label %1209, !llvm.loop !330

1249:                                             ; preds = %1268, %1207
  %1250 = icmp eq ptr %1188, null
  br i1 %1250, label %1278, label %1271

1251:                                             ; preds = %1207, %1268
  %1252 = phi ptr [ %1269, %1268 ], [ %1190, %1207 ]
  %1253 = getelementptr inbounds %struct.Tex, ptr %1252, i64 0, i32 55
  %1254 = load ptr, ptr %1253, align 8, !tbaa !331
  %1255 = icmp eq ptr %1254, null
  br i1 %1255, label %1268, label %1256

1256:                                             ; preds = %1251
  %1257 = load i16, ptr %1254, align 4, !tbaa !325
  %1258 = icmp sgt i16 %1257, 0
  br i1 %1258, label %1259, label %1268

1259:                                             ; preds = %1256
  %1260 = getelementptr inbounds %struct.ColorBand, ptr %1254, i64 0, i32 6
  br label %1261

1261:                                             ; preds = %1259, %1261
  %1262 = phi i64 [ 0, %1259 ], [ %1264, %1261 ]
  %1263 = getelementptr inbounds %struct.CBData, ptr %1260, i64 %1262
  call fastcc void @srgb_to_linearrgb_v3_v3(ptr noundef nonnull %1263, ptr noundef nonnull %1263) #13
  %1264 = add nuw nsw i64 %1262, 1
  %1265 = load i16, ptr %1254, align 4, !tbaa !325
  %1266 = sext i16 %1265 to i64
  %1267 = icmp slt i64 %1264, %1266
  br i1 %1267, label %1261, label %1268, !llvm.loop !332

1268:                                             ; preds = %1261, %1256, %1251
  %1269 = load ptr, ptr %1252, align 8, !tbaa !333
  %1270 = icmp eq ptr %1269, null
  br i1 %1270, label %1249, label %1251, !llvm.loop !334

1271:                                             ; preds = %1249, %1271
  %1272 = phi ptr [ %1276, %1271 ], [ %1188, %1249 ]
  %1273 = getelementptr inbounds %struct.World, ptr %1272, i64 0, i32 12
  call fastcc void @srgb_to_linearrgb_v3_v3(ptr noundef nonnull %1273, ptr noundef nonnull %1273) #13
  %1274 = getelementptr inbounds %struct.World, ptr %1272, i64 0, i32 6
  call fastcc void @srgb_to_linearrgb_v3_v3(ptr noundef nonnull %1274, ptr noundef nonnull %1274) #13
  %1275 = getelementptr inbounds %struct.World, ptr %1272, i64 0, i32 9
  call fastcc void @srgb_to_linearrgb_v3_v3(ptr noundef nonnull %1275, ptr noundef nonnull %1275) #13
  %1276 = load ptr, ptr %1272, align 8, !tbaa !335
  %1277 = icmp eq ptr %1276, null
  br i1 %1277, label %1278, label %1271, !llvm.loop !337

1278:                                             ; preds = %1271, %1184, %1249, %1086, %1203
  %1279 = load i16, ptr %12, align 8, !tbaa !34
  br label %1280

1280:                                             ; preds = %1278, %1181
  %1281 = phi i16 [ %1279, %1278 ], [ %1182, %1181 ]
  %1282 = icmp sgt i16 %1281, 249
  br i1 %1282, label %1283, label %1289

1283:                                             ; preds = %1280
  %1284 = icmp eq i16 %1281, 250
  br i1 %1284, label %1285, label %1337

1285:                                             ; preds = %1283
  %1286 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1287 = load i16, ptr %1286, align 2, !tbaa !151
  %1288 = icmp slt i16 %1287, 9
  br i1 %1288, label %1289, label %1337

1289:                                             ; preds = %1285, %1280
  %1290 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1291 = load ptr, ptr %1290, align 8, !tbaa !42
  %1292 = icmp eq ptr %1291, null
  br i1 %1292, label %1304, label %1293

1293:                                             ; preds = %1289, %1301
  %1294 = phi ptr [ %1302, %1301 ], [ %1291, %1289 ]
  %1295 = getelementptr inbounds %struct.Scene, ptr %1294, i64 0, i32 20
  %1296 = load ptr, ptr %1295, align 8, !tbaa !176
  %1297 = getelementptr inbounds %struct.ToolSettings, ptr %1296, i64 0, i32 18, i32 8
  %1298 = load i32, ptr %1297, align 8, !tbaa !338
  %1299 = icmp eq i32 %1298, 0
  br i1 %1299, label %1300, label %1301

1300:                                             ; preds = %1293
  store i32 1, ptr %1297, align 8, !tbaa !338
  br label %1301

1301:                                             ; preds = %1293, %1300
  %1302 = load ptr, ptr %1294, align 8, !tbaa !42
  %1303 = icmp eq ptr %1302, null
  br i1 %1303, label %1304, label %1293, !llvm.loop !339

1304:                                             ; preds = %1301, %1289
  br i1 %1282, label %1305, label %1337

1305:                                             ; preds = %1304
  %1306 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1307 = load i16, ptr %1306, align 2, !tbaa !151
  %1308 = icmp sgt i16 %1307, 1
  br i1 %1308, label %1309, label %1337

1309:                                             ; preds = %1305
  %1310 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %1311 = load ptr, ptr %1310, align 8, !tbaa !42
  %1312 = icmp eq ptr %1311, null
  br i1 %1312, label %1317, label %1313

1313:                                             ; preds = %1309, %1313
  %1314 = phi ptr [ %1315, %1313 ], [ %1311, %1309 ]
  call void @multires_load_old_250(ptr noundef nonnull %1314) #11
  %1315 = load ptr, ptr %1314, align 8, !tbaa !42
  %1316 = icmp eq ptr %1315, null
  br i1 %1316, label %1317, label %1313, !llvm.loop !340

1317:                                             ; preds = %1313, %1309
  %1318 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %1319 = load ptr, ptr %1318, align 8, !tbaa !42
  %1320 = icmp eq ptr %1319, null
  br i1 %1320, label %1337, label %1321

1321:                                             ; preds = %1317, %1334
  %1322 = phi ptr [ %1335, %1334 ], [ %1319, %1317 ]
  %1323 = call ptr @modifiers_findByType(ptr noundef nonnull %1322, i32 noundef 29) #11
  %1324 = icmp eq ptr %1323, null
  br i1 %1324, label %1334, label %1325

1325:                                             ; preds = %1321
  %1326 = getelementptr inbounds %struct.MultiresModifierData, ptr %1323, i64 0, i32 4
  %1327 = load i8, ptr %1326, align 1, !tbaa !341
  %1328 = add i8 %1327, -1
  store i8 %1328, ptr %1326, align 1, !tbaa !341
  %1329 = getelementptr inbounds %struct.MultiresModifierData, ptr %1323, i64 0, i32 1
  %1330 = load i8, ptr %1329, align 8, !tbaa !343
  %1331 = add i8 %1330, -1
  store i8 %1331, ptr %1329, align 8, !tbaa !343
  %1332 = getelementptr inbounds %struct.MultiresModifierData, ptr %1323, i64 0, i32 2
  store i8 %1331, ptr %1332, align 1, !tbaa !344
  %1333 = getelementptr inbounds %struct.MultiresModifierData, ptr %1323, i64 0, i32 3
  store i8 %1331, ptr %1333, align 2, !tbaa !345
  br label %1334

1334:                                             ; preds = %1325, %1321
  %1335 = load ptr, ptr %1322, align 8, !tbaa !42
  %1336 = icmp eq ptr %1335, null
  br i1 %1336, label %1337, label %1321, !llvm.loop !346

1337:                                             ; preds = %1334, %1317, %1304, %1305, %1285, %1283
  %1338 = load i16, ptr %12, align 8, !tbaa !34
  %1339 = icmp sgt i16 %1338, 249
  br i1 %1339, label %1340, label %1346

1340:                                             ; preds = %1337
  %1341 = icmp eq i16 %1338, 250
  br i1 %1341, label %1342, label %1940

1342:                                             ; preds = %1340
  %1343 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1344 = load i16, ptr %1343, align 2, !tbaa !151
  %1345 = icmp slt i16 %1344, 10
  br i1 %1345, label %1346, label %1377

1346:                                             ; preds = %1342, %1337
  %1347 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %1348 = load ptr, ptr %1347, align 8, !tbaa !42
  %1349 = icmp eq ptr %1348, null
  br i1 %1349, label %1373, label %1353

1350:                                             ; preds = %1370, %1353
  %1351 = load ptr, ptr %1354, align 8, !tbaa !42
  %1352 = icmp eq ptr %1351, null
  br i1 %1352, label %1373, label %1353, !llvm.loop !347

1353:                                             ; preds = %1346, %1350
  %1354 = phi ptr [ %1351, %1350 ], [ %1348, %1346 ]
  %1355 = getelementptr inbounds %struct.Object, ptr %1354, i64 0, i32 26
  %1356 = load ptr, ptr %1355, align 8, !tbaa !42
  %1357 = icmp eq ptr %1356, null
  br i1 %1357, label %1350, label %1358

1358:                                             ; preds = %1353, %1370
  %1359 = phi ptr [ %1371, %1370 ], [ %1356, %1353 ]
  %1360 = getelementptr inbounds %struct.ModifierData, ptr %1359, i64 0, i32 2
  %1361 = load i32, ptr %1360, align 8, !tbaa !348
  %1362 = icmp eq i32 %1361, 22
  br i1 %1362, label %1363, label %1370

1363:                                             ; preds = %1358
  %1364 = getelementptr inbounds %struct.ClothModifierData, ptr %1359, i64 0, i32 3
  %1365 = load ptr, ptr %1364, align 8, !tbaa !249
  %1366 = getelementptr inbounds %struct.ClothSimSettings, ptr %1365, i64 0, i32 23
  %1367 = load float, ptr %1366, align 8, !tbaa !349
  %1368 = fcmp olt float %1367, 0x3F847AE140000000
  br i1 %1368, label %1369, label %1370

1369:                                             ; preds = %1363
  store float 0.000000e+00, ptr %1366, align 8, !tbaa !349
  br label %1370

1370:                                             ; preds = %1363, %1369, %1358
  %1371 = load ptr, ptr %1359, align 8, !tbaa !42
  %1372 = icmp eq ptr %1371, null
  br i1 %1372, label %1350, label %1358, !llvm.loop !350

1373:                                             ; preds = %1350, %1346
  br i1 %1339, label %1374, label %1435

1374:                                             ; preds = %1373
  %1375 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1376 = load i16, ptr %1375, align 2, !tbaa !151
  br label %1377

1377:                                             ; preds = %1374, %1342
  %1378 = phi i16 [ %1376, %1374 ], [ %1344, %1342 ]
  %1379 = icmp eq i16 %1378, 10
  br i1 %1379, label %1380, label %1428

1380:                                             ; preds = %1377
  %1381 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %1382 = load ptr, ptr %1381, align 8, !tbaa !42
  %1383 = icmp eq ptr %1382, null
  br i1 %1383, label %1428, label %1387

1384:                                             ; preds = %1392, %1387
  %1385 = load ptr, ptr %1388, align 8, !tbaa !42
  %1386 = icmp eq ptr %1385, null
  br i1 %1386, label %1425, label %1387, !llvm.loop !351

1387:                                             ; preds = %1380, %1384
  %1388 = phi ptr [ %1385, %1384 ], [ %1382, %1380 ]
  %1389 = getelementptr inbounds %struct.bScreen, ptr %1388, i64 0, i32 3
  %1390 = load ptr, ptr %1389, align 8, !tbaa !42
  %1391 = icmp eq ptr %1390, null
  br i1 %1391, label %1384, label %1395

1392:                                             ; preds = %1422, %1395
  %1393 = load ptr, ptr %1396, align 8, !tbaa !42
  %1394 = icmp eq ptr %1393, null
  br i1 %1394, label %1384, label %1395, !llvm.loop !352

1395:                                             ; preds = %1387, %1392
  %1396 = phi ptr [ %1393, %1392 ], [ %1390, %1387 ]
  %1397 = getelementptr inbounds %struct.ScrArea, ptr %1396, i64 0, i32 19
  %1398 = load ptr, ptr %1397, align 8, !tbaa !42
  %1399 = icmp eq ptr %1398, null
  br i1 %1399, label %1392, label %1400

1400:                                             ; preds = %1395
  %1401 = getelementptr inbounds %struct.ScrArea, ptr %1396, i64 0, i32 20
  br label %1402

1402:                                             ; preds = %1400, %1422
  %1403 = phi ptr [ %1398, %1400 ], [ %1423, %1422 ]
  %1404 = getelementptr inbounds %struct.SpaceLink, ptr %1403, i64 0, i32 3
  %1405 = load i32, ptr %1404, align 8, !tbaa !314
  %1406 = icmp eq i32 %1405, 8
  br i1 %1406, label %1422, label %1407

1407:                                             ; preds = %1402
  %1408 = load ptr, ptr %1397, align 8, !tbaa !353
  %1409 = icmp eq ptr %1403, %1408
  %1410 = getelementptr inbounds %struct.SpaceLink, ptr %1403, i64 0, i32 2
  %1411 = select i1 %1409, ptr %1401, ptr %1410
  br label %1412

1412:                                             ; preds = %1416, %1407
  %1413 = phi ptr [ %1411, %1407 ], [ %1414, %1416 ]
  %1414 = load ptr, ptr %1413, align 8, !tbaa !42
  %1415 = icmp eq ptr %1414, null
  br i1 %1415, label %1422, label %1416

1416:                                             ; preds = %1412
  %1417 = getelementptr inbounds %struct.ARegion, ptr %1414, i64 0, i32 8
  %1418 = load i16, ptr %1417, align 2, !tbaa !355
  %1419 = icmp eq i16 %1418, 7
  br i1 %1419, label %1420, label %1412, !llvm.loop !358

1420:                                             ; preds = %1416
  %1421 = call ptr @BKE_spacetype_from_id(i32 noundef 8) #11
  call void @BKE_area_region_free(ptr noundef %1421, ptr noundef nonnull %1414) #11
  call void @BLI_freelinkN(ptr noundef nonnull %1411, ptr noundef nonnull %1414) #11
  br label %1422

1422:                                             ; preds = %1412, %1420, %1402
  %1423 = load ptr, ptr %1403, align 8, !tbaa !42
  %1424 = icmp eq ptr %1423, null
  br i1 %1424, label %1392, label %1402, !llvm.loop !359

1425:                                             ; preds = %1384
  %1426 = load i16, ptr %12, align 8, !tbaa !34
  %1427 = icmp slt i16 %1426, 250
  br i1 %1427, label %1435, label %1428

1428:                                             ; preds = %1377, %1380, %1425
  %1429 = phi i16 [ %1426, %1425 ], [ %1338, %1380 ], [ %1338, %1377 ]
  %1430 = icmp eq i16 %1429, 250
  br i1 %1430, label %1431, label %1645

1431:                                             ; preds = %1428
  %1432 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1433 = load i16, ptr %1432, align 2, !tbaa !151
  %1434 = icmp slt i16 %1433, 11
  br i1 %1434, label %1435, label %1499

1435:                                             ; preds = %1373, %1431, %1425
  %1436 = phi i16 [ 250, %1431 ], [ %1426, %1425 ], [ %1338, %1373 ]
  %1437 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %1438 = load ptr, ptr %1437, align 8, !tbaa !42
  %1439 = icmp eq ptr %1438, null
  br i1 %1439, label %1494, label %1443

1440:                                             ; preds = %1448, %1443
  %1441 = load ptr, ptr %1444, align 8, !tbaa !42
  %1442 = icmp eq ptr %1441, null
  br i1 %1442, label %1492, label %1443, !llvm.loop !360

1443:                                             ; preds = %1435, %1440
  %1444 = phi ptr [ %1441, %1440 ], [ %1438, %1435 ]
  %1445 = getelementptr inbounds %struct.bScreen, ptr %1444, i64 0, i32 3
  %1446 = load ptr, ptr %1445, align 8, !tbaa !42
  %1447 = icmp eq ptr %1446, null
  br i1 %1447, label %1440, label %1451

1448:                                             ; preds = %1489, %1451
  %1449 = load ptr, ptr %1452, align 8, !tbaa !42
  %1450 = icmp eq ptr %1449, null
  br i1 %1450, label %1440, label %1451, !llvm.loop !361

1451:                                             ; preds = %1443, %1448
  %1452 = phi ptr [ %1449, %1448 ], [ %1446, %1443 ]
  %1453 = getelementptr inbounds %struct.ScrArea, ptr %1452, i64 0, i32 19
  %1454 = load ptr, ptr %1453, align 8, !tbaa !42
  %1455 = icmp eq ptr %1454, null
  br i1 %1455, label %1448, label %1456

1456:                                             ; preds = %1451
  %1457 = getelementptr inbounds %struct.ScrArea, ptr %1452, i64 0, i32 20
  br label %1458

1458:                                             ; preds = %1456, %1489
  %1459 = phi ptr [ %1454, %1456 ], [ %1490, %1489 ]
  %1460 = getelementptr inbounds %struct.SpaceLink, ptr %1459, i64 0, i32 3
  %1461 = load i32, ptr %1460, align 8, !tbaa !314
  %1462 = icmp eq i32 %1461, 8
  br i1 %1462, label %1463, label %1489

1463:                                             ; preds = %1458
  %1464 = load ptr, ptr %1453, align 8, !tbaa !353
  %1465 = icmp eq ptr %1459, %1464
  %1466 = getelementptr inbounds %struct.SpaceLink, ptr %1459, i64 0, i32 2
  %1467 = select i1 %1465, ptr %1457, ptr %1466
  %1468 = getelementptr inbounds %struct.SpaceSeq, ptr %1459, i64 0, i32 15
  %1469 = load i32, ptr %1468, align 8, !tbaa !362
  %1470 = icmp eq i32 %1469, 0
  br i1 %1470, label %1471, label %1472

1471:                                             ; preds = %1463
  store i32 1, ptr %1468, align 8, !tbaa !362
  br label %1472

1472:                                             ; preds = %1471, %1463
  %1473 = getelementptr inbounds %struct.SpaceSeq, ptr %1459, i64 0, i32 9
  %1474 = load i16, ptr %1473, align 8, !tbaa !365
  %1475 = icmp eq i16 %1474, 0
  br i1 %1475, label %1476, label %1477

1476:                                             ; preds = %1472
  store i16 1, ptr %1473, align 8, !tbaa !365
  br label %1477

1477:                                             ; preds = %1476, %1472
  br label %1478

1478:                                             ; preds = %1477, %1482
  %1479 = phi ptr [ %1480, %1482 ], [ %1467, %1477 ]
  %1480 = load ptr, ptr %1479, align 8, !tbaa !42
  %1481 = icmp eq ptr %1480, null
  br i1 %1481, label %1486, label %1482

1482:                                             ; preds = %1478
  %1483 = getelementptr inbounds %struct.ARegion, ptr %1480, i64 0, i32 8
  %1484 = load i16, ptr %1483, align 2, !tbaa !355
  %1485 = icmp eq i16 %1484, 0
  br i1 %1485, label %1486, label %1478, !llvm.loop !366

1486:                                             ; preds = %1482, %1478
  %1487 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %1488 = call ptr %1487(i64 noundef 384, ptr noundef nonnull @.str.5) #11
  call void @BLI_insertlinkbefore(ptr noundef nonnull %1467, ptr noundef %1480, ptr noundef %1488) #11
  call fastcc void @sequencer_init_preview_region(ptr noundef %1488) #13
  br label %1489

1489:                                             ; preds = %1458, %1486
  %1490 = load ptr, ptr %1459, align 8, !tbaa !42
  %1491 = icmp eq ptr %1490, null
  br i1 %1491, label %1448, label %1458, !llvm.loop !367

1492:                                             ; preds = %1440
  %1493 = load i16, ptr %12, align 8, !tbaa !34
  br label %1494

1494:                                             ; preds = %1492, %1435
  %1495 = phi i16 [ %1493, %1492 ], [ %1436, %1435 ]
  %1496 = icmp slt i16 %1495, 250
  br i1 %1496, label %1503, label %1497

1497:                                             ; preds = %1494
  %1498 = icmp eq i16 %1495, 250
  br i1 %1498, label %1499, label %1645

1499:                                             ; preds = %1431, %1497
  %1500 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1501 = load i16, ptr %1500, align 2, !tbaa !151
  %1502 = icmp slt i16 %1501, 12
  br i1 %1502, label %1503, label %1645

1503:                                             ; preds = %1499, %1494
  %1504 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1505 = load ptr, ptr %1504, align 8, !tbaa !42
  %1506 = icmp eq ptr %1505, null
  br i1 %1506, label %1512, label %1507

1507:                                             ; preds = %1503, %1507
  %1508 = phi ptr [ %1510, %1507 ], [ %1505, %1503 ]
  %1509 = getelementptr inbounds %struct.Scene, ptr %1508, i64 0, i32 37, i32 14
  store float 0x3FB99999A0000000, ptr %1509, align 4, !tbaa !368
  %1510 = load ptr, ptr %1508, align 8, !tbaa !42
  %1511 = icmp eq ptr %1510, null
  br i1 %1511, label %1512, label %1507, !llvm.loop !369

1512:                                             ; preds = %1507, %1503
  %1513 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %1514 = load ptr, ptr %1513, align 8, !tbaa !42
  %1515 = icmp eq ptr %1514, null
  br i1 %1515, label %1621, label %1516

1516:                                             ; preds = %1512, %1618
  %1517 = phi ptr [ %1619, %1618 ], [ %1514, %1512 ]
  %1518 = getelementptr inbounds %struct.Object, ptr %1517, i64 0, i32 21
  call void @animviz_settings_init(ptr noundef nonnull %1518) #11
  %1519 = getelementptr inbounds %struct.Object, ptr %1517, i64 0, i32 18
  %1520 = load ptr, ptr %1519, align 8, !tbaa !264
  %1521 = icmp eq ptr %1520, null
  br i1 %1521, label %1618, label %1522

1522:                                             ; preds = %1516
  %1523 = getelementptr inbounds %struct.Object, ptr %1517, i64 0, i32 19
  %1524 = load ptr, ptr %1523, align 8, !tbaa !125
  %1525 = icmp eq ptr %1524, null
  br i1 %1525, label %1618, label %1526

1526:                                             ; preds = %1522
  %1527 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %1524) #11
  %1528 = icmp eq ptr %1527, null
  %1529 = load ptr, ptr %1519, align 8, !tbaa !264
  %1530 = getelementptr inbounds %struct.bPose, ptr %1529, i64 0, i32 14
  br i1 %1528, label %1617, label %1531

1531:                                             ; preds = %1526
  %1532 = getelementptr inbounds %struct.bArmature, ptr %1527, i64 0, i32 17
  %1533 = load i16, ptr %1532, align 8, !tbaa !370
  %1534 = sext i16 %1533 to i32
  %1535 = getelementptr inbounds %struct.bPose, ptr %1529, i64 0, i32 14, i32 3
  store i32 %1534, ptr %1535, align 4, !tbaa !372
  %1536 = getelementptr inbounds %struct.bPose, ptr %1529, i64 0, i32 14, i32 2
  store i32 %1534, ptr %1536, align 4, !tbaa !373
  %1537 = getelementptr inbounds %struct.bArmature, ptr %1527, i64 0, i32 21
  %1538 = load i32, ptr %1537, align 8, !tbaa !374
  store i32 %1538, ptr %1530, align 4, !tbaa !375
  %1539 = getelementptr inbounds %struct.bArmature, ptr %1527, i64 0, i32 22
  %1540 = load i32, ptr %1539, align 4, !tbaa !376
  %1541 = getelementptr inbounds %struct.bPose, ptr %1529, i64 0, i32 14, i32 1
  store i32 %1540, ptr %1541, align 4, !tbaa !377
  %1542 = or i32 %1540, %1538
  %1543 = icmp eq i32 %1542, 0
  br i1 %1543, label %1544, label %1545

1544:                                             ; preds = %1531
  store i32 1, ptr %1530, align 4, !tbaa !375
  store i32 100, ptr %1541, align 4, !tbaa !377
  br label %1545

1545:                                             ; preds = %1544, %1531
  %1546 = icmp eq i16 %1533, 0
  br i1 %1546, label %1551, label %1547

1547:                                             ; preds = %1545
  %1548 = getelementptr inbounds %struct.bArmature, ptr %1527, i64 0, i32 19
  %1549 = load i16, ptr %1548, align 4, !tbaa !378
  %1550 = add i16 %1549, 1
  br label %1551

1551:                                             ; preds = %1545, %1547
  %1552 = phi i16 [ %1550, %1547 ], [ 0, %1545 ]
  %1553 = getelementptr inbounds %struct.bPose, ptr %1529, i64 0, i32 14, i32 4
  store i16 %1552, ptr %1553, align 4
  %1554 = getelementptr inbounds %struct.bArmature, ptr %1527, i64 0, i32 18
  %1555 = load i16, ptr %1554, align 2, !tbaa !379
  %1556 = getelementptr inbounds %struct.bPose, ptr %1529, i64 0, i32 14, i32 5
  %1557 = call i16 @llvm.umax.i16(i16 %1555, i16 1)
  store i16 %1557, ptr %1556, align 2, !tbaa !380
  %1558 = getelementptr inbounds %struct.bArmature, ptr %1527, i64 0, i32 25
  %1559 = load i32, ptr %1558, align 8, !tbaa !381
  %1560 = getelementptr inbounds %struct.bPose, ptr %1529, i64 0, i32 14, i32 14
  store i32 %1559, ptr %1560, align 4, !tbaa !382
  %1561 = getelementptr inbounds %struct.bArmature, ptr %1527, i64 0, i32 26
  %1562 = load i32, ptr %1561, align 4, !tbaa !383
  %1563 = getelementptr inbounds %struct.bPose, ptr %1529, i64 0, i32 14, i32 15
  store i32 %1562, ptr %1563, align 4, !tbaa !384
  %1564 = or i32 %1562, %1559
  %1565 = icmp eq i32 %1564, 0
  br i1 %1565, label %1566, label %1567

1566:                                             ; preds = %1551
  store i32 10, ptr %1563, align 4, !tbaa !384
  store i32 10, ptr %1560, align 4, !tbaa !382
  br label %1567

1567:                                             ; preds = %1566, %1551
  %1568 = getelementptr inbounds %struct.bArmature, ptr %1527, i64 0, i32 23
  %1569 = load i32, ptr %1568, align 8, !tbaa !385
  %1570 = getelementptr inbounds %struct.bPose, ptr %1529, i64 0, i32 14, i32 12
  store i32 %1569, ptr %1570, align 4, !tbaa !386
  %1571 = getelementptr inbounds %struct.bArmature, ptr %1527, i64 0, i32 24
  %1572 = load i32, ptr %1571, align 4, !tbaa !387
  %1573 = getelementptr inbounds %struct.bPose, ptr %1529, i64 0, i32 14, i32 13
  store i32 %1572, ptr %1573, align 4, !tbaa !388
  %1574 = or i32 %1572, %1569
  %1575 = icmp eq i32 %1574, 0
  br i1 %1575, label %1576, label %1577

1576:                                             ; preds = %1567
  store i32 1, ptr %1570, align 4, !tbaa !386
  store i32 250, ptr %1573, align 4, !tbaa !388
  br label %1577

1577:                                             ; preds = %1576, %1567
  %1578 = getelementptr inbounds %struct.bArmature, ptr %1527, i64 0, i32 13
  %1579 = load i16, ptr %1578, align 2, !tbaa !389
  %1580 = and i16 %1579, 1
  %1581 = icmp eq i16 %1580, 0
  br i1 %1581, label %1586, label %1582

1582:                                             ; preds = %1577
  %1583 = getelementptr inbounds %struct.bPose, ptr %1529, i64 0, i32 14, i32 10
  %1584 = load i16, ptr %1583, align 4, !tbaa !390
  %1585 = or i16 %1584, 1
  store i16 %1585, ptr %1583, align 4, !tbaa !390
  br label %1586

1586:                                             ; preds = %1582, %1577
  %1587 = and i16 %1579, 2
  %1588 = icmp eq i16 %1587, 0
  br i1 %1588, label %1593, label %1589

1589:                                             ; preds = %1586
  %1590 = getelementptr inbounds %struct.bPose, ptr %1529, i64 0, i32 14, i32 10
  %1591 = load i16, ptr %1590, align 4, !tbaa !390
  %1592 = or i16 %1591, 2
  store i16 %1592, ptr %1590, align 4, !tbaa !390
  br label %1593

1593:                                             ; preds = %1589, %1586
  %1594 = and i16 %1579, 16
  %1595 = icmp eq i16 %1594, 0
  br i1 %1595, label %1600, label %1596

1596:                                             ; preds = %1593
  %1597 = getelementptr inbounds %struct.bPose, ptr %1529, i64 0, i32 14, i32 10
  %1598 = load i16, ptr %1597, align 4, !tbaa !390
  %1599 = or i16 %1598, 4
  store i16 %1599, ptr %1597, align 4, !tbaa !390
  br label %1600

1600:                                             ; preds = %1596, %1593
  %1601 = and i16 %1579, 4
  %1602 = icmp eq i16 %1601, 0
  br i1 %1602, label %1607, label %1603

1603:                                             ; preds = %1600
  %1604 = getelementptr inbounds %struct.bPose, ptr %1529, i64 0, i32 14, i32 11
  %1605 = load i16, ptr %1604, align 2, !tbaa !391
  %1606 = or i16 %1605, 2
  store i16 %1606, ptr %1604, align 2, !tbaa !391
  br label %1607

1607:                                             ; preds = %1603, %1600
  %1608 = and i16 %1579, 8
  %1609 = icmp eq i16 %1608, 0
  br i1 %1609, label %1612, label %1610

1610:                                             ; preds = %1607
  %1611 = getelementptr inbounds %struct.bPose, ptr %1529, i64 0, i32 14, i32 8
  store i16 1, ptr %1611, align 4, !tbaa !392
  br label %1612

1612:                                             ; preds = %1610, %1607
  %1613 = getelementptr inbounds %struct.bArmature, ptr %1527, i64 0, i32 20
  %1614 = load i16, ptr %1613, align 2, !tbaa !393
  %1615 = getelementptr inbounds %struct.bPose, ptr %1529, i64 0, i32 14, i32 9
  %1616 = call i16 @llvm.umax.i16(i16 %1614, i16 1)
  store i16 %1616, ptr %1615, align 2, !tbaa !394
  br label %1618

1617:                                             ; preds = %1526
  call void @animviz_settings_init(ptr noundef nonnull %1530) #11
  br label %1618

1618:                                             ; preds = %1612, %1617, %1516, %1522
  %1619 = load ptr, ptr %1517, align 8, !tbaa !42
  %1620 = icmp eq ptr %1619, null
  br i1 %1620, label %1621, label %1516, !llvm.loop !395

1621:                                             ; preds = %1618, %1512
  %1622 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 36
  %1623 = load ptr, ptr %1622, align 8, !tbaa !42
  %1624 = icmp eq ptr %1623, null
  br i1 %1624, label %1631, label %1625

1625:                                             ; preds = %1621, %1625
  %1626 = phi ptr [ %1629, %1625 ], [ %1623, %1621 ]
  %1627 = getelementptr inbounds %struct.Brush, ptr %1626, i64 0, i32 3
  call void @default_mtex(ptr noundef nonnull %1627) #11
  %1628 = getelementptr inbounds %struct.Brush, ptr %1626, i64 0, i32 4
  call void @default_mtex(ptr noundef nonnull %1628) #11
  %1629 = load ptr, ptr %1626, align 8, !tbaa !42
  %1630 = icmp eq ptr %1629, null
  br i1 %1630, label %1631, label %1625, !llvm.loop !396

1631:                                             ; preds = %1625, %1621
  %1632 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %1633 = load ptr, ptr %1632, align 8, !tbaa !42
  %1634 = icmp eq ptr %1633, null
  br i1 %1634, label %1645, label %1635

1635:                                             ; preds = %1631, %1642
  %1636 = phi ptr [ %1643, %1642 ], [ %1633, %1631 ]
  %1637 = getelementptr inbounds %struct.Material, ptr %1636, i64 0, i32 27, i32 17
  %1638 = load float, ptr %1637, align 4, !tbaa !397
  %1639 = fcmp olt float %1638, 0x3F1A36E2E0000000
  br i1 %1639, label %1640, label %1642

1640:                                             ; preds = %1635
  store float 0x3FC99999A0000000, ptr %1637, align 4, !tbaa !397
  %1641 = getelementptr inbounds %struct.Material, ptr %1636, i64 0, i32 27, i32 15
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %1641, align 4, !tbaa !63
  br label %1642

1642:                                             ; preds = %1635, %1640
  %1643 = load ptr, ptr %1636, align 8, !tbaa !42
  %1644 = icmp eq ptr %1643, null
  br i1 %1644, label %1645, label %1635, !llvm.loop !398

1645:                                             ; preds = %1642, %1428, %1631, %1499, %1497
  %1646 = load i16, ptr %12, align 8, !tbaa !34
  %1647 = icmp slt i16 %1646, 250
  br i1 %1647, label %1655, label %1648

1648:                                             ; preds = %1084, %1645
  %1649 = phi i16 [ %1646, %1645 ], [ %1082, %1084 ]
  %1650 = icmp eq i16 %1649, 250
  br i1 %1650, label %1651, label %1940

1651:                                             ; preds = %1648
  %1652 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1653 = load i16, ptr %1652, align 2, !tbaa !151
  %1654 = icmp slt i16 %1653, 13
  br i1 %1654, label %1655, label %1690

1655:                                             ; preds = %1651, %1645
  %1656 = phi i16 [ 250, %1651 ], [ %1646, %1645 ]
  %1657 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %1658 = load ptr, ptr %1657, align 8, !tbaa !42
  %1659 = icmp eq ptr %1658, null
  br i1 %1659, label %1685, label %1660

1660:                                             ; preds = %1655, %1680
  %1661 = phi ptr [ %1681, %1680 ], [ %1658, %1655 ]
  %1662 = getelementptr inbounds %struct.Object, ptr %1661, i64 0, i32 106
  call fastcc void @do_version_constraints_radians_degrees_250(ptr noundef nonnull %1662) #13
  %1663 = getelementptr inbounds %struct.Object, ptr %1661, i64 0, i32 18
  %1664 = load ptr, ptr %1663, align 8, !tbaa !264
  %1665 = icmp eq ptr %1664, null
  br i1 %1665, label %1680, label %1666

1666:                                             ; preds = %1660
  %1667 = load ptr, ptr %1664, align 8, !tbaa !42
  %1668 = icmp eq ptr %1667, null
  br i1 %1668, label %1680, label %1669

1669:                                             ; preds = %1666, %1669
  %1670 = phi ptr [ %1678, %1669 ], [ %1667, %1666 ]
  %1671 = getelementptr inbounds %struct.bPoseChannel, ptr %1670, i64 0, i32 33
  %1672 = load <4 x float>, ptr %1671, align 8, !tbaa !63
  %1673 = fmul <4 x float> %1672, <float 0x3F91DF46A0000000, float 0x3F91DF46A0000000, float 0x3F91DF46A0000000, float 0x3F91DF46A0000000>
  store <4 x float> %1673, ptr %1671, align 8, !tbaa !63
  %1674 = getelementptr inbounds %struct.bPoseChannel, ptr %1670, i64 0, i32 34, i64 1
  %1675 = load <2 x float>, ptr %1674, align 4, !tbaa !63
  %1676 = fmul <2 x float> %1675, <float 0x3F91DF46A0000000, float 0x3F91DF46A0000000>
  store <2 x float> %1676, ptr %1674, align 4, !tbaa !63
  %1677 = getelementptr inbounds %struct.bPoseChannel, ptr %1670, i64 0, i32 3
  call fastcc void @do_version_constraints_radians_degrees_250(ptr noundef nonnull %1677) #13
  %1678 = load ptr, ptr %1670, align 8, !tbaa !42
  %1679 = icmp eq ptr %1678, null
  br i1 %1679, label %1680, label %1669, !llvm.loop !399

1680:                                             ; preds = %1669, %1666, %1660
  %1681 = load ptr, ptr %1661, align 8, !tbaa !42
  %1682 = icmp eq ptr %1681, null
  br i1 %1682, label %1683, label %1660, !llvm.loop !400

1683:                                             ; preds = %1680
  %1684 = load i16, ptr %12, align 8, !tbaa !34
  br label %1685

1685:                                             ; preds = %1683, %1655
  %1686 = phi i16 [ %1684, %1683 ], [ %1656, %1655 ]
  %1687 = icmp sgt i16 %1686, 249
  br i1 %1687, label %1688, label %1694

1688:                                             ; preds = %1685
  %1689 = icmp eq i16 %1686, 250
  br i1 %1689, label %1690, label %1940

1690:                                             ; preds = %1651, %1688
  %1691 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1692 = load i16, ptr %1691, align 2, !tbaa !151
  %1693 = icmp slt i16 %1692, 14
  br i1 %1693, label %1694, label %1756

1694:                                             ; preds = %1690, %1685
  %1695 = phi i1 [ true, %1690 ], [ false, %1685 ]
  %1696 = phi i16 [ 250, %1690 ], [ %1686, %1685 ]
  %1697 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %1698 = load ptr, ptr %1697, align 8, !tbaa !42
  %1699 = icmp eq ptr %1698, null
  br i1 %1699, label %1752, label %1703

1700:                                             ; preds = %1708, %1703
  %1701 = load ptr, ptr %1704, align 8, !tbaa !42
  %1702 = icmp eq ptr %1701, null
  br i1 %1702, label %1752, label %1703, !llvm.loop !401

1703:                                             ; preds = %1694, %1700
  %1704 = phi ptr [ %1701, %1700 ], [ %1698, %1694 ]
  %1705 = getelementptr inbounds %struct.bScreen, ptr %1704, i64 0, i32 3
  %1706 = load ptr, ptr %1705, align 8, !tbaa !42
  %1707 = icmp eq ptr %1706, null
  br i1 %1707, label %1700, label %1711

1708:                                             ; preds = %1749, %1711
  %1709 = load ptr, ptr %1712, align 8, !tbaa !42
  %1710 = icmp eq ptr %1709, null
  br i1 %1710, label %1700, label %1711, !llvm.loop !402

1711:                                             ; preds = %1703, %1708
  %1712 = phi ptr [ %1709, %1708 ], [ %1706, %1703 ]
  %1713 = getelementptr inbounds %struct.ScrArea, ptr %1712, i64 0, i32 19
  %1714 = load ptr, ptr %1713, align 8, !tbaa !42
  %1715 = icmp eq ptr %1714, null
  br i1 %1715, label %1708, label %1716

1716:                                             ; preds = %1711
  %1717 = getelementptr inbounds %struct.ScrArea, ptr %1712, i64 0, i32 20
  %1718 = getelementptr inbounds %struct.ScrArea, ptr %1712, i64 0, i32 11
  br label %1719

1719:                                             ; preds = %1716, %1749
  %1720 = phi ptr [ %1714, %1716 ], [ %1750, %1749 ]
  %1721 = getelementptr inbounds %struct.SpaceLink, ptr %1720, i64 0, i32 3
  %1722 = load i32, ptr %1721, align 8, !tbaa !314
  %1723 = and i32 %1722, -2
  %1724 = icmp eq i32 %1723, 12
  br i1 %1724, label %1725, label %1749

1725:                                             ; preds = %1719
  %1726 = icmp eq ptr %1720, %1714
  %1727 = getelementptr inbounds %struct.SpaceLink, ptr %1720, i64 0, i32 2
  %1728 = select i1 %1726, ptr %1717, ptr %1727
  %1729 = load ptr, ptr %1728, align 8, !tbaa !42
  %1730 = icmp eq ptr %1729, null
  br i1 %1730, label %1749, label %1731

1731:                                             ; preds = %1725, %1746
  %1732 = phi ptr [ %1747, %1746 ], [ %1729, %1725 ]
  %1733 = getelementptr inbounds %struct.ARegion, ptr %1732, i64 0, i32 8
  %1734 = load i16, ptr %1733, align 2, !tbaa !355
  %1735 = icmp eq i16 %1734, 0
  br i1 %1735, label %1736, label %1746

1736:                                             ; preds = %1731
  %1737 = getelementptr inbounds %struct.ARegion, ptr %1732, i64 0, i32 2, i32 0, i32 3
  store float 0.000000e+00, ptr %1737, align 4, !tbaa !403
  %1738 = getelementptr inbounds %struct.ARegion, ptr %1732, i64 0, i32 2, i32 1, i32 3
  store float 0.000000e+00, ptr %1738, align 4, !tbaa !404
  %1739 = load i16, ptr %1718, align 4, !tbaa !405
  %1740 = sext i16 %1739 to i32
  %1741 = sub nsw i32 0, %1740
  %1742 = sitofp i32 %1741 to float
  %1743 = fdiv float %1742, 3.000000e+00
  %1744 = getelementptr inbounds %struct.ARegion, ptr %1732, i64 0, i32 2, i32 0, i32 2
  store float %1743, ptr %1744, align 8, !tbaa !406
  %1745 = getelementptr inbounds %struct.ARegion, ptr %1732, i64 0, i32 2, i32 1, i32 2
  store float %1743, ptr %1745, align 8, !tbaa !407
  br label %1746

1746:                                             ; preds = %1731, %1736
  %1747 = load ptr, ptr %1732, align 8, !tbaa !42
  %1748 = icmp eq ptr %1747, null
  br i1 %1748, label %1749, label %1731, !llvm.loop !408

1749:                                             ; preds = %1746, %1725, %1719
  %1750 = load ptr, ptr %1720, align 8, !tbaa !42
  %1751 = icmp eq ptr %1750, null
  br i1 %1751, label %1708, label %1719, !llvm.loop !409

1752:                                             ; preds = %1700, %1694
  br i1 %1695, label %1753, label %1760

1753:                                             ; preds = %1752
  %1754 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1755 = load i16, ptr %1754, align 2, !tbaa !151
  br label %1756

1756:                                             ; preds = %1753, %1690
  %1757 = phi i16 [ %1696, %1753 ], [ 250, %1690 ]
  %1758 = phi i16 [ %1755, %1753 ], [ %1692, %1690 ]
  %1759 = icmp slt i16 %1758, 15
  br i1 %1759, label %1760, label %1806

1760:                                             ; preds = %1756, %1752
  %1761 = phi i16 [ %1757, %1756 ], [ %1696, %1752 ]
  %1762 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %1763 = load ptr, ptr %1762, align 8, !tbaa !42
  %1764 = icmp eq ptr %1763, null
  br i1 %1764, label %1772, label %1765

1765:                                             ; preds = %1760, %1765
  %1766 = phi ptr [ %1770, %1765 ], [ %1763, %1760 ]
  %1767 = getelementptr inbounds %struct.Material, ptr %1766, i64 0, i32 16
  %1768 = load float, ptr %1767, align 4, !tbaa !410
  %1769 = fmul float %1768, 2.000000e+00
  store float %1769, ptr %1767, align 4, !tbaa !410
  %1770 = load ptr, ptr %1766, align 8, !tbaa !42
  %1771 = icmp eq ptr %1770, null
  br i1 %1771, label %1772, label %1765, !llvm.loop !411

1772:                                             ; preds = %1765, %1760
  %1773 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 25
  %1774 = load ptr, ptr %1773, align 8, !tbaa !42
  %1775 = icmp eq ptr %1774, null
  br i1 %1775, label %1806, label %1776

1776:                                             ; preds = %1772, %1798
  %1777 = phi ptr [ %1802, %1798 ], [ %1774, %1772 ]
  %1778 = getelementptr inbounds %struct.World, ptr %1777, i64 0, i32 48
  %1779 = load float, ptr %1778, align 8, !tbaa !412
  %1780 = getelementptr inbounds %struct.World, ptr %1777, i64 0, i32 59
  store float %1779, ptr %1780, align 4, !tbaa !413
  store float 1.000000e+00, ptr %1778, align 8, !tbaa !412
  %1781 = getelementptr inbounds %struct.World, ptr %1777, i64 0, i32 61
  %1782 = load i16, ptr %1781, align 4, !tbaa !414
  %1783 = icmp eq i16 %1782, 0
  br i1 %1783, label %1784, label %1785

1784:                                             ; preds = %1776
  store i16 1, ptr %1781, align 4, !tbaa !414
  br label %1789

1785:                                             ; preds = %1776
  %1786 = getelementptr inbounds %struct.World, ptr %1777, i64 0, i32 23
  %1787 = load i16, ptr %1786, align 2, !tbaa !415
  %1788 = or i16 %1787, 128
  store i16 %1788, ptr %1786, align 2, !tbaa !415
  br label %1789

1789:                                             ; preds = %1785, %1784
  %1790 = getelementptr inbounds %struct.World, ptr %1777, i64 0, i32 52
  %1791 = load i16, ptr %1790, align 4, !tbaa !416
  switch i16 %1791, label %1798 [
    i16 1, label %1792
    i16 2, label %1794
  ]

1792:                                             ; preds = %1789
  %1793 = fneg float %1779
  store float %1793, ptr %1780, align 4, !tbaa !413
  br label %1798

1794:                                             ; preds = %1789
  %1795 = getelementptr inbounds %struct.World, ptr %1777, i64 0, i32 23
  %1796 = load i16, ptr %1795, align 2, !tbaa !415
  %1797 = or i16 %1796, 64
  store i16 %1797, ptr %1795, align 2, !tbaa !415
  br label %1798

1798:                                             ; preds = %1789, %1794, %1792
  store i16 3, ptr %1790, align 4, !tbaa !416
  %1799 = getelementptr inbounds %struct.World, ptr %1777, i64 0, i32 12
  call fastcc void @mul_v3_fl(ptr noundef nonnull %1799, float noundef 5.000000e-01) #13
  %1800 = load float, ptr %1780, align 4, !tbaa !413
  %1801 = fmul float %1800, 5.000000e-01
  store float %1801, ptr %1780, align 4, !tbaa !413
  %1802 = load ptr, ptr %1777, align 8, !tbaa !42
  %1803 = icmp eq ptr %1802, null
  br i1 %1803, label %1804, label %1776, !llvm.loop !417

1804:                                             ; preds = %1798
  %1805 = load i16, ptr %12, align 8, !tbaa !34
  br label %1806

1806:                                             ; preds = %1804, %1772, %1756
  %1807 = phi i16 [ %1805, %1804 ], [ %1761, %1772 ], [ %1757, %1756 ]
  %1808 = icmp slt i16 %1807, 250
  br i1 %1808, label %1815, label %1809

1809:                                             ; preds = %1806
  %1810 = icmp eq i16 %1807, 250
  br i1 %1810, label %1811, label %1940

1811:                                             ; preds = %1809
  %1812 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1813 = load i16, ptr %1812, align 2, !tbaa !151
  %1814 = icmp slt i16 %1813, 17
  br i1 %1814, label %1815, label %1938

1815:                                             ; preds = %1811, %1806
  %1816 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1817 = load ptr, ptr %1816, align 8, !tbaa !42
  %1818 = icmp eq ptr %1817, null
  br i1 %1818, label %1877, label %1819

1819:                                             ; preds = %1815
  %1820 = getelementptr inbounds %struct.SeqIterator, ptr %6, i64 0, i32 4
  %1821 = getelementptr inbounds %struct.SeqIterator, ptr %6, i64 0, i32 3
  br label %1825

1822:                                             ; preds = %1860
  %1823 = load ptr, ptr %1816, align 8, !tbaa !42
  %1824 = icmp eq ptr %1823, null
  br i1 %1824, label %1877, label %1866

1825:                                             ; preds = %1819, %1860
  %1826 = phi ptr [ %1817, %1819 ], [ %1861, %1860 ]
  %1827 = getelementptr inbounds %struct.Scene, ptr %1826, i64 0, i32 22, i32 58
  %1828 = load float, ptr %1827, align 8, !tbaa !418
  %1829 = fcmp oeq float %1828, 0.000000e+00
  br i1 %1829, label %1830, label %1843

1830:                                             ; preds = %1825
  %1831 = getelementptr inbounds %struct.Scene, ptr %1826, i64 0, i32 22, i32 58, i32 2
  %1832 = load float, ptr %1831, align 8, !tbaa !419
  %1833 = fcmp oeq float %1832, 0.000000e+00
  br i1 %1833, label %1834, label %1843

1834:                                             ; preds = %1830
  %1835 = getelementptr inbounds %struct.Scene, ptr %1826, i64 0, i32 22, i32 58, i32 1
  %1836 = load float, ptr %1835, align 4, !tbaa !420
  %1837 = fcmp oeq float %1836, 0.000000e+00
  br i1 %1837, label %1838, label %1843

1838:                                             ; preds = %1834
  %1839 = getelementptr inbounds %struct.Scene, ptr %1826, i64 0, i32 22, i32 58, i32 3
  %1840 = load float, ptr %1839, align 4, !tbaa !421
  %1841 = fcmp oeq float %1840, 0.000000e+00
  br i1 %1841, label %1842, label %1843

1842:                                             ; preds = %1838
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %1827, align 8, !tbaa !63
  br label %1843

1843:                                             ; preds = %1842, %1838, %1834, %1830, %1825
  %1844 = getelementptr inbounds %struct.Scene, ptr %1826, i64 0, i32 22, i32 4, i32 10
  %1845 = load i32, ptr %1844, align 8, !tbaa !422
  %1846 = and i32 %1845, 1
  %1847 = icmp eq i32 %1846, 0
  br i1 %1847, label %1848, label %1850

1848:                                             ; preds = %1843
  %1849 = getelementptr inbounds %struct.Scene, ptr %1826, i64 0, i32 22, i32 4, i32 2
  store i32 0, ptr %1849, align 8, !tbaa !423
  br label %1850

1850:                                             ; preds = %1848, %1843
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #12
  %1851 = getelementptr inbounds %struct.Scene, ptr %1826, i64 0, i32 19
  %1852 = load ptr, ptr %1851, align 8, !tbaa !69
  call void @BKE_sequence_iterator_begin(ptr noundef %1852, ptr noundef nonnull %6, i8 noundef zeroext 0) #11
  %1853 = load i32, ptr %1820, align 8, !tbaa !90
  %1854 = icmp eq i32 %1853, 0
  br i1 %1854, label %1860, label %1855

1855:                                             ; preds = %1850, %1855
  %1856 = load ptr, ptr %1821, align 8, !tbaa !92
  %1857 = getelementptr inbounds %struct.Sequence, ptr %1856, i64 0, i32 39
  store float 1.000000e+00, ptr %1857, align 8, !tbaa !424
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %6) #11
  %1858 = load i32, ptr %1820, align 8, !tbaa !90
  %1859 = icmp eq i32 %1858, 0
  br i1 %1859, label %1860, label %1855, !llvm.loop !425

1860:                                             ; preds = %1855, %1850
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #12
  %1861 = load ptr, ptr %1826, align 8, !tbaa !42
  %1862 = icmp eq ptr %1861, null
  br i1 %1862, label %1822, label %1825, !llvm.loop !426

1863:                                             ; preds = %1870
  %1864 = load ptr, ptr %1867, align 8, !tbaa !42
  %1865 = icmp eq ptr %1864, null
  br i1 %1865, label %1877, label %1866, !llvm.loop !427

1866:                                             ; preds = %1822, %1863
  %1867 = phi ptr [ %1864, %1863 ], [ %1823, %1822 ]
  %1868 = getelementptr inbounds %struct.Scene, ptr %1867, i64 0, i32 20
  %1869 = load ptr, ptr %1868, align 8, !tbaa !176
  br label %1870

1870:                                             ; preds = %1866, %1870
  %1871 = phi i64 [ 0, %1866 ], [ %1875, %1870 ]
  %1872 = getelementptr inbounds %struct.ToolSettings, ptr %1869, i64 0, i32 18, i32 4, i64 %1871, i32 5
  %1873 = load float, ptr %1872, align 4, !tbaa !428
  %1874 = fdiv float %1873, 1.000000e+02
  store float %1874, ptr %1872, align 4, !tbaa !428
  %1875 = add nuw nsw i64 %1871, 1
  %1876 = icmp eq i64 %1875, 6
  br i1 %1876, label %1863, label %1870, !llvm.loop !430

1877:                                             ; preds = %1863, %1815, %1822
  %1878 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %1879 = load ptr, ptr %1878, align 8, !tbaa !42
  %1880 = icmp eq ptr %1879, null
  br i1 %1880, label %1894, label %1881

1881:                                             ; preds = %1877, %1891
  %1882 = phi ptr [ %1892, %1891 ], [ %1879, %1877 ]
  %1883 = getelementptr inbounds %struct.Material, ptr %1882, i64 0, i32 51
  %1884 = load i32, ptr %1883, align 4, !tbaa !163
  %1885 = and i32 %1884, 1
  %1886 = icmp eq i32 %1885, 0
  br i1 %1886, label %1891, label %1887

1887:                                             ; preds = %1881
  %1888 = getelementptr inbounds %struct.Material, ptr %1882, i64 0, i32 50
  %1889 = load i16, ptr %1888, align 2, !tbaa !431
  %1890 = or i16 %1889, 4
  store i16 %1890, ptr %1888, align 2, !tbaa !431
  br label %1891

1891:                                             ; preds = %1881, %1887
  %1892 = load ptr, ptr %1882, align 8, !tbaa !42
  %1893 = icmp eq ptr %1892, null
  br i1 %1893, label %1894, label %1881, !llvm.loop !432

1894:                                             ; preds = %1891, %1877
  %1895 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %1896 = load ptr, ptr %1895, align 8, !tbaa !42
  %1897 = icmp eq ptr %1896, null
  br i1 %1897, label %1938, label %1901

1898:                                             ; preds = %1906, %1901
  %1899 = load ptr, ptr %1902, align 8, !tbaa !42
  %1900 = icmp eq ptr %1899, null
  br i1 %1900, label %1938, label %1901, !llvm.loop !433

1901:                                             ; preds = %1894, %1898
  %1902 = phi ptr [ %1899, %1898 ], [ %1896, %1894 ]
  %1903 = getelementptr inbounds %struct.bScreen, ptr %1902, i64 0, i32 3
  %1904 = load ptr, ptr %1903, align 8, !tbaa !42
  %1905 = icmp eq ptr %1904, null
  br i1 %1905, label %1898, label %1909

1906:                                             ; preds = %1935, %1909
  %1907 = load ptr, ptr %1910, align 8, !tbaa !42
  %1908 = icmp eq ptr %1907, null
  br i1 %1908, label %1898, label %1909, !llvm.loop !434

1909:                                             ; preds = %1901, %1906
  %1910 = phi ptr [ %1907, %1906 ], [ %1904, %1901 ]
  %1911 = getelementptr inbounds %struct.ScrArea, ptr %1910, i64 0, i32 19
  %1912 = load ptr, ptr %1911, align 8, !tbaa !42
  %1913 = icmp eq ptr %1912, null
  br i1 %1913, label %1906, label %1914

1914:                                             ; preds = %1909
  %1915 = getelementptr inbounds %struct.ScrArea, ptr %1910, i64 0, i32 20
  br label %1916

1916:                                             ; preds = %1914, %1935
  %1917 = phi ptr [ %1912, %1914 ], [ %1936, %1935 ]
  %1918 = getelementptr inbounds %struct.SpaceLink, ptr %1917, i64 0, i32 3
  %1919 = load i32, ptr %1918, align 8, !tbaa !314
  %1920 = icmp eq i32 %1919, 8
  br i1 %1920, label %1921, label %1935

1921:                                             ; preds = %1916
  %1922 = load ptr, ptr %1911, align 8, !tbaa !353
  %1923 = icmp eq ptr %1917, %1922
  %1924 = getelementptr inbounds %struct.SpaceLink, ptr %1917, i64 0, i32 2
  %1925 = select i1 %1923, ptr %1915, ptr %1924
  br label %1926

1926:                                             ; preds = %1930, %1921
  %1927 = phi ptr [ %1925, %1921 ], [ %1928, %1930 ]
  %1928 = load ptr, ptr %1927, align 8, !tbaa !42
  %1929 = icmp eq ptr %1928, null
  br i1 %1929, label %1935, label %1930

1930:                                             ; preds = %1926
  %1931 = getelementptr inbounds %struct.ARegion, ptr %1928, i64 0, i32 8
  %1932 = load i16, ptr %1931, align 2, !tbaa !355
  %1933 = icmp eq i16 %1932, 7
  br i1 %1933, label %1934, label %1926, !llvm.loop !435

1934:                                             ; preds = %1930
  call fastcc void @sequencer_init_preview_region(ptr noundef nonnull %1928) #13
  br label %1935

1935:                                             ; preds = %1926, %1934, %1916
  %1936 = load ptr, ptr %1917, align 8, !tbaa !42
  %1937 = icmp eq ptr %1936, null
  br i1 %1937, label %1906, label %1916, !llvm.loop !436

1938:                                             ; preds = %1898, %1894, %1811
  %1939 = load i16, ptr %12, align 8, !tbaa !34
  br label %1940

1940:                                             ; preds = %875, %1340, %1688, %552, %1648, %1938, %1809
  %1941 = phi i16 [ %1939, %1938 ], [ %1807, %1809 ], [ %1649, %1648 ], [ %550, %552 ], [ %1686, %1688 ], [ %873, %875 ], [ %1338, %1340 ]
  %1942 = icmp slt i16 %1941, 252
  br i1 %1942, label %1943, label %1975

1943:                                             ; preds = %1940
  %1944 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %1945 = load ptr, ptr %1944, align 8, !tbaa !42
  %1946 = icmp eq ptr %1945, null
  br i1 %1946, label %1981, label %1950

1947:                                             ; preds = %1955, %1950
  %1948 = load ptr, ptr %1951, align 8, !tbaa !42
  %1949 = icmp eq ptr %1948, null
  br i1 %1949, label %1981, label %1950, !llvm.loop !437

1950:                                             ; preds = %1943, %1947
  %1951 = phi ptr [ %1948, %1947 ], [ %1945, %1943 ]
  %1952 = getelementptr inbounds %struct.bScreen, ptr %1951, i64 0, i32 3
  %1953 = load ptr, ptr %1952, align 8, !tbaa !42
  %1954 = icmp eq ptr %1953, null
  br i1 %1954, label %1947, label %1958

1955:                                             ; preds = %1972, %1958
  %1956 = load ptr, ptr %1959, align 8, !tbaa !42
  %1957 = icmp eq ptr %1956, null
  br i1 %1957, label %1947, label %1958, !llvm.loop !438

1958:                                             ; preds = %1950, %1955
  %1959 = phi ptr [ %1956, %1955 ], [ %1953, %1950 ]
  %1960 = getelementptr inbounds %struct.ScrArea, ptr %1959, i64 0, i32 19
  %1961 = load ptr, ptr %1960, align 8, !tbaa !42
  %1962 = icmp eq ptr %1961, null
  br i1 %1962, label %1955, label %1963

1963:                                             ; preds = %1958, %1972
  %1964 = phi ptr [ %1973, %1972 ], [ %1961, %1958 ]
  %1965 = getelementptr inbounds %struct.SpaceLink, ptr %1964, i64 0, i32 3
  %1966 = load i32, ptr %1965, align 8, !tbaa !314
  %1967 = icmp eq i32 %1966, 1
  br i1 %1967, label %1968, label %1972

1968:                                             ; preds = %1963
  %1969 = getelementptr inbounds %struct.View3D, ptr %1964, i64 0, i32 29
  %1970 = load i16, ptr %1969, align 2, !tbaa !439
  %1971 = and i16 %1970, -5
  store i16 %1971, ptr %1969, align 2, !tbaa !439
  br label %1972

1972:                                             ; preds = %1963, %1968
  %1973 = load ptr, ptr %1964, align 8, !tbaa !42
  %1974 = icmp eq ptr %1973, null
  br i1 %1974, label %1955, label %1963, !llvm.loop !440

1975:                                             ; preds = %1940
  %1976 = icmp eq i16 %1941, 252
  br i1 %1976, label %1977, label %2458

1977:                                             ; preds = %1975
  %1978 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1979 = load i16, ptr %1978, align 2, !tbaa !151
  %1980 = icmp slt i16 %1979, 1
  br i1 %1980, label %1981, label %2089

1981:                                             ; preds = %1947, %1943, %1977
  %1982 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 36
  %1983 = load ptr, ptr %1982, align 8, !tbaa !42
  %1984 = icmp eq ptr %1983, null
  br i1 %1984, label %1995, label %1985

1985:                                             ; preds = %1981, %1992
  %1986 = phi ptr [ %1993, %1992 ], [ %1983, %1981 ]
  %1987 = getelementptr inbounds %struct.Brush, ptr %1986, i64 0, i32 2
  %1988 = load ptr, ptr %1987, align 8, !tbaa !441
  %1989 = icmp eq ptr %1988, null
  br i1 %1989, label %1992, label %1990

1990:                                             ; preds = %1985
  %1991 = getelementptr inbounds %struct.CurveMapping, ptr %1988, i64 0, i32 2
  store i32 2, ptr %1991, align 8, !tbaa !444
  br label %1992

1992:                                             ; preds = %1985, %1990
  %1993 = load ptr, ptr %1986, align 8, !tbaa !42
  %1994 = icmp eq ptr %1993, null
  br i1 %1994, label %1995, label %1985, !llvm.loop !446

1995:                                             ; preds = %1992, %1981
  %1996 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %1997 = load ptr, ptr %1996, align 8, !tbaa !42
  %1998 = icmp eq ptr %1997, null
  br i1 %1998, label %2021, label %2002

1999:                                             ; preds = %2018, %2002
  %2000 = load ptr, ptr %2003, align 8, !tbaa !42
  %2001 = icmp eq ptr %2000, null
  br i1 %2001, label %2021, label %2002, !llvm.loop !447

2002:                                             ; preds = %1995, %1999
  %2003 = phi ptr [ %2000, %1999 ], [ %1997, %1995 ]
  %2004 = getelementptr inbounds %struct.Object, ptr %2003, i64 0, i32 26
  %2005 = load ptr, ptr %2004, align 8, !tbaa !42
  %2006 = icmp eq ptr %2005, null
  br i1 %2006, label %1999, label %2007

2007:                                             ; preds = %2002, %2018
  %2008 = phi ptr [ %2019, %2018 ], [ %2005, %2002 ]
  %2009 = getelementptr inbounds %struct.ModifierData, ptr %2008, i64 0, i32 2
  %2010 = load i32, ptr %2009, align 8, !tbaa !348
  %2011 = icmp eq i32 %2010, 26
  br i1 %2011, label %2012, label %2018

2012:                                             ; preds = %2007
  %2013 = getelementptr inbounds %struct.FluidsimModifierData, ptr %2008, i64 0, i32 1
  %2014 = load ptr, ptr %2013, align 8, !tbaa !221
  %2015 = getelementptr inbounds %struct.FluidsimSettings, ptr %2014, i64 0, i32 39
  %2016 = load i32, ptr %2015, align 8, !tbaa !448
  %2017 = or i32 %2016, 6
  store i32 %2017, ptr %2015, align 8, !tbaa !448
  br label %2018

2018:                                             ; preds = %2007, %2012
  %2019 = load ptr, ptr %2008, align 8, !tbaa !42
  %2020 = icmp eq ptr %2019, null
  br i1 %2020, label %1999, label %2007, !llvm.loop !449

2021:                                             ; preds = %1999, %1995
  %2022 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %2023 = load ptr, ptr %2022, align 8, !tbaa !42
  %2024 = icmp eq ptr %2023, null
  br i1 %2024, label %2054, label %2025

2025:                                             ; preds = %2021, %2051
  %2026 = phi ptr [ %2052, %2051 ], [ %2023, %2021 ]
  %2027 = getelementptr inbounds %struct.Scene, ptr %2026, i64 0, i32 18
  %2028 = load ptr, ptr %2027, align 8, !tbaa !117
  %2029 = icmp eq ptr %2028, null
  br i1 %2029, label %2051, label %2030

2030:                                             ; preds = %2025
  %2031 = getelementptr inbounds %struct.bNodeTree, ptr %2028, i64 0, i32 7
  %2032 = load ptr, ptr %2031, align 8, !tbaa !42
  %2033 = icmp eq ptr %2032, null
  br i1 %2033, label %2051, label %2034

2034:                                             ; preds = %2030, %2048
  %2035 = phi ptr [ %2049, %2048 ], [ %2032, %2030 ]
  %2036 = getelementptr inbounds %struct.bNode, ptr %2035, i64 0, i32 8
  %2037 = load i16, ptr %2036, align 4, !tbaa !131
  %2038 = icmp eq i16 %2037, 260
  br i1 %2038, label %2039, label %2048

2039:                                             ; preds = %2034
  %2040 = getelementptr inbounds %struct.bNode, ptr %2035, i64 0, i32 21
  %2041 = load ptr, ptr %2040, align 8, !tbaa !450
  %2042 = getelementptr inbounds %struct.NodeColorBalance, ptr %2041, i64 0, i32 3
  %2043 = load <2 x float>, ptr %2042, align 4, !tbaa !63
  %2044 = fadd <2 x float> %2043, <float 1.000000e+00, float 1.000000e+00>
  store <2 x float> %2044, ptr %2042, align 4, !tbaa !63
  %2045 = getelementptr inbounds %struct.NodeColorBalance, ptr %2041, i64 0, i32 3, i64 2
  %2046 = load float, ptr %2045, align 4, !tbaa !63
  %2047 = fadd float %2046, 1.000000e+00
  store float %2047, ptr %2045, align 4, !tbaa !63
  br label %2048

2048:                                             ; preds = %2039, %2034
  %2049 = load ptr, ptr %2035, align 8, !tbaa !42
  %2050 = icmp eq ptr %2049, null
  br i1 %2050, label %2051, label %2034, !llvm.loop !451

2051:                                             ; preds = %2048, %2030, %2025
  %2052 = load ptr, ptr %2026, align 8, !tbaa !42
  %2053 = icmp eq ptr %2052, null
  br i1 %2053, label %2054, label %2025, !llvm.loop !452

2054:                                             ; preds = %2051, %2021
  %2055 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 35
  %2056 = load ptr, ptr %2055, align 8, !tbaa !42
  %2057 = icmp eq ptr %2056, null
  br i1 %2057, label %2083, label %2061

2058:                                             ; preds = %2080, %2061
  %2059 = load ptr, ptr %2062, align 8, !tbaa !42
  %2060 = icmp eq ptr %2059, null
  br i1 %2060, label %2083, label %2061, !llvm.loop !453

2061:                                             ; preds = %2054, %2058
  %2062 = phi ptr [ %2059, %2058 ], [ %2056, %2054 ]
  %2063 = getelementptr inbounds %struct.bNodeTree, ptr %2062, i64 0, i32 7
  %2064 = load ptr, ptr %2063, align 8, !tbaa !42
  %2065 = icmp eq ptr %2064, null
  br i1 %2065, label %2058, label %2066

2066:                                             ; preds = %2061, %2080
  %2067 = phi ptr [ %2081, %2080 ], [ %2064, %2061 ]
  %2068 = getelementptr inbounds %struct.bNode, ptr %2067, i64 0, i32 8
  %2069 = load i16, ptr %2068, align 4, !tbaa !131
  %2070 = icmp eq i16 %2069, 260
  br i1 %2070, label %2071, label %2080

2071:                                             ; preds = %2066
  %2072 = getelementptr inbounds %struct.bNode, ptr %2067, i64 0, i32 21
  %2073 = load ptr, ptr %2072, align 8, !tbaa !450
  %2074 = getelementptr inbounds %struct.NodeColorBalance, ptr %2073, i64 0, i32 3
  %2075 = load <2 x float>, ptr %2074, align 4, !tbaa !63
  %2076 = fadd <2 x float> %2075, <float 1.000000e+00, float 1.000000e+00>
  store <2 x float> %2076, ptr %2074, align 4, !tbaa !63
  %2077 = getelementptr inbounds %struct.NodeColorBalance, ptr %2073, i64 0, i32 3, i64 2
  %2078 = load float, ptr %2077, align 4, !tbaa !63
  %2079 = fadd float %2078, 1.000000e+00
  store float %2079, ptr %2077, align 4, !tbaa !63
  br label %2080

2080:                                             ; preds = %2071, %2066
  %2081 = load ptr, ptr %2067, align 8, !tbaa !42
  %2082 = icmp eq ptr %2081, null
  br i1 %2082, label %2058, label %2066, !llvm.loop !454

2083:                                             ; preds = %2058, %2054
  br i1 %1942, label %2095, label %2084

2084:                                             ; preds = %2083
  %2085 = icmp eq i16 %1941, 252
  br i1 %2085, label %2086, label %2458

2086:                                             ; preds = %2084
  %2087 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2088 = load i16, ptr %2087, align 2, !tbaa !151
  br label %2089

2089:                                             ; preds = %2086, %1977
  %2090 = phi i16 [ %2088, %2086 ], [ %1979, %1977 ]
  %2091 = icmp slt i16 %2090, 2
  br i1 %2091, label %2092, label %2109

2092:                                             ; preds = %2089
  %2093 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %2094 = load ptr, ptr %2093, align 8, !tbaa !42
  br label %2095

2095:                                             ; preds = %2092, %2083
  %2096 = phi ptr [ %2094, %2092 ], [ %1997, %2083 ]
  %2097 = icmp eq ptr %2096, null
  br i1 %2097, label %2104, label %2098

2098:                                             ; preds = %2095, %2098
  %2099 = phi ptr [ %2100, %2098 ], [ %2096, %2095 ]
  call void @blo_do_version_old_trackto_to_constraints(ptr noundef nonnull %2099) #11
  %2100 = load ptr, ptr %2099, align 8, !tbaa !42
  %2101 = icmp eq ptr %2100, null
  br i1 %2101, label %2102, label %2098, !llvm.loop !455

2102:                                             ; preds = %2098
  %2103 = load i16, ptr %12, align 8, !tbaa !34
  br label %2104

2104:                                             ; preds = %2102, %2095
  %2105 = phi i16 [ %2103, %2102 ], [ %1941, %2095 ]
  %2106 = icmp slt i16 %2105, 252
  br i1 %2106, label %2113, label %2107

2107:                                             ; preds = %2104
  %2108 = icmp eq i16 %2105, 252
  br i1 %2108, label %2109, label %2458

2109:                                             ; preds = %2089, %2107
  %2110 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2111 = load i16, ptr %2110, align 2, !tbaa !151
  %2112 = icmp slt i16 %2111, 5
  br i1 %2112, label %2113, label %2146

2113:                                             ; preds = %2109, %2104
  %2114 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %2115 = load ptr, ptr %2114, align 8, !tbaa !42
  %2116 = icmp eq ptr %2115, null
  br i1 %2116, label %2146, label %2120

2117:                                             ; preds = %2125, %2120
  %2118 = load ptr, ptr %2121, align 8, !tbaa !42
  %2119 = icmp eq ptr %2118, null
  br i1 %2119, label %2143, label %2120, !llvm.loop !456

2120:                                             ; preds = %2113, %2117
  %2121 = phi ptr [ %2118, %2117 ], [ %2115, %2113 ]
  %2122 = getelementptr inbounds %struct.bScreen, ptr %2121, i64 0, i32 3
  %2123 = load ptr, ptr %2122, align 8, !tbaa !42
  %2124 = icmp eq ptr %2123, null
  br i1 %2124, label %2117, label %2128

2125:                                             ; preds = %2140, %2128
  %2126 = load ptr, ptr %2129, align 8, !tbaa !42
  %2127 = icmp eq ptr %2126, null
  br i1 %2127, label %2117, label %2128, !llvm.loop !457

2128:                                             ; preds = %2120, %2125
  %2129 = phi ptr [ %2126, %2125 ], [ %2123, %2120 ]
  %2130 = getelementptr inbounds %struct.ScrArea, ptr %2129, i64 0, i32 19
  %2131 = load ptr, ptr %2130, align 8, !tbaa !42
  %2132 = icmp eq ptr %2131, null
  br i1 %2132, label %2125, label %2133

2133:                                             ; preds = %2128, %2140
  %2134 = phi ptr [ %2141, %2140 ], [ %2131, %2128 ]
  %2135 = getelementptr inbounds %struct.SpaceLink, ptr %2134, i64 0, i32 3
  %2136 = load i32, ptr %2135, align 8, !tbaa !314
  %2137 = icmp eq i32 %2136, 6
  br i1 %2137, label %2138, label %2140

2138:                                             ; preds = %2133
  %2139 = getelementptr inbounds %struct.SpaceImage, ptr %2134, i64 0, i32 8
  call void @scopes_new(ptr noundef nonnull %2139) #11
  br label %2140

2140:                                             ; preds = %2133, %2138
  %2141 = load ptr, ptr %2134, align 8, !tbaa !42
  %2142 = icmp eq ptr %2141, null
  br i1 %2142, label %2125, label %2133, !llvm.loop !458

2143:                                             ; preds = %2117
  %2144 = load i16, ptr %12, align 8, !tbaa !34
  %2145 = icmp slt i16 %2144, 253
  br i1 %2145, label %2146, label %2458

2146:                                             ; preds = %2109, %2113, %2143
  %2147 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %2148 = load ptr, ptr %2147, align 8, !tbaa !42
  %2149 = icmp eq ptr %2148, null
  br i1 %2149, label %2214, label %2153

2150:                                             ; preds = %2158, %2153
  %2151 = load ptr, ptr %2154, align 8, !tbaa !42
  %2152 = icmp eq ptr %2151, null
  br i1 %2152, label %2214, label %2153, !llvm.loop !459

2153:                                             ; preds = %2146, %2150
  %2154 = phi ptr [ %2151, %2150 ], [ %2148, %2146 ]
  %2155 = getelementptr inbounds %struct.bScreen, ptr %2154, i64 0, i32 3
  %2156 = load ptr, ptr %2155, align 8, !tbaa !42
  %2157 = icmp eq ptr %2156, null
  br i1 %2157, label %2150, label %2161

2158:                                             ; preds = %2211, %2161
  %2159 = load ptr, ptr %2162, align 8, !tbaa !42
  %2160 = icmp eq ptr %2159, null
  br i1 %2160, label %2150, label %2161, !llvm.loop !460

2161:                                             ; preds = %2153, %2158
  %2162 = phi ptr [ %2159, %2158 ], [ %2156, %2153 ]
  %2163 = getelementptr inbounds %struct.ScrArea, ptr %2162, i64 0, i32 19
  %2164 = load ptr, ptr %2163, align 8, !tbaa !42
  %2165 = icmp eq ptr %2164, null
  br i1 %2165, label %2158, label %2166

2166:                                             ; preds = %2161
  %2167 = getelementptr inbounds %struct.ScrArea, ptr %2162, i64 0, i32 20
  br label %2168

2168:                                             ; preds = %2166, %2211
  %2169 = phi ptr [ %2164, %2166 ], [ %2212, %2211 ]
  %2170 = getelementptr inbounds %struct.SpaceLink, ptr %2169, i64 0, i32 3
  %2171 = load i32, ptr %2170, align 8, !tbaa !314
  switch i32 %2171, label %2211 [
    i32 16, label %2172
    i32 15, label %2207
  ]

2172:                                             ; preds = %2168
  %2173 = load ptr, ptr %2163, align 8, !tbaa !353
  %2174 = icmp eq ptr %2169, %2173
  %2175 = getelementptr inbounds %struct.SpaceLink, ptr %2169, i64 0, i32 2
  %2176 = select i1 %2174, ptr %2167, ptr %2175
  %2177 = getelementptr inbounds %struct.SpaceNode, ptr %2169, i64 0, i32 6, i32 7
  %2178 = load float, ptr %2177, align 8, !tbaa !461
  %2179 = fcmp ogt float %2178, 0x3FB70A3D80000000
  br i1 %2179, label %2180, label %2181

2180:                                             ; preds = %2172
  store float 0x3FB70A3D80000000, ptr %2177, align 8, !tbaa !461
  br label %2181

2181:                                             ; preds = %2180, %2172
  %2182 = getelementptr inbounds %struct.SpaceNode, ptr %2169, i64 0, i32 6, i32 8
  %2183 = load float, ptr %2182, align 4, !tbaa !463
  %2184 = fcmp olt float %2183, 0x40027AE140000000
  br i1 %2184, label %2185, label %2186

2185:                                             ; preds = %2181
  store float 0x40027AE140000000, ptr %2182, align 4, !tbaa !463
  br label %2186

2186:                                             ; preds = %2185, %2181
  %2187 = load ptr, ptr %2176, align 8, !tbaa !42
  %2188 = icmp eq ptr %2187, null
  br i1 %2188, label %2211, label %2189

2189:                                             ; preds = %2186, %2204
  %2190 = phi ptr [ %2205, %2204 ], [ %2187, %2186 ]
  %2191 = getelementptr inbounds %struct.ARegion, ptr %2190, i64 0, i32 8
  %2192 = load i16, ptr %2191, align 2, !tbaa !355
  %2193 = icmp eq i16 %2192, 0
  br i1 %2193, label %2194, label %2204

2194:                                             ; preds = %2189
  %2195 = getelementptr inbounds %struct.ARegion, ptr %2190, i64 0, i32 2, i32 7
  %2196 = load float, ptr %2195, align 8, !tbaa !464
  %2197 = fcmp ogt float %2196, 0x3FB70A3D80000000
  br i1 %2197, label %2198, label %2199

2198:                                             ; preds = %2194
  store float 0x3FB70A3D80000000, ptr %2195, align 8, !tbaa !464
  br label %2199

2199:                                             ; preds = %2198, %2194
  %2200 = getelementptr inbounds %struct.ARegion, ptr %2190, i64 0, i32 2, i32 8
  %2201 = load float, ptr %2200, align 4, !tbaa !465
  %2202 = fcmp olt float %2201, 0x40027AE140000000
  br i1 %2202, label %2203, label %2204

2203:                                             ; preds = %2199
  store float 0x40027AE140000000, ptr %2200, align 4, !tbaa !465
  br label %2204

2204:                                             ; preds = %2189, %2203, %2199
  %2205 = load ptr, ptr %2190, align 8, !tbaa !42
  %2206 = icmp eq ptr %2205, null
  br i1 %2206, label %2211, label %2189, !llvm.loop !466

2207:                                             ; preds = %2168
  %2208 = getelementptr inbounds %struct.SpaceTime, ptr %2169, i64 0, i32 7
  %2209 = load i32, ptr %2208, align 8, !tbaa !467
  %2210 = or i32 %2209, 63
  store i32 %2210, ptr %2208, align 8, !tbaa !467
  br label %2211

2211:                                             ; preds = %2204, %2186, %2168, %2207
  %2212 = load ptr, ptr %2169, align 8, !tbaa !42
  %2213 = icmp eq ptr %2212, null
  br i1 %2213, label %2158, label %2168, !llvm.loop !469

2214:                                             ; preds = %2150, %2146
  call fastcc void @do_version_mdef_250(ptr noundef %2) #13
  %2215 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %2216 = load ptr, ptr %2215, align 8, !tbaa !42
  %2217 = icmp eq ptr %2216, null
  br i1 %2217, label %2267, label %2218

2218:                                             ; preds = %2214, %2264
  %2219 = phi ptr [ %2265, %2264 ], [ %2216, %2214 ]
  %2220 = getelementptr inbounds %struct.Object, ptr %2219, i64 0, i32 9
  %2221 = load ptr, ptr %2220, align 8, !tbaa !470
  %2222 = icmp eq ptr %2221, null
  br i1 %2222, label %2264, label %2223

2223:                                             ; preds = %2218
  %2224 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2221) #11
  %2225 = icmp eq ptr %2224, null
  br i1 %2225, label %2264, label %2226

2226:                                             ; preds = %2223
  %2227 = getelementptr inbounds %struct.Object, ptr %2224, i64 0, i32 3
  %2228 = load i16, ptr %2227, align 8, !tbaa !121
  switch i16 %2228, label %2264 [
    i16 25, label %2229
    i16 22, label %2244
    i16 2, label %2253
  ]

2229:                                             ; preds = %2226
  %2230 = getelementptr inbounds %struct.Object, ptr %2219, i64 0, i32 4
  %2231 = load i16, ptr %2230, align 2, !tbaa !471
  %2232 = icmp eq i16 %2231, 4
  br i1 %2232, label %2233, label %2264

2233:                                             ; preds = %2229
  %2234 = getelementptr inbounds %struct.Object, ptr %2224, i64 0, i32 19
  %2235 = load ptr, ptr %2234, align 8, !tbaa !125
  %2236 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %2235) #11
  %2237 = call ptr @modifier_new(i32 noundef 8) #11
  %2238 = load ptr, ptr %2220, align 8, !tbaa !470
  %2239 = getelementptr inbounds %struct.ArmatureModifierData, ptr %2237, i64 0, i32 4
  store ptr %2238, ptr %2239, align 8, !tbaa !472
  %2240 = getelementptr inbounds %struct.Object, ptr %2219, i64 0, i32 26
  call void @BLI_addtail(ptr noundef nonnull %2240, ptr noundef %2237) #11
  %2241 = getelementptr inbounds %struct.bArmature, ptr %2236, i64 0, i32 12
  %2242 = load i16, ptr %2241, align 8, !tbaa !474
  %2243 = getelementptr inbounds %struct.ArmatureModifierData, ptr %2237, i64 0, i32 1
  store i16 %2242, ptr %2243, align 8, !tbaa !475
  br label %2262

2244:                                             ; preds = %2226
  %2245 = getelementptr inbounds %struct.Object, ptr %2219, i64 0, i32 4
  %2246 = load i16, ptr %2245, align 2, !tbaa !471
  %2247 = icmp eq i16 %2246, 4
  br i1 %2247, label %2248, label %2264

2248:                                             ; preds = %2244
  %2249 = call ptr @modifier_new(i32 noundef 2) #11
  %2250 = load ptr, ptr %2220, align 8, !tbaa !470
  %2251 = getelementptr inbounds %struct.LatticeModifierData, ptr %2249, i64 0, i32 1
  store ptr %2250, ptr %2251, align 8, !tbaa !476
  %2252 = getelementptr inbounds %struct.Object, ptr %2219, i64 0, i32 26
  call void @BLI_addtail(ptr noundef nonnull %2252, ptr noundef %2249) #11
  br label %2262

2253:                                             ; preds = %2226
  %2254 = getelementptr inbounds %struct.Object, ptr %2219, i64 0, i32 4
  %2255 = load i16, ptr %2254, align 2, !tbaa !471
  %2256 = icmp eq i16 %2255, 1
  br i1 %2256, label %2257, label %2264

2257:                                             ; preds = %2253
  %2258 = call ptr @modifier_new(i32 noundef 3) #11
  %2259 = load ptr, ptr %2220, align 8, !tbaa !470
  %2260 = getelementptr inbounds %struct.CurveModifierData, ptr %2258, i64 0, i32 1
  store ptr %2259, ptr %2260, align 8, !tbaa !478
  %2261 = getelementptr inbounds %struct.Object, ptr %2219, i64 0, i32 26
  call void @BLI_addtail(ptr noundef nonnull %2261, ptr noundef %2258) #11
  br label %2262

2262:                                             ; preds = %2233, %2257, %2248
  %2263 = phi ptr [ %2245, %2248 ], [ %2254, %2257 ], [ %2230, %2233 ]
  store i16 0, ptr %2263, align 2, !tbaa !471
  br label %2264

2264:                                             ; preds = %2262, %2226, %2229, %2244, %2223, %2253, %2218
  %2265 = load ptr, ptr %2219, align 8, !tbaa !42
  %2266 = icmp eq ptr %2265, null
  br i1 %2266, label %2267, label %2218, !llvm.loop !480

2267:                                             ; preds = %2264, %2214
  %2268 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %2269 = load ptr, ptr %2268, align 8, !tbaa !42
  %2270 = icmp eq ptr %2269, null
  br i1 %2270, label %2288, label %2271

2271:                                             ; preds = %2267, %2285
  %2272 = phi ptr [ %2286, %2285 ], [ %2269, %2267 ]
  %2273 = getelementptr inbounds %struct.Scene, ptr %2272, i64 0, i32 12
  %2274 = load i32, ptr %2273, align 8, !tbaa !481
  br label %2278

2275:                                             ; preds = %2278
  %2276 = add nuw nsw i32 %2279, 1
  %2277 = icmp eq i32 %2276, 20
  br i1 %2277, label %2285, label %2278, !llvm.loop !482

2278:                                             ; preds = %2271, %2275
  %2279 = phi i32 [ 0, %2271 ], [ %2276, %2275 ]
  %2280 = shl nuw nsw i32 1, %2279
  %2281 = and i32 %2274, %2280
  %2282 = icmp eq i32 %2281, 0
  br i1 %2282, label %2275, label %2283

2283:                                             ; preds = %2278
  %2284 = getelementptr inbounds %struct.Scene, ptr %2272, i64 0, i32 13
  store i32 %2280, ptr %2284, align 4, !tbaa !483
  br label %2285

2285:                                             ; preds = %2275, %2283
  %2286 = load ptr, ptr %2272, align 8, !tbaa !42
  %2287 = icmp eq ptr %2286, null
  br i1 %2287, label %2288, label %2271, !llvm.loop !484

2288:                                             ; preds = %2285, %2267
  %2289 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %2290 = load ptr, ptr %2289, align 8, !tbaa !42
  %2291 = icmp eq ptr %2290, null
  br i1 %2291, label %2301, label %2292

2292:                                             ; preds = %2288, %2298
  %2293 = phi ptr [ %2299, %2298 ], [ %2290, %2288 ]
  %2294 = getelementptr inbounds %struct.Tex, ptr %2293, i64 0, i32 6
  %2295 = load float, ptr %2294, align 8, !tbaa !485
  %2296 = fcmp oeq float %2295, 0.000000e+00
  br i1 %2296, label %2297, label %2298

2297:                                             ; preds = %2292
  store float 1.000000e+00, ptr %2294, align 8, !tbaa !485
  br label %2298

2298:                                             ; preds = %2292, %2297
  %2299 = load ptr, ptr %2293, align 8, !tbaa !42
  %2300 = icmp eq ptr %2299, null
  br i1 %2300, label %2301, label %2292, !llvm.loop !486

2301:                                             ; preds = %2298, %2288
  %2302 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 15
  %2303 = load ptr, ptr %2302, align 8, !tbaa !42
  %2304 = icmp eq ptr %2303, null
  br i1 %2304, label %2305, label %2309

2305:                                             ; preds = %2309, %2301
  br i1 %2270, label %2332, label %2306

2306:                                             ; preds = %2305
  %2307 = getelementptr inbounds %struct.SeqIterator, ptr %7, i64 0, i32 4
  %2308 = getelementptr inbounds %struct.SeqIterator, ptr %7, i64 0, i32 3
  br label %2314

2309:                                             ; preds = %2301, %2309
  %2310 = phi ptr [ %2312, %2309 ], [ %2303, %2301 ]
  %2311 = getelementptr inbounds %struct.Curve, ptr %2310, i64 0, i32 19
  store float 7.500000e-01, ptr %2311, align 8, !tbaa !487
  %2312 = load ptr, ptr %2310, align 8, !tbaa !42
  %2313 = icmp eq ptr %2312, null
  br i1 %2313, label %2305, label %2309, !llvm.loop !488

2314:                                             ; preds = %2306, %2329
  %2315 = phi ptr [ %2269, %2306 ], [ %2330, %2329 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #12
  %2316 = getelementptr inbounds %struct.Scene, ptr %2315, i64 0, i32 19
  %2317 = load ptr, ptr %2316, align 8, !tbaa !69
  call void @BKE_sequence_iterator_begin(ptr noundef %2317, ptr noundef nonnull %7, i8 noundef zeroext 0) #11
  %2318 = load i32, ptr %2307, align 8, !tbaa !90
  %2319 = icmp eq i32 %2318, 0
  br i1 %2319, label %2329, label %2320

2320:                                             ; preds = %2314, %2326
  %2321 = load ptr, ptr %2308, align 8, !tbaa !92
  %2322 = getelementptr inbounds %struct.Sequence, ptr %2321, i64 0, i32 17
  %2323 = load float, ptr %2322, align 8, !tbaa !489
  %2324 = fcmp oeq float %2323, 0.000000e+00
  br i1 %2324, label %2325, label %2326

2325:                                             ; preds = %2320
  store float 1.000000e+00, ptr %2322, align 8, !tbaa !489
  br label %2326

2326:                                             ; preds = %2320, %2325
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %7) #11
  %2327 = load i32, ptr %2307, align 8, !tbaa !90
  %2328 = icmp eq i32 %2327, 0
  br i1 %2328, label %2329, label %2320, !llvm.loop !490

2329:                                             ; preds = %2326, %2314
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #12
  %2330 = load ptr, ptr %2315, align 8, !tbaa !42
  %2331 = icmp eq ptr %2330, null
  br i1 %2331, label %2332, label %2314, !llvm.loop !491

2332:                                             ; preds = %2329, %2305
  %2333 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 36
  %2334 = load ptr, ptr %2333, align 8, !tbaa !42
  %2335 = icmp eq ptr %2334, null
  %2336 = load i16, ptr %12, align 8, !tbaa !34
  br i1 %2335, label %2432, label %2337

2337:                                             ; preds = %2332
  %2338 = icmp slt i16 %2336, 252
  %2339 = icmp eq i16 %2336, 252
  %2340 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  br label %2341

2341:                                             ; preds = %2337, %2429
  %2342 = phi ptr [ %2334, %2337 ], [ %2430, %2429 ]
  %2343 = getelementptr inbounds %struct.Brush, ptr %2342, i64 0, i32 21
  %2344 = load i32, ptr %2343, align 4, !tbaa !492
  %2345 = icmp eq i32 %2344, 0
  br i1 %2345, label %2346, label %2347

2346:                                             ; preds = %2341
  store i32 10, ptr %2343, align 4, !tbaa !492
  br label %2347

2347:                                             ; preds = %2346, %2341
  %2348 = phi i32 [ 10, %2346 ], [ %2344, %2341 ]
  %2349 = getelementptr inbounds %struct.Brush, ptr %2342, i64 0, i32 26
  %2350 = load float, ptr %2349, align 8, !tbaa !493
  %2351 = fcmp oeq float %2350, 0.000000e+00
  br i1 %2351, label %2352, label %2353

2352:                                             ; preds = %2347
  store float 5.000000e-01, ptr %2349, align 8, !tbaa !493
  br label %2353

2353:                                             ; preds = %2352, %2347
  %2354 = getelementptr inbounds %struct.Brush, ptr %2342, i64 0, i32 46
  %2355 = load float, ptr %2354, align 4, !tbaa !494
  %2356 = fcmp oeq float %2355, 0.000000e+00
  br i1 %2356, label %2357, label %2358

2357:                                             ; preds = %2353
  store float 1.250000e-01, ptr %2354, align 4, !tbaa !494
  br label %2358

2358:                                             ; preds = %2357, %2353
  %2359 = getelementptr inbounds %struct.Brush, ptr %2342, i64 0, i32 15
  %2360 = load i32, ptr %2359, align 4, !tbaa !495
  %2361 = icmp eq i32 %2360, 0
  br i1 %2361, label %2362, label %2363

2362:                                             ; preds = %2358
  store i32 35, ptr %2359, align 4, !tbaa !495
  br label %2363

2363:                                             ; preds = %2362, %2358
  %2364 = phi i32 [ 35, %2362 ], [ %2360, %2358 ]
  %2365 = getelementptr inbounds %struct.Brush, ptr %2342, i64 0, i32 43
  %2366 = load i32, ptr %2365, align 8, !tbaa !496
  %2367 = icmp eq i32 %2366, 0
  br i1 %2367, label %2368, label %2369

2368:                                             ; preds = %2363
  store i32 33, ptr %2365, align 8, !tbaa !496
  br label %2369

2369:                                             ; preds = %2368, %2363
  %2370 = getelementptr inbounds %struct.Brush, ptr %2342, i64 0, i32 39
  %2371 = load float, ptr %2370, align 8, !tbaa !497
  %2372 = fcmp oeq float %2371, 0.000000e+00
  br i1 %2372, label %2373, label %2374

2373:                                             ; preds = %2369
  store float 5.000000e-01, ptr %2370, align 8, !tbaa !497
  br label %2374

2374:                                             ; preds = %2373, %2369
  %2375 = getelementptr inbounds %struct.Brush, ptr %2342, i64 0, i32 40
  %2376 = load float, ptr %2375, align 4, !tbaa !498
  %2377 = fcmp oeq float %2376, 0.000000e+00
  br i1 %2377, label %2378, label %2379

2378:                                             ; preds = %2374
  store float 5.000000e-01, ptr %2375, align 4, !tbaa !498
  br label %2379

2379:                                             ; preds = %2378, %2374
  %2380 = getelementptr inbounds %struct.Brush, ptr %2342, i64 0, i32 22
  %2381 = load i32, ptr %2380, align 8, !tbaa !499
  switch i32 %2381, label %2385 [
    i32 0, label %2382
    i32 1, label %2383
  ]

2382:                                             ; preds = %2379
  store i32 75, ptr %2380, align 8, !tbaa !499
  br label %2385

2383:                                             ; preds = %2379
  %2384 = getelementptr inbounds %struct.Brush, ptr %2342, i64 0, i32 23
  store float 0x3FECCCCCC0000000, ptr %2384, align 4, !tbaa !500
  br label %2385

2385:                                             ; preds = %2379, %2382, %2383
  %2386 = getelementptr inbounds %struct.Brush, ptr %2342, i64 0, i32 24
  %2387 = load float, ptr %2386, align 8, !tbaa !501
  %2388 = fcmp oeq float %2387, 0.000000e+00
  br i1 %2388, label %2389, label %2390

2389:                                             ; preds = %2385
  store float 0x3FB99999A0000000, ptr %2386, align 8, !tbaa !501
  br label %2390

2390:                                             ; preds = %2389, %2385
  br i1 %2338, label %2395, label %2391

2391:                                             ; preds = %2390
  br i1 %2339, label %2392, label %2429

2392:                                             ; preds = %2391
  %2393 = load i16, ptr %2340, align 2, !tbaa !151
  %2394 = icmp slt i16 %2393, 5
  br i1 %2394, label %2395, label %2429

2395:                                             ; preds = %2392, %2390
  %2396 = getelementptr inbounds %struct.Brush, ptr %2342, i64 0, i32 16
  %2397 = load i32, ptr %2396, align 8, !tbaa !502
  %2398 = or i32 %2397, 262144
  store i32 %2398, ptr %2396, align 8, !tbaa !502
  %2399 = sitofp i32 %2348 to float
  %2400 = fmul float %2399, 1.000000e+02
  %2401 = sitofp i32 %2364 to float
  %2402 = fdiv float %2400, %2401
  %2403 = fptosi float %2402 to i32
  store i32 %2403, ptr %2343, align 4, !tbaa !492
  %2404 = getelementptr inbounds %struct.Brush, ptr %2342, i64 0, i32 51
  %2405 = load float, ptr %2404, align 8, !tbaa !63
  %2406 = fcmp oeq float %2405, 0.000000e+00
  br i1 %2406, label %2407, label %2416

2407:                                             ; preds = %2395
  %2408 = getelementptr inbounds %struct.Brush, ptr %2342, i64 0, i32 51, i64 1
  %2409 = load float, ptr %2408, align 4, !tbaa !63
  %2410 = fcmp oeq float %2409, 0.000000e+00
  br i1 %2410, label %2411, label %2416

2411:                                             ; preds = %2407
  %2412 = getelementptr inbounds %struct.Brush, ptr %2342, i64 0, i32 51, i64 2
  %2413 = load float, ptr %2412, align 8, !tbaa !63
  %2414 = fcmp oeq float %2413, 0.000000e+00
  br i1 %2414, label %2415, label %2416

2415:                                             ; preds = %2411
  store <2 x float> <float 1.000000e+00, float 0x3FD8F5C280000000>, ptr %2404, align 8, !tbaa !63
  store float 0x3FD8F5C280000000, ptr %2412, align 8, !tbaa !63
  br label %2416

2416:                                             ; preds = %2415, %2411, %2407, %2395
  %2417 = getelementptr inbounds %struct.Brush, ptr %2342, i64 0, i32 52
  %2418 = load float, ptr %2417, align 4, !tbaa !63
  %2419 = fcmp oeq float %2418, 0.000000e+00
  br i1 %2419, label %2420, label %2429

2420:                                             ; preds = %2416
  %2421 = getelementptr inbounds %struct.Brush, ptr %2342, i64 0, i32 52, i64 1
  %2422 = load float, ptr %2421, align 4, !tbaa !63
  %2423 = fcmp oeq float %2422, 0.000000e+00
  br i1 %2423, label %2424, label %2429

2424:                                             ; preds = %2420
  %2425 = getelementptr inbounds %struct.Brush, ptr %2342, i64 0, i32 52, i64 2
  %2426 = load float, ptr %2425, align 4, !tbaa !63
  %2427 = fcmp oeq float %2426, 0.000000e+00
  br i1 %2427, label %2428, label %2429

2428:                                             ; preds = %2424
  store <2 x float> <float 0x3FD8F5C280000000, float 0x3FD8F5C280000000>, ptr %2417, align 4, !tbaa !63
  store float 1.000000e+00, ptr %2425, align 4, !tbaa !63
  br label %2429

2429:                                             ; preds = %2391, %2392, %2428, %2424, %2420, %2416
  %2430 = load ptr, ptr %2342, align 8, !tbaa !42
  %2431 = icmp eq ptr %2430, null
  br i1 %2431, label %2432, label %2341, !llvm.loop !503

2432:                                             ; preds = %2429, %2332
  %2433 = icmp slt i16 %2336, 253
  br i1 %2433, label %2434, label %2458

2434:                                             ; preds = %2432
  %2435 = load ptr, ptr %2268, align 8, !tbaa !42
  %2436 = icmp eq ptr %2435, null
  br i1 %2436, label %2465, label %2437

2437:                                             ; preds = %2434, %2455
  %2438 = phi ptr [ %2456, %2455 ], [ %2435, %2434 ]
  %2439 = getelementptr inbounds %struct.Scene, ptr %2438, i64 0, i32 20
  %2440 = load ptr, ptr %2439, align 8, !tbaa !176
  %2441 = getelementptr inbounds %struct.ToolSettings, ptr %2440, i64 0, i32 72
  %2442 = load float, ptr %2441, align 4, !tbaa !504
  %2443 = fcmp oeq float %2442, 0.000000e+00
  br i1 %2443, label %2444, label %2445

2444:                                             ; preds = %2437
  store float 5.000000e-01, ptr %2441, align 4, !tbaa !504
  br label %2445

2445:                                             ; preds = %2444, %2437
  %2446 = getelementptr inbounds %struct.ToolSettings, ptr %2440, i64 0, i32 71
  %2447 = load float, ptr %2446, align 8, !tbaa !505
  %2448 = fcmp oeq float %2447, 0.000000e+00
  br i1 %2448, label %2449, label %2450

2449:                                             ; preds = %2445
  store float 1.250000e-01, ptr %2446, align 8, !tbaa !505
  br label %2450

2450:                                             ; preds = %2449, %2445
  %2451 = getelementptr inbounds %struct.ToolSettings, ptr %2440, i64 0, i32 70
  %2452 = load i32, ptr %2451, align 4, !tbaa !506
  %2453 = icmp eq i32 %2452, 0
  br i1 %2453, label %2454, label %2455

2454:                                             ; preds = %2450
  store i32 35, ptr %2451, align 4, !tbaa !506
  br label %2455

2455:                                             ; preds = %2450, %2454
  %2456 = load ptr, ptr %2438, align 8, !tbaa !42
  %2457 = icmp eq ptr %2456, null
  br i1 %2457, label %2465, label %2437, !llvm.loop !507

2458:                                             ; preds = %2084, %1975, %2432, %2107, %2143
  %2459 = phi i16 [ %2144, %2143 ], [ %2105, %2107 ], [ %2336, %2432 ], [ %1941, %1975 ], [ %1941, %2084 ]
  %2460 = icmp eq i16 %2459, 253
  br i1 %2460, label %2461, label %2541

2461:                                             ; preds = %2458
  %2462 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2463 = load i16, ptr %2462, align 2, !tbaa !151
  %2464 = icmp slt i16 %2463, 1
  br i1 %2464, label %2465, label %2550

2465:                                             ; preds = %2455, %2434, %2461
  %2466 = phi i16 [ 253, %2461 ], [ %2336, %2434 ], [ %2336, %2455 ]
  %2467 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %2468 = load ptr, ptr %2467, align 8, !tbaa !42
  %2469 = icmp eq ptr %2468, null
  br i1 %2469, label %2541, label %2473

2470:                                             ; preds = %2538, %2473
  %2471 = load ptr, ptr %2474, align 8, !tbaa !42
  %2472 = icmp eq ptr %2471, null
  br i1 %2472, label %2541, label %2473, !llvm.loop !508

2473:                                             ; preds = %2465, %2470
  %2474 = phi ptr [ %2471, %2470 ], [ %2468, %2465 ]
  %2475 = getelementptr inbounds %struct.Object, ptr %2474, i64 0, i32 26
  %2476 = load ptr, ptr %2475, align 8, !tbaa !42
  %2477 = icmp eq ptr %2476, null
  br i1 %2477, label %2470, label %2478

2478:                                             ; preds = %2473, %2538
  %2479 = phi ptr [ %2539, %2538 ], [ %2476, %2473 ]
  %2480 = getelementptr inbounds %struct.ModifierData, ptr %2479, i64 0, i32 2
  %2481 = load i32, ptr %2480, align 8, !tbaa !348
  %2482 = icmp eq i32 %2481, 31
  br i1 %2482, label %2483, label %2538

2483:                                             ; preds = %2478
  %2484 = getelementptr inbounds %struct.SmokeModifierData, ptr %2479, i64 0, i32 5
  %2485 = load i32, ptr %2484, align 4, !tbaa !509
  %2486 = and i32 %2485, 1
  %2487 = icmp eq i32 %2486, 0
  br i1 %2487, label %2529, label %2488

2488:                                             ; preds = %2483
  %2489 = getelementptr inbounds %struct.SmokeModifierData, ptr %2479, i64 0, i32 1
  %2490 = load ptr, ptr %2489, align 8, !tbaa !511
  %2491 = icmp eq ptr %2490, null
  br i1 %2491, label %2529, label %2492

2492:                                             ; preds = %2488
  %2493 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %2490, i64 0, i32 51
  store <2 x float> <float 1.000000e+00, float 2.000000e+00>, ptr %2493, align 4, !tbaa !63
  %2494 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %2490, i64 0, i32 37
  %2495 = load i32, ptr %2494, align 4, !tbaa !512
  %2496 = and i32 %2495, 16
  %2497 = icmp eq i32 %2496, 0
  br i1 %2497, label %2538, label %2498

2498:                                             ; preds = %2492
  %2499 = and i32 %2495, -17
  store i32 %2499, ptr %2494, align 4, !tbaa !512
  br label %2503

2500:                                             ; preds = %2526, %2503
  %2501 = load ptr, ptr %2504, align 8, !tbaa !42
  %2502 = icmp eq ptr %2501, null
  br i1 %2502, label %2538, label %2503, !llvm.loop !514

2503:                                             ; preds = %2498, %2500
  %2504 = phi ptr [ %2501, %2500 ], [ %2468, %2498 ]
  %2505 = getelementptr inbounds %struct.Object, ptr %2504, i64 0, i32 26
  %2506 = load ptr, ptr %2505, align 8, !tbaa !42
  %2507 = icmp eq ptr %2506, null
  br i1 %2507, label %2500, label %2508

2508:                                             ; preds = %2503, %2526
  %2509 = phi ptr [ %2527, %2526 ], [ %2506, %2503 ]
  %2510 = getelementptr inbounds %struct.ModifierData, ptr %2509, i64 0, i32 2
  %2511 = load i32, ptr %2510, align 8, !tbaa !348
  %2512 = icmp eq i32 %2511, 31
  br i1 %2512, label %2513, label %2526

2513:                                             ; preds = %2508
  %2514 = getelementptr inbounds %struct.SmokeModifierData, ptr %2509, i64 0, i32 5
  %2515 = load i32, ptr %2514, align 4, !tbaa !509
  %2516 = and i32 %2515, 2
  %2517 = icmp eq i32 %2516, 0
  br i1 %2517, label %2526, label %2518

2518:                                             ; preds = %2513
  %2519 = getelementptr inbounds %struct.SmokeModifierData, ptr %2509, i64 0, i32 2
  %2520 = load ptr, ptr %2519, align 8, !tbaa !515
  %2521 = icmp eq ptr %2520, null
  br i1 %2521, label %2526, label %2522

2522:                                             ; preds = %2518
  %2523 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %2520, i64 0, i32 25
  %2524 = load i32, ptr %2523, align 4, !tbaa !516
  %2525 = or i32 %2524, 4
  store i32 %2525, ptr %2523, align 4, !tbaa !516
  br label %2526

2526:                                             ; preds = %2513, %2518, %2522, %2508
  %2527 = load ptr, ptr %2509, align 8, !tbaa !42
  %2528 = icmp eq ptr %2527, null
  br i1 %2528, label %2500, label %2508, !llvm.loop !518

2529:                                             ; preds = %2488, %2483
  %2530 = and i32 %2485, 2
  %2531 = icmp eq i32 %2530, 0
  br i1 %2531, label %2538, label %2532

2532:                                             ; preds = %2529
  %2533 = getelementptr inbounds %struct.SmokeModifierData, ptr %2479, i64 0, i32 2
  %2534 = load ptr, ptr %2533, align 8, !tbaa !515
  %2535 = icmp eq ptr %2534, null
  br i1 %2535, label %2538, label %2536

2536:                                             ; preds = %2532
  %2537 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %2534, i64 0, i32 6
  store float 1.000000e+00, ptr %2537, align 4, !tbaa !519
  br label %2538

2538:                                             ; preds = %2500, %2492, %2529, %2532, %2536, %2478
  %2539 = load ptr, ptr %2479, align 8, !tbaa !42
  %2540 = icmp eq ptr %2539, null
  br i1 %2540, label %2470, label %2478, !llvm.loop !520

2541:                                             ; preds = %2470, %2465, %2458
  %2542 = phi i16 [ %2459, %2458 ], [ %2466, %2465 ], [ %2466, %2470 ]
  %2543 = icmp slt i16 %2542, 255
  br i1 %2543, label %2550, label %2544

2544:                                             ; preds = %2541
  %2545 = icmp eq i16 %2542, 255
  br i1 %2545, label %2546, label %2654

2546:                                             ; preds = %2544
  %2547 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2548 = load i16, ptr %2547, align 2, !tbaa !151
  %2549 = icmp slt i16 %2548, 1
  br i1 %2549, label %2550, label %2654

2550:                                             ; preds = %2461, %2546, %2541
  %2551 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 36
  %2552 = load ptr, ptr %2551, align 8, !tbaa !42
  %2553 = icmp eq ptr %2552, null
  br i1 %2553, label %2563, label %2554

2554:                                             ; preds = %2550, %2560
  %2555 = phi ptr [ %2561, %2560 ], [ %2552, %2550 ]
  %2556 = getelementptr inbounds %struct.Brush, ptr %2555, i64 0, i32 13
  %2557 = load i16, ptr %2556, align 2, !tbaa !521
  %2558 = icmp eq i16 %2557, 0
  br i1 %2558, label %2559, label %2560

2559:                                             ; preds = %2554
  store i16 30, ptr %2556, align 2, !tbaa !521
  br label %2560

2560:                                             ; preds = %2554, %2559
  %2561 = load ptr, ptr %2555, align 8, !tbaa !42
  %2562 = icmp eq ptr %2561, null
  br i1 %2562, label %2563, label %2554, !llvm.loop !522

2563:                                             ; preds = %2560, %2550
  %2564 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 37
  %2565 = load ptr, ptr %2564, align 8, !tbaa !42
  %2566 = icmp eq ptr %2565, null
  br i1 %2566, label %2581, label %2567

2567:                                             ; preds = %2563, %2574
  %2568 = phi ptr [ %2579, %2574 ], [ %2565, %2563 ]
  %2569 = getelementptr inbounds %struct.ParticleSettings, ptr %2568, i64 0, i32 2
  %2570 = load ptr, ptr %2569, align 8, !tbaa !523
  %2571 = icmp eq ptr %2570, null
  br i1 %2571, label %2574, label %2572

2572:                                             ; preds = %2567
  %2573 = getelementptr inbounds %struct.BoidSettings, ptr %2570, i64 0, i32 5
  store float 1.000000e+00, ptr %2573, align 4, !tbaa !524
  br label %2574

2574:                                             ; preds = %2572, %2567
  %2575 = getelementptr inbounds %struct.ParticleSettings, ptr %2568, i64 0, i32 5
  %2576 = load i32, ptr %2575, align 8, !tbaa !526
  %2577 = and i32 %2576, -17
  store i32 %2577, ptr %2575, align 8, !tbaa !526
  %2578 = getelementptr inbounds %struct.ParticleSettings, ptr %2568, i64 0, i32 102
  store float 1.000000e+00, ptr %2578, align 8, !tbaa !527
  %2579 = load ptr, ptr %2568, align 8, !tbaa !42
  %2580 = icmp eq ptr %2579, null
  br i1 %2580, label %2581, label %2567, !llvm.loop !528

2581:                                             ; preds = %2574, %2563
  %2582 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %2583 = load ptr, ptr %2582, align 8, !tbaa !42
  %2584 = icmp eq ptr %2583, null
  br i1 %2584, label %2630, label %2588

2585:                                             ; preds = %2593, %2588
  %2586 = load ptr, ptr %2589, align 8, !tbaa !42
  %2587 = icmp eq ptr %2586, null
  br i1 %2587, label %2630, label %2588, !llvm.loop !529

2588:                                             ; preds = %2581, %2585
  %2589 = phi ptr [ %2586, %2585 ], [ %2583, %2581 ]
  %2590 = getelementptr inbounds %struct.bScreen, ptr %2589, i64 0, i32 3
  %2591 = load ptr, ptr %2590, align 8, !tbaa !42
  %2592 = icmp eq ptr %2591, null
  br i1 %2592, label %2585, label %2596

2593:                                             ; preds = %2627, %2596
  %2594 = load ptr, ptr %2597, align 8, !tbaa !42
  %2595 = icmp eq ptr %2594, null
  br i1 %2595, label %2585, label %2596, !llvm.loop !530

2596:                                             ; preds = %2588, %2593
  %2597 = phi ptr [ %2594, %2593 ], [ %2591, %2588 ]
  %2598 = getelementptr inbounds %struct.ScrArea, ptr %2597, i64 0, i32 19
  %2599 = load ptr, ptr %2598, align 8, !tbaa !42
  %2600 = icmp eq ptr %2599, null
  br i1 %2600, label %2593, label %2601

2601:                                             ; preds = %2596
  %2602 = getelementptr inbounds %struct.ScrArea, ptr %2597, i64 0, i32 20
  br label %2603

2603:                                             ; preds = %2601, %2627
  %2604 = phi ptr [ %2599, %2601 ], [ %2628, %2627 ]
  %2605 = getelementptr inbounds %struct.SpaceLink, ptr %2604, i64 0, i32 3
  %2606 = load i32, ptr %2605, align 8, !tbaa !314
  %2607 = icmp eq i32 %2606, 7
  br i1 %2607, label %2608, label %2627

2608:                                             ; preds = %2603
  %2609 = getelementptr inbounds %struct.SpaceInfo, ptr %2604, i64 0, i32 6
  store i8 4, ptr %2609, align 8, !tbaa !531
  %2610 = load ptr, ptr %2602, align 8, !tbaa !42
  %2611 = icmp eq ptr %2610, null
  br i1 %2611, label %2627, label %2612

2612:                                             ; preds = %2608, %2624
  %2613 = phi ptr [ %2625, %2624 ], [ %2610, %2608 ]
  %2614 = getelementptr inbounds %struct.ARegion, ptr %2613, i64 0, i32 8
  %2615 = load i16, ptr %2614, align 2, !tbaa !355
  %2616 = icmp eq i16 %2615, 0
  br i1 %2616, label %2617, label %2624

2617:                                             ; preds = %2612
  %2618 = getelementptr inbounds %struct.ARegion, ptr %2613, i64 0, i32 2, i32 9
  store i16 2, ptr %2618, align 8, !tbaa !533
  %2619 = getelementptr inbounds %struct.ARegion, ptr %2613, i64 0, i32 2, i32 15
  store i16 10, ptr %2619, align 4, !tbaa !534
  %2620 = getelementptr inbounds %struct.ARegion, ptr %2613, i64 0, i32 2, i32 13
  store i16 2, ptr %2620, align 8, !tbaa !535
  %2621 = getelementptr inbounds %struct.ARegion, ptr %2613, i64 0, i32 2, i32 12
  store i16 771, ptr %2621, align 2, !tbaa !536
  %2622 = getelementptr inbounds %struct.ARegion, ptr %2613, i64 0, i32 2, i32 11
  store i16 1, ptr %2622, align 4, !tbaa !537
  %2623 = getelementptr inbounds %struct.ARegion, ptr %2613, i64 0, i32 2, i32 7
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %2623, align 8, !tbaa !63
  br label %2624

2624:                                             ; preds = %2612, %2617
  %2625 = load ptr, ptr %2613, align 8, !tbaa !42
  %2626 = icmp eq ptr %2625, null
  br i1 %2626, label %2627, label %2612, !llvm.loop !538

2627:                                             ; preds = %2624, %2608, %2603
  %2628 = load ptr, ptr %2604, align 8, !tbaa !42
  %2629 = icmp eq ptr %2628, null
  br i1 %2629, label %2593, label %2603, !llvm.loop !539

2630:                                             ; preds = %2585, %2581
  %2631 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %2632 = load ptr, ptr %2631, align 8, !tbaa !42
  %2633 = icmp eq ptr %2632, null
  br i1 %2633, label %2654, label %2637

2634:                                             ; preds = %2651, %2637
  %2635 = load ptr, ptr %2638, align 8, !tbaa !42
  %2636 = icmp eq ptr %2635, null
  br i1 %2636, label %2654, label %2637, !llvm.loop !540

2637:                                             ; preds = %2630, %2634
  %2638 = phi ptr [ %2635, %2634 ], [ %2632, %2630 ]
  %2639 = getelementptr inbounds %struct.Object, ptr %2638, i64 0, i32 94
  %2640 = load ptr, ptr %2639, align 8, !tbaa !42
  %2641 = icmp eq ptr %2640, null
  br i1 %2641, label %2634, label %2642

2642:                                             ; preds = %2637, %2651
  %2643 = phi ptr [ %2652, %2651 ], [ %2640, %2637 ]
  %2644 = getelementptr inbounds %struct.bActuator, ptr %2643, i64 0, i32 3
  %2645 = load i16, ptr %2644, align 8, !tbaa !52
  %2646 = icmp eq i16 %2645, 0
  br i1 %2646, label %2647, label %2651

2647:                                             ; preds = %2642
  %2648 = getelementptr inbounds %struct.bActuator, ptr %2643, i64 0, i32 8
  %2649 = load ptr, ptr %2648, align 8, !tbaa !54
  %2650 = getelementptr inbounds %struct.bObjectActuator, ptr %2649, i64 0, i32 9
  call fastcc void @mul_v3_fl(ptr noundef nonnull %2650, float noundef 0x3FEBECDE60000000) #13
  br label %2651

2651:                                             ; preds = %2647, %2642
  %2652 = load ptr, ptr %2643, align 8, !tbaa !42
  %2653 = icmp eq ptr %2652, null
  br i1 %2653, label %2634, label %2642, !llvm.loop !541

2654:                                             ; preds = %2634, %2630, %2546, %2544
  %2655 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %2656 = load ptr, ptr %2655, align 8, !tbaa !42
  %2657 = icmp eq ptr %2656, null
  br i1 %2657, label %2684, label %2661

2658:                                             ; preds = %2681, %2661
  %2659 = load ptr, ptr %2662, align 8, !tbaa !42
  %2660 = icmp eq ptr %2659, null
  br i1 %2660, label %2684, label %2661, !llvm.loop !542

2661:                                             ; preds = %2654, %2658
  %2662 = phi ptr [ %2659, %2658 ], [ %2656, %2654 ]
  %2663 = getelementptr inbounds %struct.Object, ptr %2662, i64 0, i32 94
  %2664 = load ptr, ptr %2663, align 8, !tbaa !42
  %2665 = icmp eq ptr %2664, null
  br i1 %2665, label %2658, label %2666

2666:                                             ; preds = %2661, %2681
  %2667 = phi ptr [ %2682, %2681 ], [ %2664, %2661 ]
  %2668 = getelementptr inbounds %struct.bActuator, ptr %2667, i64 0, i32 3
  %2669 = load i16, ptr %2668, align 8, !tbaa !52
  %2670 = icmp eq i16 %2669, 24
  br i1 %2670, label %2671, label %2681

2671:                                             ; preds = %2666
  %2672 = getelementptr inbounds %struct.bActuator, ptr %2667, i64 0, i32 8
  %2673 = load ptr, ptr %2672, align 8, !tbaa !54
  %2674 = icmp eq ptr %2673, null
  br i1 %2674, label %2675, label %2676

2675:                                             ; preds = %2671
  call void @init_actuator(ptr noundef nonnull %2667) #11
  br label %2681

2676:                                             ; preds = %2671
  %2677 = getelementptr inbounds %struct.bSteeringActuator, ptr %2673, i64 0, i32 2
  %2678 = load i16, ptr %2677, align 2, !tbaa !543
  %2679 = icmp eq i16 %2678, 0
  br i1 %2679, label %2680, label %2681

2680:                                             ; preds = %2676
  store i16 1, ptr %2677, align 2, !tbaa !543
  br label %2681

2681:                                             ; preds = %2675, %2680, %2676, %2666
  %2682 = load ptr, ptr %2667, align 8, !tbaa !42
  %2683 = icmp eq ptr %2682, null
  br i1 %2683, label %2658, label %2666, !llvm.loop !545

2684:                                             ; preds = %2658, %2654
  %2685 = load i16, ptr %12, align 8, !tbaa !34
  %2686 = icmp slt i16 %2685, 255
  br i1 %2686, label %2692, label %2687

2687:                                             ; preds = %2684
  switch i16 %2685, label %3153 [
    i16 255, label %2688
    i16 256, label %2780
  ]

2688:                                             ; preds = %2687
  %2689 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2690 = load i16, ptr %2689, align 2, !tbaa !151
  %2691 = icmp slt i16 %2690, 3
  br i1 %2691, label %2692, label %2716

2692:                                             ; preds = %2688, %2684
  %2693 = load ptr, ptr %2655, align 8, !tbaa !42
  %2694 = icmp eq ptr %2693, null
  br i1 %2694, label %2716, label %2698

2695:                                             ; preds = %2711, %2698
  %2696 = load ptr, ptr %2699, align 8, !tbaa !42
  %2697 = icmp eq ptr %2696, null
  br i1 %2697, label %2714, label %2698, !llvm.loop !546

2698:                                             ; preds = %2692, %2695
  %2699 = phi ptr [ %2696, %2695 ], [ %2693, %2692 ]
  %2700 = getelementptr inbounds %struct.Object, ptr %2699, i64 0, i32 26
  %2701 = load ptr, ptr %2700, align 8, !tbaa !42
  %2702 = icmp eq ptr %2701, null
  br i1 %2702, label %2695, label %2703

2703:                                             ; preds = %2698, %2711
  %2704 = phi ptr [ %2712, %2711 ], [ %2701, %2698 ]
  %2705 = getelementptr inbounds %struct.ModifierData, ptr %2704, i64 0, i32 2
  %2706 = load i32, ptr %2705, align 8, !tbaa !348
  %2707 = icmp eq i32 %2706, 39
  br i1 %2707, label %2708, label %2711

2708:                                             ; preds = %2703
  %2709 = getelementptr inbounds %struct.OceanModifierData, ptr %2704, i64 0, i32 3
  store i32 7, ptr %2709, align 8, !tbaa !547
  %2710 = getelementptr inbounds %struct.OceanModifierData, ptr %2704, i64 0, i32 2
  store ptr null, ptr %2710, align 8, !tbaa !549
  br label %2711

2711:                                             ; preds = %2703, %2708
  %2712 = load ptr, ptr %2704, align 8, !tbaa !42
  %2713 = icmp eq ptr %2712, null
  br i1 %2713, label %2695, label %2703, !llvm.loop !550

2714:                                             ; preds = %2695
  %2715 = icmp slt i16 %2685, 256
  br i1 %2715, label %2716, label %2778

2716:                                             ; preds = %2692, %2688, %2714
  %2717 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %2718 = load ptr, ptr %2717, align 8, !tbaa !42
  %2719 = icmp eq ptr %2718, null
  br i1 %2719, label %2749, label %2723

2720:                                             ; preds = %2728, %2723
  %2721 = load ptr, ptr %2724, align 8, !tbaa !42
  %2722 = icmp eq ptr %2721, null
  br i1 %2722, label %2749, label %2723, !llvm.loop !551

2723:                                             ; preds = %2716, %2720
  %2724 = phi ptr [ %2721, %2720 ], [ %2718, %2716 ]
  %2725 = getelementptr inbounds %struct.bScreen, ptr %2724, i64 0, i32 3
  %2726 = load ptr, ptr %2725, align 8, !tbaa !42
  %2727 = icmp eq ptr %2726, null
  br i1 %2727, label %2720, label %2731

2728:                                             ; preds = %2746, %2731
  %2729 = load ptr, ptr %2732, align 8, !tbaa !42
  %2730 = icmp eq ptr %2729, null
  br i1 %2730, label %2720, label %2731, !llvm.loop !552

2731:                                             ; preds = %2723, %2728
  %2732 = phi ptr [ %2729, %2728 ], [ %2726, %2723 ]
  %2733 = getelementptr inbounds %struct.ScrArea, ptr %2732, i64 0, i32 19
  %2734 = load ptr, ptr %2733, align 8, !tbaa !42
  %2735 = icmp eq ptr %2734, null
  br i1 %2735, label %2728, label %2736

2736:                                             ; preds = %2731, %2746
  %2737 = phi ptr [ %2747, %2746 ], [ %2734, %2731 ]
  %2738 = getelementptr inbounds %struct.SpaceLink, ptr %2737, i64 0, i32 3
  %2739 = load i32, ptr %2738, align 8, !tbaa !314
  %2740 = icmp eq i32 %2739, 6
  br i1 %2740, label %2741, label %2746

2741:                                             ; preds = %2736
  %2742 = getelementptr inbounds %struct.SpaceImage, ptr %2737, i64 0, i32 9, i32 11
  %2743 = load i32, ptr %2742, align 4, !tbaa !553
  %2744 = icmp eq i32 %2743, 0
  br i1 %2744, label %2745, label %2746

2745:                                             ; preds = %2741
  store i32 100, ptr %2742, align 4, !tbaa !553
  br label %2746

2746:                                             ; preds = %2741, %2745, %2736
  %2747 = load ptr, ptr %2737, align 8, !tbaa !42
  %2748 = icmp eq ptr %2747, null
  br i1 %2748, label %2728, label %2736, !llvm.loop !558

2749:                                             ; preds = %2720, %2716
  %2750 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 24
  %2751 = load ptr, ptr %2750, align 8, !tbaa !42
  %2752 = icmp eq ptr %2751, null
  br i1 %2752, label %2784, label %2756

2753:                                             ; preds = %2775, %2756
  %2754 = load ptr, ptr %2757, align 8, !tbaa !42
  %2755 = icmp eq ptr %2754, null
  br i1 %2755, label %2784, label %2756, !llvm.loop !559

2756:                                             ; preds = %2749, %2753
  %2757 = phi ptr [ %2754, %2753 ], [ %2751, %2749 ]
  %2758 = getelementptr inbounds %struct.Key, ptr %2757, i64 0, i32 6
  %2759 = load ptr, ptr %2758, align 8, !tbaa !42
  %2760 = icmp eq ptr %2759, null
  br i1 %2760, label %2753, label %2761

2761:                                             ; preds = %2756, %2775
  %2762 = phi ptr [ %2776, %2775 ], [ %2759, %2756 ]
  %2763 = getelementptr inbounds %struct.KeyBlock, ptr %2762, i64 0, i32 13
  %2764 = load float, ptr %2763, align 8, !tbaa !560
  %2765 = getelementptr inbounds %struct.KeyBlock, ptr %2762, i64 0, i32 14
  %2766 = load float, ptr %2765, align 4, !tbaa !561
  %2767 = fsub float %2764, %2766
  %2768 = call float @llvm.fabs.f32(float %2767)
  %2769 = fcmp ult float %2768, 0x3E80000000000000
  %2770 = call float @llvm.fabs.f32(float %2766)
  %2771 = fcmp ult float %2770, 0x3E80000000000000
  %2772 = select i1 %2769, i1 %2771, i1 false
  br i1 %2772, label %2773, label %2775

2773:                                             ; preds = %2761
  %2774 = fadd float %2764, 1.000000e+00
  store float %2774, ptr %2765, align 4, !tbaa !561
  br label %2775

2775:                                             ; preds = %2761, %2773
  %2776 = load ptr, ptr %2762, align 8, !tbaa !42
  %2777 = icmp eq ptr %2776, null
  br i1 %2777, label %2753, label %2761, !llvm.loop !562

2778:                                             ; preds = %2714
  %2779 = icmp eq i16 %2685, 256
  br i1 %2779, label %2780, label %2821

2780:                                             ; preds = %2687, %2778
  %2781 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2782 = load i16, ptr %2781, align 2, !tbaa !151
  %2783 = icmp slt i16 %2782, 1
  br i1 %2783, label %2784, label %2821

2784:                                             ; preds = %2753, %2749, %2780
  %2785 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 33
  %2786 = load ptr, ptr %2785, align 8, !tbaa !42
  %2787 = icmp eq ptr %2786, null
  br i1 %2787, label %2791, label %2794

2788:                                             ; preds = %2799, %2794
  %2789 = load ptr, ptr %2795, align 8, !tbaa !42
  %2790 = icmp eq ptr %2789, null
  br i1 %2790, label %2791, label %2794, !llvm.loop !563

2791:                                             ; preds = %2788, %2784
  %2792 = load ptr, ptr %2655, align 8, !tbaa !42
  %2793 = icmp eq ptr %2792, null
  br i1 %2793, label %2821, label %2803

2794:                                             ; preds = %2784, %2788
  %2795 = phi ptr [ %2789, %2788 ], [ %2786, %2784 ]
  %2796 = getelementptr inbounds %struct.bArmature, ptr %2795, i64 0, i32 2
  %2797 = load ptr, ptr %2796, align 8, !tbaa !42
  %2798 = icmp eq ptr %2797, null
  br i1 %2798, label %2788, label %2799

2799:                                             ; preds = %2794, %2799
  %2800 = phi ptr [ %2801, %2799 ], [ %2797, %2794 ]
  call fastcc void @do_version_bone_roll_256(ptr noundef nonnull %2800) #13
  %2801 = load ptr, ptr %2800, align 8, !tbaa !42
  %2802 = icmp eq ptr %2801, null
  br i1 %2802, label %2788, label %2799, !llvm.loop !564

2803:                                             ; preds = %2791, %2818
  %2804 = phi ptr [ %2819, %2818 ], [ %2792, %2791 ]
  %2805 = getelementptr inbounds %struct.Object, ptr %2804, i64 0, i32 42
  %2806 = call fastcc zeroext i8 @is_zero_v4(ptr noundef nonnull %2805) #13, !range !243
  %2807 = icmp eq i8 %2806, 0
  br i1 %2807, label %2809, label %2808

2808:                                             ; preds = %2803
  call void @unit_qt(ptr noundef nonnull %2805) #11
  br label %2809

2809:                                             ; preds = %2808, %2803
  %2810 = getelementptr inbounds %struct.Object, ptr %2804, i64 0, i32 44
  %2811 = call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %2810) #13, !range !243
  %2812 = icmp eq i8 %2811, 0
  br i1 %2812, label %2818, label %2813

2813:                                             ; preds = %2809
  %2814 = getelementptr inbounds %struct.Object, ptr %2804, i64 0, i32 46
  %2815 = load float, ptr %2814, align 4, !tbaa !565
  %2816 = fcmp oeq float %2815, 0.000000e+00
  br i1 %2816, label %2817, label %2818

2817:                                             ; preds = %2813
  call void @unit_axis_angle(ptr noundef nonnull %2810, ptr noundef nonnull %2814) #11
  br label %2818

2818:                                             ; preds = %2809, %2813, %2817
  %2819 = load ptr, ptr %2804, align 8, !tbaa !42
  %2820 = icmp eq ptr %2819, null
  br i1 %2820, label %2821, label %2803, !llvm.loop !566

2821:                                             ; preds = %2818, %2791, %2780, %2778
  %2822 = load i16, ptr %12, align 8, !tbaa !34
  %2823 = icmp slt i16 %2822, 256
  br i1 %2823, label %2830, label %2824

2824:                                             ; preds = %2821
  %2825 = icmp eq i16 %2822, 256
  br i1 %2825, label %2826, label %3153

2826:                                             ; preds = %2824
  %2827 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2828 = load i16, ptr %2827, align 2, !tbaa !151
  %2829 = icmp slt i16 %2828, 2
  br i1 %2829, label %2830, label %2965

2830:                                             ; preds = %2826, %2821
  %2831 = phi i16 [ 256, %2826 ], [ %2822, %2821 ]
  %2832 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 35
  %2833 = load ptr, ptr %2832, align 8, !tbaa !42
  %2834 = icmp eq ptr %2833, null
  br i1 %2834, label %2960, label %2835

2835:                                             ; preds = %2830, %2952
  %2836 = phi ptr [ %2956, %2952 ], [ %2833, %2830 ]
  %2837 = getelementptr inbounds %struct.bNodeTree, ptr %2836, i64 0, i32 7
  %2838 = load ptr, ptr %2837, align 8, !tbaa !42
  %2839 = icmp eq ptr %2838, null
  br i1 %2839, label %2952, label %2840

2840:                                             ; preds = %2835
  %2841 = getelementptr inbounds %struct.bNodeTree, ptr %2836, i64 0, i32 11
  br label %2849

2842:                                             ; preds = %2882, %2868
  %2843 = load ptr, ptr %2850, align 8, !tbaa !42
  %2844 = icmp eq ptr %2843, null
  br i1 %2844, label %2845, label %2849, !llvm.loop !567

2845:                                             ; preds = %2842
  br i1 %2839, label %2952, label %2846

2846:                                             ; preds = %2845
  %2847 = getelementptr inbounds %struct.bNodeTree, ptr %2836, i64 0, i32 8
  %2848 = getelementptr inbounds %struct.bNodeTree, ptr %2836, i64 0, i32 13
  br label %2889

2849:                                             ; preds = %2840, %2842
  %2850 = phi ptr [ %2838, %2840 ], [ %2843, %2842 ]
  %2851 = getelementptr inbounds %struct.bNode, ptr %2850, i64 0, i32 17
  %2852 = load ptr, ptr %2851, align 8, !tbaa !42
  %2853 = icmp eq ptr %2852, null
  br i1 %2853, label %2868, label %2854

2854:                                             ; preds = %2849
  %2855 = load i32, ptr %2841, align 8, !tbaa !568
  br label %2856

2856:                                             ; preds = %2854, %2864
  %2857 = phi i32 [ %2855, %2854 ], [ %2865, %2864 ]
  %2858 = phi ptr [ %2852, %2854 ], [ %2866, %2864 ]
  %2859 = getelementptr inbounds %struct.bNodeSocket, ptr %2858, i64 0, i32 20
  %2860 = load i32, ptr %2859, align 8, !tbaa !571
  %2861 = icmp slt i32 %2860, %2857
  br i1 %2861, label %2864, label %2862

2862:                                             ; preds = %2856
  %2863 = add nsw i32 %2860, 1
  store i32 %2863, ptr %2841, align 8, !tbaa !568
  br label %2864

2864:                                             ; preds = %2856, %2862
  %2865 = phi i32 [ %2857, %2856 ], [ %2863, %2862 ]
  %2866 = load ptr, ptr %2858, align 8, !tbaa !42
  %2867 = icmp eq ptr %2866, null
  br i1 %2867, label %2868, label %2856, !llvm.loop !574

2868:                                             ; preds = %2864, %2849
  %2869 = getelementptr inbounds %struct.bNode, ptr %2850, i64 0, i32 18
  %2870 = load ptr, ptr %2869, align 8, !tbaa !42
  %2871 = icmp eq ptr %2870, null
  br i1 %2871, label %2842, label %2872

2872:                                             ; preds = %2868
  %2873 = load i32, ptr %2841, align 8, !tbaa !568
  br label %2874

2874:                                             ; preds = %2872, %2882
  %2875 = phi i32 [ %2873, %2872 ], [ %2883, %2882 ]
  %2876 = phi ptr [ %2870, %2872 ], [ %2884, %2882 ]
  %2877 = getelementptr inbounds %struct.bNodeSocket, ptr %2876, i64 0, i32 20
  %2878 = load i32, ptr %2877, align 8, !tbaa !571
  %2879 = icmp slt i32 %2878, %2875
  br i1 %2879, label %2882, label %2880

2880:                                             ; preds = %2874
  %2881 = add nsw i32 %2878, 1
  store i32 %2881, ptr %2841, align 8, !tbaa !568
  br label %2882

2882:                                             ; preds = %2874, %2880
  %2883 = phi i32 [ %2875, %2874 ], [ %2881, %2880 ]
  %2884 = load ptr, ptr %2876, align 8, !tbaa !42
  %2885 = icmp eq ptr %2884, null
  br i1 %2885, label %2842, label %2874, !llvm.loop !575

2886:                                             ; preds = %2949, %2921
  %2887 = load ptr, ptr %2890, align 8, !tbaa !42
  %2888 = icmp eq ptr %2887, null
  br i1 %2888, label %2952, label %2889, !llvm.loop !576

2889:                                             ; preds = %2846, %2886
  %2890 = phi ptr [ %2838, %2846 ], [ %2887, %2886 ]
  %2891 = getelementptr inbounds %struct.bNode, ptr %2890, i64 0, i32 17
  %2892 = load ptr, ptr %2891, align 8, !tbaa !42
  %2893 = icmp eq ptr %2892, null
  br i1 %2893, label %2921, label %2894

2894:                                             ; preds = %2889, %2918
  %2895 = phi ptr [ %2919, %2918 ], [ %2892, %2889 ]
  %2896 = getelementptr inbounds %struct.bNodeSocket, ptr %2895, i64 0, i32 23
  %2897 = load ptr, ptr %2896, align 8, !tbaa !577
  %2898 = icmp eq ptr %2897, null
  br i1 %2898, label %2899, label %2918

2899:                                             ; preds = %2894
  %2900 = call i32 @nodeSocketIsHidden(ptr noundef nonnull %2895) #11
  %2901 = icmp eq i32 %2900, 0
  br i1 %2901, label %2902, label %2918

2902:                                             ; preds = %2899
  %2903 = getelementptr inbounds %struct.bNodeSocket, ptr %2895, i64 0, i32 5
  %2904 = getelementptr inbounds %struct.bNodeSocket, ptr %2895, i64 0, i32 7
  %2905 = load i16, ptr %2904, align 8, !tbaa !578
  %2906 = sext i16 %2905 to i32
  %2907 = call fastcc ptr @do_versions_node_group_add_socket_2_56_2(ptr noundef nonnull %2836, ptr noundef nonnull %2903, i32 noundef %2906, i32 noundef 1) #13
  %2908 = getelementptr inbounds %struct.bNodeSocket, ptr %2907, i64 0, i32 24
  %2909 = getelementptr inbounds %struct.bNodeSocket, ptr %2895, i64 0, i32 24
  call fastcc void @copy_v4_v4(ptr noundef nonnull %2908, ptr noundef nonnull %2909) #13
  %2910 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %2911 = call ptr %2910(i64 noundef 56, ptr noundef nonnull @.str.6) #11
  call void @BLI_addtail(ptr noundef nonnull %2847, ptr noundef %2911) #11
  %2912 = getelementptr inbounds %struct.bNodeLink, ptr %2911, i64 0, i32 2
  store ptr null, ptr %2912, align 8, !tbaa !579
  %2913 = getelementptr inbounds %struct.bNodeLink, ptr %2911, i64 0, i32 4
  store ptr %2907, ptr %2913, align 8, !tbaa !581
  %2914 = getelementptr inbounds %struct.bNodeLink, ptr %2911, i64 0, i32 3
  store ptr %2890, ptr %2914, align 8, !tbaa !582
  %2915 = getelementptr inbounds %struct.bNodeLink, ptr %2911, i64 0, i32 5
  store ptr %2895, ptr %2915, align 8, !tbaa !583
  %2916 = load i32, ptr %2848, align 8, !tbaa !584
  %2917 = or i32 %2916, 1
  store i32 %2917, ptr %2848, align 8, !tbaa !584
  store ptr %2911, ptr %2896, align 8, !tbaa !577
  br label %2918

2918:                                             ; preds = %2894, %2899, %2902
  %2919 = load ptr, ptr %2895, align 8, !tbaa !42
  %2920 = icmp eq ptr %2919, null
  br i1 %2920, label %2921, label %2894, !llvm.loop !585

2921:                                             ; preds = %2918, %2889
  %2922 = getelementptr inbounds %struct.bNode, ptr %2890, i64 0, i32 18
  %2923 = load ptr, ptr %2922, align 8, !tbaa !42
  %2924 = icmp eq ptr %2923, null
  br i1 %2924, label %2886, label %2925

2925:                                             ; preds = %2921, %2949
  %2926 = phi ptr [ %2950, %2949 ], [ %2923, %2921 ]
  %2927 = call i32 @nodeCountSocketLinks(ptr noundef nonnull %2836, ptr noundef nonnull %2926) #11
  %2928 = icmp eq i32 %2927, 0
  br i1 %2928, label %2929, label %2949

2929:                                             ; preds = %2925
  %2930 = call i32 @nodeSocketIsHidden(ptr noundef nonnull %2926) #11
  %2931 = icmp eq i32 %2930, 0
  br i1 %2931, label %2932, label %2949

2932:                                             ; preds = %2929
  %2933 = getelementptr inbounds %struct.bNodeSocket, ptr %2926, i64 0, i32 5
  %2934 = getelementptr inbounds %struct.bNodeSocket, ptr %2926, i64 0, i32 7
  %2935 = load i16, ptr %2934, align 8, !tbaa !578
  %2936 = sext i16 %2935 to i32
  %2937 = call fastcc ptr @do_versions_node_group_add_socket_2_56_2(ptr noundef nonnull %2836, ptr noundef nonnull %2933, i32 noundef %2936, i32 noundef 2) #13
  %2938 = getelementptr inbounds %struct.bNodeSocket, ptr %2937, i64 0, i32 24
  %2939 = getelementptr inbounds %struct.bNodeSocket, ptr %2926, i64 0, i32 24
  call fastcc void @copy_v4_v4(ptr noundef nonnull %2938, ptr noundef nonnull %2939) #13
  %2940 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %2941 = call ptr %2940(i64 noundef 56, ptr noundef nonnull @.str.6) #11
  call void @BLI_addtail(ptr noundef nonnull %2847, ptr noundef %2941) #11
  %2942 = getelementptr inbounds %struct.bNodeLink, ptr %2941, i64 0, i32 2
  store ptr %2890, ptr %2942, align 8, !tbaa !579
  %2943 = getelementptr inbounds %struct.bNodeLink, ptr %2941, i64 0, i32 4
  store ptr %2926, ptr %2943, align 8, !tbaa !581
  %2944 = getelementptr inbounds %struct.bNodeLink, ptr %2941, i64 0, i32 3
  store ptr null, ptr %2944, align 8, !tbaa !582
  %2945 = getelementptr inbounds %struct.bNodeLink, ptr %2941, i64 0, i32 5
  store ptr %2937, ptr %2945, align 8, !tbaa !583
  %2946 = load i32, ptr %2848, align 8, !tbaa !584
  %2947 = or i32 %2946, 1
  store i32 %2947, ptr %2848, align 8, !tbaa !584
  %2948 = getelementptr inbounds %struct.bNodeSocket, ptr %2937, i64 0, i32 23
  store ptr %2941, ptr %2948, align 8, !tbaa !577
  br label %2949

2949:                                             ; preds = %2925, %2929, %2932
  %2950 = load ptr, ptr %2926, align 8, !tbaa !42
  %2951 = icmp eq ptr %2950, null
  br i1 %2951, label %2886, label %2925, !llvm.loop !586

2952:                                             ; preds = %2886, %2835, %2845
  %2953 = getelementptr inbounds %struct.bNodeTree, ptr %2836, i64 0, i32 12
  %2954 = load i32, ptr %2953, align 4, !tbaa !587
  %2955 = or i32 %2954, 1024
  store i32 %2955, ptr %2953, align 4, !tbaa !587
  %2956 = load ptr, ptr %2836, align 8, !tbaa !42
  %2957 = icmp eq ptr %2956, null
  br i1 %2957, label %2958, label %2835, !llvm.loop !588

2958:                                             ; preds = %2952
  %2959 = load i16, ptr %12, align 8, !tbaa !34
  br label %2960

2960:                                             ; preds = %2958, %2830
  %2961 = phi i16 [ %2959, %2958 ], [ %2831, %2830 ]
  %2962 = icmp sgt i16 %2961, 255
  br i1 %2962, label %2963, label %2969

2963:                                             ; preds = %2960
  %2964 = icmp eq i16 %2961, 256
  br i1 %2964, label %2965, label %3153

2965:                                             ; preds = %2826, %2963
  %2966 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2967 = load i16, ptr %2966, align 2, !tbaa !151
  %2968 = icmp slt i16 %2967, 3
  br i1 %2968, label %2969, label %3090

2969:                                             ; preds = %2965, %2960
  %2970 = phi i1 [ true, %2965 ], [ false, %2960 ]
  %2971 = phi i16 [ 256, %2965 ], [ %2961, %2960 ]
  %2972 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %2973 = load ptr, ptr %2972, align 8, !tbaa !42
  %2974 = icmp eq ptr %2973, null
  br i1 %2974, label %3018, label %2975

2975:                                             ; preds = %2969, %3015
  %2976 = phi ptr [ %3016, %3015 ], [ %2973, %2969 ]
  %2977 = getelementptr inbounds %struct.Material, ptr %2976, i64 0, i32 51
  %2978 = load i32, ptr %2977, align 4, !tbaa !163
  %2979 = and i32 %2978, 65536
  %2980 = icmp eq i32 %2979, 0
  br i1 %2980, label %2981, label %3015

2981:                                             ; preds = %2975
  %2982 = getelementptr inbounds %struct.Material, ptr %2976, i64 0, i32 2
  %2983 = load i16, ptr %2982, align 8, !tbaa !164
  %2984 = and i16 %2983, 2
  %2985 = icmp eq i16 %2984, 0
  br i1 %2985, label %2986, label %3015

2986:                                             ; preds = %2981, %2998
  %2987 = phi i64 [ %3000, %2998 ], [ 0, %2981 ]
  %2988 = phi i32 [ %2999, %2998 ], [ 0, %2981 ]
  %2989 = getelementptr inbounds %struct.Material, ptr %2976, i64 0, i32 102, i64 %2987
  %2990 = load ptr, ptr %2989, align 8, !tbaa !42
  %2991 = icmp eq ptr %2990, null
  br i1 %2991, label %2998, label %2992

2992:                                             ; preds = %2986
  %2993 = getelementptr inbounds %struct.MTex, ptr %2990, i64 0, i32 1
  %2994 = load i16, ptr %2993, align 2, !tbaa !589
  %2995 = and i16 %2994, 128
  %2996 = icmp eq i16 %2995, 0
  %2997 = select i1 %2996, i32 %2988, i32 1
  br label %2998

2998:                                             ; preds = %2992, %2986
  %2999 = phi i32 [ %2988, %2986 ], [ %2997, %2992 ]
  %3000 = add nuw nsw i64 %2987, 1
  %3001 = icmp eq i64 %3000, 18
  br i1 %3001, label %3002, label %2986, !llvm.loop !590

3002:                                             ; preds = %2998
  %3003 = getelementptr inbounds %struct.Material, ptr %2976, i64 0, i32 21
  %3004 = load float, ptr %3003, align 8, !tbaa !591
  %3005 = fcmp olt float %3004, 1.000000e+00
  br i1 %3005, label %3012, label %3006

3006:                                             ; preds = %3002
  %3007 = getelementptr inbounds %struct.Material, ptr %2976, i64 0, i32 31
  %3008 = load float, ptr %3007, align 8, !tbaa !592
  %3009 = fcmp ogt float %3008, 0.000000e+00
  %3010 = icmp ne i32 %2999, 0
  %3011 = select i1 %3009, i1 true, i1 %3010
  br i1 %3011, label %3012, label %3015

3012:                                             ; preds = %3006, %3002
  %3013 = and i32 %2978, -196673
  %3014 = or disjoint i32 %3013, 65536
  store i32 %3014, ptr %2977, align 4, !tbaa !163
  br label %3015

3015:                                             ; preds = %2975, %2981, %3006, %3012
  %3016 = load ptr, ptr %2976, align 8, !tbaa !42
  %3017 = icmp eq ptr %3016, null
  br i1 %3017, label %3018, label %2975, !llvm.loop !593

3018:                                             ; preds = %3015, %2969
  %3019 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %3020 = load ptr, ptr %3019, align 8, !tbaa !42
  %3021 = icmp eq ptr %3020, null
  br i1 %3021, label %3031, label %3022

3022:                                             ; preds = %3018, %3028
  %3023 = phi ptr [ %3029, %3028 ], [ %3020, %3018 ]
  %3024 = getelementptr inbounds %struct.bScreen, ptr %3023, i64 0, i32 7
  %3025 = load i32, ptr %3024, align 8, !tbaa !594
  %3026 = icmp eq i32 %3025, 0
  br i1 %3026, label %3027, label %3028

3027:                                             ; preds = %3022
  store i32 6, ptr %3024, align 8, !tbaa !594
  br label %3028

3028:                                             ; preds = %3022, %3027
  %3029 = load ptr, ptr %3023, align 8, !tbaa !42
  %3030 = icmp eq ptr %3029, null
  br i1 %3030, label %3031, label %3022, !llvm.loop !596

3031:                                             ; preds = %3028, %3018
  %3032 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 36
  %3033 = load ptr, ptr %3032, align 8, !tbaa !42
  %3034 = icmp eq ptr %3033, null
  br i1 %3034, label %3035, label %3038

3035:                                             ; preds = %3044, %3031
  %3036 = load ptr, ptr %2655, align 8, !tbaa !42
  %3037 = icmp eq ptr %3036, null
  br i1 %3037, label %3071, label %3050

3038:                                             ; preds = %3031, %3044
  %3039 = phi ptr [ %3045, %3044 ], [ %3033, %3031 ]
  %3040 = getelementptr inbounds %struct.Brush, ptr %3039, i64 0, i32 41
  %3041 = load float, ptr %3040, align 8, !tbaa !597
  %3042 = fcmp oeq float %3041, 0.000000e+00
  br i1 %3042, label %3043, label %3044

3043:                                             ; preds = %3038
  store float 0x3FD99999A0000000, ptr %3040, align 8, !tbaa !597
  br label %3044

3044:                                             ; preds = %3038, %3043
  %3045 = load ptr, ptr %3039, align 8, !tbaa !42
  %3046 = icmp eq ptr %3045, null
  br i1 %3046, label %3035, label %3038, !llvm.loop !598

3047:                                             ; preds = %3068, %3050
  %3048 = load ptr, ptr %3051, align 8, !tbaa !42
  %3049 = icmp eq ptr %3048, null
  br i1 %3049, label %3071, label %3050, !llvm.loop !599

3050:                                             ; preds = %3035, %3047
  %3051 = phi ptr [ %3048, %3047 ], [ %3036, %3035 ]
  %3052 = getelementptr inbounds %struct.Object, ptr %3051, i64 0, i32 26
  %3053 = load ptr, ptr %3052, align 8, !tbaa !42
  %3054 = icmp eq ptr %3053, null
  br i1 %3054, label %3047, label %3055

3055:                                             ; preds = %3050, %3068
  %3056 = phi ptr [ %3069, %3068 ], [ %3053, %3050 ]
  %3057 = getelementptr inbounds %struct.ModifierData, ptr %3056, i64 0, i32 2
  %3058 = load i32, ptr %3057, align 8, !tbaa !348
  %3059 = icmp eq i32 %3058, 33
  br i1 %3059, label %3060, label %3068

3060:                                             ; preds = %3055
  %3061 = getelementptr inbounds %struct.SolidifyModifierData, ptr %3056, i64 0, i32 10
  %3062 = load i32, ptr %3061, align 8, !tbaa !600
  %3063 = and i32 %3062, 16
  %3064 = icmp eq i32 %3063, 0
  br i1 %3064, label %3068, label %3065

3065:                                             ; preds = %3060
  %3066 = getelementptr inbounds %struct.SolidifyModifierData, ptr %3056, i64 0, i32 12
  store i16 1, ptr %3066, align 2, !tbaa !602
  %3067 = and i32 %3062, -17
  store i32 %3067, ptr %3061, align 8, !tbaa !600
  br label %3068

3068:                                             ; preds = %3060, %3065, %3055
  %3069 = load ptr, ptr %3056, align 8, !tbaa !42
  %3070 = icmp eq ptr %3069, null
  br i1 %3070, label %3047, label %3055, !llvm.loop !603

3071:                                             ; preds = %3047, %3035
  %3072 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 37
  %3073 = load ptr, ptr %3072, align 8, !tbaa !42
  %3074 = icmp eq ptr %3073, null
  br i1 %3074, label %3086, label %3075

3075:                                             ; preds = %3071, %3083
  %3076 = phi ptr [ %3084, %3083 ], [ %3073, %3071 ]
  %3077 = getelementptr inbounds %struct.ParticleSettings, ptr %3076, i64 0, i32 15
  %3078 = load i32, ptr %3077, align 8, !tbaa !604
  %3079 = and i32 %3078, 8192
  %3080 = icmp eq i32 %3079, 0
  br i1 %3080, label %3083, label %3081

3081:                                             ; preds = %3075
  %3082 = getelementptr inbounds %struct.ParticleSettings, ptr %3076, i64 0, i32 23
  store i16 1, ptr %3082, align 4, !tbaa !605
  br label %3083

3083:                                             ; preds = %3075, %3081
  %3084 = load ptr, ptr %3076, align 8, !tbaa !42
  %3085 = icmp eq ptr %3084, null
  br i1 %3085, label %3086, label %3075, !llvm.loop !606

3086:                                             ; preds = %3083, %3071
  br i1 %2970, label %3087, label %3094

3087:                                             ; preds = %3086
  %3088 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3089 = load i16, ptr %3088, align 2, !tbaa !151
  br label %3090

3090:                                             ; preds = %3087, %2965
  %3091 = phi i16 [ %2971, %3087 ], [ 256, %2965 ]
  %3092 = phi i16 [ %3089, %3087 ], [ %2967, %2965 ]
  %3093 = icmp slt i16 %3092, 6
  br i1 %3093, label %3094, label %3113

3094:                                             ; preds = %3090, %3086
  %3095 = phi i16 [ %3091, %3090 ], [ %2971, %3086 ]
  %3096 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %3097 = load ptr, ptr %3096, align 8, !tbaa !42
  %3098 = icmp eq ptr %3097, null
  br i1 %3098, label %3113, label %3099

3099:                                             ; preds = %3094, %3099
  %3100 = phi ptr [ %3109, %3099 ], [ %3097, %3094 ]
  %3101 = getelementptr inbounds %struct.Mesh, ptr %3100, i64 0, i32 15
  %3102 = load ptr, ptr %3101, align 8, !tbaa !277
  %3103 = getelementptr inbounds %struct.Mesh, ptr %3100, i64 0, i32 26
  %3104 = load i32, ptr %3103, align 8, !tbaa !273
  %3105 = getelementptr inbounds %struct.Mesh, ptr %3100, i64 0, i32 12
  %3106 = load ptr, ptr %3105, align 8, !tbaa !607
  %3107 = getelementptr inbounds %struct.Mesh, ptr %3100, i64 0, i32 28
  %3108 = load i32, ptr %3107, align 8, !tbaa !608
  call void @BKE_mesh_calc_normals_tessface(ptr noundef %3102, i32 noundef %3104, ptr noundef %3106, i32 noundef %3108, ptr noundef null) #11
  %3109 = load ptr, ptr %3100, align 8, !tbaa !42
  %3110 = icmp eq ptr %3109, null
  br i1 %3110, label %3111, label %3099, !llvm.loop !609

3111:                                             ; preds = %3099
  %3112 = load i16, ptr %12, align 8, !tbaa !34
  br label %3113

3113:                                             ; preds = %3111, %3094, %3090
  %3114 = phi i16 [ %3112, %3111 ], [ %3095, %3094 ], [ %3091, %3090 ]
  %3115 = icmp slt i16 %3114, 256
  br i1 %3115, label %3122, label %3116

3116:                                             ; preds = %3113
  %3117 = icmp eq i16 %3114, 256
  br i1 %3117, label %3118, label %3153

3118:                                             ; preds = %3116
  %3119 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3120 = load i16, ptr %3119, align 2, !tbaa !151
  %3121 = icmp slt i16 %3120, 2
  br i1 %3121, label %3122, label %3162

3122:                                             ; preds = %3118, %3113
  %3123 = phi i16 [ 256, %3118 ], [ %3114, %3113 ]
  %3124 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %3125 = load ptr, ptr %3124, align 8, !tbaa !42
  %3126 = icmp eq ptr %3125, null
  br i1 %3126, label %3162, label %3127

3127:                                             ; preds = %3122, %3150
  %3128 = phi ptr [ %3151, %3150 ], [ %3125, %3122 ]
  %3129 = getelementptr inbounds %struct.Scene, ptr %3128, i64 0, i32 18
  %3130 = load ptr, ptr %3129, align 8, !tbaa !117
  %3131 = icmp eq ptr %3130, null
  br i1 %3131, label %3150, label %3132

3132:                                             ; preds = %3127
  %3133 = getelementptr inbounds %struct.bNodeTree, ptr %3130, i64 0, i32 7
  %3134 = load ptr, ptr %3133, align 8, !tbaa !42
  %3135 = icmp eq ptr %3134, null
  br i1 %3135, label %3150, label %3136

3136:                                             ; preds = %3132, %3147
  %3137 = phi ptr [ %3148, %3147 ], [ %3134, %3132 ]
  %3138 = getelementptr inbounds %struct.bNode, ptr %3137, i64 0, i32 8
  %3139 = load i16, ptr %3138, align 4, !tbaa !131
  %3140 = icmp eq i16 %3139, 211
  br i1 %3140, label %3141, label %3147

3141:                                             ; preds = %3136
  %3142 = getelementptr inbounds %struct.bNode, ptr %3137, i64 0, i32 21
  %3143 = load ptr, ptr %3142, align 8, !tbaa !450
  %3144 = getelementptr inbounds %struct.NodeBlurData, ptr %3143, i64 0, i32 9
  %3145 = load <2 x float>, ptr %3144, align 4, !tbaa !63
  %3146 = fmul <2 x float> %3145, <float 1.000000e+02, float 1.000000e+02>
  store <2 x float> %3146, ptr %3144, align 4, !tbaa !63
  br label %3147

3147:                                             ; preds = %3136, %3141
  %3148 = load ptr, ptr %3137, align 8, !tbaa !42
  %3149 = icmp eq ptr %3148, null
  br i1 %3149, label %3150, label %3136, !llvm.loop !610

3150:                                             ; preds = %3147, %3132, %3127
  %3151 = load ptr, ptr %3128, align 8, !tbaa !42
  %3152 = icmp eq ptr %3151, null
  br i1 %3152, label %3153, label %3127, !llvm.loop !611

3153:                                             ; preds = %3150, %2963, %2687, %2824, %3116
  %3154 = phi i16 [ %3114, %3116 ], [ %2822, %2824 ], [ %2685, %2687 ], [ %2961, %2963 ], [ %3123, %3150 ]
  %3155 = icmp slt i16 %3154, 258
  br i1 %3155, label %3162, label %3156

3156:                                             ; preds = %3153
  %3157 = icmp eq i16 %3154, 258
  br i1 %3157, label %3158, label %3299

3158:                                             ; preds = %3156
  %3159 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3160 = load i16, ptr %3159, align 2, !tbaa !151
  %3161 = icmp slt i16 %3160, 1
  br i1 %3161, label %3162, label %3299

3162:                                             ; preds = %3122, %3118, %3158, %3153
  %3163 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %3164 = load ptr, ptr %3163, align 8, !tbaa !42
  %3165 = icmp eq ptr %3164, null
  br i1 %3165, label %3233, label %3169

3166:                                             ; preds = %3174, %3169
  %3167 = load ptr, ptr %3170, align 8, !tbaa !42
  %3168 = icmp eq ptr %3167, null
  br i1 %3168, label %3233, label %3169, !llvm.loop !612

3169:                                             ; preds = %3162, %3166
  %3170 = phi ptr [ %3167, %3166 ], [ %3164, %3162 ]
  %3171 = getelementptr inbounds %struct.bScreen, ptr %3170, i64 0, i32 3
  %3172 = load ptr, ptr %3171, align 8, !tbaa !42
  %3173 = icmp eq ptr %3172, null
  br i1 %3173, label %3166, label %3177

3174:                                             ; preds = %3230, %3203
  %3175 = load ptr, ptr %3178, align 8, !tbaa !42
  %3176 = icmp eq ptr %3175, null
  br i1 %3176, label %3166, label %3177, !llvm.loop !613

3177:                                             ; preds = %3169, %3174
  %3178 = phi ptr [ %3175, %3174 ], [ %3172, %3169 ]
  %3179 = getelementptr inbounds %struct.ScrArea, ptr %3178, i64 0, i32 19
  %3180 = load ptr, ptr %3179, align 8, !tbaa !42
  %3181 = getelementptr inbounds %struct.SpaceLink, ptr %3180, i64 0, i32 3
  %3182 = load i32, ptr %3181, align 8, !tbaa !314
  %3183 = icmp eq i32 %3182, 6
  br i1 %3183, label %3184, label %3205

3184:                                             ; preds = %3177
  %3185 = getelementptr inbounds %struct.ScrArea, ptr %3178, i64 0, i32 20
  %3186 = load ptr, ptr %3185, align 8, !tbaa !42
  %3187 = icmp eq ptr %3186, null
  br i1 %3187, label %3205, label %3188

3188:                                             ; preds = %3184, %3200
  %3189 = phi ptr [ %3201, %3200 ], [ %3186, %3184 ]
  %3190 = getelementptr inbounds %struct.ARegion, ptr %3189, i64 0, i32 8
  %3191 = load i16, ptr %3190, align 2, !tbaa !355
  %3192 = icmp eq i16 %3191, 0
  br i1 %3192, label %3193, label %3200

3193:                                             ; preds = %3188
  %3194 = getelementptr inbounds %struct.ARegion, ptr %3189, i64 0, i32 2, i32 15
  store i16 0, ptr %3194, align 4, !tbaa !614
  %3195 = getelementptr inbounds %struct.ARegion, ptr %3189, i64 0, i32 2, i32 13
  store i16 0, ptr %3195, align 8, !tbaa !615
  %3196 = getelementptr inbounds %struct.ARegion, ptr %3189, i64 0, i32 2, i32 12
  store i16 0, ptr %3196, align 2, !tbaa !616
  %3197 = getelementptr inbounds %struct.ARegion, ptr %3189, i64 0, i32 2, i32 11
  store i16 0, ptr %3197, align 4, !tbaa !617
  %3198 = getelementptr inbounds %struct.ARegion, ptr %3189, i64 0, i32 2, i32 9
  store i16 0, ptr %3198, align 8, !tbaa !618
  %3199 = getelementptr inbounds %struct.ARegion, ptr %3189, i64 0, i32 2, i32 7
  store <2 x float> zeroinitializer, ptr %3199, align 8, !tbaa !63
  br label %3200

3200:                                             ; preds = %3188, %3193
  %3201 = load ptr, ptr %3189, align 8, !tbaa !42
  %3202 = icmp eq ptr %3201, null
  br i1 %3202, label %3203, label %3188, !llvm.loop !619

3203:                                             ; preds = %3200
  %3204 = icmp eq ptr %3180, null
  br i1 %3204, label %3174, label %3205

3205:                                             ; preds = %3177, %3184, %3203
  br label %3206

3206:                                             ; preds = %3205, %3230
  %3207 = phi ptr [ %3231, %3230 ], [ %3180, %3205 ]
  %3208 = getelementptr inbounds %struct.SpaceLink, ptr %3207, i64 0, i32 3
  %3209 = load i32, ptr %3208, align 8, !tbaa !314
  %3210 = icmp eq i32 %3209, 6
  br i1 %3210, label %3211, label %3230

3211:                                             ; preds = %3206
  %3212 = getelementptr inbounds %struct.SpaceLink, ptr %3207, i64 0, i32 2
  %3213 = load ptr, ptr %3212, align 8, !tbaa !42
  %3214 = icmp eq ptr %3213, null
  br i1 %3214, label %3230, label %3215

3215:                                             ; preds = %3211, %3227
  %3216 = phi ptr [ %3228, %3227 ], [ %3213, %3211 ]
  %3217 = getelementptr inbounds %struct.ARegion, ptr %3216, i64 0, i32 8
  %3218 = load i16, ptr %3217, align 2, !tbaa !355
  %3219 = icmp eq i16 %3218, 0
  br i1 %3219, label %3220, label %3227

3220:                                             ; preds = %3215
  %3221 = getelementptr inbounds %struct.ARegion, ptr %3216, i64 0, i32 2, i32 15
  store i16 0, ptr %3221, align 4, !tbaa !614
  %3222 = getelementptr inbounds %struct.ARegion, ptr %3216, i64 0, i32 2, i32 13
  store i16 0, ptr %3222, align 8, !tbaa !615
  %3223 = getelementptr inbounds %struct.ARegion, ptr %3216, i64 0, i32 2, i32 12
  store i16 0, ptr %3223, align 2, !tbaa !616
  %3224 = getelementptr inbounds %struct.ARegion, ptr %3216, i64 0, i32 2, i32 11
  store i16 0, ptr %3224, align 4, !tbaa !617
  %3225 = getelementptr inbounds %struct.ARegion, ptr %3216, i64 0, i32 2, i32 9
  store i16 0, ptr %3225, align 8, !tbaa !618
  %3226 = getelementptr inbounds %struct.ARegion, ptr %3216, i64 0, i32 2, i32 7
  store <2 x float> zeroinitializer, ptr %3226, align 8, !tbaa !63
  br label %3227

3227:                                             ; preds = %3215, %3220
  %3228 = load ptr, ptr %3216, align 8, !tbaa !42
  %3229 = icmp eq ptr %3228, null
  br i1 %3229, label %3230, label %3215, !llvm.loop !620

3230:                                             ; preds = %3227, %3211, %3206
  %3231 = load ptr, ptr %3207, align 8, !tbaa !42
  %3232 = icmp eq ptr %3231, null
  br i1 %3232, label %3174, label %3206, !llvm.loop !621

3233:                                             ; preds = %3166, %3162
  %3234 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %3235 = load ptr, ptr %3234, align 8, !tbaa !42
  %3236 = icmp eq ptr %3235, null
  br i1 %3236, label %3237, label %3240

3237:                                             ; preds = %3267, %3233
  %3238 = load ptr, ptr %2655, align 8, !tbaa !42
  %3239 = icmp eq ptr %3238, null
  br i1 %3239, label %3290, label %3273

3240:                                             ; preds = %3233, %3267
  %3241 = phi ptr [ %3268, %3267 ], [ %3235, %3233 ]
  %3242 = getelementptr inbounds %struct.Tex, ptr %3241, i64 0, i32 58
  %3243 = load ptr, ptr %3242, align 8, !tbaa !622
  %3244 = icmp eq ptr %3243, null
  br i1 %3244, label %3267, label %3245

3245:                                             ; preds = %3240
  %3246 = getelementptr inbounds %struct.PointDensity, ptr %3243, i64 0, i32 21
  %3247 = load float, ptr %3246, align 8, !tbaa !623
  %3248 = fcmp oeq float %3247, 0.000000e+00
  br i1 %3248, label %3249, label %3250

3249:                                             ; preds = %3245
  store float 1.000000e+02, ptr %3246, align 8, !tbaa !623
  br label %3250

3250:                                             ; preds = %3249, %3245
  %3251 = getelementptr inbounds %struct.PointDensity, ptr %3243, i64 0, i32 24
  %3252 = load ptr, ptr %3251, align 8, !tbaa !625
  %3253 = icmp eq ptr %3252, null
  br i1 %3253, label %3254, label %3267

3254:                                             ; preds = %3250
  %3255 = call ptr @curvemapping_add(i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #11
  %3256 = load ptr, ptr %3242, align 8, !tbaa !622
  %3257 = getelementptr inbounds %struct.PointDensity, ptr %3256, i64 0, i32 24
  store ptr %3255, ptr %3257, align 8, !tbaa !625
  %3258 = getelementptr inbounds %struct.CurveMapping, ptr %3255, i64 0, i32 2
  store i32 0, ptr %3258, align 8, !tbaa !444
  %3259 = getelementptr inbounds %struct.CurveMapping, ptr %3255, i64 0, i32 6, i64 0, i32 1
  %3260 = load i16, ptr %3259, align 2, !tbaa !626
  %3261 = and i16 %3260, -2
  store i16 %3261, ptr %3259, align 2, !tbaa !626
  %3262 = getelementptr inbounds %struct.CurveMapping, ptr %3255, i64 0, i32 6
  %3263 = getelementptr inbounds %struct.CurveMapping, ptr %3255, i64 0, i32 5
  call void @curvemap_reset(ptr noundef nonnull %3262, ptr noundef nonnull %3263, i32 noundef 0, i32 noundef 1) #11
  %3264 = load ptr, ptr %3242, align 8, !tbaa !622
  %3265 = getelementptr inbounds %struct.PointDensity, ptr %3264, i64 0, i32 24
  %3266 = load ptr, ptr %3265, align 8, !tbaa !625
  call void @curvemapping_changed(ptr noundef %3266, i8 noundef zeroext 0) #11
  br label %3267

3267:                                             ; preds = %3240, %3254, %3250
  %3268 = load ptr, ptr %3241, align 8, !tbaa !42
  %3269 = icmp eq ptr %3268, null
  br i1 %3269, label %3237, label %3240, !llvm.loop !628

3270:                                             ; preds = %3287, %3273
  %3271 = load ptr, ptr %3274, align 8, !tbaa !42
  %3272 = icmp eq ptr %3271, null
  br i1 %3272, label %3290, label %3273, !llvm.loop !629

3273:                                             ; preds = %3237, %3270
  %3274 = phi ptr [ %3271, %3270 ], [ %3238, %3237 ]
  %3275 = getelementptr inbounds %struct.Object, ptr %3274, i64 0, i32 94
  %3276 = load ptr, ptr %3275, align 8, !tbaa !42
  %3277 = icmp eq ptr %3276, null
  br i1 %3277, label %3270, label %3278

3278:                                             ; preds = %3273, %3287
  %3279 = phi ptr [ %3288, %3287 ], [ %3276, %3273 ]
  %3280 = getelementptr inbounds %struct.bActuator, ptr %3279, i64 0, i32 3
  %3281 = load i16, ptr %3280, align 8, !tbaa !52
  %3282 = icmp eq i16 %3281, 3
  br i1 %3282, label %3283, label %3287

3283:                                             ; preds = %3278
  %3284 = getelementptr inbounds %struct.bActuator, ptr %3279, i64 0, i32 8
  %3285 = load ptr, ptr %3284, align 8, !tbaa !54
  %3286 = getelementptr inbounds %struct.bCameraActuator, ptr %3285, i64 0, i32 4
  store float 3.125000e-02, ptr %3286, align 4, !tbaa !630
  br label %3287

3287:                                             ; preds = %3278, %3283
  %3288 = load ptr, ptr %3279, align 8, !tbaa !42
  %3289 = icmp eq ptr %3288, null
  br i1 %3289, label %3270, label %3278, !llvm.loop !632

3290:                                             ; preds = %3270, %3237
  %3291 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 37
  %3292 = load ptr, ptr %3291, align 8, !tbaa !42
  %3293 = icmp eq ptr %3292, null
  br i1 %3293, label %3299, label %3294

3294:                                             ; preds = %3290, %3294
  %3295 = phi ptr [ %3297, %3294 ], [ %3292, %3290 ]
  %3296 = getelementptr inbounds %struct.ParticleSettings, ptr %3295, i64 0, i32 44
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %3296, align 8, !tbaa !63
  %3297 = load ptr, ptr %3295, align 8, !tbaa !42
  %3298 = icmp eq ptr %3297, null
  br i1 %3298, label %3299, label %3294, !llvm.loop !633

3299:                                             ; preds = %3294, %3290, %3158, %3156
  %3300 = load i16, ptr %12, align 8, !tbaa !34
  %3301 = icmp slt i16 %3300, 259
  br i1 %3301, label %3308, label %3302

3302:                                             ; preds = %3299
  %3303 = icmp eq i16 %3300, 259
  br i1 %3303, label %3304, label %3678

3304:                                             ; preds = %3302
  %3305 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3306 = load i16, ptr %3305, align 2, !tbaa !151
  %3307 = icmp slt i16 %3306, 1
  br i1 %3307, label %3308, label %3499

3308:                                             ; preds = %3304, %3299
  %3309 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %3310 = load ptr, ptr %3309, align 8, !tbaa !42
  %3311 = icmp eq ptr %3310, null
  br i1 %3311, label %3331, label %3312

3312:                                             ; preds = %3308
  %3313 = getelementptr inbounds %struct.SeqIterator, ptr %8, i64 0, i32 4
  %3314 = getelementptr inbounds %struct.SeqIterator, ptr %8, i64 0, i32 3
  br label %3315

3315:                                             ; preds = %3312, %3328
  %3316 = phi ptr [ %3310, %3312 ], [ %3329, %3328 ]
  %3317 = getelementptr inbounds %struct.Scene, ptr %3316, i64 0, i32 22, i32 4, i32 6
  store i32 2, ptr %3317, align 8, !tbaa !634
  %3318 = getelementptr inbounds %struct.Scene, ptr %3316, i64 0, i32 23, i32 7
  store float 1.000000e+00, ptr %3318, align 8, !tbaa !635
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #12
  %3319 = getelementptr inbounds %struct.Scene, ptr %3316, i64 0, i32 19
  %3320 = load ptr, ptr %3319, align 8, !tbaa !69
  call void @BKE_sequence_iterator_begin(ptr noundef %3320, ptr noundef nonnull %8, i8 noundef zeroext 0) #11
  %3321 = load i32, ptr %3313, align 8, !tbaa !90
  %3322 = icmp eq i32 %3321, 0
  br i1 %3322, label %3328, label %3323

3323:                                             ; preds = %3315, %3323
  %3324 = load ptr, ptr %3314, align 8, !tbaa !92
  %3325 = getelementptr inbounds %struct.Sequence, ptr %3324, i64 0, i32 40
  store float 1.000000e+00, ptr %3325, align 4, !tbaa !636
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %8) #11
  %3326 = load i32, ptr %3313, align 8, !tbaa !90
  %3327 = icmp eq i32 %3326, 0
  br i1 %3327, label %3328, label %3323, !llvm.loop !637

3328:                                             ; preds = %3323, %3315
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #12
  %3329 = load ptr, ptr %3316, align 8, !tbaa !42
  %3330 = icmp eq ptr %3329, null
  br i1 %3330, label %3331, label %3315, !llvm.loop !638

3331:                                             ; preds = %3328, %3308
  %3332 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %3333 = load ptr, ptr %3332, align 8, !tbaa !42
  %3334 = icmp eq ptr %3333, null
  br i1 %3334, label %3398, label %3338

3335:                                             ; preds = %3343, %3338
  %3336 = load ptr, ptr %3339, align 8, !tbaa !42
  %3337 = icmp eq ptr %3336, null
  br i1 %3337, label %3398, label %3338, !llvm.loop !639

3338:                                             ; preds = %3331, %3335
  %3339 = phi ptr [ %3336, %3335 ], [ %3333, %3331 ]
  %3340 = getelementptr inbounds %struct.bScreen, ptr %3339, i64 0, i32 3
  %3341 = load ptr, ptr %3340, align 8, !tbaa !42
  %3342 = icmp eq ptr %3341, null
  br i1 %3342, label %3335, label %3346

3343:                                             ; preds = %3395, %3370
  %3344 = load ptr, ptr %3347, align 8, !tbaa !42
  %3345 = icmp eq ptr %3344, null
  br i1 %3345, label %3335, label %3346, !llvm.loop !640

3346:                                             ; preds = %3338, %3343
  %3347 = phi ptr [ %3344, %3343 ], [ %3341, %3338 ]
  %3348 = getelementptr inbounds %struct.ScrArea, ptr %3347, i64 0, i32 19
  %3349 = load ptr, ptr %3348, align 8, !tbaa !42
  %3350 = getelementptr inbounds %struct.SpaceLink, ptr %3349, i64 0, i32 3
  %3351 = load i32, ptr %3350, align 8, !tbaa !314
  %3352 = icmp eq i32 %3351, 8
  br i1 %3352, label %3353, label %3372

3353:                                             ; preds = %3346
  %3354 = getelementptr inbounds %struct.ScrArea, ptr %3347, i64 0, i32 20
  %3355 = load ptr, ptr %3354, align 8, !tbaa !42
  %3356 = icmp eq ptr %3355, null
  br i1 %3356, label %3372, label %3357

3357:                                             ; preds = %3353, %3367
  %3358 = phi ptr [ %3368, %3367 ], [ %3355, %3353 ]
  %3359 = getelementptr inbounds %struct.ARegion, ptr %3358, i64 0, i32 8
  %3360 = load i16, ptr %3359, align 2, !tbaa !355
  %3361 = icmp eq i16 %3360, 0
  br i1 %3361, label %3362, label %3367

3362:                                             ; preds = %3357
  %3363 = getelementptr inbounds %struct.ARegion, ptr %3358, i64 0, i32 2, i32 5, i64 1
  %3364 = load float, ptr %3363, align 4, !tbaa !63
  %3365 = fcmp oeq float %3364, 4.000000e+00
  br i1 %3365, label %3366, label %3367

3366:                                             ; preds = %3362
  store float 5.000000e-01, ptr %3363, align 4, !tbaa !63
  br label %3367

3367:                                             ; preds = %3357, %3366, %3362
  %3368 = load ptr, ptr %3358, align 8, !tbaa !42
  %3369 = icmp eq ptr %3368, null
  br i1 %3369, label %3370, label %3357, !llvm.loop !641

3370:                                             ; preds = %3367
  %3371 = icmp eq ptr %3349, null
  br i1 %3371, label %3343, label %3372

3372:                                             ; preds = %3346, %3353, %3370
  br label %3373

3373:                                             ; preds = %3372, %3395
  %3374 = phi ptr [ %3396, %3395 ], [ %3349, %3372 ]
  %3375 = getelementptr inbounds %struct.SpaceLink, ptr %3374, i64 0, i32 3
  %3376 = load i32, ptr %3375, align 8, !tbaa !314
  %3377 = icmp eq i32 %3376, 8
  br i1 %3377, label %3378, label %3395

3378:                                             ; preds = %3373
  %3379 = getelementptr inbounds %struct.SpaceLink, ptr %3374, i64 0, i32 2
  %3380 = load ptr, ptr %3379, align 8, !tbaa !42
  %3381 = icmp eq ptr %3380, null
  br i1 %3381, label %3395, label %3382

3382:                                             ; preds = %3378, %3392
  %3383 = phi ptr [ %3393, %3392 ], [ %3380, %3378 ]
  %3384 = getelementptr inbounds %struct.ARegion, ptr %3383, i64 0, i32 8
  %3385 = load i16, ptr %3384, align 2, !tbaa !355
  %3386 = icmp eq i16 %3385, 0
  br i1 %3386, label %3387, label %3392

3387:                                             ; preds = %3382
  %3388 = getelementptr inbounds %struct.ARegion, ptr %3383, i64 0, i32 2, i32 5, i64 1
  %3389 = load float, ptr %3388, align 4, !tbaa !63
  %3390 = fcmp oeq float %3389, 4.000000e+00
  br i1 %3390, label %3391, label %3392

3391:                                             ; preds = %3387
  store float 5.000000e-01, ptr %3388, align 4, !tbaa !63
  br label %3392

3392:                                             ; preds = %3382, %3391, %3387
  %3393 = load ptr, ptr %3383, align 8, !tbaa !42
  %3394 = icmp eq ptr %3393, null
  br i1 %3394, label %3395, label %3382, !llvm.loop !642

3395:                                             ; preds = %3392, %3378, %3373
  %3396 = load ptr, ptr %3374, align 8, !tbaa !42
  %3397 = icmp eq ptr %3396, null
  br i1 %3397, label %3343, label %3373, !llvm.loop !643

3398:                                             ; preds = %3335, %3331
  %3399 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 34
  %3400 = load ptr, ptr %3399, align 8, !tbaa !42
  %3401 = icmp eq ptr %3400, null
  br i1 %3401, label %3405, label %3408

3402:                                             ; preds = %3445, %3408
  %3403 = load ptr, ptr %3409, align 8, !tbaa !42
  %3404 = icmp eq ptr %3403, null
  br i1 %3404, label %3405, label %3408, !llvm.loop !644

3405:                                             ; preds = %3402, %3398
  %3406 = load ptr, ptr %2655, align 8, !tbaa !42
  %3407 = icmp eq ptr %3406, null
  br i1 %3407, label %3499, label %3451

3408:                                             ; preds = %3398, %3402
  %3409 = phi ptr [ %3403, %3402 ], [ %3400, %3398 ]
  %3410 = getelementptr inbounds %struct.bAction, ptr %3409, i64 0, i32 1
  %3411 = load ptr, ptr %3410, align 8, !tbaa !42
  %3412 = icmp eq ptr %3411, null
  br i1 %3412, label %3402, label %3413

3413:                                             ; preds = %3408, %3445
  %3414 = phi ptr [ %3446, %3445 ], [ %3411, %3408 ]
  %3415 = getelementptr inbounds %struct.FCurve, ptr %3414, i64 0, i32 9
  %3416 = load i16, ptr %3415, align 8, !tbaa !645
  %3417 = and i16 %3416, 32
  %3418 = icmp eq i16 %3417, 0
  br i1 %3418, label %3445, label %3419

3419:                                             ; preds = %3413
  %3420 = getelementptr inbounds %struct.FCurve, ptr %3414, i64 0, i32 7
  %3421 = load i32, ptr %3420, align 8, !tbaa !647
  %3422 = icmp eq i32 %3421, 0
  br i1 %3422, label %3445, label %3423

3423:                                             ; preds = %3419
  %3424 = getelementptr inbounds %struct.FCurve, ptr %3414, i64 0, i32 5
  %3425 = load ptr, ptr %3424, align 8, !tbaa !648
  %3426 = icmp eq ptr %3425, null
  br i1 %3426, label %3445, label %3427

3427:                                             ; preds = %3423, %3439
  %3428 = phi i32 [ %3440, %3439 ], [ 0, %3423 ]
  %3429 = phi ptr [ %3441, %3439 ], [ %3425, %3423 ]
  %3430 = getelementptr inbounds %struct.BezTriple, ptr %3429, i64 0, i32 5
  %3431 = load i8, ptr %3430, align 1, !tbaa !649
  %3432 = icmp eq i8 %3431, 1
  br i1 %3432, label %3433, label %3434

3433:                                             ; preds = %3427
  store i8 4, ptr %3430, align 1, !tbaa !649
  br label %3434

3434:                                             ; preds = %3433, %3427
  %3435 = getelementptr inbounds %struct.BezTriple, ptr %3429, i64 0, i32 6
  %3436 = load i8, ptr %3435, align 2, !tbaa !650
  %3437 = icmp eq i8 %3436, 1
  br i1 %3437, label %3438, label %3439

3438:                                             ; preds = %3434
  store i8 4, ptr %3435, align 2, !tbaa !650
  br label %3439

3439:                                             ; preds = %3434, %3438
  %3440 = add nuw i32 %3428, 1
  %3441 = getelementptr inbounds %struct.BezTriple, ptr %3429, i64 1
  %3442 = icmp eq i32 %3440, %3421
  br i1 %3442, label %3443, label %3427, !llvm.loop !651

3443:                                             ; preds = %3439
  %3444 = and i16 %3416, -33
  store i16 %3444, ptr %3415, align 8, !tbaa !645
  br label %3445

3445:                                             ; preds = %3419, %3423, %3413, %3443
  %3446 = load ptr, ptr %3414, align 8, !tbaa !42
  %3447 = icmp eq ptr %3446, null
  br i1 %3447, label %3402, label %3413, !llvm.loop !652

3448:                                             ; preds = %3496, %3451
  %3449 = load ptr, ptr %3452, align 8, !tbaa !42
  %3450 = icmp eq ptr %3449, null
  br i1 %3450, label %3499, label %3451, !llvm.loop !653

3451:                                             ; preds = %3405, %3448
  %3452 = phi ptr [ %3449, %3448 ], [ %3406, %3405 ]
  %3453 = getelementptr inbounds %struct.Object, ptr %3452, i64 0, i32 94
  %3454 = load ptr, ptr %3453, align 8, !tbaa !42
  %3455 = icmp eq ptr %3454, null
  br i1 %3455, label %3448, label %3456

3456:                                             ; preds = %3451
  %3457 = getelementptr inbounds %struct.Object, ptr %3452, i64 0, i32 1
  %3458 = getelementptr inbounds %struct.Object, ptr %3452, i64 0, i32 14
  br label %3459

3459:                                             ; preds = %3456, %3496
  %3460 = phi ptr [ %3454, %3456 ], [ %3497, %3496 ]
  %3461 = getelementptr inbounds %struct.bActuator, ptr %3460, i64 0, i32 3
  %3462 = load i16, ptr %3461, align 8, !tbaa !52
  switch i16 %3462, label %3496 [
    i16 1, label %3463
    i16 21, label %3492
  ]

3463:                                             ; preds = %3459
  %3464 = getelementptr inbounds %struct.bActuator, ptr %3460, i64 0, i32 8
  %3465 = load ptr, ptr %3464, align 8, !tbaa !54
  %3466 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %3467 = call ptr %3466(i64 noundef 168, ptr noundef nonnull @.str.7) #11
  %3468 = getelementptr inbounds %struct.bActionActuator, ptr %3467, i64 0, i32 1
  %3469 = load <2 x i16>, ptr %3465, align 4, !tbaa !194
  %3470 = shufflevector <2 x i16> %3469, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %3470, ptr %3468, align 8, !tbaa !194
  %3471 = getelementptr inbounds %struct.bIpoActuator, ptr %3465, i64 0, i32 2
  %3472 = getelementptr inbounds %struct.bActionActuator, ptr %3467, i64 0, i32 3
  %3473 = load <2 x float>, ptr %3471, align 4, !tbaa !63
  store <2 x float> %3473, ptr %3472, align 4, !tbaa !63
  %3474 = getelementptr inbounds %struct.bActionActuator, ptr %3467, i64 0, i32 5
  %3475 = getelementptr inbounds %struct.bIpoActuator, ptr %3465, i64 0, i32 4
  %3476 = call ptr @BLI_strncpy(ptr noundef nonnull %3474, ptr noundef nonnull %3475, i64 noundef 64) #11
  %3477 = getelementptr inbounds %struct.bActionActuator, ptr %3467, i64 0, i32 6
  %3478 = getelementptr inbounds %struct.bIpoActuator, ptr %3465, i64 0, i32 5
  %3479 = call ptr @BLI_strncpy(ptr noundef nonnull %3477, ptr noundef nonnull %3478, i64 noundef 64) #11
  %3480 = load ptr, ptr %3457, align 8, !tbaa !654
  %3481 = icmp eq ptr %3480, null
  br i1 %3481, label %3484, label %3482

3482:                                             ; preds = %3463
  %3483 = load ptr, ptr %3480, align 8, !tbaa !655
  store ptr %3483, ptr %3467, align 8, !tbaa !657
  br label %3484

3484:                                             ; preds = %3482, %3463
  %3485 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %3485(ptr noundef nonnull %3465) #11
  store ptr %3467, ptr %3464, align 8, !tbaa !54
  %3486 = getelementptr inbounds %struct.bActuator, ptr %3460, i64 0, i32 5
  store i16 15, ptr %3486, align 4, !tbaa !659
  store i16 15, ptr %3461, align 8, !tbaa !52
  %3487 = load ptr, ptr %3458, align 8, !tbaa !660
  %3488 = icmp eq ptr %3487, null
  br i1 %3488, label %3496, label %3489

3489:                                             ; preds = %3484
  %3490 = load ptr, ptr %3467, align 8, !tbaa !657
  %3491 = icmp eq ptr %3490, null
  br i1 %3491, label %3494, label %3496

3492:                                             ; preds = %3459
  %3493 = getelementptr inbounds %struct.bActuator, ptr %3460, i64 0, i32 5
  store i16 15, ptr %3493, align 4, !tbaa !659
  br label %3494

3494:                                             ; preds = %3489, %3492
  %3495 = phi i16 [ 15, %3492 ], [ 1, %3489 ]
  store i16 %3495, ptr %3461, align 8, !tbaa !52
  br label %3496

3496:                                             ; preds = %3494, %3459, %3489, %3484
  %3497 = load ptr, ptr %3460, align 8, !tbaa !42
  %3498 = icmp eq ptr %3497, null
  br i1 %3498, label %3448, label %3459, !llvm.loop !661

3499:                                             ; preds = %3448, %3405, %3304
  %3500 = load i16, ptr %12, align 8, !tbaa !34
  %3501 = icmp slt i16 %3500, 259
  br i1 %3501, label %3508, label %3502

3502:                                             ; preds = %3499
  %3503 = icmp eq i16 %3500, 259
  br i1 %3503, label %3504, label %3678

3504:                                             ; preds = %3502
  %3505 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3506 = load i16, ptr %3505, align 2, !tbaa !151
  %3507 = icmp slt i16 %3506, 2
  br i1 %3507, label %3508, label %3579

3508:                                             ; preds = %3504, %3499
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #12
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %9, ptr noundef nonnull %2) #11
  %3509 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #11
  %3510 = icmp eq i8 %3509, 1
  br i1 %3510, label %3511, label %3570

3511:                                             ; preds = %3508, %3567
  %3512 = load ptr, ptr %10, align 8, !tbaa !42
  %3513 = icmp eq ptr %3512, null
  br i1 %3513, label %3567, label %3514

3514:                                             ; preds = %3511
  %3515 = getelementptr inbounds %struct.bNodeTree, ptr %3512, i64 0, i32 7
  %3516 = load ptr, ptr %3515, align 8, !tbaa !42
  %3517 = icmp eq ptr %3516, null
  br i1 %3517, label %3540, label %3521

3518:                                             ; preds = %3534, %3530
  %3519 = load ptr, ptr %3522, align 8, !tbaa !42
  %3520 = icmp eq ptr %3519, null
  br i1 %3520, label %3538, label %3521, !llvm.loop !662

3521:                                             ; preds = %3514, %3518
  %3522 = phi ptr [ %3519, %3518 ], [ %3516, %3514 ]
  %3523 = getelementptr inbounds %struct.bNode, ptr %3522, i64 0, i32 17
  %3524 = load ptr, ptr %3523, align 8, !tbaa !42
  %3525 = icmp eq ptr %3524, null
  br i1 %3525, label %3530, label %3526

3526:                                             ; preds = %3521, %3526
  %3527 = phi ptr [ %3528, %3526 ], [ %3524, %3521 ]
  call fastcc void @do_versions_socket_default_value_259(ptr noundef nonnull %3527) #13
  %3528 = load ptr, ptr %3527, align 8, !tbaa !42
  %3529 = icmp eq ptr %3528, null
  br i1 %3529, label %3530, label %3526, !llvm.loop !663

3530:                                             ; preds = %3526, %3521
  %3531 = getelementptr inbounds %struct.bNode, ptr %3522, i64 0, i32 18
  %3532 = load ptr, ptr %3531, align 8, !tbaa !42
  %3533 = icmp eq ptr %3532, null
  br i1 %3533, label %3518, label %3534

3534:                                             ; preds = %3530, %3534
  %3535 = phi ptr [ %3536, %3534 ], [ %3532, %3530 ]
  call fastcc void @do_versions_socket_default_value_259(ptr noundef nonnull %3535) #13
  %3536 = load ptr, ptr %3535, align 8, !tbaa !42
  %3537 = icmp eq ptr %3536, null
  br i1 %3537, label %3518, label %3534, !llvm.loop !664

3538:                                             ; preds = %3518
  %3539 = load ptr, ptr %10, align 8, !tbaa !42
  br label %3540

3540:                                             ; preds = %3538, %3514
  %3541 = phi ptr [ %3539, %3538 ], [ %3512, %3514 ]
  %3542 = getelementptr inbounds %struct.bNodeTree, ptr %3541, i64 0, i32 22
  %3543 = load ptr, ptr %3542, align 8, !tbaa !42
  %3544 = icmp eq ptr %3543, null
  br i1 %3544, label %3551, label %3545

3545:                                             ; preds = %3540, %3545
  %3546 = phi ptr [ %3547, %3545 ], [ %3543, %3540 ]
  call fastcc void @do_versions_socket_default_value_259(ptr noundef nonnull %3546) #13
  %3547 = load ptr, ptr %3546, align 8, !tbaa !42
  %3548 = icmp eq ptr %3547, null
  br i1 %3548, label %3549, label %3545, !llvm.loop !665

3549:                                             ; preds = %3545
  %3550 = load ptr, ptr %10, align 8, !tbaa !42
  br label %3551

3551:                                             ; preds = %3549, %3540
  %3552 = phi ptr [ %3550, %3549 ], [ %3541, %3540 ]
  %3553 = getelementptr inbounds %struct.bNodeTree, ptr %3552, i64 0, i32 23
  %3554 = load ptr, ptr %3553, align 8, !tbaa !42
  %3555 = icmp eq ptr %3554, null
  br i1 %3555, label %3562, label %3556

3556:                                             ; preds = %3551, %3556
  %3557 = phi ptr [ %3558, %3556 ], [ %3554, %3551 ]
  call fastcc void @do_versions_socket_default_value_259(ptr noundef nonnull %3557) #13
  %3558 = load ptr, ptr %3557, align 8, !tbaa !42
  %3559 = icmp eq ptr %3558, null
  br i1 %3559, label %3560, label %3556, !llvm.loop !666

3560:                                             ; preds = %3556
  %3561 = load ptr, ptr %10, align 8, !tbaa !42
  br label %3562

3562:                                             ; preds = %3560, %3551
  %3563 = phi ptr [ %3561, %3560 ], [ %3552, %3551 ]
  %3564 = getelementptr inbounds %struct.bNodeTree, ptr %3563, i64 0, i32 13
  %3565 = load i32, ptr %3564, align 8, !tbaa !584
  %3566 = or i32 %3565, 65535
  store i32 %3566, ptr %3564, align 8, !tbaa !584
  br label %3567

3567:                                             ; preds = %3562, %3511
  %3568 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #11
  %3569 = icmp eq i8 %3568, 1
  br i1 %3569, label %3511, label %3570, !llvm.loop !667

3570:                                             ; preds = %3567, %3508
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #12
  %3571 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 35
  %3572 = load ptr, ptr %3571, align 8, !tbaa !42
  %3573 = icmp eq ptr %3572, null
  br i1 %3573, label %3579, label %3574

3574:                                             ; preds = %3570, %3574
  %3575 = phi ptr [ %3577, %3574 ], [ %3572, %3570 ]
  %3576 = getelementptr inbounds %struct.bNodeTree, ptr %3575, i64 0, i32 17
  store i32 2, ptr %3576, align 4, !tbaa !668
  %3577 = load ptr, ptr %3575, align 8, !tbaa !42
  %3578 = icmp eq ptr %3577, null
  br i1 %3578, label %3579, label %3574, !llvm.loop !669

3579:                                             ; preds = %3574, %3570, %3504
  %3580 = load i16, ptr %12, align 8, !tbaa !34
  %3581 = icmp slt i16 %3580, 259
  br i1 %3581, label %3588, label %3582

3582:                                             ; preds = %3579
  %3583 = icmp eq i16 %3580, 259
  br i1 %3583, label %3584, label %3678

3584:                                             ; preds = %3582
  %3585 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3586 = load i16, ptr %3585, align 2, !tbaa !151
  %3587 = icmp slt i16 %3586, 4
  br i1 %3587, label %3588, label %3678

3588:                                             ; preds = %3584, %3579
  %3589 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 37
  %3590 = load ptr, ptr %3589, align 8, !tbaa !42
  %3591 = icmp eq ptr %3590, null
  br i1 %3591, label %3600, label %3592

3592:                                             ; preds = %3588, %3592
  %3593 = phi ptr [ %3598, %3592 ], [ %3590, %3588 ]
  %3594 = getelementptr inbounds %struct.ParticleSettings, ptr %3593, i64 0, i32 58
  store float 0x3FC99999A0000000, ptr %3594, align 8, !tbaa !670
  %3595 = getelementptr inbounds %struct.ParticleSettings, ptr %3593, i64 0, i32 67
  %3596 = load i16, ptr %3595, align 4, !tbaa !671
  %3597 = and i16 %3596, -2
  store i16 %3597, ptr %3595, align 4, !tbaa !671
  %3598 = load ptr, ptr %3593, align 8, !tbaa !42
  %3599 = icmp eq ptr %3598, null
  br i1 %3599, label %3600, label %3592, !llvm.loop !672

3600:                                             ; preds = %3592, %3588
  %3601 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %3602 = load ptr, ptr %3601, align 8, !tbaa !42
  %3603 = icmp eq ptr %3602, null
  br i1 %3603, label %3678, label %3604

3604:                                             ; preds = %3600, %3675
  %3605 = phi ptr [ %3676, %3675 ], [ %3602, %3600 ]
  %3606 = getelementptr inbounds %struct.Scene, ptr %3605, i64 0, i32 37, i32 31
  %3607 = load float, ptr %3606, align 4, !tbaa !673
  %3608 = fcmp oeq float %3607, 0.000000e+00
  br i1 %3608, label %3609, label %3610

3609:                                             ; preds = %3604
  store float 2.000000e+00, ptr %3606, align 4, !tbaa !673
  br label %3610

3610:                                             ; preds = %3609, %3604
  %3611 = getelementptr inbounds %struct.Scene, ptr %3605, i64 0, i32 37, i32 15
  %3612 = load float, ptr %3611, align 8, !tbaa !674
  %3613 = fcmp oeq float %3612, 0.000000e+00
  br i1 %3613, label %3614, label %3615

3614:                                             ; preds = %3610
  store float 0x3FD3333340000000, ptr %3611, align 8, !tbaa !674
  br label %3615

3615:                                             ; preds = %3614, %3610
  %3616 = getelementptr inbounds %struct.Scene, ptr %3605, i64 0, i32 37, i32 15, i32 1
  %3617 = load float, ptr %3616, align 4, !tbaa !675
  %3618 = fcmp oeq float %3617, 0.000000e+00
  br i1 %3618, label %3619, label %3620

3619:                                             ; preds = %3615
  store float 0x3FC99999A0000000, ptr %3616, align 4, !tbaa !675
  br label %3620

3620:                                             ; preds = %3619, %3615
  %3621 = getelementptr inbounds %struct.Scene, ptr %3605, i64 0, i32 37, i32 15, i32 2
  %3622 = load float, ptr %3621, align 8, !tbaa !676
  %3623 = fcmp oeq float %3622, 0.000000e+00
  br i1 %3623, label %3624, label %3625

3624:                                             ; preds = %3620
  store float 0x3FE921FB60000000, ptr %3621, align 8, !tbaa !676
  br label %3625

3625:                                             ; preds = %3624, %3620
  %3626 = getelementptr inbounds %struct.Scene, ptr %3605, i64 0, i32 37, i32 15, i32 3
  %3627 = load float, ptr %3626, align 4, !tbaa !677
  %3628 = fcmp oeq float %3627, 0.000000e+00
  br i1 %3628, label %3629, label %3630

3629:                                             ; preds = %3625
  store float 0x3FECCCCCC0000000, ptr %3626, align 4, !tbaa !677
  br label %3630

3630:                                             ; preds = %3629, %3625
  %3631 = getelementptr inbounds %struct.Scene, ptr %3605, i64 0, i32 37, i32 15, i32 4
  %3632 = load float, ptr %3631, align 8, !tbaa !678
  %3633 = fcmp oeq float %3632, 0.000000e+00
  br i1 %3633, label %3634, label %3635

3634:                                             ; preds = %3630
  store float 2.000000e+00, ptr %3631, align 8, !tbaa !678
  br label %3635

3635:                                             ; preds = %3634, %3630
  %3636 = getelementptr inbounds %struct.Scene, ptr %3605, i64 0, i32 37, i32 15, i32 5
  %3637 = load float, ptr %3636, align 4, !tbaa !679
  %3638 = fcmp oeq float %3637, 0.000000e+00
  br i1 %3638, label %3639, label %3640

3639:                                             ; preds = %3635
  store float 0x3FE3333340000000, ptr %3636, align 4, !tbaa !679
  br label %3640

3640:                                             ; preds = %3639, %3635
  %3641 = getelementptr inbounds %struct.Scene, ptr %3605, i64 0, i32 37, i32 15, i32 6
  %3642 = load float, ptr %3641, align 8, !tbaa !680
  %3643 = fcmp oeq float %3642, 0.000000e+00
  br i1 %3643, label %3644, label %3645

3644:                                             ; preds = %3640
  store float 1.200000e+01, ptr %3641, align 8, !tbaa !680
  br label %3645

3645:                                             ; preds = %3644, %3640
  %3646 = getelementptr inbounds %struct.Scene, ptr %3605, i64 0, i32 37, i32 15, i32 7
  %3647 = load float, ptr %3646, align 4, !tbaa !681
  %3648 = fcmp oeq float %3647, 0.000000e+00
  br i1 %3648, label %3649, label %3650

3649:                                             ; preds = %3645
  store float 0x3FF4CCCCC0000000, ptr %3646, align 4, !tbaa !681
  br label %3650

3650:                                             ; preds = %3649, %3645
  %3651 = getelementptr inbounds %struct.Scene, ptr %3605, i64 0, i32 37, i32 15, i32 8
  %3652 = load float, ptr %3651, align 8, !tbaa !682
  %3653 = fcmp oeq float %3652, 0.000000e+00
  br i1 %3653, label %3654, label %3655

3654:                                             ; preds = %3650
  store float 8.000000e+00, ptr %3651, align 8, !tbaa !682
  br label %3655

3655:                                             ; preds = %3654, %3650
  %3656 = getelementptr inbounds %struct.Scene, ptr %3605, i64 0, i32 37, i32 15, i32 9
  %3657 = load float, ptr %3656, align 4, !tbaa !683
  %3658 = fcmp oeq float %3657, 0.000000e+00
  br i1 %3658, label %3659, label %3660

3659:                                             ; preds = %3655
  store float 2.000000e+01, ptr %3656, align 4, !tbaa !683
  br label %3660

3660:                                             ; preds = %3659, %3655
  %3661 = getelementptr inbounds %struct.Scene, ptr %3605, i64 0, i32 37, i32 15, i32 10
  %3662 = load i32, ptr %3661, align 8, !tbaa !684
  %3663 = icmp slt i32 %3662, 3
  br i1 %3663, label %3664, label %3665

3664:                                             ; preds = %3660
  store i32 6, ptr %3661, align 8, !tbaa !684
  br label %3665

3665:                                             ; preds = %3664, %3660
  %3666 = getelementptr inbounds %struct.Scene, ptr %3605, i64 0, i32 37, i32 15, i32 11
  %3667 = load float, ptr %3666, align 4, !tbaa !685
  %3668 = fcmp oeq float %3667, 0.000000e+00
  br i1 %3668, label %3669, label %3670

3669:                                             ; preds = %3665
  store float 6.000000e+00, ptr %3666, align 4, !tbaa !685
  br label %3670

3670:                                             ; preds = %3669, %3665
  %3671 = getelementptr inbounds %struct.Scene, ptr %3605, i64 0, i32 37, i32 15, i32 12
  %3672 = load float, ptr %3671, align 8, !tbaa !686
  %3673 = fcmp oeq float %3672, 0.000000e+00
  br i1 %3673, label %3674, label %3675

3674:                                             ; preds = %3670
  store float 1.000000e+00, ptr %3671, align 8, !tbaa !686
  br label %3675

3675:                                             ; preds = %3670, %3674
  %3676 = load ptr, ptr %3605, align 8, !tbaa !42
  %3677 = icmp eq ptr %3676, null
  br i1 %3677, label %3678, label %3604, !llvm.loop !687

3678:                                             ; preds = %3675, %3502, %3600, %3302, %3584, %3582
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @blo_do_versions_newlibadr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BKE_sequence_iterator_begin(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_join_dirfile(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @sound_new_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_sequence_iterator_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_sequence_iterator_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_versions_windowmanager_2_50(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !688 {
  %2 = getelementptr inbounds %struct.bScreen, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = icmp eq ptr %3, null
  br i1 %4, label %63, label %5

5:                                                ; preds = %1, %60
  %6 = phi ptr [ %61, %60 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.ScrArea, ptr %6, i64 0, i32 12
  %8 = load i16, ptr %7, align 2, !tbaa !689
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ScrArea, ptr %6, i64 0, i32 20
  tail call fastcc void @area_add_header_region(ptr noundef nonnull %6, ptr noundef nonnull %11) #13
  br label %12

12:                                               ; preds = %10, %5
  %13 = getelementptr inbounds %struct.ScrArea, ptr %6, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !353
  %15 = getelementptr inbounds %struct.ScrArea, ptr %6, i64 0, i32 20
  tail call fastcc void @area_add_window_regions(ptr noundef nonnull %6, ptr noundef %14, ptr noundef nonnull %15) #13
  %16 = load ptr, ptr %13, align 8, !tbaa !42
  %17 = icmp eq ptr %16, null
  br i1 %17, label %39, label %21

18:                                               ; preds = %27
  %19 = load ptr, ptr %13, align 8, !tbaa !42
  %20 = icmp eq ptr %19, null
  br i1 %20, label %39, label %30

21:                                               ; preds = %12, %27
  %22 = phi ptr [ %28, %27 ], [ %16, %12 ]
  %23 = getelementptr inbounds %struct.SpaceLink, ptr %22, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !314
  %25 = icmp eq i32 %24, 10
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, ptr %23, align 8, !tbaa !314
  br label %27

27:                                               ; preds = %21, %26
  %28 = load ptr, ptr %22, align 8, !tbaa !42
  %29 = icmp eq ptr %28, null
  br i1 %29, label %18, label %21, !llvm.loop !690

30:                                               ; preds = %18, %36
  %31 = phi ptr [ %37, %36 ], [ %19, %18 ]
  %32 = getelementptr inbounds %struct.SpaceLink, ptr %31, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !314
  %34 = icmp eq i32 %33, 11
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, ptr %32, align 8, !tbaa !314
  br label %36

36:                                               ; preds = %30, %35
  %37 = load ptr, ptr %31, align 8, !tbaa !42
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %30, !llvm.loop !691

39:                                               ; preds = %18, %12
  %40 = getelementptr inbounds %struct.ScrArea, ptr %6, i64 0, i32 8
  %41 = load i8, ptr %40, align 8, !tbaa !692
  %42 = getelementptr inbounds %struct.ScrArea, ptr %6, i64 0, i32 9
  store i8 %41, ptr %42, align 1, !tbaa !693
  br label %60

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.ScrArea, ptr %6, i64 0, i32 8
  %45 = load i8, ptr %44, align 8, !tbaa !692
  %46 = getelementptr inbounds %struct.ScrArea, ptr %6, i64 0, i32 9
  store i8 %45, ptr %46, align 1, !tbaa !693
  br i1 %20, label %60, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %19, align 8, !tbaa !694
  %49 = icmp eq ptr %48, null
  br i1 %49, label %60, label %50

50:                                               ; preds = %47, %56
  %51 = phi ptr [ %58, %56 ], [ %48, %47 ]
  %52 = load i16, ptr %7, align 2, !tbaa !689
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.SpaceLink, ptr %51, i64 0, i32 2
  tail call fastcc void @area_add_header_region(ptr noundef nonnull %6, ptr noundef nonnull %55) #13
  br label %56

56:                                               ; preds = %54, %50
  %57 = getelementptr inbounds %struct.SpaceLink, ptr %51, i64 0, i32 2
  tail call fastcc void @area_add_window_regions(ptr noundef nonnull %6, ptr noundef nonnull %51, ptr noundef nonnull %57) #13
  %58 = load ptr, ptr %51, align 8, !tbaa !694
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %50, !llvm.loop !695

60:                                               ; preds = %56, %39, %47, %43
  %61 = load ptr, ptr %6, align 8, !tbaa !42
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %5, !llvm.loop !696

63:                                               ; preds = %60, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_versions_gpencil_2_50(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !697 {
  %3 = getelementptr inbounds %struct.bScreen, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = icmp eq ptr %4, null
  br i1 %5, label %42, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 41
  br label %11

8:                                                ; preds = %39, %11
  %9 = load ptr, ptr %12, align 8, !tbaa !42
  %10 = icmp eq ptr %9, null
  br i1 %10, label %42, label %11, !llvm.loop !698

11:                                               ; preds = %6, %8
  %12 = phi ptr [ %4, %6 ], [ %9, %8 ]
  %13 = getelementptr inbounds %struct.ScrArea, ptr %12, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = icmp eq ptr %14, null
  br i1 %15, label %8, label %16

16:                                               ; preds = %11, %39
  %17 = phi ptr [ %40, %39 ], [ %14, %11 ]
  %18 = getelementptr inbounds %struct.SpaceLink, ptr %17, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !314
  switch i32 %19, label %39 [
    i32 1, label %20
    i32 16, label %25
    i32 8, label %30
    i32 6, label %35
  ]

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.View3D, ptr %17, i64 0, i32 53
  %22 = load ptr, ptr %21, align 8, !tbaa !699
  %23 = icmp eq ptr %22, null
  br i1 %23, label %39, label %24

24:                                               ; preds = %20
  tail call fastcc void @versions_gpencil_add_main(ptr noundef nonnull %7, ptr noundef nonnull %22, ptr noundef nonnull @.str.14) #13
  br label %37

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.SpaceNode, ptr %17, i64 0, i32 28
  %27 = load ptr, ptr %26, align 8, !tbaa !700
  %28 = icmp eq ptr %27, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %25
  tail call fastcc void @versions_gpencil_add_main(ptr noundef nonnull %7, ptr noundef nonnull %27, ptr noundef nonnull @.str.15) #13
  br label %37

30:                                               ; preds = %16
  %31 = getelementptr inbounds %struct.SpaceSeq, ptr %17, i64 0, i32 17
  %32 = load ptr, ptr %31, align 8, !tbaa !701
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  tail call fastcc void @versions_gpencil_add_main(ptr noundef nonnull %7, ptr noundef nonnull %32, ptr noundef nonnull @.str.15) #13
  br label %37

35:                                               ; preds = %16
  %36 = getelementptr inbounds %struct.SpaceImage, ptr %17, i64 0, i32 10
  br label %37

37:                                               ; preds = %35, %24, %29, %34
  %38 = phi ptr [ %31, %34 ], [ %26, %29 ], [ %21, %24 ], [ %36, %35 ]
  store ptr null, ptr %38, align 8, !tbaa !42
  br label %39

39:                                               ; preds = %37, %16, %30, %25, %20
  %40 = load ptr, ptr %17, align 8, !tbaa !42
  %41 = icmp eq ptr %40, null
  br i1 %41, label %8, label %16, !llvm.loop !702

42:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: optsize
declare void @multires_load_old(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: optsize
declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_version_mtex_factor_2_50(ptr noundef readonly %0, i16 noundef signext %1) unnamed_addr #4 !PGOFuncName !703 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %96, label %4

4:                                                ; preds = %2, %93
  %5 = phi i64 [ %94, %93 ], [ 0, %2 ]
  %6 = getelementptr inbounds ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = icmp eq ptr %7, null
  br i1 %8, label %93, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 2
  %11 = load i16, ptr %10, align 4, !tbaa !704
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 28
  %14 = load <2 x float>, ptr %13, align 4, !tbaa !63
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %16 = and i32 %12, 14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 31
  %20 = load float, ptr %19, align 8, !tbaa !705
  %21 = fneg float %20
  store float %21, ptr %19, align 8, !tbaa !705
  br label %22

22:                                               ; preds = %18, %9
  %23 = and i32 %12, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 30
  %27 = load float, ptr %26, align 4, !tbaa !706
  %28 = fneg float %27
  store float %28, ptr %26, align 4, !tbaa !706
  br label %29

29:                                               ; preds = %25, %22
  %30 = and i32 %12, 8192
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 32
  %34 = load float, ptr %33, align 4, !tbaa !707
  %35 = fneg float %34
  store float %35, ptr %33, align 4, !tbaa !707
  br label %36

36:                                               ; preds = %32, %29
  %37 = insertelement <4 x i32> poison, i32 %12, i64 0
  %38 = shufflevector <4 x i32> %37, <4 x i32> poison, <4 x i32> zeroinitializer
  %39 = and <4 x i32> %38, <i32 4, i32 8, i32 128, i32 16>
  %40 = fneg <2 x float> %14
  %41 = shufflevector <2 x float> %40, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %42 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 33
  %43 = icmp eq <4 x i32> %39, zeroinitializer
  %44 = select <4 x i1> %43, <4 x float> %15, <4 x float> %41
  store <4 x float> %44, ptr %42, align 8, !tbaa !63
  %45 = and <4 x i32> %38, <i32 32, i32 64, i32 256, i32 512>
  %46 = extractelement <2 x float> %14, i64 1
  %47 = extractelement <2 x float> %40, i64 1
  %48 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 37
  %49 = icmp eq <4 x i32> %45, zeroinitializer
  %50 = shufflevector <2 x float> %14, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %51 = shufflevector <2 x float> %40, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %52 = select <4 x i1> %49, <4 x float> %50, <4 x float> %51
  store <4 x float> %52, ptr %48, align 8, !tbaa !63
  %53 = insertelement <2 x i32> poison, i32 %12, i64 0
  %54 = shufflevector <2 x i32> %53, <2 x i32> poison, <2 x i32> zeroinitializer
  %55 = and <2 x i32> %54, <i32 1024, i32 2048>
  %56 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 41
  %57 = icmp eq <2 x i32> %55, zeroinitializer
  %58 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %59 = shufflevector <2 x float> %40, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %60 = select <2 x i1> %57, <2 x float> %58, <2 x float> %59
  store <2 x float> %60, ptr %56, align 8, !tbaa !63
  %61 = and i32 %12, 1
  %62 = icmp eq i32 %61, 0
  %63 = extractelement <2 x float> %14, i64 0
  %64 = extractelement <2 x float> %40, i64 0
  %65 = select i1 %62, float %63, float %64
  %66 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 43
  store float %65, ptr %66, align 8, !tbaa !708
  %67 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 44
  store <4 x float> %44, ptr %67, align 4, !tbaa !63
  %68 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 48
  %69 = extractelement <4 x float> %52, i64 0
  store float %69, ptr %68, align 4, !tbaa !709
  %70 = select i1 %62, float %46, float %47
  %71 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 49
  store float %70, ptr %71, align 8, !tbaa !710
  %72 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 50
  %73 = shufflevector <4 x float> %44, <4 x float> poison, <2 x i32> <i32 3, i32 2>
  store <2 x float> %73, ptr %72, align 4, !tbaa !63
  %74 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 53
  %75 = shufflevector <4 x float> %52, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %75, ptr %74, align 8, !tbaa !63
  %76 = extractelement <4 x i1> %43, i64 0
  %77 = select i1 %76, float %46, float %47
  %78 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 55
  store float %77, ptr %78, align 8, !tbaa !711
  %79 = select i1 %24, float %46, float %47
  %80 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 57
  store float %79, ptr %80, align 8, !tbaa !712
  %81 = extractelement <4 x i1> %43, i64 1
  %82 = select i1 %81, float %46, float %47
  %83 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 58
  store float %82, ptr %83, align 4, !tbaa !713
  %84 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 59
  store float %69, ptr %84, align 8, !tbaa !714
  %85 = select i1 %24, float %63, float %64
  %86 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 61
  store float %85, ptr %86, align 8, !tbaa !715
  %87 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 62
  %88 = shufflevector <4 x float> %44, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %88, ptr %87, align 4, !tbaa !63
  %89 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 64
  store float %70, ptr %89, align 4, !tbaa !716
  switch i16 %1, label %93 [
    i16 16717, label %91
    i16 16716, label %91
    i16 20311, label %90
  ]

90:                                               ; preds = %36
  br label %91

91:                                               ; preds = %36, %36, %90
  %92 = phi float [ %85, %90 ], [ %65, %36 ], [ %65, %36 ]
  store float %92, ptr %13, align 4, !tbaa !717
  br label %93

93:                                               ; preds = %91, %36, %4
  %94 = add nuw nsw i64 %5, 1
  %95 = icmp eq i64 %94, 18
  br i1 %95, label %96, label %4, !llvm.loop !718

96:                                               ; preds = %93, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_zero_v3(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !719 {
  %2 = load float, ptr %0, align 4, !tbaa !63
  %3 = fcmp oeq float %2, 0.000000e+00
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !63
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !63
  %11 = fcmp oeq float %10, 0.000000e+00
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %8, %4, %1
  %14 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !720 {
  %3 = load float, ptr %1, align 4, !tbaa !63
  store float %3, ptr %0, align 4, !tbaa !63
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !63
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !63
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !63
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !63
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_versions_seq_unique_name_all_strips(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !721 {
  %3 = load ptr, ptr %1, align 8, !tbaa !42
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  br label %7

7:                                                ; preds = %5, %15
  %8 = phi ptr [ %3, %5 ], [ %16, %15 ]
  %9 = load ptr, ptr %6, align 8, !tbaa !69
  %10 = getelementptr inbounds %struct.Editing, ptr %9, i64 0, i32 1
  tail call void @BKE_sequence_base_unique_name_recursive(ptr noundef nonnull %10, ptr noundef nonnull %8) #11
  %11 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 36
  %12 = load ptr, ptr %11, align 8, !tbaa !722
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call fastcc void @do_versions_seq_unique_name_all_strips(ptr noundef nonnull %0, ptr noundef nonnull %11) #13
  br label %15

15:                                               ; preds = %14, %7
  %16 = load ptr, ptr %8, align 8, !tbaa !42
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %7, !llvm.loop !723

18:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: optsize
declare void @nodeUniqueName(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @srgb_to_linearrgb_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !724 {
  %3 = load float, ptr %1, align 4, !tbaa !63
  %4 = tail call float @srgb_to_linearrgb(float noundef %3) #11
  store float %4, ptr %0, align 4, !tbaa !63
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !63
  %7 = tail call float @srgb_to_linearrgb(float noundef %6) #11
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !63
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !63
  %11 = tail call float @srgb_to_linearrgb(float noundef %10) #11
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !63
  ret void
}

; Function Attrs: optsize
declare void @multires_load_old_250(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_spacetype_from_id(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_area_region_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sequencer_init_preview_region(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !725 {
  %2 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 8
  store i16 7, ptr %2, align 2, !tbaa !355
  %3 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 9
  store i16 1, ptr %3, align 8, !tbaa !726
  %4 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 10
  %5 = load i16, ptr %4, align 2, !tbaa !727
  %6 = or i16 %5, 1
  store i16 %6, ptr %4, align 2, !tbaa !727
  %7 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 12
  store i16 6, ptr %8, align 2, !tbaa !536
  %9 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 7
  store <2 x float> <float 0x3EE4F8B580000000, float 1.000000e+05>, ptr %9, align 8, !tbaa !63
  store <4 x float> <float -9.600000e+02, float 9.600000e+02, float -5.400000e+02, float 5.400000e+02>, ptr %7, align 8, !tbaa !63
  %10 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 5
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.200000e+04, float 1.200000e+04>, ptr %10, align 8, !tbaa !63
  %11 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !728
  %12 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 15
  store i16 0, ptr %12, align 4, !tbaa !534
  %13 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 11
  store i16 0, ptr %13, align 4, !tbaa !537
  ret void
}

; Function Attrs: optsize
declare void @animviz_settings_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @default_mtex(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_version_constraints_radians_degrees_250(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !729 {
  %2 = load ptr, ptr %0, align 8, !tbaa !42
  %3 = icmp eq ptr %2, null
  br i1 %3, label %34, label %4

4:                                                ; preds = %1, %31
  %5 = phi ptr [ %32, %31 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.bConstraint, ptr %5, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !730
  switch i16 %7, label %31 [
    i16 17, label %8
    i16 3, label %17
    i16 5, label %23
  ]

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.bConstraint, ptr %5, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !732
  %11 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %10, i64 0, i32 6
  %12 = load <2 x float>, ptr %11, align 8, !tbaa !63
  %13 = fmul <2 x float> %12, <float 0x3F91DF46A0000000, float 0x3F91DF46A0000000>
  store <2 x float> %13, ptr %11, align 8, !tbaa !63
  %14 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %10, i64 0, i32 8
  %15 = load float, ptr %14, align 8, !tbaa !733
  %16 = fmul float %15, 0x3F91DF46A0000000
  store float %16, ptr %14, align 8, !tbaa !733
  br label %31

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.bConstraint, ptr %5, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !732
  %20 = getelementptr inbounds %struct.bKinematicConstraint, ptr %19, i64 0, i32 8
  %21 = load float, ptr %20, align 8, !tbaa !735
  %22 = fmul float %21, 0x3F91DF46A0000000
  store float %22, ptr %20, align 8, !tbaa !735
  br label %31

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.bConstraint, ptr %5, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !732
  %26 = load <4 x float>, ptr %25, align 4, !tbaa !63
  %27 = fmul <4 x float> %26, <float 0x3F91DF46A0000000, float 0x3F91DF46A0000000, float 0x3F91DF46A0000000, float 0x3F91DF46A0000000>
  store <4 x float> %27, ptr %25, align 4, !tbaa !63
  %28 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %25, i64 0, i32 4
  %29 = load <2 x float>, ptr %28, align 4, !tbaa !63
  %30 = fmul <2 x float> %29, <float 0x3F91DF46A0000000, float 0x3F91DF46A0000000>
  store <2 x float> %30, ptr %28, align 4, !tbaa !63
  br label %31

31:                                               ; preds = %4, %8, %23, %17
  %32 = load ptr, ptr %5, align 8, !tbaa !42
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %4, !llvm.loop !737

34:                                               ; preds = %31, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #6 !PGOFuncName !738 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !63
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !63
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !63
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !63
  ret void
}

; Function Attrs: optsize
declare void @blo_do_version_old_trackto_to_constraints(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @scopes_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_version_mdef_250(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !739 {
  %2 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %8

5:                                                ; preds = %24, %8
  %6 = load ptr, ptr %9, align 8, !tbaa !42
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8, !llvm.loop !740

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %10 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 26
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = icmp eq ptr %11, null
  br i1 %12, label %5, label %13

13:                                               ; preds = %8, %24
  %14 = phi ptr [ %25, %24 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct.ModifierData, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !348
  %17 = icmp eq i32 %16, 18
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %14, i64 0, i32 20
  %20 = load ptr, ptr %19, align 8, !tbaa !741
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %14, i64 0, i32 8
  store ptr %20, ptr %23, align 8, !tbaa !743
  store ptr null, ptr %19, align 8, !tbaa !741
  tail call void @modifier_mdef_compact_influences(ptr noundef nonnull %14) #11
  br label %24

24:                                               ; preds = %13, %22, %18
  %25 = load ptr, ptr %14, align 8, !tbaa !42
  %26 = icmp eq ptr %25, null
  br i1 %26, label %5, label %13, !llvm.loop !744

27:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare ptr @modifier_new(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_actuator(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_version_bone_roll_256(ptr noundef %0) unnamed_addr #0 !PGOFuncName !745 {
  %2 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #12
  %3 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 13
  call void @copy_m3_m4(ptr noundef nonnull %2, ptr noundef nonnull %3) #11
  %4 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 14
  call void @mat3_to_vec_roll(ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull %4) #11
  %5 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1, %8
  %9 = phi ptr [ %10, %8 ], [ %6, %1 ]
  call fastcc void @do_version_bone_roll_256(ptr noundef nonnull %9) #13
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %8, !llvm.loop !746

12:                                               ; preds = %8, %1
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_zero_v4(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !747 {
  %2 = load float, ptr %0, align 4, !tbaa !63
  %3 = fcmp oeq float %2, 0.000000e+00
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !63
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !63
  %11 = fcmp oeq float %10, 0.000000e+00
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds float, ptr %0, i64 3
  %14 = load float, ptr %13, align 4, !tbaa !63
  %15 = fcmp oeq float %14, 0.000000e+00
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %12, %8, %4, %1
  %18 = phi i8 [ 0, %8 ], [ 0, %4 ], [ 0, %1 ], [ %16, %12 ]
  ret i8 %18
}

; Function Attrs: optsize
declare void @unit_qt(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @unit_axis_angle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @nodeSocketIsHidden(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @do_versions_node_group_add_socket_2_56_2(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !748 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %6 = tail call ptr %5(i64 noundef 352, ptr noundef nonnull @.str.17) #11
  %7 = getelementptr inbounds %struct.bNodeSocket, ptr %6, i64 0, i32 5
  %8 = tail call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 64) #11
  %9 = trunc i32 %2 to i16
  %10 = getelementptr inbounds %struct.bNodeSocket, ptr %6, i64 0, i32 7
  store i16 %9, ptr %10, align 8, !tbaa !578
  %11 = getelementptr inbounds %struct.bNodeSocket, ptr %6, i64 0, i32 23
  store ptr null, ptr %11, align 8, !tbaa !577
  %12 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %13 = load i32, ptr %12, align 8, !tbaa !568
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !568
  %15 = getelementptr inbounds %struct.bNodeSocket, ptr %6, i64 0, i32 20
  store i32 %13, ptr %15, align 8, !tbaa !571
  %16 = icmp eq i32 %3, 1
  %17 = select i1 %16, i16 4095, i16 1
  %18 = getelementptr inbounds %struct.bNodeSocket, ptr %6, i64 0, i32 9
  store i16 %17, ptr %18, align 4, !tbaa !749
  %19 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 22
  %20 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 23
  %21 = select i1 %16, ptr %19, ptr %20
  tail call void @BLI_addtail(ptr noundef nonnull %21, ptr noundef nonnull %6) #11
  %22 = select i1 %16, i32 16, i32 32
  %23 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 13
  %24 = load i32, ptr %23, align 8, !tbaa !584
  %25 = or i32 %24, %22
  store i32 %25, ptr %23, align 8, !tbaa !584
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v4_v4(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !750 {
  %3 = load float, ptr %1, align 4, !tbaa !63
  store float %3, ptr %0, align 4, !tbaa !63
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !63
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !63
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !63
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !63
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !63
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !63
  ret void
}

; Function Attrs: optsize
declare i32 @nodeCountSocketLinks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_calc_normals_tessface(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @curvemapping_add(i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @curvemap_reset(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @curvemapping_changed(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_node_tree_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_node_tree_iter_step(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_versions_socket_default_value_259(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !751 {
  %2 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 15
  %3 = load ptr, ptr %2, align 8, !tbaa !752
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %29

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 7
  %7 = load i16, ptr %6, align 8, !tbaa !578
  switch i16 %7, label %29 [
    i16 0, label %8
    i16 1, label %17
    i16 2, label %25
  ]

8:                                                ; preds = %5
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %10 = tail call ptr %9(i64 noundef 16, ptr noundef nonnull @.str.18) #11
  store ptr %10, ptr %2, align 8, !tbaa !752
  %11 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 24
  %12 = load float, ptr %11, align 8, !tbaa !63
  %13 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %10, i64 0, i32 1
  store float %12, ptr %13, align 4, !tbaa !753
  %14 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 24, i32 1
  %15 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %10, i64 0, i32 2
  %16 = load <2 x float>, ptr %14, align 8, !tbaa !63
  store <2 x float> %16, ptr %15, align 4, !tbaa !63
  store i32 0, ptr %10, align 4, !tbaa !755
  br label %29

17:                                               ; preds = %5
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %19 = tail call ptr %18(i64 noundef 24, ptr noundef nonnull @.str.18) #11
  store ptr %19, ptr %2, align 8, !tbaa !752
  %20 = getelementptr inbounds %struct.bNodeSocketValueVector, ptr %19, i64 0, i32 1
  %21 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 24
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %20, ptr noundef nonnull %21) #13
  %22 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 24, i32 1
  %23 = getelementptr inbounds %struct.bNodeSocketValueVector, ptr %19, i64 0, i32 2
  %24 = load <2 x float>, ptr %22, align 8, !tbaa !63
  store <2 x float> %24, ptr %23, align 4, !tbaa !63
  store i32 0, ptr %19, align 4, !tbaa !756
  br label %29

25:                                               ; preds = %5
  %26 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %27 = tail call ptr %26(i64 noundef 16, ptr noundef nonnull @.str.18) #11
  store ptr %27, ptr %2, align 8, !tbaa !752
  %28 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 24
  tail call fastcc void @copy_v4_v4(ptr noundef %27, ptr noundef nonnull %28) #13
  br label %29

29:                                               ; preds = %8, %17, %25, %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @area_add_header_region(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !758 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %4 = tail call ptr %3(i64 noundef 384, ptr noundef nonnull @.str.8) #11
  tail call void @BLI_addtail(ptr noundef %1, ptr noundef %4) #11
  %5 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 8
  store i16 1, ptr %5, align 2, !tbaa !355
  %6 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 12
  %7 = load i16, ptr %6, align 2, !tbaa !689
  %8 = icmp eq i16 %7, 1
  %9 = select i1 %8, i16 2, i16 1
  %10 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 9
  store i16 %9, ptr %10, align 8
  %11 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 11
  %12 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 15
  store i16 10, ptr %12, align 4, !tbaa !534
  store <4 x i16> <i16 2, i16 771, i16 4, i16 12>, ptr %11, align 4, !tbaa !194
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @area_add_window_regions(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !759 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %84, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.SpaceLink, ptr %1, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !314
  switch i32 %7, label %84 [
    i32 2, label %8
    i32 12, label %20
    i32 13, label %27
    i32 16, label %40
    i32 5, label %48
    i32 8, label %57
    i32 1, label %68
  ]

8:                                                ; preds = %5
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %10 = tail call ptr %9(i64 noundef 384, ptr noundef nonnull @.str.8) #11
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef %10) #11
  %11 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 8
  store i16 2, ptr %11, align 2, !tbaa !355
  %12 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 9
  store i16 3, ptr %12, align 8, !tbaa !726
  %13 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 2, i32 9
  store i16 10, ptr %13, align 8, !tbaa !533
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %15 = tail call ptr %14(i64 noundef 384, ptr noundef nonnull @.str.8) #11
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef %15) #11
  %16 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 8
  store i16 4, ptr %16, align 2, !tbaa !355
  %17 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 9
  store i16 4, ptr %17, align 8, !tbaa !726
  %18 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 2, i32 9
  store i16 2, ptr %18, align 8, !tbaa !533
  %19 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 2, i32 14
  store i16 1, ptr %19, align 2, !tbaa !760
  br label %84

20:                                               ; preds = %5
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %22 = tail call ptr %21(i64 noundef 384, ptr noundef nonnull @.str.8) #11
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef %22) #11
  %23 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 8
  store i16 2, ptr %23, align 2, !tbaa !355
  %24 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 9
  store i16 3, ptr %24, align 8, !tbaa !726
  %25 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 2, i32 9
  store i16 8, ptr %25, align 8, !tbaa !533
  %26 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 2, i32 14
  store i16 2, ptr %26, align 2, !tbaa !760
  br label %84

27:                                               ; preds = %5
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %29 = tail call ptr %28(i64 noundef 384, ptr noundef nonnull @.str.8) #11
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef %29) #11
  %30 = getelementptr inbounds %struct.ARegion, ptr %29, i64 0, i32 8
  store i16 2, ptr %30, align 2, !tbaa !355
  %31 = getelementptr inbounds %struct.ARegion, ptr %29, i64 0, i32 9
  store i16 3, ptr %31, align 8, !tbaa !726
  %32 = getelementptr inbounds %struct.ARegion, ptr %29, i64 0, i32 2, i32 9
  store i16 8, ptr %32, align 8, !tbaa !533
  %33 = getelementptr inbounds %struct.ARegion, ptr %29, i64 0, i32 2, i32 14
  store i16 2, ptr %33, align 2, !tbaa !760
  %34 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %35 = tail call ptr %34(i64 noundef 384, ptr noundef nonnull @.str.8) #11
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef %35) #11
  %36 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 8
  store i16 4, ptr %36, align 2, !tbaa !355
  %37 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 9
  store i16 4, ptr %37, align 8, !tbaa !726
  %38 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 2, i32 9
  store i16 2, ptr %38, align 8, !tbaa !533
  %39 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 2, i32 14
  store i16 1, ptr %39, align 2, !tbaa !760
  br label %84

40:                                               ; preds = %5
  %41 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %42 = tail call ptr %41(i64 noundef 384, ptr noundef nonnull @.str.9) #11
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef %42) #11
  %43 = getelementptr inbounds %struct.ARegion, ptr %42, i64 0, i32 8
  store i16 4, ptr %43, align 2, !tbaa !355
  %44 = getelementptr inbounds %struct.ARegion, ptr %42, i64 0, i32 9
  store i16 3, ptr %44, align 8, !tbaa !726
  %45 = getelementptr inbounds %struct.ARegion, ptr %42, i64 0, i32 2, i32 9
  store i16 10, ptr %45, align 8, !tbaa !533
  %46 = getelementptr inbounds %struct.ARegion, ptr %42, i64 0, i32 2, i32 14
  store i16 2, ptr %46, align 2, !tbaa !760
  %47 = getelementptr inbounds %struct.ARegion, ptr %42, i64 0, i32 10
  store i16 1, ptr %47, align 2, !tbaa !727
  br label %84

48:                                               ; preds = %5
  %49 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %50 = tail call ptr %49(i64 noundef 384, ptr noundef nonnull @.str.9) #11
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef %50) #11
  %51 = getelementptr inbounds %struct.ARegion, ptr %50, i64 0, i32 8
  store i16 2, ptr %51, align 2, !tbaa !355
  %52 = getelementptr inbounds %struct.ARegion, ptr %50, i64 0, i32 9
  store i16 3, ptr %52, align 8, !tbaa !726
  %53 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %54 = tail call ptr %53(i64 noundef 384, ptr noundef nonnull @.str.10) #11
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef %54) #11
  %55 = getelementptr inbounds %struct.ARegion, ptr %54, i64 0, i32 8
  store i16 4, ptr %55, align 2, !tbaa !355
  %56 = getelementptr inbounds %struct.ARegion, ptr %54, i64 0, i32 9
  store i16 1, ptr %56, align 8, !tbaa !726
  br label %84

57:                                               ; preds = %5, %61
  %58 = phi ptr [ %59, %61 ], [ %2, %5 ]
  %59 = load ptr, ptr %58, align 8, !tbaa !42
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.ARegion, ptr %59, i64 0, i32 8
  %63 = load i16, ptr %62, align 2, !tbaa !355
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %65, label %57, !llvm.loop !761

65:                                               ; preds = %61, %57
  %66 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %67 = tail call ptr %66(i64 noundef 384, ptr noundef nonnull @.str.5) #11
  tail call void @BLI_insertlinkbefore(ptr noundef %2, ptr noundef %59, ptr noundef %67) #11
  tail call fastcc void @sequencer_init_preview_region(ptr noundef %67) #13
  br label %84

68:                                               ; preds = %5
  %69 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %70 = tail call ptr %69(i64 noundef 384, ptr noundef nonnull @.str.11) #11
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef %70) #11
  %71 = getelementptr inbounds %struct.ARegion, ptr %70, i64 0, i32 8
  store i16 5, ptr %71, align 2, !tbaa !355
  %72 = getelementptr inbounds %struct.ARegion, ptr %70, i64 0, i32 9
  store i16 3, ptr %72, align 8, !tbaa !726
  %73 = getelementptr inbounds %struct.ARegion, ptr %70, i64 0, i32 10
  store i16 1, ptr %73, align 2, !tbaa !727
  %74 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %75 = tail call ptr %74(i64 noundef 384, ptr noundef nonnull @.str.12) #11
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef %75) #11
  %76 = getelementptr inbounds %struct.ARegion, ptr %75, i64 0, i32 8
  store i16 6, ptr %76, align 2, !tbaa !355
  %77 = getelementptr inbounds %struct.ARegion, ptr %75, i64 0, i32 9
  store i16 34, ptr %77, align 8, !tbaa !726
  %78 = getelementptr inbounds %struct.ARegion, ptr %75, i64 0, i32 10
  store i16 1, ptr %78, align 2, !tbaa !727
  %79 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %80 = tail call ptr %79(i64 noundef 384, ptr noundef nonnull @.str.13) #11
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef %80) #11
  %81 = getelementptr inbounds %struct.ARegion, ptr %80, i64 0, i32 8
  store i16 4, ptr %81, align 2, !tbaa !355
  %82 = getelementptr inbounds %struct.ARegion, ptr %80, i64 0, i32 9
  store i16 4, ptr %82, align 8, !tbaa !726
  %83 = getelementptr inbounds %struct.ARegion, ptr %80, i64 0, i32 10
  store i16 1, ptr %83, align 2, !tbaa !727
  br label %84

84:                                               ; preds = %8, %20, %27, %40, %48, %65, %5, %68, %3
  %85 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %86 = tail call ptr %85(i64 noundef 384, ptr noundef nonnull @.str.8) #11
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef %86) #11
  %87 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 3
  %88 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %87, ptr noundef nonnull align 8 dereferenceable(16) %88, i64 16, i1 false), !tbaa.struct !762
  %89 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 8
  store i16 0, ptr %89, align 2, !tbaa !355
  br i1 %4, label %215, label %90

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.SpaceLink, ptr %1, i64 0, i32 3
  %92 = load i32, ptr %91, align 8, !tbaa !314
  switch i32 %92, label %215 [
    i32 1, label %93
    i32 3, label %94
    i32 15, label %107
    i32 2, label %123
    i32 13, label %130
    i32 12, label %148
    i32 8, label %175
    i32 16, label %185
    i32 4, label %190
    i32 5, label %196
    i32 9, label %211
  ]

93:                                               ; preds = %90
  tail call void @blo_do_versions_view3d_split_250(ptr noundef nonnull %1, ptr noundef %2) #11
  br label %215

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2
  %96 = getelementptr inbounds %struct.SpaceOops, ptr %1, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %95, ptr noundef nonnull align 8 dereferenceable(160) %96, i64 160, i1 false)
  %97 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 9
  %98 = load i16, ptr %97, align 8, !tbaa !533
  %99 = and i16 %98, -12
  %100 = or disjoint i16 %99, 10
  store i16 %100, ptr %97, align 8, !tbaa !533
  %101 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 15
  store i16 6, ptr %101, align 4, !tbaa !534
  %102 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 12
  %103 = load i16, ptr %102, align 2, !tbaa !536
  %104 = or i16 %103, 770
  store i16 %104, ptr %102, align 2, !tbaa !536
  %105 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 11
  store i16 2, ptr %105, align 4, !tbaa !537
  %106 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 7
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %106, align 8, !tbaa !63
  br label %215

107:                                              ; preds = %90
  %108 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2
  %109 = getelementptr inbounds %struct.SpaceTime, ptr %1, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %108, ptr noundef nonnull align 8 dereferenceable(160) %109, i64 160, i1 false)
  %110 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 9
  %111 = load i16, ptr %110, align 8, !tbaa !533
  %112 = or i16 %111, 72
  store i16 %112, ptr %110, align 8, !tbaa !533
  %113 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 15
  %114 = load i16, ptr %113, align 4, !tbaa !534
  %115 = or i16 %114, 8
  store i16 %115, ptr %113, align 4, !tbaa !534
  %116 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 12
  %117 = load <2 x i16>, ptr %116, align 2, !tbaa !194
  %118 = or <2 x i16> %117, <i16 512, i16 4>
  store <2 x i16> %118, ptr %116, align 2, !tbaa !194
  %119 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 1, i32 2
  store float -1.000000e+01, ptr %119, align 8, !tbaa !407
  %120 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 0, i32 2
  store float -1.000000e+01, ptr %120, align 8, !tbaa !406
  %121 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 6, i64 1
  store float 2.000000e+01, ptr %121, align 4, !tbaa !63
  %122 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 5, i64 1
  store float 2.000000e+01, ptr %122, align 4, !tbaa !63
  br label %215

123:                                              ; preds = %90
  %124 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2
  %125 = getelementptr inbounds %struct.SpaceIpo, ptr %1, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %124, ptr noundef nonnull align 8 dereferenceable(160) %125, i64 160, i1 false)
  %126 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 9
  %127 = load i16, ptr %126, align 8, !tbaa !533
  %128 = or i16 %127, 105
  store i16 %128, ptr %126, align 8, !tbaa !533
  %129 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 5
  store <4 x float> <float 0x3810000000000000, float 0x3810000000000000, float 3.000000e+05, float 0x47EFFFFFE0000000>, ptr %129, align 8, !tbaa !63
  br label %215

130:                                              ; preds = %90
  %131 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2
  %132 = getelementptr inbounds %struct.SpaceNla, ptr %1, i64 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %131, ptr noundef nonnull align 8 dereferenceable(160) %132, i64 160, i1 false)
  %133 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 11
  %134 = load i16, ptr %133, align 4, !tbaa !405
  %135 = sext i16 %134 to i32
  %136 = sub nsw i32 0, %135
  %137 = sitofp i32 %136 to float
  %138 = fdiv float %137, 3.000000e+00
  %139 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 0, i32 2
  store float %138, ptr %139, align 8, !tbaa !406
  %140 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 0, i32 3
  store float 0.000000e+00, ptr %140, align 4, !tbaa !403
  %141 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 9
  %142 = load i16, ptr %141, align 8, !tbaa !533
  %143 = or i16 %142, 74
  store i16 %143, ptr %141, align 8, !tbaa !533
  %144 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 15
  store i16 4, ptr %144, align 4, !tbaa !534
  %145 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 14
  %146 = load i16, ptr %145, align 2, !tbaa !760
  %147 = or i16 %146, 2
  store i16 %147, ptr %145, align 2, !tbaa !760
  br label %215

148:                                              ; preds = %90
  %149 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2
  store float -2.000000e+01, ptr %149, align 8, !tbaa !764
  %150 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 11
  %151 = load i16, ptr %150, align 4, !tbaa !405
  %152 = sext i16 %151 to i32
  %153 = sub nsw i32 0, %152
  %154 = sitofp i32 %153 to float
  %155 = fdiv float %154, 3.000000e+00
  %156 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 0, i32 2
  store float %155, ptr %156, align 8, !tbaa !406
  %157 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 10
  %158 = load i16, ptr %157, align 2, !tbaa !765
  %159 = tail call i16 @llvm.smax.i16(i16 %158, i16 120)
  %160 = sitofp i16 %159 to float
  %161 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 0, i32 1
  store float %160, ptr %161, align 4, !tbaa !766
  %162 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 0, i32 3
  store float 0.000000e+00, ptr %162, align 4, !tbaa !403
  %163 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %163, ptr noundef nonnull align 8 dereferenceable(16) %149, i64 16, i1 false), !tbaa.struct !728
  %164 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 5
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 3.000000e+05, float 0x47EFFFFFE0000000>, ptr %164, align 8, !tbaa !63
  %165 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 7
  store <2 x float> <float 0x3F847AE140000000, float 5.000000e+01>, ptr %165, align 8, !tbaa !63
  %166 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 9
  store i16 74, ptr %166, align 8, !tbaa !533
  %167 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 12
  store i16 512, ptr %167, align 2, !tbaa !536
  %168 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 15
  store i16 4, ptr %168, align 4, !tbaa !534
  %169 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 14
  store i16 2, ptr %169, align 2, !tbaa !760
  %170 = getelementptr inbounds %struct.SpaceAction, ptr %1, i64 0, i32 9
  %171 = load i8, ptr %170, align 8, !tbaa !767
  %172 = icmp eq i8 %171, 1
  br i1 %172, label %173, label %215

173:                                              ; preds = %148
  %174 = getelementptr inbounds %struct.SpaceAction, ptr %1, i64 0, i32 7
  store ptr null, ptr %174, align 8, !tbaa !770
  br label %215

175:                                              ; preds = %90
  %176 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2
  %177 = getelementptr inbounds %struct.SpaceSeq, ptr %1, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %176, ptr noundef nonnull align 8 dereferenceable(160) %177, i64 160, i1 false)
  %178 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 9
  %179 = load i16, ptr %178, align 8, !tbaa !533
  %180 = or i16 %179, 105
  store i16 %180, ptr %178, align 8, !tbaa !533
  %181 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 15
  store i16 8, ptr %181, align 4, !tbaa !534
  %182 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 14
  %183 = load i16, ptr %182, align 2, !tbaa !760
  %184 = or i16 %183, 1024
  store i16 %184, ptr %182, align 2, !tbaa !760
  br label %215

185:                                              ; preds = %90
  %186 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2
  %187 = getelementptr inbounds %struct.SpaceNode, ptr %1, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %186, ptr noundef nonnull align 8 dereferenceable(160) %187, i64 160, i1 false)
  %188 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 9
  store i16 10, ptr %188, align 8, !tbaa !533
  %189 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 12
  store i16 3, ptr %189, align 2, !tbaa !536
  br label %215

190:                                              ; preds = %90
  %191 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2
  %192 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %191, ptr noundef nonnull align 8 dereferenceable(160) %192, i64 160, i1 false)
  %193 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 9
  %194 = load i16, ptr %193, align 8, !tbaa !533
  %195 = or i16 %194, 10
  store i16 %195, ptr %193, align 8, !tbaa !533
  br label %215

196:                                              ; preds = %90
  %197 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2
  %198 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 0, i32 2
  store float 0.000000e+00, ptr %198, align 8, !tbaa !406
  store float 0.000000e+00, ptr %197, align 8, !tbaa !764
  %199 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 5
  %200 = load i16, ptr %199, align 8, !tbaa !771
  %201 = sitofp i16 %200 to float
  %202 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 0, i32 1
  store float %201, ptr %202, align 4, !tbaa !766
  %203 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 6
  %204 = load i16, ptr %203, align 2, !tbaa !772
  %205 = sitofp i16 %204 to float
  %206 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 0, i32 3
  store float %205, ptr %206, align 4, !tbaa !403
  %207 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %207, ptr noundef nonnull align 8 dereferenceable(16) %197, i64 16, i1 false), !tbaa.struct !728
  store i16 0, ptr %89, align 2, !tbaa !355
  %208 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 9
  store i16 10, ptr %208, align 8, !tbaa !533
  %209 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 15
  store i16 6, ptr %209, align 4, !tbaa !534
  %210 = getelementptr inbounds %struct.ARegion, ptr %86, i64 0, i32 2, i32 12
  store i16 771, ptr %210, align 2, !tbaa !536
  br label %215

211:                                              ; preds = %90
  %212 = getelementptr inbounds %struct.SpaceText, ptr %1, i64 0, i32 9
  %213 = load i16, ptr %212, align 8, !tbaa !773
  %214 = or i16 %213, 32
  store i16 %214, ptr %212, align 8, !tbaa !773
  br label %215

215:                                              ; preds = %148, %173, %93, %94, %107, %123, %130, %175, %185, %190, %196, %90, %211, %84
  ret void
}

; Function Attrs: optsize
declare void @blo_do_versions_view3d_split_250(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @versions_gpencil_add_main(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !775 {
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %1) #11
  %4 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 6
  store i32 1, ptr %4, align 4, !tbaa !776
  %5 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 5
  store i16 512, ptr %5, align 2, !tbaa !777
  %6 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  store i16 17479, ptr %6, align 8, !tbaa !194
  %7 = tail call zeroext i8 @new_id(ptr noundef %0, ptr noundef %1, ptr noundef %2) #11
  %8 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !778
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4, i64 2
  %13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull %12) #13
  br label %14

14:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @new_id(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: optsize
declare void @BKE_sequence_base_unique_name_recursive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @srgb_to_linearrgb(float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @modifier_mdef_compact_influences(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mat3_to_vec_roll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind }
attributes #13 = { optsize }

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
!34 = !{!35, !39, i64 1040}
!35 = !{!"Main", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 1040, !39, i64 1042, !39, i64 1044, !39, i64 1046, !40, i64 1048, !37, i64 1056, !39, i64 1072, !36, i64 1080, !41, i64 1088, !41, i64 1104, !41, i64 1120, !41, i64 1136, !41, i64 1152, !41, i64 1168, !41, i64 1184, !41, i64 1200, !41, i64 1216, !41, i64 1232, !41, i64 1248, !41, i64 1264, !41, i64 1280, !41, i64 1296, !41, i64 1312, !41, i64 1328, !41, i64 1344, !41, i64 1360, !41, i64 1376, !41, i64 1392, !41, i64 1408, !41, i64 1424, !41, i64 1440, !41, i64 1456, !41, i64 1472, !41, i64 1488, !41, i64 1504, !41, i64 1520, !41, i64 1536, !41, i64 1552, !41, i64 1568, !41, i64 1584, !41, i64 1600, !41, i64 1616, !37, i64 1632, !36, i64 1888, !36, i64 1896}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"long", !37, i64 0}
!41 = !{!"ListBase", !36, i64 0, !36, i64 8}
!42 = !{!36, !36, i64 0}
!43 = !{!44, !36, i64 1160}
!44 = !{!"bSound", !45, i64 0, !37, i64 120, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !47, i64 1176, !47, i64 1180, !47, i64 1184, !47, i64 1188, !47, i64 1192, !47, i64 1196, !46, i64 1200, !46, i64 1204, !36, i64 1208, !36, i64 1216, !36, i64 1224}
!45 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !39, i64 98, !46, i64 100, !46, i64 104, !46, i64 108, !36, i64 112}
!46 = !{!"int", !37, i64 0}
!47 = !{!"float", !37, i64 0}
!48 = !{!44, !36, i64 1144}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = distinct !{!51, !50}
!52 = !{!53, !39, i64 24}
!53 = !{!"bActuator", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !37, i64 32, !36, i64 96, !36, i64 104}
!54 = !{!53, !36, i64 96}
!55 = !{!56, !36, i64 24}
!56 = !{!"bSoundActuator", !39, i64 0, !39, i64 2, !46, i64 4, !46, i64 8, !37, i64 12, !47, i64 16, !47, i64 20, !36, i64 24, !57, i64 32, !39, i64 64, !39, i64 66, !39, i64 68, !37, i64 70}
!57 = !{!"Sound3D", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !47, i64 24, !47, i64 28}
!58 = !{!44, !46, i64 1200}
!59 = !{!56, !39, i64 0}
!60 = !{!44, !47, i64 1184}
!61 = !{!56, !47, i64 20}
!62 = !{!44, !47, i64 1176}
!63 = !{!47, !47, i64 0}
!64 = !{!44, !47, i64 1188}
!65 = !{!56, !47, i64 32}
!66 = !{!44, !47, i64 1180}
!67 = !{!56, !47, i64 44}
!68 = distinct !{!68, !50}
!69 = !{!70, !36, i64 256}
!70 = !{!"Scene", !45, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !41, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !46, i64 232, !46, i64 236, !46, i64 240, !39, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !71, i64 280, !80, i64 4264, !41, i64 4296, !41, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !39, i64 4376, !39, i64 4378, !46, i64 4380, !41, i64 4384, !81, i64 4400, !82, i64 4416, !85, i64 4600, !36, i64 4608, !86, i64 4616, !36, i64 4640, !40, i64 4648, !40, i64 4656, !73, i64 4664, !74, i64 4824, !87, i64 4888, !36, i64 4952}
!71 = !{!"RenderData", !72, i64 0, !36, i64 248, !36, i64 256, !75, i64 264, !76, i64 328, !46, i64 400, !46, i64 404, !46, i64 408, !47, i64 412, !46, i64 416, !46, i64 420, !46, i64 424, !46, i64 428, !39, i64 432, !39, i64 434, !47, i64 436, !47, i64 440, !47, i64 444, !47, i64 448, !47, i64 452, !39, i64 456, !39, i64 458, !39, i64 460, !39, i64 462, !39, i64 464, !39, i64 466, !46, i64 468, !39, i64 472, !39, i64 474, !39, i64 476, !39, i64 478, !39, i64 480, !39, i64 482, !46, i64 484, !46, i64 488, !39, i64 492, !39, i64 494, !46, i64 496, !46, i64 500, !39, i64 504, !39, i64 506, !39, i64 508, !39, i64 510, !39, i64 512, !37, i64 514, !37, i64 515, !46, i64 516, !46, i64 520, !46, i64 524, !39, i64 528, !39, i64 530, !39, i64 532, !39, i64 534, !39, i64 536, !39, i64 538, !39, i64 540, !39, i64 542, !77, i64 544, !77, i64 560, !78, i64 576, !41, i64 592, !39, i64 608, !39, i64 610, !47, i64 612, !47, i64 616, !47, i64 620, !47, i64 624, !46, i64 628, !47, i64 632, !47, i64 636, !47, i64 640, !47, i64 644, !39, i64 648, !39, i64 650, !39, i64 652, !39, i64 654, !39, i64 656, !39, i64 658, !47, i64 660, !47, i64 664, !39, i64 668, !39, i64 670, !47, i64 672, !47, i64 676, !37, i64 680, !46, i64 1704, !39, i64 1708, !39, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !46, i64 2520, !39, i64 2524, !39, i64 2526, !47, i64 2528, !47, i64 2532, !39, i64 2536, !39, i64 2538, !47, i64 2540, !39, i64 2544, !39, i64 2546, !46, i64 2548, !39, i64 2552, !39, i64 2554, !39, i64 2556, !39, i64 2558, !47, i64 2560, !47, i64 2564, !36, i64 2568, !46, i64 2576, !47, i64 2580, !37, i64 2584, !79, i64 2616, !46, i64 3976, !46, i64 3980}
!72 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !39, i64 8, !39, i64 10, !47, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !73, i64 24, !74, i64 184}
!73 = !{!"ColorManagedViewSettings", !46, i64 0, !46, i64 4, !37, i64 8, !37, i64 72, !47, i64 136, !47, i64 140, !36, i64 144, !36, i64 152}
!74 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!75 = !{!"QuicktimeCodecSettings", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !46, i64 32, !46, i64 36, !46, i64 40, !46, i64 44, !39, i64 48, !39, i64 50, !46, i64 52, !46, i64 56, !46, i64 60}
!76 = !{!"FFMpegCodecData", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !47, i64 32, !46, i64 36, !46, i64 40, !46, i64 44, !46, i64 48, !46, i64 52, !46, i64 56, !46, i64 60, !36, i64 64}
!77 = !{!"rctf", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12}
!78 = !{!"rcti", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12}
!79 = !{!"BakeData", !72, i64 0, !37, i64 248, !39, i64 1272, !39, i64 1274, !39, i64 1276, !39, i64 1278, !47, i64 1280, !47, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!80 = !{!"AudioData", !46, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !46, i64 16, !39, i64 20, !39, i64 22, !47, i64 24, !47, i64 28}
!81 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!82 = !{!"GameData", !81, i64 0, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !37, i64 34, !83, i64 40, !39, i64 64, !39, i64 66, !47, i64 68, !84, i64 72, !47, i64 128, !47, i64 132, !46, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !47, i64 164, !47, i64 168, !47, i64 172, !47, i64 176, !47, i64 180}
!83 = !{!"GameDome", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !47, i64 8, !47, i64 12, !36, i64 16}
!84 = !{!"RecastData", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !47, i64 24, !47, i64 28, !47, i64 32, !47, i64 36, !46, i64 40, !47, i64 44, !47, i64 48, !39, i64 52, !39, i64 54}
!85 = !{!"UnitSettings", !47, i64 0, !37, i64 4, !37, i64 5, !39, i64 6}
!86 = !{!"PhysicsSettings", !37, i64 0, !46, i64 12, !46, i64 16, !46, i64 20}
!87 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!88 = !{!89, !36, i64 0}
!89 = !{!"Editing", !36, i64 0, !41, i64 8, !41, i64 24, !36, i64 40, !37, i64 48, !37, i64 1072, !46, i64 2096, !46, i64 2100, !46, i64 2104, !46, i64 2108, !77, i64 2112}
!90 = !{!91, !46, i64 24}
!91 = !{!"SeqIterator", !36, i64 0, !46, i64 8, !46, i64 12, !36, i64 16, !46, i64 24}
!92 = !{!91, !36, i64 16}
!93 = !{!94, !46, i64 100}
!94 = !{!"Sequence", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !46, i64 96, !46, i64 100, !46, i64 104, !46, i64 108, !46, i64 112, !46, i64 116, !46, i64 120, !46, i64 124, !46, i64 128, !46, i64 132, !46, i64 136, !46, i64 140, !47, i64 144, !47, i64 148, !47, i64 152, !39, i64 156, !39, i64 158, !46, i64 160, !46, i64 164, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !47, i64 224, !47, i64 228, !36, i64 232, !36, i64 240, !36, i64 248, !41, i64 256, !36, i64 272, !36, i64 280, !47, i64 288, !47, i64 292, !47, i64 296, !47, i64 300, !36, i64 304, !46, i64 312, !46, i64 316, !46, i64 320, !47, i64 324, !46, i64 328, !37, i64 332, !37, i64 333, !41, i64 336}
!95 = !{!94, !36, i64 168}
!96 = !{!97, !36, i64 32}
!97 = !{!"Strip", !36, i64 0, !36, i64 8, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !36, i64 32, !37, i64 40, !36, i64 808, !36, i64 816, !36, i64 824, !36, i64 832, !87, i64 840}
!98 = !{!94, !36, i64 272}
!99 = !{!94, !46, i64 96}
!100 = !{!97, !36, i64 808}
!101 = distinct !{!101, !50}
!102 = distinct !{!102, !50}
!103 = distinct !{!103, !50}
!104 = distinct !{!104, !50}
!105 = !{!106, !36, i64 768}
!106 = !{!"Material", !45, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !47, i64 132, !47, i64 136, !47, i64 140, !47, i64 144, !47, i64 148, !47, i64 152, !47, i64 156, !47, i64 160, !47, i64 164, !47, i64 168, !47, i64 172, !47, i64 176, !47, i64 180, !47, i64 184, !47, i64 188, !47, i64 192, !47, i64 196, !47, i64 200, !47, i64 204, !47, i64 208, !47, i64 212, !47, i64 216, !47, i64 220, !107, i64 224, !108, i64 312, !47, i64 328, !47, i64 332, !47, i64 336, !47, i64 340, !47, i64 344, !47, i64 348, !47, i64 352, !39, i64 356, !39, i64 358, !39, i64 360, !37, i64 362, !37, i64 363, !47, i64 364, !47, i64 368, !39, i64 372, !39, i64 374, !47, i64 376, !47, i64 380, !47, i64 384, !47, i64 388, !39, i64 392, !39, i64 394, !46, i64 396, !46, i64 400, !46, i64 404, !46, i64 408, !39, i64 412, !39, i64 414, !39, i64 416, !39, i64 418, !47, i64 420, !47, i64 424, !47, i64 428, !47, i64 432, !47, i64 436, !47, i64 440, !47, i64 444, !47, i64 448, !47, i64 452, !47, i64 456, !37, i64 460, !47, i64 524, !47, i64 528, !47, i64 532, !46, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !39, i64 544, !39, i64 546, !39, i64 548, !37, i64 550, !37, i64 551, !39, i64 552, !39, i64 554, !47, i64 556, !47, i64 560, !37, i64 564, !47, i64 580, !47, i64 584, !39, i64 588, !39, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !39, i64 612, !39, i64 614, !47, i64 616, !47, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !47, i64 800, !47, i64 804, !47, i64 808, !47, i64 812, !47, i64 816, !39, i64 820, !39, i64 822, !37, i64 824, !37, i64 836, !47, i64 848, !47, i64 852, !47, i64 856, !47, i64 860, !47, i64 864, !47, i64 868, !47, i64 872, !39, i64 876, !39, i64 878, !46, i64 880, !39, i64 884, !39, i64 886, !37, i64 888, !39, i64 904, !39, i64 906, !39, i64 908, !39, i64 910, !39, i64 912, !37, i64 914, !36, i64 920, !41, i64 928}
!107 = !{!"VolumeSettings", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !47, i64 52, !47, i64 56, !47, i64 60, !39, i64 64, !39, i64 66, !39, i64 68, !39, i64 70, !47, i64 72, !47, i64 76, !47, i64 80, !47, i64 84}
!108 = !{!"GameSettings", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12}
!109 = !{!37, !37, i64 0}
!110 = !{!111, !36, i64 16}
!111 = !{!"MTex", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !47, i64 116, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !39, i64 128, !39, i64 130, !37, i64 132, !37, i64 133, !47, i64 140, !47, i64 144, !47, i64 148, !47, i64 152, !47, i64 156, !47, i64 160, !47, i64 164, !47, i64 168, !47, i64 172, !47, i64 176, !47, i64 180, !47, i64 184, !47, i64 188, !47, i64 192, !47, i64 196, !47, i64 200, !47, i64 204, !47, i64 208, !47, i64 212, !47, i64 216, !47, i64 220, !47, i64 224, !47, i64 228, !47, i64 232, !47, i64 236, !47, i64 240, !47, i64 244, !47, i64 248, !47, i64 252, !47, i64 256, !47, i64 260, !47, i64 264, !47, i64 268, !47, i64 272, !47, i64 276, !47, i64 280, !47, i64 284, !47, i64 288, !47, i64 292, !47, i64 296, !47, i64 300, !47, i64 304, !47, i64 308}
!112 = !{!113, !37, i64 408}
!113 = !{!"Tex", !45, i64 0, !36, i64 120, !47, i64 128, !47, i64 132, !47, i64 136, !47, i64 140, !47, i64 144, !47, i64 148, !47, i64 152, !47, i64 156, !47, i64 160, !47, i64 164, !47, i64 168, !47, i64 172, !47, i64 176, !47, i64 180, !47, i64 184, !47, i64 188, !47, i64 192, !47, i64 196, !47, i64 200, !47, i64 204, !47, i64 208, !47, i64 212, !39, i64 216, !39, i64 218, !39, i64 220, !39, i64 222, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !47, i64 236, !47, i64 240, !47, i64 244, !47, i64 248, !46, i64 252, !46, i64 256, !39, i64 260, !39, i64 262, !39, i64 264, !39, i64 266, !46, i64 268, !46, i64 272, !46, i64 276, !46, i64 280, !47, i64 284, !47, i64 288, !47, i64 292, !114, i64 296, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !37, i64 408, !37, i64 409}
!114 = !{!"ImageUser", !36, i64 0, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !39, i64 28, !39, i64 30, !39, i64 32, !39, i64 34, !46, i64 36}
!115 = !{!111, !39, i64 130}
!116 = distinct !{!116, !50}
!117 = !{!70, !36, i64 248}
!118 = !{!70, !46, i64 800}
!119 = !{!120, !36, i64 32}
!120 = !{!"Base", !36, i64 0, !36, i64 8, !46, i64 16, !46, i64 20, !46, i64 24, !39, i64 28, !39, i64 30, !36, i64 32}
!121 = !{!122, !39, i64 136}
!122 = !{!"Object", !45, i64 0, !36, i64 120, !36, i64 128, !39, i64 136, !39, i64 138, !46, i64 140, !46, i64 144, !46, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !123, i64 312, !36, i64 360, !41, i64 368, !41, i64 384, !41, i64 400, !41, i64 416, !46, i64 432, !46, i64 436, !36, i64 440, !36, i64 448, !46, i64 456, !46, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !47, i64 616, !47, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !46, i64 944, !39, i64 948, !39, i64 950, !39, i64 952, !39, i64 954, !39, i64 956, !39, i64 958, !39, i64 960, !39, i64 962, !39, i64 964, !37, i64 966, !37, i64 967, !46, i64 968, !46, i64 972, !46, i64 976, !46, i64 980, !46, i64 984, !47, i64 988, !47, i64 992, !47, i64 996, !47, i64 1000, !47, i64 1004, !47, i64 1008, !47, i64 1012, !47, i64 1016, !47, i64 1020, !47, i64 1024, !47, i64 1028, !47, i64 1032, !39, i64 1036, !39, i64 1038, !39, i64 1040, !37, i64 1042, !37, i64 1043, !39, i64 1044, !37, i64 1046, !37, i64 1047, !47, i64 1048, !47, i64 1052, !41, i64 1056, !41, i64 1072, !41, i64 1088, !41, i64 1104, !47, i64 1120, !39, i64 1124, !39, i64 1126, !37, i64 1128, !46, i64 1144, !46, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !39, i64 1162, !37, i64 1164, !41, i64 1176, !41, i64 1192, !41, i64 1208, !41, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !39, i64 1266, !47, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !40, i64 1304, !40, i64 1312, !46, i64 1320, !46, i64 1324, !41, i64 1328, !41, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !41, i64 1400, !36, i64 1416}
!123 = !{!"bAnimVizSettings", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !46, i64 32, !46, i64 36, !46, i64 40, !46, i64 44}
!124 = !{!122, !36, i64 24}
!125 = !{!122, !36, i64 296}
!126 = !{!127, !39, i64 130}
!127 = !{!"Camera", !45, i64 0, !36, i64 120, !37, i64 128, !37, i64 129, !39, i64 130, !47, i64 132, !47, i64 136, !47, i64 140, !47, i64 144, !47, i64 148, !47, i64 152, !47, i64 156, !47, i64 160, !47, i64 164, !47, i64 168, !47, i64 172, !36, i64 176, !36, i64 184, !37, i64 192, !37, i64 193}
!128 = distinct !{!128, !50}
!129 = distinct !{!129, !50}
!130 = !{!113, !36, i64 336}
!131 = !{!132, !39, i64 172}
!132 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !46, i64 168, !39, i64 172, !39, i64 174, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !39, i64 184, !39, i64 186, !37, i64 188, !41, i64 200, !41, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !41, i64 264, !47, i64 280, !47, i64 284, !47, i64 288, !47, i64 292, !47, i64 296, !47, i64 300, !47, i64 304, !46, i64 308, !37, i64 312, !39, i64 376, !39, i64 378, !47, i64 380, !47, i64 384, !39, i64 388, !39, i64 390, !36, i64 392, !77, i64 400, !77, i64 416, !77, i64 432, !39, i64 448, !39, i64 450, !46, i64 452, !36, i64 456}
!133 = !{!132, !39, i64 376}
!134 = distinct !{!134, !50}
!135 = distinct !{!135, !50}
!136 = !{!137, !46, i64 1344}
!137 = !{!"Mesh", !45, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !138, i64 280, !138, i64 480, !138, i64 680, !138, i64 880, !138, i64 1080, !46, i64 1280, !46, i64 1284, !46, i64 1288, !46, i64 1292, !46, i64 1296, !46, i64 1300, !46, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !46, i64 1344, !39, i64 1348, !39, i64 1350, !47, i64 1352, !46, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !39, i64 1366, !36, i64 1368}
!138 = !{!"CustomData", !36, i64 0, !37, i64 8, !46, i64 172, !46, i64 176, !46, i64 180, !36, i64 184, !36, i64 192}
!139 = distinct !{!139, !50}
!140 = !{!141, !39, i64 184}
!141 = !{!"ParticleSettings", !45, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !46, i64 152, !46, i64 156, !39, i64 160, !39, i64 162, !39, i64 164, !39, i64 166, !39, i64 168, !39, i64 170, !39, i64 172, !39, i64 174, !46, i64 176, !46, i64 180, !39, i64 184, !39, i64 186, !39, i64 188, !39, i64 190, !39, i64 192, !39, i64 194, !39, i64 196, !39, i64 198, !39, i64 200, !39, i64 202, !39, i64 204, !39, i64 206, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !39, i64 220, !39, i64 222, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !47, i64 232, !47, i64 236, !37, i64 240, !37, i64 248, !47, i64 256, !47, i64 260, !47, i64 264, !39, i64 268, !39, i64 270, !47, i64 272, !47, i64 276, !47, i64 280, !47, i64 284, !47, i64 288, !47, i64 292, !47, i64 296, !47, i64 300, !47, i64 304, !47, i64 308, !47, i64 312, !47, i64 316, !37, i64 320, !46, i64 324, !46, i64 328, !46, i64 332, !46, i64 336, !39, i64 340, !37, i64 342, !47, i64 348, !47, i64 352, !47, i64 356, !47, i64 360, !47, i64 364, !47, i64 368, !47, i64 372, !37, i64 376, !47, i64 388, !47, i64 392, !47, i64 396, !47, i64 400, !47, i64 404, !47, i64 408, !47, i64 412, !37, i64 416, !47, i64 428, !47, i64 432, !47, i64 436, !47, i64 440, !46, i64 444, !46, i64 448, !47, i64 452, !47, i64 456, !47, i64 460, !47, i64 464, !47, i64 468, !47, i64 472, !47, i64 476, !47, i64 480, !47, i64 484, !47, i64 488, !47, i64 492, !47, i64 496, !47, i64 500, !47, i64 504, !47, i64 508, !47, i64 512, !47, i64 516, !47, i64 520, !47, i64 524, !47, i64 528, !47, i64 532, !47, i64 536, !47, i64 540, !47, i64 544, !47, i64 548, !37, i64 552, !47, i64 560, !47, i64 564, !46, i64 568, !46, i64 572, !37, i64 576, !36, i64 720, !41, i64 728, !36, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !39, i64 792, !37, i64 794}
!142 = !{!141, !39, i64 192}
!143 = !{!141, !47, i64 564}
!144 = !{!141, !47, i64 528}
!145 = distinct !{!145, !50}
!146 = distinct !{!146, !50}
!147 = !{!148, !39, i64 16}
!148 = !{!"Nurb", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !46, i64 24, !46, i64 28, !37, i64 32, !39, i64 36, !39, i64 38, !39, i64 40, !39, i64 42, !39, i64 44, !39, i64 46, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !39, i64 80, !39, i64 82, !46, i64 84}
!149 = !{!148, !39, i64 22}
!150 = distinct !{!150, !50}
!151 = !{!35, !39, i64 1042}
!152 = !{!137, !36, i64 24}
!153 = !{!137, !36, i64 1368}
!154 = !{!155, !37, i64 24}
!155 = !{!"Multires", !41, i64 0, !36, i64 16, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !37, i64 28, !37, i64 29, !37, i64 30, !37, i64 31, !138, i64 32, !138, i64 232, !36, i64 432, !36, i64 440}
!156 = !{!122, !46, i64 456}
!157 = !{!122, !36, i64 448}
!158 = !{!122, !39, i64 950}
!159 = distinct !{!159, !50}
!160 = distinct !{!160, !50}
!161 = !{!113, !46, i64 256}
!162 = distinct !{!162, !50}
!163 = !{!106, !46, i64 396}
!164 = !{!106, !39, i64 128}
!165 = !{!106, !36, i64 24}
!166 = !{!113, !39, i64 232}
!167 = !{!111, !39, i64 120}
!168 = distinct !{!168, !50}
!169 = !{!106, !47, i64 296}
!170 = !{!106, !47, i64 232}
!171 = !{!106, !39, i64 288}
!172 = !{!106, !39, i64 292}
!173 = !{!106, !39, i64 290}
!174 = !{!106, !39, i64 294}
!175 = distinct !{!175, !50}
!176 = !{!70, !36, i64 264}
!177 = !{!178, !47, i64 40}
!178 = !{!"ToolSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !47, i64 32, !47, i64 36, !47, i64 40, !39, i64 44, !39, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !47, i64 52, !39, i64 56, !37, i64 58, !37, i64 59, !179, i64 64, !181, i64 168, !47, i64 336, !47, i64 340, !39, i64 344, !39, i64 346, !37, i64 348, !37, i64 349, !39, i64 350, !47, i64 352, !47, i64 356, !47, i64 360, !47, i64 364, !47, i64 368, !47, i64 372, !47, i64 376, !47, i64 380, !47, i64 384, !47, i64 388, !39, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !36, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !39, i64 434, !39, i64 436, !39, i64 438, !39, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !46, i64 448, !46, i64 452, !46, i64 456, !46, i64 460, !39, i64 464, !39, i64 466, !46, i64 468, !47, i64 472, !47, i64 476, !182, i64 480, !183, i64 608}
!179 = !{!"ImagePaintSettings", !180, i64 0, !39, i64 40, !39, i64 42, !39, i64 44, !39, i64 46, !37, i64 48, !46, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !47, i64 100}
!180 = !{!"Paint", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !46, i64 28, !46, i64 32, !46, i64 36}
!181 = !{!"ParticleEditSettings", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !37, i64 8, !36, i64 120, !47, i64 128, !47, i64 132, !46, i64 136, !46, i64 140, !46, i64 144, !46, i64 148, !36, i64 152, !36, i64 160}
!182 = !{!"UnifiedPaintSettings", !46, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !37, i64 16, !37, i64 28, !46, i64 40, !37, i64 44, !47, i64 52, !46, i64 56, !46, i64 60, !37, i64 64, !37, i64 65, !47, i64 72, !37, i64 76, !46, i64 84, !47, i64 88, !37, i64 92, !37, i64 100, !46, i64 108, !36, i64 112, !47, i64 120, !46, i64 124}
!183 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !37, i64 20, !37, i64 21, !47, i64 24, !47, i64 28, !47, i64 32, !47, i64 36}
!184 = !{!178, !37, i64 51}
!185 = !{!178, !47, i64 32}
!186 = !{!178, !39, i64 46}
!187 = !{!188, !39, i64 8976}
!188 = !{!"UserDef", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !46, i64 8468, !39, i64 8472, !39, i64 8474, !39, i64 8476, !39, i64 8478, !39, i64 8480, !39, i64 8482, !46, i64 8484, !46, i64 8488, !46, i64 8492, !39, i64 8496, !39, i64 8498, !46, i64 8500, !46, i64 8504, !46, i64 8508, !46, i64 8512, !46, i64 8516, !46, i64 8520, !46, i64 8524, !39, i64 8528, !39, i64 8530, !39, i64 8532, !39, i64 8534, !41, i64 8536, !41, i64 8552, !41, i64 8568, !41, i64 8584, !41, i64 8600, !41, i64 8616, !41, i64 8632, !37, i64 8648, !39, i64 8712, !39, i64 8714, !39, i64 8716, !39, i64 8718, !39, i64 8720, !39, i64 8722, !39, i64 8724, !39, i64 8726, !37, i64 8728, !39, i64 8896, !39, i64 8898, !39, i64 8900, !39, i64 8902, !39, i64 8904, !39, i64 8906, !39, i64 8908, !39, i64 8910, !46, i64 8912, !46, i64 8916, !39, i64 8920, !39, i64 8922, !39, i64 8924, !39, i64 8926, !39, i64 8928, !39, i64 8930, !39, i64 8932, !39, i64 8934, !39, i64 8936, !39, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !39, i64 8944, !39, i64 8946, !39, i64 8948, !39, i64 8950, !39, i64 8952, !39, i64 8954, !47, i64 8956, !47, i64 8960, !46, i64 8964, !39, i64 8968, !39, i64 8970, !47, i64 8972, !39, i64 8976, !39, i64 8978, !39, i64 8980, !39, i64 8982, !189, i64 8984, !37, i64 9760, !37, i64 9772, !39, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !46, i64 10896, !46, i64 10900, !47, i64 10904, !47, i64 10908, !46, i64 10912, !39, i64 10916, !39, i64 10918, !39, i64 10920, !39, i64 10922, !39, i64 10924, !39, i64 10926, !190, i64 10928}
!189 = !{!"ColorBand", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!190 = !{!"WalkNavigation", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !39, i64 24, !37, i64 26}
!191 = !{!178, !39, i64 344}
!192 = !{!70, !47, i64 2840}
!193 = !{!70, !47, i64 4464}
!194 = !{!39, !39, i64 0}
!195 = !{!70, !36, i64 2848}
!196 = !{!70, !36, i64 4472}
!197 = !{!70, !39, i64 736}
!198 = !{!70, !39, i64 4432}
!199 = !{!70, !39, i64 746}
!200 = !{!70, !39, i64 4442}
!201 = !{!70, !39, i64 752}
!202 = !{!70, !39, i64 4482}
!203 = !{!70, !39, i64 4480}
!204 = !{i64 0, i64 12, !109, i64 12, i64 1, !109, i64 13, i64 1, !109, i64 14, i64 1, !109, i64 15, i64 1, !109}
!205 = !{!70, !47, i64 4544}
!206 = !{!70, !39, i64 4562}
!207 = !{!70, !39, i64 4556}
!208 = !{!70, !39, i64 4560}
!209 = distinct !{!209, !50}
!210 = !{!211, !46, i64 1252}
!211 = !{!"FileData", !41, i64 0, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !36, i64 32, !36, i64 40, !36, i64 48, !46, i64 56, !36, i64 64, !37, i64 72, !37, i64 1096, !46, i64 1100, !212, i64 1104, !36, i64 1216, !36, i64 1224, !36, i64 1232, !46, i64 1240, !46, i64 1244, !46, i64 1248, !46, i64 1252, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !46, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336}
!212 = !{!"z_stream_s", !36, i64 0, !46, i64 8, !40, i64 16, !36, i64 24, !46, i64 32, !40, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !46, i64 88, !40, i64 96, !40, i64 104}
!213 = !{!70, !46, i64 4552}
!214 = !{!70, !39, i64 4558}
!215 = distinct !{!215, !50}
!216 = !{!122, !39, i64 948}
!217 = !{!122, !46, i64 432}
!218 = distinct !{!218, !50}
!219 = !{!70, !47, i64 4600}
!220 = distinct !{!220, !50}
!221 = !{!222, !36, i64 112}
!222 = !{!"FluidsimModifierData", !223, i64 0, !36, i64 112, !36, i64 120}
!223 = !{!"ModifierData", !36, i64 0, !36, i64 8, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!224 = !{!225, !36, i64 0}
!225 = !{!"FluidsimSettings", !36, i64 0, !46, i64 8, !46, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !47, i64 24, !39, i64 28, !39, i64 30, !47, i64 32, !39, i64 36, !39, i64 38, !37, i64 40, !47, i64 52, !47, i64 56, !46, i64 60, !46, i64 64, !46, i64 68, !46, i64 72, !47, i64 76, !46, i64 80, !47, i64 84, !47, i64 88, !47, i64 92, !36, i64 96, !36, i64 104, !37, i64 112, !37, i64 1136, !37, i64 1148, !36, i64 1160, !39, i64 1168, !37, i64 1170, !37, i64 1171, !47, i64 1172, !46, i64 1176, !47, i64 1180, !47, i64 1184, !46, i64 1188, !46, i64 1192, !47, i64 1196, !47, i64 1200, !47, i64 1204, !36, i64 1208, !46, i64 1216, !47, i64 1220, !47, i64 1224, !47, i64 1228, !47, i64 1232, !47, i64 1236, !47, i64 1240, !47, i64 1244, !46, i64 1248, !47, i64 1252}
!226 = !{!122, !39, i64 1040}
!227 = distinct !{!227, !50}
!228 = !{!106, !47, i64 236}
!229 = distinct !{!229, !50}
!230 = distinct !{!230, !50}
!231 = distinct !{!231, !50}
!232 = !{!113, !36, i64 392}
!233 = !{!234, !39, i64 20}
!234 = !{!"VoxelData", !37, i64 0, !46, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !46, i64 28, !36, i64 32, !47, i64 40, !46, i64 44, !37, i64 48, !36, i64 1072, !46, i64 1080, !46, i64 1084}
!235 = distinct !{!235, !50}
!236 = !{!70, !47, i64 4268}
!237 = !{!70, !46, i64 4264}
!238 = !{!70, !46, i64 628}
!239 = !{!70, !47, i64 640}
!240 = !{!70, !46, i64 4280}
!241 = distinct !{!241, !50}
!242 = !{!70, !46, i64 4628}
!243 = !{i8 0, i8 2}
!244 = distinct !{!244, !50}
!245 = !{!141, !36, i64 144}
!246 = !{!247, !47, i64 64}
!247 = !{!"EffectorWeights", !36, i64 0, !37, i64 8, !47, i64 64, !39, i64 68, !37, i64 70, !46, i64 76}
!248 = distinct !{!248, !50}
!249 = !{!250, !36, i64 128}
!250 = !{!"ClothModifierData", !223, i64 0, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !41, i64 152}
!251 = !{!252, !36, i64 160}
!252 = !{!"ClothSimSettings", !36, i64 0, !47, i64 8, !47, i64 12, !47, i64 16, !37, i64 20, !47, i64 32, !47, i64 36, !47, i64 40, !47, i64 44, !47, i64 48, !47, i64 52, !47, i64 56, !47, i64 60, !47, i64 64, !47, i64 68, !47, i64 72, !47, i64 76, !47, i64 80, !47, i64 84, !47, i64 88, !47, i64 92, !47, i64 96, !47, i64 100, !47, i64 104, !47, i64 108, !47, i64 112, !47, i64 116, !47, i64 120, !46, i64 124, !46, i64 128, !46, i64 132, !46, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !37, i64 156, !36, i64 160}
!253 = distinct !{!253, !50}
!254 = !{!122, !36, i64 1248}
!255 = !{!256, !47, i64 96}
!256 = !{!"SoftBody", !46, i64 0, !46, i64 4, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 25, !39, i64 26, !47, i64 28, !37, i64 32, !47, i64 96, !47, i64 100, !47, i64 104, !47, i64 108, !47, i64 112, !47, i64 116, !47, i64 120, !47, i64 124, !47, i64 128, !39, i64 132, !37, i64 134, !39, i64 198, !47, i64 200, !47, i64 204, !37, i64 208, !46, i64 272, !46, i64 276, !46, i64 280, !39, i64 284, !39, i64 286, !36, i64 288, !46, i64 296, !46, i64 300, !47, i64 304, !47, i64 308, !47, i64 312, !47, i64 316, !39, i64 320, !39, i64 322, !39, i64 324, !39, i64 326, !39, i64 328, !39, i64 330, !39, i64 332, !39, i64 334, !36, i64 336, !47, i64 344, !47, i64 348, !36, i64 352, !41, i64 360, !36, i64 376, !37, i64 384, !37, i64 396, !37, i64 432, !46, i64 468}
!257 = !{!256, !36, i64 376}
!258 = !{!122, !36, i64 1240}
!259 = !{!260, !39, i64 6}
!260 = !{!"PartDeflect", !46, i64 0, !39, i64 4, !39, i64 6, !39, i64 8, !39, i64 10, !39, i64 12, !39, i64 14, !39, i64 16, !39, i64 18, !47, i64 20, !47, i64 24, !47, i64 28, !47, i64 32, !47, i64 36, !47, i64 40, !47, i64 44, !47, i64 48, !47, i64 52, !47, i64 56, !47, i64 60, !47, i64 64, !47, i64 68, !47, i64 72, !47, i64 76, !47, i64 80, !47, i64 84, !47, i64 88, !47, i64 92, !47, i64 96, !47, i64 100, !47, i64 104, !47, i64 108, !47, i64 112, !47, i64 116, !47, i64 120, !47, i64 124, !36, i64 128, !36, i64 136, !47, i64 144, !46, i64 148, !36, i64 152}
!261 = !{!260, !39, i64 10}
!262 = !{!260, !46, i64 0}
!263 = distinct !{!263, !50}
!264 = !{!122, !36, i64 288}
!265 = distinct !{!265, !50}
!266 = distinct !{!266, !50}
!267 = !{!268, !47, i64 228}
!268 = !{!"Lamp", !45, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !46, i64 132, !39, i64 136, !39, i64 138, !47, i64 140, !47, i64 144, !47, i64 148, !47, i64 152, !47, i64 156, !47, i64 160, !47, i64 164, !47, i64 168, !47, i64 172, !47, i64 176, !47, i64 180, !47, i64 184, !47, i64 188, !47, i64 192, !47, i64 196, !36, i64 200, !39, i64 208, !39, i64 210, !47, i64 212, !47, i64 216, !47, i64 220, !47, i64 224, !47, i64 228, !47, i64 232, !47, i64 236, !39, i64 240, !39, i64 242, !39, i64 244, !39, i64 246, !37, i64 248, !37, i64 249, !39, i64 250, !39, i64 252, !39, i64 254, !39, i64 256, !39, i64 258, !47, i64 260, !47, i64 264, !47, i64 268, !47, i64 272, !39, i64 276, !39, i64 278, !39, i64 280, !39, i64 282, !39, i64 284, !39, i64 286, !47, i64 288, !47, i64 292, !47, i64 296, !47, i64 300, !47, i64 304, !47, i64 308, !47, i64 312, !47, i64 316, !47, i64 320, !47, i64 324, !47, i64 328, !47, i64 332, !47, i64 336, !39, i64 340, !37, i64 342, !36, i64 344, !37, i64 352, !39, i64 496, !39, i64 498, !37, i64 500, !36, i64 504, !36, i64 512}
!269 = distinct !{!269, !50}
!270 = !{!137, !36, i64 144}
!271 = !{!272, !36, i64 128}
!272 = !{!"Key", !45, i64 0, !36, i64 120, !36, i64 128, !37, i64 136, !46, i64 168, !46, i64 172, !41, i64 176, !36, i64 192, !36, i64 200, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !47, i64 216, !46, i64 220}
!273 = !{!137, !46, i64 1280}
!274 = !{!275, !46, i64 32}
!275 = !{!"KeyBlock", !36, i64 0, !36, i64 8, !47, i64 16, !47, i64 20, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !46, i64 32, !46, i64 36, !36, i64 40, !37, i64 48, !37, i64 112, !47, i64 176, !47, i64 180}
!276 = !{!275, !36, i64 40}
!277 = !{!137, !36, i64 232}
!278 = distinct !{!278, !50}
!279 = distinct !{!279, !50}
!280 = !{!281, !36, i64 192}
!281 = !{!"Lattice", !45, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !39, i64 132, !39, i64 134, !39, i64 136, !39, i64 138, !39, i64 140, !39, i64 142, !37, i64 144, !37, i64 145, !37, i64 146, !37, i64 147, !46, i64 148, !47, i64 152, !47, i64 156, !47, i64 160, !47, i64 164, !47, i64 168, !47, i64 172, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !36, i64 272}
!282 = !{!281, !39, i64 128}
!283 = !{!281, !39, i64 130}
!284 = !{!281, !39, i64 132}
!285 = !{!281, !36, i64 176}
!286 = distinct !{!286, !50}
!287 = distinct !{!287, !50}
!288 = !{!289, !36, i64 192}
!289 = !{!"Curve", !45, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !39, i64 244, !39, i64 246, !39, i64 248, !39, i64 250, !47, i64 252, !47, i64 256, !46, i64 260, !39, i64 264, !39, i64 266, !46, i64 268, !47, i64 272, !47, i64 276, !47, i64 280, !39, i64 284, !39, i64 286, !39, i64 288, !39, i64 290, !46, i64 292, !46, i64 296, !37, i64 300, !39, i64 304, !37, i64 306, !37, i64 307, !47, i64 308, !47, i64 312, !47, i64 316, !47, i64 320, !47, i64 324, !47, i64 328, !47, i64 332, !47, i64 336, !47, i64 340, !47, i64 344, !46, i64 348, !46, i64 352, !46, i64 356, !46, i64 360, !46, i64 364, !36, i64 368, !36, i64 376, !37, i64 384, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !36, i64 480, !46, i64 488, !46, i64 492, !36, i64 496, !290, i64 504, !47, i64 512, !47, i64 516, !47, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!290 = !{!"CharInfo", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !39, i64 6}
!291 = !{!148, !36, i64 72}
!292 = !{!148, !46, i64 24}
!293 = !{!294, !47, i64 36}
!294 = !{!"BezTriple", !37, i64 0, !47, i64 36, !47, i64 40, !47, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !47, i64 56, !47, i64 60, !47, i64 64, !37, i64 68}
!295 = distinct !{!295, !50}
!296 = !{!148, !36, i64 64}
!297 = !{!148, !46, i64 28}
!298 = !{!299, !47, i64 16}
!299 = !{!"BPoint", !37, i64 0, !47, i64 16, !47, i64 20, !39, i64 24, !39, i64 26, !47, i64 28, !47, i64 32}
!300 = distinct !{!300, !50}
!301 = distinct !{!301, !50}
!302 = distinct !{!302, !50}
!303 = !{!70, !46, i64 748}
!304 = !{!70, !39, i64 890}
!305 = !{!70, !39, i64 818}
!306 = !{!89, !36, i64 8}
!307 = distinct !{!307, !50}
!308 = distinct !{!308, !50}
!309 = distinct !{!309, !50}
!310 = !{!122, !37, i64 1046}
!311 = distinct !{!311, !50}
!312 = distinct !{!312, !50}
!313 = distinct !{!313, !50}
!314 = !{!315, !46, i64 32}
!315 = !{!"SpaceLink", !36, i64 0, !36, i64 8, !41, i64 16, !46, i64 32, !47, i64 36, !37, i64 40}
!316 = !{!317, !39, i64 232}
!317 = !{!"View3D", !36, i64 0, !36, i64 8, !41, i64 16, !46, i64 32, !47, i64 36, !37, i64 40, !37, i64 56, !47, i64 72, !47, i64 76, !37, i64 80, !37, i64 81, !46, i64 84, !46, i64 88, !39, i64 92, !39, i64 94, !36, i64 96, !36, i64 104, !77, i64 112, !41, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !46, i64 224, !46, i64 228, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !39, i64 240, !39, i64 242, !47, i64 244, !47, i64 248, !47, i64 252, !47, i64 256, !37, i64 260, !37, i64 272, !39, i64 284, !39, i64 286, !39, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !41, i64 296, !41, i64 312, !41, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!318 = distinct !{!318, !50}
!319 = !{!35, !36, i64 1184}
!320 = !{!35, !36, i64 1312}
!321 = !{!35, !36, i64 1200}
!322 = !{!70, !46, i64 908}
!323 = distinct !{!323, !50}
!324 = !{!106, !36, i64 592}
!325 = !{!189, !39, i64 0}
!326 = distinct !{!326, !50}
!327 = !{!106, !36, i64 600}
!328 = distinct !{!328, !50}
!329 = !{!106, !36, i64 0}
!330 = distinct !{!330, !50}
!331 = !{!113, !36, i64 360}
!332 = distinct !{!332, !50}
!333 = !{!113, !36, i64 0}
!334 = distinct !{!334, !50}
!335 = !{!336, !36, i64 0}
!336 = !{!"World", !45, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !39, i64 132, !39, i64 134, !47, i64 136, !47, i64 140, !47, i64 144, !47, i64 148, !47, i64 152, !47, i64 156, !47, i64 160, !47, i64 164, !47, i64 168, !47, i64 172, !47, i64 176, !47, i64 180, !47, i64 184, !47, i64 188, !47, i64 192, !47, i64 196, !39, i64 200, !39, i64 202, !39, i64 204, !39, i64 206, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !47, i64 216, !47, i64 220, !47, i64 224, !47, i64 228, !47, i64 232, !47, i64 236, !47, i64 240, !47, i64 244, !47, i64 248, !47, i64 252, !47, i64 256, !47, i64 260, !39, i64 264, !39, i64 266, !39, i64 268, !39, i64 270, !47, i64 272, !47, i64 276, !47, i64 280, !47, i64 284, !39, i64 288, !39, i64 290, !39, i64 292, !39, i64 294, !47, i64 296, !47, i64 300, !47, i64 304, !47, i64 308, !47, i64 312, !47, i64 316, !47, i64 320, !39, i64 324, !39, i64 326, !39, i64 328, !39, i64 330, !39, i64 332, !39, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !39, i64 504, !39, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!337 = distinct !{!337, !50}
!338 = !{!178, !46, i64 304}
!339 = distinct !{!339, !50}
!340 = distinct !{!340, !50}
!341 = !{!342, !37, i64 115}
!342 = !{!"MultiresModifierData", !223, i64 0, !37, i64 112, !37, i64 113, !37, i64 114, !37, i64 115, !37, i64 116, !37, i64 117, !37, i64 118}
!343 = !{!342, !37, i64 112}
!344 = !{!342, !37, i64 113}
!345 = !{!342, !37, i64 114}
!346 = distinct !{!346, !50}
!347 = distinct !{!347, !50}
!348 = !{!223, !46, i64 16}
!349 = !{!252, !47, i64 104}
!350 = distinct !{!350, !50}
!351 = distinct !{!351, !50}
!352 = distinct !{!352, !50}
!353 = !{!354, !36, i64 96}
!354 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !78, i64 56, !37, i64 72, !37, i64 73, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !39, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !41, i64 96, !41, i64 112, !41, i64 128, !41, i64 144}
!355 = !{!356, !39, i64 214}
!356 = !{!"ARegion", !36, i64 0, !36, i64 8, !357, i64 16, !78, i64 176, !78, i64 192, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !47, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !36, i64 240, !41, i64 248, !41, i64 264, !41, i64 280, !41, i64 296, !41, i64 312, !41, i64 328, !41, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!357 = !{!"View2D", !77, i64 0, !77, i64 16, !78, i64 32, !78, i64 48, !78, i64 64, !37, i64 80, !37, i64 88, !47, i64 96, !47, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !36, i64 128, !46, i64 136, !46, i64 140, !36, i64 144, !36, i64 152}
!358 = distinct !{!358, !50}
!359 = distinct !{!359, !50}
!360 = distinct !{!360, !50}
!361 = distinct !{!361, !50}
!362 = !{!363, !46, i64 240}
!363 = !{!"SpaceSeq", !36, i64 0, !36, i64 8, !41, i64 16, !46, i64 32, !47, i64 36, !37, i64 40, !357, i64 56, !47, i64 216, !47, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !46, i64 232, !47, i64 236, !46, i64 240, !46, i64 244, !36, i64 248, !364, i64 256}
!364 = !{!"SequencerScopes", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!365 = !{!363, !39, i64 224}
!366 = distinct !{!366, !50}
!367 = distinct !{!367, !50}
!368 = !{!70, !47, i64 4484}
!369 = distinct !{!369, !50}
!370 = !{!371, !39, i64 224}
!371 = !{!"bArmature", !45, i64 0, !36, i64 120, !41, i64 128, !41, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !46, i64 192, !46, i64 196, !46, i64 200, !46, i64 204, !39, i64 208, !39, i64 210, !46, i64 212, !46, i64 216, !46, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !46, i64 232, !46, i64 236, !46, i64 240, !46, i64 244, !46, i64 248, !46, i64 252}
!372 = !{!123, !46, i64 12}
!373 = !{!123, !46, i64 8}
!374 = !{!371, !46, i64 232}
!375 = !{!123, !46, i64 0}
!376 = !{!371, !46, i64 236}
!377 = !{!123, !46, i64 4}
!378 = !{!371, !39, i64 228}
!379 = !{!371, !39, i64 226}
!380 = !{!123, !39, i64 18}
!381 = !{!371, !46, i64 248}
!382 = !{!123, !46, i64 40}
!383 = !{!371, !46, i64 252}
!384 = !{!123, !46, i64 44}
!385 = !{!371, !46, i64 240}
!386 = !{!123, !46, i64 32}
!387 = !{!371, !46, i64 244}
!388 = !{!123, !46, i64 36}
!389 = !{!371, !39, i64 210}
!390 = !{!123, !39, i64 28}
!391 = !{!123, !39, i64 30}
!392 = !{!123, !39, i64 24}
!393 = !{!371, !39, i64 230}
!394 = !{!123, !39, i64 26}
!395 = distinct !{!395, !50}
!396 = distinct !{!396, !50}
!397 = !{!106, !47, i64 308}
!398 = distinct !{!398, !50}
!399 = distinct !{!399, !50}
!400 = distinct !{!400, !50}
!401 = distinct !{!401, !50}
!402 = distinct !{!402, !50}
!403 = !{!356, !47, i64 28}
!404 = !{!356, !47, i64 44}
!405 = !{!354, !39, i64 76}
!406 = !{!356, !47, i64 24}
!407 = !{!356, !47, i64 40}
!408 = distinct !{!408, !50}
!409 = distinct !{!409, !50}
!410 = !{!106, !47, i64 180}
!411 = distinct !{!411, !50}
!412 = !{!336, !47, i64 280}
!413 = !{!336, !47, i64 316}
!414 = !{!336, !39, i64 324}
!415 = !{!336, !39, i64 202}
!416 = !{!336, !39, i64 292}
!417 = distinct !{!417, !50}
!418 = !{!70, !47, i64 840}
!419 = !{!70, !47, i64 848}
!420 = !{!70, !47, i64 844}
!421 = !{!70, !47, i64 852}
!422 = !{!70, !46, i64 648}
!423 = !{!70, !46, i64 616}
!424 = !{!94, !47, i64 288}
!425 = distinct !{!425, !50}
!426 = distinct !{!426, !50}
!427 = distinct !{!427, !50}
!428 = !{!429, !47, i64 12}
!429 = !{!"ParticleBrushData", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !46, i64 8, !47, i64 12}
!430 = distinct !{!430, !50}
!431 = !{!106, !39, i64 394}
!432 = distinct !{!432, !50}
!433 = distinct !{!433, !50}
!434 = distinct !{!434, !50}
!435 = distinct !{!435, !50}
!436 = distinct !{!436, !50}
!437 = distinct !{!437, !50}
!438 = distinct !{!438, !50}
!439 = !{!317, !39, i64 242}
!440 = distinct !{!440, !50}
!441 = !{!442, !36, i64 144}
!442 = !{!"Brush", !45, i64 0, !443, i64 120, !36, i64 144, !111, i64 152, !111, i64 464, !36, i64 776, !36, i64 784, !36, i64 792, !36, i64 800, !36, i64 808, !37, i64 816, !47, i64 1840, !39, i64 1844, !39, i64 1846, !47, i64 1848, !46, i64 1852, !46, i64 1856, !46, i64 1860, !47, i64 1864, !46, i64 1868, !46, i64 1872, !46, i64 1876, !46, i64 1880, !47, i64 1884, !47, i64 1888, !37, i64 1892, !47, i64 1904, !37, i64 1908, !46, i64 1920, !47, i64 1924, !47, i64 1928, !46, i64 1932, !46, i64 1936, !46, i64 1940, !37, i64 1944, !37, i64 1945, !37, i64 1946, !37, i64 1947, !47, i64 1948, !47, i64 1952, !47, i64 1956, !47, i64 1960, !47, i64 1964, !46, i64 1968, !46, i64 1972, !46, i64 1976, !47, i64 1980, !47, i64 1984, !46, i64 1988, !46, i64 1992, !47, i64 1996, !37, i64 2000, !37, i64 2012, !37, i64 2024, !37, i64 2032, !37, i64 2040, !37, i64 2048}
!443 = !{!"BrushClone", !36, i64 0, !37, i64 8, !47, i64 16, !47, i64 20}
!444 = !{!445, !46, i64 8}
!445 = !{!"CurveMapping", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !77, i64 16, !77, i64 32, !37, i64 48, !37, i64 336, !37, i64 348, !37, i64 360, !37, i64 372}
!446 = distinct !{!446, !50}
!447 = distinct !{!447, !50}
!448 = !{!225, !46, i64 1192}
!449 = distinct !{!449, !50}
!450 = !{!132, !36, i64 248}
!451 = distinct !{!451, !50}
!452 = distinct !{!452, !50}
!453 = distinct !{!453, !50}
!454 = distinct !{!454, !50}
!455 = distinct !{!455, !50}
!456 = distinct !{!456, !50}
!457 = distinct !{!457, !50}
!458 = distinct !{!458, !50}
!459 = distinct !{!459, !50}
!460 = distinct !{!460, !50}
!461 = !{!462, !47, i64 152}
!462 = !{!"SpaceNode", !36, i64 0, !36, i64 8, !41, i64 16, !46, i64 32, !47, i64 36, !37, i64 40, !357, i64 56, !36, i64 216, !36, i64 224, !39, i64 232, !39, i64 234, !47, i64 236, !47, i64 240, !47, i64 244, !47, i64 248, !47, i64 252, !37, i64 256, !41, i64 264, !36, i64 280, !36, i64 288, !37, i64 296, !46, i64 360, !46, i64 364, !39, i64 368, !39, i64 370, !39, i64 372, !39, i64 374, !41, i64 376, !36, i64 392}
!463 = !{!462, !47, i64 156}
!464 = !{!356, !47, i64 112}
!465 = !{!356, !47, i64 116}
!466 = distinct !{!466, !50}
!467 = !{!468, !46, i64 216}
!468 = !{!"SpaceTime", !36, i64 0, !36, i64 8, !41, i64 16, !46, i64 32, !47, i64 36, !357, i64 40, !41, i64 200, !46, i64 216, !46, i64 220}
!469 = distinct !{!469, !50}
!470 = !{!122, !36, i64 216}
!471 = !{!122, !39, i64 138}
!472 = !{!473, !36, i64 120}
!473 = !{!"ArmatureModifierData", !223, i64 0, !39, i64 112, !39, i64 114, !46, i64 116, !36, i64 120, !36, i64 128, !37, i64 136}
!474 = !{!371, !39, i64 208}
!475 = !{!473, !39, i64 112}
!476 = !{!477, !36, i64 112}
!477 = !{!"LatticeModifierData", !223, i64 0, !36, i64 112, !37, i64 120, !47, i64 184, !37, i64 188}
!478 = !{!479, !36, i64 112}
!479 = !{!"CurveModifierData", !223, i64 0, !36, i64 112, !37, i64 120, !39, i64 184, !37, i64 186}
!480 = distinct !{!480, !50}
!481 = !{!70, !46, i64 232}
!482 = distinct !{!482, !50}
!483 = !{!70, !46, i64 236}
!484 = distinct !{!484, !50}
!485 = !{!113, !47, i64 144}
!486 = distinct !{!486, !50}
!487 = !{!289, !47, i64 256}
!488 = distinct !{!488, !50}
!489 = !{!94, !47, i64 144}
!490 = distinct !{!490, !50}
!491 = distinct !{!491, !50}
!492 = !{!442, !46, i64 1876}
!493 = !{!442, !47, i64 1904}
!494 = !{!442, !47, i64 1980}
!495 = !{!442, !46, i64 1852}
!496 = !{!442, !46, i64 1968}
!497 = !{!442, !47, i64 1952}
!498 = !{!442, !47, i64 1956}
!499 = !{!442, !46, i64 1880}
!500 = !{!442, !47, i64 1884}
!501 = !{!442, !47, i64 1888}
!502 = !{!442, !46, i64 1856}
!503 = distinct !{!503, !50}
!504 = !{!178, !47, i64 476}
!505 = !{!178, !47, i64 472}
!506 = !{!178, !46, i64 468}
!507 = distinct !{!507, !50}
!508 = distinct !{!508, !50}
!509 = !{!510, !46, i64 140}
!510 = !{!"SmokeModifierData", !223, i64 0, !36, i64 112, !36, i64 120, !36, i64 128, !47, i64 136, !46, i64 140}
!511 = !{!510, !36, i64 112}
!512 = !{!513, !46, i64 420}
!513 = !{!"SmokeDomainSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !37, i64 96, !37, i64 108, !37, i64 120, !37, i64 132, !37, i64 144, !37, i64 156, !37, i64 168, !37, i64 180, !37, i64 192, !37, i64 204, !37, i64 268, !37, i64 332, !37, i64 344, !37, i64 356, !37, i64 368, !46, i64 380, !47, i64 384, !47, i64 388, !46, i64 392, !46, i64 396, !47, i64 400, !47, i64 404, !47, i64 408, !46, i64 412, !46, i64 416, !46, i64 420, !46, i64 424, !39, i64 428, !39, i64 430, !46, i64 432, !47, i64 436, !37, i64 440, !47, i64 452, !46, i64 456, !46, i64 460, !37, i64 464, !37, i64 480, !36, i64 512, !46, i64 520, !47, i64 524, !47, i64 528, !46, i64 532, !37, i64 536, !46, i64 548, !47, i64 552, !47, i64 556, !47, i64 560, !47, i64 564, !47, i64 568, !37, i64 572}
!514 = distinct !{!514, !50}
!515 = !{!510, !36, i64 120}
!516 = !{!517, !46, i64 180}
!517 = !{!"SmokeFlowSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !46, i64 40, !47, i64 44, !47, i64 48, !47, i64 52, !47, i64 56, !37, i64 60, !47, i64 72, !47, i64 76, !47, i64 80, !47, i64 84, !47, i64 88, !46, i64 92, !47, i64 96, !47, i64 100, !46, i64 104, !37, i64 108, !39, i64 172, !39, i64 174, !39, i64 176, !39, i64 178, !46, i64 180}
!518 = distinct !{!518, !50}
!519 = !{!517, !47, i64 44}
!520 = distinct !{!520, !50}
!521 = !{!442, !39, i64 1846}
!522 = distinct !{!522, !50}
!523 = !{!141, !36, i64 128}
!524 = !{!525, !47, i64 20}
!525 = !{!"BoidSettings", !46, i64 0, !46, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !47, i64 24, !47, i64 28, !47, i64 32, !47, i64 36, !47, i64 40, !47, i64 44, !47, i64 48, !47, i64 52, !47, i64 56, !47, i64 60, !47, i64 64, !47, i64 68, !47, i64 72, !47, i64 76, !47, i64 80, !47, i64 84, !41, i64 88}
!526 = !{!141, !46, i64 152}
!527 = !{!141, !47, i64 496}
!528 = distinct !{!528, !50}
!529 = distinct !{!529, !50}
!530 = distinct !{!530, !50}
!531 = !{!532, !37, i64 56}
!532 = !{!"SpaceInfo", !36, i64 0, !36, i64 8, !41, i64 16, !46, i64 32, !47, i64 36, !37, i64 40, !37, i64 56, !37, i64 57}
!533 = !{!356, !39, i64 120}
!534 = !{!356, !39, i64 132}
!535 = !{!356, !39, i64 128}
!536 = !{!356, !39, i64 126}
!537 = !{!356, !39, i64 124}
!538 = distinct !{!538, !50}
!539 = distinct !{!539, !50}
!540 = distinct !{!540, !50}
!541 = distinct !{!541, !50}
!542 = distinct !{!542, !50}
!543 = !{!544, !39, i64 6}
!544 = !{!"bSteeringActuator", !37, i64 0, !37, i64 5, !39, i64 6, !46, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !47, i64 24, !46, i64 28, !36, i64 32, !36, i64 40}
!545 = distinct !{!545, !50}
!546 = distinct !{!546, !50}
!547 = !{!548, !46, i64 128}
!548 = !{!"OceanModifierData", !223, i64 0, !36, i64 112, !36, i64 120, !46, i64 128, !46, i64 132, !47, i64 136, !47, i64 140, !47, i64 144, !47, i64 148, !47, i64 152, !47, i64 156, !47, i64 160, !47, i64 164, !47, i64 168, !47, i64 172, !46, i64 176, !46, i64 180, !37, i64 184, !37, i64 1208, !37, i64 1272, !37, i64 1273, !37, i64 1274, !37, i64 1275, !39, i64 1276, !39, i64 1278, !46, i64 1280, !47, i64 1284, !47, i64 1288, !46, i64 1292}
!549 = !{!548, !36, i64 120}
!550 = distinct !{!550, !50}
!551 = distinct !{!551, !50}
!552 = distinct !{!552, !50}
!553 = !{!554, !46, i64 10500}
!554 = !{!"SpaceImage", !36, i64 0, !36, i64 8, !41, i64 16, !46, i64 32, !46, i64 36, !36, i64 40, !114, i64 48, !36, i64 88, !555, i64 96, !556, i64 5360, !36, i64 10520, !37, i64 10528, !47, i64 10536, !47, i64 10540, !47, i64 10544, !47, i64 10548, !47, i64 10552, !37, i64 10556, !37, i64 10557, !39, i64 10558, !39, i64 10560, !39, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !557, i64 10568}
!555 = !{!"Scopes", !46, i64 0, !46, i64 4, !46, i64 8, !47, i64 12, !46, i64 16, !47, i64 20, !47, i64 24, !46, i64 28, !47, i64 32, !46, i64 36, !37, i64 40, !556, i64 64, !36, i64 5224, !36, i64 5232, !36, i64 5240, !36, i64 5248, !46, i64 5256, !46, i64 5260}
!556 = !{!"Histogram", !46, i64 0, !46, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !47, i64 5128, !47, i64 5132, !39, i64 5136, !39, i64 5138, !46, i64 5140, !37, i64 5144}
!557 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!558 = distinct !{!558, !50}
!559 = distinct !{!559, !50}
!560 = !{!275, !47, i64 176}
!561 = !{!275, !47, i64 180}
!562 = distinct !{!562, !50}
!563 = distinct !{!563, !50}
!564 = distinct !{!564, !50}
!565 = !{!122, !47, i64 620}
!566 = distinct !{!566, !50}
!567 = distinct !{!567, !50}
!568 = !{!569, !46, i64 264}
!569 = !{!"bNodeTree", !45, i64 0, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 200, !36, i64 208, !37, i64 216, !41, i64 224, !41, i64 240, !46, i64 256, !46, i64 260, !46, i64 264, !46, i64 268, !46, i64 272, !39, i64 276, !39, i64 278, !46, i64 280, !46, i64 284, !39, i64 288, !39, i64 290, !46, i64 292, !77, i64 296, !41, i64 312, !41, i64 328, !36, i64 344, !570, i64 352, !46, i64 356, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !36, i64 408, !36, i64 416, !36, i64 424}
!570 = !{!"bNodeInstanceKey", !46, i64 0}
!571 = !{!572, !46, i64 280}
!572 = !{!"bNodeSocket", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !37, i64 96, !36, i64 160, !39, i64 168, !39, i64 170, !39, i64 172, !39, i64 174, !36, i64 176, !37, i64 184, !47, i64 248, !47, i64 252, !36, i64 256, !39, i64 264, !39, i64 266, !46, i64 268, !36, i64 272, !46, i64 280, !46, i64 284, !36, i64 288, !36, i64 296, !573, i64 304}
!573 = !{!"bNodeStack", !37, i64 0, !47, i64 16, !47, i64 20, !36, i64 24, !39, i64 32, !39, i64 34, !39, i64 36, !39, i64 38, !39, i64 40, !39, i64 42, !37, i64 44}
!574 = distinct !{!574, !50}
!575 = distinct !{!575, !50}
!576 = distinct !{!576, !50}
!577 = !{!572, !36, i64 296}
!578 = !{!572, !39, i64 168}
!579 = !{!580, !36, i64 16}
!580 = !{!"bNodeLink", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !46, i64 48, !46, i64 52}
!581 = !{!580, !36, i64 32}
!582 = !{!580, !36, i64 24}
!583 = !{!580, !36, i64 40}
!584 = !{!569, !46, i64 272}
!585 = distinct !{!585, !50}
!586 = distinct !{!586, !50}
!587 = !{!569, !46, i64 268}
!588 = distinct !{!588, !50}
!589 = !{!111, !39, i64 2}
!590 = distinct !{!590, !50}
!591 = !{!106, !47, i64 200}
!592 = !{!106, !47, i64 336}
!593 = distinct !{!593, !50}
!594 = !{!595, !46, i64 200}
!595 = !{!"bScreen", !45, i64 0, !41, i64 120, !41, i64 136, !41, i64 152, !41, i64 168, !36, i64 184, !36, i64 192, !46, i64 200, !46, i64 204, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !39, i64 220, !39, i64 222, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !36, i64 232, !36, i64 240}
!596 = distinct !{!596, !50}
!597 = !{!442, !47, i64 1960}
!598 = distinct !{!598, !50}
!599 = distinct !{!599, !50}
!600 = !{!601, !46, i64 208}
!601 = !{!"SolidifyModifierData", !223, i64 0, !37, i64 112, !47, i64 176, !47, i64 180, !47, i64 184, !47, i64 188, !47, i64 192, !47, i64 196, !47, i64 200, !47, i64 204, !46, i64 208, !39, i64 212, !39, i64 214}
!602 = !{!601, !39, i64 214}
!603 = distinct !{!603, !50}
!604 = !{!141, !46, i64 176}
!605 = !{!141, !39, i64 196}
!606 = distinct !{!606, !50}
!607 = !{!137, !36, i64 208}
!608 = !{!137, !46, i64 1288}
!609 = distinct !{!609, !50}
!610 = distinct !{!610, !50}
!611 = distinct !{!611, !50}
!612 = distinct !{!612, !50}
!613 = distinct !{!613, !50}
!614 = !{!357, !39, i64 116}
!615 = !{!357, !39, i64 112}
!616 = !{!357, !39, i64 110}
!617 = !{!357, !39, i64 108}
!618 = !{!357, !39, i64 104}
!619 = distinct !{!619, !50}
!620 = distinct !{!620, !50}
!621 = distinct !{!621, !50}
!622 = !{!113, !36, i64 384}
!623 = !{!624, !47, i64 80}
!624 = !{!"PointDensity", !39, i64 0, !39, i64 2, !47, i64 4, !47, i64 8, !39, i64 12, !39, i64 14, !46, i64 16, !46, i64 20, !36, i64 24, !46, i64 32, !39, i64 36, !39, i64 38, !36, i64 40, !36, i64 48, !47, i64 56, !39, i64 60, !39, i64 62, !39, i64 64, !37, i64 66, !47, i64 72, !47, i64 76, !47, i64 80, !47, i64 84, !36, i64 88, !36, i64 96}
!625 = !{!624, !36, i64 96}
!626 = !{!627, !39, i64 2}
!627 = !{!"CurveMap", !39, i64 0, !39, i64 2, !47, i64 4, !47, i64 8, !47, i64 12, !37, i64 16, !37, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !37, i64 56, !37, i64 64}
!628 = distinct !{!628, !50}
!629 = distinct !{!629, !50}
!630 = !{!631, !47, i64 20}
!631 = !{!"bCameraActuator", !36, i64 0, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !39, i64 24, !39, i64 26, !47, i64 28}
!632 = distinct !{!632, !50}
!633 = distinct !{!633, !50}
!634 = !{!70, !46, i64 632}
!635 = !{!70, !47, i64 4288}
!636 = !{!94, !47, i64 292}
!637 = distinct !{!637, !50}
!638 = distinct !{!638, !50}
!639 = distinct !{!639, !50}
!640 = distinct !{!640, !50}
!641 = distinct !{!641, !50}
!642 = distinct !{!642, !50}
!643 = distinct !{!643, !50}
!644 = distinct !{!644, !50}
!645 = !{!646, !39, i64 72}
!646 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !36, i64 48, !36, i64 56, !46, i64 64, !47, i64 68, !39, i64 72, !39, i64 74, !46, i64 76, !36, i64 80, !46, i64 88, !37, i64 92, !47, i64 104, !47, i64 108}
!647 = !{!646, !46, i64 64}
!648 = !{!646, !36, i64 48}
!649 = !{!294, !37, i64 49}
!650 = !{!294, !37, i64 50}
!651 = distinct !{!651, !50}
!652 = distinct !{!652, !50}
!653 = distinct !{!653, !50}
!654 = !{!122, !36, i64 120}
!655 = !{!656, !36, i64 0}
!656 = !{!"AnimData", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !36, i64 40, !41, i64 48, !41, i64 64, !46, i64 80, !46, i64 84, !39, i64 88, !39, i64 90, !47, i64 92}
!657 = !{!658, !36, i64 0}
!658 = !{!"bActionActuator", !36, i64 0, !39, i64 8, !39, i64 10, !47, i64 12, !47, i64 16, !37, i64 20, !37, i64 84, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !47, i64 160, !47, i64 164}
!659 = !{!53, !39, i64 28}
!660 = !{!122, !36, i64 256}
!661 = distinct !{!661, !50}
!662 = distinct !{!662, !50}
!663 = distinct !{!663, !50}
!664 = distinct !{!664, !50}
!665 = distinct !{!665, !50}
!666 = distinct !{!666, !50}
!667 = distinct !{!667, !50}
!668 = !{!569, !46, i64 284}
!669 = distinct !{!669, !50}
!670 = !{!141, !47, i64 304}
!671 = !{!141, !39, i64 340}
!672 = distinct !{!672, !50}
!673 = !{!70, !47, i64 4580}
!674 = !{!70, !47, i64 4488}
!675 = !{!70, !47, i64 4492}
!676 = !{!70, !47, i64 4496}
!677 = !{!70, !47, i64 4500}
!678 = !{!70, !47, i64 4504}
!679 = !{!70, !47, i64 4508}
!680 = !{!70, !47, i64 4512}
!681 = !{!70, !47, i64 4516}
!682 = !{!70, !47, i64 4520}
!683 = !{!70, !47, i64 4524}
!684 = !{!70, !46, i64 4528}
!685 = !{!70, !47, i64 4532}
!686 = !{!70, !47, i64 4536}
!687 = distinct !{!687, !50}
!688 = !{!"versioning_250.c:do_versions_windowmanager_2_50"}
!689 = !{!354, !39, i64 78}
!690 = distinct !{!690, !50}
!691 = distinct !{!691, !50}
!692 = !{!354, !37, i64 72}
!693 = !{!354, !37, i64 73}
!694 = !{!315, !36, i64 0}
!695 = distinct !{!695, !50}
!696 = distinct !{!696, !50}
!697 = !{!"versioning_250.c:do_versions_gpencil_2_50"}
!698 = distinct !{!698, !50}
!699 = !{!317, !36, i64 368}
!700 = !{!462, !36, i64 392}
!701 = !{!363, !36, i64 248}
!702 = distinct !{!702, !50}
!703 = !{!"versioning_250.c:do_version_mtex_factor_2_50"}
!704 = !{!111, !39, i64 4}
!705 = !{!111, !47, i64 176}
!706 = !{!111, !47, i64 172}
!707 = !{!111, !47, i64 180}
!708 = !{!111, !47, i64 224}
!709 = !{!111, !47, i64 244}
!710 = !{!111, !47, i64 248}
!711 = !{!111, !47, i64 272}
!712 = !{!111, !47, i64 280}
!713 = !{!111, !47, i64 284}
!714 = !{!111, !47, i64 288}
!715 = !{!111, !47, i64 296}
!716 = !{!111, !47, i64 308}
!717 = !{!111, !47, i64 164}
!718 = distinct !{!718, !50}
!719 = !{!"versioning_250.c:is_zero_v3"}
!720 = !{!"versioning_250.c:copy_v3_v3"}
!721 = !{!"versioning_250.c:do_versions_seq_unique_name_all_strips"}
!722 = !{!94, !36, i64 256}
!723 = distinct !{!723, !50}
!724 = !{!"versioning_250.c:srgb_to_linearrgb_v3_v3"}
!725 = !{!"versioning_250.c:sequencer_init_preview_region"}
!726 = !{!356, !39, i64 216}
!727 = !{!356, !39, i64 218}
!728 = !{i64 0, i64 4, !63, i64 4, i64 4, !63, i64 8, i64 4, !63, i64 12, i64 4, !63}
!729 = !{!"versioning_250.c:do_version_constraints_radians_degrees_250"}
!730 = !{!731, !39, i64 24}
!731 = !{!"bConstraint", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 26, !37, i64 28, !37, i64 29, !37, i64 30, !39, i64 94, !47, i64 96, !47, i64 100, !36, i64 104, !47, i64 112, !47, i64 116}
!732 = !{!731, !36, i64 16}
!733 = !{!734, !47, i64 40}
!734 = !{!"bRigidBodyJointConstraint", !36, i64 0, !36, i64 8, !46, i64 16, !47, i64 20, !47, i64 24, !47, i64 28, !47, i64 32, !47, i64 36, !47, i64 40, !37, i64 44, !37, i64 68, !47, i64 92, !39, i64 96, !39, i64 98, !39, i64 100, !39, i64 102}
!735 = !{!736, !47, i64 152}
!736 = !{!"bKinematicConstraint", !36, i64 0, !39, i64 8, !39, i64 10, !39, i64 12, !39, i64 14, !37, i64 16, !36, i64 80, !37, i64 88, !47, i64 152, !47, i64 156, !47, i64 160, !37, i64 164, !39, i64 176, !39, i64 178, !47, i64 180}
!737 = distinct !{!737, !50}
!738 = !{!"versioning_250.c:mul_v3_fl"}
!739 = !{!"versioning_250.c:do_version_mdef_250"}
!740 = distinct !{!740, !50}
!741 = !{!742, !36, i64 344}
!742 = !{!"MeshDeformModifierData", !223, i64 0, !36, i64 112, !37, i64 120, !39, i64 184, !39, i64 186, !37, i64 188, !36, i64 192, !36, i64 200, !36, i64 208, !46, i64 216, !46, i64 220, !36, i64 224, !36, i64 232, !36, i64 240, !46, i64 248, !46, i64 252, !37, i64 256, !47, i64 268, !37, i64 272, !36, i64 336, !36, i64 344, !36, i64 352}
!743 = !{!742, !36, i64 208}
!744 = distinct !{!744, !50}
!745 = !{!"versioning_250.c:do_version_bone_roll_256"}
!746 = distinct !{!746, !50}
!747 = !{!"versioning_250.c:is_zero_v4"}
!748 = !{!"versioning_250.c:do_versions_node_group_add_socket_2_56_2"}
!749 = !{!572, !39, i64 172}
!750 = !{!"versioning_250.c:copy_v4_v4"}
!751 = !{!"versioning_250.c:do_versions_socket_default_value_259"}
!752 = !{!572, !36, i64 256}
!753 = !{!754, !47, i64 4}
!754 = !{!"bNodeSocketValueFloat", !46, i64 0, !47, i64 4, !47, i64 8, !47, i64 12}
!755 = !{!754, !46, i64 0}
!756 = !{!757, !46, i64 0}
!757 = !{!"bNodeSocketValueVector", !46, i64 0, !37, i64 4, !47, i64 16, !47, i64 20}
!758 = !{!"versioning_250.c:area_add_header_region"}
!759 = !{!"versioning_250.c:area_add_window_regions"}
!760 = !{!356, !39, i64 130}
!761 = distinct !{!761, !50}
!762 = !{i64 0, i64 4, !763, i64 4, i64 4, !763, i64 8, i64 4, !763, i64 12, i64 4, !763}
!763 = !{!46, !46, i64 0}
!764 = !{!356, !47, i64 16}
!765 = !{!354, !39, i64 74}
!766 = !{!356, !47, i64 20}
!767 = !{!768, !37, i64 336}
!768 = !{!"SpaceAction", !36, i64 0, !36, i64 8, !41, i64 16, !46, i64 32, !47, i64 36, !37, i64 40, !357, i64 56, !36, i64 216, !769, i64 224, !37, i64 336, !37, i64 337, !39, i64 338, !47, i64 340}
!769 = !{!"bDopeSheet", !36, i64 0, !41, i64 8, !36, i64 24, !37, i64 32, !46, i64 96, !46, i64 100, !46, i64 104, !46, i64 108}
!770 = !{!768, !36, i64 216}
!771 = !{!356, !39, i64 208}
!772 = !{!356, !39, i64 210}
!773 = !{!774, !39, i64 72}
!774 = !{!"SpaceText", !36, i64 0, !36, i64 8, !41, i64 16, !46, i64 32, !47, i64 36, !37, i64 40, !36, i64 56, !46, i64 64, !46, i64 68, !39, i64 72, !39, i64 74, !39, i64 76, !37, i64 78, !37, i64 79, !46, i64 80, !46, i64 84, !46, i64 88, !39, i64 92, !39, i64 94, !39, i64 96, !39, i64 98, !47, i64 100, !78, i64 104, !78, i64 120, !46, i64 136, !46, i64 140, !37, i64 144, !37, i64 400, !39, i64 656, !39, i64 658, !37, i64 660, !36, i64 664, !37, i64 672}
!775 = !{!"versioning_250.c:versions_gpencil_add_main"}
!776 = !{!45, !46, i64 100}
!777 = !{!45, !39, i64 98}
!778 = !{!779, !46, i64 2100}
!779 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !41, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !39, i64 2084, !39, i64 2086, !39, i64 2088, !37, i64 2090, !39, i64 2092, !46, i64 2096, !46, i64 2100, !37, i64 2104, !46, i64 2108, !46, i64 2112, !37, i64 2116}
