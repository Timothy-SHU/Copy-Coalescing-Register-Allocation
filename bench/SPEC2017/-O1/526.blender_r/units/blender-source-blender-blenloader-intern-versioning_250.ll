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
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.SpaceLink = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16] }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.SpaceNode = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, ptr, i16, i16, float, float, float, float, float, [2 x float], %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, %struct.ListBase, ptr }
%struct.SpaceSeq = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, float, float, i16, i16, i16, i16, i32, float, i32, i32, ptr, %struct.SequencerScopes }
%struct.SequencerScopes = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
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
%struct.MultiresModifierData = type { %struct.ModifierData, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.bPose = type { %struct.ListBase, ptr, i16, i16, i32, i32, float, [3 x float], [3 x float], %struct.ListBase, i32, i32, ptr, ptr, %struct.bAnimVizSettings, [64 x i8] }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.bRigidBodyJointConstraint = type { ptr, ptr, i32, float, float, float, float, float, float, [6 x float], [6 x float], float, i16, i16, i16, i16 }
%struct.bKinematicConstraint = type { ptr, i16, i16, i16, i16, [64 x i8], ptr, [64 x i8], float, float, float, [3 x float], i16, i16, float }
%struct.bRotLimitConstraint = type { float, float, float, float, float, float, i16, i16 }
%struct.CurveMapping = type { i32, i32, i32, i32, %struct.rctf, %struct.rctf, [4 x %struct.CurveMap], [3 x float], [3 x float], [3 x float], [3 x float] }
%struct.CurveMap = type { i16, i16, float, float, float, [2 x float], [2 x float], ptr, ptr, ptr, [2 x float], [2 x float] }
%struct.FluidsimSettings = type { ptr, i32, i32, i16, i16, i16, i16, float, i16, i16, float, i16, i16, [3 x float], float, float, i32, i32, i32, i32, float, i32, float, float, float, ptr, ptr, [1024 x i8], [3 x float], [3 x float], ptr, i16, i8, i8, float, i32, float, float, i32, i32, float, float, float, ptr, i32, float, float, float, float, float, float, float, i32, float }
%struct.NodeColorBalance = type { [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float] }
%struct.SpaceTime = type { ptr, ptr, %struct.ListBase, i32, float, %struct.View2D, %struct.ListBase, i32, i32 }
%struct.MeshDeformModifierData = type { %struct.ModifierData, ptr, [64 x i8], i16, i16, [2 x i16], ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32, [3 x float], float, [4 x [4 x float]], ptr, ptr, ptr }
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
%struct.bIpoActuator = type { i16, i16, float, float, [64 x i8], [64 x i8], i16, i16, i16, i16 }
%struct.bActionActuator = type { ptr, i16, i16, float, float, [64 x i8], [64 x i8], i16, i16, i16, i16, i16, i16, float, float }
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

; Function Attrs: nounwind uwtable
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
  br i1 %14, label %15, label %480

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
  br i1 %32, label %89, label %36

33:                                               ; preds = %86, %36
  %34 = load ptr, ptr %37, align 8, !tbaa !42
  %35 = icmp eq ptr %34, null
  br i1 %35, label %89, label %36, !llvm.loop !52

36:                                               ; preds = %29, %33
  %37 = phi ptr [ %34, %33 ], [ %31, %29 ]
  %38 = getelementptr inbounds %struct.Object, ptr %37, i64 0, i32 94
  %39 = load ptr, ptr %38, align 8, !tbaa !42
  %40 = icmp eq ptr %39, null
  br i1 %40, label %33, label %41

41:                                               ; preds = %36, %86
  %42 = phi ptr [ %87, %86 ], [ %39, %36 ]
  %43 = getelementptr inbounds %struct.bActuator, ptr %42, i64 0, i32 3
  %44 = load i16, ptr %43, align 8, !tbaa !53
  %45 = icmp eq i16 %44, 5
  br i1 %45, label %46, label %86

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.bActuator, ptr %42, i64 0, i32 8
  %48 = load ptr, ptr %47, align 8, !tbaa !55
  %49 = getelementptr inbounds %struct.bSoundActuator, ptr %48, i64 0, i32 7
  %50 = load ptr, ptr %49, align 8, !tbaa !56
  %51 = icmp eq ptr %50, null
  br i1 %51, label %76, label %52

52:                                               ; preds = %46
  %53 = tail call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %50) #9
  %54 = getelementptr inbounds %struct.bSound, ptr %53, i64 0, i32 12
  %55 = load i32, ptr %54, align 8, !tbaa !59
  %56 = trunc i32 %55 to i16
  %57 = lshr i16 %56, 3
  %58 = and i16 %57, 1
  store i16 %58, ptr %48, align 8, !tbaa !60
  %59 = getelementptr inbounds %struct.bSound, ptr %53, i64 0, i32 8
  %60 = load float, ptr %59, align 8, !tbaa !61
  %61 = getelementptr inbounds %struct.bSoundActuator, ptr %48, i64 0, i32 6
  store float %60, ptr %61, align 4, !tbaa !62
  %62 = getelementptr inbounds %struct.bSound, ptr %53, i64 0, i32 6
  %63 = load float, ptr %62, align 8, !tbaa !63
  %64 = getelementptr inbounds %struct.bSoundActuator, ptr %48, i64 0, i32 5
  store float %63, ptr %64, align 8, !tbaa !64
  %65 = getelementptr inbounds %struct.bSound, ptr %53, i64 0, i32 11
  %66 = load float, ptr %65, align 4, !tbaa !65
  %67 = getelementptr inbounds %struct.bSoundActuator, ptr %48, i64 0, i32 8
  %68 = getelementptr inbounds %struct.bSoundActuator, ptr %48, i64 0, i32 8, i32 2
  store float %66, ptr %68, align 8, !tbaa !66
  %69 = getelementptr inbounds %struct.bSound, ptr %53, i64 0, i32 10
  %70 = load float, ptr %69, align 8, !tbaa !67
  %71 = getelementptr inbounds %struct.bSoundActuator, ptr %48, i64 0, i32 8, i32 1
  store float %70, ptr %71, align 4, !tbaa !68
  %72 = getelementptr inbounds %struct.bSound, ptr %53, i64 0, i32 9
  %73 = load float, ptr %72, align 4, !tbaa !69
  store float %73, ptr %67, align 8, !tbaa !70
  %74 = getelementptr inbounds %struct.bSound, ptr %53, i64 0, i32 7
  %75 = load float, ptr %74, align 4, !tbaa !71
  br label %80

76:                                               ; preds = %46
  %77 = getelementptr inbounds %struct.bSoundActuator, ptr %48, i64 0, i32 8, i32 2
  store float 1.000000e+00, ptr %77, align 8, !tbaa !66
  %78 = getelementptr inbounds %struct.bSoundActuator, ptr %48, i64 0, i32 5
  store float 1.000000e+00, ptr %78, align 8, !tbaa !64
  %79 = getelementptr inbounds %struct.bSoundActuator, ptr %48, i64 0, i32 8, i32 1
  store float 1.000000e+00, ptr %79, align 4, !tbaa !68
  br label %80

80:                                               ; preds = %76, %52
  %81 = phi float [ 1.000000e+00, %76 ], [ %75, %52 ]
  %82 = getelementptr inbounds %struct.bSoundActuator, ptr %48, i64 0, i32 8, i32 4
  store float %81, ptr %82, align 8, !tbaa !72
  %83 = getelementptr inbounds %struct.bSoundActuator, ptr %48, i64 0, i32 8, i32 5
  store float 3.600000e+02, ptr %83, align 4, !tbaa !73
  %84 = getelementptr inbounds %struct.bSoundActuator, ptr %48, i64 0, i32 8, i32 6
  store float 3.600000e+02, ptr %84, align 8, !tbaa !74
  %85 = getelementptr inbounds %struct.bSoundActuator, ptr %48, i64 0, i32 8, i32 3
  store float 0x47EFFFFFE0000000, ptr %85, align 4, !tbaa !75
  br label %86

86:                                               ; preds = %41, %80
  %87 = load ptr, ptr %42, align 8, !tbaa !42
  %88 = icmp eq ptr %87, null
  br i1 %88, label %33, label %41, !llvm.loop !76

89:                                               ; preds = %33, %29
  %90 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %91 = load ptr, ptr %90, align 8, !tbaa !42
  %92 = icmp eq ptr %91, null
  br i1 %92, label %141, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.SeqIterator, ptr %4, i64 0, i32 4
  %95 = getelementptr inbounds %struct.SeqIterator, ptr %4, i64 0, i32 3
  %96 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 2
  br label %97

97:                                               ; preds = %93, %138
  %98 = phi ptr [ %91, %93 ], [ %139, %138 ]
  %99 = getelementptr inbounds %struct.Scene, ptr %98, i64 0, i32 19
  %100 = load ptr, ptr %99, align 8, !tbaa !77
  %101 = icmp eq ptr %100, null
  br i1 %101, label %138, label %102

102:                                              ; preds = %97
  %103 = load ptr, ptr %100, align 8, !tbaa !96
  %104 = icmp eq ptr %103, null
  br i1 %104, label %138, label %105

105:                                              ; preds = %102
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #9
  call void @BKE_sequence_iterator_begin(ptr noundef nonnull %100, ptr noundef nonnull %4, i8 noundef zeroext 0) #9
  %106 = load i32, ptr %94, align 8, !tbaa !98
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %137, label %108

108:                                              ; preds = %105, %134
  %109 = load ptr, ptr %95, align 8, !tbaa !100
  %110 = getelementptr inbounds %struct.Sequence, ptr %109, i64 0, i32 6
  %111 = load i32, ptr %110, align 4, !tbaa !101
  %112 = icmp eq i32 %111, 5
  br i1 %112, label %113, label %122

113:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #9
  %114 = getelementptr inbounds %struct.Sequence, ptr %109, i64 0, i32 24
  %115 = load ptr, ptr %114, align 8, !tbaa !103
  %116 = getelementptr inbounds %struct.Strip, ptr %115, i64 0, i32 7
  %117 = getelementptr inbounds %struct.Strip, ptr %115, i64 0, i32 6
  %118 = load ptr, ptr %117, align 8, !tbaa !104
  call void @BLI_join_dirfile(ptr noundef nonnull %5, i64 noundef 1024, ptr noundef nonnull %116, ptr noundef %118) #9
  %119 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %5, ptr noundef nonnull %96) #9
  %120 = call ptr @sound_new_file(ptr noundef %2, ptr noundef nonnull %5) #9
  %121 = getelementptr inbounds %struct.Sequence, ptr %109, i64 0, i32 37
  store ptr %120, ptr %121, align 8, !tbaa !106
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #9
  br label %122

122:                                              ; preds = %113, %108
  %123 = getelementptr inbounds %struct.Sequence, ptr %109, i64 0, i32 5
  %124 = load i32, ptr %123, align 8, !tbaa !107
  %125 = and i32 %124, 2621440
  %126 = icmp eq i32 %125, 2097152
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.Sequence, ptr %109, i64 0, i32 24
  %129 = load ptr, ptr %128, align 8, !tbaa !103
  %130 = getelementptr inbounds %struct.Strip, ptr %129, i64 0, i32 8
  %131 = load ptr, ptr %130, align 8, !tbaa !108
  %132 = getelementptr inbounds %struct.Strip, ptr %129, i64 0, i32 7
  %133 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %131, i64 noundef 768, ptr noundef nonnull @.str, ptr noundef nonnull %132) #9
  br label %134

134:                                              ; preds = %122, %127
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %4) #9
  %135 = load i32, ptr %94, align 8, !tbaa !98
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %108, !llvm.loop !109

137:                                              ; preds = %134, %105
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #9
  br label %138

138:                                              ; preds = %97, %102, %137
  %139 = load ptr, ptr %98, align 8, !tbaa !42
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %97, !llvm.loop !110

141:                                              ; preds = %138, %89
  %142 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %143 = load ptr, ptr %142, align 8, !tbaa !42
  %144 = icmp eq ptr %143, null
  br i1 %144, label %304, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 41
  %147 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 41
  %148 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 41
  br label %152

149:                                              ; preds = %240, %157
  %150 = load ptr, ptr %153, align 8, !tbaa !42
  %151 = icmp eq ptr %150, null
  br i1 %151, label %304, label %152, !llvm.loop !111

152:                                              ; preds = %145, %149
  %153 = phi ptr [ %143, %145 ], [ %150, %149 ]
  %154 = getelementptr inbounds %struct.bScreen, ptr %153, i64 0, i32 3
  %155 = load ptr, ptr %154, align 8, !tbaa !42
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %237, %152
  %158 = load ptr, ptr %154, align 8, !tbaa !42
  %159 = icmp eq ptr %158, null
  br i1 %159, label %149, label %243

160:                                              ; preds = %152, %237
  %161 = phi ptr [ %238, %237 ], [ %155, %152 ]
  %162 = getelementptr inbounds %struct.ScrArea, ptr %161, i64 0, i32 12
  %163 = load i16, ptr %162, align 2, !tbaa !112
  %164 = icmp eq i16 %163, 0
  br i1 %164, label %179, label %165

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.ScrArea, ptr %161, i64 0, i32 20
  %167 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %168 = call ptr %167(i64 noundef 384, ptr noundef nonnull @.str.8) #9
  call void @BLI_addtail(ptr noundef nonnull %166, ptr noundef %168) #9
  %169 = getelementptr inbounds %struct.ARegion, ptr %168, i64 0, i32 8
  store i16 1, ptr %169, align 2, !tbaa !114
  %170 = load i16, ptr %162, align 2, !tbaa !112
  %171 = icmp eq i16 %170, 1
  %172 = getelementptr inbounds %struct.ARegion, ptr %168, i64 0, i32 9
  %173 = select i1 %171, i16 2, i16 1
  store i16 %173, ptr %172, align 8, !tbaa !117
  %174 = getelementptr inbounds %struct.ARegion, ptr %168, i64 0, i32 2, i32 12
  store i16 771, ptr %174, align 2, !tbaa !118
  %175 = getelementptr inbounds %struct.ARegion, ptr %168, i64 0, i32 2, i32 13
  store i16 4, ptr %175, align 8, !tbaa !119
  %176 = getelementptr inbounds %struct.ARegion, ptr %168, i64 0, i32 2, i32 11
  store i16 2, ptr %176, align 4, !tbaa !120
  %177 = getelementptr inbounds %struct.ARegion, ptr %168, i64 0, i32 2, i32 15
  store i16 10, ptr %177, align 4, !tbaa !121
  %178 = getelementptr inbounds %struct.ARegion, ptr %168, i64 0, i32 2, i32 14
  store i16 12, ptr %178, align 2, !tbaa !122
  br label %179

179:                                              ; preds = %165, %160
  %180 = getelementptr inbounds %struct.ScrArea, ptr %161, i64 0, i32 19
  %181 = load ptr, ptr %180, align 8, !tbaa !123
  %182 = getelementptr inbounds %struct.ScrArea, ptr %161, i64 0, i32 20
  call fastcc void @area_add_window_regions(ptr noundef nonnull %161, ptr noundef %181, ptr noundef nonnull %182)
  %183 = load ptr, ptr %180, align 8, !tbaa !42
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %188

185:                                              ; preds = %194, %179
  %186 = load ptr, ptr %180, align 8, !tbaa !42
  %187 = icmp eq ptr %186, null
  br i1 %187, label %206, label %197

188:                                              ; preds = %179, %194
  %189 = phi ptr [ %195, %194 ], [ %183, %179 ]
  %190 = getelementptr inbounds %struct.SpaceLink, ptr %189, i64 0, i32 3
  %191 = load i32, ptr %190, align 8, !tbaa !124
  %192 = icmp eq i32 %191, 10
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  store i32 0, ptr %190, align 8, !tbaa !124
  br label %194

194:                                              ; preds = %193, %188
  %195 = load ptr, ptr %189, align 8, !tbaa !42
  %196 = icmp eq ptr %195, null
  br i1 %196, label %185, label %188, !llvm.loop !126

197:                                              ; preds = %185, %203
  %198 = phi ptr [ %204, %203 ], [ %186, %185 ]
  %199 = getelementptr inbounds %struct.SpaceLink, ptr %198, i64 0, i32 3
  %200 = load i32, ptr %199, align 8, !tbaa !124
  %201 = icmp eq i32 %200, 11
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  store i32 0, ptr %199, align 8, !tbaa !124
  br label %203

203:                                              ; preds = %202, %197
  %204 = load ptr, ptr %198, align 8, !tbaa !42
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %197, !llvm.loop !127

206:                                              ; preds = %203, %185
  %207 = getelementptr inbounds %struct.ScrArea, ptr %161, i64 0, i32 8
  %208 = load i8, ptr %207, align 8, !tbaa !128
  %209 = getelementptr inbounds %struct.ScrArea, ptr %161, i64 0, i32 9
  store i8 %208, ptr %209, align 1, !tbaa !129
  %210 = load ptr, ptr %180, align 8, !tbaa !123
  %211 = icmp eq ptr %210, null
  br i1 %211, label %237, label %212

212:                                              ; preds = %206
  %213 = load ptr, ptr %210, align 8, !tbaa !130
  %214 = icmp eq ptr %213, null
  br i1 %214, label %237, label %215

215:                                              ; preds = %212, %233
  %216 = phi ptr [ %235, %233 ], [ %213, %212 ]
  %217 = load i16, ptr %162, align 2, !tbaa !112
  %218 = icmp eq i16 %217, 0
  br i1 %218, label %233, label %219

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.SpaceLink, ptr %216, i64 0, i32 2
  %221 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %222 = call ptr %221(i64 noundef 384, ptr noundef nonnull @.str.8) #9
  call void @BLI_addtail(ptr noundef nonnull %220, ptr noundef %222) #9
  %223 = getelementptr inbounds %struct.ARegion, ptr %222, i64 0, i32 8
  store i16 1, ptr %223, align 2, !tbaa !114
  %224 = load i16, ptr %162, align 2, !tbaa !112
  %225 = icmp eq i16 %224, 1
  %226 = getelementptr inbounds %struct.ARegion, ptr %222, i64 0, i32 9
  %227 = select i1 %225, i16 2, i16 1
  store i16 %227, ptr %226, align 8, !tbaa !117
  %228 = getelementptr inbounds %struct.ARegion, ptr %222, i64 0, i32 2, i32 12
  store i16 771, ptr %228, align 2, !tbaa !118
  %229 = getelementptr inbounds %struct.ARegion, ptr %222, i64 0, i32 2, i32 13
  store i16 4, ptr %229, align 8, !tbaa !119
  %230 = getelementptr inbounds %struct.ARegion, ptr %222, i64 0, i32 2, i32 11
  store i16 2, ptr %230, align 4, !tbaa !120
  %231 = getelementptr inbounds %struct.ARegion, ptr %222, i64 0, i32 2, i32 15
  store i16 10, ptr %231, align 4, !tbaa !121
  %232 = getelementptr inbounds %struct.ARegion, ptr %222, i64 0, i32 2, i32 14
  store i16 12, ptr %232, align 2, !tbaa !122
  br label %233

233:                                              ; preds = %219, %215
  %234 = getelementptr inbounds %struct.SpaceLink, ptr %216, i64 0, i32 2
  call fastcc void @area_add_window_regions(ptr noundef nonnull %161, ptr noundef nonnull %216, ptr noundef nonnull %234)
  %235 = load ptr, ptr %216, align 8, !tbaa !130
  %236 = icmp eq ptr %235, null
  br i1 %236, label %237, label %215, !llvm.loop !131

237:                                              ; preds = %233, %212, %206
  %238 = load ptr, ptr %161, align 8, !tbaa !42
  %239 = icmp eq ptr %238, null
  br i1 %239, label %157, label %160, !llvm.loop !132

240:                                              ; preds = %301, %243
  %241 = load ptr, ptr %244, align 8, !tbaa !42
  %242 = icmp eq ptr %241, null
  br i1 %242, label %149, label %243, !llvm.loop !133

243:                                              ; preds = %157, %240
  %244 = phi ptr [ %241, %240 ], [ %158, %157 ]
  %245 = getelementptr inbounds %struct.ScrArea, ptr %244, i64 0, i32 19
  %246 = load ptr, ptr %245, align 8, !tbaa !42
  %247 = icmp eq ptr %246, null
  br i1 %247, label %240, label %248

248:                                              ; preds = %243, %301
  %249 = phi ptr [ %302, %301 ], [ %246, %243 ]
  %250 = getelementptr inbounds %struct.SpaceLink, ptr %249, i64 0, i32 3
  %251 = load i32, ptr %250, align 8, !tbaa !124
  switch i32 %251, label %301 [
    i32 1, label %252
    i32 16, label %267
    i32 8, label %282
    i32 6, label %297
  ]

252:                                              ; preds = %248
  %253 = getelementptr inbounds %struct.View3D, ptr %249, i64 0, i32 53
  %254 = load ptr, ptr %253, align 8, !tbaa !134
  %255 = icmp eq ptr %254, null
  br i1 %255, label %301, label %256

256:                                              ; preds = %252
  call void @BLI_addtail(ptr noundef nonnull %148, ptr noundef nonnull %254) #9
  %257 = getelementptr inbounds %struct.ID, ptr %254, i64 0, i32 6
  store i32 1, ptr %257, align 4, !tbaa !136
  %258 = getelementptr inbounds %struct.ID, ptr %254, i64 0, i32 5
  store i16 512, ptr %258, align 2, !tbaa !137
  %259 = getelementptr inbounds %struct.ID, ptr %254, i64 0, i32 4
  store i16 17479, ptr %259, align 8, !tbaa !138
  %260 = call zeroext i8 @new_id(ptr noundef nonnull %148, ptr noundef nonnull %254, ptr noundef nonnull @.str.14) #9
  %261 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !139
  %262 = and i32 %261, 1
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %299, label %264

264:                                              ; preds = %256
  %265 = getelementptr inbounds %struct.ID, ptr %254, i64 0, i32 4, i64 2
  %266 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull %265)
  br label %299

267:                                              ; preds = %248
  %268 = getelementptr inbounds %struct.SpaceNode, ptr %249, i64 0, i32 28
  %269 = load ptr, ptr %268, align 8, !tbaa !141
  %270 = icmp eq ptr %269, null
  br i1 %270, label %301, label %271

271:                                              ; preds = %267
  call void @BLI_addtail(ptr noundef nonnull %147, ptr noundef nonnull %269) #9
  %272 = getelementptr inbounds %struct.ID, ptr %269, i64 0, i32 6
  store i32 1, ptr %272, align 4, !tbaa !136
  %273 = getelementptr inbounds %struct.ID, ptr %269, i64 0, i32 5
  store i16 512, ptr %273, align 2, !tbaa !137
  %274 = getelementptr inbounds %struct.ID, ptr %269, i64 0, i32 4
  store i16 17479, ptr %274, align 8, !tbaa !138
  %275 = call zeroext i8 @new_id(ptr noundef nonnull %147, ptr noundef nonnull %269, ptr noundef nonnull @.str.15) #9
  %276 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !139
  %277 = and i32 %276, 1
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %299, label %279

279:                                              ; preds = %271
  %280 = getelementptr inbounds %struct.ID, ptr %269, i64 0, i32 4, i64 2
  %281 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull %280)
  br label %299

282:                                              ; preds = %248
  %283 = getelementptr inbounds %struct.SpaceSeq, ptr %249, i64 0, i32 17
  %284 = load ptr, ptr %283, align 8, !tbaa !143
  %285 = icmp eq ptr %284, null
  br i1 %285, label %301, label %286

286:                                              ; preds = %282
  call void @BLI_addtail(ptr noundef nonnull %146, ptr noundef nonnull %284) #9
  %287 = getelementptr inbounds %struct.ID, ptr %284, i64 0, i32 6
  store i32 1, ptr %287, align 4, !tbaa !136
  %288 = getelementptr inbounds %struct.ID, ptr %284, i64 0, i32 5
  store i16 512, ptr %288, align 2, !tbaa !137
  %289 = getelementptr inbounds %struct.ID, ptr %284, i64 0, i32 4
  store i16 17479, ptr %289, align 8, !tbaa !138
  %290 = call zeroext i8 @new_id(ptr noundef nonnull %146, ptr noundef nonnull %284, ptr noundef nonnull @.str.15) #9
  %291 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 16), align 4, !tbaa !139
  %292 = and i32 %291, 1
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %299, label %294

294:                                              ; preds = %286
  %295 = getelementptr inbounds %struct.ID, ptr %284, i64 0, i32 4, i64 2
  %296 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull %295)
  br label %299

297:                                              ; preds = %248
  %298 = getelementptr inbounds %struct.SpaceImage, ptr %249, i64 0, i32 10
  br label %299

299:                                              ; preds = %294, %286, %279, %271, %264, %256, %297
  %300 = phi ptr [ %298, %297 ], [ %253, %256 ], [ %253, %264 ], [ %268, %271 ], [ %268, %279 ], [ %283, %286 ], [ %283, %294 ]
  store ptr null, ptr %300, align 8, !tbaa !42
  br label %301

301:                                              ; preds = %299, %282, %267, %252, %248
  %302 = load ptr, ptr %249, align 8, !tbaa !42
  %303 = icmp eq ptr %302, null
  br i1 %303, label %240, label %248, !llvm.loop !146

304:                                              ; preds = %149, %141
  %305 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %306 = load ptr, ptr %305, align 8, !tbaa !42
  %307 = icmp eq ptr %306, null
  br i1 %307, label %311, label %314

308:                                              ; preds = %344
  %309 = load ptr, ptr %315, align 8, !tbaa !42
  %310 = icmp eq ptr %309, null
  br i1 %310, label %311, label %314, !llvm.loop !147

311:                                              ; preds = %308, %304
  %312 = load ptr, ptr %90, align 8, !tbaa !42
  %313 = icmp eq ptr %312, null
  br i1 %313, label %394, label %347

314:                                              ; preds = %304, %308
  %315 = phi ptr [ %309, %308 ], [ %306, %304 ]
  %316 = getelementptr inbounds %struct.Material, ptr %315, i64 0, i32 103
  %317 = load ptr, ptr %316, align 8, !tbaa !148
  %318 = icmp eq ptr %317, null
  br i1 %318, label %324, label %319

319:                                              ; preds = %314
  %320 = getelementptr inbounds %struct.ID, ptr %317, i64 0, i32 4
  %321 = load i8, ptr %320, align 8, !tbaa !152
  %322 = icmp eq i8 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %319
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %320, ptr noundef nonnull align 1 dereferenceable(18) @.str.1, i64 18, i1 false) #9
  br label %324

324:                                              ; preds = %323, %319, %314
  br label %325

325:                                              ; preds = %324, %344
  %326 = phi i64 [ %345, %344 ], [ 0, %324 ]
  %327 = getelementptr inbounds %struct.Material, ptr %315, i64 0, i32 102, i64 %326
  %328 = load ptr, ptr %327, align 8, !tbaa !42
  %329 = icmp eq ptr %328, null
  br i1 %329, label %344, label %330

330:                                              ; preds = %325
  %331 = getelementptr inbounds %struct.MTex, ptr %328, i64 0, i32 5
  %332 = load ptr, ptr %331, align 8, !tbaa !153
  %333 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %332) #9
  %334 = icmp eq ptr %333, null
  br i1 %334, label %344, label %335

335:                                              ; preds = %330
  %336 = getelementptr inbounds %struct.Tex, ptr %333, i64 0, i32 61
  %337 = load i8, ptr %336, align 8, !tbaa !155
  %338 = icmp eq i8 %337, 0
  br i1 %338, label %344, label %339

339:                                              ; preds = %335
  %340 = load ptr, ptr %327, align 8, !tbaa !42
  %341 = getelementptr inbounds %struct.MTex, ptr %340, i64 0, i32 19
  %342 = load i16, ptr %341, align 2, !tbaa !158
  %343 = add i16 %342, 1
  store i16 %343, ptr %341, align 2, !tbaa !158
  br label %344

344:                                              ; preds = %325, %339, %335, %330
  %345 = add nuw nsw i64 %326, 1
  %346 = icmp eq i64 %345, 18
  br i1 %346, label %308, label %325, !llvm.loop !159

347:                                              ; preds = %311, %391
  %348 = phi ptr [ %392, %391 ], [ %312, %311 ]
  %349 = getelementptr inbounds %struct.Scene, ptr %348, i64 0, i32 18
  %350 = load ptr, ptr %349, align 8, !tbaa !160
  %351 = icmp eq ptr %350, null
  br i1 %351, label %357, label %352

352:                                              ; preds = %347
  %353 = getelementptr inbounds %struct.ID, ptr %350, i64 0, i32 4
  %354 = load i8, ptr %353, align 8, !tbaa !152
  %355 = icmp eq i8 %354, 0
  br i1 %355, label %356, label %357

356:                                              ; preds = %352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %353, ptr noundef nonnull align 1 dereferenceable(23) @.str.2, i64 23, i1 false) #9
  br label %357

357:                                              ; preds = %356, %352, %347
  %358 = getelementptr inbounds %struct.Scene, ptr %348, i64 0, i32 22, i32 47
  %359 = load i32, ptr %358, align 8, !tbaa !161
  %360 = and i32 %359, 1024
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %391, label %362

362:                                              ; preds = %357
  %363 = getelementptr inbounds %struct.Scene, ptr %348, i64 0, i32 5
  %364 = load ptr, ptr %363, align 8, !tbaa !42
  %365 = icmp eq ptr %364, null
  br i1 %365, label %388, label %366

366:                                              ; preds = %362, %385
  %367 = phi ptr [ %386, %385 ], [ %364, %362 ]
  %368 = getelementptr inbounds %struct.Base, ptr %367, i64 0, i32 7
  %369 = load ptr, ptr %368, align 8, !tbaa !162
  %370 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %369) #9
  %371 = getelementptr inbounds %struct.Object, ptr %370, i64 0, i32 3
  %372 = load i16, ptr %371, align 8, !tbaa !164
  %373 = icmp eq i16 %372, 11
  br i1 %373, label %374, label %385

374:                                              ; preds = %366
  %375 = getelementptr inbounds %struct.ID, ptr %370, i64 0, i32 3
  %376 = load ptr, ptr %375, align 8, !tbaa !167
  %377 = icmp eq ptr %376, null
  br i1 %377, label %378, label %385

378:                                              ; preds = %374
  %379 = getelementptr inbounds %struct.Object, ptr %370, i64 0, i32 19
  %380 = load ptr, ptr %379, align 8, !tbaa !168
  %381 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %380) #9
  %382 = getelementptr inbounds %struct.Camera, ptr %381, i64 0, i32 4
  %383 = load i16, ptr %382, align 2, !tbaa !169
  %384 = or i16 %383, 128
  store i16 %384, ptr %382, align 2, !tbaa !169
  br label %385

385:                                              ; preds = %366, %374, %378
  %386 = load ptr, ptr %367, align 8, !tbaa !42
  %387 = icmp eq ptr %386, null
  br i1 %387, label %388, label %366, !llvm.loop !171

388:                                              ; preds = %385, %362
  %389 = load i32, ptr %358, align 8, !tbaa !161
  %390 = and i32 %389, -1025
  store i32 %390, ptr %358, align 8, !tbaa !161
  br label %391

391:                                              ; preds = %357, %388
  %392 = load ptr, ptr %348, align 8, !tbaa !42
  %393 = icmp eq ptr %392, null
  br i1 %393, label %394, label %347, !llvm.loop !172

394:                                              ; preds = %391, %311
  %395 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %396 = load ptr, ptr %395, align 8, !tbaa !42
  %397 = icmp eq ptr %396, null
  br i1 %397, label %428, label %398

398:                                              ; preds = %394, %425
  %399 = phi ptr [ %426, %425 ], [ %396, %394 ]
  %400 = getelementptr inbounds %struct.Tex, ptr %399, i64 0, i32 52
  %401 = load ptr, ptr %400, align 8, !tbaa !173
  %402 = icmp eq ptr %401, null
  br i1 %402, label %425, label %403

403:                                              ; preds = %398
  %404 = getelementptr inbounds %struct.ID, ptr %401, i64 0, i32 4
  %405 = load i8, ptr %404, align 8, !tbaa !152
  %406 = icmp eq i8 %405, 0
  br i1 %406, label %407, label %408

407:                                              ; preds = %403
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %404, ptr noundef nonnull align 1 dereferenceable(19) @.str.3, i64 19, i1 false) #9
  br label %408

408:                                              ; preds = %407, %403
  %409 = load ptr, ptr %400, align 8, !tbaa !173
  %410 = getelementptr inbounds %struct.bNodeTree, ptr %409, i64 0, i32 7
  %411 = load ptr, ptr %410, align 8, !tbaa !42
  %412 = icmp eq ptr %411, null
  br i1 %412, label %425, label %413

413:                                              ; preds = %408, %422
  %414 = phi ptr [ %423, %422 ], [ %411, %408 ]
  %415 = getelementptr inbounds %struct.bNode, ptr %414, i64 0, i32 8
  %416 = load i16, ptr %415, align 4, !tbaa !174
  %417 = icmp eq i16 %416, 401
  br i1 %417, label %418, label %422

418:                                              ; preds = %413
  %419 = getelementptr inbounds %struct.bNode, ptr %414, i64 0, i32 33
  %420 = load i16, ptr %419, align 8, !tbaa !176
  %421 = add i16 %420, 1
  store i16 %421, ptr %419, align 8, !tbaa !176
  br label %422

422:                                              ; preds = %413, %418
  %423 = load ptr, ptr %414, align 8, !tbaa !42
  %424 = icmp eq ptr %423, null
  br i1 %424, label %425, label %413, !llvm.loop !177

425:                                              ; preds = %422, %408, %398
  %426 = load ptr, ptr %399, align 8, !tbaa !42
  %427 = icmp eq ptr %426, null
  br i1 %427, label %428, label %398, !llvm.loop !178

428:                                              ; preds = %425, %394
  %429 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %430 = load ptr, ptr %429, align 8, !tbaa !42
  %431 = icmp eq ptr %430, null
  br i1 %431, label %437, label %432

432:                                              ; preds = %428, %432
  %433 = phi ptr [ %435, %432 ], [ %430, %428 ]
  %434 = getelementptr inbounds %struct.Mesh, ptr %433, i64 0, i32 36
  store i32 67, ptr %434, align 8, !tbaa !179
  %435 = load ptr, ptr %433, align 8, !tbaa !42
  %436 = icmp eq ptr %435, null
  br i1 %436, label %437, label %432, !llvm.loop !182

437:                                              ; preds = %432, %428
  %438 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 37
  %439 = load ptr, ptr %438, align 8, !tbaa !42
  %440 = icmp eq ptr %439, null
  br i1 %440, label %457, label %441

441:                                              ; preds = %437, %452
  %442 = phi ptr [ %455, %452 ], [ %439, %437 ]
  %443 = getelementptr inbounds %struct.ParticleSettings, ptr %442, i64 0, i32 17
  %444 = load i16, ptr %443, align 8, !tbaa !183
  switch i16 %444, label %447 [
    i16 0, label %452
    i16 1, label %445
  ]

445:                                              ; preds = %441
  %446 = getelementptr inbounds %struct.ParticleSettings, ptr %442, i64 0, i32 21
  store i16 1, ptr %446, align 8, !tbaa !185
  store i16 10, ptr %443, align 8, !tbaa !183
  br label %452

447:                                              ; preds = %441
  %448 = icmp slt i16 %444, 5
  %449 = getelementptr inbounds %struct.ParticleSettings, ptr %442, i64 0, i32 21
  br i1 %448, label %450, label %451

450:                                              ; preds = %447
  store i16 1, ptr %449, align 8, !tbaa !185
  br label %452

451:                                              ; preds = %447
  store i16 %444, ptr %449, align 8, !tbaa !185
  store i16 10, ptr %443, align 8, !tbaa !183
  br label %452

452:                                              ; preds = %441, %445, %451, %450
  %453 = getelementptr inbounds %struct.ParticleSettings, ptr %442, i64 0, i32 118
  store float 1.000000e+00, ptr %453, align 4, !tbaa !186
  %454 = getelementptr inbounds %struct.ParticleSettings, ptr %442, i64 0, i32 110
  store float 1.000000e+00, ptr %454, align 8, !tbaa !187
  %455 = load ptr, ptr %442, align 8, !tbaa !42
  %456 = icmp eq ptr %455, null
  br i1 %456, label %457, label %441, !llvm.loop !188

457:                                              ; preds = %452, %437
  %458 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 15
  %459 = load ptr, ptr %458, align 8, !tbaa !42
  %460 = icmp eq ptr %459, null
  br i1 %460, label %480, label %464

461:                                              ; preds = %469, %464
  %462 = load ptr, ptr %465, align 8, !tbaa !42
  %463 = icmp eq ptr %462, null
  br i1 %463, label %480, label %464, !llvm.loop !189

464:                                              ; preds = %457, %461
  %465 = phi ptr [ %462, %461 ], [ %459, %457 ]
  %466 = getelementptr inbounds %struct.Curve, ptr %465, i64 0, i32 3
  %467 = load ptr, ptr %466, align 8, !tbaa !42
  %468 = icmp eq ptr %467, null
  br i1 %468, label %461, label %469

469:                                              ; preds = %464, %469
  %470 = phi ptr [ %478, %469 ], [ %467, %464 ]
  %471 = getelementptr inbounds %struct.Nurb, ptr %470, i64 0, i32 2
  %472 = load i16, ptr %471, align 8, !tbaa !190
  %473 = and i16 %472, 8
  %474 = getelementptr inbounds %struct.Nurb, ptr %470, i64 0, i32 5
  %475 = load i16, ptr %474, align 2, !tbaa !192
  %476 = or i16 %475, %473
  store i16 %476, ptr %474, align 2, !tbaa !192
  %477 = and i16 %472, 7
  store i16 %477, ptr %471, align 8, !tbaa !190
  %478 = load ptr, ptr %470, align 8, !tbaa !42
  %479 = icmp eq ptr %478, null
  br i1 %479, label %461, label %469, !llvm.loop !193

480:                                              ; preds = %461, %457, %3
  %481 = load i16, ptr %12, align 8, !tbaa !34
  %482 = icmp slt i16 %481, 250
  br i1 %482, label %489, label %483

483:                                              ; preds = %480
  %484 = icmp eq i16 %481, 250
  br i1 %484, label %485, label %730

485:                                              ; preds = %483
  %486 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %487 = load i16, ptr %486, align 2, !tbaa !194
  %488 = icmp slt i16 %487, 1
  br i1 %488, label %489, label %730

489:                                              ; preds = %485, %480
  %490 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %491 = load ptr, ptr %490, align 8, !tbaa !42
  %492 = icmp eq ptr %491, null
  br i1 %492, label %552, label %493

493:                                              ; preds = %489, %549
  %494 = phi ptr [ %550, %549 ], [ %491, %489 ]
  %495 = getelementptr inbounds %struct.Object, ptr %494, i64 0, i32 3
  %496 = load i16, ptr %495, align 8, !tbaa !164
  %497 = icmp eq i16 %496, 1
  br i1 %497, label %498, label %518

498:                                              ; preds = %493
  %499 = getelementptr inbounds %struct.Object, ptr %494, i64 0, i32 19
  %500 = load ptr, ptr %499, align 8, !tbaa !168
  %501 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %500) #9
  %502 = load ptr, ptr %499, align 8, !tbaa !168
  store ptr %501, ptr %499, align 8, !tbaa !168
  %503 = icmp eq ptr %501, null
  br i1 %503, label %517, label %504

504:                                              ; preds = %498
  %505 = getelementptr inbounds %struct.ID, ptr %501, i64 0, i32 3
  %506 = load ptr, ptr %505, align 8, !tbaa !195
  %507 = icmp eq ptr %506, null
  br i1 %507, label %508, label %517

508:                                              ; preds = %504
  %509 = getelementptr inbounds %struct.Mesh, ptr %501, i64 0, i32 48
  %510 = load ptr, ptr %509, align 8, !tbaa !196
  %511 = icmp eq ptr %510, null
  br i1 %511, label %517, label %512

512:                                              ; preds = %508
  %513 = getelementptr inbounds %struct.Multires, ptr %510, i64 0, i32 2
  %514 = load i8, ptr %513, align 8, !tbaa !197
  %515 = icmp ugt i8 %514, 1
  br i1 %515, label %516, label %517

516:                                              ; preds = %512
  call void @multires_load_old(ptr noundef nonnull %494, ptr noundef nonnull %501) #9
  br label %517

517:                                              ; preds = %516, %512, %508, %504, %498
  store ptr %502, ptr %499, align 8, !tbaa !168
  br label %518

518:                                              ; preds = %517, %493
  %519 = getelementptr inbounds %struct.Object, ptr %494, i64 0, i32 31
  %520 = load i32, ptr %519, align 8, !tbaa !199
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %549, label %522

522:                                              ; preds = %518
  %523 = getelementptr inbounds %struct.Object, ptr %494, i64 0, i32 30
  %524 = load ptr, ptr %523, align 8, !tbaa !200
  %525 = icmp eq ptr %524, null
  br i1 %525, label %526, label %549

526:                                              ; preds = %522
  %527 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %528 = sext i32 %520 to i64
  %529 = call ptr %527(i64 noundef %528, ptr noundef nonnull @.str.4) #9
  store ptr %529, ptr %523, align 8, !tbaa !200
  %530 = load i32, ptr %519, align 8, !tbaa !199
  %531 = icmp sgt i32 %530, 0
  br i1 %531, label %532, label %549

532:                                              ; preds = %526
  %533 = getelementptr inbounds %struct.Object, ptr %494, i64 0, i32 54
  br label %534

534:                                              ; preds = %532, %534
  %535 = phi i64 [ 0, %532 ], [ %545, %534 ]
  %536 = load i16, ptr %533, align 2, !tbaa !201
  %537 = sext i16 %536 to i32
  %538 = trunc i64 %535 to i32
  %539 = shl nuw i32 1, %538
  %540 = and i32 %539, %537
  %541 = icmp ne i32 %540, 0
  %542 = zext i1 %541 to i8
  %543 = load ptr, ptr %523, align 8, !tbaa !200
  %544 = getelementptr inbounds i8, ptr %543, i64 %535
  store i8 %542, ptr %544, align 1, !tbaa !152
  %545 = add nuw nsw i64 %535, 1
  %546 = load i32, ptr %519, align 8, !tbaa !199
  %547 = sext i32 %546 to i64
  %548 = icmp slt i64 %545, %547
  br i1 %548, label %534, label %549, !llvm.loop !202

549:                                              ; preds = %534, %526, %518, %522
  %550 = load ptr, ptr %494, align 8, !tbaa !42
  %551 = icmp eq ptr %550, null
  br i1 %551, label %552, label %493, !llvm.loop !203

552:                                              ; preds = %549, %489
  %553 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %554 = load ptr, ptr %553, align 8, !tbaa !42
  %555 = icmp eq ptr %554, null
  br i1 %555, label %565, label %556

556:                                              ; preds = %552, %562
  %557 = phi ptr [ %563, %562 ], [ %554, %552 ]
  %558 = getelementptr inbounds %struct.Tex, ptr %557, i64 0, i32 39
  %559 = load i32, ptr %558, align 8, !tbaa !204
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %561, label %562

561:                                              ; preds = %556
  store i32 8, ptr %558, align 8, !tbaa !204
  br label %562

562:                                              ; preds = %556, %561
  %563 = load ptr, ptr %557, align 8, !tbaa !42
  %564 = icmp eq ptr %563, null
  br i1 %564, label %565, label %556, !llvm.loop !205

565:                                              ; preds = %562, %552
  %566 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %567 = load ptr, ptr %566, align 8, !tbaa !42
  %568 = icmp eq ptr %567, null
  br i1 %568, label %642, label %569

569:                                              ; preds = %565, %639
  %570 = phi ptr [ %640, %639 ], [ %567, %565 ]
  %571 = getelementptr inbounds %struct.Material, ptr %570, i64 0, i32 51
  %572 = load i32, ptr %571, align 4, !tbaa !206
  %573 = and i32 %572, 8
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %578, label %575

575:                                              ; preds = %569
  %576 = getelementptr inbounds %struct.Material, ptr %570, i64 0, i32 2
  store i16 3, ptr %576, align 8, !tbaa !207
  %577 = and i32 %572, -9
  store i32 %577, ptr %571, align 4, !tbaa !206
  br label %578

578:                                              ; preds = %575, %569
  %579 = load i32, ptr %571, align 4, !tbaa !206
  %580 = and i32 %579, 32
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %585, label %582

582:                                              ; preds = %578
  %583 = getelementptr inbounds %struct.Material, ptr %570, i64 0, i32 2
  store i16 1, ptr %583, align 8, !tbaa !207
  %584 = and i32 %579, -33
  store i32 %584, ptr %571, align 4, !tbaa !206
  br label %585

585:                                              ; preds = %582, %578
  %586 = load i32, ptr %571, align 4, !tbaa !206
  %587 = and i32 %586, 131136
  %588 = icmp eq i32 %587, 0
  %589 = and i32 %586, -196673
  %590 = or i32 %586, 65536
  %591 = select i1 %588, i32 %589, i32 %590
  store i32 %591, ptr %571, align 4, !tbaa !206
  %592 = getelementptr inbounds %struct.ID, ptr %570, i64 0, i32 3
  br label %593

593:                                              ; preds = %585, %617
  %594 = phi i64 [ 0, %585 ], [ %618, %617 ]
  %595 = getelementptr inbounds %struct.Material, ptr %570, i64 0, i32 102, i64 %594
  %596 = load ptr, ptr %595, align 8, !tbaa !42
  %597 = icmp eq ptr %596, null
  br i1 %597, label %617, label %598

598:                                              ; preds = %593
  %599 = getelementptr inbounds %struct.MTex, ptr %596, i64 0, i32 5
  %600 = load ptr, ptr %599, align 8, !tbaa !153
  %601 = icmp eq ptr %600, null
  br i1 %601, label %612, label %602

602:                                              ; preds = %598
  %603 = load ptr, ptr %592, align 8, !tbaa !208
  %604 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %603, ptr noundef nonnull %600) #9
  %605 = icmp eq ptr %604, null
  br i1 %605, label %617, label %606

606:                                              ; preds = %602
  %607 = getelementptr inbounds %struct.Tex, ptr %604, i64 0, i32 32
  %608 = load i16, ptr %607, align 8, !tbaa !209
  %609 = icmp eq i16 %608, 0
  br i1 %609, label %610, label %617

610:                                              ; preds = %606
  %611 = load ptr, ptr %595, align 8, !tbaa !42
  br label %612

612:                                              ; preds = %598, %610
  %613 = phi ptr [ %611, %610 ], [ %596, %598 ]
  %614 = getelementptr inbounds %struct.MTex, ptr %613, i64 0, i32 14
  %615 = load i16, ptr %614, align 8, !tbaa !210
  %616 = or i16 %615, 1280
  store i16 %616, ptr %614, align 8, !tbaa !210
  br label %617

617:                                              ; preds = %612, %593, %602, %606
  %618 = add nuw nsw i64 %594, 1
  %619 = icmp eq i64 %618, 18
  br i1 %619, label %620, label %593, !llvm.loop !211

620:                                              ; preds = %617
  %621 = getelementptr inbounds %struct.Material, ptr %570, i64 0, i32 27, i32 14
  %622 = load float, ptr %621, align 8, !tbaa !212
  %623 = fcmp olt float %622, 0x3F1A36E2E0000000
  br i1 %623, label %624, label %639

624:                                              ; preds = %620
  %625 = getelementptr inbounds %struct.Material, ptr %570, i64 0, i32 27
  store float 1.000000e+00, ptr %625, align 8, !tbaa !213
  %626 = getelementptr inbounds %struct.Material, ptr %570, i64 0, i32 27, i32 1
  store float 0.000000e+00, ptr %626, align 4, !tbaa !214
  %627 = getelementptr inbounds %struct.Material, ptr %570, i64 0, i32 27, i32 2
  store float 1.000000e+00, ptr %627, align 8, !tbaa !215
  %628 = getelementptr inbounds %struct.Material, ptr %570, i64 0, i32 27, i32 4
  %629 = getelementptr inbounds %struct.Material, ptr %570, i64 0, i32 27, i32 4, i64 2
  store float 1.000000e+00, ptr %629, align 8, !tbaa !216
  %630 = getelementptr inbounds %struct.Material, ptr %570, i64 0, i32 27, i32 4, i64 1
  store float 1.000000e+00, ptr %630, align 4, !tbaa !216
  store float 1.000000e+00, ptr %628, align 8, !tbaa !216
  %631 = getelementptr inbounds %struct.Material, ptr %570, i64 0, i32 27, i32 7
  store float 1.000000e+00, ptr %631, align 4, !tbaa !217
  %632 = getelementptr inbounds %struct.Material, ptr %570, i64 0, i32 27, i32 8
  store float 0x3F847AE140000000, ptr %632, align 8, !tbaa !218
  %633 = getelementptr inbounds %struct.Material, ptr %570, i64 0, i32 27, i32 10
  store i16 0, ptr %633, align 8, !tbaa !219
  store float 0x3FC99999A0000000, ptr %621, align 8, !tbaa !212
  %634 = getelementptr inbounds %struct.Material, ptr %570, i64 0, i32 27, i32 12
  store i16 1, ptr %634, align 4, !tbaa !220
  %635 = getelementptr inbounds %struct.Material, ptr %570, i64 0, i32 27, i32 11
  %636 = load i16, ptr %635, align 2, !tbaa !221
  %637 = or i16 %636, 8
  store i16 %637, ptr %635, align 2, !tbaa !221
  %638 = getelementptr inbounds %struct.Material, ptr %570, i64 0, i32 27, i32 13
  store i16 50, ptr %638, align 2, !tbaa !222
  br label %639

639:                                              ; preds = %624, %620
  %640 = load ptr, ptr %570, align 8, !tbaa !42
  %641 = icmp eq ptr %640, null
  br i1 %641, label %642, label %569, !llvm.loop !223

642:                                              ; preds = %639, %565
  %643 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %644 = load ptr, ptr %643, align 8, !tbaa !42
  %645 = icmp eq ptr %644, null
  br i1 %645, label %730, label %646

646:                                              ; preds = %642, %718
  %647 = phi ptr [ %728, %718 ], [ %644, %642 ]
  %648 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 20
  %649 = load ptr, ptr %648, align 8, !tbaa !224
  %650 = getelementptr inbounds %struct.ToolSettings, ptr %649, i64 0, i32 6
  %651 = load float, ptr %650, align 8, !tbaa !225
  %652 = fcmp oeq float %651, 0.000000e+00
  br i1 %652, label %661, label %653

653:                                              ; preds = %646
  %654 = getelementptr inbounds %struct.ToolSettings, ptr %649, i64 0, i32 12
  %655 = load i8, ptr %654, align 1, !tbaa !232
  %656 = icmp eq i8 %655, 0
  br i1 %656, label %661, label %657

657:                                              ; preds = %653
  %658 = getelementptr inbounds %struct.ToolSettings, ptr %649, i64 0, i32 4
  %659 = load float, ptr %658, align 8, !tbaa !233
  %660 = fcmp oeq float %659, 0.000000e+00
  br i1 %660, label %661, label %669

661:                                              ; preds = %657, %653, %646
  store float 0x3FB99999A0000000, ptr %650, align 8, !tbaa !225
  %662 = getelementptr inbounds %struct.ToolSettings, ptr %649, i64 0, i32 8
  store i16 1, ptr %662, align 2, !tbaa !234
  %663 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 91), align 8, !tbaa !235
  %664 = getelementptr inbounds %struct.ToolSettings, ptr %649, i64 0, i32 21
  %665 = icmp eq i16 %663, 0
  %666 = select i1 %665, i16 2, i16 %663
  store i16 %666, ptr %664, align 8, !tbaa !239
  %667 = getelementptr inbounds %struct.ToolSettings, ptr %649, i64 0, i32 12
  store i8 1, ptr %667, align 1, !tbaa !232
  %668 = getelementptr inbounds %struct.ToolSettings, ptr %649, i64 0, i32 4
  store float 1.000000e+00, ptr %668, align 8, !tbaa !233
  br label %669

669:                                              ; preds = %661, %657
  %670 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 22, i32 108
  %671 = load i16, ptr %670, align 4, !tbaa !240
  %672 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 37
  %673 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 37, i32 11
  %674 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 37, i32 11, i32 2
  store i16 %671, ptr %674, align 4, !tbaa !241
  %675 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 22, i32 107
  %676 = load i16, ptr %675, align 2, !tbaa !242
  %677 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 37, i32 11, i32 1
  store i16 %676, ptr %677, align 2, !tbaa !243
  %678 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 22, i32 106
  %679 = load i16, ptr %678, align 8, !tbaa !244
  store i16 %679, ptr %673, align 8, !tbaa !245
  %680 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 22, i32 110
  %681 = load float, ptr %680, align 8, !tbaa !246
  %682 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 37, i32 11, i32 4
  store float %681, ptr %682, align 8, !tbaa !247
  %683 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 22, i32 109
  %684 = load i16, ptr %683, align 2, !tbaa !248
  %685 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 37, i32 11, i32 3
  store i16 %684, ptr %685, align 2, !tbaa !249
  %686 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 22, i32 112
  %687 = load ptr, ptr %686, align 8, !tbaa !250
  %688 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 37, i32 11, i32 6
  store ptr %687, ptr %688, align 8, !tbaa !251
  %689 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 22, i32 20
  %690 = load i16, ptr %689, align 8, !tbaa !252
  %691 = icmp ne i16 %690, 0
  %692 = zext i1 %691 to i16
  %693 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 37, i32 1
  %694 = load i16, ptr %693, align 8, !tbaa !253
  %695 = or i16 %694, %692
  store i16 %695, ptr %693, align 8, !tbaa !253
  %696 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 22, i32 21
  %697 = load i16, ptr %696, align 2, !tbaa !254
  %698 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 37, i32 2
  store i16 %697, ptr %698, align 2, !tbaa !255
  %699 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 22, i32 22
  %700 = load i16, ptr %699, align 4, !tbaa !256
  %701 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 37, i32 3
  store i16 %700, ptr %701, align 4, !tbaa !257
  %702 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 22, i32 23
  %703 = load i16, ptr %702, align 2, !tbaa !258
  %704 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 37, i32 4
  store i16 %703, ptr %704, align 2, !tbaa !259
  %705 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 22, i32 24
  %706 = load i16, ptr %705, align 8, !tbaa !260
  %707 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 37, i32 5
  store i16 %706, ptr %707, align 8, !tbaa !261
  %708 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 22, i32 25
  %709 = load i16, ptr %708, align 2, !tbaa !262
  %710 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 37, i32 6
  store i16 %709, ptr %710, align 2, !tbaa !263
  %711 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 22, i32 27
  %712 = load i16, ptr %711, align 8, !tbaa !264
  %713 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 37, i32 13
  store i16 %712, ptr %713, align 2, !tbaa !265
  %714 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 37, i32 12
  switch i16 %712, label %717 [
    i16 1, label %715
    i16 8, label %716
  ]

715:                                              ; preds = %669
  store i16 1, ptr %714, align 8, !tbaa !266
  store i16 5, ptr %713, align 2, !tbaa !265
  br label %718

716:                                              ; preds = %669
  store i16 3, ptr %714, align 8, !tbaa !266
  store i16 5, ptr %713, align 2, !tbaa !265
  br label %718

717:                                              ; preds = %669
  store i16 2, ptr %714, align 8, !tbaa !266
  br label %718

718:                                              ; preds = %716, %717, %715
  %719 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %672, ptr noundef nonnull align 8 dereferenceable(16) %719, i64 16, i1 false), !tbaa.struct !267
  store i16 %697, ptr %698, align 2, !tbaa !255
  store i16 %700, ptr %701, align 4, !tbaa !257
  store i16 %703, ptr %704, align 2, !tbaa !259
  store i16 %706, ptr %707, align 8, !tbaa !261
  %720 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 37, i32 16
  store float 0x40239999A0000000, ptr %720, align 8, !tbaa !268
  %721 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 37, i32 22
  store i16 5, ptr %721, align 2, !tbaa !269
  %722 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 37, i32 19
  store i16 32, ptr %722, align 4, !tbaa !270
  %723 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 37, i32 21
  store i16 128, ptr %723, align 8, !tbaa !271
  %724 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 37, i32 25
  store i16 60, ptr %724, align 8, !tbaa !272
  %725 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 37, i32 26
  store i16 5, ptr %725, align 2, !tbaa !273
  %726 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 37, i32 27
  store i16 1, ptr %726, align 4, !tbaa !274
  %727 = getelementptr inbounds %struct.Scene, ptr %647, i64 0, i32 37, i32 28
  store i16 5, ptr %727, align 2, !tbaa !275
  %728 = load ptr, ptr %647, align 8, !tbaa !42
  %729 = icmp eq ptr %728, null
  br i1 %729, label %730, label %646, !llvm.loop !276

730:                                              ; preds = %718, %642, %485, %483
  %731 = load i16, ptr %12, align 8, !tbaa !34
  %732 = icmp slt i16 %731, 250
  br i1 %732, label %739, label %733

733:                                              ; preds = %730
  %734 = icmp eq i16 %731, 250
  br i1 %734, label %735, label %847

735:                                              ; preds = %733
  %736 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %737 = load i16, ptr %736, align 2, !tbaa !194
  %738 = icmp slt i16 %737, 2
  br i1 %738, label %739, label %847

739:                                              ; preds = %735, %730
  %740 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %741 = load ptr, ptr %740, align 8, !tbaa !42
  %742 = icmp eq ptr %741, null
  br i1 %742, label %830, label %743

743:                                              ; preds = %739
  %744 = getelementptr inbounds %struct.FileData, ptr %0, i64 0, i32 20
  %745 = load i32, ptr %744, align 4, !tbaa !277
  %746 = and i32 %745, 8
  %747 = icmp eq i32 %746, 0
  %748 = and i32 %745, 16
  %749 = icmp eq i32 %748, 0
  %750 = and i32 %745, 32
  %751 = icmp eq i32 %750, 0
  %752 = and i32 %745, 16384
  %753 = icmp eq i32 %752, 0
  %754 = and i32 %745, 262144
  %755 = icmp eq i32 %754, 0
  %756 = and i32 %745, 131072
  %757 = icmp eq i32 %756, 0
  %758 = and i32 %745, 524288
  %759 = icmp eq i32 %758, 0
  %760 = and i32 %745, 1048576
  %761 = icmp eq i32 %760, 0
  %762 = and i32 %745, 2097152
  %763 = icmp eq i32 %762, 0
  %764 = and i32 %745, 4194304
  %765 = icmp eq i32 %764, 0
  %766 = and i32 %745, 32768
  %767 = icmp eq i32 %766, 0
  %768 = trunc i32 %745 to i16
  %769 = lshr i16 %768, 12
  %770 = and i16 %769, 1
  %771 = select i1 %767, i16 %770, i16 2
  br label %772

772:                                              ; preds = %743, %823
  %773 = phi ptr [ %741, %743 ], [ %828, %823 ]
  br i1 %747, label %778, label %774

774:                                              ; preds = %772
  %775 = getelementptr inbounds %struct.Scene, ptr %773, i64 0, i32 37, i32 18
  %776 = load i32, ptr %775, align 8, !tbaa !280
  %777 = or i32 %776, 2
  store i32 %777, ptr %775, align 8, !tbaa !280
  br label %778

778:                                              ; preds = %774, %772
  br i1 %749, label %783, label %779

779:                                              ; preds = %778
  %780 = getelementptr inbounds %struct.Scene, ptr %773, i64 0, i32 37, i32 18
  %781 = load i32, ptr %780, align 8, !tbaa !280
  %782 = or i32 %781, 4
  store i32 %782, ptr %780, align 8, !tbaa !280
  br label %783

783:                                              ; preds = %779, %778
  br i1 %751, label %788, label %784

784:                                              ; preds = %783
  %785 = getelementptr inbounds %struct.Scene, ptr %773, i64 0, i32 37, i32 18
  %786 = load i32, ptr %785, align 8, !tbaa !280
  %787 = or i32 %786, 8
  store i32 %787, ptr %785, align 8, !tbaa !280
  br label %788

788:                                              ; preds = %784, %783
  br i1 %753, label %793, label %789

789:                                              ; preds = %788
  %790 = getelementptr inbounds %struct.Scene, ptr %773, i64 0, i32 37, i32 18
  %791 = load i32, ptr %790, align 8, !tbaa !280
  %792 = or i32 %791, 16
  store i32 %792, ptr %790, align 8, !tbaa !280
  br label %793

793:                                              ; preds = %789, %788
  br i1 %755, label %798, label %794

794:                                              ; preds = %793
  %795 = getelementptr inbounds %struct.Scene, ptr %773, i64 0, i32 37, i32 18
  %796 = load i32, ptr %795, align 8, !tbaa !280
  %797 = or i32 %796, 256
  store i32 %797, ptr %795, align 8, !tbaa !280
  br label %798

798:                                              ; preds = %794, %793
  br i1 %757, label %803, label %799

799:                                              ; preds = %798
  %800 = getelementptr inbounds %struct.Scene, ptr %773, i64 0, i32 37, i32 18
  %801 = load i32, ptr %800, align 8, !tbaa !280
  %802 = or i32 %801, 128
  store i32 %802, ptr %800, align 8, !tbaa !280
  br label %803

803:                                              ; preds = %799, %798
  br i1 %759, label %808, label %804

804:                                              ; preds = %803
  %805 = getelementptr inbounds %struct.Scene, ptr %773, i64 0, i32 37, i32 18
  %806 = load i32, ptr %805, align 8, !tbaa !280
  %807 = or i32 %806, 512
  store i32 %807, ptr %805, align 8, !tbaa !280
  br label %808

808:                                              ; preds = %804, %803
  br i1 %761, label %813, label %809

809:                                              ; preds = %808
  %810 = getelementptr inbounds %struct.Scene, ptr %773, i64 0, i32 37, i32 18
  %811 = load i32, ptr %810, align 8, !tbaa !280
  %812 = or i32 %811, 1024
  store i32 %812, ptr %810, align 8, !tbaa !280
  br label %813

813:                                              ; preds = %809, %808
  br i1 %763, label %818, label %814

814:                                              ; preds = %813
  %815 = getelementptr inbounds %struct.Scene, ptr %773, i64 0, i32 37, i32 18
  %816 = load i32, ptr %815, align 8, !tbaa !280
  %817 = or i32 %816, 2048
  store i32 %817, ptr %815, align 8, !tbaa !280
  br label %818

818:                                              ; preds = %814, %813
  br i1 %765, label %823, label %819

819:                                              ; preds = %818
  %820 = getelementptr inbounds %struct.Scene, ptr %773, i64 0, i32 37, i32 18
  %821 = load i32, ptr %820, align 8, !tbaa !280
  %822 = or i32 %821, 4096
  store i32 %822, ptr %820, align 8, !tbaa !280
  br label %823

823:                                              ; preds = %819, %818
  %824 = getelementptr inbounds %struct.Scene, ptr %773, i64 0, i32 37, i32 20
  store i16 %771, ptr %824, align 2, !tbaa !281
  %825 = getelementptr inbounds %struct.Scene, ptr %773, i64 0, i32 37, i32 18
  %826 = load i32, ptr %825, align 8, !tbaa !280
  %827 = or i32 %826, 32
  store i32 %827, ptr %825, align 8, !tbaa !280
  %828 = load ptr, ptr %773, align 8, !tbaa !42
  %829 = icmp eq ptr %828, null
  br i1 %829, label %830, label %772, !llvm.loop !282

830:                                              ; preds = %823, %739
  %831 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %832 = load ptr, ptr %831, align 8, !tbaa !42
  %833 = icmp eq ptr %832, null
  br i1 %833, label %847, label %834

834:                                              ; preds = %830, %844
  %835 = phi ptr [ %845, %844 ], [ %832, %830 ]
  %836 = getelementptr inbounds %struct.Object, ptr %835, i64 0, i32 53
  %837 = load i16, ptr %836, align 4, !tbaa !283
  %838 = and i16 %837, 8192
  %839 = icmp eq i16 %838, 0
  br i1 %839, label %844, label %840

840:                                              ; preds = %834
  %841 = getelementptr inbounds %struct.Object, ptr %835, i64 0, i32 27
  %842 = load i32, ptr %841, align 8, !tbaa !284
  %843 = or i32 %842, 64
  store i32 %843, ptr %841, align 8, !tbaa !284
  br label %844

844:                                              ; preds = %834, %840
  %845 = load ptr, ptr %835, align 8, !tbaa !42
  %846 = icmp eq ptr %845, null
  br i1 %846, label %847, label %834, !llvm.loop !285

847:                                              ; preds = %844, %830, %735, %733
  br i1 %732, label %854, label %848

848:                                              ; preds = %847
  %849 = icmp eq i16 %731, 250
  br i1 %849, label %850, label %1068

850:                                              ; preds = %848
  %851 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %852 = load i16, ptr %851, align 2, !tbaa !194
  %853 = icmp slt i16 %852, 4
  br i1 %853, label %854, label %1068

854:                                              ; preds = %850, %847
  %855 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %856 = load ptr, ptr %855, align 8, !tbaa !42
  %857 = icmp eq ptr %856, null
  br i1 %857, label %867, label %858

858:                                              ; preds = %854, %864
  %859 = phi ptr [ %865, %864 ], [ %856, %854 ]
  %860 = getelementptr inbounds %struct.Scene, ptr %859, i64 0, i32 38
  %861 = load float, ptr %860, align 8, !tbaa !286
  %862 = fcmp oeq float %861, 0.000000e+00
  br i1 %862, label %863, label %864

863:                                              ; preds = %858
  store float 1.000000e+00, ptr %860, align 8, !tbaa !286
  br label %864

864:                                              ; preds = %858, %863
  %865 = load ptr, ptr %859, align 8, !tbaa !42
  %866 = icmp eq ptr %865, null
  br i1 %866, label %867, label %858, !llvm.loop !287

867:                                              ; preds = %864, %854
  %868 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %869 = load ptr, ptr %868, align 8, !tbaa !42
  %870 = icmp eq ptr %869, null
  br i1 %870, label %882, label %871

871:                                              ; preds = %867, %878
  %872 = phi ptr [ %880, %878 ], [ %869, %867 ]
  %873 = call ptr @modifiers_findByType(ptr noundef nonnull %872, i32 noundef 26) #9
  %874 = icmp eq ptr %873, null
  br i1 %874, label %878, label %875

875:                                              ; preds = %871
  %876 = getelementptr inbounds %struct.FluidsimModifierData, ptr %873, i64 0, i32 1
  %877 = load ptr, ptr %876, align 8, !tbaa !288
  store ptr %873, ptr %877, align 8, !tbaa !291
  br label %878

878:                                              ; preds = %875, %871
  %879 = getelementptr inbounds %struct.Object, ptr %872, i64 0, i32 83
  store i16 1, ptr %879, align 8, !tbaa !293
  %880 = load ptr, ptr %872, align 8, !tbaa !42
  %881 = icmp eq ptr %880, null
  br i1 %881, label %882, label %871, !llvm.loop !294

882:                                              ; preds = %878, %867
  %883 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %884 = load ptr, ptr %883, align 8, !tbaa !42
  %885 = icmp eq ptr %884, null
  br i1 %885, label %902, label %886

886:                                              ; preds = %882, %898
  %887 = phi ptr [ %900, %898 ], [ %884, %882 ]
  %888 = getelementptr inbounds %struct.Material, ptr %887, i64 0, i32 27, i32 3
  %889 = load float, ptr %888, align 4, !tbaa !295
  %890 = fcmp oeq float %889, 0.000000e+00
  br i1 %890, label %891, label %898

891:                                              ; preds = %886
  store float 1.000000e+00, ptr %888, align 4, !tbaa !295
  %892 = getelementptr inbounds %struct.Material, ptr %887, i64 0, i32 27, i32 5
  %893 = getelementptr inbounds %struct.Material, ptr %887, i64 0, i32 27, i32 5, i64 2
  store float 1.000000e+00, ptr %893, align 4, !tbaa !216
  %894 = getelementptr inbounds %struct.Material, ptr %887, i64 0, i32 27, i32 5, i64 1
  store float 1.000000e+00, ptr %894, align 4, !tbaa !216
  store float 1.000000e+00, ptr %892, align 4, !tbaa !216
  %895 = getelementptr inbounds %struct.Material, ptr %887, i64 0, i32 27, i32 6
  %896 = getelementptr inbounds %struct.Material, ptr %887, i64 0, i32 27, i32 6, i64 2
  store float 1.000000e+00, ptr %896, align 8, !tbaa !216
  %897 = getelementptr inbounds %struct.Material, ptr %887, i64 0, i32 27, i32 6, i64 1
  store float 1.000000e+00, ptr %897, align 4, !tbaa !216
  store float 1.000000e+00, ptr %895, align 8, !tbaa !216
  br label %898

898:                                              ; preds = %891, %886
  %899 = getelementptr inbounds %struct.Material, ptr %887, i64 0, i32 102
  call fastcc void @do_version_mtex_factor_2_50(ptr noundef nonnull %899, i16 noundef signext 16717)
  %900 = load ptr, ptr %887, align 8, !tbaa !42
  %901 = icmp eq ptr %900, null
  br i1 %901, label %902, label %886, !llvm.loop !296

902:                                              ; preds = %898, %882
  %903 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 21
  %904 = load ptr, ptr %903, align 8, !tbaa !42
  %905 = icmp eq ptr %904, null
  br i1 %905, label %911, label %906

906:                                              ; preds = %902, %906
  %907 = phi ptr [ %909, %906 ], [ %904, %902 ]
  %908 = getelementptr inbounds %struct.Lamp, ptr %907, i64 0, i32 69
  call fastcc void @do_version_mtex_factor_2_50(ptr noundef nonnull %908, i16 noundef signext 16716)
  %909 = load ptr, ptr %907, align 8, !tbaa !42
  %910 = icmp eq ptr %909, null
  br i1 %910, label %911, label %906, !llvm.loop !297

911:                                              ; preds = %906, %902
  %912 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 25
  %913 = load ptr, ptr %912, align 8, !tbaa !42
  %914 = icmp eq ptr %913, null
  br i1 %914, label %920, label %915

915:                                              ; preds = %911, %915
  %916 = phi ptr [ %918, %915 ], [ %913, %911 ]
  %917 = getelementptr inbounds %struct.World, ptr %916, i64 0, i32 70
  call fastcc void @do_version_mtex_factor_2_50(ptr noundef nonnull %917, i16 noundef signext 20311)
  %918 = load ptr, ptr %916, align 8, !tbaa !42
  %919 = icmp eq ptr %918, null
  br i1 %919, label %920, label %915, !llvm.loop !298

920:                                              ; preds = %915, %911
  %921 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %922 = load ptr, ptr %921, align 8, !tbaa !42
  %923 = icmp eq ptr %922, null
  br i1 %923, label %924, label %927

924:                                              ; preds = %937, %920
  %925 = load ptr, ptr %855, align 8, !tbaa !42
  %926 = icmp eq ptr %925, null
  br i1 %926, label %940, label %943

927:                                              ; preds = %920, %937
  %928 = phi ptr [ %938, %937 ], [ %922, %920 ]
  %929 = getelementptr inbounds %struct.Tex, ptr %928, i64 0, i32 59
  %930 = load ptr, ptr %929, align 8, !tbaa !299
  %931 = icmp eq ptr %930, null
  br i1 %931, label %937, label %932

932:                                              ; preds = %927
  %933 = getelementptr inbounds %struct.VoxelData, ptr %930, i64 0, i32 4
  %934 = load i16, ptr %933, align 4, !tbaa !300
  %935 = icmp eq i16 %934, 0
  br i1 %935, label %936, label %937

936:                                              ; preds = %932
  store i16 2, ptr %933, align 4, !tbaa !300
  br label %937

937:                                              ; preds = %927, %936, %932
  %938 = load ptr, ptr %928, align 8, !tbaa !42
  %939 = icmp eq ptr %938, null
  br i1 %939, label %924, label %927, !llvm.loop !302

940:                                              ; preds = %950, %924
  %941 = load ptr, ptr %855, align 8, !tbaa !42
  %942 = icmp eq ptr %941, null
  br i1 %942, label %990, label %960

943:                                              ; preds = %924, %950
  %944 = phi ptr [ %958, %950 ], [ %925, %924 ]
  %945 = getelementptr inbounds %struct.Scene, ptr %944, i64 0, i32 23
  %946 = getelementptr inbounds %struct.Scene, ptr %944, i64 0, i32 23, i32 1
  %947 = load float, ptr %946, align 4, !tbaa !303
  %948 = fcmp oeq float %947, 0.000000e+00
  br i1 %948, label %949, label %950

949:                                              ; preds = %943
  store float 1.000000e+00, ptr %946, align 4, !tbaa !303
  br label %950

950:                                              ; preds = %949, %943
  %951 = load i32, ptr %945, align 8, !tbaa !304
  %952 = getelementptr inbounds %struct.Scene, ptr %944, i64 0, i32 22, i32 4, i32 5
  store i32 %951, ptr %952, align 4, !tbaa !305
  %953 = load float, ptr %946, align 4, !tbaa !303
  %954 = getelementptr inbounds %struct.Scene, ptr %944, i64 0, i32 22, i32 4, i32 8
  store float %953, ptr %954, align 8, !tbaa !306
  %955 = getelementptr inbounds %struct.Scene, ptr %944, i64 0, i32 23, i32 4
  store i32 2, ptr %955, align 8, !tbaa !307
  %956 = getelementptr inbounds %struct.Scene, ptr %944, i64 0, i32 23, i32 3
  store float 1.000000e+00, ptr %956, align 4, !tbaa !308
  %957 = getelementptr inbounds %struct.Scene, ptr %944, i64 0, i32 23, i32 2
  store float 0x407574CCC0000000, ptr %957, align 8, !tbaa !309
  %958 = load ptr, ptr %944, align 8, !tbaa !42
  %959 = icmp eq ptr %958, null
  br i1 %959, label %940, label %943, !llvm.loop !310

960:                                              ; preds = %940, %986
  %961 = phi ptr [ %988, %986 ], [ %941, %940 ]
  %962 = phi i8 [ %987, %986 ], [ 0, %940 ]
  %963 = getelementptr inbounds %struct.Scene, ptr %961, i64 0, i32 40
  %964 = getelementptr inbounds %struct.Scene, ptr %961, i64 0, i32 40, i32 1
  %965 = load i32, ptr %964, align 4, !tbaa !311
  %966 = and i32 %965, 1
  %967 = icmp eq i32 %966, 0
  br i1 %967, label %968, label %986

968:                                              ; preds = %960
  %969 = load float, ptr %963, align 4, !tbaa !216
  %970 = fcmp oeq float %969, 0.000000e+00
  br i1 %970, label %971, label %980

971:                                              ; preds = %968
  %972 = getelementptr inbounds %struct.Scene, ptr %961, i64 0, i32 40, i32 0, i64 1
  %973 = load float, ptr %972, align 4, !tbaa !216
  %974 = fcmp oeq float %973, 0.000000e+00
  br i1 %974, label %975, label %980

975:                                              ; preds = %971
  %976 = getelementptr inbounds %struct.Scene, ptr %961, i64 0, i32 40, i32 0, i64 2
  %977 = load float, ptr %976, align 4, !tbaa !216
  %978 = fcmp oeq float %977, 0.000000e+00
  %979 = zext i1 %978 to i8
  br label %980

980:                                              ; preds = %968, %971, %975
  %981 = phi i8 [ 0, %971 ], [ 0, %968 ], [ %979, %975 ]
  %982 = icmp eq i8 %981, 0
  br i1 %982, label %986, label %983

983:                                              ; preds = %980
  %984 = getelementptr inbounds %struct.Scene, ptr %961, i64 0, i32 40, i32 0, i64 1
  store float 0.000000e+00, ptr %984, align 4, !tbaa !216
  store float 0.000000e+00, ptr %963, align 8, !tbaa !216
  %985 = getelementptr inbounds %struct.Scene, ptr %961, i64 0, i32 40, i32 0, i64 2
  store float 0xC0239EB860000000, ptr %985, align 8, !tbaa !216
  store i32 1, ptr %964, align 4, !tbaa !311
  br label %986

986:                                              ; preds = %960, %980, %983
  %987 = phi i8 [ 1, %983 ], [ %962, %980 ], [ %962, %960 ]
  %988 = load ptr, ptr %961, align 8, !tbaa !42
  %989 = icmp eq ptr %988, null
  br i1 %989, label %990, label %960, !llvm.loop !312

990:                                              ; preds = %986, %940
  %991 = phi i8 [ 0, %940 ], [ %987, %986 ]
  %992 = icmp eq i8 %991, 0
  br i1 %992, label %1007, label %993

993:                                              ; preds = %990
  %994 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 37
  %995 = load ptr, ptr %994, align 8, !tbaa !42
  %996 = icmp eq ptr %995, null
  br i1 %996, label %1007, label %997

997:                                              ; preds = %993, %997
  %998 = phi ptr [ %1005, %997 ], [ %995, %993 ]
  %999 = getelementptr inbounds %struct.ParticleSettings, ptr %998, i64 0, i32 84, i64 2
  %1000 = load float, ptr %999, align 8, !tbaa !216
  %1001 = fdiv float %1000, 0xC0239EB860000000
  %1002 = getelementptr inbounds %struct.ParticleSettings, ptr %998, i64 0, i32 4
  %1003 = load ptr, ptr %1002, align 8, !tbaa !313
  %1004 = getelementptr inbounds %struct.EffectorWeights, ptr %1003, i64 0, i32 2
  store float %1001, ptr %1004, align 8, !tbaa !314
  %1005 = load ptr, ptr %998, align 8, !tbaa !42
  %1006 = icmp eq ptr %1005, null
  br i1 %1006, label %1007, label %997, !llvm.loop !316

1007:                                             ; preds = %997, %993, %990
  %1008 = load ptr, ptr %868, align 8, !tbaa !42
  %1009 = icmp eq ptr %1008, null
  br i1 %1009, label %1068, label %1010

1010:                                             ; preds = %1007, %1065
  %1011 = phi ptr [ %1066, %1065 ], [ %1008, %1007 ]
  br i1 %992, label %1043, label %1012

1012:                                             ; preds = %1010
  %1013 = getelementptr inbounds %struct.Object, ptr %1011, i64 0, i32 26
  %1014 = load ptr, ptr %1013, align 8, !tbaa !42
  %1015 = icmp eq ptr %1014, null
  br i1 %1015, label %1032, label %1016

1016:                                             ; preds = %1012, %1029
  %1017 = phi ptr [ %1030, %1029 ], [ %1014, %1012 ]
  %1018 = call ptr @modifiers_findByType(ptr noundef nonnull %1011, i32 noundef 22) #9
  %1019 = icmp eq ptr %1018, null
  br i1 %1019, label %1029, label %1020

1020:                                             ; preds = %1016
  %1021 = getelementptr inbounds %struct.ClothModifierData, ptr %1018, i64 0, i32 3
  %1022 = load ptr, ptr %1021, align 8, !tbaa !317
  %1023 = getelementptr inbounds %struct.ClothSimSettings, ptr %1022, i64 0, i32 4, i64 2
  %1024 = load float, ptr %1023, align 4, !tbaa !216
  %1025 = fdiv float %1024, 0xC0239EB860000000
  %1026 = getelementptr inbounds %struct.ClothSimSettings, ptr %1022, i64 0, i32 41
  %1027 = load ptr, ptr %1026, align 8, !tbaa !319
  %1028 = getelementptr inbounds %struct.EffectorWeights, ptr %1027, i64 0, i32 2
  store float %1025, ptr %1028, align 8, !tbaa !314
  br label %1029

1029:                                             ; preds = %1020, %1016
  %1030 = load ptr, ptr %1017, align 8, !tbaa !42
  %1031 = icmp eq ptr %1030, null
  br i1 %1031, label %1032, label %1016, !llvm.loop !321

1032:                                             ; preds = %1029, %1012
  %1033 = getelementptr inbounds %struct.Object, ptr %1011, i64 0, i32 111
  %1034 = load ptr, ptr %1033, align 8, !tbaa !322
  %1035 = icmp eq ptr %1034, null
  br i1 %1035, label %1043, label %1036

1036:                                             ; preds = %1032
  %1037 = getelementptr inbounds %struct.SoftBody, ptr %1034, i64 0, i32 9
  %1038 = load float, ptr %1037, align 8, !tbaa !323
  %1039 = fdiv float %1038, 0x40239EB860000000
  %1040 = getelementptr inbounds %struct.SoftBody, ptr %1034, i64 0, i32 49
  %1041 = load ptr, ptr %1040, align 8, !tbaa !325
  %1042 = getelementptr inbounds %struct.EffectorWeights, ptr %1041, i64 0, i32 2
  store float %1039, ptr %1042, align 8, !tbaa !314
  br label %1043

1043:                                             ; preds = %1032, %1036, %1010
  %1044 = getelementptr inbounds %struct.Object, ptr %1011, i64 0, i32 110
  %1045 = load ptr, ptr %1044, align 8, !tbaa !326
  %1046 = icmp eq ptr %1045, null
  br i1 %1046, label %1065, label %1047

1047:                                             ; preds = %1043
  %1048 = getelementptr inbounds %struct.PartDeflect, ptr %1045, i64 0, i32 2
  %1049 = load i16, ptr %1048, align 2, !tbaa !327
  %1050 = icmp eq i16 %1049, 4
  br i1 %1050, label %1051, label %1053

1051:                                             ; preds = %1047
  %1052 = getelementptr inbounds %struct.PartDeflect, ptr %1045, i64 0, i32 4
  store i16 1, ptr %1052, align 2, !tbaa !329
  br label %1053

1053:                                             ; preds = %1051, %1047
  %1054 = load i32, ptr %1045, align 8, !tbaa !330
  %1055 = and i32 %1054, 8
  %1056 = icmp eq i32 %1055, 0
  br i1 %1056, label %1057, label %1060

1057:                                             ; preds = %1053
  %1058 = and i32 %1054, 4096
  %1059 = icmp eq i32 %1058, 0
  br i1 %1059, label %1063, label %1060

1060:                                             ; preds = %1057, %1053
  %1061 = phi i16 [ 1, %1053 ], [ 2, %1057 ]
  %1062 = getelementptr inbounds %struct.PartDeflect, ptr %1045, i64 0, i32 4
  store i16 %1061, ptr %1062, align 2, !tbaa !329
  br label %1063

1063:                                             ; preds = %1060, %1057
  %1064 = or i32 %1054, 16384
  store i32 %1064, ptr %1045, align 8, !tbaa !330
  br label %1065

1065:                                             ; preds = %1063, %1043
  %1066 = load ptr, ptr %1011, align 8, !tbaa !42
  %1067 = icmp eq ptr %1066, null
  br i1 %1067, label %1068, label %1010, !llvm.loop !331

1068:                                             ; preds = %1065, %1007, %850, %848
  %1069 = load i16, ptr %12, align 8, !tbaa !34
  %1070 = icmp slt i16 %1069, 250
  br i1 %1070, label %1077, label %1071

1071:                                             ; preds = %1068
  %1072 = icmp eq i16 %1069, 250
  br i1 %1072, label %1073, label %1108

1073:                                             ; preds = %1071
  %1074 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1075 = load i16, ptr %1074, align 2, !tbaa !194
  %1076 = icmp slt i16 %1075, 6
  br i1 %1076, label %1077, label %1108

1077:                                             ; preds = %1073, %1068
  %1078 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %1079 = load ptr, ptr %1078, align 8, !tbaa !42
  %1080 = icmp eq ptr %1079, null
  br i1 %1080, label %1099, label %1081

1081:                                             ; preds = %1077, %1096
  %1082 = phi ptr [ %1097, %1096 ], [ %1079, %1077 ]
  %1083 = getelementptr inbounds %struct.Object, ptr %1082, i64 0, i32 41
  store float 1.000000e+00, ptr %1083, align 8, !tbaa !216
  %1084 = getelementptr inbounds %struct.Object, ptr %1082, i64 0, i32 43, i64 1
  store float 1.000000e+00, ptr %1084, align 4, !tbaa !216
  %1085 = getelementptr inbounds %struct.Object, ptr %1082, i64 0, i32 18
  %1086 = load ptr, ptr %1085, align 8, !tbaa !332
  %1087 = icmp eq ptr %1086, null
  br i1 %1087, label %1096, label %1088

1088:                                             ; preds = %1081
  %1089 = load ptr, ptr %1086, align 8, !tbaa !42
  %1090 = icmp eq ptr %1089, null
  br i1 %1090, label %1096, label %1091

1091:                                             ; preds = %1088, %1091
  %1092 = phi ptr [ %1094, %1091 ], [ %1089, %1088 ]
  %1093 = getelementptr inbounds %struct.bPoseChannel, ptr %1092, i64 0, i32 24, i64 1
  store float 1.000000e+00, ptr %1093, align 4, !tbaa !216
  %1094 = load ptr, ptr %1092, align 8, !tbaa !42
  %1095 = icmp eq ptr %1094, null
  br i1 %1095, label %1096, label %1091, !llvm.loop !333

1096:                                             ; preds = %1091, %1088, %1081
  %1097 = load ptr, ptr %1082, align 8, !tbaa !42
  %1098 = icmp eq ptr %1097, null
  br i1 %1098, label %1099, label %1081, !llvm.loop !334

1099:                                             ; preds = %1096, %1077
  %1100 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 21
  %1101 = load ptr, ptr %1100, align 8, !tbaa !42
  %1102 = icmp eq ptr %1101, null
  br i1 %1102, label %1108, label %1103

1103:                                             ; preds = %1099, %1103
  %1104 = phi ptr [ %1106, %1103 ], [ %1101, %1099 ]
  %1105 = getelementptr inbounds %struct.Lamp, ptr %1104, i64 0, i32 29
  store float 0x3FA99999A0000000, ptr %1105, align 4, !tbaa !335
  %1106 = load ptr, ptr %1104, align 8, !tbaa !42
  %1107 = icmp eq ptr %1106, null
  br i1 %1107, label %1108, label %1103, !llvm.loop !337

1108:                                             ; preds = %1103, %1099, %1073, %1071
  br i1 %1070, label %1115, label %1109

1109:                                             ; preds = %1108
  %1110 = icmp eq i16 %1069, 250
  br i1 %1110, label %1111, label %1315

1111:                                             ; preds = %1109
  %1112 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1113 = load i16, ptr %1112, align 2, !tbaa !194
  %1114 = icmp slt i16 %1113, 7
  br i1 %1114, label %1115, label %1315

1115:                                             ; preds = %1111, %1108
  %1116 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %1117 = load ptr, ptr %1116, align 8, !tbaa !42
  %1118 = icmp eq ptr %1117, null
  br i1 %1118, label %1159, label %1119

1119:                                             ; preds = %1115, %1156
  %1120 = phi ptr [ %1157, %1156 ], [ %1117, %1115 ]
  %1121 = getelementptr inbounds %struct.Mesh, ptr %1120, i64 0, i32 4
  %1122 = load ptr, ptr %1121, align 8, !tbaa !338
  %1123 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %1122) #9
  %1124 = icmp eq ptr %1123, null
  br i1 %1124, label %1156, label %1125

1125:                                             ; preds = %1119
  %1126 = getelementptr inbounds %struct.Key, ptr %1123, i64 0, i32 2
  %1127 = load ptr, ptr %1126, align 8, !tbaa !339
  %1128 = icmp eq ptr %1127, null
  br i1 %1128, label %1156, label %1129

1129:                                             ; preds = %1125
  %1130 = getelementptr inbounds %struct.Mesh, ptr %1120, i64 0, i32 26
  %1131 = load i32, ptr %1130, align 8, !tbaa !341
  %1132 = getelementptr inbounds %struct.KeyBlock, ptr %1127, i64 0, i32 8
  %1133 = load i32, ptr %1132, align 8, !tbaa !342
  %1134 = call i32 @llvm.smin.i32(i32 %1131, i32 %1133)
  %1135 = icmp sgt i32 %1134, 0
  br i1 %1135, label %1136, label %1156

1136:                                             ; preds = %1129
  %1137 = getelementptr inbounds %struct.KeyBlock, ptr %1127, i64 0, i32 10
  %1138 = load ptr, ptr %1137, align 8, !tbaa !344
  %1139 = getelementptr inbounds %struct.Mesh, ptr %1120, i64 0, i32 15
  %1140 = load ptr, ptr %1139, align 8, !tbaa !345
  %1141 = zext nneg i32 %1134 to i64
  br label %1142

1142:                                             ; preds = %1136, %1142
  %1143 = phi i64 [ 0, %1136 ], [ %1153, %1142 ]
  %1144 = phi ptr [ %1138, %1136 ], [ %1154, %1142 ]
  %1145 = getelementptr inbounds %struct.MVert, ptr %1140, i64 %1143
  %1146 = load float, ptr %1144, align 4, !tbaa !216
  store float %1146, ptr %1145, align 4, !tbaa !216
  %1147 = getelementptr inbounds float, ptr %1144, i64 1
  %1148 = load float, ptr %1147, align 4, !tbaa !216
  %1149 = getelementptr inbounds float, ptr %1145, i64 1
  store float %1148, ptr %1149, align 4, !tbaa !216
  %1150 = getelementptr inbounds float, ptr %1144, i64 2
  %1151 = load float, ptr %1150, align 4, !tbaa !216
  %1152 = getelementptr inbounds float, ptr %1145, i64 2
  store float %1151, ptr %1152, align 4, !tbaa !216
  %1153 = add nuw nsw i64 %1143, 1
  %1154 = getelementptr inbounds float, ptr %1144, i64 3
  %1155 = icmp eq i64 %1153, %1141
  br i1 %1155, label %1156, label %1142, !llvm.loop !346

1156:                                             ; preds = %1142, %1129, %1119, %1125
  %1157 = load ptr, ptr %1120, align 8, !tbaa !42
  %1158 = icmp eq ptr %1157, null
  br i1 %1158, label %1159, label %1119, !llvm.loop !347

1159:                                             ; preds = %1156, %1115
  %1160 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 20
  %1161 = load ptr, ptr %1160, align 8, !tbaa !42
  %1162 = icmp eq ptr %1161, null
  br i1 %1162, label %1212, label %1163

1163:                                             ; preds = %1159, %1209
  %1164 = phi ptr [ %1210, %1209 ], [ %1161, %1159 ]
  %1165 = getelementptr inbounds %struct.Lattice, ptr %1164, i64 0, i32 23
  %1166 = load ptr, ptr %1165, align 8, !tbaa !348
  %1167 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %1166) #9
  %1168 = icmp eq ptr %1167, null
  br i1 %1168, label %1209, label %1169

1169:                                             ; preds = %1163
  %1170 = getelementptr inbounds %struct.Key, ptr %1167, i64 0, i32 2
  %1171 = load ptr, ptr %1170, align 8, !tbaa !339
  %1172 = icmp eq ptr %1171, null
  br i1 %1172, label %1209, label %1173

1173:                                             ; preds = %1169
  %1174 = getelementptr inbounds %struct.Lattice, ptr %1164, i64 0, i32 2
  %1175 = load i16, ptr %1174, align 8, !tbaa !350
  %1176 = sext i16 %1175 to i32
  %1177 = getelementptr inbounds %struct.Lattice, ptr %1164, i64 0, i32 3
  %1178 = load i16, ptr %1177, align 2, !tbaa !351
  %1179 = sext i16 %1178 to i32
  %1180 = mul nsw i32 %1179, %1176
  %1181 = getelementptr inbounds %struct.Lattice, ptr %1164, i64 0, i32 4
  %1182 = load i16, ptr %1181, align 4, !tbaa !352
  %1183 = sext i16 %1182 to i32
  %1184 = mul nsw i32 %1180, %1183
  %1185 = getelementptr inbounds %struct.KeyBlock, ptr %1171, i64 0, i32 8
  %1186 = load i32, ptr %1185, align 8, !tbaa !342
  %1187 = call i32 @llvm.smin.i32(i32 %1184, i32 %1186)
  %1188 = icmp sgt i32 %1187, 0
  br i1 %1188, label %1189, label %1209

1189:                                             ; preds = %1173
  %1190 = getelementptr inbounds %struct.KeyBlock, ptr %1171, i64 0, i32 10
  %1191 = load ptr, ptr %1190, align 8, !tbaa !344
  %1192 = getelementptr inbounds %struct.Lattice, ptr %1164, i64 0, i32 21
  %1193 = load ptr, ptr %1192, align 8, !tbaa !353
  %1194 = zext nneg i32 %1187 to i64
  br label %1195

1195:                                             ; preds = %1189, %1195
  %1196 = phi i64 [ 0, %1189 ], [ %1206, %1195 ]
  %1197 = phi ptr [ %1191, %1189 ], [ %1207, %1195 ]
  %1198 = getelementptr inbounds %struct.BPoint, ptr %1193, i64 %1196
  %1199 = load float, ptr %1197, align 4, !tbaa !216
  store float %1199, ptr %1198, align 4, !tbaa !216
  %1200 = getelementptr inbounds float, ptr %1197, i64 1
  %1201 = load float, ptr %1200, align 4, !tbaa !216
  %1202 = getelementptr inbounds float, ptr %1198, i64 1
  store float %1201, ptr %1202, align 4, !tbaa !216
  %1203 = getelementptr inbounds float, ptr %1197, i64 2
  %1204 = load float, ptr %1203, align 4, !tbaa !216
  %1205 = getelementptr inbounds float, ptr %1198, i64 2
  store float %1204, ptr %1205, align 4, !tbaa !216
  %1206 = add nuw nsw i64 %1196, 1
  %1207 = getelementptr inbounds float, ptr %1197, i64 3
  %1208 = icmp eq i64 %1206, %1194
  br i1 %1208, label %1209, label %1195, !llvm.loop !354

1209:                                             ; preds = %1195, %1173, %1163, %1169
  %1210 = load ptr, ptr %1164, align 8, !tbaa !42
  %1211 = icmp eq ptr %1210, null
  br i1 %1211, label %1212, label %1163, !llvm.loop !355

1212:                                             ; preds = %1209, %1159
  %1213 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 15
  %1214 = load ptr, ptr %1213, align 8, !tbaa !42
  %1215 = icmp eq ptr %1214, null
  br i1 %1215, label %1315, label %1216

1216:                                             ; preds = %1212, %1312
  %1217 = phi ptr [ %1313, %1312 ], [ %1214, %1212 ]
  %1218 = getelementptr inbounds %struct.Curve, ptr %1217, i64 0, i32 9
  %1219 = load ptr, ptr %1218, align 8, !tbaa !356
  %1220 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %1219) #9
  %1221 = icmp eq ptr %1220, null
  br i1 %1221, label %1312, label %1222

1222:                                             ; preds = %1216
  %1223 = getelementptr inbounds %struct.Key, ptr %1220, i64 0, i32 2
  %1224 = load ptr, ptr %1223, align 8, !tbaa !339
  %1225 = icmp eq ptr %1224, null
  br i1 %1225, label %1312, label %1226

1226:                                             ; preds = %1222
  %1227 = getelementptr inbounds %struct.Curve, ptr %1217, i64 0, i32 3
  %1228 = load ptr, ptr %1227, align 8, !tbaa !42
  %1229 = icmp eq ptr %1228, null
  br i1 %1229, label %1312, label %1230

1230:                                             ; preds = %1226
  %1231 = getelementptr inbounds %struct.KeyBlock, ptr %1224, i64 0, i32 10
  %1232 = load ptr, ptr %1231, align 8, !tbaa !344
  br label %1233

1233:                                             ; preds = %1230, %1308
  %1234 = phi ptr [ %1310, %1308 ], [ %1228, %1230 ]
  %1235 = phi ptr [ %1309, %1308 ], [ %1232, %1230 ]
  %1236 = getelementptr inbounds %struct.Nurb, ptr %1234, i64 0, i32 18
  %1237 = load ptr, ptr %1236, align 8, !tbaa !359
  %1238 = icmp eq ptr %1237, null
  br i1 %1238, label %1279, label %1239

1239:                                             ; preds = %1233
  %1240 = getelementptr inbounds %struct.Nurb, ptr %1234, i64 0, i32 6
  %1241 = load i32, ptr %1240, align 8, !tbaa !360
  %1242 = icmp sgt i32 %1241, 0
  br i1 %1242, label %1243, label %1308

1243:                                             ; preds = %1239, %1243
  %1244 = phi ptr [ %1275, %1243 ], [ %1235, %1239 ]
  %1245 = phi i32 [ %1276, %1243 ], [ 0, %1239 ]
  %1246 = phi ptr [ %1277, %1243 ], [ %1237, %1239 ]
  %1247 = load float, ptr %1244, align 4, !tbaa !216
  store float %1247, ptr %1246, align 4, !tbaa !216
  %1248 = getelementptr inbounds float, ptr %1244, i64 1
  %1249 = load float, ptr %1248, align 4, !tbaa !216
  %1250 = getelementptr inbounds float, ptr %1246, i64 1
  store float %1249, ptr %1250, align 4, !tbaa !216
  %1251 = getelementptr inbounds float, ptr %1244, i64 2
  %1252 = load float, ptr %1251, align 4, !tbaa !216
  %1253 = getelementptr inbounds float, ptr %1246, i64 2
  store float %1252, ptr %1253, align 4, !tbaa !216
  %1254 = getelementptr inbounds float, ptr %1244, i64 3
  %1255 = getelementptr inbounds [3 x [3 x float]], ptr %1246, i64 0, i64 1
  %1256 = load float, ptr %1254, align 4, !tbaa !216
  store float %1256, ptr %1255, align 4, !tbaa !216
  %1257 = getelementptr inbounds float, ptr %1244, i64 4
  %1258 = load float, ptr %1257, align 4, !tbaa !216
  %1259 = getelementptr inbounds [3 x [3 x float]], ptr %1246, i64 0, i64 1, i64 1
  store float %1258, ptr %1259, align 4, !tbaa !216
  %1260 = getelementptr inbounds float, ptr %1244, i64 5
  %1261 = load float, ptr %1260, align 4, !tbaa !216
  %1262 = getelementptr inbounds [3 x [3 x float]], ptr %1246, i64 0, i64 1, i64 2
  store float %1261, ptr %1262, align 4, !tbaa !216
  %1263 = getelementptr inbounds float, ptr %1244, i64 6
  %1264 = getelementptr inbounds [3 x [3 x float]], ptr %1246, i64 0, i64 2
  %1265 = load float, ptr %1263, align 4, !tbaa !216
  store float %1265, ptr %1264, align 4, !tbaa !216
  %1266 = getelementptr inbounds float, ptr %1244, i64 7
  %1267 = load float, ptr %1266, align 4, !tbaa !216
  %1268 = getelementptr inbounds [3 x [3 x float]], ptr %1246, i64 0, i64 2, i64 1
  store float %1267, ptr %1268, align 4, !tbaa !216
  %1269 = getelementptr inbounds float, ptr %1244, i64 8
  %1270 = load float, ptr %1269, align 4, !tbaa !216
  %1271 = getelementptr inbounds [3 x [3 x float]], ptr %1246, i64 0, i64 2, i64 2
  store float %1270, ptr %1271, align 4, !tbaa !216
  %1272 = getelementptr inbounds float, ptr %1244, i64 9
  %1273 = load float, ptr %1272, align 4, !tbaa !216
  %1274 = getelementptr inbounds %struct.BezTriple, ptr %1246, i64 0, i32 1
  store float %1273, ptr %1274, align 4, !tbaa !361
  %1275 = getelementptr inbounds float, ptr %1244, i64 10
  %1276 = add nuw nsw i32 %1245, 1
  %1277 = getelementptr inbounds %struct.BezTriple, ptr %1246, i64 1
  %1278 = icmp eq i32 %1276, %1241
  br i1 %1278, label %1308, label %1243, !llvm.loop !363

1279:                                             ; preds = %1233
  %1280 = getelementptr inbounds %struct.Nurb, ptr %1234, i64 0, i32 17
  %1281 = load ptr, ptr %1280, align 8, !tbaa !364
  %1282 = icmp eq ptr %1281, null
  br i1 %1282, label %1308, label %1283

1283:                                             ; preds = %1279
  %1284 = getelementptr inbounds %struct.Nurb, ptr %1234, i64 0, i32 6
  %1285 = load i32, ptr %1284, align 8, !tbaa !360
  %1286 = getelementptr inbounds %struct.Nurb, ptr %1234, i64 0, i32 7
  %1287 = load i32, ptr %1286, align 4, !tbaa !365
  %1288 = mul nsw i32 %1287, %1285
  %1289 = icmp sgt i32 %1288, 0
  br i1 %1289, label %1290, label %1308

1290:                                             ; preds = %1283, %1290
  %1291 = phi ptr [ %1304, %1290 ], [ %1235, %1283 ]
  %1292 = phi i32 [ %1305, %1290 ], [ 0, %1283 ]
  %1293 = phi ptr [ %1306, %1290 ], [ %1281, %1283 ]
  %1294 = load float, ptr %1291, align 4, !tbaa !216
  store float %1294, ptr %1293, align 4, !tbaa !216
  %1295 = getelementptr inbounds float, ptr %1291, i64 1
  %1296 = load float, ptr %1295, align 4, !tbaa !216
  %1297 = getelementptr inbounds float, ptr %1293, i64 1
  store float %1296, ptr %1297, align 4, !tbaa !216
  %1298 = getelementptr inbounds float, ptr %1291, i64 2
  %1299 = load float, ptr %1298, align 4, !tbaa !216
  %1300 = getelementptr inbounds float, ptr %1293, i64 2
  store float %1299, ptr %1300, align 4, !tbaa !216
  %1301 = getelementptr inbounds float, ptr %1291, i64 3
  %1302 = load float, ptr %1301, align 4, !tbaa !216
  %1303 = getelementptr inbounds %struct.BPoint, ptr %1293, i64 0, i32 1
  store float %1302, ptr %1303, align 4, !tbaa !366
  %1304 = getelementptr inbounds float, ptr %1291, i64 4
  %1305 = add nuw nsw i32 %1292, 1
  %1306 = getelementptr inbounds %struct.BPoint, ptr %1293, i64 1
  %1307 = icmp eq i32 %1305, %1288
  br i1 %1307, label %1308, label %1290, !llvm.loop !368

1308:                                             ; preds = %1243, %1290, %1239, %1283, %1279
  %1309 = phi ptr [ %1235, %1279 ], [ %1235, %1283 ], [ %1235, %1239 ], [ %1304, %1290 ], [ %1275, %1243 ]
  %1310 = load ptr, ptr %1234, align 8, !tbaa !42
  %1311 = icmp eq ptr %1310, null
  br i1 %1311, label %1312, label %1233, !llvm.loop !369

1312:                                             ; preds = %1308, %1226, %1216, %1222
  %1313 = load ptr, ptr %1217, align 8, !tbaa !42
  %1314 = icmp eq ptr %1313, null
  br i1 %1314, label %1315, label %1216, !llvm.loop !370

1315:                                             ; preds = %1312, %1212, %1111, %1109
  %1316 = load i16, ptr %12, align 8, !tbaa !34
  %1317 = icmp slt i16 %1316, 250
  br i1 %1317, label %1324, label %1318

1318:                                             ; preds = %1315
  %1319 = icmp eq i16 %1316, 250
  br i1 %1319, label %1320, label %1593

1320:                                             ; preds = %1318
  %1321 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1322 = load i16, ptr %1321, align 2, !tbaa !194
  %1323 = icmp slt i16 %1322, 8
  br i1 %1323, label %1324, label %1593

1324:                                             ; preds = %1320, %1315
  %1325 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1326 = load ptr, ptr %1325, align 8, !tbaa !42
  %1327 = icmp eq ptr %1326, null
  br i1 %1327, label %1353, label %1328

1328:                                             ; preds = %1324, %1350
  %1329 = phi ptr [ %1351, %1350 ], [ %1326, %1324 ]
  %1330 = getelementptr inbounds %struct.Scene, ptr %1329, i64 0, i32 22, i32 26
  %1331 = load i32, ptr %1330, align 4, !tbaa !371
  %1332 = icmp eq i32 %1331, 0
  br i1 %1332, label %1333, label %1334

1333:                                             ; preds = %1328
  store i32 1, ptr %1330, align 4, !tbaa !371
  br label %1334

1334:                                             ; preds = %1333, %1328
  %1335 = getelementptr inbounds %struct.Scene, ptr %1329, i64 0, i32 22, i32 62
  %1336 = load i16, ptr %1335, align 2, !tbaa !372
  %1337 = icmp eq i16 %1336, 0
  br i1 %1337, label %1338, label %1341

1338:                                             ; preds = %1334
  %1339 = getelementptr inbounds %struct.Scene, ptr %1329, i64 0, i32 22, i32 54
  %1340 = load i16, ptr %1339, align 2, !tbaa !373
  store i16 %1340, ptr %1335, align 2, !tbaa !372
  br label %1341

1341:                                             ; preds = %1338, %1334
  %1342 = getelementptr inbounds %struct.Scene, ptr %1329, i64 0, i32 19
  %1343 = load ptr, ptr %1342, align 8, !tbaa !77
  %1344 = icmp eq ptr %1343, null
  br i1 %1344, label %1350, label %1345

1345:                                             ; preds = %1341
  %1346 = getelementptr inbounds %struct.Editing, ptr %1343, i64 0, i32 1
  %1347 = load ptr, ptr %1346, align 8, !tbaa !374
  %1348 = icmp eq ptr %1347, null
  br i1 %1348, label %1350, label %1349

1349:                                             ; preds = %1345
  call fastcc void @do_versions_seq_unique_name_all_strips(ptr noundef nonnull %1329, ptr noundef nonnull %1346)
  br label %1350

1350:                                             ; preds = %1349, %1345, %1341
  %1351 = load ptr, ptr %1329, align 8, !tbaa !42
  %1352 = icmp eq ptr %1351, null
  br i1 %1352, label %1353, label %1328, !llvm.loop !375

1353:                                             ; preds = %1350, %1324
  %1354 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 35
  %1355 = load ptr, ptr %1354, align 8, !tbaa !42
  %1356 = icmp eq ptr %1355, null
  br i1 %1356, label %1369, label %1360

1357:                                             ; preds = %1365, %1360
  %1358 = load ptr, ptr %1361, align 8, !tbaa !42
  %1359 = icmp eq ptr %1358, null
  br i1 %1359, label %1369, label %1360, !llvm.loop !376

1360:                                             ; preds = %1353, %1357
  %1361 = phi ptr [ %1358, %1357 ], [ %1355, %1353 ]
  %1362 = getelementptr inbounds %struct.bNodeTree, ptr %1361, i64 0, i32 7
  %1363 = load ptr, ptr %1362, align 8, !tbaa !42
  %1364 = icmp eq ptr %1363, null
  br i1 %1364, label %1357, label %1365

1365:                                             ; preds = %1360, %1365
  %1366 = phi ptr [ %1367, %1365 ], [ %1363, %1360 ]
  call void @nodeUniqueName(ptr noundef nonnull %1361, ptr noundef nonnull %1366) #9
  %1367 = load ptr, ptr %1366, align 8, !tbaa !42
  %1368 = icmp eq ptr %1367, null
  br i1 %1368, label %1357, label %1365, !llvm.loop !377

1369:                                             ; preds = %1357, %1353
  %1370 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %1371 = load ptr, ptr %1370, align 8, !tbaa !42
  %1372 = icmp eq ptr %1371, null
  br i1 %1372, label %1382, label %1373

1373:                                             ; preds = %1369, %1379
  %1374 = phi ptr [ %1380, %1379 ], [ %1371, %1369 ]
  %1375 = getelementptr inbounds %struct.Object, ptr %1374, i64 0, i32 87
  %1376 = load i8, ptr %1375, align 2, !tbaa !378
  %1377 = icmp eq i8 %1376, 4
  br i1 %1377, label %1378, label %1379

1378:                                             ; preds = %1373
  store i8 5, ptr %1375, align 2, !tbaa !378
  br label %1379

1379:                                             ; preds = %1378, %1373
  %1380 = load ptr, ptr %1374, align 8, !tbaa !42
  %1381 = icmp eq ptr %1380, null
  br i1 %1381, label %1382, label %1373, !llvm.loop !379

1382:                                             ; preds = %1379, %1369
  %1383 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %1384 = load ptr, ptr %1383, align 8, !tbaa !42
  %1385 = icmp eq ptr %1384, null
  br i1 %1385, label %1415, label %1389

1386:                                             ; preds = %1394, %1389
  %1387 = load ptr, ptr %1390, align 8, !tbaa !42
  %1388 = icmp eq ptr %1387, null
  br i1 %1388, label %1415, label %1389, !llvm.loop !380

1389:                                             ; preds = %1382, %1386
  %1390 = phi ptr [ %1387, %1386 ], [ %1384, %1382 ]
  %1391 = getelementptr inbounds %struct.bScreen, ptr %1390, i64 0, i32 3
  %1392 = load ptr, ptr %1391, align 8, !tbaa !42
  %1393 = icmp eq ptr %1392, null
  br i1 %1393, label %1386, label %1397

1394:                                             ; preds = %1412, %1397
  %1395 = load ptr, ptr %1398, align 8, !tbaa !42
  %1396 = icmp eq ptr %1395, null
  br i1 %1396, label %1386, label %1397, !llvm.loop !381

1397:                                             ; preds = %1389, %1394
  %1398 = phi ptr [ %1395, %1394 ], [ %1392, %1389 ]
  %1399 = getelementptr inbounds %struct.ScrArea, ptr %1398, i64 0, i32 19
  %1400 = load ptr, ptr %1399, align 8, !tbaa !42
  %1401 = icmp eq ptr %1400, null
  br i1 %1401, label %1394, label %1402

1402:                                             ; preds = %1397, %1412
  %1403 = phi ptr [ %1413, %1412 ], [ %1400, %1397 ]
  %1404 = getelementptr inbounds %struct.SpaceLink, ptr %1403, i64 0, i32 3
  %1405 = load i32, ptr %1404, align 8, !tbaa !124
  %1406 = icmp eq i32 %1405, 1
  br i1 %1406, label %1407, label %1412

1407:                                             ; preds = %1402
  %1408 = getelementptr inbounds %struct.View3D, ptr %1403, i64 0, i32 24
  %1409 = load i16, ptr %1408, align 8, !tbaa !382
  %1410 = icmp eq i16 %1409, 4
  br i1 %1410, label %1411, label %1412

1411:                                             ; preds = %1407
  store i16 3, ptr %1408, align 8, !tbaa !382
  br label %1412

1412:                                             ; preds = %1407, %1411, %1402
  %1413 = load ptr, ptr %1403, align 8, !tbaa !42
  %1414 = icmp eq ptr %1413, null
  br i1 %1414, label %1394, label %1402, !llvm.loop !383

1415:                                             ; preds = %1386, %1382
  %1416 = load i16, ptr %12, align 8, !tbaa !34
  %1417 = icmp eq i16 %1416, 250
  br i1 %1417, label %1418, label %1593

1418:                                             ; preds = %1415
  %1419 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %1420 = load ptr, ptr %1419, align 8, !tbaa !384
  %1421 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 25
  %1422 = load ptr, ptr %1421, align 8, !tbaa !385
  %1423 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %1424 = load ptr, ptr %1423, align 8, !tbaa !386
  %1425 = load ptr, ptr %1325, align 8, !tbaa !42
  %1426 = icmp eq ptr %1425, null
  br i1 %1426, label %1437, label %1427

1427:                                             ; preds = %1418, %1427
  %1428 = phi ptr [ %1435, %1427 ], [ %1425, %1418 ]
  %1429 = phi i32 [ %1434, %1427 ], [ 0, %1418 ]
  %1430 = getelementptr inbounds %struct.Scene, ptr %1428, i64 0, i32 22, i32 67
  %1431 = load i32, ptr %1430, align 4, !tbaa !387
  %1432 = and i32 %1431, 1
  %1433 = icmp eq i32 %1432, 0
  %1434 = select i1 %1433, i32 %1429, i32 1
  %1435 = load ptr, ptr %1428, align 8, !tbaa !42
  %1436 = icmp eq ptr %1435, null
  br i1 %1436, label %1437, label %1427, !llvm.loop !388

1437:                                             ; preds = %1427, %1418
  %1438 = phi i32 [ 0, %1418 ], [ %1434, %1427 ]
  %1439 = icmp eq i32 %1438, 0
  br i1 %1439, label %1593, label %1440

1440:                                             ; preds = %1437
  %1441 = icmp eq ptr %1420, null
  br i1 %1441, label %1442, label %1444

1442:                                             ; preds = %1493, %1440
  %1443 = icmp eq ptr %1424, null
  br i1 %1443, label %1532, label %1534

1444:                                             ; preds = %1440, %1493
  %1445 = phi ptr [ %1530, %1493 ], [ %1420, %1440 ]
  %1446 = getelementptr inbounds %struct.Material, ptr %1445, i64 0, i32 92
  %1447 = load ptr, ptr %1446, align 8, !tbaa !389
  %1448 = icmp eq ptr %1447, null
  br i1 %1448, label %1469, label %1449

1449:                                             ; preds = %1444
  %1450 = load i16, ptr %1447, align 4, !tbaa !390
  %1451 = icmp sgt i16 %1450, 0
  br i1 %1451, label %1452, label %1469

1452:                                             ; preds = %1449
  %1453 = getelementptr inbounds %struct.ColorBand, ptr %1447, i64 0, i32 6
  br label %1454

1454:                                             ; preds = %1452, %1454
  %1455 = phi i64 [ 0, %1452 ], [ %1465, %1454 ]
  %1456 = getelementptr inbounds %struct.CBData, ptr %1453, i64 %1455
  %1457 = load float, ptr %1456, align 4, !tbaa !216
  %1458 = call float @srgb_to_linearrgb(float noundef %1457) #9
  store float %1458, ptr %1456, align 4, !tbaa !216
  %1459 = getelementptr inbounds float, ptr %1456, i64 1
  %1460 = load float, ptr %1459, align 4, !tbaa !216
  %1461 = call float @srgb_to_linearrgb(float noundef %1460) #9
  store float %1461, ptr %1459, align 4, !tbaa !216
  %1462 = getelementptr inbounds float, ptr %1456, i64 2
  %1463 = load float, ptr %1462, align 4, !tbaa !216
  %1464 = call float @srgb_to_linearrgb(float noundef %1463) #9
  store float %1464, ptr %1462, align 4, !tbaa !216
  %1465 = add nuw nsw i64 %1455, 1
  %1466 = load i16, ptr %1447, align 4, !tbaa !390
  %1467 = sext i16 %1466 to i64
  %1468 = icmp slt i64 %1465, %1467
  br i1 %1468, label %1454, label %1469, !llvm.loop !391

1469:                                             ; preds = %1454, %1449, %1444
  %1470 = getelementptr inbounds %struct.Material, ptr %1445, i64 0, i32 93
  %1471 = load ptr, ptr %1470, align 8, !tbaa !392
  %1472 = icmp eq ptr %1471, null
  br i1 %1472, label %1493, label %1473

1473:                                             ; preds = %1469
  %1474 = load i16, ptr %1471, align 4, !tbaa !390
  %1475 = icmp sgt i16 %1474, 0
  br i1 %1475, label %1476, label %1493

1476:                                             ; preds = %1473
  %1477 = getelementptr inbounds %struct.ColorBand, ptr %1471, i64 0, i32 6
  br label %1478

1478:                                             ; preds = %1476, %1478
  %1479 = phi i64 [ 0, %1476 ], [ %1489, %1478 ]
  %1480 = getelementptr inbounds %struct.CBData, ptr %1477, i64 %1479
  %1481 = load float, ptr %1480, align 4, !tbaa !216
  %1482 = call float @srgb_to_linearrgb(float noundef %1481) #9
  store float %1482, ptr %1480, align 4, !tbaa !216
  %1483 = getelementptr inbounds float, ptr %1480, i64 1
  %1484 = load float, ptr %1483, align 4, !tbaa !216
  %1485 = call float @srgb_to_linearrgb(float noundef %1484) #9
  store float %1485, ptr %1483, align 4, !tbaa !216
  %1486 = getelementptr inbounds float, ptr %1480, i64 2
  %1487 = load float, ptr %1486, align 4, !tbaa !216
  %1488 = call float @srgb_to_linearrgb(float noundef %1487) #9
  store float %1488, ptr %1486, align 4, !tbaa !216
  %1489 = add nuw nsw i64 %1479, 1
  %1490 = load i16, ptr %1471, align 4, !tbaa !390
  %1491 = sext i16 %1490 to i64
  %1492 = icmp slt i64 %1489, %1491
  br i1 %1492, label %1478, label %1493, !llvm.loop !393

1493:                                             ; preds = %1478, %1473, %1469
  %1494 = getelementptr inbounds %struct.Material, ptr %1445, i64 0, i32 4
  %1495 = load float, ptr %1494, align 4, !tbaa !216
  %1496 = call float @srgb_to_linearrgb(float noundef %1495) #9
  store float %1496, ptr %1494, align 4, !tbaa !216
  %1497 = getelementptr inbounds %struct.Material, ptr %1445, i64 0, i32 5
  %1498 = load float, ptr %1497, align 4, !tbaa !216
  %1499 = call float @srgb_to_linearrgb(float noundef %1498) #9
  store float %1499, ptr %1497, align 4, !tbaa !216
  %1500 = getelementptr inbounds %struct.Material, ptr %1445, i64 0, i32 6
  %1501 = load float, ptr %1500, align 4, !tbaa !216
  %1502 = call float @srgb_to_linearrgb(float noundef %1501) #9
  store float %1502, ptr %1500, align 4, !tbaa !216
  %1503 = getelementptr inbounds %struct.Material, ptr %1445, i64 0, i32 7
  %1504 = load float, ptr %1503, align 4, !tbaa !216
  %1505 = call float @srgb_to_linearrgb(float noundef %1504) #9
  store float %1505, ptr %1503, align 4, !tbaa !216
  %1506 = getelementptr inbounds %struct.Material, ptr %1445, i64 0, i32 8
  %1507 = load float, ptr %1506, align 4, !tbaa !216
  %1508 = call float @srgb_to_linearrgb(float noundef %1507) #9
  store float %1508, ptr %1506, align 4, !tbaa !216
  %1509 = getelementptr inbounds %struct.Material, ptr %1445, i64 0, i32 9
  %1510 = load float, ptr %1509, align 4, !tbaa !216
  %1511 = call float @srgb_to_linearrgb(float noundef %1510) #9
  store float %1511, ptr %1509, align 4, !tbaa !216
  %1512 = getelementptr inbounds %struct.Material, ptr %1445, i64 0, i32 10
  %1513 = load float, ptr %1512, align 4, !tbaa !216
  %1514 = call float @srgb_to_linearrgb(float noundef %1513) #9
  store float %1514, ptr %1512, align 4, !tbaa !216
  %1515 = getelementptr inbounds %struct.Material, ptr %1445, i64 0, i32 11
  %1516 = load float, ptr %1515, align 4, !tbaa !216
  %1517 = call float @srgb_to_linearrgb(float noundef %1516) #9
  store float %1517, ptr %1515, align 4, !tbaa !216
  %1518 = getelementptr inbounds %struct.Material, ptr %1445, i64 0, i32 12
  %1519 = load float, ptr %1518, align 4, !tbaa !216
  %1520 = call float @srgb_to_linearrgb(float noundef %1519) #9
  store float %1520, ptr %1518, align 4, !tbaa !216
  %1521 = getelementptr inbounds %struct.Material, ptr %1445, i64 0, i32 115
  %1522 = load float, ptr %1521, align 4, !tbaa !216
  %1523 = call float @srgb_to_linearrgb(float noundef %1522) #9
  store float %1523, ptr %1521, align 4, !tbaa !216
  %1524 = getelementptr inbounds %struct.Material, ptr %1445, i64 0, i32 115, i64 1
  %1525 = load float, ptr %1524, align 4, !tbaa !216
  %1526 = call float @srgb_to_linearrgb(float noundef %1525) #9
  store float %1526, ptr %1524, align 4, !tbaa !216
  %1527 = getelementptr inbounds %struct.Material, ptr %1445, i64 0, i32 115, i64 2
  %1528 = load float, ptr %1527, align 4, !tbaa !216
  %1529 = call float @srgb_to_linearrgb(float noundef %1528) #9
  store float %1529, ptr %1527, align 4, !tbaa !216
  %1530 = load ptr, ptr %1445, align 8, !tbaa !394
  %1531 = icmp eq ptr %1530, null
  br i1 %1531, label %1442, label %1444, !llvm.loop !395

1532:                                             ; preds = %1559, %1442
  %1533 = icmp eq ptr %1422, null
  br i1 %1533, label %1593, label %1562

1534:                                             ; preds = %1442, %1559
  %1535 = phi ptr [ %1560, %1559 ], [ %1424, %1442 ]
  %1536 = getelementptr inbounds %struct.Tex, ptr %1535, i64 0, i32 55
  %1537 = load ptr, ptr %1536, align 8, !tbaa !396
  %1538 = icmp eq ptr %1537, null
  br i1 %1538, label %1559, label %1539

1539:                                             ; preds = %1534
  %1540 = load i16, ptr %1537, align 4, !tbaa !390
  %1541 = icmp sgt i16 %1540, 0
  br i1 %1541, label %1542, label %1559

1542:                                             ; preds = %1539
  %1543 = getelementptr inbounds %struct.ColorBand, ptr %1537, i64 0, i32 6
  br label %1544

1544:                                             ; preds = %1542, %1544
  %1545 = phi i64 [ 0, %1542 ], [ %1555, %1544 ]
  %1546 = getelementptr inbounds %struct.CBData, ptr %1543, i64 %1545
  %1547 = load float, ptr %1546, align 4, !tbaa !216
  %1548 = call float @srgb_to_linearrgb(float noundef %1547) #9
  store float %1548, ptr %1546, align 4, !tbaa !216
  %1549 = getelementptr inbounds float, ptr %1546, i64 1
  %1550 = load float, ptr %1549, align 4, !tbaa !216
  %1551 = call float @srgb_to_linearrgb(float noundef %1550) #9
  store float %1551, ptr %1549, align 4, !tbaa !216
  %1552 = getelementptr inbounds float, ptr %1546, i64 2
  %1553 = load float, ptr %1552, align 4, !tbaa !216
  %1554 = call float @srgb_to_linearrgb(float noundef %1553) #9
  store float %1554, ptr %1552, align 4, !tbaa !216
  %1555 = add nuw nsw i64 %1545, 1
  %1556 = load i16, ptr %1537, align 4, !tbaa !390
  %1557 = sext i16 %1556 to i64
  %1558 = icmp slt i64 %1555, %1557
  br i1 %1558, label %1544, label %1559, !llvm.loop !397

1559:                                             ; preds = %1544, %1539, %1534
  %1560 = load ptr, ptr %1535, align 8, !tbaa !398
  %1561 = icmp eq ptr %1560, null
  br i1 %1561, label %1532, label %1534, !llvm.loop !399

1562:                                             ; preds = %1532, %1562
  %1563 = phi ptr [ %1591, %1562 ], [ %1422, %1532 ]
  %1564 = getelementptr inbounds %struct.World, ptr %1563, i64 0, i32 12
  %1565 = load float, ptr %1564, align 4, !tbaa !216
  %1566 = call float @srgb_to_linearrgb(float noundef %1565) #9
  store float %1566, ptr %1564, align 4, !tbaa !216
  %1567 = getelementptr inbounds %struct.World, ptr %1563, i64 0, i32 13
  %1568 = load float, ptr %1567, align 4, !tbaa !216
  %1569 = call float @srgb_to_linearrgb(float noundef %1568) #9
  store float %1569, ptr %1567, align 4, !tbaa !216
  %1570 = getelementptr inbounds %struct.World, ptr %1563, i64 0, i32 14
  %1571 = load float, ptr %1570, align 4, !tbaa !216
  %1572 = call float @srgb_to_linearrgb(float noundef %1571) #9
  store float %1572, ptr %1570, align 4, !tbaa !216
  %1573 = getelementptr inbounds %struct.World, ptr %1563, i64 0, i32 6
  %1574 = load float, ptr %1573, align 4, !tbaa !216
  %1575 = call float @srgb_to_linearrgb(float noundef %1574) #9
  store float %1575, ptr %1573, align 4, !tbaa !216
  %1576 = getelementptr inbounds %struct.World, ptr %1563, i64 0, i32 7
  %1577 = load float, ptr %1576, align 4, !tbaa !216
  %1578 = call float @srgb_to_linearrgb(float noundef %1577) #9
  store float %1578, ptr %1576, align 4, !tbaa !216
  %1579 = getelementptr inbounds %struct.World, ptr %1563, i64 0, i32 8
  %1580 = load float, ptr %1579, align 4, !tbaa !216
  %1581 = call float @srgb_to_linearrgb(float noundef %1580) #9
  store float %1581, ptr %1579, align 4, !tbaa !216
  %1582 = getelementptr inbounds %struct.World, ptr %1563, i64 0, i32 9
  %1583 = load float, ptr %1582, align 4, !tbaa !216
  %1584 = call float @srgb_to_linearrgb(float noundef %1583) #9
  store float %1584, ptr %1582, align 4, !tbaa !216
  %1585 = getelementptr inbounds %struct.World, ptr %1563, i64 0, i32 10
  %1586 = load float, ptr %1585, align 4, !tbaa !216
  %1587 = call float @srgb_to_linearrgb(float noundef %1586) #9
  store float %1587, ptr %1585, align 4, !tbaa !216
  %1588 = getelementptr inbounds %struct.World, ptr %1563, i64 0, i32 11
  %1589 = load float, ptr %1588, align 4, !tbaa !216
  %1590 = call float @srgb_to_linearrgb(float noundef %1589) #9
  store float %1590, ptr %1588, align 4, !tbaa !216
  %1591 = load ptr, ptr %1563, align 8, !tbaa !400
  %1592 = icmp eq ptr %1591, null
  br i1 %1592, label %1593, label %1562, !llvm.loop !402

1593:                                             ; preds = %1562, %1532, %1437, %1415, %1320, %1318
  %1594 = load i16, ptr %12, align 8, !tbaa !34
  %1595 = icmp slt i16 %1594, 250
  br i1 %1595, label %1602, label %1596

1596:                                             ; preds = %1593
  %1597 = icmp eq i16 %1594, 250
  br i1 %1597, label %1598, label %1651

1598:                                             ; preds = %1596
  %1599 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1600 = load i16, ptr %1599, align 2, !tbaa !194
  %1601 = icmp slt i16 %1600, 9
  br i1 %1601, label %1602, label %1651

1602:                                             ; preds = %1598, %1593
  %1603 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1604 = load ptr, ptr %1603, align 8, !tbaa !42
  %1605 = icmp eq ptr %1604, null
  br i1 %1605, label %1617, label %1606

1606:                                             ; preds = %1602, %1614
  %1607 = phi ptr [ %1615, %1614 ], [ %1604, %1602 ]
  %1608 = getelementptr inbounds %struct.Scene, ptr %1607, i64 0, i32 20
  %1609 = load ptr, ptr %1608, align 8, !tbaa !224
  %1610 = getelementptr inbounds %struct.ToolSettings, ptr %1609, i64 0, i32 18, i32 8
  %1611 = load i32, ptr %1610, align 8, !tbaa !403
  %1612 = icmp eq i32 %1611, 0
  br i1 %1612, label %1613, label %1614

1613:                                             ; preds = %1606
  store i32 1, ptr %1610, align 8, !tbaa !403
  br label %1614

1614:                                             ; preds = %1606, %1613
  %1615 = load ptr, ptr %1607, align 8, !tbaa !42
  %1616 = icmp eq ptr %1615, null
  br i1 %1616, label %1617, label %1606, !llvm.loop !404

1617:                                             ; preds = %1614, %1602
  %1618 = icmp eq i16 %1594, 250
  br i1 %1618, label %1619, label %1651

1619:                                             ; preds = %1617
  %1620 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1621 = load i16, ptr %1620, align 2, !tbaa !194
  %1622 = icmp sgt i16 %1621, 1
  br i1 %1622, label %1623, label %1651

1623:                                             ; preds = %1619
  %1624 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %1625 = load ptr, ptr %1624, align 8, !tbaa !42
  %1626 = icmp eq ptr %1625, null
  br i1 %1626, label %1631, label %1627

1627:                                             ; preds = %1623, %1627
  %1628 = phi ptr [ %1629, %1627 ], [ %1625, %1623 ]
  call void @multires_load_old_250(ptr noundef nonnull %1628) #9
  %1629 = load ptr, ptr %1628, align 8, !tbaa !42
  %1630 = icmp eq ptr %1629, null
  br i1 %1630, label %1631, label %1627, !llvm.loop !405

1631:                                             ; preds = %1627, %1623
  %1632 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %1633 = load ptr, ptr %1632, align 8, !tbaa !42
  %1634 = icmp eq ptr %1633, null
  br i1 %1634, label %1651, label %1635

1635:                                             ; preds = %1631, %1648
  %1636 = phi ptr [ %1649, %1648 ], [ %1633, %1631 ]
  %1637 = call ptr @modifiers_findByType(ptr noundef nonnull %1636, i32 noundef 29) #9
  %1638 = icmp eq ptr %1637, null
  br i1 %1638, label %1648, label %1639

1639:                                             ; preds = %1635
  %1640 = getelementptr inbounds %struct.MultiresModifierData, ptr %1637, i64 0, i32 4
  %1641 = load i8, ptr %1640, align 1, !tbaa !406
  %1642 = add i8 %1641, -1
  store i8 %1642, ptr %1640, align 1, !tbaa !406
  %1643 = getelementptr inbounds %struct.MultiresModifierData, ptr %1637, i64 0, i32 1
  %1644 = load i8, ptr %1643, align 8, !tbaa !408
  %1645 = add i8 %1644, -1
  store i8 %1645, ptr %1643, align 8, !tbaa !408
  %1646 = getelementptr inbounds %struct.MultiresModifierData, ptr %1637, i64 0, i32 2
  store i8 %1645, ptr %1646, align 1, !tbaa !409
  %1647 = getelementptr inbounds %struct.MultiresModifierData, ptr %1637, i64 0, i32 3
  store i8 %1645, ptr %1647, align 2, !tbaa !410
  br label %1648

1648:                                             ; preds = %1639, %1635
  %1649 = load ptr, ptr %1636, align 8, !tbaa !42
  %1650 = icmp eq ptr %1649, null
  br i1 %1650, label %1651, label %1635, !llvm.loop !411

1651:                                             ; preds = %1648, %1631, %1617, %1619, %1598, %1596
  %1652 = load i16, ptr %12, align 8, !tbaa !34
  %1653 = icmp slt i16 %1652, 250
  br i1 %1653, label %1660, label %1654

1654:                                             ; preds = %1651
  %1655 = icmp eq i16 %1652, 250
  br i1 %1655, label %1656, label %1738

1656:                                             ; preds = %1654
  %1657 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1658 = load i16, ptr %1657, align 2, !tbaa !194
  %1659 = icmp slt i16 %1658, 10
  br i1 %1659, label %1660, label %1687

1660:                                             ; preds = %1656, %1651
  %1661 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %1662 = load ptr, ptr %1661, align 8, !tbaa !42
  %1663 = icmp eq ptr %1662, null
  br i1 %1663, label %1687, label %1667

1664:                                             ; preds = %1684, %1667
  %1665 = load ptr, ptr %1668, align 8, !tbaa !42
  %1666 = icmp eq ptr %1665, null
  br i1 %1666, label %1687, label %1667, !llvm.loop !412

1667:                                             ; preds = %1660, %1664
  %1668 = phi ptr [ %1665, %1664 ], [ %1662, %1660 ]
  %1669 = getelementptr inbounds %struct.Object, ptr %1668, i64 0, i32 26
  %1670 = load ptr, ptr %1669, align 8, !tbaa !42
  %1671 = icmp eq ptr %1670, null
  br i1 %1671, label %1664, label %1672

1672:                                             ; preds = %1667, %1684
  %1673 = phi ptr [ %1685, %1684 ], [ %1670, %1667 ]
  %1674 = getelementptr inbounds %struct.ModifierData, ptr %1673, i64 0, i32 2
  %1675 = load i32, ptr %1674, align 8, !tbaa !413
  %1676 = icmp eq i32 %1675, 22
  br i1 %1676, label %1677, label %1684

1677:                                             ; preds = %1672
  %1678 = getelementptr inbounds %struct.ClothModifierData, ptr %1673, i64 0, i32 3
  %1679 = load ptr, ptr %1678, align 8, !tbaa !317
  %1680 = getelementptr inbounds %struct.ClothSimSettings, ptr %1679, i64 0, i32 23
  %1681 = load float, ptr %1680, align 8, !tbaa !414
  %1682 = fcmp olt float %1681, 0x3F847AE140000000
  br i1 %1682, label %1683, label %1684

1683:                                             ; preds = %1677
  store float 0.000000e+00, ptr %1680, align 8, !tbaa !414
  br label %1684

1684:                                             ; preds = %1677, %1683, %1672
  %1685 = load ptr, ptr %1673, align 8, !tbaa !42
  %1686 = icmp eq ptr %1685, null
  br i1 %1686, label %1664, label %1672, !llvm.loop !415

1687:                                             ; preds = %1664, %1660, %1656
  %1688 = icmp eq i16 %1652, 250
  br i1 %1688, label %1689, label %1738

1689:                                             ; preds = %1687
  %1690 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1691 = load i16, ptr %1690, align 2, !tbaa !194
  %1692 = icmp eq i16 %1691, 10
  br i1 %1692, label %1693, label %1738

1693:                                             ; preds = %1689
  %1694 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %1695 = load ptr, ptr %1694, align 8, !tbaa !42
  %1696 = icmp eq ptr %1695, null
  br i1 %1696, label %1738, label %1700

1697:                                             ; preds = %1705, %1700
  %1698 = load ptr, ptr %1701, align 8, !tbaa !42
  %1699 = icmp eq ptr %1698, null
  br i1 %1699, label %1738, label %1700, !llvm.loop !416

1700:                                             ; preds = %1693, %1697
  %1701 = phi ptr [ %1698, %1697 ], [ %1695, %1693 ]
  %1702 = getelementptr inbounds %struct.bScreen, ptr %1701, i64 0, i32 3
  %1703 = load ptr, ptr %1702, align 8, !tbaa !42
  %1704 = icmp eq ptr %1703, null
  br i1 %1704, label %1697, label %1708

1705:                                             ; preds = %1735, %1708
  %1706 = load ptr, ptr %1709, align 8, !tbaa !42
  %1707 = icmp eq ptr %1706, null
  br i1 %1707, label %1697, label %1708, !llvm.loop !417

1708:                                             ; preds = %1700, %1705
  %1709 = phi ptr [ %1706, %1705 ], [ %1703, %1700 ]
  %1710 = getelementptr inbounds %struct.ScrArea, ptr %1709, i64 0, i32 19
  %1711 = load ptr, ptr %1710, align 8, !tbaa !42
  %1712 = icmp eq ptr %1711, null
  br i1 %1712, label %1705, label %1713

1713:                                             ; preds = %1708
  %1714 = getelementptr inbounds %struct.ScrArea, ptr %1709, i64 0, i32 20
  br label %1715

1715:                                             ; preds = %1713, %1735
  %1716 = phi ptr [ %1711, %1713 ], [ %1736, %1735 ]
  %1717 = getelementptr inbounds %struct.SpaceLink, ptr %1716, i64 0, i32 3
  %1718 = load i32, ptr %1717, align 8, !tbaa !124
  %1719 = icmp eq i32 %1718, 8
  br i1 %1719, label %1735, label %1720

1720:                                             ; preds = %1715
  %1721 = load ptr, ptr %1710, align 8, !tbaa !123
  %1722 = icmp eq ptr %1716, %1721
  %1723 = getelementptr inbounds %struct.SpaceLink, ptr %1716, i64 0, i32 2
  %1724 = select i1 %1722, ptr %1714, ptr %1723
  br label %1725

1725:                                             ; preds = %1729, %1720
  %1726 = phi ptr [ %1724, %1720 ], [ %1727, %1729 ]
  %1727 = load ptr, ptr %1726, align 8, !tbaa !42
  %1728 = icmp eq ptr %1727, null
  br i1 %1728, label %1735, label %1729

1729:                                             ; preds = %1725
  %1730 = getelementptr inbounds %struct.ARegion, ptr %1727, i64 0, i32 8
  %1731 = load i16, ptr %1730, align 2, !tbaa !114
  %1732 = icmp eq i16 %1731, 7
  br i1 %1732, label %1733, label %1725, !llvm.loop !418

1733:                                             ; preds = %1729
  %1734 = call ptr @BKE_spacetype_from_id(i32 noundef 8) #9
  call void @BKE_area_region_free(ptr noundef %1734, ptr noundef nonnull %1727) #9
  call void @BLI_freelinkN(ptr noundef nonnull %1724, ptr noundef nonnull %1727) #9
  br label %1735

1735:                                             ; preds = %1725, %1733, %1715
  %1736 = load ptr, ptr %1716, align 8, !tbaa !42
  %1737 = icmp eq ptr %1736, null
  br i1 %1737, label %1705, label %1715, !llvm.loop !419

1738:                                             ; preds = %1697, %1693, %1654, %1689, %1687
  %1739 = load i16, ptr %12, align 8, !tbaa !34
  %1740 = icmp slt i16 %1739, 250
  br i1 %1740, label %1747, label %1741

1741:                                             ; preds = %1738
  %1742 = icmp eq i16 %1739, 250
  br i1 %1742, label %1743, label %1822

1743:                                             ; preds = %1741
  %1744 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1745 = load i16, ptr %1744, align 2, !tbaa !194
  %1746 = icmp slt i16 %1745, 11
  br i1 %1746, label %1747, label %1822

1747:                                             ; preds = %1743, %1738
  %1748 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %1749 = load ptr, ptr %1748, align 8, !tbaa !42
  %1750 = icmp eq ptr %1749, null
  br i1 %1750, label %1822, label %1754

1751:                                             ; preds = %1759, %1754
  %1752 = load ptr, ptr %1755, align 8, !tbaa !42
  %1753 = icmp eq ptr %1752, null
  br i1 %1753, label %1822, label %1754, !llvm.loop !420

1754:                                             ; preds = %1747, %1751
  %1755 = phi ptr [ %1752, %1751 ], [ %1749, %1747 ]
  %1756 = getelementptr inbounds %struct.bScreen, ptr %1755, i64 0, i32 3
  %1757 = load ptr, ptr %1756, align 8, !tbaa !42
  %1758 = icmp eq ptr %1757, null
  br i1 %1758, label %1751, label %1762

1759:                                             ; preds = %1819, %1762
  %1760 = load ptr, ptr %1763, align 8, !tbaa !42
  %1761 = icmp eq ptr %1760, null
  br i1 %1761, label %1751, label %1762, !llvm.loop !421

1762:                                             ; preds = %1754, %1759
  %1763 = phi ptr [ %1760, %1759 ], [ %1757, %1754 ]
  %1764 = getelementptr inbounds %struct.ScrArea, ptr %1763, i64 0, i32 19
  %1765 = load ptr, ptr %1764, align 8, !tbaa !42
  %1766 = icmp eq ptr %1765, null
  br i1 %1766, label %1759, label %1767

1767:                                             ; preds = %1762
  %1768 = getelementptr inbounds %struct.ScrArea, ptr %1763, i64 0, i32 20
  br label %1769

1769:                                             ; preds = %1767, %1819
  %1770 = phi ptr [ %1765, %1767 ], [ %1820, %1819 ]
  %1771 = getelementptr inbounds %struct.SpaceLink, ptr %1770, i64 0, i32 3
  %1772 = load i32, ptr %1771, align 8, !tbaa !124
  %1773 = icmp eq i32 %1772, 8
  br i1 %1773, label %1774, label %1819

1774:                                             ; preds = %1769
  %1775 = load ptr, ptr %1764, align 8, !tbaa !123
  %1776 = icmp eq ptr %1770, %1775
  %1777 = getelementptr inbounds %struct.SpaceLink, ptr %1770, i64 0, i32 2
  %1778 = select i1 %1776, ptr %1768, ptr %1777
  %1779 = getelementptr inbounds %struct.SpaceSeq, ptr %1770, i64 0, i32 15
  %1780 = load i32, ptr %1779, align 8, !tbaa !422
  %1781 = icmp eq i32 %1780, 0
  br i1 %1781, label %1782, label %1783

1782:                                             ; preds = %1774
  store i32 1, ptr %1779, align 8, !tbaa !422
  br label %1783

1783:                                             ; preds = %1782, %1774
  %1784 = getelementptr inbounds %struct.SpaceSeq, ptr %1770, i64 0, i32 9
  %1785 = load i16, ptr %1784, align 8, !tbaa !423
  %1786 = icmp eq i16 %1785, 0
  br i1 %1786, label %1787, label %1788

1787:                                             ; preds = %1783
  store i16 1, ptr %1784, align 8, !tbaa !423
  br label %1788

1788:                                             ; preds = %1787, %1783
  br label %1789

1789:                                             ; preds = %1788, %1793
  %1790 = phi ptr [ %1791, %1793 ], [ %1778, %1788 ]
  %1791 = load ptr, ptr %1790, align 8, !tbaa !42
  %1792 = icmp eq ptr %1791, null
  br i1 %1792, label %1797, label %1793

1793:                                             ; preds = %1789
  %1794 = getelementptr inbounds %struct.ARegion, ptr %1791, i64 0, i32 8
  %1795 = load i16, ptr %1794, align 2, !tbaa !114
  %1796 = icmp eq i16 %1795, 0
  br i1 %1796, label %1797, label %1789, !llvm.loop !424

1797:                                             ; preds = %1793, %1789
  %1798 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %1799 = call ptr %1798(i64 noundef 384, ptr noundef nonnull @.str.5) #9
  call void @BLI_insertlinkbefore(ptr noundef nonnull %1778, ptr noundef %1791, ptr noundef %1799) #9
  %1800 = getelementptr inbounds %struct.ARegion, ptr %1799, i64 0, i32 8
  store i16 7, ptr %1800, align 2, !tbaa !114
  %1801 = getelementptr inbounds %struct.ARegion, ptr %1799, i64 0, i32 9
  store i16 1, ptr %1801, align 8, !tbaa !117
  %1802 = getelementptr inbounds %struct.ARegion, ptr %1799, i64 0, i32 10
  %1803 = load i16, ptr %1802, align 2, !tbaa !425
  %1804 = or i16 %1803, 1
  store i16 %1804, ptr %1802, align 2, !tbaa !425
  %1805 = getelementptr inbounds %struct.ARegion, ptr %1799, i64 0, i32 2
  %1806 = getelementptr inbounds %struct.ARegion, ptr %1799, i64 0, i32 2, i32 12
  store i16 6, ptr %1806, align 2, !tbaa !118
  %1807 = getelementptr inbounds %struct.ARegion, ptr %1799, i64 0, i32 2, i32 7
  store float 0x3EE4F8B580000000, ptr %1807, align 8, !tbaa !426
  %1808 = getelementptr inbounds %struct.ARegion, ptr %1799, i64 0, i32 2, i32 8
  store float 1.000000e+05, ptr %1808, align 4, !tbaa !427
  store float -9.600000e+02, ptr %1805, align 8, !tbaa !428
  %1809 = getelementptr inbounds %struct.ARegion, ptr %1799, i64 0, i32 2, i32 0, i32 2
  store float -5.400000e+02, ptr %1809, align 8, !tbaa !429
  %1810 = getelementptr inbounds %struct.ARegion, ptr %1799, i64 0, i32 2, i32 0, i32 1
  store float 9.600000e+02, ptr %1810, align 4, !tbaa !430
  %1811 = getelementptr inbounds %struct.ARegion, ptr %1799, i64 0, i32 2, i32 0, i32 3
  store float 5.400000e+02, ptr %1811, align 4, !tbaa !431
  %1812 = getelementptr inbounds %struct.ARegion, ptr %1799, i64 0, i32 2, i32 5
  store float 0.000000e+00, ptr %1812, align 8, !tbaa !216
  %1813 = getelementptr inbounds %struct.ARegion, ptr %1799, i64 0, i32 2, i32 5, i64 1
  store float 0.000000e+00, ptr %1813, align 4, !tbaa !216
  %1814 = getelementptr inbounds %struct.ARegion, ptr %1799, i64 0, i32 2, i32 6
  store float 1.200000e+04, ptr %1814, align 8, !tbaa !216
  %1815 = getelementptr inbounds %struct.ARegion, ptr %1799, i64 0, i32 2, i32 6, i64 1
  store float 1.200000e+04, ptr %1815, align 4, !tbaa !216
  %1816 = getelementptr inbounds %struct.ARegion, ptr %1799, i64 0, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1816, ptr noundef nonnull align 8 dereferenceable(16) %1805, i64 16, i1 false), !tbaa.struct !432
  %1817 = getelementptr inbounds %struct.ARegion, ptr %1799, i64 0, i32 2, i32 15
  store i16 0, ptr %1817, align 4, !tbaa !121
  %1818 = getelementptr inbounds %struct.ARegion, ptr %1799, i64 0, i32 2, i32 11
  store i16 0, ptr %1818, align 4, !tbaa !120
  br label %1819

1819:                                             ; preds = %1769, %1797
  %1820 = load ptr, ptr %1770, align 8, !tbaa !42
  %1821 = icmp eq ptr %1820, null
  br i1 %1821, label %1759, label %1769, !llvm.loop !433

1822:                                             ; preds = %1751, %1747, %1743, %1741
  %1823 = load i16, ptr %12, align 8, !tbaa !34
  %1824 = icmp slt i16 %1823, 250
  br i1 %1824, label %1831, label %1825

1825:                                             ; preds = %1822
  %1826 = icmp eq i16 %1823, 250
  br i1 %1826, label %1827, label %1974

1827:                                             ; preds = %1825
  %1828 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1829 = load i16, ptr %1828, align 2, !tbaa !194
  %1830 = icmp slt i16 %1829, 12
  br i1 %1830, label %1831, label %1974

1831:                                             ; preds = %1827, %1822
  %1832 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1833 = load ptr, ptr %1832, align 8, !tbaa !42
  %1834 = icmp eq ptr %1833, null
  br i1 %1834, label %1840, label %1835

1835:                                             ; preds = %1831, %1835
  %1836 = phi ptr [ %1838, %1835 ], [ %1833, %1831 ]
  %1837 = getelementptr inbounds %struct.Scene, ptr %1836, i64 0, i32 37, i32 14
  store float 0x3FB99999A0000000, ptr %1837, align 4, !tbaa !434
  %1838 = load ptr, ptr %1836, align 8, !tbaa !42
  %1839 = icmp eq ptr %1838, null
  br i1 %1839, label %1840, label %1835, !llvm.loop !435

1840:                                             ; preds = %1835, %1831
  %1841 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %1842 = load ptr, ptr %1841, align 8, !tbaa !42
  %1843 = icmp eq ptr %1842, null
  br i1 %1843, label %1949, label %1844

1844:                                             ; preds = %1840, %1946
  %1845 = phi ptr [ %1947, %1946 ], [ %1842, %1840 ]
  %1846 = getelementptr inbounds %struct.Object, ptr %1845, i64 0, i32 21
  call void @animviz_settings_init(ptr noundef nonnull %1846) #9
  %1847 = getelementptr inbounds %struct.Object, ptr %1845, i64 0, i32 18
  %1848 = load ptr, ptr %1847, align 8, !tbaa !332
  %1849 = icmp eq ptr %1848, null
  br i1 %1849, label %1946, label %1850

1850:                                             ; preds = %1844
  %1851 = getelementptr inbounds %struct.Object, ptr %1845, i64 0, i32 19
  %1852 = load ptr, ptr %1851, align 8, !tbaa !168
  %1853 = icmp eq ptr %1852, null
  br i1 %1853, label %1946, label %1854

1854:                                             ; preds = %1850
  %1855 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %1852) #9
  %1856 = icmp eq ptr %1855, null
  %1857 = load ptr, ptr %1847, align 8, !tbaa !332
  %1858 = getelementptr inbounds %struct.bPose, ptr %1857, i64 0, i32 14
  br i1 %1856, label %1945, label %1859

1859:                                             ; preds = %1854
  %1860 = getelementptr inbounds %struct.bArmature, ptr %1855, i64 0, i32 17
  %1861 = load i16, ptr %1860, align 8, !tbaa !436
  %1862 = sext i16 %1861 to i32
  %1863 = getelementptr inbounds %struct.bPose, ptr %1857, i64 0, i32 14, i32 3
  store i32 %1862, ptr %1863, align 4, !tbaa !438
  %1864 = getelementptr inbounds %struct.bPose, ptr %1857, i64 0, i32 14, i32 2
  store i32 %1862, ptr %1864, align 4, !tbaa !439
  %1865 = getelementptr inbounds %struct.bArmature, ptr %1855, i64 0, i32 21
  %1866 = load i32, ptr %1865, align 8, !tbaa !440
  store i32 %1866, ptr %1858, align 4, !tbaa !441
  %1867 = getelementptr inbounds %struct.bArmature, ptr %1855, i64 0, i32 22
  %1868 = load i32, ptr %1867, align 4, !tbaa !442
  %1869 = getelementptr inbounds %struct.bPose, ptr %1857, i64 0, i32 14, i32 1
  store i32 %1868, ptr %1869, align 4, !tbaa !443
  %1870 = or i32 %1868, %1866
  %1871 = icmp eq i32 %1870, 0
  br i1 %1871, label %1872, label %1873

1872:                                             ; preds = %1859
  store i32 1, ptr %1858, align 4, !tbaa !441
  store i32 100, ptr %1869, align 4, !tbaa !443
  br label %1873

1873:                                             ; preds = %1872, %1859
  %1874 = icmp eq i16 %1861, 0
  br i1 %1874, label %1879, label %1875

1875:                                             ; preds = %1873
  %1876 = getelementptr inbounds %struct.bArmature, ptr %1855, i64 0, i32 19
  %1877 = load i16, ptr %1876, align 4, !tbaa !444
  %1878 = add i16 %1877, 1
  br label %1879

1879:                                             ; preds = %1873, %1875
  %1880 = phi i16 [ %1878, %1875 ], [ 0, %1873 ]
  %1881 = getelementptr inbounds %struct.bPose, ptr %1857, i64 0, i32 14, i32 4
  store i16 %1880, ptr %1881, align 4, !tbaa !445
  %1882 = getelementptr inbounds %struct.bArmature, ptr %1855, i64 0, i32 18
  %1883 = load i16, ptr %1882, align 2, !tbaa !446
  %1884 = getelementptr inbounds %struct.bPose, ptr %1857, i64 0, i32 14, i32 5
  %1885 = call i16 @llvm.umax.i16(i16 %1883, i16 1)
  store i16 %1885, ptr %1884, align 2, !tbaa !447
  %1886 = getelementptr inbounds %struct.bArmature, ptr %1855, i64 0, i32 25
  %1887 = load i32, ptr %1886, align 8, !tbaa !448
  %1888 = getelementptr inbounds %struct.bPose, ptr %1857, i64 0, i32 14, i32 14
  store i32 %1887, ptr %1888, align 4, !tbaa !449
  %1889 = getelementptr inbounds %struct.bArmature, ptr %1855, i64 0, i32 26
  %1890 = load i32, ptr %1889, align 4, !tbaa !450
  %1891 = getelementptr inbounds %struct.bPose, ptr %1857, i64 0, i32 14, i32 15
  store i32 %1890, ptr %1891, align 4, !tbaa !451
  %1892 = or i32 %1890, %1887
  %1893 = icmp eq i32 %1892, 0
  br i1 %1893, label %1894, label %1895

1894:                                             ; preds = %1879
  store i32 10, ptr %1891, align 4, !tbaa !451
  store i32 10, ptr %1888, align 4, !tbaa !449
  br label %1895

1895:                                             ; preds = %1894, %1879
  %1896 = getelementptr inbounds %struct.bArmature, ptr %1855, i64 0, i32 23
  %1897 = load i32, ptr %1896, align 8, !tbaa !452
  %1898 = getelementptr inbounds %struct.bPose, ptr %1857, i64 0, i32 14, i32 12
  store i32 %1897, ptr %1898, align 4, !tbaa !453
  %1899 = getelementptr inbounds %struct.bArmature, ptr %1855, i64 0, i32 24
  %1900 = load i32, ptr %1899, align 4, !tbaa !454
  %1901 = getelementptr inbounds %struct.bPose, ptr %1857, i64 0, i32 14, i32 13
  store i32 %1900, ptr %1901, align 4, !tbaa !455
  %1902 = or i32 %1900, %1897
  %1903 = icmp eq i32 %1902, 0
  br i1 %1903, label %1904, label %1905

1904:                                             ; preds = %1895
  store i32 1, ptr %1898, align 4, !tbaa !453
  store i32 250, ptr %1901, align 4, !tbaa !455
  br label %1905

1905:                                             ; preds = %1904, %1895
  %1906 = getelementptr inbounds %struct.bArmature, ptr %1855, i64 0, i32 13
  %1907 = load i16, ptr %1906, align 2, !tbaa !456
  %1908 = and i16 %1907, 1
  %1909 = icmp eq i16 %1908, 0
  br i1 %1909, label %1914, label %1910

1910:                                             ; preds = %1905
  %1911 = getelementptr inbounds %struct.bPose, ptr %1857, i64 0, i32 14, i32 10
  %1912 = load i16, ptr %1911, align 4, !tbaa !457
  %1913 = or i16 %1912, 1
  store i16 %1913, ptr %1911, align 4, !tbaa !457
  br label %1914

1914:                                             ; preds = %1910, %1905
  %1915 = and i16 %1907, 2
  %1916 = icmp eq i16 %1915, 0
  br i1 %1916, label %1921, label %1917

1917:                                             ; preds = %1914
  %1918 = getelementptr inbounds %struct.bPose, ptr %1857, i64 0, i32 14, i32 10
  %1919 = load i16, ptr %1918, align 4, !tbaa !457
  %1920 = or i16 %1919, 2
  store i16 %1920, ptr %1918, align 4, !tbaa !457
  br label %1921

1921:                                             ; preds = %1917, %1914
  %1922 = and i16 %1907, 16
  %1923 = icmp eq i16 %1922, 0
  br i1 %1923, label %1928, label %1924

1924:                                             ; preds = %1921
  %1925 = getelementptr inbounds %struct.bPose, ptr %1857, i64 0, i32 14, i32 10
  %1926 = load i16, ptr %1925, align 4, !tbaa !457
  %1927 = or i16 %1926, 4
  store i16 %1927, ptr %1925, align 4, !tbaa !457
  br label %1928

1928:                                             ; preds = %1924, %1921
  %1929 = and i16 %1907, 4
  %1930 = icmp eq i16 %1929, 0
  br i1 %1930, label %1935, label %1931

1931:                                             ; preds = %1928
  %1932 = getelementptr inbounds %struct.bPose, ptr %1857, i64 0, i32 14, i32 11
  %1933 = load i16, ptr %1932, align 2, !tbaa !458
  %1934 = or i16 %1933, 2
  store i16 %1934, ptr %1932, align 2, !tbaa !458
  br label %1935

1935:                                             ; preds = %1931, %1928
  %1936 = and i16 %1907, 8
  %1937 = icmp eq i16 %1936, 0
  br i1 %1937, label %1940, label %1938

1938:                                             ; preds = %1935
  %1939 = getelementptr inbounds %struct.bPose, ptr %1857, i64 0, i32 14, i32 8
  store i16 1, ptr %1939, align 4, !tbaa !459
  br label %1940

1940:                                             ; preds = %1938, %1935
  %1941 = getelementptr inbounds %struct.bArmature, ptr %1855, i64 0, i32 20
  %1942 = load i16, ptr %1941, align 2, !tbaa !460
  %1943 = getelementptr inbounds %struct.bPose, ptr %1857, i64 0, i32 14, i32 9
  %1944 = call i16 @llvm.umax.i16(i16 %1942, i16 1)
  store i16 %1944, ptr %1943, align 2, !tbaa !461
  br label %1946

1945:                                             ; preds = %1854
  call void @animviz_settings_init(ptr noundef nonnull %1858) #9
  br label %1946

1946:                                             ; preds = %1940, %1945, %1844, %1850
  %1947 = load ptr, ptr %1845, align 8, !tbaa !42
  %1948 = icmp eq ptr %1947, null
  br i1 %1948, label %1949, label %1844, !llvm.loop !462

1949:                                             ; preds = %1946, %1840
  %1950 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 36
  %1951 = load ptr, ptr %1950, align 8, !tbaa !42
  %1952 = icmp eq ptr %1951, null
  br i1 %1952, label %1959, label %1953

1953:                                             ; preds = %1949, %1953
  %1954 = phi ptr [ %1957, %1953 ], [ %1951, %1949 ]
  %1955 = getelementptr inbounds %struct.Brush, ptr %1954, i64 0, i32 3
  call void @default_mtex(ptr noundef nonnull %1955) #9
  %1956 = getelementptr inbounds %struct.Brush, ptr %1954, i64 0, i32 4
  call void @default_mtex(ptr noundef nonnull %1956) #9
  %1957 = load ptr, ptr %1954, align 8, !tbaa !42
  %1958 = icmp eq ptr %1957, null
  br i1 %1958, label %1959, label %1953, !llvm.loop !463

1959:                                             ; preds = %1953, %1949
  %1960 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %1961 = load ptr, ptr %1960, align 8, !tbaa !42
  %1962 = icmp eq ptr %1961, null
  br i1 %1962, label %1974, label %1963

1963:                                             ; preds = %1959, %1971
  %1964 = phi ptr [ %1972, %1971 ], [ %1961, %1959 ]
  %1965 = getelementptr inbounds %struct.Material, ptr %1964, i64 0, i32 27, i32 17
  %1966 = load float, ptr %1965, align 4, !tbaa !464
  %1967 = fcmp olt float %1966, 0x3F1A36E2E0000000
  br i1 %1967, label %1968, label %1971

1968:                                             ; preds = %1963
  store float 0x3FC99999A0000000, ptr %1965, align 4, !tbaa !464
  %1969 = getelementptr inbounds %struct.Material, ptr %1964, i64 0, i32 27, i32 15
  store float 1.000000e+00, ptr %1969, align 4, !tbaa !465
  %1970 = getelementptr inbounds %struct.Material, ptr %1964, i64 0, i32 27, i32 16
  store float 1.000000e+00, ptr %1970, align 8, !tbaa !466
  br label %1971

1971:                                             ; preds = %1963, %1968
  %1972 = load ptr, ptr %1964, align 8, !tbaa !42
  %1973 = icmp eq ptr %1972, null
  br i1 %1973, label %1974, label %1963, !llvm.loop !467

1974:                                             ; preds = %1971, %1959, %1827, %1825
  %1975 = load i16, ptr %12, align 8, !tbaa !34
  %1976 = icmp slt i16 %1975, 250
  br i1 %1976, label %1983, label %1977

1977:                                             ; preds = %1974
  %1978 = icmp eq i16 %1975, 250
  br i1 %1978, label %1979, label %2118

1979:                                             ; preds = %1977
  %1980 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1981 = load i16, ptr %1980, align 2, !tbaa !194
  %1982 = icmp slt i16 %1981, 13
  br i1 %1982, label %1983, label %2118

1983:                                             ; preds = %1979, %1974
  %1984 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %1985 = load ptr, ptr %1984, align 8, !tbaa !42
  %1986 = icmp eq ptr %1985, null
  br i1 %1986, label %2118, label %1987

1987:                                             ; preds = %1983, %2115
  %1988 = phi ptr [ %2116, %2115 ], [ %1985, %1983 ]
  %1989 = getelementptr inbounds %struct.Object, ptr %1988, i64 0, i32 106
  %1990 = load ptr, ptr %1989, align 8, !tbaa !42
  %1991 = icmp eq ptr %1990, null
  br i1 %1991, label %2037, label %1992

1992:                                             ; preds = %1987, %2034
  %1993 = phi ptr [ %2035, %2034 ], [ %1990, %1987 ]
  %1994 = getelementptr inbounds %struct.bConstraint, ptr %1993, i64 0, i32 3
  %1995 = load i16, ptr %1994, align 8, !tbaa !468
  switch i16 %1995, label %2034 [
    i16 17, label %1996
    i16 3, label %2008
    i16 5, label %2014
  ]

1996:                                             ; preds = %1992
  %1997 = getelementptr inbounds %struct.bConstraint, ptr %1993, i64 0, i32 2
  %1998 = load ptr, ptr %1997, align 8, !tbaa !470
  %1999 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %1998, i64 0, i32 6
  %2000 = load float, ptr %1999, align 8, !tbaa !471
  %2001 = fmul float %2000, 0x3F91DF46A0000000
  store float %2001, ptr %1999, align 8, !tbaa !471
  %2002 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %1998, i64 0, i32 7
  %2003 = load float, ptr %2002, align 4, !tbaa !473
  %2004 = fmul float %2003, 0x3F91DF46A0000000
  store float %2004, ptr %2002, align 4, !tbaa !473
  %2005 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %1998, i64 0, i32 8
  %2006 = load float, ptr %2005, align 8, !tbaa !474
  %2007 = fmul float %2006, 0x3F91DF46A0000000
  store float %2007, ptr %2005, align 8, !tbaa !474
  br label %2034

2008:                                             ; preds = %1992
  %2009 = getelementptr inbounds %struct.bConstraint, ptr %1993, i64 0, i32 2
  %2010 = load ptr, ptr %2009, align 8, !tbaa !470
  %2011 = getelementptr inbounds %struct.bKinematicConstraint, ptr %2010, i64 0, i32 8
  %2012 = load float, ptr %2011, align 8, !tbaa !475
  %2013 = fmul float %2012, 0x3F91DF46A0000000
  store float %2013, ptr %2011, align 8, !tbaa !475
  br label %2034

2014:                                             ; preds = %1992
  %2015 = getelementptr inbounds %struct.bConstraint, ptr %1993, i64 0, i32 2
  %2016 = load ptr, ptr %2015, align 8, !tbaa !470
  %2017 = load float, ptr %2016, align 4, !tbaa !477
  %2018 = fmul float %2017, 0x3F91DF46A0000000
  store float %2018, ptr %2016, align 4, !tbaa !477
  %2019 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %2016, i64 0, i32 1
  %2020 = load float, ptr %2019, align 4, !tbaa !479
  %2021 = fmul float %2020, 0x3F91DF46A0000000
  store float %2021, ptr %2019, align 4, !tbaa !479
  %2022 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %2016, i64 0, i32 2
  %2023 = load float, ptr %2022, align 4, !tbaa !480
  %2024 = fmul float %2023, 0x3F91DF46A0000000
  store float %2024, ptr %2022, align 4, !tbaa !480
  %2025 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %2016, i64 0, i32 3
  %2026 = load float, ptr %2025, align 4, !tbaa !481
  %2027 = fmul float %2026, 0x3F91DF46A0000000
  store float %2027, ptr %2025, align 4, !tbaa !481
  %2028 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %2016, i64 0, i32 4
  %2029 = load float, ptr %2028, align 4, !tbaa !482
  %2030 = fmul float %2029, 0x3F91DF46A0000000
  store float %2030, ptr %2028, align 4, !tbaa !482
  %2031 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %2016, i64 0, i32 5
  %2032 = load float, ptr %2031, align 4, !tbaa !483
  %2033 = fmul float %2032, 0x3F91DF46A0000000
  store float %2033, ptr %2031, align 4, !tbaa !483
  br label %2034

2034:                                             ; preds = %2014, %2008, %1996, %1992
  %2035 = load ptr, ptr %1993, align 8, !tbaa !42
  %2036 = icmp eq ptr %2035, null
  br i1 %2036, label %2037, label %1992, !llvm.loop !484

2037:                                             ; preds = %2034, %1987
  %2038 = getelementptr inbounds %struct.Object, ptr %1988, i64 0, i32 18
  %2039 = load ptr, ptr %2038, align 8, !tbaa !332
  %2040 = icmp eq ptr %2039, null
  br i1 %2040, label %2115, label %2041

2041:                                             ; preds = %2037
  %2042 = load ptr, ptr %2039, align 8, !tbaa !42
  %2043 = icmp eq ptr %2042, null
  br i1 %2043, label %2115, label %2044

2044:                                             ; preds = %2041, %2112
  %2045 = phi ptr [ %2113, %2112 ], [ %2042, %2041 ]
  %2046 = getelementptr inbounds %struct.bPoseChannel, ptr %2045, i64 0, i32 33
  %2047 = load float, ptr %2046, align 8, !tbaa !216
  %2048 = fmul float %2047, 0x3F91DF46A0000000
  store float %2048, ptr %2046, align 8, !tbaa !216
  %2049 = getelementptr inbounds %struct.bPoseChannel, ptr %2045, i64 0, i32 33, i64 1
  %2050 = load float, ptr %2049, align 4, !tbaa !216
  %2051 = fmul float %2050, 0x3F91DF46A0000000
  store float %2051, ptr %2049, align 4, !tbaa !216
  %2052 = getelementptr inbounds %struct.bPoseChannel, ptr %2045, i64 0, i32 33, i64 2
  %2053 = load float, ptr %2052, align 8, !tbaa !216
  %2054 = fmul float %2053, 0x3F91DF46A0000000
  store float %2054, ptr %2052, align 8, !tbaa !216
  %2055 = getelementptr inbounds %struct.bPoseChannel, ptr %2045, i64 0, i32 34
  %2056 = load float, ptr %2055, align 4, !tbaa !216
  %2057 = fmul float %2056, 0x3F91DF46A0000000
  store float %2057, ptr %2055, align 4, !tbaa !216
  %2058 = getelementptr inbounds %struct.bPoseChannel, ptr %2045, i64 0, i32 34, i64 1
  %2059 = load float, ptr %2058, align 4, !tbaa !216
  %2060 = fmul float %2059, 0x3F91DF46A0000000
  store float %2060, ptr %2058, align 4, !tbaa !216
  %2061 = getelementptr inbounds %struct.bPoseChannel, ptr %2045, i64 0, i32 34, i64 2
  %2062 = load float, ptr %2061, align 4, !tbaa !216
  %2063 = fmul float %2062, 0x3F91DF46A0000000
  store float %2063, ptr %2061, align 4, !tbaa !216
  %2064 = getelementptr inbounds %struct.bPoseChannel, ptr %2045, i64 0, i32 3
  %2065 = load ptr, ptr %2064, align 8, !tbaa !42
  %2066 = icmp eq ptr %2065, null
  br i1 %2066, label %2112, label %2067

2067:                                             ; preds = %2044, %2109
  %2068 = phi ptr [ %2110, %2109 ], [ %2065, %2044 ]
  %2069 = getelementptr inbounds %struct.bConstraint, ptr %2068, i64 0, i32 3
  %2070 = load i16, ptr %2069, align 8, !tbaa !468
  switch i16 %2070, label %2109 [
    i16 17, label %2071
    i16 3, label %2083
    i16 5, label %2089
  ]

2071:                                             ; preds = %2067
  %2072 = getelementptr inbounds %struct.bConstraint, ptr %2068, i64 0, i32 2
  %2073 = load ptr, ptr %2072, align 8, !tbaa !470
  %2074 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %2073, i64 0, i32 6
  %2075 = load float, ptr %2074, align 8, !tbaa !471
  %2076 = fmul float %2075, 0x3F91DF46A0000000
  store float %2076, ptr %2074, align 8, !tbaa !471
  %2077 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %2073, i64 0, i32 7
  %2078 = load float, ptr %2077, align 4, !tbaa !473
  %2079 = fmul float %2078, 0x3F91DF46A0000000
  store float %2079, ptr %2077, align 4, !tbaa !473
  %2080 = getelementptr inbounds %struct.bRigidBodyJointConstraint, ptr %2073, i64 0, i32 8
  %2081 = load float, ptr %2080, align 8, !tbaa !474
  %2082 = fmul float %2081, 0x3F91DF46A0000000
  store float %2082, ptr %2080, align 8, !tbaa !474
  br label %2109

2083:                                             ; preds = %2067
  %2084 = getelementptr inbounds %struct.bConstraint, ptr %2068, i64 0, i32 2
  %2085 = load ptr, ptr %2084, align 8, !tbaa !470
  %2086 = getelementptr inbounds %struct.bKinematicConstraint, ptr %2085, i64 0, i32 8
  %2087 = load float, ptr %2086, align 8, !tbaa !475
  %2088 = fmul float %2087, 0x3F91DF46A0000000
  store float %2088, ptr %2086, align 8, !tbaa !475
  br label %2109

2089:                                             ; preds = %2067
  %2090 = getelementptr inbounds %struct.bConstraint, ptr %2068, i64 0, i32 2
  %2091 = load ptr, ptr %2090, align 8, !tbaa !470
  %2092 = load float, ptr %2091, align 4, !tbaa !477
  %2093 = fmul float %2092, 0x3F91DF46A0000000
  store float %2093, ptr %2091, align 4, !tbaa !477
  %2094 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %2091, i64 0, i32 1
  %2095 = load float, ptr %2094, align 4, !tbaa !479
  %2096 = fmul float %2095, 0x3F91DF46A0000000
  store float %2096, ptr %2094, align 4, !tbaa !479
  %2097 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %2091, i64 0, i32 2
  %2098 = load float, ptr %2097, align 4, !tbaa !480
  %2099 = fmul float %2098, 0x3F91DF46A0000000
  store float %2099, ptr %2097, align 4, !tbaa !480
  %2100 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %2091, i64 0, i32 3
  %2101 = load float, ptr %2100, align 4, !tbaa !481
  %2102 = fmul float %2101, 0x3F91DF46A0000000
  store float %2102, ptr %2100, align 4, !tbaa !481
  %2103 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %2091, i64 0, i32 4
  %2104 = load float, ptr %2103, align 4, !tbaa !482
  %2105 = fmul float %2104, 0x3F91DF46A0000000
  store float %2105, ptr %2103, align 4, !tbaa !482
  %2106 = getelementptr inbounds %struct.bRotLimitConstraint, ptr %2091, i64 0, i32 5
  %2107 = load float, ptr %2106, align 4, !tbaa !483
  %2108 = fmul float %2107, 0x3F91DF46A0000000
  store float %2108, ptr %2106, align 4, !tbaa !483
  br label %2109

2109:                                             ; preds = %2089, %2083, %2071, %2067
  %2110 = load ptr, ptr %2068, align 8, !tbaa !42
  %2111 = icmp eq ptr %2110, null
  br i1 %2111, label %2112, label %2067, !llvm.loop !484

2112:                                             ; preds = %2109, %2044
  %2113 = load ptr, ptr %2045, align 8, !tbaa !42
  %2114 = icmp eq ptr %2113, null
  br i1 %2114, label %2115, label %2044, !llvm.loop !485

2115:                                             ; preds = %2112, %2041, %2037
  %2116 = load ptr, ptr %1988, align 8, !tbaa !42
  %2117 = icmp eq ptr %2116, null
  br i1 %2117, label %2118, label %1987, !llvm.loop !486

2118:                                             ; preds = %2115, %1983, %1979, %1977
  br i1 %1976, label %2125, label %2119

2119:                                             ; preds = %2118
  %2120 = icmp eq i16 %1975, 250
  br i1 %2120, label %2121, label %2182

2121:                                             ; preds = %2119
  %2122 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2123 = load i16, ptr %2122, align 2, !tbaa !194
  %2124 = icmp slt i16 %2123, 14
  br i1 %2124, label %2125, label %2182

2125:                                             ; preds = %2121, %2118
  %2126 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %2127 = load ptr, ptr %2126, align 8, !tbaa !42
  %2128 = icmp eq ptr %2127, null
  br i1 %2128, label %2182, label %2132

2129:                                             ; preds = %2137, %2132
  %2130 = load ptr, ptr %2133, align 8, !tbaa !42
  %2131 = icmp eq ptr %2130, null
  br i1 %2131, label %2182, label %2132, !llvm.loop !487

2132:                                             ; preds = %2125, %2129
  %2133 = phi ptr [ %2130, %2129 ], [ %2127, %2125 ]
  %2134 = getelementptr inbounds %struct.bScreen, ptr %2133, i64 0, i32 3
  %2135 = load ptr, ptr %2134, align 8, !tbaa !42
  %2136 = icmp eq ptr %2135, null
  br i1 %2136, label %2129, label %2140

2137:                                             ; preds = %2179, %2140
  %2138 = load ptr, ptr %2141, align 8, !tbaa !42
  %2139 = icmp eq ptr %2138, null
  br i1 %2139, label %2129, label %2140, !llvm.loop !488

2140:                                             ; preds = %2132, %2137
  %2141 = phi ptr [ %2138, %2137 ], [ %2135, %2132 ]
  %2142 = getelementptr inbounds %struct.ScrArea, ptr %2141, i64 0, i32 19
  %2143 = load ptr, ptr %2142, align 8, !tbaa !42
  %2144 = icmp eq ptr %2143, null
  br i1 %2144, label %2137, label %2145

2145:                                             ; preds = %2140
  %2146 = load ptr, ptr %2142, align 8, !tbaa !123
  %2147 = getelementptr inbounds %struct.ScrArea, ptr %2141, i64 0, i32 20
  %2148 = getelementptr inbounds %struct.ScrArea, ptr %2141, i64 0, i32 11
  br label %2149

2149:                                             ; preds = %2145, %2179
  %2150 = phi ptr [ %2143, %2145 ], [ %2180, %2179 ]
  %2151 = getelementptr inbounds %struct.SpaceLink, ptr %2150, i64 0, i32 3
  %2152 = load i32, ptr %2151, align 8, !tbaa !124
  %2153 = and i32 %2152, -2
  %2154 = icmp eq i32 %2153, 12
  br i1 %2154, label %2155, label %2179

2155:                                             ; preds = %2149
  %2156 = icmp eq ptr %2150, %2146
  %2157 = getelementptr inbounds %struct.SpaceLink, ptr %2150, i64 0, i32 2
  %2158 = select i1 %2156, ptr %2147, ptr %2157
  %2159 = load ptr, ptr %2158, align 8, !tbaa !42
  %2160 = icmp eq ptr %2159, null
  br i1 %2160, label %2179, label %2161

2161:                                             ; preds = %2155, %2176
  %2162 = phi ptr [ %2177, %2176 ], [ %2159, %2155 ]
  %2163 = getelementptr inbounds %struct.ARegion, ptr %2162, i64 0, i32 8
  %2164 = load i16, ptr %2163, align 2, !tbaa !114
  %2165 = icmp eq i16 %2164, 0
  br i1 %2165, label %2166, label %2176

2166:                                             ; preds = %2161
  %2167 = getelementptr inbounds %struct.ARegion, ptr %2162, i64 0, i32 2, i32 0, i32 3
  store float 0.000000e+00, ptr %2167, align 4, !tbaa !431
  %2168 = getelementptr inbounds %struct.ARegion, ptr %2162, i64 0, i32 2, i32 1, i32 3
  store float 0.000000e+00, ptr %2168, align 4, !tbaa !489
  %2169 = load i16, ptr %2148, align 4, !tbaa !490
  %2170 = sext i16 %2169 to i32
  %2171 = sub nsw i32 0, %2170
  %2172 = sitofp i32 %2171 to float
  %2173 = fdiv float %2172, 3.000000e+00
  %2174 = getelementptr inbounds %struct.ARegion, ptr %2162, i64 0, i32 2, i32 0, i32 2
  store float %2173, ptr %2174, align 8, !tbaa !429
  %2175 = getelementptr inbounds %struct.ARegion, ptr %2162, i64 0, i32 2, i32 1, i32 2
  store float %2173, ptr %2175, align 8, !tbaa !491
  br label %2176

2176:                                             ; preds = %2161, %2166
  %2177 = load ptr, ptr %2162, align 8, !tbaa !42
  %2178 = icmp eq ptr %2177, null
  br i1 %2178, label %2179, label %2161, !llvm.loop !492

2179:                                             ; preds = %2176, %2155, %2149
  %2180 = load ptr, ptr %2150, align 8, !tbaa !42
  %2181 = icmp eq ptr %2180, null
  br i1 %2181, label %2137, label %2149, !llvm.loop !493

2182:                                             ; preds = %2129, %2125, %2121, %2119
  br i1 %1976, label %2189, label %2183

2183:                                             ; preds = %2182
  %2184 = icmp eq i16 %1975, 250
  br i1 %2184, label %2185, label %2240

2185:                                             ; preds = %2183
  %2186 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2187 = load i16, ptr %2186, align 2, !tbaa !194
  %2188 = icmp slt i16 %2187, 15
  br i1 %2188, label %2189, label %2240

2189:                                             ; preds = %2185, %2182
  %2190 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %2191 = load ptr, ptr %2190, align 8, !tbaa !42
  %2192 = icmp eq ptr %2191, null
  br i1 %2192, label %2200, label %2193

2193:                                             ; preds = %2189, %2193
  %2194 = phi ptr [ %2198, %2193 ], [ %2191, %2189 ]
  %2195 = getelementptr inbounds %struct.Material, ptr %2194, i64 0, i32 16
  %2196 = load float, ptr %2195, align 4, !tbaa !494
  %2197 = fmul float %2196, 2.000000e+00
  store float %2197, ptr %2195, align 4, !tbaa !494
  %2198 = load ptr, ptr %2194, align 8, !tbaa !42
  %2199 = icmp eq ptr %2198, null
  br i1 %2199, label %2200, label %2193, !llvm.loop !495

2200:                                             ; preds = %2193, %2189
  %2201 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 25
  %2202 = load ptr, ptr %2201, align 8, !tbaa !42
  %2203 = icmp eq ptr %2202, null
  br i1 %2203, label %2240, label %2204

2204:                                             ; preds = %2200, %2226
  %2205 = phi ptr [ %2238, %2226 ], [ %2202, %2200 ]
  %2206 = getelementptr inbounds %struct.World, ptr %2205, i64 0, i32 48
  %2207 = load float, ptr %2206, align 8, !tbaa !496
  %2208 = getelementptr inbounds %struct.World, ptr %2205, i64 0, i32 59
  store float %2207, ptr %2208, align 4, !tbaa !497
  store float 1.000000e+00, ptr %2206, align 8, !tbaa !496
  %2209 = getelementptr inbounds %struct.World, ptr %2205, i64 0, i32 61
  %2210 = load i16, ptr %2209, align 4, !tbaa !498
  %2211 = icmp eq i16 %2210, 0
  br i1 %2211, label %2212, label %2213

2212:                                             ; preds = %2204
  store i16 1, ptr %2209, align 4, !tbaa !498
  br label %2217

2213:                                             ; preds = %2204
  %2214 = getelementptr inbounds %struct.World, ptr %2205, i64 0, i32 23
  %2215 = load i16, ptr %2214, align 2, !tbaa !499
  %2216 = or i16 %2215, 128
  store i16 %2216, ptr %2214, align 2, !tbaa !499
  br label %2217

2217:                                             ; preds = %2213, %2212
  %2218 = getelementptr inbounds %struct.World, ptr %2205, i64 0, i32 52
  %2219 = load i16, ptr %2218, align 4, !tbaa !500
  switch i16 %2219, label %2226 [
    i16 1, label %2220
    i16 2, label %2222
  ]

2220:                                             ; preds = %2217
  %2221 = fneg float %2207
  store float %2221, ptr %2208, align 4, !tbaa !497
  br label %2226

2222:                                             ; preds = %2217
  %2223 = getelementptr inbounds %struct.World, ptr %2205, i64 0, i32 23
  %2224 = load i16, ptr %2223, align 2, !tbaa !499
  %2225 = or i16 %2224, 64
  store i16 %2225, ptr %2223, align 2, !tbaa !499
  br label %2226

2226:                                             ; preds = %2217, %2222, %2220
  store i16 3, ptr %2218, align 4, !tbaa !500
  %2227 = getelementptr inbounds %struct.World, ptr %2205, i64 0, i32 12
  %2228 = load float, ptr %2227, align 4, !tbaa !216
  %2229 = fmul float %2228, 5.000000e-01
  store float %2229, ptr %2227, align 4, !tbaa !216
  %2230 = getelementptr inbounds %struct.World, ptr %2205, i64 0, i32 13
  %2231 = load float, ptr %2230, align 4, !tbaa !216
  %2232 = fmul float %2231, 5.000000e-01
  store float %2232, ptr %2230, align 4, !tbaa !216
  %2233 = getelementptr inbounds %struct.World, ptr %2205, i64 0, i32 14
  %2234 = load float, ptr %2233, align 4, !tbaa !216
  %2235 = fmul float %2234, 5.000000e-01
  store float %2235, ptr %2233, align 4, !tbaa !216
  %2236 = load float, ptr %2208, align 4, !tbaa !497
  %2237 = fmul float %2236, 5.000000e-01
  store float %2237, ptr %2208, align 4, !tbaa !497
  %2238 = load ptr, ptr %2205, align 8, !tbaa !42
  %2239 = icmp eq ptr %2238, null
  br i1 %2239, label %2240, label %2204, !llvm.loop !501

2240:                                             ; preds = %2226, %2200, %2185, %2183
  br i1 %1976, label %2247, label %2241

2241:                                             ; preds = %2240
  %2242 = icmp eq i16 %1975, 250
  br i1 %2242, label %2243, label %2389

2243:                                             ; preds = %2241
  %2244 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2245 = load i16, ptr %2244, align 2, !tbaa !194
  %2246 = icmp slt i16 %2245, 17
  br i1 %2246, label %2247, label %2389

2247:                                             ; preds = %2243, %2240
  %2248 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %2249 = load ptr, ptr %2248, align 8, !tbaa !42
  %2250 = icmp eq ptr %2249, null
  br i1 %2250, label %2254, label %2251

2251:                                             ; preds = %2247
  %2252 = getelementptr inbounds %struct.SeqIterator, ptr %6, i64 0, i32 4
  %2253 = getelementptr inbounds %struct.SeqIterator, ptr %6, i64 0, i32 3
  br label %2257

2254:                                             ; preds = %2292, %2247
  %2255 = load ptr, ptr %2248, align 8, !tbaa !42
  %2256 = icmp eq ptr %2255, null
  br i1 %2256, label %2309, label %2298

2257:                                             ; preds = %2251, %2292
  %2258 = phi ptr [ %2249, %2251 ], [ %2293, %2292 ]
  %2259 = getelementptr inbounds %struct.Scene, ptr %2258, i64 0, i32 22, i32 58
  %2260 = load float, ptr %2259, align 8, !tbaa !502
  %2261 = fcmp oeq float %2260, 0.000000e+00
  br i1 %2261, label %2262, label %2275

2262:                                             ; preds = %2257
  %2263 = getelementptr inbounds %struct.Scene, ptr %2258, i64 0, i32 22, i32 58, i32 2
  %2264 = load float, ptr %2263, align 8, !tbaa !503
  %2265 = fcmp oeq float %2264, 0.000000e+00
  br i1 %2265, label %2266, label %2275

2266:                                             ; preds = %2262
  %2267 = getelementptr inbounds %struct.Scene, ptr %2258, i64 0, i32 22, i32 58, i32 1
  %2268 = load float, ptr %2267, align 4, !tbaa !504
  %2269 = fcmp oeq float %2268, 0.000000e+00
  br i1 %2269, label %2270, label %2275

2270:                                             ; preds = %2266
  %2271 = getelementptr inbounds %struct.Scene, ptr %2258, i64 0, i32 22, i32 58, i32 3
  %2272 = load float, ptr %2271, align 4, !tbaa !505
  %2273 = fcmp oeq float %2272, 0.000000e+00
  br i1 %2273, label %2274, label %2275

2274:                                             ; preds = %2270
  store float 0.000000e+00, ptr %2259, align 8, !tbaa !502
  store float 0.000000e+00, ptr %2263, align 8, !tbaa !503
  store float 1.000000e+00, ptr %2267, align 4, !tbaa !504
  store float 1.000000e+00, ptr %2271, align 4, !tbaa !505
  br label %2275

2275:                                             ; preds = %2274, %2270, %2266, %2262, %2257
  %2276 = getelementptr inbounds %struct.Scene, ptr %2258, i64 0, i32 22, i32 4, i32 10
  %2277 = load i32, ptr %2276, align 8, !tbaa !506
  %2278 = and i32 %2277, 1
  %2279 = icmp eq i32 %2278, 0
  br i1 %2279, label %2280, label %2282

2280:                                             ; preds = %2275
  %2281 = getelementptr inbounds %struct.Scene, ptr %2258, i64 0, i32 22, i32 4, i32 2
  store i32 0, ptr %2281, align 8, !tbaa !507
  br label %2282

2282:                                             ; preds = %2280, %2275
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #9
  %2283 = getelementptr inbounds %struct.Scene, ptr %2258, i64 0, i32 19
  %2284 = load ptr, ptr %2283, align 8, !tbaa !77
  call void @BKE_sequence_iterator_begin(ptr noundef %2284, ptr noundef nonnull %6, i8 noundef zeroext 0) #9
  %2285 = load i32, ptr %2252, align 8, !tbaa !98
  %2286 = icmp eq i32 %2285, 0
  br i1 %2286, label %2292, label %2287

2287:                                             ; preds = %2282, %2287
  %2288 = load ptr, ptr %2253, align 8, !tbaa !100
  %2289 = getelementptr inbounds %struct.Sequence, ptr %2288, i64 0, i32 39
  store float 1.000000e+00, ptr %2289, align 8, !tbaa !508
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %6) #9
  %2290 = load i32, ptr %2252, align 8, !tbaa !98
  %2291 = icmp eq i32 %2290, 0
  br i1 %2291, label %2292, label %2287, !llvm.loop !509

2292:                                             ; preds = %2287, %2282
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #9
  %2293 = load ptr, ptr %2258, align 8, !tbaa !42
  %2294 = icmp eq ptr %2293, null
  br i1 %2294, label %2254, label %2257, !llvm.loop !510

2295:                                             ; preds = %2302
  %2296 = load ptr, ptr %2299, align 8, !tbaa !42
  %2297 = icmp eq ptr %2296, null
  br i1 %2297, label %2309, label %2298, !llvm.loop !511

2298:                                             ; preds = %2254, %2295
  %2299 = phi ptr [ %2296, %2295 ], [ %2255, %2254 ]
  %2300 = getelementptr inbounds %struct.Scene, ptr %2299, i64 0, i32 20
  %2301 = load ptr, ptr %2300, align 8, !tbaa !224
  br label %2302

2302:                                             ; preds = %2298, %2302
  %2303 = phi i64 [ 0, %2298 ], [ %2307, %2302 ]
  %2304 = getelementptr inbounds %struct.ToolSettings, ptr %2301, i64 0, i32 18, i32 4, i64 %2303, i32 5
  %2305 = load float, ptr %2304, align 4, !tbaa !512
  %2306 = fdiv float %2305, 1.000000e+02
  store float %2306, ptr %2304, align 4, !tbaa !512
  %2307 = add nuw nsw i64 %2303, 1
  %2308 = icmp eq i64 %2307, 6
  br i1 %2308, label %2295, label %2302, !llvm.loop !514

2309:                                             ; preds = %2295, %2254
  %2310 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %2311 = load ptr, ptr %2310, align 8, !tbaa !42
  %2312 = icmp eq ptr %2311, null
  br i1 %2312, label %2326, label %2313

2313:                                             ; preds = %2309, %2323
  %2314 = phi ptr [ %2324, %2323 ], [ %2311, %2309 ]
  %2315 = getelementptr inbounds %struct.Material, ptr %2314, i64 0, i32 51
  %2316 = load i32, ptr %2315, align 4, !tbaa !206
  %2317 = and i32 %2316, 1
  %2318 = icmp eq i32 %2317, 0
  br i1 %2318, label %2323, label %2319

2319:                                             ; preds = %2313
  %2320 = getelementptr inbounds %struct.Material, ptr %2314, i64 0, i32 50
  %2321 = load i16, ptr %2320, align 2, !tbaa !515
  %2322 = or i16 %2321, 4
  store i16 %2322, ptr %2320, align 2, !tbaa !515
  br label %2323

2323:                                             ; preds = %2313, %2319
  %2324 = load ptr, ptr %2314, align 8, !tbaa !42
  %2325 = icmp eq ptr %2324, null
  br i1 %2325, label %2326, label %2313, !llvm.loop !516

2326:                                             ; preds = %2323, %2309
  %2327 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %2328 = load ptr, ptr %2327, align 8, !tbaa !42
  %2329 = icmp eq ptr %2328, null
  br i1 %2329, label %2389, label %2333

2330:                                             ; preds = %2338, %2333
  %2331 = load ptr, ptr %2334, align 8, !tbaa !42
  %2332 = icmp eq ptr %2331, null
  br i1 %2332, label %2389, label %2333, !llvm.loop !517

2333:                                             ; preds = %2326, %2330
  %2334 = phi ptr [ %2331, %2330 ], [ %2328, %2326 ]
  %2335 = getelementptr inbounds %struct.bScreen, ptr %2334, i64 0, i32 3
  %2336 = load ptr, ptr %2335, align 8, !tbaa !42
  %2337 = icmp eq ptr %2336, null
  br i1 %2337, label %2330, label %2341

2338:                                             ; preds = %2386, %2341
  %2339 = load ptr, ptr %2342, align 8, !tbaa !42
  %2340 = icmp eq ptr %2339, null
  br i1 %2340, label %2330, label %2341, !llvm.loop !518

2341:                                             ; preds = %2333, %2338
  %2342 = phi ptr [ %2339, %2338 ], [ %2336, %2333 ]
  %2343 = getelementptr inbounds %struct.ScrArea, ptr %2342, i64 0, i32 19
  %2344 = load ptr, ptr %2343, align 8, !tbaa !42
  %2345 = icmp eq ptr %2344, null
  br i1 %2345, label %2338, label %2346

2346:                                             ; preds = %2341
  %2347 = getelementptr inbounds %struct.ScrArea, ptr %2342, i64 0, i32 20
  br label %2348

2348:                                             ; preds = %2346, %2386
  %2349 = phi ptr [ %2344, %2346 ], [ %2387, %2386 ]
  %2350 = getelementptr inbounds %struct.SpaceLink, ptr %2349, i64 0, i32 3
  %2351 = load i32, ptr %2350, align 8, !tbaa !124
  %2352 = icmp eq i32 %2351, 8
  br i1 %2352, label %2353, label %2386

2353:                                             ; preds = %2348
  %2354 = load ptr, ptr %2343, align 8, !tbaa !123
  %2355 = icmp eq ptr %2349, %2354
  %2356 = getelementptr inbounds %struct.SpaceLink, ptr %2349, i64 0, i32 2
  %2357 = select i1 %2355, ptr %2347, ptr %2356
  br label %2358

2358:                                             ; preds = %2362, %2353
  %2359 = phi ptr [ %2357, %2353 ], [ %2360, %2362 ]
  %2360 = load ptr, ptr %2359, align 8, !tbaa !42
  %2361 = icmp eq ptr %2360, null
  br i1 %2361, label %2386, label %2362

2362:                                             ; preds = %2358
  %2363 = getelementptr inbounds %struct.ARegion, ptr %2360, i64 0, i32 8
  %2364 = load i16, ptr %2363, align 2, !tbaa !114
  %2365 = icmp eq i16 %2364, 7
  br i1 %2365, label %2366, label %2358, !llvm.loop !519

2366:                                             ; preds = %2362
  %2367 = getelementptr inbounds %struct.ARegion, ptr %2360, i64 0, i32 8
  store i16 7, ptr %2367, align 2, !tbaa !114
  %2368 = getelementptr inbounds %struct.ARegion, ptr %2360, i64 0, i32 9
  store i16 1, ptr %2368, align 8, !tbaa !117
  %2369 = getelementptr inbounds %struct.ARegion, ptr %2360, i64 0, i32 10
  %2370 = load i16, ptr %2369, align 2, !tbaa !425
  %2371 = or i16 %2370, 1
  store i16 %2371, ptr %2369, align 2, !tbaa !425
  %2372 = getelementptr inbounds %struct.ARegion, ptr %2360, i64 0, i32 2
  %2373 = getelementptr inbounds %struct.ARegion, ptr %2360, i64 0, i32 2, i32 12
  store i16 6, ptr %2373, align 2, !tbaa !118
  %2374 = getelementptr inbounds %struct.ARegion, ptr %2360, i64 0, i32 2, i32 7
  store float 0x3EE4F8B580000000, ptr %2374, align 8, !tbaa !426
  %2375 = getelementptr inbounds %struct.ARegion, ptr %2360, i64 0, i32 2, i32 8
  store float 1.000000e+05, ptr %2375, align 4, !tbaa !427
  store float -9.600000e+02, ptr %2372, align 8, !tbaa !428
  %2376 = getelementptr inbounds %struct.ARegion, ptr %2360, i64 0, i32 2, i32 0, i32 2
  store float -5.400000e+02, ptr %2376, align 8, !tbaa !429
  %2377 = getelementptr inbounds %struct.ARegion, ptr %2360, i64 0, i32 2, i32 0, i32 1
  store float 9.600000e+02, ptr %2377, align 4, !tbaa !430
  %2378 = getelementptr inbounds %struct.ARegion, ptr %2360, i64 0, i32 2, i32 0, i32 3
  store float 5.400000e+02, ptr %2378, align 4, !tbaa !431
  %2379 = getelementptr inbounds %struct.ARegion, ptr %2360, i64 0, i32 2, i32 5
  store float 0.000000e+00, ptr %2379, align 8, !tbaa !216
  %2380 = getelementptr inbounds %struct.ARegion, ptr %2360, i64 0, i32 2, i32 5, i64 1
  store float 0.000000e+00, ptr %2380, align 4, !tbaa !216
  %2381 = getelementptr inbounds %struct.ARegion, ptr %2360, i64 0, i32 2, i32 6
  store float 1.200000e+04, ptr %2381, align 8, !tbaa !216
  %2382 = getelementptr inbounds %struct.ARegion, ptr %2360, i64 0, i32 2, i32 6, i64 1
  store float 1.200000e+04, ptr %2382, align 4, !tbaa !216
  %2383 = getelementptr inbounds %struct.ARegion, ptr %2360, i64 0, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2383, ptr noundef nonnull align 8 dereferenceable(16) %2372, i64 16, i1 false), !tbaa.struct !432
  %2384 = getelementptr inbounds %struct.ARegion, ptr %2360, i64 0, i32 2, i32 15
  store i16 0, ptr %2384, align 4, !tbaa !121
  %2385 = getelementptr inbounds %struct.ARegion, ptr %2360, i64 0, i32 2, i32 11
  store i16 0, ptr %2385, align 4, !tbaa !120
  br label %2386

2386:                                             ; preds = %2358, %2366, %2348
  %2387 = load ptr, ptr %2349, align 8, !tbaa !42
  %2388 = icmp eq ptr %2387, null
  br i1 %2388, label %2338, label %2348, !llvm.loop !520

2389:                                             ; preds = %2330, %2326, %2243, %2241
  %2390 = load i16, ptr %12, align 8, !tbaa !34
  %2391 = icmp slt i16 %2390, 252
  br i1 %2391, label %2392, label %2425

2392:                                             ; preds = %2389
  %2393 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %2394 = load ptr, ptr %2393, align 8, !tbaa !42
  %2395 = icmp eq ptr %2394, null
  br i1 %2395, label %2424, label %2399

2396:                                             ; preds = %2404, %2399
  %2397 = load ptr, ptr %2400, align 8, !tbaa !42
  %2398 = icmp eq ptr %2397, null
  br i1 %2398, label %2424, label %2399, !llvm.loop !521

2399:                                             ; preds = %2392, %2396
  %2400 = phi ptr [ %2397, %2396 ], [ %2394, %2392 ]
  %2401 = getelementptr inbounds %struct.bScreen, ptr %2400, i64 0, i32 3
  %2402 = load ptr, ptr %2401, align 8, !tbaa !42
  %2403 = icmp eq ptr %2402, null
  br i1 %2403, label %2396, label %2407

2404:                                             ; preds = %2421, %2407
  %2405 = load ptr, ptr %2408, align 8, !tbaa !42
  %2406 = icmp eq ptr %2405, null
  br i1 %2406, label %2396, label %2407, !llvm.loop !522

2407:                                             ; preds = %2399, %2404
  %2408 = phi ptr [ %2405, %2404 ], [ %2402, %2399 ]
  %2409 = getelementptr inbounds %struct.ScrArea, ptr %2408, i64 0, i32 19
  %2410 = load ptr, ptr %2409, align 8, !tbaa !42
  %2411 = icmp eq ptr %2410, null
  br i1 %2411, label %2404, label %2412

2412:                                             ; preds = %2407, %2421
  %2413 = phi ptr [ %2422, %2421 ], [ %2410, %2407 ]
  %2414 = getelementptr inbounds %struct.SpaceLink, ptr %2413, i64 0, i32 3
  %2415 = load i32, ptr %2414, align 8, !tbaa !124
  %2416 = icmp eq i32 %2415, 1
  br i1 %2416, label %2417, label %2421

2417:                                             ; preds = %2412
  %2418 = getelementptr inbounds %struct.View3D, ptr %2413, i64 0, i32 29
  %2419 = load i16, ptr %2418, align 2, !tbaa !523
  %2420 = and i16 %2419, -5
  store i16 %2420, ptr %2418, align 2, !tbaa !523
  br label %2421

2421:                                             ; preds = %2412, %2417
  %2422 = load ptr, ptr %2413, align 8, !tbaa !42
  %2423 = icmp eq ptr %2422, null
  br i1 %2423, label %2404, label %2412, !llvm.loop !524

2424:                                             ; preds = %2396, %2392
  br i1 %2391, label %2431, label %2425

2425:                                             ; preds = %2389, %2424
  %2426 = icmp eq i16 %2390, 252
  br i1 %2426, label %2427, label %2539

2427:                                             ; preds = %2425
  %2428 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2429 = load i16, ptr %2428, align 2, !tbaa !194
  %2430 = icmp slt i16 %2429, 1
  br i1 %2430, label %2431, label %2539

2431:                                             ; preds = %2427, %2424
  %2432 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 36
  %2433 = load ptr, ptr %2432, align 8, !tbaa !42
  %2434 = icmp eq ptr %2433, null
  br i1 %2434, label %2445, label %2435

2435:                                             ; preds = %2431, %2442
  %2436 = phi ptr [ %2443, %2442 ], [ %2433, %2431 ]
  %2437 = getelementptr inbounds %struct.Brush, ptr %2436, i64 0, i32 2
  %2438 = load ptr, ptr %2437, align 8, !tbaa !525
  %2439 = icmp eq ptr %2438, null
  br i1 %2439, label %2442, label %2440

2440:                                             ; preds = %2435
  %2441 = getelementptr inbounds %struct.CurveMapping, ptr %2438, i64 0, i32 2
  store i32 2, ptr %2441, align 8, !tbaa !528
  br label %2442

2442:                                             ; preds = %2435, %2440
  %2443 = load ptr, ptr %2436, align 8, !tbaa !42
  %2444 = icmp eq ptr %2443, null
  br i1 %2444, label %2445, label %2435, !llvm.loop !530

2445:                                             ; preds = %2442, %2431
  %2446 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %2447 = load ptr, ptr %2446, align 8, !tbaa !42
  %2448 = icmp eq ptr %2447, null
  br i1 %2448, label %2471, label %2452

2449:                                             ; preds = %2468, %2452
  %2450 = load ptr, ptr %2453, align 8, !tbaa !42
  %2451 = icmp eq ptr %2450, null
  br i1 %2451, label %2471, label %2452, !llvm.loop !531

2452:                                             ; preds = %2445, %2449
  %2453 = phi ptr [ %2450, %2449 ], [ %2447, %2445 ]
  %2454 = getelementptr inbounds %struct.Object, ptr %2453, i64 0, i32 26
  %2455 = load ptr, ptr %2454, align 8, !tbaa !42
  %2456 = icmp eq ptr %2455, null
  br i1 %2456, label %2449, label %2457

2457:                                             ; preds = %2452, %2468
  %2458 = phi ptr [ %2469, %2468 ], [ %2455, %2452 ]
  %2459 = getelementptr inbounds %struct.ModifierData, ptr %2458, i64 0, i32 2
  %2460 = load i32, ptr %2459, align 8, !tbaa !413
  %2461 = icmp eq i32 %2460, 26
  br i1 %2461, label %2462, label %2468

2462:                                             ; preds = %2457
  %2463 = getelementptr inbounds %struct.FluidsimModifierData, ptr %2458, i64 0, i32 1
  %2464 = load ptr, ptr %2463, align 8, !tbaa !288
  %2465 = getelementptr inbounds %struct.FluidsimSettings, ptr %2464, i64 0, i32 39
  %2466 = load i32, ptr %2465, align 8, !tbaa !532
  %2467 = or i32 %2466, 6
  store i32 %2467, ptr %2465, align 8, !tbaa !532
  br label %2468

2468:                                             ; preds = %2457, %2462
  %2469 = load ptr, ptr %2458, align 8, !tbaa !42
  %2470 = icmp eq ptr %2469, null
  br i1 %2470, label %2449, label %2457, !llvm.loop !533

2471:                                             ; preds = %2449, %2445
  %2472 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %2473 = load ptr, ptr %2472, align 8, !tbaa !42
  %2474 = icmp eq ptr %2473, null
  br i1 %2474, label %2507, label %2475

2475:                                             ; preds = %2471, %2504
  %2476 = phi ptr [ %2505, %2504 ], [ %2473, %2471 ]
  %2477 = getelementptr inbounds %struct.Scene, ptr %2476, i64 0, i32 18
  %2478 = load ptr, ptr %2477, align 8, !tbaa !160
  %2479 = icmp eq ptr %2478, null
  br i1 %2479, label %2504, label %2480

2480:                                             ; preds = %2475
  %2481 = getelementptr inbounds %struct.bNodeTree, ptr %2478, i64 0, i32 7
  %2482 = load ptr, ptr %2481, align 8, !tbaa !42
  %2483 = icmp eq ptr %2482, null
  br i1 %2483, label %2504, label %2484

2484:                                             ; preds = %2480, %2501
  %2485 = phi ptr [ %2502, %2501 ], [ %2482, %2480 ]
  %2486 = getelementptr inbounds %struct.bNode, ptr %2485, i64 0, i32 8
  %2487 = load i16, ptr %2486, align 4, !tbaa !174
  %2488 = icmp eq i16 %2487, 260
  br i1 %2488, label %2489, label %2501

2489:                                             ; preds = %2484
  %2490 = getelementptr inbounds %struct.bNode, ptr %2485, i64 0, i32 21
  %2491 = load ptr, ptr %2490, align 8, !tbaa !534
  %2492 = getelementptr inbounds %struct.NodeColorBalance, ptr %2491, i64 0, i32 3
  %2493 = load float, ptr %2492, align 4, !tbaa !216
  %2494 = fadd float %2493, 1.000000e+00
  store float %2494, ptr %2492, align 4, !tbaa !216
  %2495 = getelementptr inbounds %struct.NodeColorBalance, ptr %2491, i64 0, i32 3, i64 1
  %2496 = load float, ptr %2495, align 4, !tbaa !216
  %2497 = fadd float %2496, 1.000000e+00
  store float %2497, ptr %2495, align 4, !tbaa !216
  %2498 = getelementptr inbounds %struct.NodeColorBalance, ptr %2491, i64 0, i32 3, i64 2
  %2499 = load float, ptr %2498, align 4, !tbaa !216
  %2500 = fadd float %2499, 1.000000e+00
  store float %2500, ptr %2498, align 4, !tbaa !216
  br label %2501

2501:                                             ; preds = %2489, %2484
  %2502 = load ptr, ptr %2485, align 8, !tbaa !42
  %2503 = icmp eq ptr %2502, null
  br i1 %2503, label %2504, label %2484, !llvm.loop !535

2504:                                             ; preds = %2501, %2480, %2475
  %2505 = load ptr, ptr %2476, align 8, !tbaa !42
  %2506 = icmp eq ptr %2505, null
  br i1 %2506, label %2507, label %2475, !llvm.loop !536

2507:                                             ; preds = %2504, %2471
  %2508 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 35
  %2509 = load ptr, ptr %2508, align 8, !tbaa !42
  %2510 = icmp eq ptr %2509, null
  br i1 %2510, label %2539, label %2514

2511:                                             ; preds = %2536, %2514
  %2512 = load ptr, ptr %2515, align 8, !tbaa !42
  %2513 = icmp eq ptr %2512, null
  br i1 %2513, label %2539, label %2514, !llvm.loop !537

2514:                                             ; preds = %2507, %2511
  %2515 = phi ptr [ %2512, %2511 ], [ %2509, %2507 ]
  %2516 = getelementptr inbounds %struct.bNodeTree, ptr %2515, i64 0, i32 7
  %2517 = load ptr, ptr %2516, align 8, !tbaa !42
  %2518 = icmp eq ptr %2517, null
  br i1 %2518, label %2511, label %2519

2519:                                             ; preds = %2514, %2536
  %2520 = phi ptr [ %2537, %2536 ], [ %2517, %2514 ]
  %2521 = getelementptr inbounds %struct.bNode, ptr %2520, i64 0, i32 8
  %2522 = load i16, ptr %2521, align 4, !tbaa !174
  %2523 = icmp eq i16 %2522, 260
  br i1 %2523, label %2524, label %2536

2524:                                             ; preds = %2519
  %2525 = getelementptr inbounds %struct.bNode, ptr %2520, i64 0, i32 21
  %2526 = load ptr, ptr %2525, align 8, !tbaa !534
  %2527 = getelementptr inbounds %struct.NodeColorBalance, ptr %2526, i64 0, i32 3
  %2528 = load float, ptr %2527, align 4, !tbaa !216
  %2529 = fadd float %2528, 1.000000e+00
  store float %2529, ptr %2527, align 4, !tbaa !216
  %2530 = getelementptr inbounds %struct.NodeColorBalance, ptr %2526, i64 0, i32 3, i64 1
  %2531 = load float, ptr %2530, align 4, !tbaa !216
  %2532 = fadd float %2531, 1.000000e+00
  store float %2532, ptr %2530, align 4, !tbaa !216
  %2533 = getelementptr inbounds %struct.NodeColorBalance, ptr %2526, i64 0, i32 3, i64 2
  %2534 = load float, ptr %2533, align 4, !tbaa !216
  %2535 = fadd float %2534, 1.000000e+00
  store float %2535, ptr %2533, align 4, !tbaa !216
  br label %2536

2536:                                             ; preds = %2524, %2519
  %2537 = load ptr, ptr %2520, align 8, !tbaa !42
  %2538 = icmp eq ptr %2537, null
  br i1 %2538, label %2511, label %2519, !llvm.loop !538

2539:                                             ; preds = %2511, %2507, %2427, %2425
  br i1 %2391, label %2546, label %2540

2540:                                             ; preds = %2539
  %2541 = icmp eq i16 %2390, 252
  br i1 %2541, label %2542, label %2554

2542:                                             ; preds = %2540
  %2543 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2544 = load i16, ptr %2543, align 2, !tbaa !194
  %2545 = icmp slt i16 %2544, 2
  br i1 %2545, label %2546, label %2554

2546:                                             ; preds = %2542, %2539
  %2547 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %2548 = load ptr, ptr %2547, align 8, !tbaa !42
  %2549 = icmp eq ptr %2548, null
  br i1 %2549, label %2554, label %2550

2550:                                             ; preds = %2546, %2550
  %2551 = phi ptr [ %2552, %2550 ], [ %2548, %2546 ]
  call void @blo_do_version_old_trackto_to_constraints(ptr noundef nonnull %2551) #9
  %2552 = load ptr, ptr %2551, align 8, !tbaa !42
  %2553 = icmp eq ptr %2552, null
  br i1 %2553, label %2554, label %2550, !llvm.loop !539

2554:                                             ; preds = %2550, %2546, %2542, %2540
  %2555 = load i16, ptr %12, align 8, !tbaa !34
  %2556 = icmp slt i16 %2555, 252
  br i1 %2556, label %2563, label %2557

2557:                                             ; preds = %2554
  %2558 = icmp eq i16 %2555, 252
  br i1 %2558, label %2559, label %2593

2559:                                             ; preds = %2557
  %2560 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2561 = load i16, ptr %2560, align 2, !tbaa !194
  %2562 = icmp slt i16 %2561, 5
  br i1 %2562, label %2563, label %2593

2563:                                             ; preds = %2559, %2554
  %2564 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %2565 = load ptr, ptr %2564, align 8, !tbaa !42
  %2566 = icmp eq ptr %2565, null
  br i1 %2566, label %2593, label %2570

2567:                                             ; preds = %2575, %2570
  %2568 = load ptr, ptr %2571, align 8, !tbaa !42
  %2569 = icmp eq ptr %2568, null
  br i1 %2569, label %2593, label %2570, !llvm.loop !540

2570:                                             ; preds = %2563, %2567
  %2571 = phi ptr [ %2568, %2567 ], [ %2565, %2563 ]
  %2572 = getelementptr inbounds %struct.bScreen, ptr %2571, i64 0, i32 3
  %2573 = load ptr, ptr %2572, align 8, !tbaa !42
  %2574 = icmp eq ptr %2573, null
  br i1 %2574, label %2567, label %2578

2575:                                             ; preds = %2590, %2578
  %2576 = load ptr, ptr %2579, align 8, !tbaa !42
  %2577 = icmp eq ptr %2576, null
  br i1 %2577, label %2567, label %2578, !llvm.loop !541

2578:                                             ; preds = %2570, %2575
  %2579 = phi ptr [ %2576, %2575 ], [ %2573, %2570 ]
  %2580 = getelementptr inbounds %struct.ScrArea, ptr %2579, i64 0, i32 19
  %2581 = load ptr, ptr %2580, align 8, !tbaa !42
  %2582 = icmp eq ptr %2581, null
  br i1 %2582, label %2575, label %2583

2583:                                             ; preds = %2578, %2590
  %2584 = phi ptr [ %2591, %2590 ], [ %2581, %2578 ]
  %2585 = getelementptr inbounds %struct.SpaceLink, ptr %2584, i64 0, i32 3
  %2586 = load i32, ptr %2585, align 8, !tbaa !124
  %2587 = icmp eq i32 %2586, 6
  br i1 %2587, label %2588, label %2590

2588:                                             ; preds = %2583
  %2589 = getelementptr inbounds %struct.SpaceImage, ptr %2584, i64 0, i32 8
  call void @scopes_new(ptr noundef nonnull %2589) #9
  br label %2590

2590:                                             ; preds = %2583, %2588
  %2591 = load ptr, ptr %2584, align 8, !tbaa !42
  %2592 = icmp eq ptr %2591, null
  br i1 %2592, label %2575, label %2583, !llvm.loop !542

2593:                                             ; preds = %2567, %2563, %2559, %2557
  %2594 = load i16, ptr %12, align 8, !tbaa !34
  %2595 = icmp slt i16 %2594, 253
  br i1 %2595, label %2596, label %2916

2596:                                             ; preds = %2593
  %2597 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %2598 = load ptr, ptr %2597, align 8, !tbaa !42
  %2599 = icmp eq ptr %2598, null
  br i1 %2599, label %2664, label %2603

2600:                                             ; preds = %2608, %2603
  %2601 = load ptr, ptr %2604, align 8, !tbaa !42
  %2602 = icmp eq ptr %2601, null
  br i1 %2602, label %2664, label %2603, !llvm.loop !543

2603:                                             ; preds = %2596, %2600
  %2604 = phi ptr [ %2601, %2600 ], [ %2598, %2596 ]
  %2605 = getelementptr inbounds %struct.bScreen, ptr %2604, i64 0, i32 3
  %2606 = load ptr, ptr %2605, align 8, !tbaa !42
  %2607 = icmp eq ptr %2606, null
  br i1 %2607, label %2600, label %2611

2608:                                             ; preds = %2661, %2611
  %2609 = load ptr, ptr %2612, align 8, !tbaa !42
  %2610 = icmp eq ptr %2609, null
  br i1 %2610, label %2600, label %2611, !llvm.loop !544

2611:                                             ; preds = %2603, %2608
  %2612 = phi ptr [ %2609, %2608 ], [ %2606, %2603 ]
  %2613 = getelementptr inbounds %struct.ScrArea, ptr %2612, i64 0, i32 19
  %2614 = load ptr, ptr %2613, align 8, !tbaa !42
  %2615 = icmp eq ptr %2614, null
  br i1 %2615, label %2608, label %2616

2616:                                             ; preds = %2611
  %2617 = getelementptr inbounds %struct.ScrArea, ptr %2612, i64 0, i32 20
  br label %2618

2618:                                             ; preds = %2616, %2661
  %2619 = phi ptr [ %2614, %2616 ], [ %2662, %2661 ]
  %2620 = getelementptr inbounds %struct.SpaceLink, ptr %2619, i64 0, i32 3
  %2621 = load i32, ptr %2620, align 8, !tbaa !124
  switch i32 %2621, label %2661 [
    i32 16, label %2622
    i32 15, label %2657
  ]

2622:                                             ; preds = %2618
  %2623 = load ptr, ptr %2613, align 8, !tbaa !123
  %2624 = icmp eq ptr %2619, %2623
  %2625 = getelementptr inbounds %struct.SpaceLink, ptr %2619, i64 0, i32 2
  %2626 = select i1 %2624, ptr %2617, ptr %2625
  %2627 = getelementptr inbounds %struct.SpaceNode, ptr %2619, i64 0, i32 6, i32 7
  %2628 = load float, ptr %2627, align 8, !tbaa !545
  %2629 = fcmp ogt float %2628, 0x3FB70A3D80000000
  br i1 %2629, label %2630, label %2631

2630:                                             ; preds = %2622
  store float 0x3FB70A3D80000000, ptr %2627, align 8, !tbaa !545
  br label %2631

2631:                                             ; preds = %2630, %2622
  %2632 = getelementptr inbounds %struct.SpaceNode, ptr %2619, i64 0, i32 6, i32 8
  %2633 = load float, ptr %2632, align 4, !tbaa !546
  %2634 = fcmp olt float %2633, 0x40027AE140000000
  br i1 %2634, label %2635, label %2636

2635:                                             ; preds = %2631
  store float 0x40027AE140000000, ptr %2632, align 4, !tbaa !546
  br label %2636

2636:                                             ; preds = %2635, %2631
  %2637 = load ptr, ptr %2626, align 8, !tbaa !42
  %2638 = icmp eq ptr %2637, null
  br i1 %2638, label %2661, label %2639

2639:                                             ; preds = %2636, %2654
  %2640 = phi ptr [ %2655, %2654 ], [ %2637, %2636 ]
  %2641 = getelementptr inbounds %struct.ARegion, ptr %2640, i64 0, i32 8
  %2642 = load i16, ptr %2641, align 2, !tbaa !114
  %2643 = icmp eq i16 %2642, 0
  br i1 %2643, label %2644, label %2654

2644:                                             ; preds = %2639
  %2645 = getelementptr inbounds %struct.ARegion, ptr %2640, i64 0, i32 2, i32 7
  %2646 = load float, ptr %2645, align 8, !tbaa !426
  %2647 = fcmp ogt float %2646, 0x3FB70A3D80000000
  br i1 %2647, label %2648, label %2649

2648:                                             ; preds = %2644
  store float 0x3FB70A3D80000000, ptr %2645, align 8, !tbaa !426
  br label %2649

2649:                                             ; preds = %2648, %2644
  %2650 = getelementptr inbounds %struct.ARegion, ptr %2640, i64 0, i32 2, i32 8
  %2651 = load float, ptr %2650, align 4, !tbaa !427
  %2652 = fcmp olt float %2651, 0x40027AE140000000
  br i1 %2652, label %2653, label %2654

2653:                                             ; preds = %2649
  store float 0x40027AE140000000, ptr %2650, align 4, !tbaa !427
  br label %2654

2654:                                             ; preds = %2639, %2653, %2649
  %2655 = load ptr, ptr %2640, align 8, !tbaa !42
  %2656 = icmp eq ptr %2655, null
  br i1 %2656, label %2661, label %2639, !llvm.loop !547

2657:                                             ; preds = %2618
  %2658 = getelementptr inbounds %struct.SpaceTime, ptr %2619, i64 0, i32 7
  %2659 = load i32, ptr %2658, align 8, !tbaa !548
  %2660 = or i32 %2659, 63
  store i32 %2660, ptr %2658, align 8, !tbaa !548
  br label %2661

2661:                                             ; preds = %2654, %2636, %2618, %2657
  %2662 = load ptr, ptr %2619, align 8, !tbaa !42
  %2663 = icmp eq ptr %2662, null
  br i1 %2663, label %2608, label %2618, !llvm.loop !550

2664:                                             ; preds = %2600, %2596
  %2665 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %2666 = load ptr, ptr %2665, align 8, !tbaa !42
  %2667 = icmp eq ptr %2666, null
  br i1 %2667, label %2671, label %2674

2668:                                             ; preds = %2690, %2674
  %2669 = load ptr, ptr %2675, align 8, !tbaa !42
  %2670 = icmp eq ptr %2669, null
  br i1 %2670, label %2671, label %2674, !llvm.loop !551

2671:                                             ; preds = %2668, %2664
  %2672 = load ptr, ptr %2665, align 8, !tbaa !42
  %2673 = icmp eq ptr %2672, null
  br i1 %2673, label %2745, label %2693

2674:                                             ; preds = %2664, %2668
  %2675 = phi ptr [ %2669, %2668 ], [ %2666, %2664 ]
  %2676 = getelementptr inbounds %struct.Object, ptr %2675, i64 0, i32 26
  %2677 = load ptr, ptr %2676, align 8, !tbaa !42
  %2678 = icmp eq ptr %2677, null
  br i1 %2678, label %2668, label %2679

2679:                                             ; preds = %2674, %2690
  %2680 = phi ptr [ %2691, %2690 ], [ %2677, %2674 ]
  %2681 = getelementptr inbounds %struct.ModifierData, ptr %2680, i64 0, i32 2
  %2682 = load i32, ptr %2681, align 8, !tbaa !413
  %2683 = icmp eq i32 %2682, 18
  br i1 %2683, label %2684, label %2690

2684:                                             ; preds = %2679
  %2685 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %2680, i64 0, i32 20
  %2686 = load ptr, ptr %2685, align 8, !tbaa !552
  %2687 = icmp eq ptr %2686, null
  br i1 %2687, label %2690, label %2688

2688:                                             ; preds = %2684
  %2689 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %2680, i64 0, i32 8
  store ptr %2686, ptr %2689, align 8, !tbaa !554
  store ptr null, ptr %2685, align 8, !tbaa !552
  call void @modifier_mdef_compact_influences(ptr noundef nonnull %2680) #9
  br label %2690

2690:                                             ; preds = %2688, %2684, %2679
  %2691 = load ptr, ptr %2680, align 8, !tbaa !42
  %2692 = icmp eq ptr %2691, null
  br i1 %2692, label %2668, label %2679, !llvm.loop !555

2693:                                             ; preds = %2671, %2742
  %2694 = phi ptr [ %2743, %2742 ], [ %2672, %2671 ]
  %2695 = getelementptr inbounds %struct.Object, ptr %2694, i64 0, i32 9
  %2696 = load ptr, ptr %2695, align 8, !tbaa !556
  %2697 = icmp eq ptr %2696, null
  br i1 %2697, label %2742, label %2698

2698:                                             ; preds = %2693
  %2699 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2696) #9
  %2700 = icmp eq ptr %2699, null
  br i1 %2700, label %2742, label %2701

2701:                                             ; preds = %2698
  %2702 = getelementptr inbounds %struct.Object, ptr %2699, i64 0, i32 3
  %2703 = load i16, ptr %2702, align 8, !tbaa !164
  switch i16 %2703, label %2742 [
    i16 25, label %2704
    i16 22, label %2720
    i16 2, label %2731
  ]

2704:                                             ; preds = %2701
  %2705 = getelementptr inbounds %struct.Object, ptr %2694, i64 0, i32 4
  %2706 = load i16, ptr %2705, align 2, !tbaa !557
  %2707 = icmp eq i16 %2706, 4
  br i1 %2707, label %2708, label %2719

2708:                                             ; preds = %2704
  %2709 = getelementptr inbounds %struct.Object, ptr %2699, i64 0, i32 19
  %2710 = load ptr, ptr %2709, align 8, !tbaa !168
  %2711 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %1, ptr noundef %2710) #9
  %2712 = call ptr @modifier_new(i32 noundef 8) #9
  %2713 = load ptr, ptr %2695, align 8, !tbaa !556
  %2714 = getelementptr inbounds %struct.ArmatureModifierData, ptr %2712, i64 0, i32 4
  store ptr %2713, ptr %2714, align 8, !tbaa !558
  %2715 = getelementptr inbounds %struct.Object, ptr %2694, i64 0, i32 26
  call void @BLI_addtail(ptr noundef nonnull %2715, ptr noundef %2712) #9
  %2716 = getelementptr inbounds %struct.bArmature, ptr %2711, i64 0, i32 12
  %2717 = load i16, ptr %2716, align 8, !tbaa !560
  %2718 = getelementptr inbounds %struct.ArmatureModifierData, ptr %2712, i64 0, i32 1
  store i16 %2717, ptr %2718, align 8, !tbaa !561
  br label %2740

2719:                                             ; preds = %2704
  switch i16 %2703, label %2742 [
    i16 22, label %2720
    i16 2, label %2731
  ]

2720:                                             ; preds = %2701, %2719
  %2721 = getelementptr inbounds %struct.Object, ptr %2694, i64 0, i32 4
  %2722 = load i16, ptr %2721, align 2, !tbaa !557
  %2723 = icmp eq i16 %2722, 4
  br i1 %2723, label %2724, label %2729

2724:                                             ; preds = %2720
  %2725 = call ptr @modifier_new(i32 noundef 2) #9
  %2726 = load ptr, ptr %2695, align 8, !tbaa !556
  %2727 = getelementptr inbounds %struct.LatticeModifierData, ptr %2725, i64 0, i32 1
  store ptr %2726, ptr %2727, align 8, !tbaa !562
  %2728 = getelementptr inbounds %struct.Object, ptr %2694, i64 0, i32 26
  call void @BLI_addtail(ptr noundef nonnull %2728, ptr noundef %2725) #9
  br label %2740

2729:                                             ; preds = %2720
  %2730 = icmp eq i16 %2703, 2
  br i1 %2730, label %2731, label %2742

2731:                                             ; preds = %2701, %2719, %2729
  %2732 = getelementptr inbounds %struct.Object, ptr %2694, i64 0, i32 4
  %2733 = load i16, ptr %2732, align 2, !tbaa !557
  %2734 = icmp eq i16 %2733, 1
  br i1 %2734, label %2735, label %2742

2735:                                             ; preds = %2731
  %2736 = call ptr @modifier_new(i32 noundef 3) #9
  %2737 = load ptr, ptr %2695, align 8, !tbaa !556
  %2738 = getelementptr inbounds %struct.CurveModifierData, ptr %2736, i64 0, i32 1
  store ptr %2737, ptr %2738, align 8, !tbaa !564
  %2739 = getelementptr inbounds %struct.Object, ptr %2694, i64 0, i32 26
  call void @BLI_addtail(ptr noundef nonnull %2739, ptr noundef %2736) #9
  br label %2740

2740:                                             ; preds = %2708, %2735, %2724
  %2741 = phi ptr [ %2721, %2724 ], [ %2732, %2735 ], [ %2705, %2708 ]
  store i16 0, ptr %2741, align 2, !tbaa !557
  br label %2742

2742:                                             ; preds = %2740, %2701, %2719, %2698, %2731, %2729, %2693
  %2743 = load ptr, ptr %2694, align 8, !tbaa !42
  %2744 = icmp eq ptr %2743, null
  br i1 %2744, label %2745, label %2693, !llvm.loop !566

2745:                                             ; preds = %2742, %2671
  %2746 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %2747 = load ptr, ptr %2746, align 8, !tbaa !42
  %2748 = icmp eq ptr %2747, null
  br i1 %2748, label %2766, label %2749

2749:                                             ; preds = %2745, %2763
  %2750 = phi ptr [ %2764, %2763 ], [ %2747, %2745 ]
  %2751 = getelementptr inbounds %struct.Scene, ptr %2750, i64 0, i32 12
  %2752 = load i32, ptr %2751, align 8, !tbaa !567
  br label %2756

2753:                                             ; preds = %2756
  %2754 = add nuw nsw i32 %2757, 1
  %2755 = icmp eq i32 %2754, 20
  br i1 %2755, label %2763, label %2756, !llvm.loop !568

2756:                                             ; preds = %2749, %2753
  %2757 = phi i32 [ 0, %2749 ], [ %2754, %2753 ]
  %2758 = shl nuw nsw i32 1, %2757
  %2759 = and i32 %2752, %2758
  %2760 = icmp eq i32 %2759, 0
  br i1 %2760, label %2753, label %2761

2761:                                             ; preds = %2756
  %2762 = getelementptr inbounds %struct.Scene, ptr %2750, i64 0, i32 13
  store i32 %2758, ptr %2762, align 4, !tbaa !569
  br label %2763

2763:                                             ; preds = %2753, %2761
  %2764 = load ptr, ptr %2750, align 8, !tbaa !42
  %2765 = icmp eq ptr %2764, null
  br i1 %2765, label %2766, label %2749, !llvm.loop !570

2766:                                             ; preds = %2763, %2745
  %2767 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %2768 = load ptr, ptr %2767, align 8, !tbaa !42
  %2769 = icmp eq ptr %2768, null
  br i1 %2769, label %2779, label %2770

2770:                                             ; preds = %2766, %2776
  %2771 = phi ptr [ %2777, %2776 ], [ %2768, %2766 ]
  %2772 = getelementptr inbounds %struct.Tex, ptr %2771, i64 0, i32 6
  %2773 = load float, ptr %2772, align 8, !tbaa !571
  %2774 = fcmp oeq float %2773, 0.000000e+00
  br i1 %2774, label %2775, label %2776

2775:                                             ; preds = %2770
  store float 1.000000e+00, ptr %2772, align 8, !tbaa !571
  br label %2776

2776:                                             ; preds = %2770, %2775
  %2777 = load ptr, ptr %2771, align 8, !tbaa !42
  %2778 = icmp eq ptr %2777, null
  br i1 %2778, label %2779, label %2770, !llvm.loop !572

2779:                                             ; preds = %2776, %2766
  %2780 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 15
  %2781 = load ptr, ptr %2780, align 8, !tbaa !42
  %2782 = icmp eq ptr %2781, null
  br i1 %2782, label %2783, label %2789

2783:                                             ; preds = %2789, %2779
  %2784 = load ptr, ptr %2746, align 8, !tbaa !42
  %2785 = icmp eq ptr %2784, null
  br i1 %2785, label %2812, label %2786

2786:                                             ; preds = %2783
  %2787 = getelementptr inbounds %struct.SeqIterator, ptr %7, i64 0, i32 4
  %2788 = getelementptr inbounds %struct.SeqIterator, ptr %7, i64 0, i32 3
  br label %2794

2789:                                             ; preds = %2779, %2789
  %2790 = phi ptr [ %2792, %2789 ], [ %2781, %2779 ]
  %2791 = getelementptr inbounds %struct.Curve, ptr %2790, i64 0, i32 19
  store float 7.500000e-01, ptr %2791, align 8, !tbaa !573
  %2792 = load ptr, ptr %2790, align 8, !tbaa !42
  %2793 = icmp eq ptr %2792, null
  br i1 %2793, label %2783, label %2789, !llvm.loop !574

2794:                                             ; preds = %2786, %2809
  %2795 = phi ptr [ %2784, %2786 ], [ %2810, %2809 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #9
  %2796 = getelementptr inbounds %struct.Scene, ptr %2795, i64 0, i32 19
  %2797 = load ptr, ptr %2796, align 8, !tbaa !77
  call void @BKE_sequence_iterator_begin(ptr noundef %2797, ptr noundef nonnull %7, i8 noundef zeroext 0) #9
  %2798 = load i32, ptr %2787, align 8, !tbaa !98
  %2799 = icmp eq i32 %2798, 0
  br i1 %2799, label %2809, label %2800

2800:                                             ; preds = %2794, %2806
  %2801 = load ptr, ptr %2788, align 8, !tbaa !100
  %2802 = getelementptr inbounds %struct.Sequence, ptr %2801, i64 0, i32 17
  %2803 = load float, ptr %2802, align 8, !tbaa !575
  %2804 = fcmp oeq float %2803, 0.000000e+00
  br i1 %2804, label %2805, label %2806

2805:                                             ; preds = %2800
  store float 1.000000e+00, ptr %2802, align 8, !tbaa !575
  br label %2806

2806:                                             ; preds = %2800, %2805
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %7) #9
  %2807 = load i32, ptr %2787, align 8, !tbaa !98
  %2808 = icmp eq i32 %2807, 0
  br i1 %2808, label %2809, label %2800, !llvm.loop !576

2809:                                             ; preds = %2806, %2794
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #9
  %2810 = load ptr, ptr %2795, align 8, !tbaa !42
  %2811 = icmp eq ptr %2810, null
  br i1 %2811, label %2812, label %2794, !llvm.loop !577

2812:                                             ; preds = %2809, %2783
  %2813 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 36
  %2814 = load ptr, ptr %2813, align 8, !tbaa !42
  %2815 = icmp eq ptr %2814, null
  br i1 %2815, label %2916, label %2816

2816:                                             ; preds = %2812
  %2817 = load i16, ptr %12, align 8, !tbaa !34
  %2818 = icmp slt i16 %2817, 252
  %2819 = icmp eq i16 %2817, 252
  %2820 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  br label %2821

2821:                                             ; preds = %2816, %2913
  %2822 = phi ptr [ %2814, %2816 ], [ %2914, %2913 ]
  %2823 = getelementptr inbounds %struct.Brush, ptr %2822, i64 0, i32 21
  %2824 = load i32, ptr %2823, align 4, !tbaa !578
  %2825 = icmp eq i32 %2824, 0
  br i1 %2825, label %2826, label %2827

2826:                                             ; preds = %2821
  store i32 10, ptr %2823, align 4, !tbaa !578
  br label %2827

2827:                                             ; preds = %2826, %2821
  %2828 = getelementptr inbounds %struct.Brush, ptr %2822, i64 0, i32 26
  %2829 = load float, ptr %2828, align 8, !tbaa !579
  %2830 = fcmp oeq float %2829, 0.000000e+00
  br i1 %2830, label %2831, label %2832

2831:                                             ; preds = %2827
  store float 5.000000e-01, ptr %2828, align 8, !tbaa !579
  br label %2832

2832:                                             ; preds = %2831, %2827
  %2833 = getelementptr inbounds %struct.Brush, ptr %2822, i64 0, i32 46
  %2834 = load float, ptr %2833, align 4, !tbaa !580
  %2835 = fcmp oeq float %2834, 0.000000e+00
  br i1 %2835, label %2836, label %2837

2836:                                             ; preds = %2832
  store float 1.250000e-01, ptr %2833, align 4, !tbaa !580
  br label %2837

2837:                                             ; preds = %2836, %2832
  %2838 = getelementptr inbounds %struct.Brush, ptr %2822, i64 0, i32 15
  %2839 = load i32, ptr %2838, align 4, !tbaa !581
  %2840 = icmp eq i32 %2839, 0
  br i1 %2840, label %2841, label %2842

2841:                                             ; preds = %2837
  store i32 35, ptr %2838, align 4, !tbaa !581
  br label %2842

2842:                                             ; preds = %2841, %2837
  %2843 = getelementptr inbounds %struct.Brush, ptr %2822, i64 0, i32 43
  %2844 = load i32, ptr %2843, align 8, !tbaa !582
  %2845 = icmp eq i32 %2844, 0
  br i1 %2845, label %2846, label %2847

2846:                                             ; preds = %2842
  store i32 33, ptr %2843, align 8, !tbaa !582
  br label %2847

2847:                                             ; preds = %2846, %2842
  %2848 = getelementptr inbounds %struct.Brush, ptr %2822, i64 0, i32 39
  %2849 = load float, ptr %2848, align 8, !tbaa !583
  %2850 = fcmp oeq float %2849, 0.000000e+00
  br i1 %2850, label %2851, label %2852

2851:                                             ; preds = %2847
  store float 5.000000e-01, ptr %2848, align 8, !tbaa !583
  br label %2852

2852:                                             ; preds = %2851, %2847
  %2853 = getelementptr inbounds %struct.Brush, ptr %2822, i64 0, i32 40
  %2854 = load float, ptr %2853, align 4, !tbaa !584
  %2855 = fcmp oeq float %2854, 0.000000e+00
  br i1 %2855, label %2856, label %2857

2856:                                             ; preds = %2852
  store float 5.000000e-01, ptr %2853, align 4, !tbaa !584
  br label %2857

2857:                                             ; preds = %2856, %2852
  %2858 = getelementptr inbounds %struct.Brush, ptr %2822, i64 0, i32 22
  %2859 = load i32, ptr %2858, align 8, !tbaa !585
  %2860 = icmp eq i32 %2859, 0
  br i1 %2860, label %2861, label %2862

2861:                                             ; preds = %2857
  store i32 75, ptr %2858, align 8, !tbaa !585
  br label %2862

2862:                                             ; preds = %2861, %2857
  %2863 = load i32, ptr %2858, align 8, !tbaa !585
  %2864 = icmp eq i32 %2863, 1
  br i1 %2864, label %2865, label %2867

2865:                                             ; preds = %2862
  %2866 = getelementptr inbounds %struct.Brush, ptr %2822, i64 0, i32 23
  store float 0x3FECCCCCC0000000, ptr %2866, align 4, !tbaa !586
  br label %2867

2867:                                             ; preds = %2865, %2862
  %2868 = getelementptr inbounds %struct.Brush, ptr %2822, i64 0, i32 24
  %2869 = load float, ptr %2868, align 8, !tbaa !587
  %2870 = fcmp oeq float %2869, 0.000000e+00
  br i1 %2870, label %2871, label %2872

2871:                                             ; preds = %2867
  store float 0x3FB99999A0000000, ptr %2868, align 8, !tbaa !587
  br label %2872

2872:                                             ; preds = %2871, %2867
  br i1 %2818, label %2877, label %2873

2873:                                             ; preds = %2872
  br i1 %2819, label %2874, label %2913

2874:                                             ; preds = %2873
  %2875 = load i16, ptr %2820, align 2, !tbaa !194
  %2876 = icmp slt i16 %2875, 5
  br i1 %2876, label %2877, label %2913

2877:                                             ; preds = %2874, %2872
  %2878 = getelementptr inbounds %struct.Brush, ptr %2822, i64 0, i32 16
  %2879 = load i32, ptr %2878, align 8, !tbaa !588
  %2880 = or i32 %2879, 262144
  store i32 %2880, ptr %2878, align 8, !tbaa !588
  %2881 = load i32, ptr %2823, align 4, !tbaa !578
  %2882 = sitofp i32 %2881 to float
  %2883 = fmul float %2882, 1.000000e+02
  %2884 = load i32, ptr %2838, align 4, !tbaa !581
  %2885 = sitofp i32 %2884 to float
  %2886 = fdiv float %2883, %2885
  %2887 = fptosi float %2886 to i32
  store i32 %2887, ptr %2823, align 4, !tbaa !578
  %2888 = getelementptr inbounds %struct.Brush, ptr %2822, i64 0, i32 51
  %2889 = load float, ptr %2888, align 8, !tbaa !216
  %2890 = fcmp oeq float %2889, 0.000000e+00
  br i1 %2890, label %2891, label %2900

2891:                                             ; preds = %2877
  %2892 = getelementptr inbounds %struct.Brush, ptr %2822, i64 0, i32 51, i64 1
  %2893 = load float, ptr %2892, align 4, !tbaa !216
  %2894 = fcmp oeq float %2893, 0.000000e+00
  br i1 %2894, label %2895, label %2900

2895:                                             ; preds = %2891
  %2896 = getelementptr inbounds %struct.Brush, ptr %2822, i64 0, i32 51, i64 2
  %2897 = load float, ptr %2896, align 8, !tbaa !216
  %2898 = fcmp oeq float %2897, 0.000000e+00
  br i1 %2898, label %2899, label %2900

2899:                                             ; preds = %2895
  store float 1.000000e+00, ptr %2888, align 8, !tbaa !216
  store float 0x3FD8F5C280000000, ptr %2892, align 4, !tbaa !216
  store float 0x3FD8F5C280000000, ptr %2896, align 8, !tbaa !216
  br label %2900

2900:                                             ; preds = %2899, %2895, %2891, %2877
  %2901 = getelementptr inbounds %struct.Brush, ptr %2822, i64 0, i32 52
  %2902 = load float, ptr %2901, align 4, !tbaa !216
  %2903 = fcmp oeq float %2902, 0.000000e+00
  br i1 %2903, label %2904, label %2913

2904:                                             ; preds = %2900
  %2905 = getelementptr inbounds %struct.Brush, ptr %2822, i64 0, i32 52, i64 1
  %2906 = load float, ptr %2905, align 4, !tbaa !216
  %2907 = fcmp oeq float %2906, 0.000000e+00
  br i1 %2907, label %2908, label %2913

2908:                                             ; preds = %2904
  %2909 = getelementptr inbounds %struct.Brush, ptr %2822, i64 0, i32 52, i64 2
  %2910 = load float, ptr %2909, align 4, !tbaa !216
  %2911 = fcmp oeq float %2910, 0.000000e+00
  br i1 %2911, label %2912, label %2913

2912:                                             ; preds = %2908
  store float 0x3FD8F5C280000000, ptr %2901, align 4, !tbaa !216
  store float 0x3FD8F5C280000000, ptr %2905, align 4, !tbaa !216
  store float 1.000000e+00, ptr %2909, align 4, !tbaa !216
  br label %2913

2913:                                             ; preds = %2873, %2874, %2912, %2908, %2904, %2900
  %2914 = load ptr, ptr %2822, align 8, !tbaa !42
  %2915 = icmp eq ptr %2914, null
  br i1 %2915, label %2916, label %2821, !llvm.loop !589

2916:                                             ; preds = %2913, %2812, %2593
  %2917 = load i16, ptr %12, align 8, !tbaa !34
  %2918 = icmp slt i16 %2917, 253
  br i1 %2918, label %2919, label %2945

2919:                                             ; preds = %2916
  %2920 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %2921 = load ptr, ptr %2920, align 8, !tbaa !42
  %2922 = icmp eq ptr %2921, null
  br i1 %2922, label %2944, label %2923

2923:                                             ; preds = %2919, %2941
  %2924 = phi ptr [ %2942, %2941 ], [ %2921, %2919 ]
  %2925 = getelementptr inbounds %struct.Scene, ptr %2924, i64 0, i32 20
  %2926 = load ptr, ptr %2925, align 8, !tbaa !224
  %2927 = getelementptr inbounds %struct.ToolSettings, ptr %2926, i64 0, i32 72
  %2928 = load float, ptr %2927, align 4, !tbaa !590
  %2929 = fcmp oeq float %2928, 0.000000e+00
  br i1 %2929, label %2930, label %2931

2930:                                             ; preds = %2923
  store float 5.000000e-01, ptr %2927, align 4, !tbaa !590
  br label %2931

2931:                                             ; preds = %2930, %2923
  %2932 = getelementptr inbounds %struct.ToolSettings, ptr %2926, i64 0, i32 71
  %2933 = load float, ptr %2932, align 8, !tbaa !591
  %2934 = fcmp oeq float %2933, 0.000000e+00
  br i1 %2934, label %2935, label %2936

2935:                                             ; preds = %2931
  store float 1.250000e-01, ptr %2932, align 8, !tbaa !591
  br label %2936

2936:                                             ; preds = %2935, %2931
  %2937 = getelementptr inbounds %struct.ToolSettings, ptr %2926, i64 0, i32 70
  %2938 = load i32, ptr %2937, align 4, !tbaa !592
  %2939 = icmp eq i32 %2938, 0
  br i1 %2939, label %2940, label %2941

2940:                                             ; preds = %2936
  store i32 35, ptr %2937, align 4, !tbaa !592
  br label %2941

2941:                                             ; preds = %2936, %2940
  %2942 = load ptr, ptr %2924, align 8, !tbaa !42
  %2943 = icmp eq ptr %2942, null
  br i1 %2943, label %2944, label %2923, !llvm.loop !593

2944:                                             ; preds = %2941, %2919
  br i1 %2918, label %2951, label %2945

2945:                                             ; preds = %2916, %2944
  %2946 = icmp eq i16 %2917, 253
  br i1 %2946, label %2947, label %3029

2947:                                             ; preds = %2945
  %2948 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2949 = load i16, ptr %2948, align 2, !tbaa !194
  %2950 = icmp slt i16 %2949, 1
  br i1 %2950, label %2951, label %3029

2951:                                             ; preds = %2947, %2944
  %2952 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %2953 = load ptr, ptr %2952, align 8, !tbaa !42
  %2954 = icmp eq ptr %2953, null
  br i1 %2954, label %3029, label %2958

2955:                                             ; preds = %3026, %2958
  %2956 = load ptr, ptr %2959, align 8, !tbaa !42
  %2957 = icmp eq ptr %2956, null
  br i1 %2957, label %3029, label %2958, !llvm.loop !594

2958:                                             ; preds = %2951, %2955
  %2959 = phi ptr [ %2956, %2955 ], [ %2953, %2951 ]
  %2960 = getelementptr inbounds %struct.Object, ptr %2959, i64 0, i32 26
  %2961 = load ptr, ptr %2960, align 8, !tbaa !42
  %2962 = icmp eq ptr %2961, null
  br i1 %2962, label %2955, label %2963

2963:                                             ; preds = %2958, %3026
  %2964 = phi ptr [ %3027, %3026 ], [ %2961, %2958 ]
  %2965 = getelementptr inbounds %struct.ModifierData, ptr %2964, i64 0, i32 2
  %2966 = load i32, ptr %2965, align 8, !tbaa !413
  %2967 = icmp eq i32 %2966, 31
  br i1 %2967, label %2968, label %3026

2968:                                             ; preds = %2963
  %2969 = getelementptr inbounds %struct.SmokeModifierData, ptr %2964, i64 0, i32 5
  %2970 = load i32, ptr %2969, align 4, !tbaa !595
  %2971 = and i32 %2970, 1
  %2972 = icmp eq i32 %2971, 0
  br i1 %2972, label %3017, label %2973

2973:                                             ; preds = %2968
  %2974 = getelementptr inbounds %struct.SmokeModifierData, ptr %2964, i64 0, i32 1
  %2975 = load ptr, ptr %2974, align 8, !tbaa !597
  %2976 = icmp eq ptr %2975, null
  br i1 %2976, label %3017, label %2977

2977:                                             ; preds = %2973
  %2978 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %2975, i64 0, i32 52
  store float 2.000000e+00, ptr %2978, align 8, !tbaa !598
  %2979 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %2975, i64 0, i32 51
  store float 1.000000e+00, ptr %2979, align 4, !tbaa !600
  %2980 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %2975, i64 0, i32 37
  %2981 = load i32, ptr %2980, align 4, !tbaa !601
  %2982 = and i32 %2981, 16
  %2983 = icmp eq i32 %2982, 0
  br i1 %2983, label %3026, label %2984

2984:                                             ; preds = %2977
  %2985 = and i32 %2981, -17
  store i32 %2985, ptr %2980, align 4, !tbaa !601
  %2986 = load ptr, ptr %2952, align 8, !tbaa !42
  %2987 = icmp eq ptr %2986, null
  br i1 %2987, label %3026, label %2991

2988:                                             ; preds = %3014, %2991
  %2989 = load ptr, ptr %2992, align 8, !tbaa !42
  %2990 = icmp eq ptr %2989, null
  br i1 %2990, label %3026, label %2991, !llvm.loop !602

2991:                                             ; preds = %2984, %2988
  %2992 = phi ptr [ %2989, %2988 ], [ %2986, %2984 ]
  %2993 = getelementptr inbounds %struct.Object, ptr %2992, i64 0, i32 26
  %2994 = load ptr, ptr %2993, align 8, !tbaa !42
  %2995 = icmp eq ptr %2994, null
  br i1 %2995, label %2988, label %2996

2996:                                             ; preds = %2991, %3014
  %2997 = phi ptr [ %3015, %3014 ], [ %2994, %2991 ]
  %2998 = getelementptr inbounds %struct.ModifierData, ptr %2997, i64 0, i32 2
  %2999 = load i32, ptr %2998, align 8, !tbaa !413
  %3000 = icmp eq i32 %2999, 31
  br i1 %3000, label %3001, label %3014

3001:                                             ; preds = %2996
  %3002 = getelementptr inbounds %struct.SmokeModifierData, ptr %2997, i64 0, i32 5
  %3003 = load i32, ptr %3002, align 4, !tbaa !595
  %3004 = and i32 %3003, 2
  %3005 = icmp eq i32 %3004, 0
  br i1 %3005, label %3014, label %3006

3006:                                             ; preds = %3001
  %3007 = getelementptr inbounds %struct.SmokeModifierData, ptr %2997, i64 0, i32 2
  %3008 = load ptr, ptr %3007, align 8, !tbaa !603
  %3009 = icmp eq ptr %3008, null
  br i1 %3009, label %3014, label %3010

3010:                                             ; preds = %3006
  %3011 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %3008, i64 0, i32 25
  %3012 = load i32, ptr %3011, align 4, !tbaa !604
  %3013 = or i32 %3012, 4
  store i32 %3013, ptr %3011, align 4, !tbaa !604
  br label %3014

3014:                                             ; preds = %3001, %3006, %3010, %2996
  %3015 = load ptr, ptr %2997, align 8, !tbaa !42
  %3016 = icmp eq ptr %3015, null
  br i1 %3016, label %2988, label %2996, !llvm.loop !606

3017:                                             ; preds = %2973, %2968
  %3018 = and i32 %2970, 2
  %3019 = icmp eq i32 %3018, 0
  br i1 %3019, label %3026, label %3020

3020:                                             ; preds = %3017
  %3021 = getelementptr inbounds %struct.SmokeModifierData, ptr %2964, i64 0, i32 2
  %3022 = load ptr, ptr %3021, align 8, !tbaa !603
  %3023 = icmp eq ptr %3022, null
  br i1 %3023, label %3026, label %3024

3024:                                             ; preds = %3020
  %3025 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %3022, i64 0, i32 6
  store float 1.000000e+00, ptr %3025, align 4, !tbaa !607
  br label %3026

3026:                                             ; preds = %2988, %2984, %2977, %3017, %3020, %3024, %2963
  %3027 = load ptr, ptr %2964, align 8, !tbaa !42
  %3028 = icmp eq ptr %3027, null
  br i1 %3028, label %2955, label %2963, !llvm.loop !608

3029:                                             ; preds = %2955, %2951, %2947, %2945
  %3030 = icmp slt i16 %2917, 255
  br i1 %3030, label %3037, label %3031

3031:                                             ; preds = %3029
  %3032 = icmp eq i16 %2917, 255
  br i1 %3032, label %3033, label %3150

3033:                                             ; preds = %3031
  %3034 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3035 = load i16, ptr %3034, align 2, !tbaa !194
  %3036 = icmp slt i16 %3035, 1
  br i1 %3036, label %3037, label %3150

3037:                                             ; preds = %3033, %3029
  %3038 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 36
  %3039 = load ptr, ptr %3038, align 8, !tbaa !42
  %3040 = icmp eq ptr %3039, null
  br i1 %3040, label %3050, label %3041

3041:                                             ; preds = %3037, %3047
  %3042 = phi ptr [ %3048, %3047 ], [ %3039, %3037 ]
  %3043 = getelementptr inbounds %struct.Brush, ptr %3042, i64 0, i32 13
  %3044 = load i16, ptr %3043, align 2, !tbaa !609
  %3045 = icmp eq i16 %3044, 0
  br i1 %3045, label %3046, label %3047

3046:                                             ; preds = %3041
  store i16 30, ptr %3043, align 2, !tbaa !609
  br label %3047

3047:                                             ; preds = %3041, %3046
  %3048 = load ptr, ptr %3042, align 8, !tbaa !42
  %3049 = icmp eq ptr %3048, null
  br i1 %3049, label %3050, label %3041, !llvm.loop !610

3050:                                             ; preds = %3047, %3037
  %3051 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 37
  %3052 = load ptr, ptr %3051, align 8, !tbaa !42
  %3053 = icmp eq ptr %3052, null
  br i1 %3053, label %3068, label %3054

3054:                                             ; preds = %3050, %3061
  %3055 = phi ptr [ %3066, %3061 ], [ %3052, %3050 ]
  %3056 = getelementptr inbounds %struct.ParticleSettings, ptr %3055, i64 0, i32 2
  %3057 = load ptr, ptr %3056, align 8, !tbaa !611
  %3058 = icmp eq ptr %3057, null
  br i1 %3058, label %3061, label %3059

3059:                                             ; preds = %3054
  %3060 = getelementptr inbounds %struct.BoidSettings, ptr %3057, i64 0, i32 5
  store float 1.000000e+00, ptr %3060, align 4, !tbaa !612
  br label %3061

3061:                                             ; preds = %3059, %3054
  %3062 = getelementptr inbounds %struct.ParticleSettings, ptr %3055, i64 0, i32 5
  %3063 = load i32, ptr %3062, align 8, !tbaa !614
  %3064 = and i32 %3063, -17
  store i32 %3064, ptr %3062, align 8, !tbaa !614
  %3065 = getelementptr inbounds %struct.ParticleSettings, ptr %3055, i64 0, i32 102
  store float 1.000000e+00, ptr %3065, align 8, !tbaa !615
  %3066 = load ptr, ptr %3055, align 8, !tbaa !42
  %3067 = icmp eq ptr %3066, null
  br i1 %3067, label %3068, label %3054, !llvm.loop !616

3068:                                             ; preds = %3061, %3050
  %3069 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %3070 = load ptr, ptr %3069, align 8, !tbaa !42
  %3071 = icmp eq ptr %3070, null
  br i1 %3071, label %3118, label %3075

3072:                                             ; preds = %3080, %3075
  %3073 = load ptr, ptr %3076, align 8, !tbaa !42
  %3074 = icmp eq ptr %3073, null
  br i1 %3074, label %3118, label %3075, !llvm.loop !617

3075:                                             ; preds = %3068, %3072
  %3076 = phi ptr [ %3073, %3072 ], [ %3070, %3068 ]
  %3077 = getelementptr inbounds %struct.bScreen, ptr %3076, i64 0, i32 3
  %3078 = load ptr, ptr %3077, align 8, !tbaa !42
  %3079 = icmp eq ptr %3078, null
  br i1 %3079, label %3072, label %3083

3080:                                             ; preds = %3115, %3083
  %3081 = load ptr, ptr %3084, align 8, !tbaa !42
  %3082 = icmp eq ptr %3081, null
  br i1 %3082, label %3072, label %3083, !llvm.loop !618

3083:                                             ; preds = %3075, %3080
  %3084 = phi ptr [ %3081, %3080 ], [ %3078, %3075 ]
  %3085 = getelementptr inbounds %struct.ScrArea, ptr %3084, i64 0, i32 19
  %3086 = load ptr, ptr %3085, align 8, !tbaa !42
  %3087 = icmp eq ptr %3086, null
  br i1 %3087, label %3080, label %3088

3088:                                             ; preds = %3083
  %3089 = getelementptr inbounds %struct.ScrArea, ptr %3084, i64 0, i32 20
  br label %3090

3090:                                             ; preds = %3088, %3115
  %3091 = phi ptr [ %3086, %3088 ], [ %3116, %3115 ]
  %3092 = getelementptr inbounds %struct.SpaceLink, ptr %3091, i64 0, i32 3
  %3093 = load i32, ptr %3092, align 8, !tbaa !124
  %3094 = icmp eq i32 %3093, 7
  br i1 %3094, label %3095, label %3115

3095:                                             ; preds = %3090
  %3096 = getelementptr inbounds %struct.SpaceInfo, ptr %3091, i64 0, i32 6
  store i8 4, ptr %3096, align 8, !tbaa !619
  %3097 = load ptr, ptr %3089, align 8, !tbaa !42
  %3098 = icmp eq ptr %3097, null
  br i1 %3098, label %3115, label %3099

3099:                                             ; preds = %3095, %3112
  %3100 = phi ptr [ %3113, %3112 ], [ %3097, %3095 ]
  %3101 = getelementptr inbounds %struct.ARegion, ptr %3100, i64 0, i32 8
  %3102 = load i16, ptr %3101, align 2, !tbaa !114
  %3103 = icmp eq i16 %3102, 0
  br i1 %3103, label %3104, label %3112

3104:                                             ; preds = %3099
  %3105 = getelementptr inbounds %struct.ARegion, ptr %3100, i64 0, i32 2, i32 9
  store i16 2, ptr %3105, align 8, !tbaa !621
  %3106 = getelementptr inbounds %struct.ARegion, ptr %3100, i64 0, i32 2, i32 15
  store i16 10, ptr %3106, align 4, !tbaa !121
  %3107 = getelementptr inbounds %struct.ARegion, ptr %3100, i64 0, i32 2, i32 13
  store i16 2, ptr %3107, align 8, !tbaa !119
  %3108 = getelementptr inbounds %struct.ARegion, ptr %3100, i64 0, i32 2, i32 12
  store i16 771, ptr %3108, align 2, !tbaa !118
  %3109 = getelementptr inbounds %struct.ARegion, ptr %3100, i64 0, i32 2, i32 11
  store i16 1, ptr %3109, align 4, !tbaa !120
  %3110 = getelementptr inbounds %struct.ARegion, ptr %3100, i64 0, i32 2, i32 8
  store float 1.000000e+00, ptr %3110, align 4, !tbaa !427
  %3111 = getelementptr inbounds %struct.ARegion, ptr %3100, i64 0, i32 2, i32 7
  store float 1.000000e+00, ptr %3111, align 8, !tbaa !426
  br label %3112

3112:                                             ; preds = %3099, %3104
  %3113 = load ptr, ptr %3100, align 8, !tbaa !42
  %3114 = icmp eq ptr %3113, null
  br i1 %3114, label %3115, label %3099, !llvm.loop !622

3115:                                             ; preds = %3112, %3095, %3090
  %3116 = load ptr, ptr %3091, align 8, !tbaa !42
  %3117 = icmp eq ptr %3116, null
  br i1 %3117, label %3080, label %3090, !llvm.loop !623

3118:                                             ; preds = %3072, %3068
  %3119 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %3120 = load ptr, ptr %3119, align 8, !tbaa !42
  %3121 = icmp eq ptr %3120, null
  br i1 %3121, label %3150, label %3125

3122:                                             ; preds = %3147, %3125
  %3123 = load ptr, ptr %3126, align 8, !tbaa !42
  %3124 = icmp eq ptr %3123, null
  br i1 %3124, label %3150, label %3125, !llvm.loop !624

3125:                                             ; preds = %3118, %3122
  %3126 = phi ptr [ %3123, %3122 ], [ %3120, %3118 ]
  %3127 = getelementptr inbounds %struct.Object, ptr %3126, i64 0, i32 94
  %3128 = load ptr, ptr %3127, align 8, !tbaa !42
  %3129 = icmp eq ptr %3128, null
  br i1 %3129, label %3122, label %3130

3130:                                             ; preds = %3125, %3147
  %3131 = phi ptr [ %3148, %3147 ], [ %3128, %3125 ]
  %3132 = getelementptr inbounds %struct.bActuator, ptr %3131, i64 0, i32 3
  %3133 = load i16, ptr %3132, align 8, !tbaa !53
  %3134 = icmp eq i16 %3133, 0
  br i1 %3134, label %3135, label %3147

3135:                                             ; preds = %3130
  %3136 = getelementptr inbounds %struct.bActuator, ptr %3131, i64 0, i32 8
  %3137 = load ptr, ptr %3136, align 8, !tbaa !55
  %3138 = getelementptr inbounds %struct.bObjectActuator, ptr %3137, i64 0, i32 9
  %3139 = load float, ptr %3138, align 4, !tbaa !216
  %3140 = fmul float %3139, 0x3FEBECDE60000000
  store float %3140, ptr %3138, align 4, !tbaa !216
  %3141 = getelementptr inbounds %struct.bObjectActuator, ptr %3137, i64 0, i32 9, i64 1
  %3142 = load float, ptr %3141, align 4, !tbaa !216
  %3143 = fmul float %3142, 0x3FEBECDE60000000
  store float %3143, ptr %3141, align 4, !tbaa !216
  %3144 = getelementptr inbounds %struct.bObjectActuator, ptr %3137, i64 0, i32 9, i64 2
  %3145 = load float, ptr %3144, align 4, !tbaa !216
  %3146 = fmul float %3145, 0x3FEBECDE60000000
  store float %3146, ptr %3144, align 4, !tbaa !216
  br label %3147

3147:                                             ; preds = %3135, %3130
  %3148 = load ptr, ptr %3131, align 8, !tbaa !42
  %3149 = icmp eq ptr %3148, null
  br i1 %3149, label %3122, label %3130, !llvm.loop !625

3150:                                             ; preds = %3122, %3118, %3033, %3031
  %3151 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %3152 = load ptr, ptr %3151, align 8, !tbaa !42
  %3153 = icmp eq ptr %3152, null
  br i1 %3153, label %3180, label %3157

3154:                                             ; preds = %3177, %3157
  %3155 = load ptr, ptr %3158, align 8, !tbaa !42
  %3156 = icmp eq ptr %3155, null
  br i1 %3156, label %3180, label %3157, !llvm.loop !626

3157:                                             ; preds = %3150, %3154
  %3158 = phi ptr [ %3155, %3154 ], [ %3152, %3150 ]
  %3159 = getelementptr inbounds %struct.Object, ptr %3158, i64 0, i32 94
  %3160 = load ptr, ptr %3159, align 8, !tbaa !42
  %3161 = icmp eq ptr %3160, null
  br i1 %3161, label %3154, label %3162

3162:                                             ; preds = %3157, %3177
  %3163 = phi ptr [ %3178, %3177 ], [ %3160, %3157 ]
  %3164 = getelementptr inbounds %struct.bActuator, ptr %3163, i64 0, i32 3
  %3165 = load i16, ptr %3164, align 8, !tbaa !53
  %3166 = icmp eq i16 %3165, 24
  br i1 %3166, label %3167, label %3177

3167:                                             ; preds = %3162
  %3168 = getelementptr inbounds %struct.bActuator, ptr %3163, i64 0, i32 8
  %3169 = load ptr, ptr %3168, align 8, !tbaa !55
  %3170 = icmp eq ptr %3169, null
  br i1 %3170, label %3171, label %3172

3171:                                             ; preds = %3167
  call void @init_actuator(ptr noundef nonnull %3163) #9
  br label %3177

3172:                                             ; preds = %3167
  %3173 = getelementptr inbounds %struct.bSteeringActuator, ptr %3169, i64 0, i32 2
  %3174 = load i16, ptr %3173, align 2, !tbaa !627
  %3175 = icmp eq i16 %3174, 0
  br i1 %3175, label %3176, label %3177

3176:                                             ; preds = %3172
  store i16 1, ptr %3173, align 2, !tbaa !627
  br label %3177

3177:                                             ; preds = %3171, %3176, %3172, %3162
  %3178 = load ptr, ptr %3163, align 8, !tbaa !42
  %3179 = icmp eq ptr %3178, null
  br i1 %3179, label %3154, label %3162, !llvm.loop !629

3180:                                             ; preds = %3154, %3150
  %3181 = load i16, ptr %12, align 8, !tbaa !34
  %3182 = icmp slt i16 %3181, 255
  br i1 %3182, label %3189, label %3183

3183:                                             ; preds = %3180
  %3184 = icmp eq i16 %3181, 255
  br i1 %3184, label %3185, label %3211

3185:                                             ; preds = %3183
  %3186 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3187 = load i16, ptr %3186, align 2, !tbaa !194
  %3188 = icmp slt i16 %3187, 3
  br i1 %3188, label %3189, label %3211

3189:                                             ; preds = %3185, %3180
  %3190 = load ptr, ptr %3151, align 8, !tbaa !42
  %3191 = icmp eq ptr %3190, null
  br i1 %3191, label %3211, label %3195

3192:                                             ; preds = %3208, %3195
  %3193 = load ptr, ptr %3196, align 8, !tbaa !42
  %3194 = icmp eq ptr %3193, null
  br i1 %3194, label %3211, label %3195, !llvm.loop !630

3195:                                             ; preds = %3189, %3192
  %3196 = phi ptr [ %3193, %3192 ], [ %3190, %3189 ]
  %3197 = getelementptr inbounds %struct.Object, ptr %3196, i64 0, i32 26
  %3198 = load ptr, ptr %3197, align 8, !tbaa !42
  %3199 = icmp eq ptr %3198, null
  br i1 %3199, label %3192, label %3200

3200:                                             ; preds = %3195, %3208
  %3201 = phi ptr [ %3209, %3208 ], [ %3198, %3195 ]
  %3202 = getelementptr inbounds %struct.ModifierData, ptr %3201, i64 0, i32 2
  %3203 = load i32, ptr %3202, align 8, !tbaa !413
  %3204 = icmp eq i32 %3203, 39
  br i1 %3204, label %3205, label %3208

3205:                                             ; preds = %3200
  %3206 = getelementptr inbounds %struct.OceanModifierData, ptr %3201, i64 0, i32 3
  store i32 7, ptr %3206, align 8, !tbaa !631
  %3207 = getelementptr inbounds %struct.OceanModifierData, ptr %3201, i64 0, i32 2
  store ptr null, ptr %3207, align 8, !tbaa !633
  br label %3208

3208:                                             ; preds = %3200, %3205
  %3209 = load ptr, ptr %3201, align 8, !tbaa !42
  %3210 = icmp eq ptr %3209, null
  br i1 %3210, label %3192, label %3200, !llvm.loop !634

3211:                                             ; preds = %3192, %3189, %3185, %3183
  %3212 = icmp slt i16 %3181, 256
  br i1 %3212, label %3213, label %3276

3213:                                             ; preds = %3211
  %3214 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %3215 = load ptr, ptr %3214, align 8, !tbaa !42
  %3216 = icmp eq ptr %3215, null
  br i1 %3216, label %3246, label %3220

3217:                                             ; preds = %3225, %3220
  %3218 = load ptr, ptr %3221, align 8, !tbaa !42
  %3219 = icmp eq ptr %3218, null
  br i1 %3219, label %3246, label %3220, !llvm.loop !635

3220:                                             ; preds = %3213, %3217
  %3221 = phi ptr [ %3218, %3217 ], [ %3215, %3213 ]
  %3222 = getelementptr inbounds %struct.bScreen, ptr %3221, i64 0, i32 3
  %3223 = load ptr, ptr %3222, align 8, !tbaa !42
  %3224 = icmp eq ptr %3223, null
  br i1 %3224, label %3217, label %3228

3225:                                             ; preds = %3243, %3228
  %3226 = load ptr, ptr %3229, align 8, !tbaa !42
  %3227 = icmp eq ptr %3226, null
  br i1 %3227, label %3217, label %3228, !llvm.loop !636

3228:                                             ; preds = %3220, %3225
  %3229 = phi ptr [ %3226, %3225 ], [ %3223, %3220 ]
  %3230 = getelementptr inbounds %struct.ScrArea, ptr %3229, i64 0, i32 19
  %3231 = load ptr, ptr %3230, align 8, !tbaa !42
  %3232 = icmp eq ptr %3231, null
  br i1 %3232, label %3225, label %3233

3233:                                             ; preds = %3228, %3243
  %3234 = phi ptr [ %3244, %3243 ], [ %3231, %3228 ]
  %3235 = getelementptr inbounds %struct.SpaceLink, ptr %3234, i64 0, i32 3
  %3236 = load i32, ptr %3235, align 8, !tbaa !124
  %3237 = icmp eq i32 %3236, 6
  br i1 %3237, label %3238, label %3243

3238:                                             ; preds = %3233
  %3239 = getelementptr inbounds %struct.SpaceImage, ptr %3234, i64 0, i32 9, i32 11
  %3240 = load i32, ptr %3239, align 4, !tbaa !637
  %3241 = icmp eq i32 %3240, 0
  br i1 %3241, label %3242, label %3243

3242:                                             ; preds = %3238
  store i32 100, ptr %3239, align 4, !tbaa !637
  br label %3243

3243:                                             ; preds = %3238, %3242, %3233
  %3244 = load ptr, ptr %3234, align 8, !tbaa !42
  %3245 = icmp eq ptr %3244, null
  br i1 %3245, label %3225, label %3233, !llvm.loop !642

3246:                                             ; preds = %3217, %3213
  %3247 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 24
  %3248 = load ptr, ptr %3247, align 8, !tbaa !42
  %3249 = icmp eq ptr %3248, null
  br i1 %3249, label %3275, label %3253

3250:                                             ; preds = %3272, %3253
  %3251 = load ptr, ptr %3254, align 8, !tbaa !42
  %3252 = icmp eq ptr %3251, null
  br i1 %3252, label %3275, label %3253, !llvm.loop !643

3253:                                             ; preds = %3246, %3250
  %3254 = phi ptr [ %3251, %3250 ], [ %3248, %3246 ]
  %3255 = getelementptr inbounds %struct.Key, ptr %3254, i64 0, i32 6
  %3256 = load ptr, ptr %3255, align 8, !tbaa !42
  %3257 = icmp eq ptr %3256, null
  br i1 %3257, label %3250, label %3258

3258:                                             ; preds = %3253, %3272
  %3259 = phi ptr [ %3273, %3272 ], [ %3256, %3253 ]
  %3260 = getelementptr inbounds %struct.KeyBlock, ptr %3259, i64 0, i32 13
  %3261 = load float, ptr %3260, align 8, !tbaa !644
  %3262 = getelementptr inbounds %struct.KeyBlock, ptr %3259, i64 0, i32 14
  %3263 = load float, ptr %3262, align 4, !tbaa !645
  %3264 = fsub float %3261, %3263
  %3265 = call float @llvm.fabs.f32(float %3264)
  %3266 = fcmp ult float %3265, 0x3E80000000000000
  %3267 = call float @llvm.fabs.f32(float %3263)
  %3268 = fcmp ult float %3267, 0x3E80000000000000
  %3269 = select i1 %3266, i1 %3268, i1 false
  br i1 %3269, label %3270, label %3272

3270:                                             ; preds = %3258
  %3271 = fadd float %3261, 1.000000e+00
  store float %3271, ptr %3262, align 4, !tbaa !645
  br label %3272

3272:                                             ; preds = %3258, %3270
  %3273 = load ptr, ptr %3259, align 8, !tbaa !42
  %3274 = icmp eq ptr %3273, null
  br i1 %3274, label %3250, label %3258, !llvm.loop !646

3275:                                             ; preds = %3250, %3246
  br i1 %3212, label %3282, label %3276

3276:                                             ; preds = %3211, %3275
  %3277 = icmp eq i16 %3181, 256
  br i1 %3277, label %3278, label %3347

3278:                                             ; preds = %3276
  %3279 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3280 = load i16, ptr %3279, align 2, !tbaa !194
  %3281 = icmp slt i16 %3280, 1
  br i1 %3281, label %3282, label %3347

3282:                                             ; preds = %3278, %3275
  %3283 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 33
  %3284 = load ptr, ptr %3283, align 8, !tbaa !42
  %3285 = icmp eq ptr %3284, null
  br i1 %3285, label %3289, label %3292

3286:                                             ; preds = %3297, %3292
  %3287 = load ptr, ptr %3293, align 8, !tbaa !42
  %3288 = icmp eq ptr %3287, null
  br i1 %3288, label %3289, label %3292, !llvm.loop !647

3289:                                             ; preds = %3286, %3282
  %3290 = load ptr, ptr %3151, align 8, !tbaa !42
  %3291 = icmp eq ptr %3290, null
  br i1 %3291, label %3347, label %3301

3292:                                             ; preds = %3282, %3286
  %3293 = phi ptr [ %3287, %3286 ], [ %3284, %3282 ]
  %3294 = getelementptr inbounds %struct.bArmature, ptr %3293, i64 0, i32 2
  %3295 = load ptr, ptr %3294, align 8, !tbaa !42
  %3296 = icmp eq ptr %3295, null
  br i1 %3296, label %3286, label %3297

3297:                                             ; preds = %3292, %3297
  %3298 = phi ptr [ %3299, %3297 ], [ %3295, %3292 ]
  call fastcc void @do_version_bone_roll_256(ptr noundef nonnull %3298)
  %3299 = load ptr, ptr %3298, align 8, !tbaa !42
  %3300 = icmp eq ptr %3299, null
  br i1 %3300, label %3286, label %3297, !llvm.loop !648

3301:                                             ; preds = %3289, %3344
  %3302 = phi ptr [ %3345, %3344 ], [ %3290, %3289 ]
  %3303 = getelementptr inbounds %struct.Object, ptr %3302, i64 0, i32 42
  %3304 = load float, ptr %3303, align 4, !tbaa !216
  %3305 = fcmp oeq float %3304, 0.000000e+00
  br i1 %3305, label %3306, label %3319

3306:                                             ; preds = %3301
  %3307 = getelementptr inbounds %struct.Object, ptr %3302, i64 0, i32 42, i64 1
  %3308 = load float, ptr %3307, align 4, !tbaa !216
  %3309 = fcmp oeq float %3308, 0.000000e+00
  br i1 %3309, label %3310, label %3319

3310:                                             ; preds = %3306
  %3311 = getelementptr inbounds %struct.Object, ptr %3302, i64 0, i32 42, i64 2
  %3312 = load float, ptr %3311, align 4, !tbaa !216
  %3313 = fcmp oeq float %3312, 0.000000e+00
  br i1 %3313, label %3314, label %3319

3314:                                             ; preds = %3310
  %3315 = getelementptr inbounds %struct.Object, ptr %3302, i64 0, i32 42, i64 3
  %3316 = load float, ptr %3315, align 4, !tbaa !216
  %3317 = fcmp oeq float %3316, 0.000000e+00
  %3318 = zext i1 %3317 to i8
  br label %3319

3319:                                             ; preds = %3301, %3306, %3310, %3314
  %3320 = phi i8 [ 0, %3310 ], [ 0, %3306 ], [ 0, %3301 ], [ %3318, %3314 ]
  %3321 = icmp eq i8 %3320, 0
  br i1 %3321, label %3323, label %3322

3322:                                             ; preds = %3319
  call void @unit_qt(ptr noundef nonnull %3303) #9
  br label %3323

3323:                                             ; preds = %3322, %3319
  %3324 = getelementptr inbounds %struct.Object, ptr %3302, i64 0, i32 44
  %3325 = load float, ptr %3324, align 4, !tbaa !216
  %3326 = fcmp oeq float %3325, 0.000000e+00
  br i1 %3326, label %3327, label %3336

3327:                                             ; preds = %3323
  %3328 = getelementptr inbounds %struct.Object, ptr %3302, i64 0, i32 44, i64 1
  %3329 = load float, ptr %3328, align 4, !tbaa !216
  %3330 = fcmp oeq float %3329, 0.000000e+00
  br i1 %3330, label %3331, label %3336

3331:                                             ; preds = %3327
  %3332 = getelementptr inbounds %struct.Object, ptr %3302, i64 0, i32 44, i64 2
  %3333 = load float, ptr %3332, align 4, !tbaa !216
  %3334 = fcmp oeq float %3333, 0.000000e+00
  %3335 = zext i1 %3334 to i8
  br label %3336

3336:                                             ; preds = %3323, %3327, %3331
  %3337 = phi i8 [ 0, %3327 ], [ 0, %3323 ], [ %3335, %3331 ]
  %3338 = icmp eq i8 %3337, 0
  br i1 %3338, label %3344, label %3339

3339:                                             ; preds = %3336
  %3340 = getelementptr inbounds %struct.Object, ptr %3302, i64 0, i32 46
  %3341 = load float, ptr %3340, align 4, !tbaa !649
  %3342 = fcmp oeq float %3341, 0.000000e+00
  br i1 %3342, label %3343, label %3344

3343:                                             ; preds = %3339
  call void @unit_axis_angle(ptr noundef nonnull %3324, ptr noundef nonnull %3340) #9
  br label %3344

3344:                                             ; preds = %3336, %3339, %3343
  %3345 = load ptr, ptr %3302, align 8, !tbaa !42
  %3346 = icmp eq ptr %3345, null
  br i1 %3346, label %3347, label %3301, !llvm.loop !650

3347:                                             ; preds = %3344, %3289, %3278, %3276
  %3348 = load i16, ptr %12, align 8, !tbaa !34
  %3349 = icmp slt i16 %3348, 256
  br i1 %3349, label %3356, label %3350

3350:                                             ; preds = %3347
  %3351 = icmp eq i16 %3348, 256
  br i1 %3351, label %3352, label %3531

3352:                                             ; preds = %3350
  %3353 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3354 = load i16, ptr %3353, align 2, !tbaa !194
  %3355 = icmp slt i16 %3354, 2
  br i1 %3355, label %3356, label %3531

3356:                                             ; preds = %3352, %3347
  %3357 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 35
  %3358 = load ptr, ptr %3357, align 8, !tbaa !42
  %3359 = icmp eq ptr %3358, null
  br i1 %3359, label %3531, label %3360

3360:                                             ; preds = %3356, %3525
  %3361 = phi ptr [ %3529, %3525 ], [ %3358, %3356 ]
  %3362 = getelementptr inbounds %struct.bNodeTree, ptr %3361, i64 0, i32 7
  %3363 = load ptr, ptr %3362, align 8, !tbaa !42
  %3364 = icmp eq ptr %3363, null
  br i1 %3364, label %3371, label %3365

3365:                                             ; preds = %3360
  %3366 = getelementptr inbounds %struct.bNodeTree, ptr %3361, i64 0, i32 11
  %3367 = getelementptr inbounds %struct.bNodeTree, ptr %3361, i64 0, i32 11
  br label %3383

3368:                                             ; preds = %3416, %3402
  %3369 = load ptr, ptr %3384, align 8, !tbaa !42
  %3370 = icmp eq ptr %3369, null
  br i1 %3370, label %3371, label %3383, !llvm.loop !651

3371:                                             ; preds = %3368, %3360
  %3372 = load ptr, ptr %3362, align 8, !tbaa !42
  %3373 = icmp eq ptr %3372, null
  br i1 %3373, label %3525, label %3374

3374:                                             ; preds = %3371
  %3375 = getelementptr inbounds %struct.bNodeTree, ptr %3361, i64 0, i32 11
  %3376 = getelementptr inbounds %struct.bNodeTree, ptr %3361, i64 0, i32 22
  %3377 = getelementptr inbounds %struct.bNodeTree, ptr %3361, i64 0, i32 13
  %3378 = getelementptr inbounds %struct.bNodeTree, ptr %3361, i64 0, i32 8
  %3379 = getelementptr inbounds %struct.bNodeTree, ptr %3361, i64 0, i32 11
  %3380 = getelementptr inbounds %struct.bNodeTree, ptr %3361, i64 0, i32 23
  %3381 = getelementptr inbounds %struct.bNodeTree, ptr %3361, i64 0, i32 13
  %3382 = getelementptr inbounds %struct.bNodeTree, ptr %3361, i64 0, i32 8
  br label %3423

3383:                                             ; preds = %3365, %3368
  %3384 = phi ptr [ %3363, %3365 ], [ %3369, %3368 ]
  %3385 = getelementptr inbounds %struct.bNode, ptr %3384, i64 0, i32 17
  %3386 = load ptr, ptr %3385, align 8, !tbaa !42
  %3387 = icmp eq ptr %3386, null
  br i1 %3387, label %3402, label %3388

3388:                                             ; preds = %3383
  %3389 = load i32, ptr %3366, align 8, !tbaa !652
  br label %3390

3390:                                             ; preds = %3388, %3398
  %3391 = phi i32 [ %3389, %3388 ], [ %3399, %3398 ]
  %3392 = phi ptr [ %3386, %3388 ], [ %3400, %3398 ]
  %3393 = getelementptr inbounds %struct.bNodeSocket, ptr %3392, i64 0, i32 20
  %3394 = load i32, ptr %3393, align 8, !tbaa !655
  %3395 = icmp slt i32 %3394, %3391
  br i1 %3395, label %3398, label %3396

3396:                                             ; preds = %3390
  %3397 = add nsw i32 %3394, 1
  store i32 %3397, ptr %3366, align 8, !tbaa !652
  br label %3398

3398:                                             ; preds = %3390, %3396
  %3399 = phi i32 [ %3391, %3390 ], [ %3397, %3396 ]
  %3400 = load ptr, ptr %3392, align 8, !tbaa !42
  %3401 = icmp eq ptr %3400, null
  br i1 %3401, label %3402, label %3390, !llvm.loop !658

3402:                                             ; preds = %3398, %3383
  %3403 = getelementptr inbounds %struct.bNode, ptr %3384, i64 0, i32 18
  %3404 = load ptr, ptr %3403, align 8, !tbaa !42
  %3405 = icmp eq ptr %3404, null
  br i1 %3405, label %3368, label %3406

3406:                                             ; preds = %3402
  %3407 = load i32, ptr %3367, align 8, !tbaa !652
  br label %3408

3408:                                             ; preds = %3406, %3416
  %3409 = phi i32 [ %3407, %3406 ], [ %3417, %3416 ]
  %3410 = phi ptr [ %3404, %3406 ], [ %3418, %3416 ]
  %3411 = getelementptr inbounds %struct.bNodeSocket, ptr %3410, i64 0, i32 20
  %3412 = load i32, ptr %3411, align 8, !tbaa !655
  %3413 = icmp slt i32 %3412, %3409
  br i1 %3413, label %3416, label %3414

3414:                                             ; preds = %3408
  %3415 = add nsw i32 %3412, 1
  store i32 %3415, ptr %3367, align 8, !tbaa !652
  br label %3416

3416:                                             ; preds = %3408, %3414
  %3417 = phi i32 [ %3409, %3408 ], [ %3415, %3414 ]
  %3418 = load ptr, ptr %3410, align 8, !tbaa !42
  %3419 = icmp eq ptr %3418, null
  br i1 %3419, label %3368, label %3408, !llvm.loop !659

3420:                                             ; preds = %3522, %3475
  %3421 = load ptr, ptr %3424, align 8, !tbaa !42
  %3422 = icmp eq ptr %3421, null
  br i1 %3422, label %3525, label %3423, !llvm.loop !660

3423:                                             ; preds = %3374, %3420
  %3424 = phi ptr [ %3372, %3374 ], [ %3421, %3420 ]
  %3425 = getelementptr inbounds %struct.bNode, ptr %3424, i64 0, i32 17
  %3426 = load ptr, ptr %3425, align 8, !tbaa !42
  %3427 = icmp eq ptr %3426, null
  br i1 %3427, label %3475, label %3428

3428:                                             ; preds = %3423, %3472
  %3429 = phi ptr [ %3473, %3472 ], [ %3426, %3423 ]
  %3430 = getelementptr inbounds %struct.bNodeSocket, ptr %3429, i64 0, i32 23
  %3431 = load ptr, ptr %3430, align 8, !tbaa !661
  %3432 = icmp eq ptr %3431, null
  br i1 %3432, label %3433, label %3472

3433:                                             ; preds = %3428
  %3434 = call i32 @nodeSocketIsHidden(ptr noundef nonnull %3429) #9
  %3435 = icmp eq i32 %3434, 0
  br i1 %3435, label %3436, label %3472

3436:                                             ; preds = %3433
  %3437 = getelementptr inbounds %struct.bNodeSocket, ptr %3429, i64 0, i32 5
  %3438 = getelementptr inbounds %struct.bNodeSocket, ptr %3429, i64 0, i32 7
  %3439 = load i16, ptr %3438, align 8, !tbaa !662
  %3440 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %3441 = call ptr %3440(i64 noundef 352, ptr noundef nonnull @.str.17) #9
  %3442 = getelementptr inbounds %struct.bNodeSocket, ptr %3441, i64 0, i32 5
  %3443 = call ptr @BLI_strncpy(ptr noundef nonnull %3442, ptr noundef nonnull %3437, i64 noundef 64) #9
  %3444 = getelementptr inbounds %struct.bNodeSocket, ptr %3441, i64 0, i32 7
  store i16 %3439, ptr %3444, align 8, !tbaa !662
  %3445 = getelementptr inbounds %struct.bNodeSocket, ptr %3441, i64 0, i32 23
  store ptr null, ptr %3445, align 8, !tbaa !661
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3441, i8 0, i64 24, i1 false)
  %3446 = load i32, ptr %3375, align 8, !tbaa !652
  %3447 = add nsw i32 %3446, 1
  store i32 %3447, ptr %3375, align 8, !tbaa !652
  %3448 = getelementptr inbounds %struct.bNodeSocket, ptr %3441, i64 0, i32 20
  store i32 %3446, ptr %3448, align 8, !tbaa !655
  %3449 = getelementptr inbounds %struct.bNodeSocket, ptr %3441, i64 0, i32 9
  store i16 4095, ptr %3449, align 4, !tbaa !663
  call void @BLI_addtail(ptr noundef nonnull %3376, ptr noundef nonnull %3441) #9
  %3450 = load i32, ptr %3377, align 8, !tbaa !664
  %3451 = or i32 %3450, 16
  store i32 %3451, ptr %3377, align 8, !tbaa !664
  %3452 = getelementptr inbounds %struct.bNodeSocket, ptr %3441, i64 0, i32 24
  %3453 = getelementptr inbounds %struct.bNodeSocket, ptr %3429, i64 0, i32 24
  %3454 = load float, ptr %3453, align 4, !tbaa !216
  store float %3454, ptr %3452, align 4, !tbaa !216
  %3455 = getelementptr inbounds %struct.bNodeSocket, ptr %3429, i64 0, i32 24, i32 0, i64 1
  %3456 = load float, ptr %3455, align 4, !tbaa !216
  %3457 = getelementptr inbounds %struct.bNodeSocket, ptr %3441, i64 0, i32 24, i32 0, i64 1
  store float %3456, ptr %3457, align 4, !tbaa !216
  %3458 = getelementptr inbounds %struct.bNodeSocket, ptr %3429, i64 0, i32 24, i32 0, i64 2
  %3459 = load float, ptr %3458, align 4, !tbaa !216
  %3460 = getelementptr inbounds %struct.bNodeSocket, ptr %3441, i64 0, i32 24, i32 0, i64 2
  store float %3459, ptr %3460, align 4, !tbaa !216
  %3461 = getelementptr inbounds %struct.bNodeSocket, ptr %3429, i64 0, i32 24, i32 0, i64 3
  %3462 = load float, ptr %3461, align 4, !tbaa !216
  %3463 = getelementptr inbounds %struct.bNodeSocket, ptr %3441, i64 0, i32 24, i32 0, i64 3
  store float %3462, ptr %3463, align 4, !tbaa !216
  %3464 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %3465 = call ptr %3464(i64 noundef 56, ptr noundef nonnull @.str.6) #9
  call void @BLI_addtail(ptr noundef nonnull %3378, ptr noundef %3465) #9
  %3466 = getelementptr inbounds %struct.bNodeLink, ptr %3465, i64 0, i32 2
  store ptr null, ptr %3466, align 8, !tbaa !665
  %3467 = getelementptr inbounds %struct.bNodeLink, ptr %3465, i64 0, i32 4
  store ptr %3441, ptr %3467, align 8, !tbaa !667
  %3468 = getelementptr inbounds %struct.bNodeLink, ptr %3465, i64 0, i32 3
  store ptr %3424, ptr %3468, align 8, !tbaa !668
  %3469 = getelementptr inbounds %struct.bNodeLink, ptr %3465, i64 0, i32 5
  store ptr %3429, ptr %3469, align 8, !tbaa !669
  %3470 = load i32, ptr %3377, align 8, !tbaa !664
  %3471 = or i32 %3470, 1
  store i32 %3471, ptr %3377, align 8, !tbaa !664
  store ptr %3465, ptr %3430, align 8, !tbaa !661
  br label %3472

3472:                                             ; preds = %3428, %3433, %3436
  %3473 = load ptr, ptr %3429, align 8, !tbaa !42
  %3474 = icmp eq ptr %3473, null
  br i1 %3474, label %3475, label %3428, !llvm.loop !670

3475:                                             ; preds = %3472, %3423
  %3476 = getelementptr inbounds %struct.bNode, ptr %3424, i64 0, i32 18
  %3477 = load ptr, ptr %3476, align 8, !tbaa !42
  %3478 = icmp eq ptr %3477, null
  br i1 %3478, label %3420, label %3479

3479:                                             ; preds = %3475, %3522
  %3480 = phi ptr [ %3523, %3522 ], [ %3477, %3475 ]
  %3481 = call i32 @nodeCountSocketLinks(ptr noundef nonnull %3361, ptr noundef nonnull %3480) #9
  %3482 = icmp eq i32 %3481, 0
  br i1 %3482, label %3483, label %3522

3483:                                             ; preds = %3479
  %3484 = call i32 @nodeSocketIsHidden(ptr noundef nonnull %3480) #9
  %3485 = icmp eq i32 %3484, 0
  br i1 %3485, label %3486, label %3522

3486:                                             ; preds = %3483
  %3487 = getelementptr inbounds %struct.bNodeSocket, ptr %3480, i64 0, i32 5
  %3488 = getelementptr inbounds %struct.bNodeSocket, ptr %3480, i64 0, i32 7
  %3489 = load i16, ptr %3488, align 8, !tbaa !662
  %3490 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %3491 = call ptr %3490(i64 noundef 352, ptr noundef nonnull @.str.17) #9
  %3492 = getelementptr inbounds %struct.bNodeSocket, ptr %3491, i64 0, i32 5
  %3493 = call ptr @BLI_strncpy(ptr noundef nonnull %3492, ptr noundef nonnull %3487, i64 noundef 64) #9
  %3494 = getelementptr inbounds %struct.bNodeSocket, ptr %3491, i64 0, i32 7
  store i16 %3489, ptr %3494, align 8, !tbaa !662
  %3495 = getelementptr inbounds %struct.bNodeSocket, ptr %3491, i64 0, i32 23
  store ptr null, ptr %3495, align 8, !tbaa !661
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3491, i8 0, i64 24, i1 false)
  %3496 = load i32, ptr %3379, align 8, !tbaa !652
  %3497 = add nsw i32 %3496, 1
  store i32 %3497, ptr %3379, align 8, !tbaa !652
  %3498 = getelementptr inbounds %struct.bNodeSocket, ptr %3491, i64 0, i32 20
  store i32 %3496, ptr %3498, align 8, !tbaa !655
  %3499 = getelementptr inbounds %struct.bNodeSocket, ptr %3491, i64 0, i32 9
  store i16 1, ptr %3499, align 4, !tbaa !663
  call void @BLI_addtail(ptr noundef nonnull %3380, ptr noundef nonnull %3491) #9
  %3500 = load i32, ptr %3381, align 8, !tbaa !664
  %3501 = or i32 %3500, 32
  store i32 %3501, ptr %3381, align 8, !tbaa !664
  %3502 = getelementptr inbounds %struct.bNodeSocket, ptr %3491, i64 0, i32 24
  %3503 = getelementptr inbounds %struct.bNodeSocket, ptr %3480, i64 0, i32 24
  %3504 = load float, ptr %3503, align 4, !tbaa !216
  store float %3504, ptr %3502, align 4, !tbaa !216
  %3505 = getelementptr inbounds %struct.bNodeSocket, ptr %3480, i64 0, i32 24, i32 0, i64 1
  %3506 = load float, ptr %3505, align 4, !tbaa !216
  %3507 = getelementptr inbounds %struct.bNodeSocket, ptr %3491, i64 0, i32 24, i32 0, i64 1
  store float %3506, ptr %3507, align 4, !tbaa !216
  %3508 = getelementptr inbounds %struct.bNodeSocket, ptr %3480, i64 0, i32 24, i32 0, i64 2
  %3509 = load float, ptr %3508, align 4, !tbaa !216
  %3510 = getelementptr inbounds %struct.bNodeSocket, ptr %3491, i64 0, i32 24, i32 0, i64 2
  store float %3509, ptr %3510, align 4, !tbaa !216
  %3511 = getelementptr inbounds %struct.bNodeSocket, ptr %3480, i64 0, i32 24, i32 0, i64 3
  %3512 = load float, ptr %3511, align 4, !tbaa !216
  %3513 = getelementptr inbounds %struct.bNodeSocket, ptr %3491, i64 0, i32 24, i32 0, i64 3
  store float %3512, ptr %3513, align 4, !tbaa !216
  %3514 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %3515 = call ptr %3514(i64 noundef 56, ptr noundef nonnull @.str.6) #9
  call void @BLI_addtail(ptr noundef nonnull %3382, ptr noundef %3515) #9
  %3516 = getelementptr inbounds %struct.bNodeLink, ptr %3515, i64 0, i32 2
  store ptr %3424, ptr %3516, align 8, !tbaa !665
  %3517 = getelementptr inbounds %struct.bNodeLink, ptr %3515, i64 0, i32 4
  store ptr %3480, ptr %3517, align 8, !tbaa !667
  %3518 = getelementptr inbounds %struct.bNodeLink, ptr %3515, i64 0, i32 3
  store ptr null, ptr %3518, align 8, !tbaa !668
  %3519 = getelementptr inbounds %struct.bNodeLink, ptr %3515, i64 0, i32 5
  store ptr %3491, ptr %3519, align 8, !tbaa !669
  %3520 = load i32, ptr %3381, align 8, !tbaa !664
  %3521 = or i32 %3520, 1
  store i32 %3521, ptr %3381, align 8, !tbaa !664
  store ptr %3515, ptr %3495, align 8, !tbaa !661
  br label %3522

3522:                                             ; preds = %3479, %3483, %3486
  %3523 = load ptr, ptr %3480, align 8, !tbaa !42
  %3524 = icmp eq ptr %3523, null
  br i1 %3524, label %3420, label %3479, !llvm.loop !671

3525:                                             ; preds = %3420, %3371
  %3526 = getelementptr inbounds %struct.bNodeTree, ptr %3361, i64 0, i32 12
  %3527 = load i32, ptr %3526, align 4, !tbaa !672
  %3528 = or i32 %3527, 1024
  store i32 %3528, ptr %3526, align 4, !tbaa !672
  %3529 = load ptr, ptr %3361, align 8, !tbaa !42
  %3530 = icmp eq ptr %3529, null
  br i1 %3530, label %3531, label %3360, !llvm.loop !673

3531:                                             ; preds = %3525, %3356, %3352, %3350
  %3532 = load i16, ptr %12, align 8, !tbaa !34
  %3533 = icmp slt i16 %3532, 256
  br i1 %3533, label %3540, label %3534

3534:                                             ; preds = %3531
  %3535 = icmp eq i16 %3532, 256
  br i1 %3535, label %3536, label %3655

3536:                                             ; preds = %3534
  %3537 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3538 = load i16, ptr %3537, align 2, !tbaa !194
  %3539 = icmp slt i16 %3538, 3
  br i1 %3539, label %3540, label %3655

3540:                                             ; preds = %3536, %3531
  %3541 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %3542 = load ptr, ptr %3541, align 8, !tbaa !42
  %3543 = icmp eq ptr %3542, null
  br i1 %3543, label %3587, label %3544

3544:                                             ; preds = %3540, %3584
  %3545 = phi ptr [ %3585, %3584 ], [ %3542, %3540 ]
  %3546 = getelementptr inbounds %struct.Material, ptr %3545, i64 0, i32 51
  %3547 = load i32, ptr %3546, align 4, !tbaa !206
  %3548 = and i32 %3547, 65536
  %3549 = icmp eq i32 %3548, 0
  br i1 %3549, label %3550, label %3584

3550:                                             ; preds = %3544
  %3551 = getelementptr inbounds %struct.Material, ptr %3545, i64 0, i32 2
  %3552 = load i16, ptr %3551, align 8, !tbaa !207
  %3553 = and i16 %3552, 2
  %3554 = icmp eq i16 %3553, 0
  br i1 %3554, label %3555, label %3584

3555:                                             ; preds = %3550, %3567
  %3556 = phi i64 [ %3569, %3567 ], [ 0, %3550 ]
  %3557 = phi i32 [ %3568, %3567 ], [ 0, %3550 ]
  %3558 = getelementptr inbounds %struct.Material, ptr %3545, i64 0, i32 102, i64 %3556
  %3559 = load ptr, ptr %3558, align 8, !tbaa !42
  %3560 = icmp eq ptr %3559, null
  br i1 %3560, label %3567, label %3561

3561:                                             ; preds = %3555
  %3562 = getelementptr inbounds %struct.MTex, ptr %3559, i64 0, i32 1
  %3563 = load i16, ptr %3562, align 2, !tbaa !674
  %3564 = and i16 %3563, 128
  %3565 = icmp eq i16 %3564, 0
  %3566 = select i1 %3565, i32 %3557, i32 1
  br label %3567

3567:                                             ; preds = %3561, %3555
  %3568 = phi i32 [ %3557, %3555 ], [ %3566, %3561 ]
  %3569 = add nuw nsw i64 %3556, 1
  %3570 = icmp eq i64 %3569, 18
  br i1 %3570, label %3571, label %3555, !llvm.loop !675

3571:                                             ; preds = %3567
  %3572 = getelementptr inbounds %struct.Material, ptr %3545, i64 0, i32 21
  %3573 = load float, ptr %3572, align 8, !tbaa !676
  %3574 = fcmp olt float %3573, 1.000000e+00
  br i1 %3574, label %3581, label %3575

3575:                                             ; preds = %3571
  %3576 = getelementptr inbounds %struct.Material, ptr %3545, i64 0, i32 31
  %3577 = load float, ptr %3576, align 8, !tbaa !677
  %3578 = fcmp ogt float %3577, 0.000000e+00
  %3579 = icmp ne i32 %3568, 0
  %3580 = select i1 %3578, i1 true, i1 %3579
  br i1 %3580, label %3581, label %3584

3581:                                             ; preds = %3575, %3571
  %3582 = and i32 %3547, -196673
  %3583 = or disjoint i32 %3582, 65536
  store i32 %3583, ptr %3546, align 4, !tbaa !206
  br label %3584

3584:                                             ; preds = %3544, %3550, %3575, %3581
  %3585 = load ptr, ptr %3545, align 8, !tbaa !42
  %3586 = icmp eq ptr %3585, null
  br i1 %3586, label %3587, label %3544, !llvm.loop !678

3587:                                             ; preds = %3584, %3540
  %3588 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %3589 = load ptr, ptr %3588, align 8, !tbaa !42
  %3590 = icmp eq ptr %3589, null
  br i1 %3590, label %3600, label %3591

3591:                                             ; preds = %3587, %3597
  %3592 = phi ptr [ %3598, %3597 ], [ %3589, %3587 ]
  %3593 = getelementptr inbounds %struct.bScreen, ptr %3592, i64 0, i32 7
  %3594 = load i32, ptr %3593, align 8, !tbaa !679
  %3595 = icmp eq i32 %3594, 0
  br i1 %3595, label %3596, label %3597

3596:                                             ; preds = %3591
  store i32 6, ptr %3593, align 8, !tbaa !679
  br label %3597

3597:                                             ; preds = %3591, %3596
  %3598 = load ptr, ptr %3592, align 8, !tbaa !42
  %3599 = icmp eq ptr %3598, null
  br i1 %3599, label %3600, label %3591, !llvm.loop !681

3600:                                             ; preds = %3597, %3587
  %3601 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 36
  %3602 = load ptr, ptr %3601, align 8, !tbaa !42
  %3603 = icmp eq ptr %3602, null
  br i1 %3603, label %3604, label %3607

3604:                                             ; preds = %3613, %3600
  %3605 = load ptr, ptr %3151, align 8, !tbaa !42
  %3606 = icmp eq ptr %3605, null
  br i1 %3606, label %3640, label %3619

3607:                                             ; preds = %3600, %3613
  %3608 = phi ptr [ %3614, %3613 ], [ %3602, %3600 ]
  %3609 = getelementptr inbounds %struct.Brush, ptr %3608, i64 0, i32 41
  %3610 = load float, ptr %3609, align 8, !tbaa !682
  %3611 = fcmp oeq float %3610, 0.000000e+00
  br i1 %3611, label %3612, label %3613

3612:                                             ; preds = %3607
  store float 0x3FD99999A0000000, ptr %3609, align 8, !tbaa !682
  br label %3613

3613:                                             ; preds = %3607, %3612
  %3614 = load ptr, ptr %3608, align 8, !tbaa !42
  %3615 = icmp eq ptr %3614, null
  br i1 %3615, label %3604, label %3607, !llvm.loop !683

3616:                                             ; preds = %3637, %3619
  %3617 = load ptr, ptr %3620, align 8, !tbaa !42
  %3618 = icmp eq ptr %3617, null
  br i1 %3618, label %3640, label %3619, !llvm.loop !684

3619:                                             ; preds = %3604, %3616
  %3620 = phi ptr [ %3617, %3616 ], [ %3605, %3604 ]
  %3621 = getelementptr inbounds %struct.Object, ptr %3620, i64 0, i32 26
  %3622 = load ptr, ptr %3621, align 8, !tbaa !42
  %3623 = icmp eq ptr %3622, null
  br i1 %3623, label %3616, label %3624

3624:                                             ; preds = %3619, %3637
  %3625 = phi ptr [ %3638, %3637 ], [ %3622, %3619 ]
  %3626 = getelementptr inbounds %struct.ModifierData, ptr %3625, i64 0, i32 2
  %3627 = load i32, ptr %3626, align 8, !tbaa !413
  %3628 = icmp eq i32 %3627, 33
  br i1 %3628, label %3629, label %3637

3629:                                             ; preds = %3624
  %3630 = getelementptr inbounds %struct.SolidifyModifierData, ptr %3625, i64 0, i32 10
  %3631 = load i32, ptr %3630, align 8, !tbaa !685
  %3632 = and i32 %3631, 16
  %3633 = icmp eq i32 %3632, 0
  br i1 %3633, label %3637, label %3634

3634:                                             ; preds = %3629
  %3635 = getelementptr inbounds %struct.SolidifyModifierData, ptr %3625, i64 0, i32 12
  store i16 1, ptr %3635, align 2, !tbaa !687
  %3636 = and i32 %3631, -17
  store i32 %3636, ptr %3630, align 8, !tbaa !685
  br label %3637

3637:                                             ; preds = %3629, %3634, %3624
  %3638 = load ptr, ptr %3625, align 8, !tbaa !42
  %3639 = icmp eq ptr %3638, null
  br i1 %3639, label %3616, label %3624, !llvm.loop !688

3640:                                             ; preds = %3616, %3604
  %3641 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 37
  %3642 = load ptr, ptr %3641, align 8, !tbaa !42
  %3643 = icmp eq ptr %3642, null
  br i1 %3643, label %3655, label %3644

3644:                                             ; preds = %3640, %3652
  %3645 = phi ptr [ %3653, %3652 ], [ %3642, %3640 ]
  %3646 = getelementptr inbounds %struct.ParticleSettings, ptr %3645, i64 0, i32 15
  %3647 = load i32, ptr %3646, align 8, !tbaa !689
  %3648 = and i32 %3647, 8192
  %3649 = icmp eq i32 %3648, 0
  br i1 %3649, label %3652, label %3650

3650:                                             ; preds = %3644
  %3651 = getelementptr inbounds %struct.ParticleSettings, ptr %3645, i64 0, i32 23
  store i16 1, ptr %3651, align 4, !tbaa !690
  br label %3652

3652:                                             ; preds = %3644, %3650
  %3653 = load ptr, ptr %3645, align 8, !tbaa !42
  %3654 = icmp eq ptr %3653, null
  br i1 %3654, label %3655, label %3644, !llvm.loop !691

3655:                                             ; preds = %3652, %3640, %3536, %3534
  br i1 %3533, label %3662, label %3656

3656:                                             ; preds = %3655
  %3657 = icmp eq i16 %3532, 256
  br i1 %3657, label %3658, label %3678

3658:                                             ; preds = %3656
  %3659 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3660 = load i16, ptr %3659, align 2, !tbaa !194
  %3661 = icmp slt i16 %3660, 6
  br i1 %3661, label %3662, label %3678

3662:                                             ; preds = %3658, %3655
  %3663 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %3664 = load ptr, ptr %3663, align 8, !tbaa !42
  %3665 = icmp eq ptr %3664, null
  br i1 %3665, label %3678, label %3666

3666:                                             ; preds = %3662, %3666
  %3667 = phi ptr [ %3676, %3666 ], [ %3664, %3662 ]
  %3668 = getelementptr inbounds %struct.Mesh, ptr %3667, i64 0, i32 15
  %3669 = load ptr, ptr %3668, align 8, !tbaa !345
  %3670 = getelementptr inbounds %struct.Mesh, ptr %3667, i64 0, i32 26
  %3671 = load i32, ptr %3670, align 8, !tbaa !341
  %3672 = getelementptr inbounds %struct.Mesh, ptr %3667, i64 0, i32 12
  %3673 = load ptr, ptr %3672, align 8, !tbaa !692
  %3674 = getelementptr inbounds %struct.Mesh, ptr %3667, i64 0, i32 28
  %3675 = load i32, ptr %3674, align 8, !tbaa !693
  call void @BKE_mesh_calc_normals_tessface(ptr noundef %3669, i32 noundef %3671, ptr noundef %3673, i32 noundef %3675, ptr noundef null) #9
  %3676 = load ptr, ptr %3667, align 8, !tbaa !42
  %3677 = icmp eq ptr %3676, null
  br i1 %3677, label %3678, label %3666, !llvm.loop !694

3678:                                             ; preds = %3666, %3662, %3658, %3656
  %3679 = load i16, ptr %12, align 8, !tbaa !34
  %3680 = icmp slt i16 %3679, 256
  br i1 %3680, label %3687, label %3681

3681:                                             ; preds = %3678
  %3682 = icmp eq i16 %3679, 256
  br i1 %3682, label %3683, label %3720

3683:                                             ; preds = %3681
  %3684 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3685 = load i16, ptr %3684, align 2, !tbaa !194
  %3686 = icmp slt i16 %3685, 2
  br i1 %3686, label %3687, label %3720

3687:                                             ; preds = %3683, %3678
  %3688 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %3689 = load ptr, ptr %3688, align 8, !tbaa !42
  %3690 = icmp eq ptr %3689, null
  br i1 %3690, label %3720, label %3691

3691:                                             ; preds = %3687, %3717
  %3692 = phi ptr [ %3718, %3717 ], [ %3689, %3687 ]
  %3693 = getelementptr inbounds %struct.Scene, ptr %3692, i64 0, i32 18
  %3694 = load ptr, ptr %3693, align 8, !tbaa !160
  %3695 = icmp eq ptr %3694, null
  br i1 %3695, label %3717, label %3696

3696:                                             ; preds = %3691
  %3697 = getelementptr inbounds %struct.bNodeTree, ptr %3694, i64 0, i32 7
  %3698 = load ptr, ptr %3697, align 8, !tbaa !42
  %3699 = icmp eq ptr %3698, null
  br i1 %3699, label %3717, label %3700

3700:                                             ; preds = %3696, %3714
  %3701 = phi ptr [ %3715, %3714 ], [ %3698, %3696 ]
  %3702 = getelementptr inbounds %struct.bNode, ptr %3701, i64 0, i32 8
  %3703 = load i16, ptr %3702, align 4, !tbaa !174
  %3704 = icmp eq i16 %3703, 211
  br i1 %3704, label %3705, label %3714

3705:                                             ; preds = %3700
  %3706 = getelementptr inbounds %struct.bNode, ptr %3701, i64 0, i32 21
  %3707 = load ptr, ptr %3706, align 8, !tbaa !534
  %3708 = getelementptr inbounds %struct.NodeBlurData, ptr %3707, i64 0, i32 9
  %3709 = load float, ptr %3708, align 4, !tbaa !695
  %3710 = fmul float %3709, 1.000000e+02
  store float %3710, ptr %3708, align 4, !tbaa !695
  %3711 = getelementptr inbounds %struct.NodeBlurData, ptr %3707, i64 0, i32 10
  %3712 = load float, ptr %3711, align 4, !tbaa !697
  %3713 = fmul float %3712, 1.000000e+02
  store float %3713, ptr %3711, align 4, !tbaa !697
  br label %3714

3714:                                             ; preds = %3700, %3705
  %3715 = load ptr, ptr %3701, align 8, !tbaa !42
  %3716 = icmp eq ptr %3715, null
  br i1 %3716, label %3717, label %3700, !llvm.loop !698

3717:                                             ; preds = %3714, %3696, %3691
  %3718 = load ptr, ptr %3692, align 8, !tbaa !42
  %3719 = icmp eq ptr %3718, null
  br i1 %3719, label %3720, label %3691, !llvm.loop !699

3720:                                             ; preds = %3717, %3687, %3683, %3681
  %3721 = icmp slt i16 %3679, 258
  br i1 %3721, label %3728, label %3722

3722:                                             ; preds = %3720
  %3723 = icmp eq i16 %3679, 258
  br i1 %3723, label %3724, label %3868

3724:                                             ; preds = %3722
  %3725 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3726 = load i16, ptr %3725, align 2, !tbaa !194
  %3727 = icmp slt i16 %3726, 1
  br i1 %3727, label %3728, label %3868

3728:                                             ; preds = %3724, %3720
  %3729 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %3730 = load ptr, ptr %3729, align 8, !tbaa !42
  %3731 = icmp eq ptr %3730, null
  br i1 %3731, label %3801, label %3735

3732:                                             ; preds = %3740, %3735
  %3733 = load ptr, ptr %3736, align 8, !tbaa !42
  %3734 = icmp eq ptr %3733, null
  br i1 %3734, label %3801, label %3735, !llvm.loop !700

3735:                                             ; preds = %3728, %3732
  %3736 = phi ptr [ %3733, %3732 ], [ %3730, %3728 ]
  %3737 = getelementptr inbounds %struct.bScreen, ptr %3736, i64 0, i32 3
  %3738 = load ptr, ptr %3737, align 8, !tbaa !42
  %3739 = icmp eq ptr %3738, null
  br i1 %3739, label %3732, label %3743

3740:                                             ; preds = %3798, %3770
  %3741 = load ptr, ptr %3744, align 8, !tbaa !42
  %3742 = icmp eq ptr %3741, null
  br i1 %3742, label %3732, label %3743, !llvm.loop !701

3743:                                             ; preds = %3735, %3740
  %3744 = phi ptr [ %3741, %3740 ], [ %3738, %3735 ]
  %3745 = getelementptr inbounds %struct.ScrArea, ptr %3744, i64 0, i32 19
  %3746 = load ptr, ptr %3745, align 8, !tbaa !123
  %3747 = getelementptr inbounds %struct.SpaceLink, ptr %3746, i64 0, i32 3
  %3748 = load i32, ptr %3747, align 8, !tbaa !124
  %3749 = icmp eq i32 %3748, 6
  br i1 %3749, label %3750, label %3770

3750:                                             ; preds = %3743
  %3751 = getelementptr inbounds %struct.ScrArea, ptr %3744, i64 0, i32 20
  %3752 = load ptr, ptr %3751, align 8, !tbaa !42
  %3753 = icmp eq ptr %3752, null
  br i1 %3753, label %3770, label %3754

3754:                                             ; preds = %3750, %3767
  %3755 = phi ptr [ %3768, %3767 ], [ %3752, %3750 ]
  %3756 = getelementptr inbounds %struct.ARegion, ptr %3755, i64 0, i32 8
  %3757 = load i16, ptr %3756, align 2, !tbaa !114
  %3758 = icmp eq i16 %3757, 0
  br i1 %3758, label %3759, label %3767

3759:                                             ; preds = %3754
  %3760 = getelementptr inbounds %struct.ARegion, ptr %3755, i64 0, i32 2, i32 15
  store i16 0, ptr %3760, align 4, !tbaa !702
  %3761 = getelementptr inbounds %struct.ARegion, ptr %3755, i64 0, i32 2, i32 13
  store i16 0, ptr %3761, align 8, !tbaa !703
  %3762 = getelementptr inbounds %struct.ARegion, ptr %3755, i64 0, i32 2, i32 12
  store i16 0, ptr %3762, align 2, !tbaa !704
  %3763 = getelementptr inbounds %struct.ARegion, ptr %3755, i64 0, i32 2, i32 11
  store i16 0, ptr %3763, align 4, !tbaa !705
  %3764 = getelementptr inbounds %struct.ARegion, ptr %3755, i64 0, i32 2, i32 9
  store i16 0, ptr %3764, align 8, !tbaa !706
  %3765 = getelementptr inbounds %struct.ARegion, ptr %3755, i64 0, i32 2, i32 8
  store float 0.000000e+00, ptr %3765, align 4, !tbaa !707
  %3766 = getelementptr inbounds %struct.ARegion, ptr %3755, i64 0, i32 2, i32 7
  store float 0.000000e+00, ptr %3766, align 8, !tbaa !708
  br label %3767

3767:                                             ; preds = %3754, %3759
  %3768 = load ptr, ptr %3755, align 8, !tbaa !42
  %3769 = icmp eq ptr %3768, null
  br i1 %3769, label %3770, label %3754, !llvm.loop !709

3770:                                             ; preds = %3767, %3750, %3743
  %3771 = load ptr, ptr %3745, align 8, !tbaa !42
  %3772 = icmp eq ptr %3771, null
  br i1 %3772, label %3740, label %3773

3773:                                             ; preds = %3770, %3798
  %3774 = phi ptr [ %3799, %3798 ], [ %3771, %3770 ]
  %3775 = getelementptr inbounds %struct.SpaceLink, ptr %3774, i64 0, i32 3
  %3776 = load i32, ptr %3775, align 8, !tbaa !124
  %3777 = icmp eq i32 %3776, 6
  br i1 %3777, label %3778, label %3798

3778:                                             ; preds = %3773
  %3779 = getelementptr inbounds %struct.SpaceLink, ptr %3774, i64 0, i32 2
  %3780 = load ptr, ptr %3779, align 8, !tbaa !42
  %3781 = icmp eq ptr %3780, null
  br i1 %3781, label %3798, label %3782

3782:                                             ; preds = %3778, %3795
  %3783 = phi ptr [ %3796, %3795 ], [ %3780, %3778 ]
  %3784 = getelementptr inbounds %struct.ARegion, ptr %3783, i64 0, i32 8
  %3785 = load i16, ptr %3784, align 2, !tbaa !114
  %3786 = icmp eq i16 %3785, 0
  br i1 %3786, label %3787, label %3795

3787:                                             ; preds = %3782
  %3788 = getelementptr inbounds %struct.ARegion, ptr %3783, i64 0, i32 2, i32 15
  store i16 0, ptr %3788, align 4, !tbaa !702
  %3789 = getelementptr inbounds %struct.ARegion, ptr %3783, i64 0, i32 2, i32 13
  store i16 0, ptr %3789, align 8, !tbaa !703
  %3790 = getelementptr inbounds %struct.ARegion, ptr %3783, i64 0, i32 2, i32 12
  store i16 0, ptr %3790, align 2, !tbaa !704
  %3791 = getelementptr inbounds %struct.ARegion, ptr %3783, i64 0, i32 2, i32 11
  store i16 0, ptr %3791, align 4, !tbaa !705
  %3792 = getelementptr inbounds %struct.ARegion, ptr %3783, i64 0, i32 2, i32 9
  store i16 0, ptr %3792, align 8, !tbaa !706
  %3793 = getelementptr inbounds %struct.ARegion, ptr %3783, i64 0, i32 2, i32 8
  store float 0.000000e+00, ptr %3793, align 4, !tbaa !707
  %3794 = getelementptr inbounds %struct.ARegion, ptr %3783, i64 0, i32 2, i32 7
  store float 0.000000e+00, ptr %3794, align 8, !tbaa !708
  br label %3795

3795:                                             ; preds = %3782, %3787
  %3796 = load ptr, ptr %3783, align 8, !tbaa !42
  %3797 = icmp eq ptr %3796, null
  br i1 %3797, label %3798, label %3782, !llvm.loop !710

3798:                                             ; preds = %3795, %3778, %3773
  %3799 = load ptr, ptr %3774, align 8, !tbaa !42
  %3800 = icmp eq ptr %3799, null
  br i1 %3800, label %3740, label %3773, !llvm.loop !711

3801:                                             ; preds = %3732, %3728
  %3802 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %3803 = load ptr, ptr %3802, align 8, !tbaa !42
  %3804 = icmp eq ptr %3803, null
  br i1 %3804, label %3805, label %3808

3805:                                             ; preds = %3835, %3801
  %3806 = load ptr, ptr %3151, align 8, !tbaa !42
  %3807 = icmp eq ptr %3806, null
  br i1 %3807, label %3858, label %3841

3808:                                             ; preds = %3801, %3835
  %3809 = phi ptr [ %3836, %3835 ], [ %3803, %3801 ]
  %3810 = getelementptr inbounds %struct.Tex, ptr %3809, i64 0, i32 58
  %3811 = load ptr, ptr %3810, align 8, !tbaa !712
  %3812 = icmp eq ptr %3811, null
  br i1 %3812, label %3835, label %3813

3813:                                             ; preds = %3808
  %3814 = getelementptr inbounds %struct.PointDensity, ptr %3811, i64 0, i32 21
  %3815 = load float, ptr %3814, align 8, !tbaa !713
  %3816 = fcmp oeq float %3815, 0.000000e+00
  br i1 %3816, label %3817, label %3818

3817:                                             ; preds = %3813
  store float 1.000000e+02, ptr %3814, align 8, !tbaa !713
  br label %3818

3818:                                             ; preds = %3817, %3813
  %3819 = getelementptr inbounds %struct.PointDensity, ptr %3811, i64 0, i32 24
  %3820 = load ptr, ptr %3819, align 8, !tbaa !715
  %3821 = icmp eq ptr %3820, null
  br i1 %3821, label %3822, label %3835

3822:                                             ; preds = %3818
  %3823 = call ptr @curvemapping_add(i32 noundef 1, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #9
  %3824 = load ptr, ptr %3810, align 8, !tbaa !712
  %3825 = getelementptr inbounds %struct.PointDensity, ptr %3824, i64 0, i32 24
  store ptr %3823, ptr %3825, align 8, !tbaa !715
  %3826 = getelementptr inbounds %struct.CurveMapping, ptr %3823, i64 0, i32 2
  store i32 0, ptr %3826, align 8, !tbaa !528
  %3827 = getelementptr inbounds %struct.CurveMapping, ptr %3823, i64 0, i32 6, i64 0, i32 1
  %3828 = load i16, ptr %3827, align 2, !tbaa !716
  %3829 = and i16 %3828, -2
  store i16 %3829, ptr %3827, align 2, !tbaa !716
  %3830 = getelementptr inbounds %struct.CurveMapping, ptr %3823, i64 0, i32 6
  %3831 = getelementptr inbounds %struct.CurveMapping, ptr %3823, i64 0, i32 5
  call void @curvemap_reset(ptr noundef nonnull %3830, ptr noundef nonnull %3831, i32 noundef 0, i32 noundef 1) #9
  %3832 = load ptr, ptr %3810, align 8, !tbaa !712
  %3833 = getelementptr inbounds %struct.PointDensity, ptr %3832, i64 0, i32 24
  %3834 = load ptr, ptr %3833, align 8, !tbaa !715
  call void @curvemapping_changed(ptr noundef %3834, i8 noundef zeroext 0) #9
  br label %3835

3835:                                             ; preds = %3808, %3822, %3818
  %3836 = load ptr, ptr %3809, align 8, !tbaa !42
  %3837 = icmp eq ptr %3836, null
  br i1 %3837, label %3805, label %3808, !llvm.loop !718

3838:                                             ; preds = %3855, %3841
  %3839 = load ptr, ptr %3842, align 8, !tbaa !42
  %3840 = icmp eq ptr %3839, null
  br i1 %3840, label %3858, label %3841, !llvm.loop !719

3841:                                             ; preds = %3805, %3838
  %3842 = phi ptr [ %3839, %3838 ], [ %3806, %3805 ]
  %3843 = getelementptr inbounds %struct.Object, ptr %3842, i64 0, i32 94
  %3844 = load ptr, ptr %3843, align 8, !tbaa !42
  %3845 = icmp eq ptr %3844, null
  br i1 %3845, label %3838, label %3846

3846:                                             ; preds = %3841, %3855
  %3847 = phi ptr [ %3856, %3855 ], [ %3844, %3841 ]
  %3848 = getelementptr inbounds %struct.bActuator, ptr %3847, i64 0, i32 3
  %3849 = load i16, ptr %3848, align 8, !tbaa !53
  %3850 = icmp eq i16 %3849, 3
  br i1 %3850, label %3851, label %3855

3851:                                             ; preds = %3846
  %3852 = getelementptr inbounds %struct.bActuator, ptr %3847, i64 0, i32 8
  %3853 = load ptr, ptr %3852, align 8, !tbaa !55
  %3854 = getelementptr inbounds %struct.bCameraActuator, ptr %3853, i64 0, i32 4
  store float 3.125000e-02, ptr %3854, align 4, !tbaa !720
  br label %3855

3855:                                             ; preds = %3846, %3851
  %3856 = load ptr, ptr %3847, align 8, !tbaa !42
  %3857 = icmp eq ptr %3856, null
  br i1 %3857, label %3838, label %3846, !llvm.loop !722

3858:                                             ; preds = %3838, %3805
  %3859 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 37
  %3860 = load ptr, ptr %3859, align 8, !tbaa !42
  %3861 = icmp eq ptr %3860, null
  br i1 %3861, label %3868, label %3862

3862:                                             ; preds = %3858, %3862
  %3863 = phi ptr [ %3866, %3862 ], [ %3860, %3858 ]
  %3864 = getelementptr inbounds %struct.ParticleSettings, ptr %3863, i64 0, i32 44
  %3865 = getelementptr inbounds %struct.ParticleSettings, ptr %3863, i64 0, i32 44, i64 1
  store float 1.000000e+00, ptr %3865, align 4, !tbaa !216
  store float 1.000000e+00, ptr %3864, align 8, !tbaa !216
  %3866 = load ptr, ptr %3863, align 8, !tbaa !42
  %3867 = icmp eq ptr %3866, null
  br i1 %3867, label %3868, label %3862, !llvm.loop !723

3868:                                             ; preds = %3862, %3858, %3724, %3722
  %3869 = load i16, ptr %12, align 8, !tbaa !34
  %3870 = icmp slt i16 %3869, 259
  br i1 %3870, label %3877, label %3871

3871:                                             ; preds = %3868
  %3872 = icmp eq i16 %3869, 259
  br i1 %3872, label %3873, label %4073

3873:                                             ; preds = %3871
  %3874 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3875 = load i16, ptr %3874, align 2, !tbaa !194
  %3876 = icmp slt i16 %3875, 1
  br i1 %3876, label %3877, label %4073

3877:                                             ; preds = %3873, %3868
  %3878 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %3879 = load ptr, ptr %3878, align 8, !tbaa !42
  %3880 = icmp eq ptr %3879, null
  br i1 %3880, label %3900, label %3881

3881:                                             ; preds = %3877
  %3882 = getelementptr inbounds %struct.SeqIterator, ptr %8, i64 0, i32 4
  %3883 = getelementptr inbounds %struct.SeqIterator, ptr %8, i64 0, i32 3
  br label %3884

3884:                                             ; preds = %3881, %3897
  %3885 = phi ptr [ %3879, %3881 ], [ %3898, %3897 ]
  %3886 = getelementptr inbounds %struct.Scene, ptr %3885, i64 0, i32 22, i32 4, i32 6
  store i32 2, ptr %3886, align 8, !tbaa !724
  %3887 = getelementptr inbounds %struct.Scene, ptr %3885, i64 0, i32 23, i32 7
  store float 1.000000e+00, ptr %3887, align 8, !tbaa !725
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #9
  %3888 = getelementptr inbounds %struct.Scene, ptr %3885, i64 0, i32 19
  %3889 = load ptr, ptr %3888, align 8, !tbaa !77
  call void @BKE_sequence_iterator_begin(ptr noundef %3889, ptr noundef nonnull %8, i8 noundef zeroext 0) #9
  %3890 = load i32, ptr %3882, align 8, !tbaa !98
  %3891 = icmp eq i32 %3890, 0
  br i1 %3891, label %3897, label %3892

3892:                                             ; preds = %3884, %3892
  %3893 = load ptr, ptr %3883, align 8, !tbaa !100
  %3894 = getelementptr inbounds %struct.Sequence, ptr %3893, i64 0, i32 40
  store float 1.000000e+00, ptr %3894, align 4, !tbaa !726
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %8) #9
  %3895 = load i32, ptr %3882, align 8, !tbaa !98
  %3896 = icmp eq i32 %3895, 0
  br i1 %3896, label %3897, label %3892, !llvm.loop !727

3897:                                             ; preds = %3892, %3884
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #9
  %3898 = load ptr, ptr %3885, align 8, !tbaa !42
  %3899 = icmp eq ptr %3898, null
  br i1 %3899, label %3900, label %3884, !llvm.loop !728

3900:                                             ; preds = %3897, %3877
  %3901 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %3902 = load ptr, ptr %3901, align 8, !tbaa !42
  %3903 = icmp eq ptr %3902, null
  br i1 %3903, label %3967, label %3907

3904:                                             ; preds = %3912, %3907
  %3905 = load ptr, ptr %3908, align 8, !tbaa !42
  %3906 = icmp eq ptr %3905, null
  br i1 %3906, label %3967, label %3907, !llvm.loop !729

3907:                                             ; preds = %3900, %3904
  %3908 = phi ptr [ %3905, %3904 ], [ %3902, %3900 ]
  %3909 = getelementptr inbounds %struct.bScreen, ptr %3908, i64 0, i32 3
  %3910 = load ptr, ptr %3909, align 8, !tbaa !42
  %3911 = icmp eq ptr %3910, null
  br i1 %3911, label %3904, label %3915

3912:                                             ; preds = %3964, %3939
  %3913 = load ptr, ptr %3916, align 8, !tbaa !42
  %3914 = icmp eq ptr %3913, null
  br i1 %3914, label %3904, label %3915, !llvm.loop !730

3915:                                             ; preds = %3907, %3912
  %3916 = phi ptr [ %3913, %3912 ], [ %3910, %3907 ]
  %3917 = getelementptr inbounds %struct.ScrArea, ptr %3916, i64 0, i32 19
  %3918 = load ptr, ptr %3917, align 8, !tbaa !123
  %3919 = getelementptr inbounds %struct.SpaceLink, ptr %3918, i64 0, i32 3
  %3920 = load i32, ptr %3919, align 8, !tbaa !124
  %3921 = icmp eq i32 %3920, 8
  br i1 %3921, label %3922, label %3939

3922:                                             ; preds = %3915
  %3923 = getelementptr inbounds %struct.ScrArea, ptr %3916, i64 0, i32 20
  %3924 = load ptr, ptr %3923, align 8, !tbaa !42
  %3925 = icmp eq ptr %3924, null
  br i1 %3925, label %3939, label %3926

3926:                                             ; preds = %3922, %3936
  %3927 = phi ptr [ %3937, %3936 ], [ %3924, %3922 ]
  %3928 = getelementptr inbounds %struct.ARegion, ptr %3927, i64 0, i32 8
  %3929 = load i16, ptr %3928, align 2, !tbaa !114
  %3930 = icmp eq i16 %3929, 0
  br i1 %3930, label %3931, label %3936

3931:                                             ; preds = %3926
  %3932 = getelementptr inbounds %struct.ARegion, ptr %3927, i64 0, i32 2, i32 5, i64 1
  %3933 = load float, ptr %3932, align 4, !tbaa !216
  %3934 = fcmp oeq float %3933, 4.000000e+00
  br i1 %3934, label %3935, label %3936

3935:                                             ; preds = %3931
  store float 5.000000e-01, ptr %3932, align 4, !tbaa !216
  br label %3936

3936:                                             ; preds = %3926, %3935, %3931
  %3937 = load ptr, ptr %3927, align 8, !tbaa !42
  %3938 = icmp eq ptr %3937, null
  br i1 %3938, label %3939, label %3926, !llvm.loop !731

3939:                                             ; preds = %3936, %3922, %3915
  %3940 = load ptr, ptr %3917, align 8, !tbaa !42
  %3941 = icmp eq ptr %3940, null
  br i1 %3941, label %3912, label %3942

3942:                                             ; preds = %3939, %3964
  %3943 = phi ptr [ %3965, %3964 ], [ %3940, %3939 ]
  %3944 = getelementptr inbounds %struct.SpaceLink, ptr %3943, i64 0, i32 3
  %3945 = load i32, ptr %3944, align 8, !tbaa !124
  %3946 = icmp eq i32 %3945, 8
  br i1 %3946, label %3947, label %3964

3947:                                             ; preds = %3942
  %3948 = getelementptr inbounds %struct.SpaceLink, ptr %3943, i64 0, i32 2
  %3949 = load ptr, ptr %3948, align 8, !tbaa !42
  %3950 = icmp eq ptr %3949, null
  br i1 %3950, label %3964, label %3951

3951:                                             ; preds = %3947, %3961
  %3952 = phi ptr [ %3962, %3961 ], [ %3949, %3947 ]
  %3953 = getelementptr inbounds %struct.ARegion, ptr %3952, i64 0, i32 8
  %3954 = load i16, ptr %3953, align 2, !tbaa !114
  %3955 = icmp eq i16 %3954, 0
  br i1 %3955, label %3956, label %3961

3956:                                             ; preds = %3951
  %3957 = getelementptr inbounds %struct.ARegion, ptr %3952, i64 0, i32 2, i32 5, i64 1
  %3958 = load float, ptr %3957, align 4, !tbaa !216
  %3959 = fcmp oeq float %3958, 4.000000e+00
  br i1 %3959, label %3960, label %3961

3960:                                             ; preds = %3956
  store float 5.000000e-01, ptr %3957, align 4, !tbaa !216
  br label %3961

3961:                                             ; preds = %3951, %3960, %3956
  %3962 = load ptr, ptr %3952, align 8, !tbaa !42
  %3963 = icmp eq ptr %3962, null
  br i1 %3963, label %3964, label %3951, !llvm.loop !732

3964:                                             ; preds = %3961, %3947, %3942
  %3965 = load ptr, ptr %3943, align 8, !tbaa !42
  %3966 = icmp eq ptr %3965, null
  br i1 %3966, label %3912, label %3942, !llvm.loop !733

3967:                                             ; preds = %3904, %3900
  %3968 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 34
  %3969 = load ptr, ptr %3968, align 8, !tbaa !42
  %3970 = icmp eq ptr %3969, null
  br i1 %3970, label %3974, label %3977

3971:                                             ; preds = %4014, %3977
  %3972 = load ptr, ptr %3978, align 8, !tbaa !42
  %3973 = icmp eq ptr %3972, null
  br i1 %3973, label %3974, label %3977, !llvm.loop !734

3974:                                             ; preds = %3971, %3967
  %3975 = load ptr, ptr %3151, align 8, !tbaa !42
  %3976 = icmp eq ptr %3975, null
  br i1 %3976, label %4073, label %4020

3977:                                             ; preds = %3967, %3971
  %3978 = phi ptr [ %3972, %3971 ], [ %3969, %3967 ]
  %3979 = getelementptr inbounds %struct.bAction, ptr %3978, i64 0, i32 1
  %3980 = load ptr, ptr %3979, align 8, !tbaa !42
  %3981 = icmp eq ptr %3980, null
  br i1 %3981, label %3971, label %3982

3982:                                             ; preds = %3977, %4014
  %3983 = phi ptr [ %4015, %4014 ], [ %3980, %3977 ]
  %3984 = getelementptr inbounds %struct.FCurve, ptr %3983, i64 0, i32 9
  %3985 = load i16, ptr %3984, align 8, !tbaa !735
  %3986 = and i16 %3985, 32
  %3987 = icmp eq i16 %3986, 0
  br i1 %3987, label %4014, label %3988

3988:                                             ; preds = %3982
  %3989 = getelementptr inbounds %struct.FCurve, ptr %3983, i64 0, i32 7
  %3990 = load i32, ptr %3989, align 8, !tbaa !737
  %3991 = icmp eq i32 %3990, 0
  br i1 %3991, label %4014, label %3992

3992:                                             ; preds = %3988
  %3993 = getelementptr inbounds %struct.FCurve, ptr %3983, i64 0, i32 5
  %3994 = load ptr, ptr %3993, align 8, !tbaa !738
  %3995 = icmp eq ptr %3994, null
  br i1 %3995, label %4014, label %3996

3996:                                             ; preds = %3992, %4008
  %3997 = phi i32 [ %4009, %4008 ], [ 0, %3992 ]
  %3998 = phi ptr [ %4010, %4008 ], [ %3994, %3992 ]
  %3999 = getelementptr inbounds %struct.BezTriple, ptr %3998, i64 0, i32 5
  %4000 = load i8, ptr %3999, align 1, !tbaa !739
  %4001 = icmp eq i8 %4000, 1
  br i1 %4001, label %4002, label %4003

4002:                                             ; preds = %3996
  store i8 4, ptr %3999, align 1, !tbaa !739
  br label %4003

4003:                                             ; preds = %4002, %3996
  %4004 = getelementptr inbounds %struct.BezTriple, ptr %3998, i64 0, i32 6
  %4005 = load i8, ptr %4004, align 2, !tbaa !740
  %4006 = icmp eq i8 %4005, 1
  br i1 %4006, label %4007, label %4008

4007:                                             ; preds = %4003
  store i8 4, ptr %4004, align 2, !tbaa !740
  br label %4008

4008:                                             ; preds = %4003, %4007
  %4009 = add nuw i32 %3997, 1
  %4010 = getelementptr inbounds %struct.BezTriple, ptr %3998, i64 1
  %4011 = icmp eq i32 %4009, %3990
  br i1 %4011, label %4012, label %3996, !llvm.loop !741

4012:                                             ; preds = %4008
  %4013 = and i16 %3985, -33
  store i16 %4013, ptr %3984, align 8, !tbaa !735
  br label %4014

4014:                                             ; preds = %3988, %3992, %3982, %4012
  %4015 = load ptr, ptr %3983, align 8, !tbaa !42
  %4016 = icmp eq ptr %4015, null
  br i1 %4016, label %3971, label %3982, !llvm.loop !742

4017:                                             ; preds = %4070, %4020
  %4018 = load ptr, ptr %4021, align 8, !tbaa !42
  %4019 = icmp eq ptr %4018, null
  br i1 %4019, label %4073, label %4020, !llvm.loop !743

4020:                                             ; preds = %3974, %4017
  %4021 = phi ptr [ %4018, %4017 ], [ %3975, %3974 ]
  %4022 = getelementptr inbounds %struct.Object, ptr %4021, i64 0, i32 94
  %4023 = load ptr, ptr %4022, align 8, !tbaa !42
  %4024 = icmp eq ptr %4023, null
  br i1 %4024, label %4017, label %4025

4025:                                             ; preds = %4020
  %4026 = getelementptr inbounds %struct.Object, ptr %4021, i64 0, i32 1
  %4027 = getelementptr inbounds %struct.Object, ptr %4021, i64 0, i32 14
  br label %4028

4028:                                             ; preds = %4025, %4070
  %4029 = phi ptr [ %4023, %4025 ], [ %4071, %4070 ]
  %4030 = getelementptr inbounds %struct.bActuator, ptr %4029, i64 0, i32 3
  %4031 = load i16, ptr %4030, align 8, !tbaa !53
  switch i16 %4031, label %4070 [
    i16 1, label %4032
    i16 21, label %4066
  ]

4032:                                             ; preds = %4028
  %4033 = getelementptr inbounds %struct.bActuator, ptr %4029, i64 0, i32 8
  %4034 = load ptr, ptr %4033, align 8, !tbaa !55
  %4035 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %4036 = call ptr %4035(i64 noundef 168, ptr noundef nonnull @.str.7) #9
  %4037 = getelementptr inbounds %struct.bIpoActuator, ptr %4034, i64 0, i32 1
  %4038 = load i16, ptr %4037, align 2, !tbaa !744
  %4039 = getelementptr inbounds %struct.bActionActuator, ptr %4036, i64 0, i32 1
  store i16 %4038, ptr %4039, align 8, !tbaa !746
  %4040 = load i16, ptr %4034, align 4, !tbaa !748
  %4041 = getelementptr inbounds %struct.bActionActuator, ptr %4036, i64 0, i32 2
  store i16 %4040, ptr %4041, align 2, !tbaa !749
  %4042 = getelementptr inbounds %struct.bIpoActuator, ptr %4034, i64 0, i32 2
  %4043 = load float, ptr %4042, align 4, !tbaa !750
  %4044 = getelementptr inbounds %struct.bActionActuator, ptr %4036, i64 0, i32 3
  store float %4043, ptr %4044, align 4, !tbaa !751
  %4045 = getelementptr inbounds %struct.bIpoActuator, ptr %4034, i64 0, i32 3
  %4046 = load float, ptr %4045, align 4, !tbaa !752
  %4047 = getelementptr inbounds %struct.bActionActuator, ptr %4036, i64 0, i32 4
  store float %4046, ptr %4047, align 8, !tbaa !753
  %4048 = getelementptr inbounds %struct.bActionActuator, ptr %4036, i64 0, i32 5
  %4049 = getelementptr inbounds %struct.bIpoActuator, ptr %4034, i64 0, i32 4
  %4050 = call ptr @BLI_strncpy(ptr noundef nonnull %4048, ptr noundef nonnull %4049, i64 noundef 64) #9
  %4051 = getelementptr inbounds %struct.bActionActuator, ptr %4036, i64 0, i32 6
  %4052 = getelementptr inbounds %struct.bIpoActuator, ptr %4034, i64 0, i32 5
  %4053 = call ptr @BLI_strncpy(ptr noundef nonnull %4051, ptr noundef nonnull %4052, i64 noundef 64) #9
  %4054 = load ptr, ptr %4026, align 8, !tbaa !754
  %4055 = icmp eq ptr %4054, null
  br i1 %4055, label %4058, label %4056

4056:                                             ; preds = %4032
  %4057 = load ptr, ptr %4054, align 8, !tbaa !755
  store ptr %4057, ptr %4036, align 8, !tbaa !757
  br label %4058

4058:                                             ; preds = %4056, %4032
  %4059 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %4059(ptr noundef nonnull %4034) #9
  store ptr %4036, ptr %4033, align 8, !tbaa !55
  %4060 = getelementptr inbounds %struct.bActuator, ptr %4029, i64 0, i32 5
  store i16 15, ptr %4060, align 4, !tbaa !758
  store i16 15, ptr %4030, align 8, !tbaa !53
  %4061 = load ptr, ptr %4027, align 8, !tbaa !759
  %4062 = icmp eq ptr %4061, null
  br i1 %4062, label %4070, label %4063

4063:                                             ; preds = %4058
  %4064 = load ptr, ptr %4036, align 8, !tbaa !757
  %4065 = icmp eq ptr %4064, null
  br i1 %4065, label %4068, label %4070

4066:                                             ; preds = %4028
  %4067 = getelementptr inbounds %struct.bActuator, ptr %4029, i64 0, i32 5
  store i16 15, ptr %4067, align 4, !tbaa !758
  br label %4068

4068:                                             ; preds = %4063, %4066
  %4069 = phi i16 [ 15, %4066 ], [ 1, %4063 ]
  store i16 %4069, ptr %4030, align 8, !tbaa !53
  br label %4070

4070:                                             ; preds = %4068, %4028, %4063, %4058
  %4071 = load ptr, ptr %4029, align 8, !tbaa !42
  %4072 = icmp eq ptr %4071, null
  br i1 %4072, label %4017, label %4028, !llvm.loop !760

4073:                                             ; preds = %4017, %3974, %3873, %3871
  %4074 = load i16, ptr %12, align 8, !tbaa !34
  %4075 = icmp slt i16 %4074, 259
  br i1 %4075, label %4082, label %4076

4076:                                             ; preds = %4073
  %4077 = icmp eq i16 %4074, 259
  br i1 %4077, label %4078, label %4147

4078:                                             ; preds = %4076
  %4079 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4080 = load i16, ptr %4079, align 2, !tbaa !194
  %4081 = icmp slt i16 %4080, 2
  br i1 %4081, label %4082, label %4147

4082:                                             ; preds = %4078, %4073
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #9
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %9, ptr noundef %2) #9
  %4083 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #9
  %4084 = icmp eq i8 %4083, 1
  br i1 %4084, label %4085, label %4138

4085:                                             ; preds = %4082, %4135
  %4086 = load ptr, ptr %10, align 8, !tbaa !42
  %4087 = icmp eq ptr %4086, null
  br i1 %4087, label %4135, label %4088

4088:                                             ; preds = %4085
  %4089 = getelementptr inbounds %struct.bNodeTree, ptr %4086, i64 0, i32 7
  %4090 = load ptr, ptr %4089, align 8, !tbaa !42
  %4091 = icmp eq ptr %4090, null
  br i1 %4091, label %4112, label %4095

4092:                                             ; preds = %4108, %4104
  %4093 = load ptr, ptr %4096, align 8, !tbaa !42
  %4094 = icmp eq ptr %4093, null
  br i1 %4094, label %4112, label %4095, !llvm.loop !761

4095:                                             ; preds = %4088, %4092
  %4096 = phi ptr [ %4093, %4092 ], [ %4090, %4088 ]
  %4097 = getelementptr inbounds %struct.bNode, ptr %4096, i64 0, i32 17
  %4098 = load ptr, ptr %4097, align 8, !tbaa !42
  %4099 = icmp eq ptr %4098, null
  br i1 %4099, label %4104, label %4100

4100:                                             ; preds = %4095, %4100
  %4101 = phi ptr [ %4102, %4100 ], [ %4098, %4095 ]
  call fastcc void @do_versions_socket_default_value_259(ptr noundef nonnull %4101)
  %4102 = load ptr, ptr %4101, align 8, !tbaa !42
  %4103 = icmp eq ptr %4102, null
  br i1 %4103, label %4104, label %4100, !llvm.loop !762

4104:                                             ; preds = %4100, %4095
  %4105 = getelementptr inbounds %struct.bNode, ptr %4096, i64 0, i32 18
  %4106 = load ptr, ptr %4105, align 8, !tbaa !42
  %4107 = icmp eq ptr %4106, null
  br i1 %4107, label %4092, label %4108

4108:                                             ; preds = %4104, %4108
  %4109 = phi ptr [ %4110, %4108 ], [ %4106, %4104 ]
  call fastcc void @do_versions_socket_default_value_259(ptr noundef nonnull %4109)
  %4110 = load ptr, ptr %4109, align 8, !tbaa !42
  %4111 = icmp eq ptr %4110, null
  br i1 %4111, label %4092, label %4108, !llvm.loop !763

4112:                                             ; preds = %4092, %4088
  %4113 = load ptr, ptr %10, align 8, !tbaa !42
  %4114 = getelementptr inbounds %struct.bNodeTree, ptr %4113, i64 0, i32 22
  %4115 = load ptr, ptr %4114, align 8, !tbaa !42
  %4116 = icmp eq ptr %4115, null
  br i1 %4116, label %4121, label %4117

4117:                                             ; preds = %4112, %4117
  %4118 = phi ptr [ %4119, %4117 ], [ %4115, %4112 ]
  call fastcc void @do_versions_socket_default_value_259(ptr noundef nonnull %4118)
  %4119 = load ptr, ptr %4118, align 8, !tbaa !42
  %4120 = icmp eq ptr %4119, null
  br i1 %4120, label %4121, label %4117, !llvm.loop !764

4121:                                             ; preds = %4117, %4112
  %4122 = load ptr, ptr %10, align 8, !tbaa !42
  %4123 = getelementptr inbounds %struct.bNodeTree, ptr %4122, i64 0, i32 23
  %4124 = load ptr, ptr %4123, align 8, !tbaa !42
  %4125 = icmp eq ptr %4124, null
  br i1 %4125, label %4130, label %4126

4126:                                             ; preds = %4121, %4126
  %4127 = phi ptr [ %4128, %4126 ], [ %4124, %4121 ]
  call fastcc void @do_versions_socket_default_value_259(ptr noundef nonnull %4127)
  %4128 = load ptr, ptr %4127, align 8, !tbaa !42
  %4129 = icmp eq ptr %4128, null
  br i1 %4129, label %4130, label %4126, !llvm.loop !765

4130:                                             ; preds = %4126, %4121
  %4131 = load ptr, ptr %10, align 8, !tbaa !42
  %4132 = getelementptr inbounds %struct.bNodeTree, ptr %4131, i64 0, i32 13
  %4133 = load i32, ptr %4132, align 8, !tbaa !664
  %4134 = or i32 %4133, 65535
  store i32 %4134, ptr %4132, align 8, !tbaa !664
  br label %4135

4135:                                             ; preds = %4130, %4085
  %4136 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #9
  %4137 = icmp eq i8 %4136, 1
  br i1 %4137, label %4085, label %4138, !llvm.loop !766

4138:                                             ; preds = %4135, %4082
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %9) #9
  %4139 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 35
  %4140 = load ptr, ptr %4139, align 8, !tbaa !42
  %4141 = icmp eq ptr %4140, null
  br i1 %4141, label %4147, label %4142

4142:                                             ; preds = %4138, %4142
  %4143 = phi ptr [ %4145, %4142 ], [ %4140, %4138 ]
  %4144 = getelementptr inbounds %struct.bNodeTree, ptr %4143, i64 0, i32 17
  store i32 2, ptr %4144, align 4, !tbaa !767
  %4145 = load ptr, ptr %4143, align 8, !tbaa !42
  %4146 = icmp eq ptr %4145, null
  br i1 %4146, label %4147, label %4142, !llvm.loop !768

4147:                                             ; preds = %4142, %4138, %4078, %4076
  %4148 = load i16, ptr %12, align 8, !tbaa !34
  %4149 = icmp slt i16 %4148, 259
  br i1 %4149, label %4156, label %4150

4150:                                             ; preds = %4147
  %4151 = icmp eq i16 %4148, 259
  br i1 %4151, label %4152, label %4246

4152:                                             ; preds = %4150
  %4153 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4154 = load i16, ptr %4153, align 2, !tbaa !194
  %4155 = icmp slt i16 %4154, 4
  br i1 %4155, label %4156, label %4246

4156:                                             ; preds = %4152, %4147
  %4157 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 37
  %4158 = load ptr, ptr %4157, align 8, !tbaa !42
  %4159 = icmp eq ptr %4158, null
  br i1 %4159, label %4168, label %4160

4160:                                             ; preds = %4156, %4160
  %4161 = phi ptr [ %4166, %4160 ], [ %4158, %4156 ]
  %4162 = getelementptr inbounds %struct.ParticleSettings, ptr %4161, i64 0, i32 58
  store float 0x3FC99999A0000000, ptr %4162, align 8, !tbaa !769
  %4163 = getelementptr inbounds %struct.ParticleSettings, ptr %4161, i64 0, i32 67
  %4164 = load i16, ptr %4163, align 4, !tbaa !770
  %4165 = and i16 %4164, -2
  store i16 %4165, ptr %4163, align 4, !tbaa !770
  %4166 = load ptr, ptr %4161, align 8, !tbaa !42
  %4167 = icmp eq ptr %4166, null
  br i1 %4167, label %4168, label %4160, !llvm.loop !771

4168:                                             ; preds = %4160, %4156
  %4169 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %4170 = load ptr, ptr %4169, align 8, !tbaa !42
  %4171 = icmp eq ptr %4170, null
  br i1 %4171, label %4246, label %4172

4172:                                             ; preds = %4168, %4243
  %4173 = phi ptr [ %4244, %4243 ], [ %4170, %4168 ]
  %4174 = getelementptr inbounds %struct.Scene, ptr %4173, i64 0, i32 37, i32 31
  %4175 = load float, ptr %4174, align 4, !tbaa !772
  %4176 = fcmp oeq float %4175, 0.000000e+00
  br i1 %4176, label %4177, label %4178

4177:                                             ; preds = %4172
  store float 2.000000e+00, ptr %4174, align 4, !tbaa !772
  br label %4178

4178:                                             ; preds = %4177, %4172
  %4179 = getelementptr inbounds %struct.Scene, ptr %4173, i64 0, i32 37, i32 15
  %4180 = load float, ptr %4179, align 8, !tbaa !773
  %4181 = fcmp oeq float %4180, 0.000000e+00
  br i1 %4181, label %4182, label %4183

4182:                                             ; preds = %4178
  store float 0x3FD3333340000000, ptr %4179, align 8, !tbaa !773
  br label %4183

4183:                                             ; preds = %4182, %4178
  %4184 = getelementptr inbounds %struct.Scene, ptr %4173, i64 0, i32 37, i32 15, i32 1
  %4185 = load float, ptr %4184, align 4, !tbaa !774
  %4186 = fcmp oeq float %4185, 0.000000e+00
  br i1 %4186, label %4187, label %4188

4187:                                             ; preds = %4183
  store float 0x3FC99999A0000000, ptr %4184, align 4, !tbaa !774
  br label %4188

4188:                                             ; preds = %4187, %4183
  %4189 = getelementptr inbounds %struct.Scene, ptr %4173, i64 0, i32 37, i32 15, i32 2
  %4190 = load float, ptr %4189, align 8, !tbaa !775
  %4191 = fcmp oeq float %4190, 0.000000e+00
  br i1 %4191, label %4192, label %4193

4192:                                             ; preds = %4188
  store float 0x3FE921FB60000000, ptr %4189, align 8, !tbaa !775
  br label %4193

4193:                                             ; preds = %4192, %4188
  %4194 = getelementptr inbounds %struct.Scene, ptr %4173, i64 0, i32 37, i32 15, i32 3
  %4195 = load float, ptr %4194, align 4, !tbaa !776
  %4196 = fcmp oeq float %4195, 0.000000e+00
  br i1 %4196, label %4197, label %4198

4197:                                             ; preds = %4193
  store float 0x3FECCCCCC0000000, ptr %4194, align 4, !tbaa !776
  br label %4198

4198:                                             ; preds = %4197, %4193
  %4199 = getelementptr inbounds %struct.Scene, ptr %4173, i64 0, i32 37, i32 15, i32 4
  %4200 = load float, ptr %4199, align 8, !tbaa !777
  %4201 = fcmp oeq float %4200, 0.000000e+00
  br i1 %4201, label %4202, label %4203

4202:                                             ; preds = %4198
  store float 2.000000e+00, ptr %4199, align 8, !tbaa !777
  br label %4203

4203:                                             ; preds = %4202, %4198
  %4204 = getelementptr inbounds %struct.Scene, ptr %4173, i64 0, i32 37, i32 15, i32 5
  %4205 = load float, ptr %4204, align 4, !tbaa !778
  %4206 = fcmp oeq float %4205, 0.000000e+00
  br i1 %4206, label %4207, label %4208

4207:                                             ; preds = %4203
  store float 0x3FE3333340000000, ptr %4204, align 4, !tbaa !778
  br label %4208

4208:                                             ; preds = %4207, %4203
  %4209 = getelementptr inbounds %struct.Scene, ptr %4173, i64 0, i32 37, i32 15, i32 6
  %4210 = load float, ptr %4209, align 8, !tbaa !779
  %4211 = fcmp oeq float %4210, 0.000000e+00
  br i1 %4211, label %4212, label %4213

4212:                                             ; preds = %4208
  store float 1.200000e+01, ptr %4209, align 8, !tbaa !779
  br label %4213

4213:                                             ; preds = %4212, %4208
  %4214 = getelementptr inbounds %struct.Scene, ptr %4173, i64 0, i32 37, i32 15, i32 7
  %4215 = load float, ptr %4214, align 4, !tbaa !780
  %4216 = fcmp oeq float %4215, 0.000000e+00
  br i1 %4216, label %4217, label %4218

4217:                                             ; preds = %4213
  store float 0x3FF4CCCCC0000000, ptr %4214, align 4, !tbaa !780
  br label %4218

4218:                                             ; preds = %4217, %4213
  %4219 = getelementptr inbounds %struct.Scene, ptr %4173, i64 0, i32 37, i32 15, i32 8
  %4220 = load float, ptr %4219, align 8, !tbaa !781
  %4221 = fcmp oeq float %4220, 0.000000e+00
  br i1 %4221, label %4222, label %4223

4222:                                             ; preds = %4218
  store float 8.000000e+00, ptr %4219, align 8, !tbaa !781
  br label %4223

4223:                                             ; preds = %4222, %4218
  %4224 = getelementptr inbounds %struct.Scene, ptr %4173, i64 0, i32 37, i32 15, i32 9
  %4225 = load float, ptr %4224, align 4, !tbaa !782
  %4226 = fcmp oeq float %4225, 0.000000e+00
  br i1 %4226, label %4227, label %4228

4227:                                             ; preds = %4223
  store float 2.000000e+01, ptr %4224, align 4, !tbaa !782
  br label %4228

4228:                                             ; preds = %4227, %4223
  %4229 = getelementptr inbounds %struct.Scene, ptr %4173, i64 0, i32 37, i32 15, i32 10
  %4230 = load i32, ptr %4229, align 8, !tbaa !783
  %4231 = icmp slt i32 %4230, 3
  br i1 %4231, label %4232, label %4233

4232:                                             ; preds = %4228
  store i32 6, ptr %4229, align 8, !tbaa !783
  br label %4233

4233:                                             ; preds = %4232, %4228
  %4234 = getelementptr inbounds %struct.Scene, ptr %4173, i64 0, i32 37, i32 15, i32 11
  %4235 = load float, ptr %4234, align 4, !tbaa !784
  %4236 = fcmp oeq float %4235, 0.000000e+00
  br i1 %4236, label %4237, label %4238

4237:                                             ; preds = %4233
  store float 6.000000e+00, ptr %4234, align 4, !tbaa !784
  br label %4238

4238:                                             ; preds = %4237, %4233
  %4239 = getelementptr inbounds %struct.Scene, ptr %4173, i64 0, i32 37, i32 15, i32 12
  %4240 = load float, ptr %4239, align 8, !tbaa !785
  %4241 = fcmp oeq float %4240, 0.000000e+00
  br i1 %4241, label %4242, label %4243

4242:                                             ; preds = %4238
  store float 1.000000e+00, ptr %4239, align 8, !tbaa !785
  br label %4243

4243:                                             ; preds = %4238, %4242
  %4244 = load ptr, ptr %4173, align 8, !tbaa !42
  %4245 = icmp eq ptr %4244, null
  br i1 %4245, label %4246, label %4172, !llvm.loop !786

4246:                                             ; preds = %4243, %4168, %4152, %4150
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @blo_do_versions_newlibadr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @BKE_sequence_iterator_begin(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BLI_join_dirfile(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @sound_new_file(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @BKE_sequence_iterator_next(ptr noundef) local_unnamed_addr #2

declare void @BKE_sequence_iterator_end(ptr noundef) local_unnamed_addr #2

declare void @multires_load_old(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare ptr @modifiers_findByType(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_version_mtex_factor_2_50(ptr noundef readonly %0, i16 noundef signext %1) unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %113, label %4

4:                                                ; preds = %2, %110
  %5 = phi i64 [ %111, %110 ], [ 0, %2 ]
  %6 = getelementptr inbounds ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = icmp eq ptr %7, null
  br i1 %8, label %110, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 2
  %11 = load i16, ptr %10, align 4, !tbaa !787
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 29
  %14 = load float, ptr %13, align 8, !tbaa !788
  %15 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 28
  %16 = load float, ptr %15, align 4, !tbaa !789
  %17 = and i32 %12, 14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 31
  %21 = load float, ptr %20, align 8, !tbaa !790
  %22 = fneg float %21
  store float %22, ptr %20, align 8, !tbaa !790
  br label %23

23:                                               ; preds = %19, %9
  %24 = and i32 %12, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 30
  %28 = load float, ptr %27, align 4, !tbaa !791
  %29 = fneg float %28
  store float %29, ptr %27, align 4, !tbaa !791
  br label %30

30:                                               ; preds = %26, %23
  %31 = and i32 %12, 8192
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 32
  %35 = load float, ptr %34, align 4, !tbaa !792
  %36 = fneg float %35
  store float %36, ptr %34, align 4, !tbaa !792
  br label %37

37:                                               ; preds = %33, %30
  %38 = and i32 %12, 4
  %39 = icmp eq i32 %38, 0
  %40 = fneg float %16
  %41 = select i1 %39, float %16, float %40
  %42 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 33
  store float %41, ptr %42, align 8, !tbaa !793
  %43 = and i32 %12, 8
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, float %16, float %40
  %46 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 34
  store float %45, ptr %46, align 4, !tbaa !794
  %47 = and i32 %12, 128
  %48 = icmp eq i32 %47, 0
  %49 = fneg float %14
  %50 = select i1 %48, float %14, float %49
  %51 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 35
  store float %50, ptr %51, align 8, !tbaa !795
  %52 = and i32 %12, 16
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, float %14, float %49
  %55 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 36
  store float %54, ptr %55, align 4, !tbaa !796
  %56 = and i32 %12, 32
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, float %14, float %49
  %59 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 37
  store float %58, ptr %59, align 8, !tbaa !797
  %60 = and i32 %12, 64
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %61, float %14, float %49
  %63 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 38
  store float %62, ptr %63, align 4, !tbaa !798
  %64 = and i32 %12, 256
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, float %14, float %49
  %67 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 39
  store float %66, ptr %67, align 8, !tbaa !799
  %68 = and i32 %12, 512
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, float %14, float %49
  %71 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 40
  store float %70, ptr %71, align 4, !tbaa !800
  %72 = and i32 %12, 1024
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, float %14, float %49
  %75 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 41
  store float %74, ptr %75, align 8, !tbaa !801
  %76 = and i32 %12, 2048
  %77 = icmp eq i32 %76, 0
  %78 = select i1 %77, float %14, float %49
  %79 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 42
  store float %78, ptr %79, align 4, !tbaa !802
  %80 = and i32 %12, 1
  %81 = icmp eq i32 %80, 0
  %82 = select i1 %81, float %16, float %40
  %83 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 43
  store float %82, ptr %83, align 8, !tbaa !803
  %84 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 44
  store float %41, ptr %84, align 4, !tbaa !804
  %85 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 45
  store float %45, ptr %85, align 8, !tbaa !805
  %86 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 46
  store float %50, ptr %86, align 4, !tbaa !806
  %87 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 47
  store float %54, ptr %87, align 8, !tbaa !807
  %88 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 48
  store float %58, ptr %88, align 4, !tbaa !808
  %89 = select i1 %81, float %14, float %49
  %90 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 49
  store float %89, ptr %90, align 8, !tbaa !809
  %91 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 50
  store float %54, ptr %91, align 4, !tbaa !810
  %92 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 51
  store float %50, ptr %92, align 8, !tbaa !811
  %93 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 53
  store float %66, ptr %93, align 8, !tbaa !812
  %94 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 54
  store float %70, ptr %94, align 4, !tbaa !813
  %95 = select i1 %39, float %14, float %49
  %96 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 55
  store float %95, ptr %96, align 8, !tbaa !814
  %97 = select i1 %25, float %14, float %49
  %98 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 57
  store float %97, ptr %98, align 8, !tbaa !815
  %99 = select i1 %44, float %14, float %49
  %100 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 58
  store float %99, ptr %100, align 4, !tbaa !816
  %101 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 59
  store float %58, ptr %101, align 8, !tbaa !817
  %102 = select i1 %25, float %16, float %40
  %103 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 61
  store float %102, ptr %103, align 8, !tbaa !818
  %104 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 62
  store float %41, ptr %104, align 4, !tbaa !819
  %105 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 63
  store float %45, ptr %105, align 8, !tbaa !820
  %106 = getelementptr inbounds %struct.MTex, ptr %7, i64 0, i32 64
  store float %89, ptr %106, align 4, !tbaa !821
  switch i16 %1, label %110 [
    i16 16717, label %108
    i16 16716, label %108
    i16 20311, label %107
  ]

107:                                              ; preds = %37
  br label %108

108:                                              ; preds = %37, %37, %107
  %109 = phi float [ %102, %107 ], [ %82, %37 ], [ %82, %37 ]
  store float %109, ptr %15, align 4, !tbaa !789
  br label %110

110:                                              ; preds = %108, %37, %4
  %111 = add nuw nsw i64 %5, 1
  %112 = icmp eq i64 %111, 18
  br i1 %112, label %113, label %4, !llvm.loop !822

113:                                              ; preds = %110, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_versions_seq_unique_name_all_strips(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !42
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 19
  br label %7

7:                                                ; preds = %5, %15
  %8 = phi ptr [ %3, %5 ], [ %16, %15 ]
  %9 = load ptr, ptr %6, align 8, !tbaa !77
  %10 = getelementptr inbounds %struct.Editing, ptr %9, i64 0, i32 1
  tail call void @BKE_sequence_base_unique_name_recursive(ptr noundef nonnull %10, ptr noundef nonnull %8) #9
  %11 = getelementptr inbounds %struct.Sequence, ptr %8, i64 0, i32 36
  %12 = load ptr, ptr %11, align 8, !tbaa !823
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call fastcc void @do_versions_seq_unique_name_all_strips(ptr noundef %0, ptr noundef nonnull %11)
  br label %15

15:                                               ; preds = %14, %7
  %16 = load ptr, ptr %8, align 8, !tbaa !42
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %7, !llvm.loop !824

18:                                               ; preds = %15, %2
  ret void
}

declare void @nodeUniqueName(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @multires_load_old_250(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_spacetype_from_id(i32 noundef) local_unnamed_addr #2

declare void @BKE_area_region_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @animviz_settings_init(ptr noundef) local_unnamed_addr #2

declare void @default_mtex(ptr noundef) local_unnamed_addr #2

declare void @blo_do_version_old_trackto_to_constraints(ptr noundef) local_unnamed_addr #2

declare void @scopes_new(ptr noundef) local_unnamed_addr #2

declare ptr @modifier_new(i32 noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @init_actuator(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: nounwind uwtable
define internal fastcc void @do_version_bone_roll_256(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #9
  %3 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 13
  call void @copy_m3_m4(ptr noundef nonnull %2, ptr noundef nonnull %3) #9
  %4 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 14
  call void @mat3_to_vec_roll(ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull %4) #9
  %5 = getelementptr inbounds %struct.Bone, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1, %8
  %9 = phi ptr [ %10, %8 ], [ %6, %1 ]
  call fastcc void @do_version_bone_roll_256(ptr noundef nonnull %9)
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %8, !llvm.loop !825

12:                                               ; preds = %8, %1
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #9
  ret void
}

declare void @unit_qt(ptr noundef) local_unnamed_addr #2

declare void @unit_axis_angle(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @nodeSocketIsHidden(ptr noundef) local_unnamed_addr #2

declare i32 @nodeCountSocketLinks(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_mesh_calc_normals_tessface(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @curvemapping_add(i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @curvemap_reset(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @curvemapping_changed(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BKE_node_tree_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_node_tree_iter_step(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @do_versions_socket_default_value_259(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 15
  %3 = load ptr, ptr %2, align 8, !tbaa !826
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %52

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 7
  %7 = load i16, ptr %6, align 8, !tbaa !662
  switch i16 %7, label %52 [
    i16 0, label %8
    i16 1, label %20
    i16 2, label %38
  ]

8:                                                ; preds = %5
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %10 = tail call ptr %9(i64 noundef 16, ptr noundef nonnull @.str.18) #9
  store ptr %10, ptr %2, align 8, !tbaa !826
  %11 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 24
  %12 = load float, ptr %11, align 8, !tbaa !216
  %13 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %10, i64 0, i32 1
  store float %12, ptr %13, align 4, !tbaa !827
  %14 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 24, i32 1
  %15 = load float, ptr %14, align 8, !tbaa !829
  %16 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %10, i64 0, i32 2
  store float %15, ptr %16, align 4, !tbaa !830
  %17 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 24, i32 2
  %18 = load float, ptr %17, align 4, !tbaa !831
  %19 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %10, i64 0, i32 3
  store float %18, ptr %19, align 4, !tbaa !832
  store i32 0, ptr %10, align 4, !tbaa !833
  br label %52

20:                                               ; preds = %5
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %22 = tail call ptr %21(i64 noundef 24, ptr noundef nonnull @.str.18) #9
  store ptr %22, ptr %2, align 8, !tbaa !826
  %23 = getelementptr inbounds %struct.bNodeSocketValueVector, ptr %22, i64 0, i32 1
  %24 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 24
  %25 = load float, ptr %24, align 4, !tbaa !216
  store float %25, ptr %23, align 4, !tbaa !216
  %26 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 24, i32 0, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !216
  %28 = getelementptr inbounds %struct.bNodeSocketValueVector, ptr %22, i64 0, i32 1, i64 1
  store float %27, ptr %28, align 4, !tbaa !216
  %29 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 24, i32 0, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !216
  %31 = getelementptr inbounds %struct.bNodeSocketValueVector, ptr %22, i64 0, i32 1, i64 2
  store float %30, ptr %31, align 4, !tbaa !216
  %32 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 24, i32 1
  %33 = load float, ptr %32, align 8, !tbaa !829
  %34 = getelementptr inbounds %struct.bNodeSocketValueVector, ptr %22, i64 0, i32 2
  store float %33, ptr %34, align 4, !tbaa !834
  %35 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 24, i32 2
  %36 = load float, ptr %35, align 4, !tbaa !831
  %37 = getelementptr inbounds %struct.bNodeSocketValueVector, ptr %22, i64 0, i32 3
  store float %36, ptr %37, align 4, !tbaa !836
  store i32 0, ptr %22, align 4, !tbaa !837
  br label %52

38:                                               ; preds = %5
  %39 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %40 = tail call ptr %39(i64 noundef 16, ptr noundef nonnull @.str.18) #9
  store ptr %40, ptr %2, align 8, !tbaa !826
  %41 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 24
  %42 = load float, ptr %41, align 4, !tbaa !216
  store float %42, ptr %40, align 4, !tbaa !216
  %43 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 24, i32 0, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !216
  %45 = getelementptr inbounds float, ptr %40, i64 1
  store float %44, ptr %45, align 4, !tbaa !216
  %46 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 24, i32 0, i64 2
  %47 = load float, ptr %46, align 4, !tbaa !216
  %48 = getelementptr inbounds float, ptr %40, i64 2
  store float %47, ptr %48, align 4, !tbaa !216
  %49 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 24, i32 0, i64 3
  %50 = load float, ptr %49, align 4, !tbaa !216
  %51 = getelementptr inbounds float, ptr %40, i64 3
  store float %50, ptr %51, align 4, !tbaa !216
  br label %52

52:                                               ; preds = %8, %20, %38, %5, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @area_add_window_regions(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %103, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.SpaceLink, ptr %1, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !124
  switch i32 %7, label %103 [
    i32 2, label %8
    i32 12, label %20
    i32 13, label %27
    i32 16, label %40
    i32 5, label %48
    i32 8, label %57
    i32 1, label %87
  ]

8:                                                ; preds = %5
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %10 = tail call ptr %9(i64 noundef 384, ptr noundef nonnull @.str.8) #9
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef %10) #9
  %11 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 8
  store i16 2, ptr %11, align 2, !tbaa !114
  %12 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 9
  store i16 3, ptr %12, align 8, !tbaa !117
  %13 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 2, i32 9
  store i16 10, ptr %13, align 8, !tbaa !621
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %15 = tail call ptr %14(i64 noundef 384, ptr noundef nonnull @.str.8) #9
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef %15) #9
  %16 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 8
  store i16 4, ptr %16, align 2, !tbaa !114
  %17 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 9
  store i16 4, ptr %17, align 8, !tbaa !117
  %18 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 2, i32 9
  store i16 2, ptr %18, align 8, !tbaa !621
  %19 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 2, i32 14
  store i16 1, ptr %19, align 2, !tbaa !122
  br label %103

20:                                               ; preds = %5
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %22 = tail call ptr %21(i64 noundef 384, ptr noundef nonnull @.str.8) #9
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef %22) #9
  %23 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 8
  store i16 2, ptr %23, align 2, !tbaa !114
  %24 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 9
  store i16 3, ptr %24, align 8, !tbaa !117
  %25 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 2, i32 9
  store i16 8, ptr %25, align 8, !tbaa !621
  %26 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 2, i32 14
  store i16 2, ptr %26, align 2, !tbaa !122
  br label %103

27:                                               ; preds = %5
  %28 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %29 = tail call ptr %28(i64 noundef 384, ptr noundef nonnull @.str.8) #9
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef %29) #9
  %30 = getelementptr inbounds %struct.ARegion, ptr %29, i64 0, i32 8
  store i16 2, ptr %30, align 2, !tbaa !114
  %31 = getelementptr inbounds %struct.ARegion, ptr %29, i64 0, i32 9
  store i16 3, ptr %31, align 8, !tbaa !117
  %32 = getelementptr inbounds %struct.ARegion, ptr %29, i64 0, i32 2, i32 9
  store i16 8, ptr %32, align 8, !tbaa !621
  %33 = getelementptr inbounds %struct.ARegion, ptr %29, i64 0, i32 2, i32 14
  store i16 2, ptr %33, align 2, !tbaa !122
  %34 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %35 = tail call ptr %34(i64 noundef 384, ptr noundef nonnull @.str.8) #9
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef %35) #9
  %36 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 8
  store i16 4, ptr %36, align 2, !tbaa !114
  %37 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 9
  store i16 4, ptr %37, align 8, !tbaa !117
  %38 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 2, i32 9
  store i16 2, ptr %38, align 8, !tbaa !621
  %39 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 2, i32 14
  store i16 1, ptr %39, align 2, !tbaa !122
  br label %103

40:                                               ; preds = %5
  %41 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %42 = tail call ptr %41(i64 noundef 384, ptr noundef nonnull @.str.9) #9
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef %42) #9
  %43 = getelementptr inbounds %struct.ARegion, ptr %42, i64 0, i32 8
  store i16 4, ptr %43, align 2, !tbaa !114
  %44 = getelementptr inbounds %struct.ARegion, ptr %42, i64 0, i32 9
  store i16 3, ptr %44, align 8, !tbaa !117
  %45 = getelementptr inbounds %struct.ARegion, ptr %42, i64 0, i32 2, i32 9
  store i16 10, ptr %45, align 8, !tbaa !621
  %46 = getelementptr inbounds %struct.ARegion, ptr %42, i64 0, i32 2, i32 14
  store i16 2, ptr %46, align 2, !tbaa !122
  %47 = getelementptr inbounds %struct.ARegion, ptr %42, i64 0, i32 10
  store i16 1, ptr %47, align 2, !tbaa !425
  br label %103

48:                                               ; preds = %5
  %49 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %50 = tail call ptr %49(i64 noundef 384, ptr noundef nonnull @.str.9) #9
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef %50) #9
  %51 = getelementptr inbounds %struct.ARegion, ptr %50, i64 0, i32 8
  store i16 2, ptr %51, align 2, !tbaa !114
  %52 = getelementptr inbounds %struct.ARegion, ptr %50, i64 0, i32 9
  store i16 3, ptr %52, align 8, !tbaa !117
  %53 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %54 = tail call ptr %53(i64 noundef 384, ptr noundef nonnull @.str.10) #9
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef %54) #9
  %55 = getelementptr inbounds %struct.ARegion, ptr %54, i64 0, i32 8
  store i16 4, ptr %55, align 2, !tbaa !114
  %56 = getelementptr inbounds %struct.ARegion, ptr %54, i64 0, i32 9
  store i16 1, ptr %56, align 8, !tbaa !117
  br label %103

57:                                               ; preds = %5, %61
  %58 = phi ptr [ %59, %61 ], [ %2, %5 ]
  %59 = load ptr, ptr %58, align 8, !tbaa !42
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.ARegion, ptr %59, i64 0, i32 8
  %63 = load i16, ptr %62, align 2, !tbaa !114
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %65, label %57, !llvm.loop !838

65:                                               ; preds = %61, %57
  %66 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %67 = tail call ptr %66(i64 noundef 384, ptr noundef nonnull @.str.5) #9
  tail call void @BLI_insertlinkbefore(ptr noundef %2, ptr noundef %59, ptr noundef %67) #9
  %68 = getelementptr inbounds %struct.ARegion, ptr %67, i64 0, i32 8
  store i16 7, ptr %68, align 2, !tbaa !114
  %69 = getelementptr inbounds %struct.ARegion, ptr %67, i64 0, i32 9
  store i16 1, ptr %69, align 8, !tbaa !117
  %70 = getelementptr inbounds %struct.ARegion, ptr %67, i64 0, i32 10
  %71 = load i16, ptr %70, align 2, !tbaa !425
  %72 = or i16 %71, 1
  store i16 %72, ptr %70, align 2, !tbaa !425
  %73 = getelementptr inbounds %struct.ARegion, ptr %67, i64 0, i32 2
  %74 = getelementptr inbounds %struct.ARegion, ptr %67, i64 0, i32 2, i32 12
  store i16 6, ptr %74, align 2, !tbaa !118
  %75 = getelementptr inbounds %struct.ARegion, ptr %67, i64 0, i32 2, i32 7
  store float 0x3EE4F8B580000000, ptr %75, align 8, !tbaa !426
  %76 = getelementptr inbounds %struct.ARegion, ptr %67, i64 0, i32 2, i32 8
  store float 1.000000e+05, ptr %76, align 4, !tbaa !427
  store float -9.600000e+02, ptr %73, align 8, !tbaa !428
  %77 = getelementptr inbounds %struct.ARegion, ptr %67, i64 0, i32 2, i32 0, i32 2
  store float -5.400000e+02, ptr %77, align 8, !tbaa !429
  %78 = getelementptr inbounds %struct.ARegion, ptr %67, i64 0, i32 2, i32 0, i32 1
  store float 9.600000e+02, ptr %78, align 4, !tbaa !430
  %79 = getelementptr inbounds %struct.ARegion, ptr %67, i64 0, i32 2, i32 0, i32 3
  store float 5.400000e+02, ptr %79, align 4, !tbaa !431
  %80 = getelementptr inbounds %struct.ARegion, ptr %67, i64 0, i32 2, i32 5
  store float 0.000000e+00, ptr %80, align 8, !tbaa !216
  %81 = getelementptr inbounds %struct.ARegion, ptr %67, i64 0, i32 2, i32 5, i64 1
  store float 0.000000e+00, ptr %81, align 4, !tbaa !216
  %82 = getelementptr inbounds %struct.ARegion, ptr %67, i64 0, i32 2, i32 6
  store float 1.200000e+04, ptr %82, align 8, !tbaa !216
  %83 = getelementptr inbounds %struct.ARegion, ptr %67, i64 0, i32 2, i32 6, i64 1
  store float 1.200000e+04, ptr %83, align 4, !tbaa !216
  %84 = getelementptr inbounds %struct.ARegion, ptr %67, i64 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %84, ptr noundef nonnull align 8 dereferenceable(16) %73, i64 16, i1 false), !tbaa.struct !432
  %85 = getelementptr inbounds %struct.ARegion, ptr %67, i64 0, i32 2, i32 15
  store i16 0, ptr %85, align 4, !tbaa !121
  %86 = getelementptr inbounds %struct.ARegion, ptr %67, i64 0, i32 2, i32 11
  store i16 0, ptr %86, align 4, !tbaa !120
  br label %103

87:                                               ; preds = %5
  %88 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %89 = tail call ptr %88(i64 noundef 384, ptr noundef nonnull @.str.11) #9
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef %89) #9
  %90 = getelementptr inbounds %struct.ARegion, ptr %89, i64 0, i32 8
  store i16 5, ptr %90, align 2, !tbaa !114
  %91 = getelementptr inbounds %struct.ARegion, ptr %89, i64 0, i32 9
  store i16 3, ptr %91, align 8, !tbaa !117
  %92 = getelementptr inbounds %struct.ARegion, ptr %89, i64 0, i32 10
  store i16 1, ptr %92, align 2, !tbaa !425
  %93 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %94 = tail call ptr %93(i64 noundef 384, ptr noundef nonnull @.str.12) #9
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef %94) #9
  %95 = getelementptr inbounds %struct.ARegion, ptr %94, i64 0, i32 8
  store i16 6, ptr %95, align 2, !tbaa !114
  %96 = getelementptr inbounds %struct.ARegion, ptr %94, i64 0, i32 9
  store i16 34, ptr %96, align 8, !tbaa !117
  %97 = getelementptr inbounds %struct.ARegion, ptr %94, i64 0, i32 10
  store i16 1, ptr %97, align 2, !tbaa !425
  %98 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %99 = tail call ptr %98(i64 noundef 384, ptr noundef nonnull @.str.13) #9
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef %99) #9
  %100 = getelementptr inbounds %struct.ARegion, ptr %99, i64 0, i32 8
  store i16 4, ptr %100, align 2, !tbaa !114
  %101 = getelementptr inbounds %struct.ARegion, ptr %99, i64 0, i32 9
  store i16 4, ptr %101, align 8, !tbaa !117
  %102 = getelementptr inbounds %struct.ARegion, ptr %99, i64 0, i32 10
  store i16 1, ptr %102, align 2, !tbaa !425
  br label %103

103:                                              ; preds = %8, %20, %27, %40, %48, %65, %5, %87, %3
  %104 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %105 = tail call ptr %104(i64 noundef 384, ptr noundef nonnull @.str.8) #9
  tail call void @BLI_addtail(ptr noundef %2, ptr noundef %105) #9
  %106 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 3
  %107 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %106, ptr noundef nonnull align 8 dereferenceable(16) %107, i64 16, i1 false), !tbaa.struct !839
  %108 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 8
  store i16 0, ptr %108, align 2, !tbaa !114
  br i1 %4, label %245, label %109

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.SpaceLink, ptr %1, i64 0, i32 3
  %111 = load i32, ptr %110, align 8, !tbaa !124
  switch i32 %111, label %245 [
    i32 1, label %112
    i32 3, label %113
    i32 15, label %127
    i32 2, label %146
    i32 13, label %156
    i32 12, label %174
    i32 8, label %205
    i32 16, label %215
    i32 4, label %220
    i32 5, label %226
    i32 9, label %241
  ]

112:                                              ; preds = %109
  tail call void @blo_do_versions_view3d_split_250(ptr noundef nonnull %1, ptr noundef %2) #9
  br label %245

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2
  %115 = getelementptr inbounds %struct.SpaceOops, ptr %1, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %114, ptr noundef nonnull align 8 dereferenceable(160) %115, i64 160, i1 false)
  %116 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 9
  %117 = load i16, ptr %116, align 8, !tbaa !621
  %118 = and i16 %117, -12
  %119 = or disjoint i16 %118, 10
  store i16 %119, ptr %116, align 8, !tbaa !621
  %120 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 15
  store i16 6, ptr %120, align 4, !tbaa !121
  %121 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 12
  %122 = load i16, ptr %121, align 2, !tbaa !118
  %123 = or i16 %122, 770
  store i16 %123, ptr %121, align 2, !tbaa !118
  %124 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 11
  store i16 2, ptr %124, align 4, !tbaa !120
  %125 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 8
  store float 1.000000e+00, ptr %125, align 4, !tbaa !427
  %126 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 7
  store float 1.000000e+00, ptr %126, align 8, !tbaa !426
  br label %245

127:                                              ; preds = %109
  %128 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2
  %129 = getelementptr inbounds %struct.SpaceTime, ptr %1, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %128, ptr noundef nonnull align 8 dereferenceable(160) %129, i64 160, i1 false)
  %130 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 9
  %131 = load i16, ptr %130, align 8, !tbaa !621
  %132 = or i16 %131, 72
  store i16 %132, ptr %130, align 8, !tbaa !621
  %133 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 15
  %134 = load i16, ptr %133, align 4, !tbaa !121
  %135 = or i16 %134, 8
  store i16 %135, ptr %133, align 4, !tbaa !121
  %136 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 13
  %137 = load i16, ptr %136, align 8, !tbaa !119
  %138 = or i16 %137, 4
  store i16 %138, ptr %136, align 8, !tbaa !119
  %139 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 12
  %140 = load i16, ptr %139, align 2, !tbaa !118
  %141 = or i16 %140, 512
  store i16 %141, ptr %139, align 2, !tbaa !118
  %142 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 1, i32 2
  store float -1.000000e+01, ptr %142, align 8, !tbaa !491
  %143 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 0, i32 2
  store float -1.000000e+01, ptr %143, align 8, !tbaa !429
  %144 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 6, i64 1
  store float 2.000000e+01, ptr %144, align 4, !tbaa !216
  %145 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 5, i64 1
  store float 2.000000e+01, ptr %145, align 4, !tbaa !216
  br label %245

146:                                              ; preds = %109
  %147 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2
  %148 = getelementptr inbounds %struct.SpaceIpo, ptr %1, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %147, ptr noundef nonnull align 8 dereferenceable(160) %148, i64 160, i1 false)
  %149 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 9
  %150 = load i16, ptr %149, align 8, !tbaa !621
  %151 = or i16 %150, 105
  store i16 %151, ptr %149, align 8, !tbaa !621
  %152 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 5
  store float 0x3810000000000000, ptr %152, align 8, !tbaa !216
  %153 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 5, i64 1
  store float 0x3810000000000000, ptr %153, align 4, !tbaa !216
  %154 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 6
  store float 3.000000e+05, ptr %154, align 8, !tbaa !216
  %155 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 6, i64 1
  store float 0x47EFFFFFE0000000, ptr %155, align 4, !tbaa !216
  br label %245

156:                                              ; preds = %109
  %157 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2
  %158 = getelementptr inbounds %struct.SpaceNla, ptr %1, i64 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %157, ptr noundef nonnull align 8 dereferenceable(160) %158, i64 160, i1 false)
  %159 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 11
  %160 = load i16, ptr %159, align 4, !tbaa !490
  %161 = sext i16 %160 to i32
  %162 = sub nsw i32 0, %161
  %163 = sitofp i32 %162 to float
  %164 = fdiv float %163, 3.000000e+00
  %165 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 0, i32 2
  store float %164, ptr %165, align 8, !tbaa !429
  %166 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 0, i32 3
  store float 0.000000e+00, ptr %166, align 4, !tbaa !431
  %167 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 9
  %168 = load i16, ptr %167, align 8, !tbaa !621
  %169 = or i16 %168, 74
  store i16 %169, ptr %167, align 8, !tbaa !621
  %170 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 15
  store i16 4, ptr %170, align 4, !tbaa !121
  %171 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 14
  %172 = load i16, ptr %171, align 2, !tbaa !122
  %173 = or i16 %172, 2
  store i16 %173, ptr %171, align 2, !tbaa !122
  br label %245

174:                                              ; preds = %109
  %175 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2
  store float -2.000000e+01, ptr %175, align 8, !tbaa !428
  %176 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 11
  %177 = load i16, ptr %176, align 4, !tbaa !490
  %178 = sext i16 %177 to i32
  %179 = sub nsw i32 0, %178
  %180 = sitofp i32 %179 to float
  %181 = fdiv float %180, 3.000000e+00
  %182 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 0, i32 2
  store float %181, ptr %182, align 8, !tbaa !429
  %183 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 10
  %184 = load i16, ptr %183, align 2, !tbaa !841
  %185 = tail call i16 @llvm.smax.i16(i16 %184, i16 120)
  %186 = sitofp i16 %185 to float
  %187 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 0, i32 1
  store float %186, ptr %187, align 4, !tbaa !430
  %188 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 0, i32 3
  store float 0.000000e+00, ptr %188, align 4, !tbaa !431
  %189 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %189, ptr noundef nonnull align 8 dereferenceable(16) %175, i64 16, i1 false), !tbaa.struct !432
  %190 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 5
  store float 0.000000e+00, ptr %190, align 8, !tbaa !216
  %191 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 5, i64 1
  store float 0.000000e+00, ptr %191, align 4, !tbaa !216
  %192 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 6
  store float 3.000000e+05, ptr %192, align 8, !tbaa !216
  %193 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 6, i64 1
  store float 0x47EFFFFFE0000000, ptr %193, align 4, !tbaa !216
  %194 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 7
  store float 0x3F847AE140000000, ptr %194, align 8, !tbaa !426
  %195 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 8
  store float 5.000000e+01, ptr %195, align 4, !tbaa !427
  %196 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 9
  store i16 74, ptr %196, align 8, !tbaa !621
  %197 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 12
  store i16 512, ptr %197, align 2, !tbaa !118
  %198 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 15
  store i16 4, ptr %198, align 4, !tbaa !121
  %199 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 14
  store i16 2, ptr %199, align 2, !tbaa !122
  %200 = getelementptr inbounds %struct.SpaceAction, ptr %1, i64 0, i32 9
  %201 = load i8, ptr %200, align 8, !tbaa !842
  %202 = icmp eq i8 %201, 1
  br i1 %202, label %203, label %245

203:                                              ; preds = %174
  %204 = getelementptr inbounds %struct.SpaceAction, ptr %1, i64 0, i32 7
  store ptr null, ptr %204, align 8, !tbaa !845
  br label %245

205:                                              ; preds = %109
  %206 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2
  %207 = getelementptr inbounds %struct.SpaceSeq, ptr %1, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %206, ptr noundef nonnull align 8 dereferenceable(160) %207, i64 160, i1 false)
  %208 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 9
  %209 = load i16, ptr %208, align 8, !tbaa !621
  %210 = or i16 %209, 105
  store i16 %210, ptr %208, align 8, !tbaa !621
  %211 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 15
  store i16 8, ptr %211, align 4, !tbaa !121
  %212 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 14
  %213 = load i16, ptr %212, align 2, !tbaa !122
  %214 = or i16 %213, 1024
  store i16 %214, ptr %212, align 2, !tbaa !122
  br label %245

215:                                              ; preds = %109
  %216 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2
  %217 = getelementptr inbounds %struct.SpaceNode, ptr %1, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %216, ptr noundef nonnull align 8 dereferenceable(160) %217, i64 160, i1 false)
  %218 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 9
  store i16 10, ptr %218, align 8, !tbaa !621
  %219 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 12
  store i16 3, ptr %219, align 2, !tbaa !118
  br label %245

220:                                              ; preds = %109
  %221 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2
  %222 = getelementptr inbounds %struct.SpaceButs, ptr %1, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %221, ptr noundef nonnull align 8 dereferenceable(160) %222, i64 160, i1 false)
  %223 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 9
  %224 = load i16, ptr %223, align 8, !tbaa !621
  %225 = or i16 %224, 10
  store i16 %225, ptr %223, align 8, !tbaa !621
  br label %245

226:                                              ; preds = %109
  %227 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2
  %228 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 0, i32 2
  store float 0.000000e+00, ptr %228, align 8, !tbaa !429
  store float 0.000000e+00, ptr %227, align 8, !tbaa !428
  %229 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 5
  %230 = load i16, ptr %229, align 8, !tbaa !846
  %231 = sitofp i16 %230 to float
  %232 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 0, i32 1
  store float %231, ptr %232, align 4, !tbaa !430
  %233 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 6
  %234 = load i16, ptr %233, align 2, !tbaa !847
  %235 = sitofp i16 %234 to float
  %236 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 0, i32 3
  store float %235, ptr %236, align 4, !tbaa !431
  %237 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %237, ptr noundef nonnull align 8 dereferenceable(16) %227, i64 16, i1 false), !tbaa.struct !432
  store i16 0, ptr %108, align 2, !tbaa !114
  %238 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 9
  store i16 10, ptr %238, align 8, !tbaa !621
  %239 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 15
  store i16 6, ptr %239, align 4, !tbaa !121
  %240 = getelementptr inbounds %struct.ARegion, ptr %105, i64 0, i32 2, i32 12
  store i16 771, ptr %240, align 2, !tbaa !118
  br label %245

241:                                              ; preds = %109
  %242 = getelementptr inbounds %struct.SpaceText, ptr %1, i64 0, i32 9
  %243 = load i16, ptr %242, align 8, !tbaa !848
  %244 = or i16 %243, 32
  store i16 %244, ptr %242, align 8, !tbaa !848
  br label %245

245:                                              ; preds = %174, %203, %112, %113, %127, %146, %156, %205, %215, %220, %226, %109, %241, %103
  ret void
}

declare void @blo_do_versions_view3d_split_250(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @new_id(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

declare void @BKE_sequence_base_unique_name_recursive(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @srgb_to_linearrgb(float noundef) local_unnamed_addr #2

declare void @modifier_mdef_compact_influences(ptr noundef) local_unnamed_addr #2

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mat3_to_vec_roll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }

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
!49 = distinct !{!49, !50, !51}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = distinct !{!52, !50, !51}
!53 = !{!54, !39, i64 24}
!54 = !{!"bActuator", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !37, i64 32, !36, i64 96, !36, i64 104}
!55 = !{!54, !36, i64 96}
!56 = !{!57, !36, i64 24}
!57 = !{!"bSoundActuator", !39, i64 0, !39, i64 2, !46, i64 4, !46, i64 8, !37, i64 12, !47, i64 16, !47, i64 20, !36, i64 24, !58, i64 32, !39, i64 64, !39, i64 66, !39, i64 68, !37, i64 70}
!58 = !{!"Sound3D", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !47, i64 24, !47, i64 28}
!59 = !{!44, !46, i64 1200}
!60 = !{!57, !39, i64 0}
!61 = !{!44, !47, i64 1184}
!62 = !{!57, !47, i64 20}
!63 = !{!44, !47, i64 1176}
!64 = !{!57, !47, i64 16}
!65 = !{!44, !47, i64 1196}
!66 = !{!57, !47, i64 40}
!67 = !{!44, !47, i64 1192}
!68 = !{!57, !47, i64 36}
!69 = !{!44, !47, i64 1188}
!70 = !{!57, !47, i64 32}
!71 = !{!44, !47, i64 1180}
!72 = !{!57, !47, i64 48}
!73 = !{!57, !47, i64 52}
!74 = !{!57, !47, i64 56}
!75 = !{!57, !47, i64 44}
!76 = distinct !{!76, !50, !51}
!77 = !{!78, !36, i64 256}
!78 = !{!"Scene", !45, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !41, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !46, i64 232, !46, i64 236, !46, i64 240, !39, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !79, i64 280, !88, i64 4264, !41, i64 4296, !41, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !39, i64 4376, !39, i64 4378, !46, i64 4380, !41, i64 4384, !89, i64 4400, !90, i64 4416, !93, i64 4600, !36, i64 4608, !94, i64 4616, !36, i64 4640, !40, i64 4648, !40, i64 4656, !81, i64 4664, !82, i64 4824, !95, i64 4888, !36, i64 4952}
!79 = !{!"RenderData", !80, i64 0, !36, i64 248, !36, i64 256, !83, i64 264, !84, i64 328, !46, i64 400, !46, i64 404, !46, i64 408, !47, i64 412, !46, i64 416, !46, i64 420, !46, i64 424, !46, i64 428, !39, i64 432, !39, i64 434, !47, i64 436, !47, i64 440, !47, i64 444, !47, i64 448, !47, i64 452, !39, i64 456, !39, i64 458, !39, i64 460, !39, i64 462, !39, i64 464, !39, i64 466, !46, i64 468, !39, i64 472, !39, i64 474, !39, i64 476, !39, i64 478, !39, i64 480, !39, i64 482, !46, i64 484, !46, i64 488, !39, i64 492, !39, i64 494, !46, i64 496, !46, i64 500, !39, i64 504, !39, i64 506, !39, i64 508, !39, i64 510, !39, i64 512, !37, i64 514, !37, i64 515, !46, i64 516, !46, i64 520, !46, i64 524, !39, i64 528, !39, i64 530, !39, i64 532, !39, i64 534, !39, i64 536, !39, i64 538, !39, i64 540, !39, i64 542, !85, i64 544, !85, i64 560, !86, i64 576, !41, i64 592, !39, i64 608, !39, i64 610, !47, i64 612, !47, i64 616, !47, i64 620, !47, i64 624, !46, i64 628, !47, i64 632, !47, i64 636, !47, i64 640, !47, i64 644, !39, i64 648, !39, i64 650, !39, i64 652, !39, i64 654, !39, i64 656, !39, i64 658, !47, i64 660, !47, i64 664, !39, i64 668, !39, i64 670, !47, i64 672, !47, i64 676, !37, i64 680, !46, i64 1704, !39, i64 1708, !39, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !46, i64 2520, !39, i64 2524, !39, i64 2526, !47, i64 2528, !47, i64 2532, !39, i64 2536, !39, i64 2538, !47, i64 2540, !39, i64 2544, !39, i64 2546, !46, i64 2548, !39, i64 2552, !39, i64 2554, !39, i64 2556, !39, i64 2558, !47, i64 2560, !47, i64 2564, !36, i64 2568, !46, i64 2576, !47, i64 2580, !37, i64 2584, !87, i64 2616, !46, i64 3976, !46, i64 3980}
!80 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !39, i64 8, !39, i64 10, !47, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !81, i64 24, !82, i64 184}
!81 = !{!"ColorManagedViewSettings", !46, i64 0, !46, i64 4, !37, i64 8, !37, i64 72, !47, i64 136, !47, i64 140, !36, i64 144, !36, i64 152}
!82 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!83 = !{!"QuicktimeCodecSettings", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !46, i64 32, !46, i64 36, !46, i64 40, !46, i64 44, !39, i64 48, !39, i64 50, !46, i64 52, !46, i64 56, !46, i64 60}
!84 = !{!"FFMpegCodecData", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !47, i64 32, !46, i64 36, !46, i64 40, !46, i64 44, !46, i64 48, !46, i64 52, !46, i64 56, !46, i64 60, !36, i64 64}
!85 = !{!"rctf", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12}
!86 = !{!"rcti", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12}
!87 = !{!"BakeData", !80, i64 0, !37, i64 248, !39, i64 1272, !39, i64 1274, !39, i64 1276, !39, i64 1278, !47, i64 1280, !47, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!88 = !{!"AudioData", !46, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !46, i64 16, !39, i64 20, !39, i64 22, !47, i64 24, !47, i64 28}
!89 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!90 = !{!"GameData", !89, i64 0, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !37, i64 34, !91, i64 40, !39, i64 64, !39, i64 66, !47, i64 68, !92, i64 72, !47, i64 128, !47, i64 132, !46, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !47, i64 164, !47, i64 168, !47, i64 172, !47, i64 176, !47, i64 180}
!91 = !{!"GameDome", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !47, i64 8, !47, i64 12, !36, i64 16}
!92 = !{!"RecastData", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !47, i64 24, !47, i64 28, !47, i64 32, !47, i64 36, !46, i64 40, !47, i64 44, !47, i64 48, !39, i64 52, !39, i64 54}
!93 = !{!"UnitSettings", !47, i64 0, !37, i64 4, !37, i64 5, !39, i64 6}
!94 = !{!"PhysicsSettings", !37, i64 0, !46, i64 12, !46, i64 16, !46, i64 20}
!95 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!96 = !{!97, !36, i64 0}
!97 = !{!"Editing", !36, i64 0, !41, i64 8, !41, i64 24, !36, i64 40, !37, i64 48, !37, i64 1072, !46, i64 2096, !46, i64 2100, !46, i64 2104, !46, i64 2108, !85, i64 2112}
!98 = !{!99, !46, i64 24}
!99 = !{!"SeqIterator", !36, i64 0, !46, i64 8, !46, i64 12, !36, i64 16, !46, i64 24}
!100 = !{!99, !36, i64 16}
!101 = !{!102, !46, i64 100}
!102 = !{!"Sequence", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !46, i64 96, !46, i64 100, !46, i64 104, !46, i64 108, !46, i64 112, !46, i64 116, !46, i64 120, !46, i64 124, !46, i64 128, !46, i64 132, !46, i64 136, !46, i64 140, !47, i64 144, !47, i64 148, !47, i64 152, !39, i64 156, !39, i64 158, !46, i64 160, !46, i64 164, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !47, i64 224, !47, i64 228, !36, i64 232, !36, i64 240, !36, i64 248, !41, i64 256, !36, i64 272, !36, i64 280, !47, i64 288, !47, i64 292, !47, i64 296, !47, i64 300, !36, i64 304, !46, i64 312, !46, i64 316, !46, i64 320, !47, i64 324, !46, i64 328, !37, i64 332, !37, i64 333, !41, i64 336}
!103 = !{!102, !36, i64 168}
!104 = !{!105, !36, i64 32}
!105 = !{!"Strip", !36, i64 0, !36, i64 8, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !36, i64 32, !37, i64 40, !36, i64 808, !36, i64 816, !36, i64 824, !36, i64 832, !95, i64 840}
!106 = !{!102, !36, i64 272}
!107 = !{!102, !46, i64 96}
!108 = !{!105, !36, i64 808}
!109 = distinct !{!109, !50, !51}
!110 = distinct !{!110, !50, !51}
!111 = distinct !{!111, !50, !51}
!112 = !{!113, !39, i64 78}
!113 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !86, i64 56, !37, i64 72, !37, i64 73, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !39, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !41, i64 96, !41, i64 112, !41, i64 128, !41, i64 144}
!114 = !{!115, !39, i64 214}
!115 = !{!"ARegion", !36, i64 0, !36, i64 8, !116, i64 16, !86, i64 176, !86, i64 192, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !47, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !36, i64 240, !41, i64 248, !41, i64 264, !41, i64 280, !41, i64 296, !41, i64 312, !41, i64 328, !41, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!116 = !{!"View2D", !85, i64 0, !85, i64 16, !86, i64 32, !86, i64 48, !86, i64 64, !37, i64 80, !37, i64 88, !47, i64 96, !47, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !36, i64 128, !46, i64 136, !46, i64 140, !36, i64 144, !36, i64 152}
!117 = !{!115, !39, i64 216}
!118 = !{!115, !39, i64 126}
!119 = !{!115, !39, i64 128}
!120 = !{!115, !39, i64 124}
!121 = !{!115, !39, i64 132}
!122 = !{!115, !39, i64 130}
!123 = !{!113, !36, i64 96}
!124 = !{!125, !46, i64 32}
!125 = !{!"SpaceLink", !36, i64 0, !36, i64 8, !41, i64 16, !46, i64 32, !47, i64 36, !37, i64 40}
!126 = distinct !{!126, !50, !51}
!127 = distinct !{!127, !50, !51}
!128 = !{!113, !37, i64 72}
!129 = !{!113, !37, i64 73}
!130 = !{!125, !36, i64 0}
!131 = distinct !{!131, !50, !51}
!132 = distinct !{!132, !50, !51}
!133 = distinct !{!133, !50, !51}
!134 = !{!135, !36, i64 368}
!135 = !{!"View3D", !36, i64 0, !36, i64 8, !41, i64 16, !46, i64 32, !47, i64 36, !37, i64 40, !37, i64 56, !47, i64 72, !47, i64 76, !37, i64 80, !37, i64 81, !46, i64 84, !46, i64 88, !39, i64 92, !39, i64 94, !36, i64 96, !36, i64 104, !85, i64 112, !41, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !46, i64 224, !46, i64 228, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !39, i64 240, !39, i64 242, !47, i64 244, !47, i64 248, !47, i64 252, !47, i64 256, !37, i64 260, !37, i64 272, !39, i64 284, !39, i64 286, !39, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !41, i64 296, !41, i64 312, !41, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!136 = !{!45, !46, i64 100}
!137 = !{!45, !39, i64 98}
!138 = !{!39, !39, i64 0}
!139 = !{!140, !46, i64 2100}
!140 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !41, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !39, i64 2084, !39, i64 2086, !39, i64 2088, !37, i64 2090, !39, i64 2092, !46, i64 2096, !46, i64 2100, !37, i64 2104, !46, i64 2108, !46, i64 2112, !37, i64 2116}
!141 = !{!142, !36, i64 392}
!142 = !{!"SpaceNode", !36, i64 0, !36, i64 8, !41, i64 16, !46, i64 32, !47, i64 36, !37, i64 40, !116, i64 56, !36, i64 216, !36, i64 224, !39, i64 232, !39, i64 234, !47, i64 236, !47, i64 240, !47, i64 244, !47, i64 248, !47, i64 252, !37, i64 256, !41, i64 264, !36, i64 280, !36, i64 288, !37, i64 296, !46, i64 360, !46, i64 364, !39, i64 368, !39, i64 370, !39, i64 372, !39, i64 374, !41, i64 376, !36, i64 392}
!143 = !{!144, !36, i64 248}
!144 = !{!"SpaceSeq", !36, i64 0, !36, i64 8, !41, i64 16, !46, i64 32, !47, i64 36, !37, i64 40, !116, i64 56, !47, i64 216, !47, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !46, i64 232, !47, i64 236, !46, i64 240, !46, i64 244, !36, i64 248, !145, i64 256}
!145 = !{!"SequencerScopes", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!146 = distinct !{!146, !50, !51}
!147 = distinct !{!147, !50, !51}
!148 = !{!149, !36, i64 768}
!149 = !{!"Material", !45, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !47, i64 132, !47, i64 136, !47, i64 140, !47, i64 144, !47, i64 148, !47, i64 152, !47, i64 156, !47, i64 160, !47, i64 164, !47, i64 168, !47, i64 172, !47, i64 176, !47, i64 180, !47, i64 184, !47, i64 188, !47, i64 192, !47, i64 196, !47, i64 200, !47, i64 204, !47, i64 208, !47, i64 212, !47, i64 216, !47, i64 220, !150, i64 224, !151, i64 312, !47, i64 328, !47, i64 332, !47, i64 336, !47, i64 340, !47, i64 344, !47, i64 348, !47, i64 352, !39, i64 356, !39, i64 358, !39, i64 360, !37, i64 362, !37, i64 363, !47, i64 364, !47, i64 368, !39, i64 372, !39, i64 374, !47, i64 376, !47, i64 380, !47, i64 384, !47, i64 388, !39, i64 392, !39, i64 394, !46, i64 396, !46, i64 400, !46, i64 404, !46, i64 408, !39, i64 412, !39, i64 414, !39, i64 416, !39, i64 418, !47, i64 420, !47, i64 424, !47, i64 428, !47, i64 432, !47, i64 436, !47, i64 440, !47, i64 444, !47, i64 448, !47, i64 452, !47, i64 456, !37, i64 460, !47, i64 524, !47, i64 528, !47, i64 532, !46, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !39, i64 544, !39, i64 546, !39, i64 548, !37, i64 550, !37, i64 551, !39, i64 552, !39, i64 554, !47, i64 556, !47, i64 560, !37, i64 564, !47, i64 580, !47, i64 584, !39, i64 588, !39, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !39, i64 612, !39, i64 614, !47, i64 616, !47, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !47, i64 800, !47, i64 804, !47, i64 808, !47, i64 812, !47, i64 816, !39, i64 820, !39, i64 822, !37, i64 824, !37, i64 836, !47, i64 848, !47, i64 852, !47, i64 856, !47, i64 860, !47, i64 864, !47, i64 868, !47, i64 872, !39, i64 876, !39, i64 878, !46, i64 880, !39, i64 884, !39, i64 886, !37, i64 888, !39, i64 904, !39, i64 906, !39, i64 908, !39, i64 910, !39, i64 912, !37, i64 914, !36, i64 920, !41, i64 928}
!150 = !{!"VolumeSettings", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !47, i64 52, !47, i64 56, !47, i64 60, !39, i64 64, !39, i64 66, !39, i64 68, !39, i64 70, !47, i64 72, !47, i64 76, !47, i64 80, !47, i64 84}
!151 = !{!"GameSettings", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12}
!152 = !{!37, !37, i64 0}
!153 = !{!154, !36, i64 16}
!154 = !{!"MTex", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !47, i64 116, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !39, i64 128, !39, i64 130, !37, i64 132, !37, i64 133, !47, i64 140, !47, i64 144, !47, i64 148, !47, i64 152, !47, i64 156, !47, i64 160, !47, i64 164, !47, i64 168, !47, i64 172, !47, i64 176, !47, i64 180, !47, i64 184, !47, i64 188, !47, i64 192, !47, i64 196, !47, i64 200, !47, i64 204, !47, i64 208, !47, i64 212, !47, i64 216, !47, i64 220, !47, i64 224, !47, i64 228, !47, i64 232, !47, i64 236, !47, i64 240, !47, i64 244, !47, i64 248, !47, i64 252, !47, i64 256, !47, i64 260, !47, i64 264, !47, i64 268, !47, i64 272, !47, i64 276, !47, i64 280, !47, i64 284, !47, i64 288, !47, i64 292, !47, i64 296, !47, i64 300, !47, i64 304, !47, i64 308}
!155 = !{!156, !37, i64 408}
!156 = !{!"Tex", !45, i64 0, !36, i64 120, !47, i64 128, !47, i64 132, !47, i64 136, !47, i64 140, !47, i64 144, !47, i64 148, !47, i64 152, !47, i64 156, !47, i64 160, !47, i64 164, !47, i64 168, !47, i64 172, !47, i64 176, !47, i64 180, !47, i64 184, !47, i64 188, !47, i64 192, !47, i64 196, !47, i64 200, !47, i64 204, !47, i64 208, !47, i64 212, !39, i64 216, !39, i64 218, !39, i64 220, !39, i64 222, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !47, i64 236, !47, i64 240, !47, i64 244, !47, i64 248, !46, i64 252, !46, i64 256, !39, i64 260, !39, i64 262, !39, i64 264, !39, i64 266, !46, i64 268, !46, i64 272, !46, i64 276, !46, i64 280, !47, i64 284, !47, i64 288, !47, i64 292, !157, i64 296, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !37, i64 408, !37, i64 409}
!157 = !{!"ImageUser", !36, i64 0, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !39, i64 28, !39, i64 30, !39, i64 32, !39, i64 34, !46, i64 36}
!158 = !{!154, !39, i64 130}
!159 = distinct !{!159, !50, !51}
!160 = !{!78, !36, i64 248}
!161 = !{!78, !46, i64 800}
!162 = !{!163, !36, i64 32}
!163 = !{!"Base", !36, i64 0, !36, i64 8, !46, i64 16, !46, i64 20, !46, i64 24, !39, i64 28, !39, i64 30, !36, i64 32}
!164 = !{!165, !39, i64 136}
!165 = !{!"Object", !45, i64 0, !36, i64 120, !36, i64 128, !39, i64 136, !39, i64 138, !46, i64 140, !46, i64 144, !46, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !166, i64 312, !36, i64 360, !41, i64 368, !41, i64 384, !41, i64 400, !41, i64 416, !46, i64 432, !46, i64 436, !36, i64 440, !36, i64 448, !46, i64 456, !46, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !47, i64 616, !47, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !46, i64 944, !39, i64 948, !39, i64 950, !39, i64 952, !39, i64 954, !39, i64 956, !39, i64 958, !39, i64 960, !39, i64 962, !39, i64 964, !37, i64 966, !37, i64 967, !46, i64 968, !46, i64 972, !46, i64 976, !46, i64 980, !46, i64 984, !47, i64 988, !47, i64 992, !47, i64 996, !47, i64 1000, !47, i64 1004, !47, i64 1008, !47, i64 1012, !47, i64 1016, !47, i64 1020, !47, i64 1024, !47, i64 1028, !47, i64 1032, !39, i64 1036, !39, i64 1038, !39, i64 1040, !37, i64 1042, !37, i64 1043, !39, i64 1044, !37, i64 1046, !37, i64 1047, !47, i64 1048, !47, i64 1052, !41, i64 1056, !41, i64 1072, !41, i64 1088, !41, i64 1104, !47, i64 1120, !39, i64 1124, !39, i64 1126, !37, i64 1128, !46, i64 1144, !46, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !39, i64 1162, !37, i64 1164, !41, i64 1176, !41, i64 1192, !41, i64 1208, !41, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !39, i64 1266, !47, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !40, i64 1304, !40, i64 1312, !46, i64 1320, !46, i64 1324, !41, i64 1328, !41, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !41, i64 1400, !36, i64 1416}
!166 = !{!"bAnimVizSettings", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !46, i64 32, !46, i64 36, !46, i64 40, !46, i64 44}
!167 = !{!165, !36, i64 24}
!168 = !{!165, !36, i64 296}
!169 = !{!170, !39, i64 130}
!170 = !{!"Camera", !45, i64 0, !36, i64 120, !37, i64 128, !37, i64 129, !39, i64 130, !47, i64 132, !47, i64 136, !47, i64 140, !47, i64 144, !47, i64 148, !47, i64 152, !47, i64 156, !47, i64 160, !47, i64 164, !47, i64 168, !47, i64 172, !36, i64 176, !36, i64 184, !37, i64 192, !37, i64 193}
!171 = distinct !{!171, !50, !51}
!172 = distinct !{!172, !50, !51}
!173 = !{!156, !36, i64 336}
!174 = !{!175, !39, i64 172}
!175 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !46, i64 168, !39, i64 172, !39, i64 174, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !39, i64 184, !39, i64 186, !37, i64 188, !41, i64 200, !41, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !41, i64 264, !47, i64 280, !47, i64 284, !47, i64 288, !47, i64 292, !47, i64 296, !47, i64 300, !47, i64 304, !46, i64 308, !37, i64 312, !39, i64 376, !39, i64 378, !47, i64 380, !47, i64 384, !39, i64 388, !39, i64 390, !36, i64 392, !85, i64 400, !85, i64 416, !85, i64 432, !39, i64 448, !39, i64 450, !46, i64 452, !36, i64 456}
!176 = !{!175, !39, i64 376}
!177 = distinct !{!177, !50, !51}
!178 = distinct !{!178, !50, !51}
!179 = !{!180, !46, i64 1344}
!180 = !{!"Mesh", !45, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !181, i64 280, !181, i64 480, !181, i64 680, !181, i64 880, !181, i64 1080, !46, i64 1280, !46, i64 1284, !46, i64 1288, !46, i64 1292, !46, i64 1296, !46, i64 1300, !46, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !46, i64 1344, !39, i64 1348, !39, i64 1350, !47, i64 1352, !46, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !39, i64 1366, !36, i64 1368}
!181 = !{!"CustomData", !36, i64 0, !37, i64 8, !46, i64 172, !46, i64 176, !46, i64 180, !36, i64 184, !36, i64 192}
!182 = distinct !{!182, !50, !51}
!183 = !{!184, !39, i64 184}
!184 = !{!"ParticleSettings", !45, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !46, i64 152, !46, i64 156, !39, i64 160, !39, i64 162, !39, i64 164, !39, i64 166, !39, i64 168, !39, i64 170, !39, i64 172, !39, i64 174, !46, i64 176, !46, i64 180, !39, i64 184, !39, i64 186, !39, i64 188, !39, i64 190, !39, i64 192, !39, i64 194, !39, i64 196, !39, i64 198, !39, i64 200, !39, i64 202, !39, i64 204, !39, i64 206, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !39, i64 220, !39, i64 222, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !47, i64 232, !47, i64 236, !37, i64 240, !37, i64 248, !47, i64 256, !47, i64 260, !47, i64 264, !39, i64 268, !39, i64 270, !47, i64 272, !47, i64 276, !47, i64 280, !47, i64 284, !47, i64 288, !47, i64 292, !47, i64 296, !47, i64 300, !47, i64 304, !47, i64 308, !47, i64 312, !47, i64 316, !37, i64 320, !46, i64 324, !46, i64 328, !46, i64 332, !46, i64 336, !39, i64 340, !37, i64 342, !47, i64 348, !47, i64 352, !47, i64 356, !47, i64 360, !47, i64 364, !47, i64 368, !47, i64 372, !37, i64 376, !47, i64 388, !47, i64 392, !47, i64 396, !47, i64 400, !47, i64 404, !47, i64 408, !47, i64 412, !37, i64 416, !47, i64 428, !47, i64 432, !47, i64 436, !47, i64 440, !46, i64 444, !46, i64 448, !47, i64 452, !47, i64 456, !47, i64 460, !47, i64 464, !47, i64 468, !47, i64 472, !47, i64 476, !47, i64 480, !47, i64 484, !47, i64 488, !47, i64 492, !47, i64 496, !47, i64 500, !47, i64 504, !47, i64 508, !47, i64 512, !47, i64 516, !47, i64 520, !47, i64 524, !47, i64 528, !47, i64 532, !47, i64 536, !47, i64 540, !47, i64 544, !47, i64 548, !37, i64 552, !47, i64 560, !47, i64 564, !46, i64 568, !46, i64 572, !37, i64 576, !36, i64 720, !41, i64 728, !36, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !39, i64 792, !37, i64 794}
!185 = !{!184, !39, i64 192}
!186 = !{!184, !47, i64 564}
!187 = !{!184, !47, i64 528}
!188 = distinct !{!188, !50, !51}
!189 = distinct !{!189, !50, !51}
!190 = !{!191, !39, i64 16}
!191 = !{!"Nurb", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !46, i64 24, !46, i64 28, !37, i64 32, !39, i64 36, !39, i64 38, !39, i64 40, !39, i64 42, !39, i64 44, !39, i64 46, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !39, i64 80, !39, i64 82, !46, i64 84}
!192 = !{!191, !39, i64 22}
!193 = distinct !{!193, !50, !51}
!194 = !{!35, !39, i64 1042}
!195 = !{!180, !36, i64 24}
!196 = !{!180, !36, i64 1368}
!197 = !{!198, !37, i64 24}
!198 = !{!"Multires", !41, i64 0, !36, i64 16, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !37, i64 28, !37, i64 29, !37, i64 30, !37, i64 31, !181, i64 32, !181, i64 232, !36, i64 432, !36, i64 440}
!199 = !{!165, !46, i64 456}
!200 = !{!165, !36, i64 448}
!201 = !{!165, !39, i64 950}
!202 = distinct !{!202, !50, !51}
!203 = distinct !{!203, !50, !51}
!204 = !{!156, !46, i64 256}
!205 = distinct !{!205, !50, !51}
!206 = !{!149, !46, i64 396}
!207 = !{!149, !39, i64 128}
!208 = !{!149, !36, i64 24}
!209 = !{!156, !39, i64 232}
!210 = !{!154, !39, i64 120}
!211 = distinct !{!211, !50, !51}
!212 = !{!149, !47, i64 296}
!213 = !{!149, !47, i64 224}
!214 = !{!149, !47, i64 228}
!215 = !{!149, !47, i64 232}
!216 = !{!47, !47, i64 0}
!217 = !{!149, !47, i64 276}
!218 = !{!149, !47, i64 280}
!219 = !{!149, !39, i64 288}
!220 = !{!149, !39, i64 292}
!221 = !{!149, !39, i64 290}
!222 = !{!149, !39, i64 294}
!223 = distinct !{!223, !50, !51}
!224 = !{!78, !36, i64 264}
!225 = !{!226, !47, i64 40}
!226 = !{!"ToolSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !47, i64 32, !47, i64 36, !47, i64 40, !39, i64 44, !39, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !47, i64 52, !39, i64 56, !37, i64 58, !37, i64 59, !227, i64 64, !229, i64 168, !47, i64 336, !47, i64 340, !39, i64 344, !39, i64 346, !37, i64 348, !37, i64 349, !39, i64 350, !47, i64 352, !47, i64 356, !47, i64 360, !47, i64 364, !47, i64 368, !47, i64 372, !47, i64 376, !47, i64 380, !47, i64 384, !47, i64 388, !39, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !36, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !39, i64 434, !39, i64 436, !39, i64 438, !39, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !46, i64 448, !46, i64 452, !46, i64 456, !46, i64 460, !39, i64 464, !39, i64 466, !46, i64 468, !47, i64 472, !47, i64 476, !230, i64 480, !231, i64 608}
!227 = !{!"ImagePaintSettings", !228, i64 0, !39, i64 40, !39, i64 42, !39, i64 44, !39, i64 46, !37, i64 48, !46, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !47, i64 100}
!228 = !{!"Paint", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !46, i64 28, !46, i64 32, !46, i64 36}
!229 = !{!"ParticleEditSettings", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !37, i64 8, !36, i64 120, !47, i64 128, !47, i64 132, !46, i64 136, !46, i64 140, !46, i64 144, !46, i64 148, !36, i64 152, !36, i64 160}
!230 = !{!"UnifiedPaintSettings", !46, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !37, i64 16, !37, i64 28, !46, i64 40, !37, i64 44, !47, i64 52, !46, i64 56, !46, i64 60, !37, i64 64, !37, i64 65, !47, i64 72, !37, i64 76, !46, i64 84, !47, i64 88, !37, i64 92, !37, i64 100, !46, i64 108, !36, i64 112, !47, i64 120, !46, i64 124}
!231 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !37, i64 20, !37, i64 21, !47, i64 24, !47, i64 28, !47, i64 32, !47, i64 36}
!232 = !{!226, !37, i64 51}
!233 = !{!226, !47, i64 32}
!234 = !{!226, !39, i64 46}
!235 = !{!236, !39, i64 8976}
!236 = !{!"UserDef", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !46, i64 8468, !39, i64 8472, !39, i64 8474, !39, i64 8476, !39, i64 8478, !39, i64 8480, !39, i64 8482, !46, i64 8484, !46, i64 8488, !46, i64 8492, !39, i64 8496, !39, i64 8498, !46, i64 8500, !46, i64 8504, !46, i64 8508, !46, i64 8512, !46, i64 8516, !46, i64 8520, !46, i64 8524, !39, i64 8528, !39, i64 8530, !39, i64 8532, !39, i64 8534, !41, i64 8536, !41, i64 8552, !41, i64 8568, !41, i64 8584, !41, i64 8600, !41, i64 8616, !41, i64 8632, !37, i64 8648, !39, i64 8712, !39, i64 8714, !39, i64 8716, !39, i64 8718, !39, i64 8720, !39, i64 8722, !39, i64 8724, !39, i64 8726, !37, i64 8728, !39, i64 8896, !39, i64 8898, !39, i64 8900, !39, i64 8902, !39, i64 8904, !39, i64 8906, !39, i64 8908, !39, i64 8910, !46, i64 8912, !46, i64 8916, !39, i64 8920, !39, i64 8922, !39, i64 8924, !39, i64 8926, !39, i64 8928, !39, i64 8930, !39, i64 8932, !39, i64 8934, !39, i64 8936, !39, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !39, i64 8944, !39, i64 8946, !39, i64 8948, !39, i64 8950, !39, i64 8952, !39, i64 8954, !47, i64 8956, !47, i64 8960, !46, i64 8964, !39, i64 8968, !39, i64 8970, !47, i64 8972, !39, i64 8976, !39, i64 8978, !39, i64 8980, !39, i64 8982, !237, i64 8984, !37, i64 9760, !37, i64 9772, !39, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !46, i64 10896, !46, i64 10900, !47, i64 10904, !47, i64 10908, !46, i64 10912, !39, i64 10916, !39, i64 10918, !39, i64 10920, !39, i64 10922, !39, i64 10924, !39, i64 10926, !238, i64 10928}
!237 = !{!"ColorBand", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!238 = !{!"WalkNavigation", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !39, i64 24, !37, i64 26}
!239 = !{!226, !39, i64 344}
!240 = !{!78, !39, i64 2836}
!241 = !{!78, !39, i64 4460}
!242 = !{!78, !39, i64 2834}
!243 = !{!78, !39, i64 4458}
!244 = !{!78, !39, i64 2832}
!245 = !{!78, !39, i64 4456}
!246 = !{!78, !47, i64 2840}
!247 = !{!78, !47, i64 4464}
!248 = !{!78, !39, i64 2838}
!249 = !{!78, !39, i64 4462}
!250 = !{!78, !36, i64 2848}
!251 = !{!78, !36, i64 4472}
!252 = !{!78, !39, i64 736}
!253 = !{!78, !39, i64 4432}
!254 = !{!78, !39, i64 738}
!255 = !{!78, !39, i64 4434}
!256 = !{!78, !39, i64 740}
!257 = !{!78, !39, i64 4436}
!258 = !{!78, !39, i64 742}
!259 = !{!78, !39, i64 4438}
!260 = !{!78, !39, i64 744}
!261 = !{!78, !39, i64 4440}
!262 = !{!78, !39, i64 746}
!263 = !{!78, !39, i64 4442}
!264 = !{!78, !39, i64 752}
!265 = !{!78, !39, i64 4482}
!266 = !{!78, !39, i64 4480}
!267 = !{i64 0, i64 12, !152, i64 12, i64 1, !152, i64 13, i64 1, !152, i64 14, i64 1, !152, i64 15, i64 1, !152}
!268 = !{!78, !47, i64 4544}
!269 = !{!78, !39, i64 4562}
!270 = !{!78, !39, i64 4556}
!271 = !{!78, !39, i64 4560}
!272 = !{!78, !39, i64 4568}
!273 = !{!78, !39, i64 4570}
!274 = !{!78, !39, i64 4572}
!275 = !{!78, !39, i64 4574}
!276 = distinct !{!276, !50, !51}
!277 = !{!278, !46, i64 1252}
!278 = !{!"FileData", !41, i64 0, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !36, i64 32, !36, i64 40, !36, i64 48, !46, i64 56, !36, i64 64, !37, i64 72, !37, i64 1096, !46, i64 1100, !279, i64 1104, !36, i64 1216, !36, i64 1224, !36, i64 1232, !46, i64 1240, !46, i64 1244, !46, i64 1248, !46, i64 1252, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !46, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336}
!279 = !{!"z_stream_s", !36, i64 0, !46, i64 8, !40, i64 16, !36, i64 24, !46, i64 32, !40, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !46, i64 88, !40, i64 96, !40, i64 104}
!280 = !{!78, !46, i64 4552}
!281 = !{!78, !39, i64 4558}
!282 = distinct !{!282, !50, !51}
!283 = !{!165, !39, i64 948}
!284 = !{!165, !46, i64 432}
!285 = distinct !{!285, !50, !51}
!286 = !{!78, !47, i64 4600}
!287 = distinct !{!287, !50, !51}
!288 = !{!289, !36, i64 112}
!289 = !{!"FluidsimModifierData", !290, i64 0, !36, i64 112, !36, i64 120}
!290 = !{!"ModifierData", !36, i64 0, !36, i64 8, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!291 = !{!292, !36, i64 0}
!292 = !{!"FluidsimSettings", !36, i64 0, !46, i64 8, !46, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !47, i64 24, !39, i64 28, !39, i64 30, !47, i64 32, !39, i64 36, !39, i64 38, !37, i64 40, !47, i64 52, !47, i64 56, !46, i64 60, !46, i64 64, !46, i64 68, !46, i64 72, !47, i64 76, !46, i64 80, !47, i64 84, !47, i64 88, !47, i64 92, !36, i64 96, !36, i64 104, !37, i64 112, !37, i64 1136, !37, i64 1148, !36, i64 1160, !39, i64 1168, !37, i64 1170, !37, i64 1171, !47, i64 1172, !46, i64 1176, !47, i64 1180, !47, i64 1184, !46, i64 1188, !46, i64 1192, !47, i64 1196, !47, i64 1200, !47, i64 1204, !36, i64 1208, !46, i64 1216, !47, i64 1220, !47, i64 1224, !47, i64 1228, !47, i64 1232, !47, i64 1236, !47, i64 1240, !47, i64 1244, !46, i64 1248, !47, i64 1252}
!293 = !{!165, !39, i64 1040}
!294 = distinct !{!294, !50, !51}
!295 = !{!149, !47, i64 236}
!296 = distinct !{!296, !50, !51}
!297 = distinct !{!297, !50, !51}
!298 = distinct !{!298, !50, !51}
!299 = !{!156, !36, i64 392}
!300 = !{!301, !39, i64 20}
!301 = !{!"VoxelData", !37, i64 0, !46, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !46, i64 28, !36, i64 32, !47, i64 40, !46, i64 44, !37, i64 48, !36, i64 1072, !46, i64 1080, !46, i64 1084}
!302 = distinct !{!302, !50, !51}
!303 = !{!78, !47, i64 4268}
!304 = !{!78, !46, i64 4264}
!305 = !{!78, !46, i64 628}
!306 = !{!78, !47, i64 640}
!307 = !{!78, !46, i64 4280}
!308 = !{!78, !47, i64 4276}
!309 = !{!78, !47, i64 4272}
!310 = distinct !{!310, !50, !51}
!311 = !{!78, !46, i64 4628}
!312 = distinct !{!312, !50, !51}
!313 = !{!184, !36, i64 144}
!314 = !{!315, !47, i64 64}
!315 = !{!"EffectorWeights", !36, i64 0, !37, i64 8, !47, i64 64, !39, i64 68, !37, i64 70, !46, i64 76}
!316 = distinct !{!316, !50, !51}
!317 = !{!318, !36, i64 128}
!318 = !{!"ClothModifierData", !290, i64 0, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !41, i64 152}
!319 = !{!320, !36, i64 160}
!320 = !{!"ClothSimSettings", !36, i64 0, !47, i64 8, !47, i64 12, !47, i64 16, !37, i64 20, !47, i64 32, !47, i64 36, !47, i64 40, !47, i64 44, !47, i64 48, !47, i64 52, !47, i64 56, !47, i64 60, !47, i64 64, !47, i64 68, !47, i64 72, !47, i64 76, !47, i64 80, !47, i64 84, !47, i64 88, !47, i64 92, !47, i64 96, !47, i64 100, !47, i64 104, !47, i64 108, !47, i64 112, !47, i64 116, !47, i64 120, !46, i64 124, !46, i64 128, !46, i64 132, !46, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !37, i64 156, !36, i64 160}
!321 = distinct !{!321, !50, !51}
!322 = !{!165, !36, i64 1248}
!323 = !{!324, !47, i64 96}
!324 = !{!"SoftBody", !46, i64 0, !46, i64 4, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 25, !39, i64 26, !47, i64 28, !37, i64 32, !47, i64 96, !47, i64 100, !47, i64 104, !47, i64 108, !47, i64 112, !47, i64 116, !47, i64 120, !47, i64 124, !47, i64 128, !39, i64 132, !37, i64 134, !39, i64 198, !47, i64 200, !47, i64 204, !37, i64 208, !46, i64 272, !46, i64 276, !46, i64 280, !39, i64 284, !39, i64 286, !36, i64 288, !46, i64 296, !46, i64 300, !47, i64 304, !47, i64 308, !47, i64 312, !47, i64 316, !39, i64 320, !39, i64 322, !39, i64 324, !39, i64 326, !39, i64 328, !39, i64 330, !39, i64 332, !39, i64 334, !36, i64 336, !47, i64 344, !47, i64 348, !36, i64 352, !41, i64 360, !36, i64 376, !37, i64 384, !37, i64 396, !37, i64 432, !46, i64 468}
!325 = !{!324, !36, i64 376}
!326 = !{!165, !36, i64 1240}
!327 = !{!328, !39, i64 6}
!328 = !{!"PartDeflect", !46, i64 0, !39, i64 4, !39, i64 6, !39, i64 8, !39, i64 10, !39, i64 12, !39, i64 14, !39, i64 16, !39, i64 18, !47, i64 20, !47, i64 24, !47, i64 28, !47, i64 32, !47, i64 36, !47, i64 40, !47, i64 44, !47, i64 48, !47, i64 52, !47, i64 56, !47, i64 60, !47, i64 64, !47, i64 68, !47, i64 72, !47, i64 76, !47, i64 80, !47, i64 84, !47, i64 88, !47, i64 92, !47, i64 96, !47, i64 100, !47, i64 104, !47, i64 108, !47, i64 112, !47, i64 116, !47, i64 120, !47, i64 124, !36, i64 128, !36, i64 136, !47, i64 144, !46, i64 148, !36, i64 152}
!329 = !{!328, !39, i64 10}
!330 = !{!328, !46, i64 0}
!331 = distinct !{!331, !50, !51}
!332 = !{!165, !36, i64 288}
!333 = distinct !{!333, !50, !51}
!334 = distinct !{!334, !50, !51}
!335 = !{!336, !47, i64 228}
!336 = !{!"Lamp", !45, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !46, i64 132, !39, i64 136, !39, i64 138, !47, i64 140, !47, i64 144, !47, i64 148, !47, i64 152, !47, i64 156, !47, i64 160, !47, i64 164, !47, i64 168, !47, i64 172, !47, i64 176, !47, i64 180, !47, i64 184, !47, i64 188, !47, i64 192, !47, i64 196, !36, i64 200, !39, i64 208, !39, i64 210, !47, i64 212, !47, i64 216, !47, i64 220, !47, i64 224, !47, i64 228, !47, i64 232, !47, i64 236, !39, i64 240, !39, i64 242, !39, i64 244, !39, i64 246, !37, i64 248, !37, i64 249, !39, i64 250, !39, i64 252, !39, i64 254, !39, i64 256, !39, i64 258, !47, i64 260, !47, i64 264, !47, i64 268, !47, i64 272, !39, i64 276, !39, i64 278, !39, i64 280, !39, i64 282, !39, i64 284, !39, i64 286, !47, i64 288, !47, i64 292, !47, i64 296, !47, i64 300, !47, i64 304, !47, i64 308, !47, i64 312, !47, i64 316, !47, i64 320, !47, i64 324, !47, i64 328, !47, i64 332, !47, i64 336, !39, i64 340, !37, i64 342, !36, i64 344, !37, i64 352, !39, i64 496, !39, i64 498, !37, i64 500, !36, i64 504, !36, i64 512}
!337 = distinct !{!337, !50, !51}
!338 = !{!180, !36, i64 144}
!339 = !{!340, !36, i64 128}
!340 = !{!"Key", !45, i64 0, !36, i64 120, !36, i64 128, !37, i64 136, !46, i64 168, !46, i64 172, !41, i64 176, !36, i64 192, !36, i64 200, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !47, i64 216, !46, i64 220}
!341 = !{!180, !46, i64 1280}
!342 = !{!343, !46, i64 32}
!343 = !{!"KeyBlock", !36, i64 0, !36, i64 8, !47, i64 16, !47, i64 20, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !46, i64 32, !46, i64 36, !36, i64 40, !37, i64 48, !37, i64 112, !47, i64 176, !47, i64 180}
!344 = !{!343, !36, i64 40}
!345 = !{!180, !36, i64 232}
!346 = distinct !{!346, !50, !51}
!347 = distinct !{!347, !50, !51}
!348 = !{!349, !36, i64 192}
!349 = !{!"Lattice", !45, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !39, i64 132, !39, i64 134, !39, i64 136, !39, i64 138, !39, i64 140, !39, i64 142, !37, i64 144, !37, i64 145, !37, i64 146, !37, i64 147, !46, i64 148, !47, i64 152, !47, i64 156, !47, i64 160, !47, i64 164, !47, i64 168, !47, i64 172, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !36, i64 272}
!350 = !{!349, !39, i64 128}
!351 = !{!349, !39, i64 130}
!352 = !{!349, !39, i64 132}
!353 = !{!349, !36, i64 176}
!354 = distinct !{!354, !50, !51}
!355 = distinct !{!355, !50, !51}
!356 = !{!357, !36, i64 192}
!357 = !{!"Curve", !45, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !39, i64 244, !39, i64 246, !39, i64 248, !39, i64 250, !47, i64 252, !47, i64 256, !46, i64 260, !39, i64 264, !39, i64 266, !46, i64 268, !47, i64 272, !47, i64 276, !47, i64 280, !39, i64 284, !39, i64 286, !39, i64 288, !39, i64 290, !46, i64 292, !46, i64 296, !37, i64 300, !39, i64 304, !37, i64 306, !37, i64 307, !47, i64 308, !47, i64 312, !47, i64 316, !47, i64 320, !47, i64 324, !47, i64 328, !47, i64 332, !47, i64 336, !47, i64 340, !47, i64 344, !46, i64 348, !46, i64 352, !46, i64 356, !46, i64 360, !46, i64 364, !36, i64 368, !36, i64 376, !37, i64 384, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !36, i64 480, !46, i64 488, !46, i64 492, !36, i64 496, !358, i64 504, !47, i64 512, !47, i64 516, !47, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!358 = !{!"CharInfo", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !39, i64 6}
!359 = !{!191, !36, i64 72}
!360 = !{!191, !46, i64 24}
!361 = !{!362, !47, i64 36}
!362 = !{!"BezTriple", !37, i64 0, !47, i64 36, !47, i64 40, !47, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !47, i64 56, !47, i64 60, !47, i64 64, !37, i64 68}
!363 = distinct !{!363, !50, !51}
!364 = !{!191, !36, i64 64}
!365 = !{!191, !46, i64 28}
!366 = !{!367, !47, i64 16}
!367 = !{!"BPoint", !37, i64 0, !47, i64 16, !47, i64 20, !39, i64 24, !39, i64 26, !47, i64 28, !47, i64 32}
!368 = distinct !{!368, !50, !51}
!369 = distinct !{!369, !50, !51}
!370 = distinct !{!370, !50, !51}
!371 = !{!78, !46, i64 748}
!372 = !{!78, !39, i64 890}
!373 = !{!78, !39, i64 818}
!374 = !{!97, !36, i64 8}
!375 = distinct !{!375, !50, !51}
!376 = distinct !{!376, !50, !51}
!377 = distinct !{!377, !50, !51}
!378 = !{!165, !37, i64 1046}
!379 = distinct !{!379, !50, !51}
!380 = distinct !{!380, !50, !51}
!381 = distinct !{!381, !50, !51}
!382 = !{!135, !39, i64 232}
!383 = distinct !{!383, !50, !51}
!384 = !{!35, !36, i64 1184}
!385 = !{!35, !36, i64 1312}
!386 = !{!35, !36, i64 1200}
!387 = !{!78, !46, i64 908}
!388 = distinct !{!388, !50, !51}
!389 = !{!149, !36, i64 592}
!390 = !{!237, !39, i64 0}
!391 = distinct !{!391, !50, !51}
!392 = !{!149, !36, i64 600}
!393 = distinct !{!393, !50, !51}
!394 = !{!149, !36, i64 0}
!395 = distinct !{!395, !50, !51}
!396 = !{!156, !36, i64 360}
!397 = distinct !{!397, !50, !51}
!398 = !{!156, !36, i64 0}
!399 = distinct !{!399, !50, !51}
!400 = !{!401, !36, i64 0}
!401 = !{!"World", !45, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !39, i64 132, !39, i64 134, !47, i64 136, !47, i64 140, !47, i64 144, !47, i64 148, !47, i64 152, !47, i64 156, !47, i64 160, !47, i64 164, !47, i64 168, !47, i64 172, !47, i64 176, !47, i64 180, !47, i64 184, !47, i64 188, !47, i64 192, !47, i64 196, !39, i64 200, !39, i64 202, !39, i64 204, !39, i64 206, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !47, i64 216, !47, i64 220, !47, i64 224, !47, i64 228, !47, i64 232, !47, i64 236, !47, i64 240, !47, i64 244, !47, i64 248, !47, i64 252, !47, i64 256, !47, i64 260, !39, i64 264, !39, i64 266, !39, i64 268, !39, i64 270, !47, i64 272, !47, i64 276, !47, i64 280, !47, i64 284, !39, i64 288, !39, i64 290, !39, i64 292, !39, i64 294, !47, i64 296, !47, i64 300, !47, i64 304, !47, i64 308, !47, i64 312, !47, i64 316, !47, i64 320, !39, i64 324, !39, i64 326, !39, i64 328, !39, i64 330, !39, i64 332, !39, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !39, i64 504, !39, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!402 = distinct !{!402, !50, !51}
!403 = !{!226, !46, i64 304}
!404 = distinct !{!404, !50, !51}
!405 = distinct !{!405, !50, !51}
!406 = !{!407, !37, i64 115}
!407 = !{!"MultiresModifierData", !290, i64 0, !37, i64 112, !37, i64 113, !37, i64 114, !37, i64 115, !37, i64 116, !37, i64 117, !37, i64 118}
!408 = !{!407, !37, i64 112}
!409 = !{!407, !37, i64 113}
!410 = !{!407, !37, i64 114}
!411 = distinct !{!411, !50, !51}
!412 = distinct !{!412, !50, !51}
!413 = !{!290, !46, i64 16}
!414 = !{!320, !47, i64 104}
!415 = distinct !{!415, !50, !51}
!416 = distinct !{!416, !50, !51}
!417 = distinct !{!417, !50, !51}
!418 = distinct !{!418, !50, !51}
!419 = distinct !{!419, !50, !51}
!420 = distinct !{!420, !50, !51}
!421 = distinct !{!421, !50, !51}
!422 = !{!144, !46, i64 240}
!423 = !{!144, !39, i64 224}
!424 = distinct !{!424, !50, !51}
!425 = !{!115, !39, i64 218}
!426 = !{!115, !47, i64 112}
!427 = !{!115, !47, i64 116}
!428 = !{!115, !47, i64 16}
!429 = !{!115, !47, i64 24}
!430 = !{!115, !47, i64 20}
!431 = !{!115, !47, i64 28}
!432 = !{i64 0, i64 4, !216, i64 4, i64 4, !216, i64 8, i64 4, !216, i64 12, i64 4, !216}
!433 = distinct !{!433, !50, !51}
!434 = !{!78, !47, i64 4484}
!435 = distinct !{!435, !50, !51}
!436 = !{!437, !39, i64 224}
!437 = !{!"bArmature", !45, i64 0, !36, i64 120, !41, i64 128, !41, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !46, i64 192, !46, i64 196, !46, i64 200, !46, i64 204, !39, i64 208, !39, i64 210, !46, i64 212, !46, i64 216, !46, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !46, i64 232, !46, i64 236, !46, i64 240, !46, i64 244, !46, i64 248, !46, i64 252}
!438 = !{!166, !46, i64 12}
!439 = !{!166, !46, i64 8}
!440 = !{!437, !46, i64 232}
!441 = !{!166, !46, i64 0}
!442 = !{!437, !46, i64 236}
!443 = !{!166, !46, i64 4}
!444 = !{!437, !39, i64 228}
!445 = !{!166, !39, i64 16}
!446 = !{!437, !39, i64 226}
!447 = !{!166, !39, i64 18}
!448 = !{!437, !46, i64 248}
!449 = !{!166, !46, i64 40}
!450 = !{!437, !46, i64 252}
!451 = !{!166, !46, i64 44}
!452 = !{!437, !46, i64 240}
!453 = !{!166, !46, i64 32}
!454 = !{!437, !46, i64 244}
!455 = !{!166, !46, i64 36}
!456 = !{!437, !39, i64 210}
!457 = !{!166, !39, i64 28}
!458 = !{!166, !39, i64 30}
!459 = !{!166, !39, i64 24}
!460 = !{!437, !39, i64 230}
!461 = !{!166, !39, i64 26}
!462 = distinct !{!462, !50, !51}
!463 = distinct !{!463, !50, !51}
!464 = !{!149, !47, i64 308}
!465 = !{!149, !47, i64 300}
!466 = !{!149, !47, i64 304}
!467 = distinct !{!467, !50, !51}
!468 = !{!469, !39, i64 24}
!469 = !{!"bConstraint", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 26, !37, i64 28, !37, i64 29, !37, i64 30, !39, i64 94, !47, i64 96, !47, i64 100, !36, i64 104, !47, i64 112, !47, i64 116}
!470 = !{!469, !36, i64 16}
!471 = !{!472, !47, i64 32}
!472 = !{!"bRigidBodyJointConstraint", !36, i64 0, !36, i64 8, !46, i64 16, !47, i64 20, !47, i64 24, !47, i64 28, !47, i64 32, !47, i64 36, !47, i64 40, !37, i64 44, !37, i64 68, !47, i64 92, !39, i64 96, !39, i64 98, !39, i64 100, !39, i64 102}
!473 = !{!472, !47, i64 36}
!474 = !{!472, !47, i64 40}
!475 = !{!476, !47, i64 152}
!476 = !{!"bKinematicConstraint", !36, i64 0, !39, i64 8, !39, i64 10, !39, i64 12, !39, i64 14, !37, i64 16, !36, i64 80, !37, i64 88, !47, i64 152, !47, i64 156, !47, i64 160, !37, i64 164, !39, i64 176, !39, i64 178, !47, i64 180}
!477 = !{!478, !47, i64 0}
!478 = !{!"bRotLimitConstraint", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !39, i64 24, !39, i64 26}
!479 = !{!478, !47, i64 4}
!480 = !{!478, !47, i64 8}
!481 = !{!478, !47, i64 12}
!482 = !{!478, !47, i64 16}
!483 = !{!478, !47, i64 20}
!484 = distinct !{!484, !50, !51}
!485 = distinct !{!485, !50, !51}
!486 = distinct !{!486, !50, !51}
!487 = distinct !{!487, !50, !51}
!488 = distinct !{!488, !50, !51}
!489 = !{!115, !47, i64 44}
!490 = !{!113, !39, i64 76}
!491 = !{!115, !47, i64 40}
!492 = distinct !{!492, !50, !51}
!493 = distinct !{!493, !50, !51}
!494 = !{!149, !47, i64 180}
!495 = distinct !{!495, !50, !51}
!496 = !{!401, !47, i64 280}
!497 = !{!401, !47, i64 316}
!498 = !{!401, !39, i64 324}
!499 = !{!401, !39, i64 202}
!500 = !{!401, !39, i64 292}
!501 = distinct !{!501, !50, !51}
!502 = !{!78, !47, i64 840}
!503 = !{!78, !47, i64 848}
!504 = !{!78, !47, i64 844}
!505 = !{!78, !47, i64 852}
!506 = !{!78, !46, i64 648}
!507 = !{!78, !46, i64 616}
!508 = !{!102, !47, i64 288}
!509 = distinct !{!509, !50, !51}
!510 = distinct !{!510, !50, !51}
!511 = distinct !{!511, !50, !51}
!512 = !{!513, !47, i64 12}
!513 = !{!"ParticleBrushData", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !46, i64 8, !47, i64 12}
!514 = distinct !{!514, !50, !51}
!515 = !{!149, !39, i64 394}
!516 = distinct !{!516, !50, !51}
!517 = distinct !{!517, !50, !51}
!518 = distinct !{!518, !50, !51}
!519 = distinct !{!519, !50, !51}
!520 = distinct !{!520, !50, !51}
!521 = distinct !{!521, !50, !51}
!522 = distinct !{!522, !50, !51}
!523 = !{!135, !39, i64 242}
!524 = distinct !{!524, !50, !51}
!525 = !{!526, !36, i64 144}
!526 = !{!"Brush", !45, i64 0, !527, i64 120, !36, i64 144, !154, i64 152, !154, i64 464, !36, i64 776, !36, i64 784, !36, i64 792, !36, i64 800, !36, i64 808, !37, i64 816, !47, i64 1840, !39, i64 1844, !39, i64 1846, !47, i64 1848, !46, i64 1852, !46, i64 1856, !46, i64 1860, !47, i64 1864, !46, i64 1868, !46, i64 1872, !46, i64 1876, !46, i64 1880, !47, i64 1884, !47, i64 1888, !37, i64 1892, !47, i64 1904, !37, i64 1908, !46, i64 1920, !47, i64 1924, !47, i64 1928, !46, i64 1932, !46, i64 1936, !46, i64 1940, !37, i64 1944, !37, i64 1945, !37, i64 1946, !37, i64 1947, !47, i64 1948, !47, i64 1952, !47, i64 1956, !47, i64 1960, !47, i64 1964, !46, i64 1968, !46, i64 1972, !46, i64 1976, !47, i64 1980, !47, i64 1984, !46, i64 1988, !46, i64 1992, !47, i64 1996, !37, i64 2000, !37, i64 2012, !37, i64 2024, !37, i64 2032, !37, i64 2040, !37, i64 2048}
!527 = !{!"BrushClone", !36, i64 0, !37, i64 8, !47, i64 16, !47, i64 20}
!528 = !{!529, !46, i64 8}
!529 = !{!"CurveMapping", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !85, i64 16, !85, i64 32, !37, i64 48, !37, i64 336, !37, i64 348, !37, i64 360, !37, i64 372}
!530 = distinct !{!530, !50, !51}
!531 = distinct !{!531, !50, !51}
!532 = !{!292, !46, i64 1192}
!533 = distinct !{!533, !50, !51}
!534 = !{!175, !36, i64 248}
!535 = distinct !{!535, !50, !51}
!536 = distinct !{!536, !50, !51}
!537 = distinct !{!537, !50, !51}
!538 = distinct !{!538, !50, !51}
!539 = distinct !{!539, !50, !51}
!540 = distinct !{!540, !50, !51}
!541 = distinct !{!541, !50, !51}
!542 = distinct !{!542, !50, !51}
!543 = distinct !{!543, !50, !51}
!544 = distinct !{!544, !50, !51}
!545 = !{!142, !47, i64 152}
!546 = !{!142, !47, i64 156}
!547 = distinct !{!547, !50, !51}
!548 = !{!549, !46, i64 216}
!549 = !{!"SpaceTime", !36, i64 0, !36, i64 8, !41, i64 16, !46, i64 32, !47, i64 36, !116, i64 40, !41, i64 200, !46, i64 216, !46, i64 220}
!550 = distinct !{!550, !50, !51}
!551 = distinct !{!551, !50, !51}
!552 = !{!553, !36, i64 344}
!553 = !{!"MeshDeformModifierData", !290, i64 0, !36, i64 112, !37, i64 120, !39, i64 184, !39, i64 186, !37, i64 188, !36, i64 192, !36, i64 200, !36, i64 208, !46, i64 216, !46, i64 220, !36, i64 224, !36, i64 232, !36, i64 240, !46, i64 248, !46, i64 252, !37, i64 256, !47, i64 268, !37, i64 272, !36, i64 336, !36, i64 344, !36, i64 352}
!554 = !{!553, !36, i64 208}
!555 = distinct !{!555, !50, !51}
!556 = !{!165, !36, i64 216}
!557 = !{!165, !39, i64 138}
!558 = !{!559, !36, i64 120}
!559 = !{!"ArmatureModifierData", !290, i64 0, !39, i64 112, !39, i64 114, !46, i64 116, !36, i64 120, !36, i64 128, !37, i64 136}
!560 = !{!437, !39, i64 208}
!561 = !{!559, !39, i64 112}
!562 = !{!563, !36, i64 112}
!563 = !{!"LatticeModifierData", !290, i64 0, !36, i64 112, !37, i64 120, !47, i64 184, !37, i64 188}
!564 = !{!565, !36, i64 112}
!565 = !{!"CurveModifierData", !290, i64 0, !36, i64 112, !37, i64 120, !39, i64 184, !37, i64 186}
!566 = distinct !{!566, !50, !51}
!567 = !{!78, !46, i64 232}
!568 = distinct !{!568, !50, !51}
!569 = !{!78, !46, i64 236}
!570 = distinct !{!570, !50, !51}
!571 = !{!156, !47, i64 144}
!572 = distinct !{!572, !50, !51}
!573 = !{!357, !47, i64 256}
!574 = distinct !{!574, !50, !51}
!575 = !{!102, !47, i64 144}
!576 = distinct !{!576, !50, !51}
!577 = distinct !{!577, !50, !51}
!578 = !{!526, !46, i64 1876}
!579 = !{!526, !47, i64 1904}
!580 = !{!526, !47, i64 1980}
!581 = !{!526, !46, i64 1852}
!582 = !{!526, !46, i64 1968}
!583 = !{!526, !47, i64 1952}
!584 = !{!526, !47, i64 1956}
!585 = !{!526, !46, i64 1880}
!586 = !{!526, !47, i64 1884}
!587 = !{!526, !47, i64 1888}
!588 = !{!526, !46, i64 1856}
!589 = distinct !{!589, !50, !51}
!590 = !{!226, !47, i64 476}
!591 = !{!226, !47, i64 472}
!592 = !{!226, !46, i64 468}
!593 = distinct !{!593, !50, !51}
!594 = distinct !{!594, !50, !51}
!595 = !{!596, !46, i64 140}
!596 = !{!"SmokeModifierData", !290, i64 0, !36, i64 112, !36, i64 120, !36, i64 128, !47, i64 136, !46, i64 140}
!597 = !{!596, !36, i64 112}
!598 = !{!599, !47, i64 528}
!599 = !{!"SmokeDomainSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !37, i64 96, !37, i64 108, !37, i64 120, !37, i64 132, !37, i64 144, !37, i64 156, !37, i64 168, !37, i64 180, !37, i64 192, !37, i64 204, !37, i64 268, !37, i64 332, !37, i64 344, !37, i64 356, !37, i64 368, !46, i64 380, !47, i64 384, !47, i64 388, !46, i64 392, !46, i64 396, !47, i64 400, !47, i64 404, !47, i64 408, !46, i64 412, !46, i64 416, !46, i64 420, !46, i64 424, !39, i64 428, !39, i64 430, !46, i64 432, !47, i64 436, !37, i64 440, !47, i64 452, !46, i64 456, !46, i64 460, !37, i64 464, !37, i64 480, !36, i64 512, !46, i64 520, !47, i64 524, !47, i64 528, !46, i64 532, !37, i64 536, !46, i64 548, !47, i64 552, !47, i64 556, !47, i64 560, !47, i64 564, !47, i64 568, !37, i64 572}
!600 = !{!599, !47, i64 524}
!601 = !{!599, !46, i64 420}
!602 = distinct !{!602, !50, !51}
!603 = !{!596, !36, i64 120}
!604 = !{!605, !46, i64 180}
!605 = !{!"SmokeFlowSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !46, i64 40, !47, i64 44, !47, i64 48, !47, i64 52, !47, i64 56, !37, i64 60, !47, i64 72, !47, i64 76, !47, i64 80, !47, i64 84, !47, i64 88, !46, i64 92, !47, i64 96, !47, i64 100, !46, i64 104, !37, i64 108, !39, i64 172, !39, i64 174, !39, i64 176, !39, i64 178, !46, i64 180}
!606 = distinct !{!606, !50, !51}
!607 = !{!605, !47, i64 44}
!608 = distinct !{!608, !50, !51}
!609 = !{!526, !39, i64 1846}
!610 = distinct !{!610, !50, !51}
!611 = !{!184, !36, i64 128}
!612 = !{!613, !47, i64 20}
!613 = !{!"BoidSettings", !46, i64 0, !46, i64 4, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !47, i64 24, !47, i64 28, !47, i64 32, !47, i64 36, !47, i64 40, !47, i64 44, !47, i64 48, !47, i64 52, !47, i64 56, !47, i64 60, !47, i64 64, !47, i64 68, !47, i64 72, !47, i64 76, !47, i64 80, !47, i64 84, !41, i64 88}
!614 = !{!184, !46, i64 152}
!615 = !{!184, !47, i64 496}
!616 = distinct !{!616, !50, !51}
!617 = distinct !{!617, !50, !51}
!618 = distinct !{!618, !50, !51}
!619 = !{!620, !37, i64 56}
!620 = !{!"SpaceInfo", !36, i64 0, !36, i64 8, !41, i64 16, !46, i64 32, !47, i64 36, !37, i64 40, !37, i64 56, !37, i64 57}
!621 = !{!115, !39, i64 120}
!622 = distinct !{!622, !50, !51}
!623 = distinct !{!623, !50, !51}
!624 = distinct !{!624, !50, !51}
!625 = distinct !{!625, !50, !51}
!626 = distinct !{!626, !50, !51}
!627 = !{!628, !39, i64 6}
!628 = !{!"bSteeringActuator", !37, i64 0, !37, i64 5, !39, i64 6, !46, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !47, i64 24, !46, i64 28, !36, i64 32, !36, i64 40}
!629 = distinct !{!629, !50, !51}
!630 = distinct !{!630, !50, !51}
!631 = !{!632, !46, i64 128}
!632 = !{!"OceanModifierData", !290, i64 0, !36, i64 112, !36, i64 120, !46, i64 128, !46, i64 132, !47, i64 136, !47, i64 140, !47, i64 144, !47, i64 148, !47, i64 152, !47, i64 156, !47, i64 160, !47, i64 164, !47, i64 168, !47, i64 172, !46, i64 176, !46, i64 180, !37, i64 184, !37, i64 1208, !37, i64 1272, !37, i64 1273, !37, i64 1274, !37, i64 1275, !39, i64 1276, !39, i64 1278, !46, i64 1280, !47, i64 1284, !47, i64 1288, !46, i64 1292}
!633 = !{!632, !36, i64 120}
!634 = distinct !{!634, !50, !51}
!635 = distinct !{!635, !50, !51}
!636 = distinct !{!636, !50, !51}
!637 = !{!638, !46, i64 10500}
!638 = !{!"SpaceImage", !36, i64 0, !36, i64 8, !41, i64 16, !46, i64 32, !46, i64 36, !36, i64 40, !157, i64 48, !36, i64 88, !639, i64 96, !640, i64 5360, !36, i64 10520, !37, i64 10528, !47, i64 10536, !47, i64 10540, !47, i64 10544, !47, i64 10548, !47, i64 10552, !37, i64 10556, !37, i64 10557, !39, i64 10558, !39, i64 10560, !39, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !641, i64 10568}
!639 = !{!"Scopes", !46, i64 0, !46, i64 4, !46, i64 8, !47, i64 12, !46, i64 16, !47, i64 20, !47, i64 24, !46, i64 28, !47, i64 32, !46, i64 36, !37, i64 40, !640, i64 64, !36, i64 5224, !36, i64 5232, !36, i64 5240, !36, i64 5248, !46, i64 5256, !46, i64 5260}
!640 = !{!"Histogram", !46, i64 0, !46, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !47, i64 5128, !47, i64 5132, !39, i64 5136, !39, i64 5138, !46, i64 5140, !37, i64 5144}
!641 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!642 = distinct !{!642, !50, !51}
!643 = distinct !{!643, !50, !51}
!644 = !{!343, !47, i64 176}
!645 = !{!343, !47, i64 180}
!646 = distinct !{!646, !50, !51}
!647 = distinct !{!647, !50, !51}
!648 = distinct !{!648, !50, !51}
!649 = !{!165, !47, i64 620}
!650 = distinct !{!650, !50, !51}
!651 = distinct !{!651, !50, !51}
!652 = !{!653, !46, i64 264}
!653 = !{!"bNodeTree", !45, i64 0, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 200, !36, i64 208, !37, i64 216, !41, i64 224, !41, i64 240, !46, i64 256, !46, i64 260, !46, i64 264, !46, i64 268, !46, i64 272, !39, i64 276, !39, i64 278, !46, i64 280, !46, i64 284, !39, i64 288, !39, i64 290, !46, i64 292, !85, i64 296, !41, i64 312, !41, i64 328, !36, i64 344, !654, i64 352, !46, i64 356, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !36, i64 408, !36, i64 416, !36, i64 424}
!654 = !{!"bNodeInstanceKey", !46, i64 0}
!655 = !{!656, !46, i64 280}
!656 = !{!"bNodeSocket", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !37, i64 96, !36, i64 160, !39, i64 168, !39, i64 170, !39, i64 172, !39, i64 174, !36, i64 176, !37, i64 184, !47, i64 248, !47, i64 252, !36, i64 256, !39, i64 264, !39, i64 266, !46, i64 268, !36, i64 272, !46, i64 280, !46, i64 284, !36, i64 288, !36, i64 296, !657, i64 304}
!657 = !{!"bNodeStack", !37, i64 0, !47, i64 16, !47, i64 20, !36, i64 24, !39, i64 32, !39, i64 34, !39, i64 36, !39, i64 38, !39, i64 40, !39, i64 42, !37, i64 44}
!658 = distinct !{!658, !50, !51}
!659 = distinct !{!659, !50, !51}
!660 = distinct !{!660, !50, !51}
!661 = !{!656, !36, i64 296}
!662 = !{!656, !39, i64 168}
!663 = !{!656, !39, i64 172}
!664 = !{!653, !46, i64 272}
!665 = !{!666, !36, i64 16}
!666 = !{!"bNodeLink", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !46, i64 48, !46, i64 52}
!667 = !{!666, !36, i64 32}
!668 = !{!666, !36, i64 24}
!669 = !{!666, !36, i64 40}
!670 = distinct !{!670, !50, !51}
!671 = distinct !{!671, !50, !51}
!672 = !{!653, !46, i64 268}
!673 = distinct !{!673, !50, !51}
!674 = !{!154, !39, i64 2}
!675 = distinct !{!675, !50, !51}
!676 = !{!149, !47, i64 200}
!677 = !{!149, !47, i64 336}
!678 = distinct !{!678, !50, !51}
!679 = !{!680, !46, i64 200}
!680 = !{!"bScreen", !45, i64 0, !41, i64 120, !41, i64 136, !41, i64 152, !41, i64 168, !36, i64 184, !36, i64 192, !46, i64 200, !46, i64 204, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !39, i64 220, !39, i64 222, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !36, i64 232, !36, i64 240}
!681 = distinct !{!681, !50, !51}
!682 = !{!526, !47, i64 1960}
!683 = distinct !{!683, !50, !51}
!684 = distinct !{!684, !50, !51}
!685 = !{!686, !46, i64 208}
!686 = !{!"SolidifyModifierData", !290, i64 0, !37, i64 112, !47, i64 176, !47, i64 180, !47, i64 184, !47, i64 188, !47, i64 192, !47, i64 196, !47, i64 200, !47, i64 204, !46, i64 208, !39, i64 212, !39, i64 214}
!687 = !{!686, !39, i64 214}
!688 = distinct !{!688, !50, !51}
!689 = !{!184, !46, i64 176}
!690 = !{!184, !39, i64 196}
!691 = distinct !{!691, !50, !51}
!692 = !{!180, !36, i64 208}
!693 = !{!180, !46, i64 1288}
!694 = distinct !{!694, !50, !51}
!695 = !{!696, !47, i64 20}
!696 = !{!"NodeBlurData", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !39, i64 8, !39, i64 10, !39, i64 12, !39, i64 14, !47, i64 16, !47, i64 20, !47, i64 24, !39, i64 28, !37, i64 30, !37, i64 31, !46, i64 32, !46, i64 36}
!697 = !{!696, !47, i64 24}
!698 = distinct !{!698, !50, !51}
!699 = distinct !{!699, !50, !51}
!700 = distinct !{!700, !50, !51}
!701 = distinct !{!701, !50, !51}
!702 = !{!116, !39, i64 116}
!703 = !{!116, !39, i64 112}
!704 = !{!116, !39, i64 110}
!705 = !{!116, !39, i64 108}
!706 = !{!116, !39, i64 104}
!707 = !{!116, !47, i64 100}
!708 = !{!116, !47, i64 96}
!709 = distinct !{!709, !50, !51}
!710 = distinct !{!710, !50, !51}
!711 = distinct !{!711, !50, !51}
!712 = !{!156, !36, i64 384}
!713 = !{!714, !47, i64 80}
!714 = !{!"PointDensity", !39, i64 0, !39, i64 2, !47, i64 4, !47, i64 8, !39, i64 12, !39, i64 14, !46, i64 16, !46, i64 20, !36, i64 24, !46, i64 32, !39, i64 36, !39, i64 38, !36, i64 40, !36, i64 48, !47, i64 56, !39, i64 60, !39, i64 62, !39, i64 64, !37, i64 66, !47, i64 72, !47, i64 76, !47, i64 80, !47, i64 84, !36, i64 88, !36, i64 96}
!715 = !{!714, !36, i64 96}
!716 = !{!717, !39, i64 2}
!717 = !{!"CurveMap", !39, i64 0, !39, i64 2, !47, i64 4, !47, i64 8, !47, i64 12, !37, i64 16, !37, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !37, i64 56, !37, i64 64}
!718 = distinct !{!718, !50, !51}
!719 = distinct !{!719, !50, !51}
!720 = !{!721, !47, i64 20}
!721 = !{!"bCameraActuator", !36, i64 0, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !39, i64 24, !39, i64 26, !47, i64 28}
!722 = distinct !{!722, !50, !51}
!723 = distinct !{!723, !50, !51}
!724 = !{!78, !46, i64 632}
!725 = !{!78, !47, i64 4288}
!726 = !{!102, !47, i64 292}
!727 = distinct !{!727, !50, !51}
!728 = distinct !{!728, !50, !51}
!729 = distinct !{!729, !50, !51}
!730 = distinct !{!730, !50, !51}
!731 = distinct !{!731, !50, !51}
!732 = distinct !{!732, !50, !51}
!733 = distinct !{!733, !50, !51}
!734 = distinct !{!734, !50, !51}
!735 = !{!736, !39, i64 72}
!736 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !36, i64 48, !36, i64 56, !46, i64 64, !47, i64 68, !39, i64 72, !39, i64 74, !46, i64 76, !36, i64 80, !46, i64 88, !37, i64 92, !47, i64 104, !47, i64 108}
!737 = !{!736, !46, i64 64}
!738 = !{!736, !36, i64 48}
!739 = !{!362, !37, i64 49}
!740 = !{!362, !37, i64 50}
!741 = distinct !{!741, !50, !51}
!742 = distinct !{!742, !50, !51}
!743 = distinct !{!743, !50, !51}
!744 = !{!745, !39, i64 2}
!745 = !{!"bIpoActuator", !39, i64 0, !39, i64 2, !47, i64 4, !47, i64 8, !37, i64 12, !37, i64 76, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146}
!746 = !{!747, !39, i64 8}
!747 = !{!"bActionActuator", !36, i64 0, !39, i64 8, !39, i64 10, !47, i64 12, !47, i64 16, !37, i64 20, !37, i64 84, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !47, i64 160, !47, i64 164}
!748 = !{!745, !39, i64 0}
!749 = !{!747, !39, i64 10}
!750 = !{!745, !47, i64 4}
!751 = !{!747, !47, i64 12}
!752 = !{!745, !47, i64 8}
!753 = !{!747, !47, i64 16}
!754 = !{!165, !36, i64 120}
!755 = !{!756, !36, i64 0}
!756 = !{!"AnimData", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !36, i64 40, !41, i64 48, !41, i64 64, !46, i64 80, !46, i64 84, !39, i64 88, !39, i64 90, !47, i64 92}
!757 = !{!747, !36, i64 0}
!758 = !{!54, !39, i64 28}
!759 = !{!165, !36, i64 256}
!760 = distinct !{!760, !50, !51}
!761 = distinct !{!761, !50, !51}
!762 = distinct !{!762, !50, !51}
!763 = distinct !{!763, !50, !51}
!764 = distinct !{!764, !50, !51}
!765 = distinct !{!765, !50, !51}
!766 = distinct !{!766, !50, !51}
!767 = !{!653, !46, i64 284}
!768 = distinct !{!768, !50, !51}
!769 = !{!184, !47, i64 304}
!770 = !{!184, !39, i64 340}
!771 = distinct !{!771, !50, !51}
!772 = !{!78, !47, i64 4580}
!773 = !{!78, !47, i64 4488}
!774 = !{!78, !47, i64 4492}
!775 = !{!78, !47, i64 4496}
!776 = !{!78, !47, i64 4500}
!777 = !{!78, !47, i64 4504}
!778 = !{!78, !47, i64 4508}
!779 = !{!78, !47, i64 4512}
!780 = !{!78, !47, i64 4516}
!781 = !{!78, !47, i64 4520}
!782 = !{!78, !47, i64 4524}
!783 = !{!78, !46, i64 4528}
!784 = !{!78, !47, i64 4532}
!785 = !{!78, !47, i64 4536}
!786 = distinct !{!786, !50, !51}
!787 = !{!154, !39, i64 4}
!788 = !{!154, !47, i64 168}
!789 = !{!154, !47, i64 164}
!790 = !{!154, !47, i64 176}
!791 = !{!154, !47, i64 172}
!792 = !{!154, !47, i64 180}
!793 = !{!154, !47, i64 184}
!794 = !{!154, !47, i64 188}
!795 = !{!154, !47, i64 192}
!796 = !{!154, !47, i64 196}
!797 = !{!154, !47, i64 200}
!798 = !{!154, !47, i64 204}
!799 = !{!154, !47, i64 208}
!800 = !{!154, !47, i64 212}
!801 = !{!154, !47, i64 216}
!802 = !{!154, !47, i64 220}
!803 = !{!154, !47, i64 224}
!804 = !{!154, !47, i64 228}
!805 = !{!154, !47, i64 232}
!806 = !{!154, !47, i64 236}
!807 = !{!154, !47, i64 240}
!808 = !{!154, !47, i64 244}
!809 = !{!154, !47, i64 248}
!810 = !{!154, !47, i64 252}
!811 = !{!154, !47, i64 256}
!812 = !{!154, !47, i64 264}
!813 = !{!154, !47, i64 268}
!814 = !{!154, !47, i64 272}
!815 = !{!154, !47, i64 280}
!816 = !{!154, !47, i64 284}
!817 = !{!154, !47, i64 288}
!818 = !{!154, !47, i64 296}
!819 = !{!154, !47, i64 300}
!820 = !{!154, !47, i64 304}
!821 = !{!154, !47, i64 308}
!822 = distinct !{!822, !50, !51}
!823 = !{!102, !36, i64 256}
!824 = distinct !{!824, !50, !51}
!825 = distinct !{!825, !50, !51}
!826 = !{!656, !36, i64 256}
!827 = !{!828, !47, i64 4}
!828 = !{!"bNodeSocketValueFloat", !46, i64 0, !47, i64 4, !47, i64 8, !47, i64 12}
!829 = !{!656, !47, i64 320}
!830 = !{!828, !47, i64 8}
!831 = !{!656, !47, i64 324}
!832 = !{!828, !47, i64 12}
!833 = !{!828, !46, i64 0}
!834 = !{!835, !47, i64 16}
!835 = !{!"bNodeSocketValueVector", !46, i64 0, !37, i64 4, !47, i64 16, !47, i64 20}
!836 = !{!835, !47, i64 20}
!837 = !{!835, !46, i64 0}
!838 = distinct !{!838, !50, !51}
!839 = !{i64 0, i64 4, !840, i64 4, i64 4, !840, i64 8, i64 4, !840, i64 12, i64 4, !840}
!840 = !{!46, !46, i64 0}
!841 = !{!113, !39, i64 74}
!842 = !{!843, !37, i64 336}
!843 = !{!"SpaceAction", !36, i64 0, !36, i64 8, !41, i64 16, !46, i64 32, !47, i64 36, !37, i64 40, !116, i64 56, !36, i64 216, !844, i64 224, !37, i64 336, !37, i64 337, !39, i64 338, !47, i64 340}
!844 = !{!"bDopeSheet", !36, i64 0, !41, i64 8, !36, i64 24, !37, i64 32, !46, i64 96, !46, i64 100, !46, i64 104, !46, i64 108}
!845 = !{!843, !36, i64 216}
!846 = !{!115, !39, i64 208}
!847 = !{!115, !39, i64 210}
!848 = !{!849, !39, i64 72}
!849 = !{!"SpaceText", !36, i64 0, !36, i64 8, !41, i64 16, !46, i64 32, !47, i64 36, !37, i64 40, !36, i64 56, !46, i64 64, !46, i64 68, !39, i64 72, !39, i64 74, !39, i64 76, !37, i64 78, !37, i64 79, !46, i64 80, !46, i64 84, !46, i64 88, !39, i64 92, !39, i64 94, !39, i64 96, !39, i64 98, !47, i64 100, !86, i64 104, !86, i64 120, !46, i64 136, !46, i64 140, !37, i64 144, !37, i64 400, !39, i64 656, !39, i64 658, !37, i64 660, !36, i64 664, !37, i64 672}
