; ModuleID = 'blender/source/blender/blenloader/intern/versioning_260.c'
source_filename = "blender/source/blender/blenloader/intern/versioning_260.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.NodeTreeIterStore = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SeqIterator = type { ptr, i32, i32, ptr, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
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
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Camera = type { %struct.ID, ptr, i8, i8, i16, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, i8, [7 x i8] }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.TexMapping = type { [3 x float], [3 x float], [3 x float], i32, i8, i8, i8, i8, i32, [4 x [4 x float]], [3 x float], [3 x float], ptr }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.SpaceLink = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16] }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.SpaceClip = type { ptr, ptr, %struct.ListBase, i32, float, float, float, float, float, %struct.MovieClipUser, ptr, %struct.MovieClipScopes, i32, i16, i16, i32, [2 x float], float, float, i32, [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i32, i32, [2 x float], %struct.MaskSpaceInfo }
%struct.MovieClipUser = type { i32, i16, i16 }
%struct.MovieClipScopes = type { i16, i16, i32, i32, i32, %struct.MovieTrackingMarker, ptr, ptr, [2 x float], i16, i16, i32, ptr, ptr, [2 x float] }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.MovieTrackingObject = type { ptr, ptr, [64 x i8], i32, float, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, i32, i32 }
%struct.FileData = type { %struct.ListBase, i32, i32, i32, i32, ptr, ptr, ptr, i32, ptr, [1024 x i8], i8, i32, %struct.z_stream_s, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.bObjectSolverConstraint = type { ptr, i32, i32, [64 x i8], [4 x [4 x float]], ptr }
%struct.bActuator = type { ptr, ptr, ptr, i16, i16, i16, i16, [64 x i8], ptr, ptr }
%struct.bCameraActuator = type { ptr, float, float, float, float, i16, i16, float }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.Text = type { %struct.ID, ptr, i32, i32, %struct.ListBase, ptr, ptr, i32, i32, ptr, i32, i32, ptr, double }
%struct.TextLine = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.DynamicPaintModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32 }
%struct.DynamicPaintCanvasSettings = type { ptr, ptr, %struct.ListBase, i16, i16, i32, [64 x i8] }
%struct.DynamicPaintSurface = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, i32, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x float], ptr, [64 x i8], i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [64 x i8], [1024 x i8], [64 x i8], [64 x i8] }
%struct.ClothModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ClothSimSettings = type { ptr, float, float, float, [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i8], ptr }
%struct.FluidsimModifierData = type { %struct.ModifierData, ptr, ptr }
%struct.FluidsimSettings = type { ptr, i32, i32, i16, i16, i16, i16, float, i16, i16, float, i16, i16, [3 x float], float, float, i32, i32, i32, i32, float, i32, float, float, float, ptr, ptr, [1024 x i8], [3 x float], [3 x float], ptr, i16, i8, i8, float, i32, float, float, i32, i32, float, float, float, ptr, i32, float, float, float, float, float, float, float, i32, float }
%struct.KeyingSet = type { ptr, ptr, %struct.ListBase, [64 x i8], [64 x i8], [240 x i8], [64 x i8], i16, i16, i32 }
%struct.LatticeModifierData = type { %struct.ModifierData, ptr, [64 x i8], float, [4 x i8] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.SmokeModifierData = type { %struct.ModifierData, ptr, ptr, ptr, float, i32 }
%struct.SmokeDomainSettings = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x i32], [3 x float], [3 x float], [4 x [4 x float]], [4 x [4 x float]], [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, float, float, i32, i32, float, float, float, i32, i32, i32, i32, i16, i16, i32, float, [3 x i32], float, i32, i32, [2 x ptr], [2 x %struct.ListBase], ptr, i32, float, float, i32, [3 x float], i32, float, float, float, float, float, [3 x float] }
%struct.NodeTexImage = type { %struct.NodeTexBase, %struct.ImageUser, i32, i32, float, i32 }
%struct.NodeTexBase = type { %struct.TexMapping, %struct.ColorMapping }
%struct.ColorMapping = type { %struct.ColorBand, float, float, float, i32, [3 x float], float, i32, [3 x i32] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.NodeDefocus = type { i8, i8, i8, i8, i16, i16, float, float, float, float, float, float }
%struct.NodeKeyingData = type { float, float, float, i32, float, float, float, i32, i32, i32, i32, i32 }
%struct.Sequence = type { ptr, ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, float, float, float, float, ptr, i32, i32, i32, float, i32, i8, [3 x i8], %struct.ListBase }
%struct.Strip = type { ptr, ptr, i32, i32, i32, i32, ptr, [768 x i8], ptr, ptr, ptr, ptr, %struct.ColorManagedColorspaceSettings }
%struct.ColorBalanceModifierData = type { %struct.SequenceModifierData, %struct.StripColorBalance, float }
%struct.SequenceModifierData = type { ptr, ptr, i32, i32, [64 x i8], i32, i32, ptr, ptr }
%struct.StripColorBalance = type { [3 x float], [3 x float], [3 x float], i32, i32 }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.RenderSlot = type { [64 x i8] }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.bPose = type { %struct.ListBase, ptr, i16, i16, i32, i32, float, [3 x float], [3 x float], %struct.ListBase, i32, i32, ptr, ptr, %struct.bAnimVizSettings, [64 x i8] }
%struct.SmokeFlowSettings = type { ptr, ptr, ptr, ptr, ptr, i32, float, float, float, float, [3 x float], float, float, float, float, float, i32, float, float, i32, [64 x i8], i16, i16, i16, i16, i32 }
%struct.bNodeLink = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.SpaceSeq = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, float, float, i16, i16, i16, i16, i32, float, i32, i32, ptr, %struct.SequencerScopes }
%struct.SequencerScopes = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.SpaceNode = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, ptr, i16, i16, float, float, float, float, float, [2 x float], %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, %struct.ListBase, ptr }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.SceneRenderLayer = type { ptr, ptr, [64 x i8], ptr, ptr, i32, i32, i32, i32, i32, i32, i32, float, %struct.FreestyleConfig }
%struct.FreestyleConfig = type { %struct.ListBase, i32, i32, i32, float, float, float, %struct.ListBase }
%struct.FreestyleLineStyle = type { %struct.ID, ptr, float, float, float, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, float, i32, i16, i16, i16, i16, i16, i16, i32, i32, float, i16, i16, i16, [3 x i16], i16, i16, i16, i16, i16, i16, i32, [18 x ptr], ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.bNodeTreePath = type { ptr, ptr, ptr, %struct.bNodeInstanceKey, i32, [2 x float], [64 x i8] }
%struct.bShrinkwrapConstraint = type { ptr, float, i16, i8, i8, float, [4 x i8] }
%struct.bSensor = type { ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, [64 x i8], ptr, ptr, ptr, i16, i16, i16, i16 }
%struct.bTouchSensor = type { [64 x i8], ptr, float, float }
%struct.bCollisionSensor = type { [64 x i8], [64 x i8], i16, i16, i16, i16 }
%struct.NodeColorBalance = type { [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float] }
%struct.SpaceOops = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, %struct.ListBase, ptr, [32 x i8], %struct.TreeStoreElem, i16, i16, i16, i16, ptr }
%struct.TreeStoreElem = type { i16, i16, i16, i16, ptr }
%struct.TriangulateModifierData = type { %struct.ModifierData, i32, i32, i32, i32 }
%struct.Sculpt = type { %struct.Paint, i32, [3 x i32], float, i32, float, float, ptr, ptr }
%struct.EdgeSplitModifierData = type { %struct.ModifierData, float, i32 }
%struct.BevelModifierData = type { %struct.ModifierData, float, i32, i16, i16, i16, i16, i16, i16, i32, float, float, [64 x i8] }
%struct.bRadarSensor = type { [64 x i8], float, float, i16, i16 }
%struct.bConstraintActuator = type { i16, i16, i16, i16, i16, i16, i32, [3 x float], [3 x float], [3 x float], [3 x float], [64 x i8] }
%struct.bSoundActuator = type { i16, i16, i32, i32, [2 x i16], float, float, ptr, %struct.Sound3D, i16, i16, i16, [1 x i16] }
%struct.Sound3D = type { float, float, float, float, float, float, float, float }
%struct.WipeVars = type { float, float, i16, i16 }
%struct.NodeBoxMask = type { float, float, float, float, float, i32 }
%struct.NodeEllipseMask = type { float, float, float, float, float, i32 }
%struct.MovieTrackingPlaneTrack = type { ptr, ptr, [64 x i8], ptr, i32, i32, ptr, i32, i32, ptr, float, i32 }
%struct.BuildModifierData = type { %struct.ModifierData, float, float, i16, i16, i32 }
%struct.bNodeSocket = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], ptr, i16, i16, i16, i16, ptr, [64 x i8], float, float, ptr, i16, i16, i32, ptr, i32, i32, ptr, ptr, %struct.bNodeStack }
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }
%struct.bNodeSocketValueFloat = type { i32, float, float, float }
%struct.NodeDBlurData = type { float, float, float, float, float, float, i16, i8, i8 }
%struct.NodeChroma = type { float, float, float, float, float, float, [4 x float], i16, i16 }
%struct.NodeGlare = type { i8, i8, i8, i8, i8, i8, [2 x i8], float, float, float, float, float, float }
%struct.NodeImageMultiFile = type { [1024 x i8], %struct.ImageFormatData, i32, i32, i32, i32 }
%struct.NodeImageFile = type { [1024 x i8], %struct.ImageFormatData, i32, i32 }
%struct.NodeImageMultiFileSocket = type { i16, i16, i32, [1024 x i8], %struct.ImageFormatData, [30 x i8], [2 x i8] }
%struct.CustomDataLayer = type { i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], ptr }
%struct.MLoopCol = type { i8, i8, i8, i8 }
%struct.NodeFrame = type { i16, i16 }

@.str = private unnamed_addr constant [7 x i8] c"Camera\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@.str.2 = private unnamed_addr constant [137 x i8] c"Game property name conflict in object '%s': text objects reserve the ['Text'] game property to change their content through logic bricks\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.blo_do_versions_260 = private unnamed_addr constant [20 x i8] c"blo_do_versions_260\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"Raw\00", align 1
@.str.4 = private unnamed_addr constant [80 x i8] c"2.66 versioning fix: replacing black sky with premultiplied alpha for scene %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"node translate data\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"CompositorNodeTree\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"ShaderNodeTree\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"TextureNodeTree\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"touch -> collision sensor do_version\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"node tools\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"MovieTrackingTrack\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"TriangulateModifierData\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"quad_method\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"MovieTrackingPlaneTrack\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"image_opacity\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"node image multi file\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"%s_Image\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"%s_Z\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"node image layer\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"frame node storage\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"CompositorNodeGroup\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"ShaderNodeGroup\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"TextureNodeGroup\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"NodeFrame\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"NodeGroupInput\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"NodeGroupOutput\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"NodeReroute\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"ShaderNodeOutput\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"ShaderNodeMaterial\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"ShaderNodeRGB\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"ShaderNodeValue\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"ShaderNodeMixRGB\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"ShaderNodeValToRGB\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"ShaderNodeRGBToBW\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"ShaderNodeTexture\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"ShaderNodeNormal\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"ShaderNodeGamma\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"ShaderNodeBrightContrast\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"ShaderNodeGeometry\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"ShaderNodeMapping\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"ShaderNodeVectorCurve\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"ShaderNodeRGBCurve\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"ShaderNodeCameraData\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"ShaderNodeLampData\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"ShaderNodeMath\00", align 1
@.str.51 = private unnamed_addr constant [21 x i8] c"ShaderNodeVectorMath\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"ShaderNodeSqueeze\00", align 1
@.str.53 = private unnamed_addr constant [27 x i8] c"ShaderNodeExtendedMaterial\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"ShaderNodeInvert\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"ShaderNodeSeparateRGB\00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"ShaderNodeCombineRGB\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"ShaderNodeHueSaturation\00", align 1
@.str.58 = private unnamed_addr constant [25 x i8] c"ShaderNodeOutputMaterial\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"ShaderNodeOutputLamp\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"ShaderNodeOutputWorld\00", align 1
@.str.61 = private unnamed_addr constant [26 x i8] c"ShaderNodeOutputLineStyle\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"ShaderNodeFresnel\00", align 1
@.str.63 = private unnamed_addr constant [22 x i8] c"ShaderNodeLayerWeight\00", align 1
@.str.64 = private unnamed_addr constant [20 x i8] c"ShaderNodeMixShader\00", align 1
@.str.65 = private unnamed_addr constant [20 x i8] c"ShaderNodeAddShader\00", align 1
@.str.66 = private unnamed_addr constant [20 x i8] c"ShaderNodeAttribute\00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"ShaderNodeAmbientOcclusion\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"ShaderNodeBackground\00", align 1
@.str.69 = private unnamed_addr constant [18 x i8] c"ShaderNodeHoldout\00", align 1
@.str.70 = private unnamed_addr constant [26 x i8] c"ShaderNodeBsdfAnisotropic\00", align 1
@.str.71 = private unnamed_addr constant [22 x i8] c"ShaderNodeBsdfDiffuse\00", align 1
@.str.72 = private unnamed_addr constant [21 x i8] c"ShaderNodeBsdfGlossy\00", align 1
@.str.73 = private unnamed_addr constant [20 x i8] c"ShaderNodeBsdfGlass\00", align 1
@.str.74 = private unnamed_addr constant [25 x i8] c"ShaderNodeBsdfRefraction\00", align 1
@.str.75 = private unnamed_addr constant [26 x i8] c"ShaderNodeBsdfTranslucent\00", align 1
@.str.76 = private unnamed_addr constant [26 x i8] c"ShaderNodeBsdfTransparent\00", align 1
@.str.77 = private unnamed_addr constant [21 x i8] c"ShaderNodeBsdfVelvet\00", align 1
@.str.78 = private unnamed_addr constant [19 x i8] c"ShaderNodeBsdfToon\00", align 1
@.str.79 = private unnamed_addr constant [19 x i8] c"ShaderNodeBsdfHair\00", align 1
@.str.80 = private unnamed_addr constant [31 x i8] c"ShaderNodeSubsurfaceScattering\00", align 1
@.str.81 = private unnamed_addr constant [27 x i8] c"ShaderNodeVolumeAbsorption\00", align 1
@.str.82 = private unnamed_addr constant [24 x i8] c"ShaderNodeVolumeScatter\00", align 1
@.str.83 = private unnamed_addr constant [19 x i8] c"ShaderNodeEmission\00", align 1
@.str.84 = private unnamed_addr constant [22 x i8] c"ShaderNodeNewGeometry\00", align 1
@.str.85 = private unnamed_addr constant [20 x i8] c"ShaderNodeLightPath\00", align 1
@.str.86 = private unnamed_addr constant [23 x i8] c"ShaderNodeLightFalloff\00", align 1
@.str.87 = private unnamed_addr constant [21 x i8] c"ShaderNodeObjectInfo\00", align 1
@.str.88 = private unnamed_addr constant [23 x i8] c"ShaderNodeParticleInfo\00", align 1
@.str.89 = private unnamed_addr constant [19 x i8] c"ShaderNodeHairInfo\00", align 1
@.str.90 = private unnamed_addr constant [20 x i8] c"ShaderNodeWireframe\00", align 1
@.str.91 = private unnamed_addr constant [21 x i8] c"ShaderNodeWavelength\00", align 1
@.str.92 = private unnamed_addr constant [20 x i8] c"ShaderNodeBlackbody\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"ShaderNodeBump\00", align 1
@.str.94 = private unnamed_addr constant [20 x i8] c"ShaderNodeNormalMap\00", align 1
@.str.95 = private unnamed_addr constant [18 x i8] c"ShaderNodeTangent\00", align 1
@.str.96 = private unnamed_addr constant [17 x i8] c"ShaderNodeScript\00", align 1
@.str.97 = private unnamed_addr constant [19 x i8] c"ShaderNodeTexImage\00", align 1
@.str.98 = private unnamed_addr constant [25 x i8] c"ShaderNodeTexEnvironment\00", align 1
@.str.99 = private unnamed_addr constant [17 x i8] c"ShaderNodeTexSky\00", align 1
@.str.100 = private unnamed_addr constant [22 x i8] c"ShaderNodeTexGradient\00", align 1
@.str.101 = private unnamed_addr constant [19 x i8] c"ShaderNodeTexNoise\00", align 1
@.str.102 = private unnamed_addr constant [19 x i8] c"ShaderNodeTexMagic\00", align 1
@.str.103 = private unnamed_addr constant [18 x i8] c"ShaderNodeTexWave\00", align 1
@.str.104 = private unnamed_addr constant [22 x i8] c"ShaderNodeTexMusgrave\00", align 1
@.str.105 = private unnamed_addr constant [21 x i8] c"ShaderNodeTexVoronoi\00", align 1
@.str.106 = private unnamed_addr constant [21 x i8] c"ShaderNodeTexChecker\00", align 1
@.str.107 = private unnamed_addr constant [19 x i8] c"ShaderNodeTexBrick\00", align 1
@.str.108 = private unnamed_addr constant [19 x i8] c"ShaderNodeTexCoord\00", align 1
@.str.109 = private unnamed_addr constant [26 x i8] c"ShaderNodeVectorTransform\00", align 1
@.str.110 = private unnamed_addr constant [22 x i8] c"ShaderNodeSeparateHSV\00", align 1
@.str.111 = private unnamed_addr constant [21 x i8] c"ShaderNodeCombineHSV\00", align 1
@.str.112 = private unnamed_addr constant [16 x i8] c"ShaderNodeUVMap\00", align 1
@.str.113 = private unnamed_addr constant [24 x i8] c"ShaderNodeUVAlongStroke\00", align 1
@.str.114 = private unnamed_addr constant [22 x i8] c"ShaderNodeSeparateXYZ\00", align 1
@.str.115 = private unnamed_addr constant [21 x i8] c"ShaderNodeCombineXYZ\00", align 1
@.str.116 = private unnamed_addr constant [21 x i8] c"CompositorNodeViewer\00", align 1
@.str.117 = private unnamed_addr constant [18 x i8] c"CompositorNodeRGB\00", align 1
@.str.118 = private unnamed_addr constant [20 x i8] c"CompositorNodeValue\00", align 1
@.str.119 = private unnamed_addr constant [21 x i8] c"CompositorNodeMixRGB\00", align 1
@.str.120 = private unnamed_addr constant [23 x i8] c"CompositorNodeValToRGB\00", align 1
@.str.121 = private unnamed_addr constant [22 x i8] c"CompositorNodeRGBToBW\00", align 1
@.str.122 = private unnamed_addr constant [21 x i8] c"CompositorNodeNormal\00", align 1
@.str.123 = private unnamed_addr constant [23 x i8] c"CompositorNodeCurveVec\00", align 1
@.str.124 = private unnamed_addr constant [23 x i8] c"CompositorNodeCurveRGB\00", align 1
@.str.125 = private unnamed_addr constant [24 x i8] c"CompositorNodeAlphaOver\00", align 1
@.str.126 = private unnamed_addr constant [19 x i8] c"CompositorNodeBlur\00", align 1
@.str.127 = private unnamed_addr constant [21 x i8] c"CompositorNodeFilter\00", align 1
@.str.128 = private unnamed_addr constant [23 x i8] c"CompositorNodeMapValue\00", align 1
@.str.129 = private unnamed_addr constant [23 x i8] c"CompositorNodeMapRange\00", align 1
@.str.130 = private unnamed_addr constant [19 x i8] c"CompositorNodeTime\00", align 1
@.str.131 = private unnamed_addr constant [22 x i8] c"CompositorNodeVecBlur\00", align 1
@.str.132 = private unnamed_addr constant [22 x i8] c"CompositorNodeSepRGBA\00", align 1
@.str.133 = private unnamed_addr constant [22 x i8] c"CompositorNodeSepHSVA\00", align 1
@.str.134 = private unnamed_addr constant [23 x i8] c"CompositorNodeSetAlpha\00", align 1
@.str.135 = private unnamed_addr constant [21 x i8] c"CompositorNodeHueSat\00", align 1
@.str.136 = private unnamed_addr constant [20 x i8] c"CompositorNodeImage\00", align 1
@.str.137 = private unnamed_addr constant [22 x i8] c"CompositorNodeRLayers\00", align 1
@.str.138 = private unnamed_addr constant [24 x i8] c"CompositorNodeComposite\00", align 1
@.str.139 = private unnamed_addr constant [25 x i8] c"CompositorNodeOutputFile\00", align 1
@.str.140 = private unnamed_addr constant [22 x i8] c"CompositorNodeTexture\00", align 1
@.str.141 = private unnamed_addr constant [24 x i8] c"CompositorNodeTranslate\00", align 1
@.str.142 = private unnamed_addr constant [23 x i8] c"CompositorNodeZcombine\00", align 1
@.str.143 = private unnamed_addr constant [23 x i8] c"CompositorNodeCombRGBA\00", align 1
@.str.144 = private unnamed_addr constant [26 x i8] c"CompositorNodeDilateErode\00", align 1
@.str.145 = private unnamed_addr constant [22 x i8] c"CompositorNodeInpaint\00", align 1
@.str.146 = private unnamed_addr constant [24 x i8] c"CompositorNodeDespeckle\00", align 1
@.str.147 = private unnamed_addr constant [21 x i8] c"CompositorNodeRotate\00", align 1
@.str.148 = private unnamed_addr constant [20 x i8] c"CompositorNodeScale\00", align 1
@.str.149 = private unnamed_addr constant [22 x i8] c"CompositorNodeSepYCCA\00", align 1
@.str.150 = private unnamed_addr constant [23 x i8] c"CompositorNodeCombYCCA\00", align 1
@.str.151 = private unnamed_addr constant [22 x i8] c"CompositorNodeSepYUVA\00", align 1
@.str.152 = private unnamed_addr constant [23 x i8] c"CompositorNodeCombYUVA\00", align 1
@.str.153 = private unnamed_addr constant [24 x i8] c"CompositorNodeDiffMatte\00", align 1
@.str.154 = private unnamed_addr constant [25 x i8] c"CompositorNodeColorSpill\00", align 1
@.str.155 = private unnamed_addr constant [26 x i8] c"CompositorNodeChromaMatte\00", align 1
@.str.156 = private unnamed_addr constant [27 x i8] c"CompositorNodeChannelMatte\00", align 1
@.str.157 = private unnamed_addr constant [19 x i8] c"CompositorNodeFlip\00", align 1
@.str.158 = private unnamed_addr constant [26 x i8] c"CompositorNodeSplitViewer\00", align 1
@.str.159 = private unnamed_addr constant [20 x i8] c"CompositorNodeMapUV\00", align 1
@.str.160 = private unnamed_addr constant [21 x i8] c"CompositorNodeIDMask\00", align 1
@.str.161 = private unnamed_addr constant [29 x i8] c"CompositorNodeDoubleEdgeMask\00", align 1
@.str.162 = private unnamed_addr constant [22 x i8] c"CompositorNodeDefocus\00", align 1
@.str.163 = private unnamed_addr constant [23 x i8] c"CompositorNodeDisplace\00", align 1
@.str.164 = private unnamed_addr constant [23 x i8] c"CompositorNodeCombHSVA\00", align 1
@.str.165 = private unnamed_addr constant [19 x i8] c"CompositorNodeMath\00", align 1
@.str.166 = private unnamed_addr constant [24 x i8] c"CompositorNodeLumaMatte\00", align 1
@.str.167 = private unnamed_addr constant [29 x i8] c"CompositorNodeBrightContrast\00", align 1
@.str.168 = private unnamed_addr constant [20 x i8] c"CompositorNodeGamma\00", align 1
@.str.169 = private unnamed_addr constant [21 x i8] c"CompositorNodeInvert\00", align 1
@.str.170 = private unnamed_addr constant [24 x i8] c"CompositorNodeNormalize\00", align 1
@.str.171 = private unnamed_addr constant [19 x i8] c"CompositorNodeCrop\00", align 1
@.str.172 = private unnamed_addr constant [20 x i8] c"CompositorNodeDBlur\00", align 1
@.str.173 = private unnamed_addr constant [28 x i8] c"CompositorNodeBilateralblur\00", align 1
@.str.174 = private unnamed_addr constant [24 x i8] c"CompositorNodePremulKey\00", align 1
@.str.175 = private unnamed_addr constant [20 x i8] c"CompositorNodeGlare\00", align 1
@.str.176 = private unnamed_addr constant [22 x i8] c"CompositorNodeTonemap\00", align 1
@.str.177 = private unnamed_addr constant [23 x i8] c"CompositorNodeLensdist\00", align 1
@.str.178 = private unnamed_addr constant [21 x i8] c"CompositorNodeLevels\00", align 1
@.str.179 = private unnamed_addr constant [25 x i8] c"CompositorNodeColorMatte\00", align 1
@.str.180 = private unnamed_addr constant [28 x i8] c"CompositorNodeDistanceMatte\00", align 1
@.str.181 = private unnamed_addr constant [27 x i8] c"CompositorNodeColorBalance\00", align 1
@.str.182 = private unnamed_addr constant [25 x i8] c"CompositorNodeHueCorrect\00", align 1
@.str.183 = private unnamed_addr constant [24 x i8] c"CompositorNodeMovieClip\00", align 1
@.str.184 = private unnamed_addr constant [24 x i8] c"CompositorNodeTransform\00", align 1
@.str.185 = private unnamed_addr constant [24 x i8] c"CompositorNodeStabilize\00", align 1
@.str.186 = private unnamed_addr constant [30 x i8] c"CompositorNodeMovieDistortion\00", align 1
@.str.187 = private unnamed_addr constant [22 x i8] c"CompositorNodeBoxMask\00", align 1
@.str.188 = private unnamed_addr constant [26 x i8] c"CompositorNodeEllipseMask\00", align 1
@.str.189 = private unnamed_addr constant [25 x i8] c"CompositorNodeBokehImage\00", align 1
@.str.190 = private unnamed_addr constant [24 x i8] c"CompositorNodeBokehBlur\00", align 1
@.str.191 = private unnamed_addr constant [21 x i8] c"CompositorNodeSwitch\00", align 1
@.str.192 = private unnamed_addr constant [30 x i8] c"CompositorNodeColorCorrection\00", align 1
@.str.193 = private unnamed_addr constant [19 x i8] c"CompositorNodeMask\00", align 1
@.str.194 = private unnamed_addr constant [27 x i8] c"CompositorNodeKeyingScreen\00", align 1
@.str.195 = private unnamed_addr constant [21 x i8] c"CompositorNodeKeying\00", align 1
@.str.196 = private unnamed_addr constant [23 x i8] c"CompositorNodeTrackPos\00", align 1
@.str.197 = private unnamed_addr constant [23 x i8] c"CompositorNodePixelate\00", align 1
@.str.198 = private unnamed_addr constant [31 x i8] c"CompositorNodePlaneTrackDeform\00", align 1
@.str.199 = private unnamed_addr constant [24 x i8] c"CompositorNodeCornerPin\00", align 1
@.str.200 = private unnamed_addr constant [23 x i8] c"CompositorNodeSunBeams\00", align 1
@.str.201 = private unnamed_addr constant [18 x i8] c"TextureNodeOutput\00", align 1
@.str.202 = private unnamed_addr constant [19 x i8] c"TextureNodeChecker\00", align 1
@.str.203 = private unnamed_addr constant [19 x i8] c"TextureNodeTexture\00", align 1
@.str.204 = private unnamed_addr constant [18 x i8] c"TextureNodeBricks\00", align 1
@.str.205 = private unnamed_addr constant [16 x i8] c"TextureNodeMath\00", align 1
@.str.206 = private unnamed_addr constant [18 x i8] c"TextureNodeMixRGB\00", align 1
@.str.207 = private unnamed_addr constant [19 x i8] c"TextureNodeRGBToBW\00", align 1
@.str.208 = private unnamed_addr constant [20 x i8] c"TextureNodeValToRGB\00", align 1
@.str.209 = private unnamed_addr constant [17 x i8] c"TextureNodeImage\00", align 1
@.str.210 = private unnamed_addr constant [20 x i8] c"TextureNodeCurveRGB\00", align 1
@.str.211 = private unnamed_addr constant [18 x i8] c"TextureNodeInvert\00", align 1
@.str.212 = private unnamed_addr constant [25 x i8] c"TextureNodeHueSaturation\00", align 1
@.str.213 = private unnamed_addr constant [21 x i8] c"TextureNodeCurveTime\00", align 1
@.str.214 = private unnamed_addr constant [18 x i8] c"TextureNodeRotate\00", align 1
@.str.215 = private unnamed_addr constant [18 x i8] c"TextureNodeViewer\00", align 1
@.str.216 = private unnamed_addr constant [21 x i8] c"TextureNodeTranslate\00", align 1
@.str.217 = private unnamed_addr constant [23 x i8] c"TextureNodeCoordinates\00", align 1
@.str.218 = private unnamed_addr constant [20 x i8] c"TextureNodeDistance\00", align 1
@.str.219 = private unnamed_addr constant [19 x i8] c"TextureNodeCompose\00", align 1
@.str.220 = private unnamed_addr constant [21 x i8] c"TextureNodeDecompose\00", align 1
@.str.221 = private unnamed_addr constant [20 x i8] c"TextureNodeValToNor\00", align 1
@.str.222 = private unnamed_addr constant [17 x i8] c"TextureNodeScale\00", align 1
@.str.223 = private unnamed_addr constant [14 x i8] c"TextureNodeAt\00", align 1
@.str.224 = private unnamed_addr constant [22 x i8] c"TextureNodeTexVoronoi\00", align 1
@.str.225 = private unnamed_addr constant [20 x i8] c"TextureNodeTexBlend\00", align 1
@.str.226 = private unnamed_addr constant [20 x i8] c"TextureNodeTexMagic\00", align 1
@.str.227 = private unnamed_addr constant [21 x i8] c"TextureNodeTexMarble\00", align 1
@.str.228 = private unnamed_addr constant [21 x i8] c"TextureNodeTexClouds\00", align 1
@.str.229 = private unnamed_addr constant [19 x i8] c"TextureNodeTexWood\00", align 1
@.str.230 = private unnamed_addr constant [23 x i8] c"TextureNodeTexMusgrave\00", align 1
@.str.231 = private unnamed_addr constant [20 x i8] c"TextureNodeTexNoise\00", align 1
@.str.232 = private unnamed_addr constant [21 x i8] c"TextureNodeTexStucci\00", align 1
@.str.233 = private unnamed_addr constant [24 x i8] c"TextureNodeTexDistNoise\00", align 1
@.str.234 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@reltable.node_get_static_idname = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.26 to i64), i64 ptrtoint (ptr @reltable.node_get_static_idname to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.25 to i64), i64 ptrtoint (ptr @reltable.node_get_static_idname to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.27 to i64), i64 ptrtoint (ptr @reltable.node_get_static_idname to i64)) to i32)], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @blo_do_versions_260(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.NodeTreeIterStore, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.NodeTreeIterStore, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct.NodeTreeIterStore, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca %struct.NodeTreeIterStore, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca %struct.NodeTreeIterStore, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca %struct.NodeTreeIterStore, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca %struct.SeqIterator, align 8
  %23 = alloca %struct.NodeTreeIterStore, align 8
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  %26 = alloca %struct.NodeTreeIterStore, align 8
  %27 = alloca ptr, align 8
  %28 = alloca ptr, align 8
  %29 = alloca %struct.SeqIterator, align 8
  %30 = alloca %struct.NodeTreeIterStore, align 8
  %31 = alloca ptr, align 8
  %32 = alloca ptr, align 8
  %33 = alloca %struct.NodeTreeIterStore, align 8
  %34 = alloca ptr, align 8
  %35 = alloca ptr, align 8
  %36 = alloca %struct.NodeTreeIterStore, align 8
  %37 = alloca ptr, align 8
  %38 = alloca ptr, align 8
  %39 = alloca %struct.NodeTreeIterStore, align 8
  %40 = alloca ptr, align 8
  %41 = alloca ptr, align 8
  %42 = alloca %struct.NodeTreeIterStore, align 8
  %43 = alloca ptr, align 8
  %44 = alloca ptr, align 8
  %45 = alloca %struct.NodeTreeIterStore, align 8
  %46 = alloca ptr, align 8
  %47 = alloca ptr, align 8
  %48 = alloca %struct.NodeTreeIterStore, align 8
  %49 = alloca ptr, align 8
  %50 = alloca ptr, align 8
  %51 = alloca %struct.SeqIterator, align 8
  %52 = alloca %struct.NodeTreeIterStore, align 8
  %53 = alloca ptr, align 8
  %54 = alloca ptr, align 8
  %55 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 3
  %56 = load i16, ptr %55, align 8, !tbaa !34
  %57 = icmp slt i16 %56, 260
  br i1 %57, label %58, label %108

58:                                               ; preds = %3
  %59 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %60 = load ptr, ptr %59, align 8, !tbaa !42
  %61 = icmp eq ptr %60, null
  br i1 %61, label %76, label %62

62:                                               ; preds = %58, %73
  %63 = phi ptr [ %74, %73 ], [ %60, %58 ]
  %64 = getelementptr inbounds %struct.Scene, ptr %63, i64 0, i32 22, i32 4, i32 6
  %65 = load i32, ptr %64, align 8, !tbaa !43
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 2, ptr %64, align 8, !tbaa !43
  br label %68

68:                                               ; preds = %67, %62
  %69 = getelementptr inbounds %struct.Scene, ptr %63, i64 0, i32 18
  %70 = load ptr, ptr %69, align 8, !tbaa !65
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  tail call fastcc void @do_versions_nodetree_image_default_alpha_output(ptr noundef nonnull %70) #13
  br label %73

73:                                               ; preds = %68, %72
  %74 = load ptr, ptr %63, align 8, !tbaa !42
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %62, !llvm.loop !66

76:                                               ; preds = %73, %58
  %77 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 35
  %78 = load ptr, ptr %77, align 8, !tbaa !42
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %76, %80
  %81 = phi ptr [ %82, %80 ], [ %78, %76 ]
  tail call fastcc void @do_versions_nodetree_image_default_alpha_output(ptr noundef nonnull %81) #13
  %82 = load ptr, ptr %81, align 8, !tbaa !42
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %80, !llvm.loop !68

84:                                               ; preds = %80, %76
  %85 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 37
  %86 = load ptr, ptr %85, align 8, !tbaa !42
  %87 = icmp eq ptr %86, null
  br i1 %87, label %105, label %88

88:                                               ; preds = %84, %102
  %89 = phi ptr [ %103, %102 ], [ %86, %84 ]
  %90 = getelementptr inbounds %struct.ParticleSettings, ptr %89, i64 0, i32 21
  %91 = load i16, ptr %90, align 8, !tbaa !69
  %92 = add i16 %91, -7
  %93 = icmp ult i16 %92, 2
  br i1 %93, label %94, label %102

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.ParticleSettings, ptr %89, i64 0, i32 15
  %96 = load i32, ptr %95, align 8, !tbaa !71
  %97 = or i32 %96, 128
  store i32 %97, ptr %95, align 8, !tbaa !71
  %98 = getelementptr inbounds %struct.ParticleSettings, ptr %89, i64 0, i32 12
  %99 = load i16, ptr %98, align 2, !tbaa !72
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  store i16 2, ptr %98, align 2, !tbaa !72
  br label %102

102:                                              ; preds = %88, %101, %94
  %103 = load ptr, ptr %89, align 8, !tbaa !42
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %88, !llvm.loop !73

105:                                              ; preds = %102, %84
  %106 = load i16, ptr %55, align 8, !tbaa !34
  %107 = icmp slt i16 %106, 260
  br i1 %107, label %115, label %108

108:                                              ; preds = %3, %105
  %109 = phi i16 [ %106, %105 ], [ %56, %3 ]
  %110 = icmp eq i16 %109, 260
  br i1 %110, label %111, label %451

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %113 = load i16, ptr %112, align 2, !tbaa !74
  %114 = icmp slt i16 %113, 1
  br i1 %114, label %115, label %152

115:                                              ; preds = %111, %105
  %116 = phi i16 [ 260, %111 ], [ %106, %105 ]
  %117 = phi i1 [ false, %111 ], [ true, %105 ]
  %118 = phi i1 [ true, %111 ], [ false, %105 ]
  %119 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %120 = load ptr, ptr %119, align 8, !tbaa !42
  %121 = icmp eq ptr %120, null
  br i1 %121, label %129, label %122

122:                                              ; preds = %115, %122
  %123 = phi ptr [ %127, %122 ], [ %120, %115 ]
  %124 = getelementptr inbounds %struct.Object, ptr %123, i64 0, i32 84
  %125 = load i8, ptr %124, align 2, !tbaa !75
  %126 = getelementptr inbounds %struct.Object, ptr %123, i64 0, i32 85
  store i8 %125, ptr %126, align 1, !tbaa !78
  %127 = load ptr, ptr %123, align 8, !tbaa !42
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %122, !llvm.loop !79

129:                                              ; preds = %122, %115
  %130 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 22
  %131 = load ptr, ptr %130, align 8, !tbaa !42
  %132 = icmp eq ptr %131, null
  br i1 %132, label %147, label %133

133:                                              ; preds = %129, %144
  %134 = phi ptr [ %145, %144 ], [ %131, %129 ]
  %135 = getelementptr inbounds %struct.Camera, ptr %134, i64 0, i32 11
  %136 = load float, ptr %135, align 4, !tbaa !80
  %137 = fcmp olt float %136, 0x3F847AE140000000
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  store float 3.200000e+01, ptr %135, align 4, !tbaa !80
  br label %139

139:                                              ; preds = %138, %133
  %140 = getelementptr inbounds %struct.Camera, ptr %134, i64 0, i32 12
  %141 = load float, ptr %140, align 8, !tbaa !82
  %142 = fcmp olt float %141, 0x3F847AE140000000
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  store float 1.800000e+01, ptr %140, align 8, !tbaa !82
  br label %144

144:                                              ; preds = %139, %143
  %145 = load ptr, ptr %134, align 8, !tbaa !42
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %133, !llvm.loop !83

147:                                              ; preds = %144, %129
  br i1 %117, label %156, label %148

148:                                              ; preds = %147
  br i1 %118, label %149, label %189

149:                                              ; preds = %148
  %150 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %151 = load i16, ptr %150, align 2, !tbaa !74
  br label %152

152:                                              ; preds = %149, %111
  %153 = phi i16 [ %116, %149 ], [ 260, %111 ]
  %154 = phi i16 [ %151, %149 ], [ %113, %111 ]
  %155 = icmp slt i16 %154, 2
  br i1 %155, label %156, label %189

156:                                              ; preds = %152, %147
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %4, ptr noundef %2) #15
  %157 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #15
  %158 = icmp eq i8 %157, 1
  br i1 %158, label %159, label %187

159:                                              ; preds = %156, %184
  %160 = load ptr, ptr %5, align 8, !tbaa !42
  %161 = icmp eq ptr %160, null
  br i1 %161, label %184, label %162

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.bNodeTree, ptr %160, i64 0, i32 9
  %164 = load i32, ptr %163, align 8, !tbaa !84
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %184

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.bNodeTree, ptr %160, i64 0, i32 7
  %168 = load ptr, ptr %167, align 8, !tbaa !42
  %169 = icmp eq ptr %168, null
  br i1 %169, label %184, label %170

170:                                              ; preds = %166, %181
  %171 = phi ptr [ %182, %181 ], [ %168, %166 ]
  %172 = getelementptr inbounds %struct.bNode, ptr %171, i64 0, i32 8
  %173 = load i16, ptr %172, align 4, !tbaa !87
  %174 = icmp eq i16 %173, 109
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = getelementptr inbounds %struct.bNode, ptr %171, i64 0, i32 21
  %177 = load ptr, ptr %176, align 8, !tbaa !89
  %178 = getelementptr inbounds %struct.TexMapping, ptr %177, i64 0, i32 4
  store i8 1, ptr %178, align 8, !tbaa !90
  %179 = getelementptr inbounds %struct.TexMapping, ptr %177, i64 0, i32 5
  store i8 2, ptr %179, align 1, !tbaa !92
  %180 = getelementptr inbounds %struct.TexMapping, ptr %177, i64 0, i32 6
  store i8 3, ptr %180, align 2, !tbaa !93
  br label %181

181:                                              ; preds = %170, %175
  %182 = load ptr, ptr %171, align 8, !tbaa !42
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %170, !llvm.loop !94

184:                                              ; preds = %181, %166, %162, %159
  %185 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #15
  %186 = icmp eq i8 %185, 1
  br i1 %186, label %159, label %187, !llvm.loop !95

187:                                              ; preds = %184, %156
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #14
  %188 = load i16, ptr %55, align 8, !tbaa !34
  br label %189

189:                                              ; preds = %187, %152, %148
  %190 = phi i16 [ %188, %187 ], [ %153, %152 ], [ %116, %148 ]
  %191 = icmp slt i16 %190, 260
  br i1 %191, label %198, label %192

192:                                              ; preds = %189
  %193 = icmp eq i16 %190, 260
  br i1 %193, label %194, label %451

194:                                              ; preds = %192
  %195 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %196 = load i16, ptr %195, align 2, !tbaa !74
  %197 = icmp slt i16 %196, 4
  br i1 %197, label %198, label %319

198:                                              ; preds = %194, %189
  %199 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %200 = load ptr, ptr %199, align 8, !tbaa !42
  %201 = icmp eq ptr %200, null
  br i1 %201, label %211, label %202

202:                                              ; preds = %198, %208
  %203 = phi ptr [ %209, %208 ], [ %200, %198 ]
  %204 = getelementptr inbounds %struct.Scene, ptr %203, i64 0, i32 18
  %205 = load ptr, ptr %204, align 8, !tbaa !65
  %206 = icmp eq ptr %205, null
  br i1 %206, label %208, label %207

207:                                              ; preds = %202
  call fastcc void @do_versions_nodetree_convert_angle(ptr noundef nonnull %205) #13
  br label %208

208:                                              ; preds = %202, %207
  %209 = load ptr, ptr %203, align 8, !tbaa !42
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %202, !llvm.loop !96

211:                                              ; preds = %208, %198
  %212 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %213 = load ptr, ptr %212, align 8, !tbaa !42
  %214 = icmp eq ptr %213, null
  br i1 %214, label %224, label %215

215:                                              ; preds = %211, %221
  %216 = phi ptr [ %222, %221 ], [ %213, %211 ]
  %217 = getelementptr inbounds %struct.Material, ptr %216, i64 0, i32 103
  %218 = load ptr, ptr %217, align 8, !tbaa !97
  %219 = icmp eq ptr %218, null
  br i1 %219, label %221, label %220

220:                                              ; preds = %215
  call fastcc void @do_versions_nodetree_convert_angle(ptr noundef nonnull %218) #13
  br label %221

221:                                              ; preds = %215, %220
  %222 = load ptr, ptr %216, align 8, !tbaa !42
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %215, !llvm.loop !101

224:                                              ; preds = %221, %211
  %225 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 35
  %226 = load ptr, ptr %225, align 8, !tbaa !42
  %227 = icmp eq ptr %226, null
  br i1 %227, label %232, label %228

228:                                              ; preds = %224, %228
  %229 = phi ptr [ %230, %228 ], [ %226, %224 ]
  call fastcc void @do_versions_nodetree_convert_angle(ptr noundef nonnull %229) #13
  %230 = load ptr, ptr %229, align 8, !tbaa !42
  %231 = icmp eq ptr %230, null
  br i1 %231, label %232, label %228, !llvm.loop !102

232:                                              ; preds = %228, %224
  %233 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %234 = load ptr, ptr %233, align 8, !tbaa !42
  %235 = icmp eq ptr %234, null
  br i1 %235, label %277, label %239

236:                                              ; preds = %244, %239
  %237 = load ptr, ptr %240, align 8, !tbaa !42
  %238 = icmp eq ptr %237, null
  br i1 %238, label %277, label %239, !llvm.loop !103

239:                                              ; preds = %232, %236
  %240 = phi ptr [ %237, %236 ], [ %234, %232 ]
  %241 = getelementptr inbounds %struct.bScreen, ptr %240, i64 0, i32 3
  %242 = load ptr, ptr %241, align 8, !tbaa !42
  %243 = icmp eq ptr %242, null
  br i1 %243, label %236, label %247

244:                                              ; preds = %274, %247
  %245 = load ptr, ptr %248, align 8, !tbaa !42
  %246 = icmp eq ptr %245, null
  br i1 %246, label %236, label %247, !llvm.loop !104

247:                                              ; preds = %239, %244
  %248 = phi ptr [ %245, %244 ], [ %242, %239 ]
  %249 = getelementptr inbounds %struct.ScrArea, ptr %248, i64 0, i32 19
  %250 = load ptr, ptr %249, align 8, !tbaa !42
  %251 = icmp eq ptr %250, null
  br i1 %251, label %244, label %252

252:                                              ; preds = %247, %274
  %253 = phi ptr [ %275, %274 ], [ %250, %247 ]
  %254 = getelementptr inbounds %struct.SpaceLink, ptr %253, i64 0, i32 3
  %255 = load i32, ptr %254, align 8, !tbaa !105
  switch i32 %255, label %274 [
    i32 1, label %256
    i32 20, label %269
  ]

256:                                              ; preds = %252
  %257 = getelementptr inbounds %struct.View3D, ptr %253, i64 0, i32 8
  %258 = load float, ptr %257, align 4, !tbaa !107
  %259 = fcmp oeq float %258, 0.000000e+00
  br i1 %259, label %260, label %264

260:                                              ; preds = %256
  store float 0x3FC99999A0000000, ptr %257, align 4, !tbaa !107
  %261 = getelementptr inbounds %struct.View3D, ptr %253, i64 0, i32 29
  %262 = load i16, ptr %261, align 2, !tbaa !109
  %263 = or i16 %262, 128
  store i16 %263, ptr %261, align 2, !tbaa !109
  br label %264

264:                                              ; preds = %260, %256
  %265 = getelementptr inbounds %struct.View3D, ptr %253, i64 0, i32 9
  %266 = load i8, ptr %265, align 8, !tbaa !110
  %267 = icmp eq i8 %266, 0
  br i1 %267, label %268, label %274

268:                                              ; preds = %264
  store i8 2, ptr %265, align 8, !tbaa !110
  br label %274

269:                                              ; preds = %252
  %270 = getelementptr inbounds %struct.SpaceClip, ptr %253, i64 0, i32 11, i32 2
  %271 = load i32, ptr %270, align 4, !tbaa !111
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %269
  store i32 120, ptr %270, align 4, !tbaa !111
  br label %274

274:                                              ; preds = %269, %273, %252, %264, %268
  %275 = load ptr, ptr %253, align 8, !tbaa !42
  %276 = icmp eq ptr %275, null
  br i1 %276, label %244, label %252, !llvm.loop !117

277:                                              ; preds = %236, %232
  %278 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 42
  %279 = load ptr, ptr %278, align 8, !tbaa !42
  %280 = icmp eq ptr %279, null
  br i1 %280, label %319, label %284

281:                                              ; preds = %316, %306
  %282 = load ptr, ptr %285, align 8, !tbaa !42
  %283 = icmp eq ptr %282, null
  br i1 %283, label %319, label %284, !llvm.loop !118

284:                                              ; preds = %277, %281
  %285 = phi ptr [ %282, %281 ], [ %279, %277 ]
  %286 = getelementptr inbounds %struct.MovieClip, ptr %285, i64 0, i32 6
  %287 = load float, ptr %286, align 8, !tbaa !119
  %288 = fcmp olt float %287, 1.000000e+00
  br i1 %288, label %289, label %290

289:                                              ; preds = %284
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %286, align 8, !tbaa !128
  br label %290

290:                                              ; preds = %289, %284
  %291 = getelementptr inbounds %struct.MovieClip, ptr %285, i64 0, i32 13, i32 4
  store i16 7, ptr %291, align 2, !tbaa !129
  %292 = getelementptr inbounds %struct.MovieClip, ptr %285, i64 0, i32 13, i32 3
  %293 = load i16, ptr %292, align 4, !tbaa !130
  %294 = icmp eq i16 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %290
  store i16 1, ptr %292, align 4, !tbaa !130
  br label %296

296:                                              ; preds = %295, %290
  %297 = getelementptr inbounds %struct.MovieClip, ptr %285, i64 0, i32 13, i32 2
  %298 = load i16, ptr %297, align 2, !tbaa !131
  %299 = icmp eq i16 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %296
  store i16 90, ptr %297, align 2, !tbaa !131
  br label %301

301:                                              ; preds = %300, %296
  %302 = getelementptr inbounds %struct.MovieClip, ptr %285, i64 0, i32 11, i32 1, i32 4
  %303 = load float, ptr %302, align 8, !tbaa !132
  %304 = fcmp olt float %303, 0x3F847AE140000000
  br i1 %304, label %305, label %306

305:                                              ; preds = %301
  store float 1.000000e+00, ptr %302, align 8, !tbaa !132
  br label %306

306:                                              ; preds = %305, %301
  %307 = getelementptr inbounds %struct.MovieClip, ptr %285, i64 0, i32 11, i32 2
  %308 = load ptr, ptr %307, align 8, !tbaa !42
  %309 = icmp eq ptr %308, null
  br i1 %309, label %281, label %310

310:                                              ; preds = %306, %316
  %311 = phi ptr [ %317, %316 ], [ %308, %306 ]
  %312 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %311, i64 0, i32 22
  %313 = load float, ptr %312, align 4, !tbaa !133
  %314 = fcmp oeq float %313, 0.000000e+00
  br i1 %314, label %315, label %316

315:                                              ; preds = %310
  store float 7.500000e-01, ptr %312, align 4, !tbaa !133
  br label %316

316:                                              ; preds = %315, %310
  %317 = load ptr, ptr %311, align 8, !tbaa !42
  %318 = icmp eq ptr %317, null
  br i1 %318, label %281, label %310, !llvm.loop !135

319:                                              ; preds = %281, %277, %194
  %320 = load i16, ptr %55, align 8, !tbaa !34
  %321 = icmp slt i16 %320, 260
  br i1 %321, label %328, label %322

322:                                              ; preds = %319
  %323 = icmp eq i16 %320, 260
  br i1 %323, label %324, label %451

324:                                              ; preds = %322
  %325 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %326 = load i16, ptr %325, align 2, !tbaa !74
  %327 = icmp slt i16 %326, 6
  br i1 %327, label %328, label %410

328:                                              ; preds = %324, %319
  %329 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %330 = load ptr, ptr %329, align 8, !tbaa !42
  %331 = icmp eq ptr %330, null
  br i1 %331, label %336, label %332

332:                                              ; preds = %328, %332
  %333 = phi ptr [ %334, %332 ], [ %330, %328 ]
  call fastcc void @do_versions_image_settings_2_60(ptr noundef nonnull %333) #13
  %334 = load ptr, ptr %333, align 8, !tbaa !42
  %335 = icmp eq ptr %334, null
  br i1 %335, label %336, label %332, !llvm.loop !136

336:                                              ; preds = %332, %328
  %337 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 42
  %338 = load ptr, ptr %337, align 8, !tbaa !42
  %339 = icmp eq ptr %338, null
  br i1 %339, label %352, label %340

340:                                              ; preds = %336, %349
  %341 = phi ptr [ %350, %349 ], [ %338, %336 ]
  %342 = getelementptr inbounds %struct.MovieClip, ptr %341, i64 0, i32 11, i32 0, i32 4
  %343 = load i16, ptr %342, align 4, !tbaa !137
  %344 = icmp eq i16 %343, 0
  br i1 %344, label %345, label %349

345:                                              ; preds = %340
  %346 = getelementptr inbounds %struct.MovieClip, ptr %341, i64 0, i32 11, i32 0, i32 1
  store i16 0, ptr %346, align 4, !tbaa !138
  %347 = getelementptr inbounds %struct.MovieClip, ptr %341, i64 0, i32 11, i32 0, i32 3
  store float 7.500000e-01, ptr %347, align 4, !tbaa !139
  store i16 11, ptr %342, align 4, !tbaa !137
  %348 = getelementptr inbounds %struct.MovieClip, ptr %341, i64 0, i32 11, i32 0, i32 5
  store i16 51, ptr %348, align 2, !tbaa !140
  br label %349

349:                                              ; preds = %345, %340
  %350 = load ptr, ptr %341, align 8, !tbaa !42
  %351 = icmp eq ptr %350, null
  br i1 %351, label %352, label %340, !llvm.loop !141

352:                                              ; preds = %349, %336
  %353 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %354 = load ptr, ptr %353, align 8, !tbaa !42
  %355 = icmp eq ptr %354, null
  br i1 %355, label %384, label %359

356:                                              ; preds = %364, %359
  %357 = load ptr, ptr %360, align 8, !tbaa !42
  %358 = icmp eq ptr %357, null
  br i1 %358, label %384, label %359, !llvm.loop !142

359:                                              ; preds = %352, %356
  %360 = phi ptr [ %357, %356 ], [ %354, %352 ]
  %361 = getelementptr inbounds %struct.bScreen, ptr %360, i64 0, i32 3
  %362 = load ptr, ptr %361, align 8, !tbaa !42
  %363 = icmp eq ptr %362, null
  br i1 %363, label %356, label %367

364:                                              ; preds = %381, %367
  %365 = load ptr, ptr %368, align 8, !tbaa !42
  %366 = icmp eq ptr %365, null
  br i1 %366, label %356, label %367, !llvm.loop !143

367:                                              ; preds = %359, %364
  %368 = phi ptr [ %365, %364 ], [ %362, %359 ]
  %369 = getelementptr inbounds %struct.ScrArea, ptr %368, i64 0, i32 19
  %370 = load ptr, ptr %369, align 8, !tbaa !42
  %371 = icmp eq ptr %370, null
  br i1 %371, label %364, label %372

372:                                              ; preds = %367, %381
  %373 = phi ptr [ %382, %381 ], [ %370, %367 ]
  %374 = getelementptr inbounds %struct.SpaceLink, ptr %373, i64 0, i32 3
  %375 = load i32, ptr %374, align 8, !tbaa !105
  %376 = icmp eq i32 %375, 1
  br i1 %376, label %377, label %381

377:                                              ; preds = %372
  %378 = getelementptr inbounds %struct.View3D, ptr %373, i64 0, i32 29
  %379 = load i16, ptr %378, align 2, !tbaa !109
  %380 = and i16 %379, -65
  store i16 %380, ptr %378, align 2, !tbaa !109
  br label %381

381:                                              ; preds = %372, %377
  %382 = load ptr, ptr %373, align 8, !tbaa !42
  %383 = icmp eq ptr %382, null
  br i1 %383, label %364, label %372, !llvm.loop !144

384:                                              ; preds = %356, %352
  %385 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %386 = load ptr, ptr %385, align 8, !tbaa !42
  %387 = icmp eq ptr %386, null
  br i1 %387, label %425, label %391

388:                                              ; preds = %405
  %389 = load ptr, ptr %392, align 8, !tbaa !42
  %390 = icmp eq ptr %389, null
  br i1 %390, label %425, label %391, !llvm.loop !145

391:                                              ; preds = %384, %388
  %392 = phi ptr [ %389, %388 ], [ %386, %384 ]
  br label %393

393:                                              ; preds = %391, %405
  %394 = phi i64 [ 0, %391 ], [ %408, %405 ]
  %395 = getelementptr inbounds %struct.Object, ptr %392, i64 0, i32 37, i64 %394
  %396 = load float, ptr %395, align 4, !tbaa !128
  %397 = fcmp oeq float %396, 0.000000e+00
  br i1 %397, label %405, label %398

398:                                              ; preds = %393
  %399 = getelementptr inbounds %struct.Object, ptr %392, i64 0, i32 36, i64 %394
  %400 = load float, ptr %399, align 4, !tbaa !128
  %401 = fcmp oeq float %400, 0.000000e+00
  br i1 %401, label %405, label %402

402:                                              ; preds = %398
  %403 = fadd float %396, %400
  %404 = fdiv float %403, %400
  br label %405

405:                                              ; preds = %393, %398, %402
  %406 = phi float [ %404, %402 ], [ 1.000000e+00, %398 ], [ 1.000000e+00, %393 ]
  %407 = getelementptr inbounds %struct.Object, ptr %392, i64 0, i32 38, i64 %394
  store float %406, ptr %407, align 4, !tbaa !128
  %408 = add nuw nsw i64 %394, 1
  %409 = icmp eq i64 %408, 3
  br i1 %409, label %388, label %393, !llvm.loop !146

410:                                              ; preds = %324
  %411 = icmp eq i16 %326, 6
  br i1 %411, label %412, label %425

412:                                              ; preds = %410
  %413 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %414 = load ptr, ptr %413, align 8, !tbaa !42
  %415 = icmp eq ptr %414, null
  br i1 %415, label %425, label %416

416:                                              ; preds = %412, %422
  %417 = phi ptr [ %423, %422 ], [ %414, %412 ]
  %418 = getelementptr inbounds %struct.Object, ptr %417, i64 0, i32 38
  %419 = call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %418) #13, !range !147
  %420 = icmp eq i8 %419, 0
  br i1 %420, label %422, label %421

421:                                              ; preds = %416
  call void @fill_vn_fl(ptr noundef nonnull %418, i32 noundef 3, float noundef 1.000000e+00) #15
  br label %422

422:                                              ; preds = %416, %421
  %423 = load ptr, ptr %417, align 8, !tbaa !42
  %424 = icmp eq ptr %423, null
  br i1 %424, label %425, label %416, !llvm.loop !148

425:                                              ; preds = %422, %388, %412, %384, %410
  %426 = load i16, ptr %55, align 8, !tbaa !34
  %427 = icmp slt i16 %426, 260
  br i1 %427, label %434, label %428

428:                                              ; preds = %425
  %429 = icmp eq i16 %426, 260
  br i1 %429, label %430, label %451

430:                                              ; preds = %428
  %431 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %432 = load i16, ptr %431, align 2, !tbaa !74
  %433 = icmp slt i16 %432, 8
  br i1 %433, label %434, label %458

434:                                              ; preds = %430, %425
  %435 = phi i16 [ 260, %430 ], [ %426, %425 ]
  %436 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 36
  %437 = load ptr, ptr %436, align 8, !tbaa !42
  %438 = icmp eq ptr %437, null
  br i1 %438, label %458, label %439

439:                                              ; preds = %434, %446
  %440 = phi ptr [ %447, %446 ], [ %437, %434 ]
  %441 = getelementptr inbounds %struct.Brush, ptr %440, i64 0, i32 34
  %442 = load i8, ptr %441, align 8, !tbaa !149
  %443 = icmp eq i8 %442, 14
  br i1 %443, label %444, label %446

444:                                              ; preds = %439
  %445 = getelementptr inbounds %struct.Brush, ptr %440, i64 0, i32 26
  store float 1.000000e+00, ptr %445, align 8, !tbaa !153
  br label %446

446:                                              ; preds = %439, %444
  %447 = load ptr, ptr %440, align 8, !tbaa !42
  %448 = icmp eq ptr %447, null
  br i1 %448, label %449, label %439, !llvm.loop !154

449:                                              ; preds = %446
  %450 = icmp slt i16 %435, 261
  br i1 %450, label %458, label %451

451:                                              ; preds = %322, %108, %192, %428, %449
  %452 = phi i16 [ %435, %449 ], [ %426, %428 ], [ %190, %192 ], [ %109, %108 ], [ %320, %322 ]
  %453 = icmp eq i16 %452, 261
  br i1 %453, label %454, label %625

454:                                              ; preds = %451
  %455 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %456 = load i16, ptr %455, align 2, !tbaa !74
  %457 = icmp slt i16 %456, 1
  br i1 %457, label %458, label %625

458:                                              ; preds = %434, %430, %454, %449
  %459 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %460 = load ptr, ptr %459, align 8, !tbaa !42
  %461 = icmp eq ptr %460, null
  br i1 %461, label %471, label %462

462:                                              ; preds = %458, %468
  %463 = phi ptr [ %469, %468 ], [ %460, %458 ]
  %464 = getelementptr inbounds %struct.Scene, ptr %463, i64 0, i32 18
  %465 = load ptr, ptr %464, align 8, !tbaa !65
  %466 = icmp eq ptr %465, null
  br i1 %466, label %468, label %467

467:                                              ; preds = %462
  call fastcc void @do_versions_nodetree_socket_use_flags_2_62(ptr noundef nonnull %465) #13
  br label %468

468:                                              ; preds = %462, %467
  %469 = load ptr, ptr %463, align 8, !tbaa !42
  %470 = icmp eq ptr %469, null
  br i1 %470, label %471, label %462, !llvm.loop !155

471:                                              ; preds = %468, %458
  %472 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %473 = load ptr, ptr %472, align 8, !tbaa !42
  %474 = icmp eq ptr %473, null
  br i1 %474, label %484, label %475

475:                                              ; preds = %471, %481
  %476 = phi ptr [ %482, %481 ], [ %473, %471 ]
  %477 = getelementptr inbounds %struct.Material, ptr %476, i64 0, i32 103
  %478 = load ptr, ptr %477, align 8, !tbaa !97
  %479 = icmp eq ptr %478, null
  br i1 %479, label %481, label %480

480:                                              ; preds = %475
  call fastcc void @do_versions_nodetree_socket_use_flags_2_62(ptr noundef nonnull %478) #13
  br label %481

481:                                              ; preds = %475, %480
  %482 = load ptr, ptr %476, align 8, !tbaa !42
  %483 = icmp eq ptr %482, null
  br i1 %483, label %484, label %475, !llvm.loop !156

484:                                              ; preds = %481, %471
  %485 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %486 = load ptr, ptr %485, align 8, !tbaa !42
  %487 = icmp eq ptr %486, null
  br i1 %487, label %497, label %488

488:                                              ; preds = %484, %494
  %489 = phi ptr [ %495, %494 ], [ %486, %484 ]
  %490 = getelementptr inbounds %struct.Tex, ptr %489, i64 0, i32 52
  %491 = load ptr, ptr %490, align 8, !tbaa !157
  %492 = icmp eq ptr %491, null
  br i1 %492, label %494, label %493

493:                                              ; preds = %488
  call fastcc void @do_versions_nodetree_socket_use_flags_2_62(ptr noundef nonnull %491) #13
  br label %494

494:                                              ; preds = %488, %493
  %495 = load ptr, ptr %489, align 8, !tbaa !42
  %496 = icmp eq ptr %495, null
  br i1 %496, label %497, label %488, !llvm.loop !160

497:                                              ; preds = %494, %484
  %498 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 21
  %499 = load ptr, ptr %498, align 8, !tbaa !42
  %500 = icmp eq ptr %499, null
  br i1 %500, label %510, label %501

501:                                              ; preds = %497, %507
  %502 = phi ptr [ %508, %507 ], [ %499, %497 ]
  %503 = getelementptr inbounds %struct.Lamp, ptr %502, i64 0, i32 74
  %504 = load ptr, ptr %503, align 8, !tbaa !161
  %505 = icmp eq ptr %504, null
  br i1 %505, label %507, label %506

506:                                              ; preds = %501
  call fastcc void @do_versions_nodetree_socket_use_flags_2_62(ptr noundef nonnull %504) #13
  br label %507

507:                                              ; preds = %501, %506
  %508 = load ptr, ptr %502, align 8, !tbaa !42
  %509 = icmp eq ptr %508, null
  br i1 %509, label %510, label %501, !llvm.loop !163

510:                                              ; preds = %507, %497
  %511 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 25
  %512 = load ptr, ptr %511, align 8, !tbaa !42
  %513 = icmp eq ptr %512, null
  br i1 %513, label %523, label %514

514:                                              ; preds = %510, %520
  %515 = phi ptr [ %521, %520 ], [ %512, %510 ]
  %516 = getelementptr inbounds %struct.World, ptr %515, i64 0, i32 75
  %517 = load ptr, ptr %516, align 8, !tbaa !164
  %518 = icmp eq ptr %517, null
  br i1 %518, label %520, label %519

519:                                              ; preds = %514
  call fastcc void @do_versions_nodetree_socket_use_flags_2_62(ptr noundef nonnull %517) #13
  br label %520

520:                                              ; preds = %514, %519
  %521 = load ptr, ptr %515, align 8, !tbaa !42
  %522 = icmp eq ptr %521, null
  br i1 %522, label %523, label %514, !llvm.loop !166

523:                                              ; preds = %520, %510
  %524 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 35
  %525 = load ptr, ptr %524, align 8, !tbaa !42
  %526 = icmp eq ptr %525, null
  br i1 %526, label %527, label %530

527:                                              ; preds = %530, %523
  %528 = load ptr, ptr %459, align 8, !tbaa !42
  %529 = icmp eq ptr %528, null
  br i1 %529, label %543, label %534

530:                                              ; preds = %523, %530
  %531 = phi ptr [ %532, %530 ], [ %525, %523 ]
  call fastcc void @do_versions_nodetree_socket_use_flags_2_62(ptr noundef nonnull %531) #13
  %532 = load ptr, ptr %531, align 8, !tbaa !42
  %533 = icmp eq ptr %532, null
  br i1 %533, label %527, label %530, !llvm.loop !167

534:                                              ; preds = %527, %540
  %535 = phi ptr [ %541, %540 ], [ %528, %527 ]
  %536 = getelementptr inbounds %struct.Scene, ptr %535, i64 0, i32 37, i32 23
  %537 = load i16, ptr %536, align 4, !tbaa !168
  %538 = icmp eq i16 %537, 0
  br i1 %538, label %539, label %540

539:                                              ; preds = %534
  store i16 218, ptr %536, align 4, !tbaa !168
  br label %540

540:                                              ; preds = %534, %539
  %541 = load ptr, ptr %535, align 8, !tbaa !42
  %542 = icmp eq ptr %541, null
  br i1 %542, label %543, label %534, !llvm.loop !169

543:                                              ; preds = %540, %527
  %544 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 42
  %545 = load ptr, ptr %544, align 8, !tbaa !42
  %546 = icmp eq ptr %545, null
  br i1 %546, label %578, label %550

547:                                              ; preds = %575, %567
  %548 = load ptr, ptr %551, align 8, !tbaa !42
  %549 = icmp eq ptr %548, null
  br i1 %549, label %578, label %550, !llvm.loop !170

550:                                              ; preds = %543, %547
  %551 = phi ptr [ %548, %547 ], [ %545, %543 ]
  %552 = getelementptr inbounds %struct.MovieClip, ptr %551, i64 0, i32 11
  %553 = getelementptr inbounds %struct.MovieClip, ptr %551, i64 0, i32 11, i32 8
  %554 = load ptr, ptr %553, align 8, !tbaa !171
  %555 = getelementptr inbounds %struct.MovieClip, ptr %551, i64 0, i32 13, i32 4
  %556 = load i16, ptr %555, align 2, !tbaa !129
  %557 = or i16 %556, 8
  store i16 %557, ptr %555, align 2, !tbaa !129
  %558 = getelementptr inbounds %struct.MovieClip, ptr %551, i64 0, i32 11, i32 0, i32 22
  %559 = load float, ptr %558, align 8, !tbaa !172
  %560 = fcmp une float %559, 0.000000e+00
  br i1 %560, label %562, label %561

561:                                              ; preds = %550
  store float 1.000000e+00, ptr %558, align 8, !tbaa !172
  br label %562

562:                                              ; preds = %561, %550
  %563 = call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %553) #13, !range !147
  %564 = icmp eq i8 %563, 0
  br i1 %564, label %567, label %565

565:                                              ; preds = %562
  %566 = call ptr @BKE_tracking_object_add(ptr noundef nonnull %552, ptr noundef nonnull @.str) #15
  br label %567

567:                                              ; preds = %565, %562
  %568 = icmp eq ptr %554, null
  br i1 %568, label %547, label %569

569:                                              ; preds = %567, %575
  %570 = phi ptr [ %576, %575 ], [ %554, %567 ]
  %571 = getelementptr inbounds %struct.MovieTrackingObject, ptr %570, i64 0, i32 4
  %572 = load float, ptr %571, align 4, !tbaa !173
  %573 = fcmp une float %572, 0.000000e+00
  br i1 %573, label %575, label %574

574:                                              ; preds = %569
  store float 1.000000e+00, ptr %571, align 4, !tbaa !173
  br label %575

575:                                              ; preds = %574, %569
  %576 = load ptr, ptr %570, align 8, !tbaa !175
  %577 = icmp eq ptr %576, null
  br i1 %577, label %547, label %569, !llvm.loop !176

578:                                              ; preds = %547, %543
  %579 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %580 = load ptr, ptr %579, align 8, !tbaa !42
  %581 = icmp eq ptr %580, null
  br i1 %581, label %625, label %590

582:                                              ; preds = %608, %590
  %583 = load ptr, ptr %591, align 8, !tbaa !42
  %584 = icmp eq ptr %583, null
  br i1 %584, label %585, label %590, !llvm.loop !177

585:                                              ; preds = %582
  %586 = load ptr, ptr %579, align 8, !tbaa !42
  %587 = icmp eq ptr %586, null
  br i1 %587, label %625, label %588

588:                                              ; preds = %585
  %589 = getelementptr inbounds %struct.FileData, ptr %0, i64 0, i32 31
  br label %611

590:                                              ; preds = %578, %582
  %591 = phi ptr [ %583, %582 ], [ %580, %578 ]
  %592 = getelementptr inbounds %struct.Object, ptr %591, i64 0, i32 106
  %593 = load ptr, ptr %592, align 8, !tbaa !42
  %594 = icmp eq ptr %593, null
  br i1 %594, label %582, label %595

595:                                              ; preds = %590, %608
  %596 = phi ptr [ %609, %608 ], [ %593, %590 ]
  %597 = getelementptr inbounds %struct.bConstraint, ptr %596, i64 0, i32 3
  %598 = load i16, ptr %597, align 8, !tbaa !178
  %599 = icmp eq i16 %598, 28
  br i1 %599, label %600, label %608

600:                                              ; preds = %595
  %601 = getelementptr inbounds %struct.bConstraint, ptr %596, i64 0, i32 2
  %602 = load ptr, ptr %601, align 8, !tbaa !180
  %603 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %602, i64 0, i32 4, i64 3, i64 3
  %604 = load float, ptr %603, align 4, !tbaa !128
  %605 = fcmp oeq float %604, 0.000000e+00
  br i1 %605, label %606, label %608

606:                                              ; preds = %600
  %607 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %602, i64 0, i32 4
  call void @unit_m4(ptr noundef nonnull %607) #15
  br label %608

608:                                              ; preds = %600, %606, %595
  %609 = load ptr, ptr %596, align 8, !tbaa !42
  %610 = icmp eq ptr %609, null
  br i1 %610, label %582, label %595, !llvm.loop !181

611:                                              ; preds = %588, %622
  %612 = phi ptr [ %586, %588 ], [ %623, %622 ]
  %613 = getelementptr inbounds %struct.Object, ptr %612, i64 0, i32 3
  %614 = load i16, ptr %613, align 8, !tbaa !182
  %615 = icmp eq i16 %614, 4
  br i1 %615, label %616, label %622

616:                                              ; preds = %611
  %617 = call ptr @BKE_bproperty_object_get(ptr noundef nonnull %612, ptr noundef nonnull @.str.1) #15
  %618 = icmp eq ptr %617, null
  br i1 %618, label %622, label %619

619:                                              ; preds = %616
  %620 = load ptr, ptr %589, align 8, !tbaa !183
  %621 = getelementptr inbounds %struct.ID, ptr %612, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @blo_reportf_wrap(ptr noundef %620, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef nonnull %621) #15
  br label %622

622:                                              ; preds = %611, %619, %616
  %623 = load ptr, ptr %612, align 8, !tbaa !42
  %624 = icmp eq ptr %623, null
  br i1 %624, label %625, label %611, !llvm.loop !186

625:                                              ; preds = %622, %578, %585, %454, %451
  %626 = load i16, ptr %55, align 8, !tbaa !34
  %627 = icmp slt i16 %626, 261
  br i1 %627, label %634, label %628

628:                                              ; preds = %625
  %629 = icmp eq i16 %626, 261
  br i1 %629, label %630, label %792

630:                                              ; preds = %628
  %631 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %632 = load i16, ptr %631, align 2, !tbaa !74
  %633 = icmp slt i16 %632, 2
  br i1 %633, label %634, label %688

634:                                              ; preds = %630, %625
  %635 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %636 = load ptr, ptr %635, align 8, !tbaa !42
  %637 = icmp eq ptr %636, null
  br i1 %637, label %662, label %641

638:                                              ; preds = %659, %641
  %639 = load ptr, ptr %642, align 8, !tbaa !42
  %640 = icmp eq ptr %639, null
  br i1 %640, label %662, label %641, !llvm.loop !187

641:                                              ; preds = %634, %638
  %642 = phi ptr [ %639, %638 ], [ %636, %634 ]
  %643 = getelementptr inbounds %struct.Object, ptr %642, i64 0, i32 94
  %644 = load ptr, ptr %643, align 8, !tbaa !42
  %645 = icmp eq ptr %644, null
  br i1 %645, label %638, label %646

646:                                              ; preds = %641, %659
  %647 = phi ptr [ %660, %659 ], [ %644, %641 ]
  %648 = getelementptr inbounds %struct.bActuator, ptr %647, i64 0, i32 3
  %649 = load i16, ptr %648, align 8, !tbaa !188
  %650 = icmp eq i16 %649, 3
  br i1 %650, label %651, label %659

651:                                              ; preds = %646
  %652 = getelementptr inbounds %struct.bActuator, ptr %647, i64 0, i32 8
  %653 = load ptr, ptr %652, align 8, !tbaa !190
  %654 = getelementptr inbounds %struct.bCameraActuator, ptr %653, i64 0, i32 6
  %655 = load i16, ptr %654, align 2, !tbaa !191
  switch i16 %655, label %659 [
    i16 120, label %657
    i16 121, label %656
  ]

656:                                              ; preds = %651
  br label %657

657:                                              ; preds = %651, %656
  %658 = phi i16 [ 1, %656 ], [ 0, %651 ]
  store i16 %658, ptr %654, align 2, !tbaa !191
  br label %659

659:                                              ; preds = %657, %651, %646
  %660 = load ptr, ptr %647, align 8, !tbaa !42
  %661 = icmp eq ptr %660, null
  br i1 %661, label %638, label %646, !llvm.loop !193

662:                                              ; preds = %638, %634
  %663 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %664 = load ptr, ptr %663, align 8, !tbaa !42
  %665 = icmp eq ptr %664, null
  br i1 %665, label %682, label %666

666:                                              ; preds = %662, %666
  %667 = phi ptr [ %680, %666 ], [ %664, %662 ]
  %668 = getelementptr inbounds %struct.Scene, ptr %667, i64 0, i32 20
  %669 = load ptr, ptr %668, align 8, !tbaa !194
  %670 = getelementptr inbounds %struct.ToolSettings, ptr %669, i64 0, i32 73
  %671 = getelementptr inbounds %struct.ToolSettings, ptr %669, i64 0, i32 70
  %672 = load i32, ptr %671, align 4, !tbaa !195
  store i32 %672, ptr %670, align 8, !tbaa !202
  %673 = getelementptr inbounds %struct.ToolSettings, ptr %669, i64 0, i32 71
  %674 = getelementptr inbounds %struct.ToolSettings, ptr %669, i64 0, i32 73, i32 1
  %675 = load <2 x float>, ptr %673, align 8, !tbaa !128
  store <2 x float> %675, ptr %674, align 4, !tbaa !128
  %676 = getelementptr inbounds %struct.ToolSettings, ptr %669, i64 0, i32 68
  %677 = load i16, ptr %676, align 8, !tbaa !203
  %678 = sext i16 %677 to i32
  %679 = getelementptr inbounds %struct.ToolSettings, ptr %669, i64 0, i32 73, i32 6
  store i32 %678, ptr %679, align 8, !tbaa !204
  %680 = load ptr, ptr %667, align 8, !tbaa !42
  %681 = icmp eq ptr %680, null
  br i1 %681, label %682, label %666, !llvm.loop !205

682:                                              ; preds = %666, %662
  br i1 %627, label %691, label %683

683:                                              ; preds = %682
  %684 = icmp eq i16 %626, 261
  br i1 %684, label %685, label %763

685:                                              ; preds = %683
  %686 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %687 = load i16, ptr %686, align 2, !tbaa !74
  br label %688

688:                                              ; preds = %685, %630
  %689 = phi i16 [ %687, %685 ], [ %632, %630 ]
  %690 = icmp slt i16 %689, 3
  br i1 %690, label %691, label %763

691:                                              ; preds = %688, %682
  %692 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 29
  %693 = load ptr, ptr %692, align 8, !tbaa !42
  %694 = icmp eq ptr %693, null
  br i1 %694, label %726, label %695

695:                                              ; preds = %691, %723
  %696 = phi ptr [ %724, %723 ], [ %693, %691 ]
  %697 = getelementptr inbounds %struct.Text, ptr %696, i64 0, i32 2
  %698 = load i32, ptr %697, align 8, !tbaa !206
  %699 = and i32 %698, 8
  %700 = icmp eq i32 %699, 0
  br i1 %700, label %701, label %723

701:                                              ; preds = %695
  %702 = getelementptr inbounds %struct.Text, ptr %696, i64 0, i32 4
  %703 = load ptr, ptr %702, align 8, !tbaa !42
  %704 = icmp eq ptr %703, null
  br i1 %704, label %723, label %705

705:                                              ; preds = %701
  %706 = getelementptr inbounds %struct.Text, ptr %696, i64 0, i32 5
  %707 = getelementptr inbounds %struct.Text, ptr %696, i64 0, i32 7
  br label %708

708:                                              ; preds = %705, %720
  %709 = phi ptr [ %703, %705 ], [ %721, %720 ]
  %710 = getelementptr inbounds %struct.TextLine, ptr %709, i64 0, i32 2
  %711 = call i32 @txt_extended_ascii_as_utf8(ptr noundef nonnull %710) #15
  %712 = getelementptr inbounds %struct.TextLine, ptr %709, i64 0, i32 4
  %713 = load i32, ptr %712, align 8, !tbaa !209
  %714 = add nsw i32 %713, %711
  store i32 %714, ptr %712, align 8, !tbaa !209
  %715 = icmp eq i32 %711, 0
  br i1 %715, label %720, label %716

716:                                              ; preds = %708
  %717 = load ptr, ptr %706, align 8, !tbaa !211
  %718 = icmp eq ptr %709, %717
  br i1 %718, label %719, label %720

719:                                              ; preds = %716
  store i32 0, ptr %707, align 8, !tbaa !212
  br label %720

720:                                              ; preds = %719, %716, %708
  %721 = load ptr, ptr %709, align 8, !tbaa !42
  %722 = icmp eq ptr %721, null
  br i1 %722, label %723, label %708, !llvm.loop !213

723:                                              ; preds = %720, %701, %695
  %724 = load ptr, ptr %696, align 8, !tbaa !42
  %725 = icmp eq ptr %724, null
  br i1 %725, label %726, label %695, !llvm.loop !214

726:                                              ; preds = %723, %691
  %727 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %728 = load ptr, ptr %727, align 8, !tbaa !42
  %729 = icmp eq ptr %728, null
  br i1 %729, label %763, label %733

730:                                              ; preds = %760, %733
  %731 = load ptr, ptr %734, align 8, !tbaa !42
  %732 = icmp eq ptr %731, null
  br i1 %732, label %763, label %733, !llvm.loop !215

733:                                              ; preds = %726, %730
  %734 = phi ptr [ %731, %730 ], [ %728, %726 ]
  %735 = getelementptr inbounds %struct.Object, ptr %734, i64 0, i32 26
  %736 = load ptr, ptr %735, align 8, !tbaa !42
  %737 = icmp eq ptr %736, null
  br i1 %737, label %730, label %738

738:                                              ; preds = %733, %760
  %739 = phi ptr [ %761, %760 ], [ %736, %733 ]
  %740 = getelementptr inbounds %struct.ModifierData, ptr %739, i64 0, i32 2
  %741 = load i32, ptr %740, align 8, !tbaa !216
  %742 = icmp eq i32 %741, 40
  br i1 %742, label %743, label %760

743:                                              ; preds = %738
  %744 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %739, i64 0, i32 1
  %745 = load ptr, ptr %744, align 8, !tbaa !218
  %746 = icmp eq ptr %745, null
  br i1 %746, label %760, label %747

747:                                              ; preds = %743
  %748 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %745, i64 0, i32 2
  %749 = load ptr, ptr %748, align 8, !tbaa !42
  %750 = icmp eq ptr %749, null
  br i1 %750, label %760, label %751

751:                                              ; preds = %747, %751
  %752 = phi ptr [ %758, %751 ], [ %749, %747 ]
  %753 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %752, i64 0, i32 30
  store float 1.000000e+00, ptr %753, align 8, !tbaa !220
  %754 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %752, i64 0, i32 38
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %754, align 8, !tbaa !128
  %755 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %752, i64 0, i32 18
  %756 = load i32, ptr %755, align 4, !tbaa !222
  %757 = or i32 %756, 512
  store i32 %757, ptr %755, align 4, !tbaa !222
  %758 = load ptr, ptr %752, align 8, !tbaa !42
  %759 = icmp eq ptr %758, null
  br i1 %759, label %760, label %751, !llvm.loop !223

760:                                              ; preds = %751, %747, %743, %738
  %761 = load ptr, ptr %739, align 8, !tbaa !42
  %762 = icmp eq ptr %761, null
  br i1 %762, label %730, label %738, !llvm.loop !224

763:                                              ; preds = %730, %726, %688, %683
  %764 = load i16, ptr %55, align 8, !tbaa !34
  %765 = icmp slt i16 %764, 262
  br i1 %765, label %766, label %792

766:                                              ; preds = %763
  %767 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %768 = load ptr, ptr %767, align 8, !tbaa !42
  %769 = icmp eq ptr %768, null
  br i1 %769, label %796, label %773

770:                                              ; preds = %789, %773
  %771 = load ptr, ptr %774, align 8, !tbaa !42
  %772 = icmp eq ptr %771, null
  br i1 %772, label %792, label %773, !llvm.loop !225

773:                                              ; preds = %766, %770
  %774 = phi ptr [ %771, %770 ], [ %768, %766 ]
  %775 = getelementptr inbounds %struct.Object, ptr %774, i64 0, i32 26
  %776 = load ptr, ptr %775, align 8, !tbaa !42
  %777 = icmp eq ptr %776, null
  br i1 %777, label %770, label %778

778:                                              ; preds = %773, %789
  %779 = phi ptr [ %790, %789 ], [ %776, %773 ]
  %780 = getelementptr inbounds %struct.ModifierData, ptr %779, i64 0, i32 2
  %781 = load i32, ptr %780, align 8, !tbaa !216
  %782 = icmp eq i32 %781, 22
  br i1 %782, label %783, label %789

783:                                              ; preds = %778
  %784 = getelementptr inbounds %struct.ClothModifierData, ptr %779, i64 0, i32 3
  %785 = load ptr, ptr %784, align 8, !tbaa !226
  %786 = icmp eq ptr %785, null
  br i1 %786, label %789, label %787

787:                                              ; preds = %783
  %788 = getelementptr inbounds %struct.ClothSimSettings, ptr %785, i64 0, i32 25
  store float 1.000000e+00, ptr %788, align 8, !tbaa !228
  br label %789

789:                                              ; preds = %783, %787, %778
  %790 = load ptr, ptr %779, align 8, !tbaa !42
  %791 = icmp eq ptr %790, null
  br i1 %791, label %770, label %778, !llvm.loop !230

792:                                              ; preds = %770, %628, %763
  %793 = phi i1 [ false, %763 ], [ false, %628 ], [ true, %770 ]
  %794 = phi i16 [ %764, %763 ], [ %626, %628 ], [ %764, %770 ]
  %795 = icmp slt i16 %794, 263
  br i1 %795, label %796, label %853

796:                                              ; preds = %766, %792
  %797 = phi i16 [ %794, %792 ], [ %764, %766 ]
  %798 = phi i1 [ %793, %792 ], [ true, %766 ]
  %799 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %800 = load ptr, ptr %799, align 8, !tbaa !42
  %801 = icmp eq ptr %800, null
  br i1 %801, label %825, label %805

802:                                              ; preds = %822, %805
  %803 = load ptr, ptr %806, align 8, !tbaa !42
  %804 = icmp eq ptr %803, null
  br i1 %804, label %825, label %805, !llvm.loop !231

805:                                              ; preds = %796, %802
  %806 = phi ptr [ %803, %802 ], [ %800, %796 ]
  %807 = getelementptr inbounds %struct.Object, ptr %806, i64 0, i32 26
  %808 = load ptr, ptr %807, align 8, !tbaa !42
  %809 = icmp eq ptr %808, null
  br i1 %809, label %802, label %810

810:                                              ; preds = %805, %822
  %811 = phi ptr [ %823, %822 ], [ %808, %805 ]
  %812 = getelementptr inbounds %struct.ModifierData, ptr %811, i64 0, i32 2
  %813 = load i32, ptr %812, align 8, !tbaa !216
  %814 = icmp eq i32 %813, 26
  br i1 %814, label %815, label %822

815:                                              ; preds = %810
  %816 = getelementptr inbounds %struct.FluidsimModifierData, ptr %811, i64 0, i32 1
  %817 = load ptr, ptr %816, align 8, !tbaa !232
  %818 = getelementptr inbounds %struct.FluidsimSettings, ptr %817, i64 0, i32 53
  %819 = load float, ptr %818, align 4, !tbaa !234
  %820 = fcmp oeq float %819, 0.000000e+00
  br i1 %820, label %821, label %822

821:                                              ; preds = %815
  store float 1.000000e+00, ptr %818, align 4, !tbaa !234
  br label %822

822:                                              ; preds = %815, %821, %810
  %823 = load ptr, ptr %811, align 8, !tbaa !42
  %824 = icmp eq ptr %823, null
  br i1 %824, label %802, label %810, !llvm.loop !236

825:                                              ; preds = %802, %796
  br i1 %798, label %832, label %826

826:                                              ; preds = %825
  %827 = icmp eq i16 %797, 262
  br i1 %827, label %828, label %853

828:                                              ; preds = %826
  %829 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %830 = load i16, ptr %829, align 2, !tbaa !74
  %831 = icmp slt i16 %830, 1
  br i1 %831, label %832, label %853

832:                                              ; preds = %828, %825
  %833 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %834 = load ptr, ptr %833, align 8, !tbaa !42
  %835 = icmp eq ptr %834, null
  br i1 %835, label %845, label %836

836:                                              ; preds = %832, %842
  %837 = phi ptr [ %843, %842 ], [ %834, %832 ]
  %838 = getelementptr inbounds %struct.Scene, ptr %837, i64 0, i32 18
  %839 = load ptr, ptr %838, align 8, !tbaa !65
  %840 = icmp eq ptr %839, null
  br i1 %840, label %842, label %841

841:                                              ; preds = %836
  call fastcc void @do_versions_nodetree_multi_file_output_format_2_62_1(ptr noundef nonnull %837, ptr noundef nonnull %839) #13
  br label %842

842:                                              ; preds = %836, %841
  %843 = load ptr, ptr %837, align 8, !tbaa !42
  %844 = icmp eq ptr %843, null
  br i1 %844, label %845, label %836, !llvm.loop !237

845:                                              ; preds = %842, %832
  %846 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 35
  %847 = load ptr, ptr %846, align 8, !tbaa !42
  %848 = icmp eq ptr %847, null
  br i1 %848, label %853, label %849

849:                                              ; preds = %845, %849
  %850 = phi ptr [ %851, %849 ], [ %847, %845 ]
  call fastcc void @do_versions_nodetree_multi_file_output_format_2_62_1(ptr noundef null, ptr noundef nonnull %850) #13
  %851 = load ptr, ptr %850, align 8, !tbaa !42
  %852 = icmp eq ptr %851, null
  br i1 %852, label %853, label %849, !llvm.loop !238

853:                                              ; preds = %849, %845, %792, %828, %826
  %854 = load i16, ptr %55, align 8, !tbaa !34
  %855 = icmp eq i16 %854, 262
  br i1 %855, label %856, label %870

856:                                              ; preds = %853
  %857 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %858 = load i16, ptr %857, align 2, !tbaa !74
  %859 = icmp eq i16 %858, 1
  br i1 %859, label %860, label %875

860:                                              ; preds = %856
  %861 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %862 = load ptr, ptr %861, align 8, !tbaa !42
  %863 = icmp eq ptr %862, null
  br i1 %863, label %875, label %864

864:                                              ; preds = %860, %864
  %865 = phi ptr [ %866, %864 ], [ %862, %860 ]
  call fastcc void @do_versions_mesh_mloopcol_swap_2_62_1(ptr noundef nonnull %865) #13
  %866 = load ptr, ptr %865, align 8, !tbaa !42
  %867 = icmp eq ptr %866, null
  br i1 %867, label %868, label %864, !llvm.loop !239

868:                                              ; preds = %864
  %869 = load i16, ptr %55, align 8, !tbaa !34
  br label %870

870:                                              ; preds = %868, %853
  %871 = phi i16 [ %854, %853 ], [ %869, %868 ]
  %872 = icmp slt i16 %871, 262
  br i1 %872, label %879, label %873

873:                                              ; preds = %870
  %874 = icmp eq i16 %871, 262
  br i1 %874, label %875, label %908

875:                                              ; preds = %860, %856, %873
  %876 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %877 = load i16, ptr %876, align 2, !tbaa !74
  %878 = icmp slt i16 %877, 2
  br i1 %878, label %879, label %908

879:                                              ; preds = %875, %870
  %880 = phi i16 [ 262, %875 ], [ %871, %870 ]
  %881 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %882 = load ptr, ptr %881, align 8, !tbaa !42
  %883 = icmp eq ptr %882, null
  br i1 %883, label %905, label %887

884:                                              ; preds = %900, %887
  %885 = load ptr, ptr %888, align 8, !tbaa !42
  %886 = icmp eq ptr %885, null
  br i1 %886, label %903, label %887, !llvm.loop !240

887:                                              ; preds = %879, %884
  %888 = phi ptr [ %885, %884 ], [ %882, %879 ]
  %889 = getelementptr inbounds %struct.Scene, ptr %888, i64 0, i32 35
  %890 = load ptr, ptr %889, align 8, !tbaa !42
  %891 = icmp eq ptr %890, null
  br i1 %891, label %884, label %892

892:                                              ; preds = %887, %900
  %893 = phi ptr [ %901, %900 ], [ %890, %887 ]
  %894 = getelementptr inbounds %struct.KeyingSet, ptr %893, i64 0, i32 3
  %895 = load i8, ptr %894, align 8, !tbaa !241
  %896 = icmp eq i8 %895, 0
  br i1 %896, label %897, label %900

897:                                              ; preds = %892
  %898 = getelementptr inbounds %struct.KeyingSet, ptr %893, i64 0, i32 4
  %899 = call ptr @BLI_strncpy(ptr noundef nonnull %894, ptr noundef nonnull %898, i64 noundef 64) #15
  br label %900

900:                                              ; preds = %892, %897
  %901 = load ptr, ptr %893, align 8, !tbaa !42
  %902 = icmp eq ptr %901, null
  br i1 %902, label %884, label %892, !llvm.loop !242

903:                                              ; preds = %884
  %904 = load i16, ptr %55, align 8, !tbaa !34
  br label %905

905:                                              ; preds = %903, %879
  %906 = phi i16 [ %904, %903 ], [ %880, %879 ]
  %907 = icmp slt i16 %906, 262
  br i1 %907, label %914, label %908

908:                                              ; preds = %873, %875, %905
  %909 = phi i16 [ %906, %905 ], [ %871, %873 ], [ 262, %875 ]
  switch i16 %909, label %1020 [
    i16 262, label %910
    i16 263, label %995
  ]

910:                                              ; preds = %908
  %911 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %912 = load i16, ptr %911, align 2, !tbaa !74
  %913 = icmp slt i16 %912, 3
  br i1 %913, label %914, label %943

914:                                              ; preds = %910, %905
  %915 = phi i1 [ false, %910 ], [ true, %905 ]
  %916 = phi i16 [ 262, %910 ], [ %906, %905 ]
  %917 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %918 = load ptr, ptr %917, align 8, !tbaa !42
  %919 = icmp eq ptr %918, null
  br i1 %919, label %938, label %923

920:                                              ; preds = %935, %923
  %921 = load ptr, ptr %924, align 8, !tbaa !42
  %922 = icmp eq ptr %921, null
  br i1 %922, label %938, label %923, !llvm.loop !243

923:                                              ; preds = %914, %920
  %924 = phi ptr [ %921, %920 ], [ %918, %914 ]
  %925 = getelementptr inbounds %struct.Object, ptr %924, i64 0, i32 26
  %926 = load ptr, ptr %925, align 8, !tbaa !42
  %927 = icmp eq ptr %926, null
  br i1 %927, label %920, label %928

928:                                              ; preds = %923, %935
  %929 = phi ptr [ %936, %935 ], [ %926, %923 ]
  %930 = getelementptr inbounds %struct.ModifierData, ptr %929, i64 0, i32 2
  %931 = load i32, ptr %930, align 8, !tbaa !216
  %932 = icmp eq i32 %931, 2
  br i1 %932, label %933, label %935

933:                                              ; preds = %928
  %934 = getelementptr inbounds %struct.LatticeModifierData, ptr %929, i64 0, i32 3
  store float 1.000000e+00, ptr %934, align 8, !tbaa !244
  br label %935

935:                                              ; preds = %928, %933
  %936 = load ptr, ptr %929, align 8, !tbaa !42
  %937 = icmp eq ptr %936, null
  br i1 %937, label %920, label %928, !llvm.loop !246

938:                                              ; preds = %920, %914
  br i1 %915, label %949, label %939

939:                                              ; preds = %938
  switch i16 %916, label %1020 [
    i16 262, label %940
    i16 263, label %995
  ]

940:                                              ; preds = %939
  %941 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %942 = load i16, ptr %941, align 2, !tbaa !74
  br label %943

943:                                              ; preds = %940, %910
  %944 = phi i16 [ %942, %940 ], [ %912, %910 ]
  %945 = icmp slt i16 %944, 4
  br i1 %945, label %946, label %982

946:                                              ; preds = %943
  %947 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %948 = load ptr, ptr %947, align 8, !tbaa !42
  br label %949

949:                                              ; preds = %946, %938
  %950 = phi i16 [ 262, %946 ], [ %916, %938 ]
  %951 = phi ptr [ %948, %946 ], [ %918, %938 ]
  %952 = icmp eq ptr %951, null
  br i1 %952, label %980, label %956

953:                                              ; preds = %977, %956
  %954 = load ptr, ptr %957, align 8, !tbaa !42
  %955 = icmp eq ptr %954, null
  br i1 %955, label %980, label %956, !llvm.loop !247

956:                                              ; preds = %949, %953
  %957 = phi ptr [ %954, %953 ], [ %951, %949 ]
  %958 = getelementptr inbounds %struct.Object, ptr %957, i64 0, i32 26
  %959 = load ptr, ptr %958, align 8, !tbaa !42
  %960 = icmp eq ptr %959, null
  br i1 %960, label %953, label %961

961:                                              ; preds = %956, %977
  %962 = phi ptr [ %978, %977 ], [ %959, %956 ]
  %963 = getelementptr inbounds %struct.ModifierData, ptr %962, i64 0, i32 2
  %964 = load i32, ptr %963, align 8, !tbaa !216
  %965 = icmp eq i32 %964, 26
  br i1 %965, label %966, label %977

966:                                              ; preds = %961
  %967 = getelementptr inbounds %struct.FluidsimModifierData, ptr %962, i64 0, i32 1
  %968 = load ptr, ptr %967, align 8, !tbaa !232
  %969 = getelementptr inbounds %struct.FluidsimSettings, ptr %968, i64 0, i32 11
  %970 = load i16, ptr %969, align 4, !tbaa !248
  switch i16 %970, label %977 [
    i16 3, label %972
    i16 4, label %971
  ]

971:                                              ; preds = %966
  br label %972

972:                                              ; preds = %966, %971
  %973 = phi float [ 2.000000e+00, %971 ], [ 5.000000e+00, %966 ]
  %974 = phi i16 [ 3, %971 ], [ 5, %966 ]
  %975 = getelementptr inbounds %struct.FluidsimSettings, ptr %968, i64 0, i32 10
  store float %973, ptr %975, align 8, !tbaa !249
  %976 = getelementptr inbounds %struct.FluidsimSettings, ptr %968, i64 0, i32 12
  store i16 %974, ptr %976, align 2, !tbaa !250
  br label %977

977:                                              ; preds = %972, %966, %961
  %978 = load ptr, ptr %962, align 8, !tbaa !42
  %979 = icmp eq ptr %978, null
  br i1 %979, label %953, label %961, !llvm.loop !251

980:                                              ; preds = %953, %949
  %981 = icmp slt i16 %950, 263
  br i1 %981, label %982, label %993

982:                                              ; preds = %943, %980
  %983 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 37
  %984 = load ptr, ptr %983, align 8, !tbaa !42
  %985 = icmp eq ptr %984, null
  br i1 %985, label %999, label %986

986:                                              ; preds = %982, %986
  %987 = phi ptr [ %991, %986 ], [ %984, %982 ]
  %988 = getelementptr inbounds %struct.ParticleSettings, ptr %987, i64 0, i32 5
  %989 = load i32, ptr %988, align 8, !tbaa !252
  %990 = or i32 %989, 512
  store i32 %990, ptr %988, align 8, !tbaa !252
  %991 = load ptr, ptr %987, align 8, !tbaa !42
  %992 = icmp eq ptr %991, null
  br i1 %992, label %999, label %986, !llvm.loop !253

993:                                              ; preds = %980
  %994 = icmp eq i16 %950, 263
  br i1 %994, label %995, label %1020

995:                                              ; preds = %908, %939, %993
  %996 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %997 = load i16, ptr %996, align 2, !tbaa !74
  %998 = icmp slt i16 %997, 1
  br i1 %998, label %999, label %1020

999:                                              ; preds = %986, %982, %995
  %1000 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1001 = load ptr, ptr %1000, align 8, !tbaa !42
  %1002 = icmp eq ptr %1001, null
  br i1 %1002, label %1012, label %1003

1003:                                             ; preds = %999, %1009
  %1004 = phi ptr [ %1010, %1009 ], [ %1001, %999 ]
  %1005 = getelementptr inbounds %struct.Scene, ptr %1004, i64 0, i32 18
  %1006 = load ptr, ptr %1005, align 8, !tbaa !65
  %1007 = icmp eq ptr %1006, null
  br i1 %1007, label %1009, label %1008

1008:                                             ; preds = %1003
  call fastcc void @do_versions_nodetree_multi_file_output_path_2_63_1(ptr noundef nonnull %1006) #13
  br label %1009

1009:                                             ; preds = %1003, %1008
  %1010 = load ptr, ptr %1004, align 8, !tbaa !42
  %1011 = icmp eq ptr %1010, null
  br i1 %1011, label %1012, label %1003, !llvm.loop !254

1012:                                             ; preds = %1009, %999
  %1013 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 35
  %1014 = load ptr, ptr %1013, align 8, !tbaa !42
  %1015 = icmp eq ptr %1014, null
  br i1 %1015, label %1020, label %1016

1016:                                             ; preds = %1012, %1016
  %1017 = phi ptr [ %1018, %1016 ], [ %1014, %1012 ]
  call fastcc void @do_versions_nodetree_multi_file_output_path_2_63_1(ptr noundef nonnull %1017) #13
  %1018 = load ptr, ptr %1017, align 8, !tbaa !42
  %1019 = icmp eq ptr %1018, null
  br i1 %1019, label %1020, label %1016, !llvm.loop !255

1020:                                             ; preds = %1016, %1012, %908, %939, %995, %993
  %1021 = load i16, ptr %55, align 8, !tbaa !34
  %1022 = icmp slt i16 %1021, 263
  br i1 %1022, label %1029, label %1023

1023:                                             ; preds = %1020
  %1024 = icmp eq i16 %1021, 263
  br i1 %1024, label %1025, label %1890

1025:                                             ; preds = %1023
  %1026 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1027 = load i16, ptr %1026, align 2, !tbaa !74
  %1028 = icmp slt i16 %1027, 3
  br i1 %1028, label %1029, label %1128

1029:                                             ; preds = %1025, %1020
  %1030 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1031 = load ptr, ptr %1030, align 8, !tbaa !42
  %1032 = icmp eq ptr %1031, null
  br i1 %1032, label %1048, label %1033

1033:                                             ; preds = %1029, %1045
  %1034 = phi ptr [ %1046, %1045 ], [ %1031, %1029 ]
  %1035 = getelementptr inbounds %struct.Scene, ptr %1034, i64 0, i32 20
  %1036 = load ptr, ptr %1035, align 8, !tbaa !194
  %1037 = icmp eq ptr %1036, null
  br i1 %1037, label %1045, label %1038

1038:                                             ; preds = %1033
  %1039 = getelementptr inbounds %struct.ToolSettings, ptr %1036, i64 0, i32 4
  %1040 = load float, ptr %1039, align 8, !tbaa !256
  %1041 = getelementptr inbounds %struct.ToolSettings, ptr %1036, i64 0, i32 73, i32 3
  store float %1040, ptr %1041, align 4, !tbaa !257
  %1042 = getelementptr inbounds %struct.ToolSettings, ptr %1036, i64 0, i32 73, i32 6
  %1043 = load i32, ptr %1042, align 8, !tbaa !258
  %1044 = or i32 %1043, 32
  store i32 %1044, ptr %1042, align 8, !tbaa !258
  br label %1045

1045:                                             ; preds = %1038, %1033
  %1046 = load ptr, ptr %1034, align 8, !tbaa !42
  %1047 = icmp eq ptr %1046, null
  br i1 %1047, label %1048, label %1033, !llvm.loop !259

1048:                                             ; preds = %1045, %1029
  %1049 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 36
  %1050 = load ptr, ptr %1049, align 8, !tbaa !42
  %1051 = icmp eq ptr %1050, null
  br i1 %1051, label %1057, label %1052

1052:                                             ; preds = %1048, %1052
  %1053 = phi ptr [ %1055, %1052 ], [ %1050, %1048 ]
  %1054 = getelementptr inbounds %struct.Brush, ptr %1053, i64 0, i32 14
  store float 5.000000e-01, ptr %1054, align 8, !tbaa !260
  %1055 = load ptr, ptr %1053, align 8, !tbaa !42
  %1056 = icmp eq ptr %1055, null
  br i1 %1056, label %1057, label %1052, !llvm.loop !261

1057:                                             ; preds = %1052, %1048
  br i1 %1022, label %1064, label %1058

1058:                                             ; preds = %1057
  %1059 = icmp eq i16 %1021, 263
  br i1 %1059, label %1060, label %1205

1060:                                             ; preds = %1058
  %1061 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1062 = load i16, ptr %1061, align 2, !tbaa !74
  %1063 = icmp slt i16 %1062, 2
  br i1 %1063, label %1064, label %1128

1064:                                             ; preds = %1060, %1057
  %1065 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %1066 = load ptr, ptr %1065, align 8, !tbaa !42
  %1067 = icmp eq ptr %1066, null
  br i1 %1067, label %1122, label %1071

1068:                                             ; preds = %1076, %1071
  %1069 = load ptr, ptr %1072, align 8, !tbaa !42
  %1070 = icmp eq ptr %1069, null
  br i1 %1070, label %1122, label %1071, !llvm.loop !262

1071:                                             ; preds = %1064, %1068
  %1072 = phi ptr [ %1069, %1068 ], [ %1066, %1064 ]
  %1073 = getelementptr inbounds %struct.bScreen, ptr %1072, i64 0, i32 3
  %1074 = load ptr, ptr %1073, align 8, !tbaa !42
  %1075 = icmp eq ptr %1074, null
  br i1 %1075, label %1068, label %1079

1076:                                             ; preds = %1119, %1079
  %1077 = load ptr, ptr %1080, align 8, !tbaa !42
  %1078 = icmp eq ptr %1077, null
  br i1 %1078, label %1068, label %1079, !llvm.loop !263

1079:                                             ; preds = %1071, %1076
  %1080 = phi ptr [ %1077, %1076 ], [ %1074, %1071 ]
  %1081 = getelementptr inbounds %struct.ScrArea, ptr %1080, i64 0, i32 19
  %1082 = load ptr, ptr %1081, align 8, !tbaa !42
  %1083 = icmp eq ptr %1082, null
  br i1 %1083, label %1076, label %1084

1084:                                             ; preds = %1079
  %1085 = getelementptr inbounds %struct.ScrArea, ptr %1080, i64 0, i32 20
  br label %1086

1086:                                             ; preds = %1084, %1119
  %1087 = phi ptr [ %1082, %1084 ], [ %1120, %1119 ]
  %1088 = getelementptr inbounds %struct.SpaceLink, ptr %1087, i64 0, i32 3
  %1089 = load i32, ptr %1088, align 8, !tbaa !105
  %1090 = icmp eq i32 %1089, 20
  br i1 %1090, label %1091, label %1119

1091:                                             ; preds = %1086
  %1092 = load ptr, ptr %1085, align 8, !tbaa !42
  %1093 = icmp eq ptr %1092, null
  br i1 %1093, label %1119, label %1094

1094:                                             ; preds = %1091, %1111
  %1095 = phi ptr [ %1113, %1111 ], [ %1092, %1091 ]
  %1096 = phi i8 [ %1112, %1111 ], [ 0, %1091 ]
  %1097 = getelementptr inbounds %struct.ARegion, ptr %1095, i64 0, i32 8
  %1098 = load i16, ptr %1097, align 2, !tbaa !264
  %1099 = icmp eq i16 %1098, 7
  br i1 %1099, label %1100, label %1111

1100:                                             ; preds = %1094
  %1101 = getelementptr inbounds %struct.ARegion, ptr %1095, i64 0, i32 9
  %1102 = load i16, ptr %1101, align 8, !tbaa !267
  %1103 = icmp eq i16 %1102, 0
  br i1 %1103, label %1111, label %1104

1104:                                             ; preds = %1100
  %1105 = getelementptr inbounds %struct.ARegion, ptr %1095, i64 0, i32 10
  %1106 = load i16, ptr %1105, align 2, !tbaa !268
  %1107 = or i16 %1106, 1
  store i16 %1107, ptr %1105, align 2, !tbaa !268
  %1108 = getelementptr inbounds %struct.ARegion, ptr %1095, i64 0, i32 2, i32 14
  %1109 = load i16, ptr %1108, align 2, !tbaa !269
  %1110 = and i16 %1109, -1025
  store i16 %1110, ptr %1108, align 2, !tbaa !269
  store i16 0, ptr %1101, align 8, !tbaa !267
  br label %1111

1111:                                             ; preds = %1094, %1104, %1100
  %1112 = phi i8 [ 1, %1104 ], [ %1096, %1100 ], [ %1096, %1094 ]
  %1113 = load ptr, ptr %1095, align 8, !tbaa !42
  %1114 = icmp eq ptr %1113, null
  br i1 %1114, label %1115, label %1094, !llvm.loop !270

1115:                                             ; preds = %1111
  %1116 = icmp eq i8 %1112, 0
  br i1 %1116, label %1119, label %1117

1117:                                             ; preds = %1115
  %1118 = getelementptr inbounds %struct.SpaceClip, ptr %1087, i64 0, i32 14
  store i16 0, ptr %1118, align 2, !tbaa !271
  br label %1119

1119:                                             ; preds = %1091, %1115, %1117, %1086
  %1120 = load ptr, ptr %1087, align 8, !tbaa !42
  %1121 = icmp eq ptr %1120, null
  br i1 %1121, label %1076, label %1086, !llvm.loop !272

1122:                                             ; preds = %1068, %1064
  br i1 %1022, label %1131, label %1123

1123:                                             ; preds = %1122
  %1124 = icmp eq i16 %1021, 263
  br i1 %1124, label %1125, label %1205

1125:                                             ; preds = %1123
  %1126 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1127 = load i16, ptr %1126, align 2, !tbaa !74
  br label %1128

1128:                                             ; preds = %1025, %1125, %1060
  %1129 = phi i16 [ %1127, %1125 ], [ %1062, %1060 ], [ %1027, %1025 ]
  %1130 = icmp slt i16 %1129, 4
  br i1 %1130, label %1131, label %1180

1131:                                             ; preds = %1128, %1122
  %1132 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 21
  %1133 = load ptr, ptr %1132, align 8, !tbaa !42
  %1134 = icmp eq ptr %1133, null
  br i1 %1134, label %1144, label %1135

1135:                                             ; preds = %1131, %1141
  %1136 = phi ptr [ %1142, %1141 ], [ %1133, %1131 ]
  %1137 = getelementptr inbounds %struct.Lamp, ptr %1136, i64 0, i32 65
  %1138 = load float, ptr %1137, align 8, !tbaa !273
  %1139 = fcmp oeq float %1138, 0.000000e+00
  br i1 %1139, label %1140, label %1141

1140:                                             ; preds = %1135
  store float 1.000000e+01, ptr %1137, align 8, !tbaa !273
  br label %1141

1141:                                             ; preds = %1135, %1140
  %1142 = load ptr, ptr %1136, align 8, !tbaa !42
  %1143 = icmp eq ptr %1142, null
  br i1 %1143, label %1144, label %1135, !llvm.loop !274

1144:                                             ; preds = %1141, %1131
  %1145 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 22
  %1146 = load ptr, ptr %1145, align 8, !tbaa !42
  %1147 = icmp eq ptr %1146, null
  br i1 %1147, label %1160, label %1148

1148:                                             ; preds = %1144, %1157
  %1149 = phi ptr [ %1158, %1157 ], [ %1146, %1144 ]
  %1150 = getelementptr inbounds %struct.Camera, ptr %1149, i64 0, i32 4
  %1151 = load i16, ptr %1150, align 2, !tbaa !275
  %1152 = and i16 %1151, 128
  %1153 = icmp eq i16 %1152, 0
  br i1 %1153, label %1157, label %1154

1154:                                             ; preds = %1148
  %1155 = getelementptr inbounds %struct.Camera, ptr %1149, i64 0, i32 2
  store i8 2, ptr %1155, align 8, !tbaa !276
  %1156 = and i16 %1151, -129
  store i16 %1156, ptr %1150, align 2, !tbaa !275
  br label %1157

1157:                                             ; preds = %1148, %1154
  %1158 = load ptr, ptr %1149, align 8, !tbaa !42
  %1159 = icmp eq ptr %1158, null
  br i1 %1159, label %1160, label %1148, !llvm.loop !277

1160:                                             ; preds = %1157, %1144
  %1161 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 15
  %1162 = load ptr, ptr %1161, align 8, !tbaa !42
  %1163 = icmp eq ptr %1162, null
  br i1 %1163, label %1174, label %1164

1164:                                             ; preds = %1160, %1171
  %1165 = phi ptr [ %1172, %1171 ], [ %1162, %1160 ]
  %1166 = getelementptr inbounds %struct.Curve, ptr %1165, i64 0, i32 66
  %1167 = load float, ptr %1166, align 8, !tbaa !278
  %1168 = fcmp oeq float %1167, 0.000000e+00
  br i1 %1168, label %1169, label %1171

1169:                                             ; preds = %1164
  %1170 = getelementptr inbounds %struct.Curve, ptr %1165, i64 0, i32 65
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %1170, align 4, !tbaa !128
  br label %1171

1171:                                             ; preds = %1164, %1169
  %1172 = load ptr, ptr %1165, align 8, !tbaa !42
  %1173 = icmp eq ptr %1172, null
  br i1 %1173, label %1174, label %1164, !llvm.loop !281

1174:                                             ; preds = %1171, %1160
  br i1 %1022, label %1183, label %1175

1175:                                             ; preds = %1174
  %1176 = icmp eq i16 %1021, 263
  br i1 %1176, label %1177, label %1205

1177:                                             ; preds = %1175
  %1178 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1179 = load i16, ptr %1178, align 2, !tbaa !74
  br label %1180

1180:                                             ; preds = %1177, %1128
  %1181 = phi i16 [ %1179, %1177 ], [ %1129, %1128 ]
  %1182 = icmp slt i16 %1181, 5
  br i1 %1182, label %1183, label %1205

1183:                                             ; preds = %1180, %1174
  %1184 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1185 = load ptr, ptr %1184, align 8, !tbaa !42
  %1186 = icmp eq ptr %1185, null
  br i1 %1186, label %1197, label %1187

1187:                                             ; preds = %1183, %1194
  %1188 = phi ptr [ %1195, %1194 ], [ %1185, %1183 ]
  %1189 = getelementptr inbounds %struct.Scene, ptr %1188, i64 0, i32 18
  %1190 = load ptr, ptr %1189, align 8, !tbaa !65
  %1191 = icmp eq ptr %1190, null
  br i1 %1191, label %1194, label %1192

1192:                                             ; preds = %1187
  call fastcc void @do_versions_nodetree_file_output_layers_2_64_5(ptr noundef nonnull %1190) #13
  %1193 = load ptr, ptr %1189, align 8, !tbaa !65
  call fastcc void @do_versions_nodetree_image_layer_2_64_5(ptr noundef %1193) #13
  br label %1194

1194:                                             ; preds = %1187, %1192
  %1195 = load ptr, ptr %1188, align 8, !tbaa !42
  %1196 = icmp eq ptr %1195, null
  br i1 %1196, label %1197, label %1187, !llvm.loop !282

1197:                                             ; preds = %1194, %1183
  %1198 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 35
  %1199 = load ptr, ptr %1198, align 8, !tbaa !42
  %1200 = icmp eq ptr %1199, null
  br i1 %1200, label %1205, label %1201

1201:                                             ; preds = %1197, %1201
  %1202 = phi ptr [ %1203, %1201 ], [ %1199, %1197 ]
  call fastcc void @do_versions_nodetree_file_output_layers_2_64_5(ptr noundef nonnull %1202) #13
  call fastcc void @do_versions_nodetree_image_layer_2_64_5(ptr noundef nonnull %1202) #13
  %1203 = load ptr, ptr %1202, align 8, !tbaa !42
  %1204 = icmp eq ptr %1203, null
  br i1 %1204, label %1205, label %1201, !llvm.loop !283

1205:                                             ; preds = %1201, %1197, %1058, %1123, %1180, %1175
  %1206 = load i16, ptr %55, align 8, !tbaa !34
  %1207 = icmp slt i16 %1206, 263
  br i1 %1207, label %1214, label %1208

1208:                                             ; preds = %1205
  %1209 = icmp eq i16 %1206, 263
  br i1 %1209, label %1210, label %1890

1210:                                             ; preds = %1208
  %1211 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1212 = load i16, ptr %1211, align 2, !tbaa !74
  %1213 = icmp slt i16 %1212, 6
  br i1 %1213, label %1214, label %1287

1214:                                             ; preds = %1210, %1205
  %1215 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1216 = load ptr, ptr %1215, align 8, !tbaa !42
  %1217 = icmp eq ptr %1216, null
  br i1 %1217, label %1227, label %1218

1218:                                             ; preds = %1214, %1224
  %1219 = phi ptr [ %1225, %1224 ], [ %1216, %1214 ]
  %1220 = getelementptr inbounds %struct.Scene, ptr %1219, i64 0, i32 18
  %1221 = load ptr, ptr %1220, align 8, !tbaa !65
  %1222 = icmp eq ptr %1221, null
  br i1 %1222, label %1224, label %1223

1223:                                             ; preds = %1218
  call fastcc void @do_versions_nodetree_frame_2_64_6(ptr noundef nonnull %1221) #13
  br label %1224

1224:                                             ; preds = %1218, %1223
  %1225 = load ptr, ptr %1219, align 8, !tbaa !42
  %1226 = icmp eq ptr %1225, null
  br i1 %1226, label %1227, label %1218, !llvm.loop !284

1227:                                             ; preds = %1224, %1214
  %1228 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %1229 = load ptr, ptr %1228, align 8, !tbaa !42
  %1230 = icmp eq ptr %1229, null
  br i1 %1230, label %1240, label %1231

1231:                                             ; preds = %1227, %1237
  %1232 = phi ptr [ %1238, %1237 ], [ %1229, %1227 ]
  %1233 = getelementptr inbounds %struct.Material, ptr %1232, i64 0, i32 103
  %1234 = load ptr, ptr %1233, align 8, !tbaa !97
  %1235 = icmp eq ptr %1234, null
  br i1 %1235, label %1237, label %1236

1236:                                             ; preds = %1231
  call fastcc void @do_versions_nodetree_frame_2_64_6(ptr noundef nonnull %1234) #13
  br label %1237

1237:                                             ; preds = %1231, %1236
  %1238 = load ptr, ptr %1232, align 8, !tbaa !42
  %1239 = icmp eq ptr %1238, null
  br i1 %1239, label %1240, label %1231, !llvm.loop !285

1240:                                             ; preds = %1237, %1227
  %1241 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %1242 = load ptr, ptr %1241, align 8, !tbaa !42
  %1243 = icmp eq ptr %1242, null
  br i1 %1243, label %1253, label %1244

1244:                                             ; preds = %1240, %1250
  %1245 = phi ptr [ %1251, %1250 ], [ %1242, %1240 ]
  %1246 = getelementptr inbounds %struct.Tex, ptr %1245, i64 0, i32 52
  %1247 = load ptr, ptr %1246, align 8, !tbaa !157
  %1248 = icmp eq ptr %1247, null
  br i1 %1248, label %1250, label %1249

1249:                                             ; preds = %1244
  call fastcc void @do_versions_nodetree_frame_2_64_6(ptr noundef nonnull %1247) #13
  br label %1250

1250:                                             ; preds = %1244, %1249
  %1251 = load ptr, ptr %1245, align 8, !tbaa !42
  %1252 = icmp eq ptr %1251, null
  br i1 %1252, label %1253, label %1244, !llvm.loop !286

1253:                                             ; preds = %1250, %1240
  %1254 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 21
  %1255 = load ptr, ptr %1254, align 8, !tbaa !42
  %1256 = icmp eq ptr %1255, null
  br i1 %1256, label %1266, label %1257

1257:                                             ; preds = %1253, %1263
  %1258 = phi ptr [ %1264, %1263 ], [ %1255, %1253 ]
  %1259 = getelementptr inbounds %struct.Lamp, ptr %1258, i64 0, i32 74
  %1260 = load ptr, ptr %1259, align 8, !tbaa !161
  %1261 = icmp eq ptr %1260, null
  br i1 %1261, label %1263, label %1262

1262:                                             ; preds = %1257
  call fastcc void @do_versions_nodetree_frame_2_64_6(ptr noundef nonnull %1260) #13
  br label %1263

1263:                                             ; preds = %1257, %1262
  %1264 = load ptr, ptr %1258, align 8, !tbaa !42
  %1265 = icmp eq ptr %1264, null
  br i1 %1265, label %1266, label %1257, !llvm.loop !287

1266:                                             ; preds = %1263, %1253
  %1267 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 25
  %1268 = load ptr, ptr %1267, align 8, !tbaa !42
  %1269 = icmp eq ptr %1268, null
  br i1 %1269, label %1279, label %1270

1270:                                             ; preds = %1266, %1276
  %1271 = phi ptr [ %1277, %1276 ], [ %1268, %1266 ]
  %1272 = getelementptr inbounds %struct.World, ptr %1271, i64 0, i32 75
  %1273 = load ptr, ptr %1272, align 8, !tbaa !164
  %1274 = icmp eq ptr %1273, null
  br i1 %1274, label %1276, label %1275

1275:                                             ; preds = %1270
  call fastcc void @do_versions_nodetree_frame_2_64_6(ptr noundef nonnull %1273) #13
  br label %1276

1276:                                             ; preds = %1270, %1275
  %1277 = load ptr, ptr %1271, align 8, !tbaa !42
  %1278 = icmp eq ptr %1277, null
  br i1 %1278, label %1279, label %1270, !llvm.loop !288

1279:                                             ; preds = %1276, %1266
  %1280 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 35
  %1281 = load ptr, ptr %1280, align 8, !tbaa !42
  %1282 = icmp eq ptr %1281, null
  br i1 %1282, label %1287, label %1283

1283:                                             ; preds = %1279, %1283
  %1284 = phi ptr [ %1285, %1283 ], [ %1281, %1279 ]
  call fastcc void @do_versions_nodetree_frame_2_64_6(ptr noundef nonnull %1284) #13
  %1285 = load ptr, ptr %1284, align 8, !tbaa !42
  %1286 = icmp eq ptr %1285, null
  br i1 %1286, label %1287, label %1283, !llvm.loop !289

1287:                                             ; preds = %1283, %1279, %1210
  %1288 = load i16, ptr %55, align 8, !tbaa !34
  %1289 = icmp slt i16 %1288, 263
  br i1 %1289, label %1296, label %1290

1290:                                             ; preds = %1287
  %1291 = icmp eq i16 %1288, 263
  br i1 %1291, label %1292, label %1890

1292:                                             ; preds = %1290
  %1293 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1294 = load i16, ptr %1293, align 2, !tbaa !74
  %1295 = icmp slt i16 %1294, 7
  br i1 %1295, label %1296, label %1345

1296:                                             ; preds = %1292, %1287
  %1297 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %1298 = load ptr, ptr %1297, align 8, !tbaa !42
  %1299 = icmp eq ptr %1298, null
  br i1 %1299, label %1339, label %1303

1300:                                             ; preds = %1336, %1303
  %1301 = load ptr, ptr %1304, align 8, !tbaa !42
  %1302 = icmp eq ptr %1301, null
  br i1 %1302, label %1339, label %1303, !llvm.loop !290

1303:                                             ; preds = %1296, %1300
  %1304 = phi ptr [ %1301, %1300 ], [ %1298, %1296 ]
  %1305 = getelementptr inbounds %struct.Object, ptr %1304, i64 0, i32 26
  %1306 = load ptr, ptr %1305, align 8, !tbaa !42
  %1307 = icmp eq ptr %1306, null
  br i1 %1307, label %1300, label %1308

1308:                                             ; preds = %1303, %1336
  %1309 = phi ptr [ %1337, %1336 ], [ %1306, %1303 ]
  %1310 = getelementptr inbounds %struct.ModifierData, ptr %1309, i64 0, i32 2
  %1311 = load i32, ptr %1310, align 8, !tbaa !216
  %1312 = icmp eq i32 %1311, 31
  br i1 %1312, label %1313, label %1336

1313:                                             ; preds = %1308
  %1314 = getelementptr inbounds %struct.SmokeModifierData, ptr %1309, i64 0, i32 5
  %1315 = load i32, ptr %1314, align 4, !tbaa !291
  %1316 = and i32 %1315, 1
  %1317 = icmp eq i32 %1316, 0
  br i1 %1317, label %1336, label %1318

1318:                                             ; preds = %1313
  %1319 = getelementptr inbounds %struct.SmokeModifierData, ptr %1309, i64 0, i32 1
  %1320 = load ptr, ptr %1319, align 8, !tbaa !293
  %1321 = icmp eq ptr %1320, null
  br i1 %1321, label %1336, label %1322

1322:                                             ; preds = %1318
  %1323 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %1320, i64 0, i32 26
  %1324 = load i32, ptr %1323, align 8, !tbaa !294
  %1325 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %1320, i64 0, i32 26, i64 1
  %1326 = load i32, ptr %1325, align 4, !tbaa !294
  %1327 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %1320, i64 0, i32 26, i64 2
  %1328 = load i32, ptr %1327, align 8, !tbaa !294
  %1329 = call fastcc i32 @max_iii(i32 noundef %1324, i32 noundef %1326, i32 noundef %1328) #13
  %1330 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %1320, i64 0, i32 28
  %1331 = load float, ptr %1330, align 8, !tbaa !295
  %1332 = sitofp i32 %1329 to float
  %1333 = fmul float %1331, %1332
  %1334 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %1320, i64 0, i32 29
  store float %1333, ptr %1334, align 4, !tbaa !297
  %1335 = fdiv float 1.000000e+00, %1333
  store float %1335, ptr %1330, align 8, !tbaa !295
  br label %1336

1336:                                             ; preds = %1313, %1318, %1322, %1308
  %1337 = load ptr, ptr %1309, align 8, !tbaa !42
  %1338 = icmp eq ptr %1337, null
  br i1 %1338, label %1300, label %1308, !llvm.loop !298

1339:                                             ; preds = %1300, %1296
  br i1 %1289, label %1348, label %1340

1340:                                             ; preds = %1339
  %1341 = icmp eq i16 %1288, 263
  br i1 %1341, label %1342, label %1404

1342:                                             ; preds = %1340
  %1343 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1344 = load i16, ptr %1343, align 2, !tbaa !74
  br label %1345

1345:                                             ; preds = %1342, %1292
  %1346 = phi i16 [ %1344, %1342 ], [ %1294, %1292 ]
  %1347 = icmp slt i16 %1346, 8
  br i1 %1347, label %1348, label %1365

1348:                                             ; preds = %1345, %1339
  %1349 = phi i1 [ true, %1345 ], [ false, %1339 ]
  %1350 = phi i1 [ false, %1345 ], [ true, %1339 ]
  %1351 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1352 = load ptr, ptr %1351, align 8, !tbaa !42
  %1353 = icmp eq ptr %1352, null
  br i1 %1353, label %1360, label %1354

1354:                                             ; preds = %1348, %1354
  %1355 = phi ptr [ %1358, %1354 ], [ %1352, %1348 ]
  %1356 = getelementptr inbounds %struct.Scene, ptr %1355, i64 0, i32 37, i32 34
  store float 1.000000e+00, ptr %1356, align 8, !tbaa !299
  %1357 = getelementptr inbounds %struct.Scene, ptr %1355, i64 0, i32 37, i32 32
  store <2 x float> <float 2.000000e+00, float 0x3FE99999A0000000>, ptr %1357, align 8, !tbaa !128
  %1358 = load ptr, ptr %1355, align 8, !tbaa !42
  %1359 = icmp eq ptr %1358, null
  br i1 %1359, label %1360, label %1354, !llvm.loop !300

1360:                                             ; preds = %1354, %1348
  br i1 %1350, label %1368, label %1361

1361:                                             ; preds = %1360
  br i1 %1349, label %1362, label %1401

1362:                                             ; preds = %1361
  %1363 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1364 = load i16, ptr %1363, align 2, !tbaa !74
  br label %1365

1365:                                             ; preds = %1362, %1345
  %1366 = phi i16 [ %1364, %1362 ], [ %1346, %1345 ]
  %1367 = icmp slt i16 %1366, 9
  br i1 %1367, label %1368, label %1401

1368:                                             ; preds = %1365, %1360
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %7, ptr noundef %2) #15
  %1369 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #15
  %1370 = icmp eq i8 %1369, 1
  br i1 %1370, label %1371, label %1399

1371:                                             ; preds = %1368, %1396
  %1372 = load ptr, ptr %8, align 8, !tbaa !42
  %1373 = icmp eq ptr %1372, null
  br i1 %1373, label %1396, label %1374

1374:                                             ; preds = %1371
  %1375 = getelementptr inbounds %struct.bNodeTree, ptr %1372, i64 0, i32 9
  %1376 = load i32, ptr %1375, align 8, !tbaa !84
  %1377 = icmp eq i32 %1376, 0
  br i1 %1377, label %1378, label %1396

1378:                                             ; preds = %1374
  %1379 = getelementptr inbounds %struct.bNodeTree, ptr %1372, i64 0, i32 7
  %1380 = load ptr, ptr %1379, align 8, !tbaa !42
  %1381 = icmp eq ptr %1380, null
  br i1 %1381, label %1396, label %1382

1382:                                             ; preds = %1378, %1393
  %1383 = phi ptr [ %1394, %1393 ], [ %1380, %1378 ]
  %1384 = getelementptr inbounds %struct.bNode, ptr %1383, i64 0, i32 8
  %1385 = load i16, ptr %1384, align 4, !tbaa !87
  switch i16 %1385, label %1393 [
    i16 143, label %1386
    i16 157, label %1386
  ]

1386:                                             ; preds = %1382, %1382
  %1387 = getelementptr inbounds %struct.bNode, ptr %1383, i64 0, i32 21
  %1388 = load ptr, ptr %1387, align 8, !tbaa !89
  %1389 = getelementptr inbounds %struct.NodeTexImage, ptr %1388, i64 0, i32 1, i32 2
  store i32 1, ptr %1389, align 4, !tbaa !301
  %1390 = getelementptr inbounds %struct.NodeTexImage, ptr %1388, i64 0, i32 1, i32 4
  store i32 1, ptr %1390, align 4, !tbaa !306
  %1391 = getelementptr inbounds %struct.NodeTexImage, ptr %1388, i64 0, i32 1, i32 5
  store i8 2, ptr %1391, align 8, !tbaa !307
  %1392 = getelementptr inbounds %struct.NodeTexImage, ptr %1388, i64 0, i32 1, i32 7
  store i8 1, ptr %1392, align 2, !tbaa !308
  br label %1393

1393:                                             ; preds = %1382, %1386
  %1394 = load ptr, ptr %1383, align 8, !tbaa !42
  %1395 = icmp eq ptr %1394, null
  br i1 %1395, label %1396, label %1382, !llvm.loop !309

1396:                                             ; preds = %1393, %1378, %1374, %1371
  %1397 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #15
  %1398 = icmp eq i8 %1397, 1
  br i1 %1398, label %1371, label %1399, !llvm.loop !310

1399:                                             ; preds = %1396, %1368
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #14
  %1400 = load i16, ptr %55, align 8, !tbaa !34
  br label %1401

1401:                                             ; preds = %1399, %1365, %1361
  %1402 = phi i16 [ %1400, %1399 ], [ %1288, %1365 ], [ %1288, %1361 ]
  %1403 = icmp slt i16 %1402, 263
  br i1 %1403, label %1411, label %1404

1404:                                             ; preds = %1340, %1401
  %1405 = phi i16 [ %1402, %1401 ], [ %1288, %1340 ]
  %1406 = icmp eq i16 %1405, 263
  br i1 %1406, label %1407, label %1890

1407:                                             ; preds = %1404
  %1408 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1409 = load i16, ptr %1408, align 2, !tbaa !74
  %1410 = icmp slt i16 %1409, 10
  br i1 %1410, label %1411, label %1502

1411:                                             ; preds = %1407, %1401
  %1412 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1413 = load ptr, ptr %1412, align 8, !tbaa !42
  %1414 = icmp eq ptr %1413, null
  br i1 %1414, label %1428, label %1415

1415:                                             ; preds = %1411, %1425
  %1416 = phi ptr [ %1426, %1425 ], [ %1413, %1411 ]
  %1417 = getelementptr inbounds %struct.Scene, ptr %1416, i64 0, i32 18
  %1418 = load ptr, ptr %1417, align 8, !tbaa !65
  %1419 = icmp eq ptr %1418, null
  br i1 %1419, label %1425, label %1420

1420:                                             ; preds = %1415
  %1421 = getelementptr inbounds %struct.bNodeTree, ptr %1418, i64 0, i32 20
  %1422 = load i32, ptr %1421, align 4, !tbaa !311
  %1423 = icmp eq i32 %1422, 0
  br i1 %1423, label %1424, label %1425

1424:                                             ; preds = %1420
  store i32 256, ptr %1421, align 4, !tbaa !311
  br label %1425

1425:                                             ; preds = %1415, %1424, %1420
  %1426 = load ptr, ptr %1416, align 8, !tbaa !42
  %1427 = icmp eq ptr %1426, null
  br i1 %1427, label %1428, label %1415, !llvm.loop !312

1428:                                             ; preds = %1425, %1411
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #14
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %10, ptr noundef %2) #15
  %1429 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #15
  %1430 = icmp eq i8 %1429, 1
  br i1 %1430, label %1431, label %1460

1431:                                             ; preds = %1428, %1457
  %1432 = load ptr, ptr %11, align 8, !tbaa !42
  %1433 = icmp eq ptr %1432, null
  br i1 %1433, label %1457, label %1434

1434:                                             ; preds = %1431
  %1435 = getelementptr inbounds %struct.bNodeTree, ptr %1432, i64 0, i32 9
  %1436 = load i32, ptr %1435, align 8, !tbaa !84
  %1437 = icmp eq i32 %1436, 1
  br i1 %1437, label %1438, label %1457

1438:                                             ; preds = %1434
  %1439 = getelementptr inbounds %struct.bNodeTree, ptr %1432, i64 0, i32 7
  %1440 = load ptr, ptr %1439, align 8, !tbaa !42
  %1441 = icmp eq ptr %1440, null
  br i1 %1441, label %1457, label %1442

1442:                                             ; preds = %1438, %1454
  %1443 = phi ptr [ %1455, %1454 ], [ %1440, %1438 ]
  %1444 = getelementptr inbounds %struct.bNode, ptr %1443, i64 0, i32 8
  %1445 = load i16, ptr %1444, align 4, !tbaa !87
  %1446 = icmp eq i16 %1445, 244
  br i1 %1446, label %1447, label %1454

1447:                                             ; preds = %1442
  %1448 = getelementptr inbounds %struct.bNode, ptr %1443, i64 0, i32 21
  %1449 = load ptr, ptr %1448, align 8, !tbaa !89
  %1450 = getelementptr inbounds %struct.NodeDefocus, ptr %1449, i64 0, i32 7
  %1451 = load float, ptr %1450, align 4, !tbaa !313
  %1452 = fcmp oeq float %1451, 0.000000e+00
  br i1 %1452, label %1453, label %1454

1453:                                             ; preds = %1447
  store float 1.600000e+01, ptr %1450, align 4, !tbaa !313
  br label %1454

1454:                                             ; preds = %1447, %1453, %1442
  %1455 = load ptr, ptr %1443, align 8, !tbaa !42
  %1456 = icmp eq ptr %1455, null
  br i1 %1456, label %1457, label %1442, !llvm.loop !315

1457:                                             ; preds = %1454, %1438, %1434, %1431
  %1458 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #15
  %1459 = icmp eq i8 %1458, 1
  br i1 %1459, label %1431, label %1460, !llvm.loop !316

1460:                                             ; preds = %1457, %1428
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #14
  %1461 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %1462 = load ptr, ptr %1461, align 8, !tbaa !42
  %1463 = icmp eq ptr %1462, null
  br i1 %1463, label %1493, label %1467

1464:                                             ; preds = %1472, %1467
  %1465 = load ptr, ptr %1468, align 8, !tbaa !42
  %1466 = icmp eq ptr %1465, null
  br i1 %1466, label %1493, label %1467, !llvm.loop !317

1467:                                             ; preds = %1460, %1464
  %1468 = phi ptr [ %1465, %1464 ], [ %1462, %1460 ]
  %1469 = getelementptr inbounds %struct.bScreen, ptr %1468, i64 0, i32 3
  %1470 = load ptr, ptr %1469, align 8, !tbaa !42
  %1471 = icmp eq ptr %1470, null
  br i1 %1471, label %1464, label %1475

1472:                                             ; preds = %1490, %1475
  %1473 = load ptr, ptr %1476, align 8, !tbaa !42
  %1474 = icmp eq ptr %1473, null
  br i1 %1474, label %1464, label %1475, !llvm.loop !318

1475:                                             ; preds = %1467, %1472
  %1476 = phi ptr [ %1473, %1472 ], [ %1470, %1467 ]
  %1477 = getelementptr inbounds %struct.ScrArea, ptr %1476, i64 0, i32 19
  %1478 = load ptr, ptr %1477, align 8, !tbaa !42
  %1479 = icmp eq ptr %1478, null
  br i1 %1479, label %1472, label %1480

1480:                                             ; preds = %1475, %1490
  %1481 = phi ptr [ %1491, %1490 ], [ %1478, %1475 ]
  %1482 = getelementptr inbounds %struct.SpaceLink, ptr %1481, i64 0, i32 3
  %1483 = load i32, ptr %1482, align 8, !tbaa !105
  %1484 = icmp eq i32 %1483, 20
  br i1 %1484, label %1485, label %1490

1485:                                             ; preds = %1480
  %1486 = getelementptr inbounds %struct.SpaceClip, ptr %1481, i64 0, i32 25
  %1487 = load i32, ptr %1486, align 8, !tbaa !319
  %1488 = icmp eq i32 %1487, 0
  br i1 %1488, label %1489, label %1490

1489:                                             ; preds = %1485
  store i32 3, ptr %1486, align 8, !tbaa !319
  br label %1490

1490:                                             ; preds = %1485, %1489, %1480
  %1491 = load ptr, ptr %1481, align 8, !tbaa !42
  %1492 = icmp eq ptr %1491, null
  br i1 %1492, label %1472, label %1480, !llvm.loop !320

1493:                                             ; preds = %1464, %1460
  %1494 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 42
  %1495 = load ptr, ptr %1494, align 8, !tbaa !42
  %1496 = icmp eq ptr %1495, null
  br i1 %1496, label %1502, label %1497

1497:                                             ; preds = %1493, %1497
  %1498 = phi ptr [ %1500, %1497 ], [ %1495, %1493 ]
  %1499 = getelementptr inbounds %struct.MovieClip, ptr %1498, i64 0, i32 16
  store i32 1, ptr %1499, align 8, !tbaa !321
  %1500 = load ptr, ptr %1498, align 8, !tbaa !42
  %1501 = icmp eq ptr %1500, null
  br i1 %1501, label %1502, label %1497, !llvm.loop !322

1502:                                             ; preds = %1497, %1493, %1407
  %1503 = load i16, ptr %55, align 8, !tbaa !34
  %1504 = icmp slt i16 %1503, 263
  br i1 %1504, label %1511, label %1505

1505:                                             ; preds = %1502
  %1506 = icmp eq i16 %1503, 263
  br i1 %1506, label %1507, label %1890

1507:                                             ; preds = %1505
  %1508 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1509 = load i16, ptr %1508, align 2, !tbaa !74
  %1510 = icmp slt i16 %1509, 11
  br i1 %1510, label %1511, label %1534

1511:                                             ; preds = %1507, %1502
  %1512 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 42
  %1513 = load ptr, ptr %1512, align 8, !tbaa !42
  %1514 = icmp eq ptr %1513, null
  br i1 %1514, label %1529, label %1518

1515:                                             ; preds = %1523, %1518
  %1516 = load ptr, ptr %1519, align 8, !tbaa !42
  %1517 = icmp eq ptr %1516, null
  br i1 %1517, label %1527, label %1518, !llvm.loop !323

1518:                                             ; preds = %1511, %1515
  %1519 = phi ptr [ %1516, %1515 ], [ %1513, %1511 ]
  %1520 = getelementptr inbounds %struct.MovieClip, ptr %1519, i64 0, i32 11, i32 2
  %1521 = load ptr, ptr %1520, align 8, !tbaa !42
  %1522 = icmp eq ptr %1521, null
  br i1 %1522, label %1515, label %1523

1523:                                             ; preds = %1518, %1523
  %1524 = phi ptr [ %1525, %1523 ], [ %1521, %1518 ]
  call fastcc void @do_versions_affine_tracker_track(ptr noundef nonnull %1524) #13
  %1525 = load ptr, ptr %1524, align 8, !tbaa !42
  %1526 = icmp eq ptr %1525, null
  br i1 %1526, label %1515, label %1523, !llvm.loop !324

1527:                                             ; preds = %1515
  %1528 = load i16, ptr %55, align 8, !tbaa !34
  br label %1529

1529:                                             ; preds = %1527, %1511
  %1530 = phi i16 [ %1528, %1527 ], [ %1503, %1511 ]
  %1531 = icmp slt i16 %1530, 263
  br i1 %1531, label %1538, label %1532

1532:                                             ; preds = %1529
  %1533 = icmp eq i16 %1530, 263
  br i1 %1533, label %1534, label %1890

1534:                                             ; preds = %1507, %1532
  %1535 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1536 = load i16, ptr %1535, align 2, !tbaa !74
  %1537 = icmp slt i16 %1536, 12
  br i1 %1537, label %1538, label %1556

1538:                                             ; preds = %1534, %1529
  %1539 = phi i16 [ 263, %1534 ], [ %1530, %1529 ]
  %1540 = phi i1 [ false, %1534 ], [ true, %1529 ]
  %1541 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %1542 = load ptr, ptr %1541, align 8, !tbaa !42
  %1543 = icmp eq ptr %1542, null
  br i1 %1543, label %1553, label %1544

1544:                                             ; preds = %1538, %1550
  %1545 = phi ptr [ %1551, %1550 ], [ %1542, %1538 ]
  %1546 = getelementptr inbounds %struct.Material, ptr %1545, i64 0, i32 68
  %1547 = load float, ptr %1546, align 8, !tbaa !325
  %1548 = fcmp oeq float %1547, 2.000000e+00
  br i1 %1548, label %1549, label %1550

1549:                                             ; preds = %1544
  store float 0.000000e+00, ptr %1546, align 8, !tbaa !325
  br label %1550

1550:                                             ; preds = %1544, %1549
  %1551 = load ptr, ptr %1545, align 8, !tbaa !42
  %1552 = icmp eq ptr %1551, null
  br i1 %1552, label %1553, label %1544, !llvm.loop !326

1553:                                             ; preds = %1550, %1538
  br i1 %1540, label %1560, label %1554

1554:                                             ; preds = %1553
  %1555 = icmp eq i16 %1539, 263
  br i1 %1555, label %1556, label %1594

1556:                                             ; preds = %1534, %1554
  %1557 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1558 = load i16, ptr %1557, align 2, !tbaa !74
  %1559 = icmp slt i16 %1558, 13
  br i1 %1559, label %1560, label %1599

1560:                                             ; preds = %1556, %1553
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %13) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #14
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %13, ptr noundef %2) #15
  %1561 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15) #15
  %1562 = icmp eq i8 %1561, 1
  br i1 %1562, label %1563, label %1592

1563:                                             ; preds = %1560, %1589
  %1564 = load ptr, ptr %14, align 8, !tbaa !42
  %1565 = icmp eq ptr %1564, null
  br i1 %1565, label %1589, label %1566

1566:                                             ; preds = %1563
  %1567 = getelementptr inbounds %struct.bNodeTree, ptr %1564, i64 0, i32 9
  %1568 = load i32, ptr %1567, align 8, !tbaa !84
  %1569 = icmp eq i32 %1568, 1
  br i1 %1569, label %1570, label %1589

1570:                                             ; preds = %1566
  %1571 = getelementptr inbounds %struct.bNodeTree, ptr %1564, i64 0, i32 7
  %1572 = load ptr, ptr %1571, align 8, !tbaa !42
  %1573 = icmp eq ptr %1572, null
  br i1 %1573, label %1589, label %1574

1574:                                             ; preds = %1570, %1586
  %1575 = phi ptr [ %1587, %1586 ], [ %1572, %1570 ]
  %1576 = getelementptr inbounds %struct.bNode, ptr %1575, i64 0, i32 8
  %1577 = load i16, ptr %1576, align 4, !tbaa !87
  %1578 = icmp eq i16 %1577, 228
  br i1 %1578, label %1579, label %1586

1579:                                             ; preds = %1574
  %1580 = getelementptr inbounds %struct.bNode, ptr %1575, i64 0, i32 21
  %1581 = load ptr, ptr %1580, align 8, !tbaa !89
  %1582 = icmp eq ptr %1581, null
  br i1 %1582, label %1583, label %1586

1583:                                             ; preds = %1579
  %1584 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %1585 = call ptr %1584(i64 noundef 8, ptr noundef nonnull @__func__.blo_do_versions_260) #15
  store i8 0, ptr %1585, align 1, !tbaa !327
  store ptr %1585, ptr %1580, align 8, !tbaa !89
  br label %1586

1586:                                             ; preds = %1574, %1583, %1579
  %1587 = load ptr, ptr %1575, align 8, !tbaa !42
  %1588 = icmp eq ptr %1587, null
  br i1 %1588, label %1589, label %1574, !llvm.loop !329

1589:                                             ; preds = %1586, %1570, %1566, %1563
  %1590 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15) #15
  %1591 = icmp eq i8 %1590, 1
  br i1 %1591, label %1563, label %1592, !llvm.loop !330

1592:                                             ; preds = %1589, %1560
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %13) #14
  %1593 = load i16, ptr %55, align 8, !tbaa !34
  br label %1594

1594:                                             ; preds = %1592, %1554
  %1595 = phi i16 [ %1593, %1592 ], [ %1539, %1554 ]
  %1596 = icmp slt i16 %1595, 263
  br i1 %1596, label %1603, label %1597

1597:                                             ; preds = %1594
  %1598 = icmp eq i16 %1595, 263
  br i1 %1598, label %1599, label %1890

1599:                                             ; preds = %1556, %1597
  %1600 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1601 = load i16, ptr %1600, align 2, !tbaa !74
  %1602 = icmp slt i16 %1601, 14
  br i1 %1602, label %1603, label %1655

1603:                                             ; preds = %1599, %1594
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %16) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #14
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %16, ptr noundef nonnull %2) #15
  %1604 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %18) #15
  %1605 = icmp eq i8 %1604, 1
  br i1 %1605, label %1606, label %1635

1606:                                             ; preds = %1603, %1632
  %1607 = load ptr, ptr %17, align 8, !tbaa !42
  %1608 = icmp eq ptr %1607, null
  br i1 %1608, label %1632, label %1609

1609:                                             ; preds = %1606
  %1610 = getelementptr inbounds %struct.bNodeTree, ptr %1607, i64 0, i32 9
  %1611 = load i32, ptr %1610, align 8, !tbaa !84
  %1612 = icmp eq i32 %1611, 1
  br i1 %1612, label %1613, label %1632

1613:                                             ; preds = %1609
  %1614 = getelementptr inbounds %struct.bNodeTree, ptr %1607, i64 0, i32 7
  %1615 = load ptr, ptr %1614, align 8, !tbaa !42
  %1616 = icmp eq ptr %1615, null
  br i1 %1616, label %1632, label %1617

1617:                                             ; preds = %1613, %1629
  %1618 = phi ptr [ %1630, %1629 ], [ %1615, %1613 ]
  %1619 = getelementptr inbounds %struct.bNode, ptr %1618, i64 0, i32 8
  %1620 = load i16, ptr %1619, align 4, !tbaa !87
  %1621 = icmp eq i16 %1620, 270
  br i1 %1621, label %1622, label %1629

1622:                                             ; preds = %1617
  %1623 = getelementptr inbounds %struct.bNode, ptr %1618, i64 0, i32 21
  %1624 = load ptr, ptr %1623, align 8, !tbaa !89
  %1625 = getelementptr inbounds %struct.NodeKeyingData, ptr %1624, i64 0, i32 2
  %1626 = load float, ptr %1625, align 4, !tbaa !331
  %1627 = fcmp oeq float %1626, 0.000000e+00
  br i1 %1627, label %1628, label %1629

1628:                                             ; preds = %1622
  store float 5.000000e-01, ptr %1625, align 4, !tbaa !331
  br label %1629

1629:                                             ; preds = %1622, %1628, %1617
  %1630 = load ptr, ptr %1618, align 8, !tbaa !42
  %1631 = icmp eq ptr %1630, null
  br i1 %1631, label %1632, label %1617, !llvm.loop !333

1632:                                             ; preds = %1629, %1613, %1609, %1606
  %1633 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %18) #15
  %1634 = icmp eq i8 %1633, 1
  br i1 %1634, label %1606, label %1635, !llvm.loop !334

1635:                                             ; preds = %1632, %1603
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %16) #14
  %1636 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 37
  %1637 = load ptr, ptr %1636, align 8, !tbaa !42
  %1638 = icmp eq ptr %1637, null
  br i1 %1638, label %1655, label %1639

1639:                                             ; preds = %1635, %1652
  %1640 = phi ptr [ %1653, %1652 ], [ %1637, %1635 ]
  %1641 = getelementptr inbounds %struct.ParticleSettings, ptr %1640, i64 0, i32 21
  %1642 = load i16, ptr %1641, align 8, !tbaa !69
  %1643 = add i16 %1642, -7
  %1644 = icmp ult i16 %1643, 2
  br i1 %1644, label %1645, label %1652

1645:                                             ; preds = %1639
  %1646 = getelementptr inbounds %struct.ParticleSettings, ptr %1640, i64 0, i32 15
  %1647 = load i32, ptr %1646, align 8, !tbaa !71
  %1648 = and i32 %1647, 128
  %1649 = icmp eq i32 %1648, 0
  br i1 %1649, label %1650, label %1652

1650:                                             ; preds = %1645
  %1651 = or i32 %1647, 65536
  store i32 %1651, ptr %1646, align 8, !tbaa !71
  br label %1652

1652:                                             ; preds = %1639, %1650, %1645
  %1653 = load ptr, ptr %1640, align 8, !tbaa !42
  %1654 = icmp eq ptr %1653, null
  br i1 %1654, label %1655, label %1639, !llvm.loop !335

1655:                                             ; preds = %1652, %1635, %1599
  %1656 = load i16, ptr %55, align 8, !tbaa !34
  %1657 = icmp slt i16 %1656, 263
  br i1 %1657, label %1664, label %1658

1658:                                             ; preds = %1655
  %1659 = icmp eq i16 %1656, 263
  br i1 %1659, label %1660, label %1890

1660:                                             ; preds = %1658
  %1661 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1662 = load i16, ptr %1661, align 2, !tbaa !74
  %1663 = icmp slt i16 %1662, 17
  br i1 %1663, label %1664, label %1704

1664:                                             ; preds = %1660, %1655
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %19) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #14
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %19, ptr noundef nonnull %2) #15
  %1665 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %21) #15
  %1666 = icmp eq i8 %1665, 1
  br i1 %1666, label %1667, label %1699

1667:                                             ; preds = %1664, %1696
  %1668 = load ptr, ptr %20, align 8, !tbaa !42
  %1669 = icmp eq ptr %1668, null
  br i1 %1669, label %1696, label %1670

1670:                                             ; preds = %1667
  %1671 = getelementptr inbounds %struct.bNodeTree, ptr %1668, i64 0, i32 9
  %1672 = load i32, ptr %1671, align 8, !tbaa !84
  %1673 = icmp eq i32 %1672, 1
  br i1 %1673, label %1674, label %1696

1674:                                             ; preds = %1670
  %1675 = getelementptr inbounds %struct.bNodeTree, ptr %1668, i64 0, i32 7
  %1676 = load ptr, ptr %1675, align 8, !tbaa !42
  %1677 = icmp eq ptr %1676, null
  br i1 %1677, label %1696, label %1678

1678:                                             ; preds = %1674, %1693
  %1679 = phi ptr [ %1694, %1693 ], [ %1676, %1674 ]
  %1680 = getelementptr inbounds %struct.bNode, ptr %1679, i64 0, i32 8
  %1681 = load i16, ptr %1680, align 4, !tbaa !87
  %1682 = icmp eq i16 %1681, 268
  br i1 %1682, label %1683, label %1693

1683:                                             ; preds = %1678
  %1684 = getelementptr inbounds %struct.bNode, ptr %1679, i64 0, i32 21
  %1685 = load ptr, ptr %1684, align 8, !tbaa !89
  %1686 = icmp eq ptr %1685, null
  br i1 %1686, label %1687, label %1693

1687:                                             ; preds = %1683
  %1688 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %1689 = call ptr %1688(i64 noundef 8, ptr noundef nonnull @__func__.blo_do_versions_260) #15
  %1690 = getelementptr inbounds %struct.bNode, ptr %1679, i64 0, i32 35
  %1691 = load <2 x float>, ptr %1690, align 4, !tbaa !128
  %1692 = fptosi <2 x float> %1691 to <2 x i32>
  store <2 x i32> %1692, ptr %1689, align 4, !tbaa !294
  store float 5.000000e-01, ptr %1690, align 4, !tbaa !336
  store ptr %1689, ptr %1684, align 8, !tbaa !89
  br label %1693

1693:                                             ; preds = %1678, %1687, %1683
  %1694 = load ptr, ptr %1679, align 8, !tbaa !42
  %1695 = icmp eq ptr %1694, null
  br i1 %1695, label %1696, label %1678, !llvm.loop !337

1696:                                             ; preds = %1693, %1674, %1670, %1667
  %1697 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %21) #15
  %1698 = icmp eq i8 %1697, 1
  br i1 %1698, label %1667, label %1699, !llvm.loop !338

1699:                                             ; preds = %1696, %1664
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %19) #14
  %1700 = load i16, ptr %55, align 8, !tbaa !34
  %1701 = icmp slt i16 %1700, 263
  br i1 %1701, label %1708, label %1702

1702:                                             ; preds = %1699
  %1703 = icmp eq i16 %1700, 263
  br i1 %1703, label %1704, label %1890

1704:                                             ; preds = %1660, %1702
  %1705 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1706 = load i16, ptr %1705, align 2, !tbaa !74
  %1707 = icmp slt i16 %1706, 18
  br i1 %1707, label %1708, label %1756

1708:                                             ; preds = %1704, %1699
  %1709 = phi i16 [ 263, %1704 ], [ %1700, %1699 ]
  %1710 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1711 = load ptr, ptr %1710, align 8, !tbaa !42
  %1712 = icmp eq ptr %1711, null
  br i1 %1712, label %1751, label %1713

1713:                                             ; preds = %1708
  %1714 = getelementptr inbounds %struct.SeqIterator, ptr %22, i64 0, i32 4
  %1715 = getelementptr inbounds %struct.SeqIterator, ptr %22, i64 0, i32 3
  br label %1716

1716:                                             ; preds = %1713, %1746
  %1717 = phi ptr [ %1711, %1713 ], [ %1747, %1746 ]
  %1718 = getelementptr inbounds %struct.Scene, ptr %1717, i64 0, i32 19
  %1719 = load ptr, ptr %1718, align 8, !tbaa !339
  %1720 = icmp eq ptr %1719, null
  br i1 %1720, label %1746, label %1721

1721:                                             ; preds = %1716
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %22) #14
  call void @BKE_sequence_iterator_begin(ptr noundef nonnull %1719, ptr noundef nonnull %22, i8 noundef zeroext 0) #15
  %1722 = load i32, ptr %1714, align 8, !tbaa !340
  %1723 = icmp eq i32 %1722, 0
  br i1 %1723, label %1745, label %1724

1724:                                             ; preds = %1721, %1742
  %1725 = load ptr, ptr %1715, align 8, !tbaa !342
  %1726 = getelementptr inbounds %struct.Sequence, ptr %1725, i64 0, i32 24
  %1727 = load ptr, ptr %1726, align 8, !tbaa !343
  %1728 = icmp eq ptr %1727, null
  br i1 %1728, label %1742, label %1729

1729:                                             ; preds = %1724
  %1730 = getelementptr inbounds %struct.Strip, ptr %1727, i64 0, i32 11
  %1731 = load ptr, ptr %1730, align 8, !tbaa !345
  %1732 = icmp eq ptr %1731, null
  br i1 %1732, label %1742, label %1733

1733:                                             ; preds = %1729
  %1734 = call ptr @BKE_sequence_modifier_new(ptr noundef nonnull %1725, ptr noundef null, i32 noundef 1) #15
  %1735 = getelementptr inbounds %struct.ColorBalanceModifierData, ptr %1734, i64 0, i32 1
  %1736 = load ptr, ptr %1730, align 8, !tbaa !345
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %1735, ptr noundef nonnull align 4 dereferenceable(44) %1736, i64 44, i1 false), !tbaa.struct !347
  %1737 = getelementptr inbounds %struct.Sequence, ptr %1725, i64 0, i32 18
  %1738 = load float, ptr %1737, align 4, !tbaa !348
  %1739 = getelementptr inbounds %struct.ColorBalanceModifierData, ptr %1734, i64 0, i32 2
  store float %1738, ptr %1739, align 4, !tbaa !349
  store float 1.000000e+00, ptr %1737, align 4, !tbaa !348
  %1740 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  %1741 = load ptr, ptr %1730, align 8, !tbaa !345
  call void %1740(ptr noundef %1741) #15
  store ptr null, ptr %1730, align 8, !tbaa !345
  br label %1742

1742:                                             ; preds = %1733, %1729, %1724
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %22) #15
  %1743 = load i32, ptr %1714, align 8, !tbaa !340
  %1744 = icmp eq i32 %1743, 0
  br i1 %1744, label %1745, label %1724, !llvm.loop !353

1745:                                             ; preds = %1742, %1721
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %22) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %22) #14
  br label %1746

1746:                                             ; preds = %1716, %1745
  %1747 = load ptr, ptr %1717, align 8, !tbaa !42
  %1748 = icmp eq ptr %1747, null
  br i1 %1748, label %1749, label %1716, !llvm.loop !354

1749:                                             ; preds = %1746
  %1750 = load i16, ptr %55, align 8, !tbaa !34
  br label %1751

1751:                                             ; preds = %1749, %1708
  %1752 = phi i16 [ %1750, %1749 ], [ %1709, %1708 ]
  %1753 = icmp slt i16 %1752, 263
  br i1 %1753, label %1760, label %1754

1754:                                             ; preds = %1751
  %1755 = icmp eq i16 %1752, 263
  br i1 %1755, label %1756, label %1890

1756:                                             ; preds = %1704, %1754
  %1757 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1758 = load i16, ptr %1757, align 2, !tbaa !74
  %1759 = icmp slt i16 %1758, 19
  br i1 %1759, label %1760, label %1803

1760:                                             ; preds = %1756, %1751
  %1761 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1762 = load ptr, ptr %1761, align 8, !tbaa !42
  %1763 = icmp eq ptr %1762, null
  br i1 %1763, label %1780, label %1764

1764:                                             ; preds = %1760, %1776
  %1765 = phi ptr [ %1778, %1776 ], [ %1762, %1760 ]
  %1766 = phi i8 [ %1777, %1776 ], [ 0, %1760 ]
  %1767 = getelementptr inbounds %struct.Scene, ptr %1765, i64 0, i32 22, i32 67
  %1768 = load i32, ptr %1767, align 4, !tbaa !355
  %1769 = and i32 %1768, 1
  %1770 = icmp eq i32 %1769, 0
  br i1 %1770, label %1771, label %1776

1771:                                             ; preds = %1764
  %1772 = getelementptr inbounds %struct.Scene, ptr %1765, i64 0, i32 45
  %1773 = load i8, ptr %1772, align 1, !tbaa !241
  %1774 = icmp eq i8 %1773, 0
  br i1 %1774, label %1775, label %1776

1775:                                             ; preds = %1771
  call void @BKE_scene_disable_color_management(ptr noundef nonnull %1765) #15
  br label %1776

1776:                                             ; preds = %1771, %1775, %1764
  %1777 = phi i8 [ %1766, %1764 ], [ 1, %1775 ], [ 1, %1771 ]
  %1778 = load ptr, ptr %1765, align 8, !tbaa !42
  %1779 = icmp eq ptr %1778, null
  br i1 %1779, label %1780, label %1764, !llvm.loop !356

1780:                                             ; preds = %1776, %1760
  %1781 = phi i8 [ 0, %1760 ], [ %1777, %1776 ]
  %1782 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 19
  %1783 = load ptr, ptr %1782, align 8, !tbaa !42
  %1784 = icmp eq ptr %1783, null
  br i1 %1784, label %1803, label %1785

1785:                                             ; preds = %1780
  %1786 = icmp eq i8 %1781, 0
  br label %1787

1787:                                             ; preds = %1785, %1800
  %1788 = phi ptr [ %1783, %1785 ], [ %1801, %1800 ]
  %1789 = getelementptr inbounds %struct.Image, ptr %1788, i64 0, i32 11
  %1790 = load i16, ptr %1789, align 8, !tbaa !357
  %1791 = icmp eq i16 %1790, 5
  br i1 %1791, label %1792, label %1796

1792:                                             ; preds = %1787
  %1793 = getelementptr inbounds %struct.Image, ptr %1788, i64 0, i32 10
  %1794 = load i16, ptr %1793, align 2, !tbaa !359
  %1795 = or i16 %1794, 2048
  store i16 %1795, ptr %1793, align 2, !tbaa !359
  br label %1800

1796:                                             ; preds = %1787
  br i1 %1786, label %1800, label %1797

1797:                                             ; preds = %1796
  %1798 = getelementptr inbounds %struct.Image, ptr %1788, i64 0, i32 36
  %1799 = call ptr @BLI_strncpy(ptr noundef nonnull %1798, ptr noundef nonnull @.str.3, i64 noundef 64) #15
  br label %1800

1800:                                             ; preds = %1792, %1797, %1796
  %1801 = load ptr, ptr %1788, align 8, !tbaa !42
  %1802 = icmp eq ptr %1801, null
  br i1 %1802, label %1803, label %1787, !llvm.loop !360

1803:                                             ; preds = %1800, %1780, %1756
  %1804 = load i16, ptr %55, align 8, !tbaa !34
  %1805 = icmp slt i16 %1804, 263
  br i1 %1805, label %1812, label %1806

1806:                                             ; preds = %1803
  %1807 = icmp eq i16 %1804, 263
  br i1 %1807, label %1808, label %1890

1808:                                             ; preds = %1806
  %1809 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1810 = load i16, ptr %1809, align 2, !tbaa !74
  %1811 = icmp slt i16 %1810, 20
  br i1 %1811, label %1812, label %1827

1812:                                             ; preds = %1808, %1803
  %1813 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 24
  %1814 = load ptr, ptr %1813, align 8, !tbaa !42
  %1815 = icmp eq ptr %1814, null
  br i1 %1815, label %1822, label %1816

1816:                                             ; preds = %1812, %1816
  %1817 = phi ptr [ %1818, %1816 ], [ %1814, %1812 ]
  call void @blo_do_versions_key_uidgen(ptr noundef nonnull %1817) #15
  %1818 = load ptr, ptr %1817, align 8, !tbaa !42
  %1819 = icmp eq ptr %1818, null
  br i1 %1819, label %1820, label %1816, !llvm.loop !361

1820:                                             ; preds = %1816
  %1821 = load i16, ptr %55, align 8, !tbaa !34
  br label %1822

1822:                                             ; preds = %1820, %1812
  %1823 = phi i16 [ %1821, %1820 ], [ %1804, %1812 ]
  %1824 = icmp slt i16 %1823, 263
  br i1 %1824, label %1831, label %1825

1825:                                             ; preds = %1822
  %1826 = icmp eq i16 %1823, 263
  br i1 %1826, label %1827, label %1890

1827:                                             ; preds = %1808, %1825
  %1828 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1829 = load i16, ptr %1828, align 2, !tbaa !74
  %1830 = icmp slt i16 %1829, 21
  br i1 %1830, label %1831, label %1869

1831:                                             ; preds = %1827, %1822
  %1832 = phi i16 [ 263, %1827 ], [ %1823, %1822 ]
  %1833 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %1834 = load ptr, ptr %1833, align 8, !tbaa !42
  %1835 = icmp eq ptr %1834, null
  br i1 %1835, label %1853, label %1839

1836:                                             ; preds = %1850
  %1837 = load ptr, ptr %1840, align 8, !tbaa !42
  %1838 = icmp eq ptr %1837, null
  br i1 %1838, label %1853, label %1839, !llvm.loop !362

1839:                                             ; preds = %1831, %1836
  %1840 = phi ptr [ %1837, %1836 ], [ %1834, %1831 ]
  br label %1841

1841:                                             ; preds = %1839, %1850
  %1842 = phi i64 [ 0, %1839 ], [ %1851, %1850 ]
  %1843 = getelementptr inbounds %struct.Material, ptr %1840, i64 0, i32 102, i64 %1842
  %1844 = load ptr, ptr %1843, align 8, !tbaa !42
  %1845 = icmp eq ptr %1844, null
  br i1 %1845, label %1850, label %1846

1846:                                             ; preds = %1841
  %1847 = load i16, ptr %1844, align 8, !tbaa !363
  %1848 = icmp eq i16 %1847, 256
  br i1 %1848, label %1849, label %1850

1849:                                             ; preds = %1846
  store i16 16, ptr %1844, align 8, !tbaa !363
  br label %1850

1850:                                             ; preds = %1841, %1849, %1846
  %1851 = add nuw nsw i64 %1842, 1
  %1852 = icmp eq i64 %1851, 18
  br i1 %1852, label %1836, label %1841, !llvm.loop !364

1853:                                             ; preds = %1836, %1831
  %1854 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %1855 = load ptr, ptr %1854, align 8, !tbaa !42
  %1856 = icmp eq ptr %1855, null
  br i1 %1856, label %1866, label %1857

1857:                                             ; preds = %1853, %1857
  %1858 = phi ptr [ %1862, %1857 ], [ %1855, %1853 ]
  %1859 = getelementptr inbounds %struct.Mesh, ptr %1858, i64 0, i32 21
  call void @CustomData_update_typemap(ptr noundef nonnull %1859) #15
  %1860 = getelementptr inbounds %struct.Mesh, ptr %1858, i64 0, i32 26
  %1861 = load i32, ptr %1860, align 8, !tbaa !365
  call void @CustomData_free_layers(ptr noundef nonnull %1859, i32 noundef 1, i32 noundef %1861) #15
  %1862 = load ptr, ptr %1858, align 8, !tbaa !42
  %1863 = icmp eq ptr %1862, null
  br i1 %1863, label %1864, label %1857, !llvm.loop !368

1864:                                             ; preds = %1857
  %1865 = load i16, ptr %55, align 8, !tbaa !34
  br label %1866

1866:                                             ; preds = %1853, %1864
  %1867 = phi i16 [ %1865, %1864 ], [ %1832, %1853 ]
  %1868 = icmp slt i16 %1867, 264
  br i1 %1868, label %1869, label %1890

1869:                                             ; preds = %1827, %1866
  %1870 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %1871 = load ptr, ptr %1870, align 8, !tbaa !42
  %1872 = icmp eq ptr %1871, null
  br i1 %1872, label %1897, label %1873

1873:                                             ; preds = %1869, %1884
  %1874 = phi ptr [ %1885, %1884 ], [ %1871, %1869 ]
  %1875 = getelementptr inbounds %struct.Object, ptr %1874, i64 0, i32 18
  %1876 = load ptr, ptr %1875, align 8, !tbaa !369
  %1877 = icmp eq ptr %1876, null
  br i1 %1877, label %1884, label %1878

1878:                                             ; preds = %1873
  %1879 = getelementptr inbounds %struct.bPose, ptr %1876, i64 0, i32 14, i32 9
  %1880 = load i16, ptr %1879, align 2, !tbaa !370
  %1881 = icmp eq i16 %1880, 0
  br i1 %1881, label %1882, label %1884

1882:                                             ; preds = %1878
  %1883 = getelementptr inbounds %struct.bPose, ptr %1876, i64 0, i32 14
  call void @animviz_settings_init(ptr noundef nonnull %1883) #15
  br label %1884

1884:                                             ; preds = %1873, %1882, %1878
  %1885 = load ptr, ptr %1874, align 8, !tbaa !42
  %1886 = icmp eq ptr %1885, null
  br i1 %1886, label %1887, label %1873, !llvm.loop !372

1887:                                             ; preds = %1884
  %1888 = load i16, ptr %55, align 8, !tbaa !34
  %1889 = icmp slt i16 %1888, 264
  br i1 %1889, label %1897, label %1890

1890:                                             ; preds = %1658, %1702, %1532, %1505, %1290, %1208, %1404, %1806, %1825, %1597, %1023, %1754, %1866, %1887
  %1891 = phi i16 [ %1888, %1887 ], [ %1867, %1866 ], [ %1823, %1825 ], [ %1595, %1597 ], [ %1021, %1023 ], [ %1752, %1754 ], [ %1804, %1806 ], [ %1206, %1208 ], [ %1405, %1404 ], [ %1288, %1290 ], [ %1503, %1505 ], [ %1530, %1532 ], [ %1656, %1658 ], [ %1700, %1702 ]
  %1892 = icmp eq i16 %1891, 264
  br i1 %1892, label %1893, label %1929

1893:                                             ; preds = %1890
  %1894 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1895 = load i16, ptr %1894, align 2, !tbaa !74
  %1896 = icmp slt i16 %1895, 1
  br i1 %1896, label %1897, label %1929

1897:                                             ; preds = %1869, %1893, %1887
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %23) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #14
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %23, ptr noundef nonnull %2) #15
  %1898 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %23, ptr noundef nonnull %24, ptr noundef nonnull %25) #15
  %1899 = icmp eq i8 %1898, 1
  br i1 %1899, label %1900, label %1926

1900:                                             ; preds = %1897, %1923
  %1901 = load ptr, ptr %24, align 8, !tbaa !42
  %1902 = icmp eq ptr %1901, null
  br i1 %1902, label %1923, label %1903

1903:                                             ; preds = %1900
  %1904 = getelementptr inbounds %struct.bNodeTree, ptr %1901, i64 0, i32 9
  %1905 = load i32, ptr %1904, align 8, !tbaa !84
  %1906 = icmp eq i32 %1905, 0
  br i1 %1906, label %1907, label %1923

1907:                                             ; preds = %1903
  %1908 = getelementptr inbounds %struct.bNodeTree, ptr %1901, i64 0, i32 7
  %1909 = load ptr, ptr %1908, align 8, !tbaa !42
  %1910 = icmp eq ptr %1909, null
  br i1 %1910, label %1923, label %1911

1911:                                             ; preds = %1907, %1920
  %1912 = phi ptr [ %1921, %1920 ], [ %1909, %1907 ]
  %1913 = getelementptr inbounds %struct.bNode, ptr %1912, i64 0, i32 8
  %1914 = load i16, ptr %1913, align 4, !tbaa !87
  %1915 = icmp eq i16 %1914, 155
  br i1 %1915, label %1916, label %1920

1916:                                             ; preds = %1911
  %1917 = getelementptr inbounds %struct.bNode, ptr %1912, i64 0, i32 7
  %1918 = load i32, ptr %1917, align 8, !tbaa !373
  %1919 = or i32 %1918, 2
  store i32 %1919, ptr %1917, align 8, !tbaa !373
  br label %1920

1920:                                             ; preds = %1911, %1916
  %1921 = load ptr, ptr %1912, align 8, !tbaa !42
  %1922 = icmp eq ptr %1921, null
  br i1 %1922, label %1923, label %1911, !llvm.loop !374

1923:                                             ; preds = %1920, %1907, %1903, %1900
  %1924 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %23, ptr noundef nonnull %24, ptr noundef nonnull %25) #15
  %1925 = icmp eq i8 %1924, 1
  br i1 %1925, label %1900, label %1926, !llvm.loop !375

1926:                                             ; preds = %1923, %1897
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %23) #14
  %1927 = load i16, ptr %55, align 8, !tbaa !34
  %1928 = icmp slt i16 %1927, 264
  br i1 %1928, label %1936, label %1929

1929:                                             ; preds = %1890, %1893, %1926
  %1930 = phi i16 [ %1927, %1926 ], [ %1891, %1893 ], [ %1891, %1890 ]
  %1931 = icmp eq i16 %1930, 264
  br i1 %1931, label %1932, label %2328

1932:                                             ; preds = %1929
  %1933 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1934 = load i16, ptr %1933, align 2, !tbaa !74
  %1935 = icmp slt i16 %1934, 2
  br i1 %1935, label %1936, label %1972

1936:                                             ; preds = %1932, %1926
  %1937 = phi i1 [ false, %1932 ], [ true, %1926 ]
  %1938 = phi i16 [ 264, %1932 ], [ %1927, %1926 ]
  %1939 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 42
  %1940 = load ptr, ptr %1939, align 8, !tbaa !42
  %1941 = icmp eq ptr %1940, null
  br i1 %1941, label %1966, label %1945

1942:                                             ; preds = %1963, %1945
  %1943 = load ptr, ptr %1946, align 8, !tbaa !42
  %1944 = icmp eq ptr %1943, null
  br i1 %1944, label %1966, label %1945, !llvm.loop !376

1945:                                             ; preds = %1936, %1942
  %1946 = phi ptr [ %1943, %1942 ], [ %1940, %1936 ]
  %1947 = getelementptr inbounds %struct.MovieClip, ptr %1946, i64 0, i32 11, i32 8
  %1948 = load ptr, ptr %1947, align 8, !tbaa !42
  %1949 = icmp eq ptr %1948, null
  br i1 %1949, label %1942, label %1950

1950:                                             ; preds = %1945
  %1951 = getelementptr inbounds %struct.MovieClip, ptr %1946, i64 0, i32 11, i32 0, i32 13
  br label %1952

1952:                                             ; preds = %1950, %1963
  %1953 = phi ptr [ %1948, %1950 ], [ %1964, %1963 ]
  %1954 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1953, i64 0, i32 8
  %1955 = load i32, ptr %1954, align 8, !tbaa !377
  %1956 = icmp eq i32 %1955, 0
  br i1 %1956, label %1957, label %1963

1957:                                             ; preds = %1952
  %1958 = getelementptr inbounds %struct.MovieTrackingObject, ptr %1953, i64 0, i32 9
  %1959 = load i32, ptr %1958, align 4, !tbaa !378
  %1960 = icmp eq i32 %1959, 0
  br i1 %1960, label %1961, label %1963

1961:                                             ; preds = %1957
  %1962 = load <2 x i32>, ptr %1951, align 8, !tbaa !294
  store <2 x i32> %1962, ptr %1954, align 8, !tbaa !294
  br label %1963

1963:                                             ; preds = %1952, %1957, %1961
  %1964 = load ptr, ptr %1953, align 8, !tbaa !42
  %1965 = icmp eq ptr %1964, null
  br i1 %1965, label %1942, label %1952, !llvm.loop !379

1966:                                             ; preds = %1942, %1936
  br i1 %1937, label %1975, label %1967

1967:                                             ; preds = %1966
  %1968 = icmp eq i16 %1938, 264
  br i1 %1968, label %1969, label %2153

1969:                                             ; preds = %1967
  %1970 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1971 = load i16, ptr %1970, align 2, !tbaa !74
  br label %1972

1972:                                             ; preds = %1969, %1932
  %1973 = phi i16 [ %1971, %1969 ], [ %1934, %1932 ]
  %1974 = icmp slt i16 %1973, 3
  br i1 %1974, label %1975, label %2079

1975:                                             ; preds = %1972, %1966
  %1976 = phi i1 [ false, %1972 ], [ true, %1966 ]
  %1977 = phi i16 [ 264, %1972 ], [ %1938, %1966 ]
  %1978 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %1979 = load ptr, ptr %1978, align 8, !tbaa !42
  %1980 = icmp eq ptr %1979, null
  br i1 %1980, label %2028, label %1984

1981:                                             ; preds = %2025, %1984
  %1982 = load ptr, ptr %1985, align 8, !tbaa !42
  %1983 = icmp eq ptr %1982, null
  br i1 %1983, label %2028, label %1984, !llvm.loop !380

1984:                                             ; preds = %1975, %1981
  %1985 = phi ptr [ %1982, %1981 ], [ %1979, %1975 ]
  %1986 = getelementptr inbounds %struct.Object, ptr %1985, i64 0, i32 26
  %1987 = load ptr, ptr %1986, align 8, !tbaa !42
  %1988 = icmp eq ptr %1987, null
  br i1 %1988, label %1981, label %1989

1989:                                             ; preds = %1984, %2025
  %1990 = phi ptr [ %2026, %2025 ], [ %1987, %1984 ]
  %1991 = getelementptr inbounds %struct.ModifierData, ptr %1990, i64 0, i32 2
  %1992 = load i32, ptr %1991, align 8, !tbaa !216
  %1993 = icmp eq i32 %1992, 31
  br i1 %1993, label %1994, label %2025

1994:                                             ; preds = %1989
  %1995 = getelementptr inbounds %struct.SmokeModifierData, ptr %1990, i64 0, i32 5
  %1996 = load i32, ptr %1995, align 4, !tbaa !291
  %1997 = and i32 %1996, 1
  %1998 = icmp eq i32 %1997, 0
  br i1 %1998, label %2011, label %1999

1999:                                             ; preds = %1994
  %2000 = getelementptr inbounds %struct.SmokeModifierData, ptr %1990, i64 0, i32 1
  %2001 = load ptr, ptr %2000, align 8, !tbaa !293
  %2002 = icmp eq ptr %2001, null
  br i1 %2002, label %2011, label %2003

2003:                                             ; preds = %1999
  %2004 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %2001, i64 0, i32 60
  %2005 = load float, ptr %2004, align 8, !tbaa !381
  %2006 = fcmp une float %2005, 0.000000e+00
  br i1 %2006, label %2025, label %2007

2007:                                             ; preds = %2003
  %2008 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %2001, i64 0, i32 56
  store <4 x float> <float 7.500000e-01, float 1.000000e+00, float 5.000000e-01, float 1.250000e+00>, ptr %2008, align 8, !tbaa !128
  %2009 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %2001, i64 0, i32 32
  store float 0x3F947AE140000000, ptr %2009, align 8, !tbaa !382
  %2010 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %2001, i64 0, i32 30
  store i32 4, ptr %2010, align 8, !tbaa !383
  store <4 x float> <float 1.750000e+00, float 0x3FE6666660000000, float 0x3FE6666660000000, float 0x3FE6666660000000>, ptr %2004, align 8, !tbaa !128
  br label %2025

2011:                                             ; preds = %1999, %1994
  %2012 = and i32 %1996, 2
  %2013 = icmp eq i32 %2012, 0
  br i1 %2013, label %2025, label %2014

2014:                                             ; preds = %2011
  %2015 = getelementptr inbounds %struct.SmokeModifierData, ptr %1990, i64 0, i32 2
  %2016 = load ptr, ptr %2015, align 8, !tbaa !384
  %2017 = icmp eq ptr %2016, null
  br i1 %2017, label %2025, label %2018

2018:                                             ; preds = %2014
  %2019 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %2016, i64 0, i32 17
  %2020 = load float, ptr %2019, align 8, !tbaa !385
  %2021 = fcmp une float %2020, 0.000000e+00
  br i1 %2021, label %2025, label %2022

2022:                                             ; preds = %2018
  %2023 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %2016, i64 0, i32 14
  store float 1.500000e+00, ptr %2023, align 4, !tbaa !387
  %2024 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %2016, i64 0, i32 10
  store <4 x float> <float 0x3FE6666660000000, float 0x3FE6666660000000, float 0x3FE6666660000000, float 1.000000e+00>, ptr %2024, align 4, !tbaa !128
  store float 1.000000e+00, ptr %2019, align 8, !tbaa !385
  br label %2025

2025:                                             ; preds = %2007, %2003, %2018, %2022, %2014, %2011, %1989
  %2026 = load ptr, ptr %1990, align 8, !tbaa !42
  %2027 = icmp eq ptr %2026, null
  br i1 %2027, label %1981, label %1989, !llvm.loop !388

2028:                                             ; preds = %1981, %1975
  %2029 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %2030 = load ptr, ptr %2029, align 8, !tbaa !42
  %2031 = icmp eq ptr %2030, null
  br i1 %2031, label %2073, label %2035

2032:                                             ; preds = %2040, %2035
  %2033 = load ptr, ptr %2036, align 8, !tbaa !42
  %2034 = icmp eq ptr %2033, null
  br i1 %2034, label %2073, label %2035, !llvm.loop !389

2035:                                             ; preds = %2028, %2032
  %2036 = phi ptr [ %2033, %2032 ], [ %2030, %2028 ]
  %2037 = getelementptr inbounds %struct.bScreen, ptr %2036, i64 0, i32 3
  %2038 = load ptr, ptr %2037, align 8, !tbaa !42
  %2039 = icmp eq ptr %2038, null
  br i1 %2039, label %2032, label %2043

2040:                                             ; preds = %2070, %2043
  %2041 = load ptr, ptr %2044, align 8, !tbaa !42
  %2042 = icmp eq ptr %2041, null
  br i1 %2042, label %2032, label %2043, !llvm.loop !390

2043:                                             ; preds = %2035, %2040
  %2044 = phi ptr [ %2041, %2040 ], [ %2038, %2035 ]
  %2045 = getelementptr inbounds %struct.ScrArea, ptr %2044, i64 0, i32 19
  %2046 = load ptr, ptr %2045, align 8, !tbaa !42
  %2047 = icmp eq ptr %2046, null
  br i1 %2047, label %2040, label %2048

2048:                                             ; preds = %2043, %2070
  %2049 = phi ptr [ %2071, %2070 ], [ %2046, %2043 ]
  %2050 = getelementptr inbounds %struct.SpaceLink, ptr %2049, i64 0, i32 3
  %2051 = load i32, ptr %2050, align 8, !tbaa !105
  %2052 = icmp eq i32 %2051, 1
  br i1 %2052, label %2053, label %2070

2053:                                             ; preds = %2048
  %2054 = getelementptr inbounds %struct.View3D, ptr %2049, i64 0, i32 17
  %2055 = load float, ptr %2054, align 8, !tbaa !391
  %2056 = fcmp oeq float %2055, 0.000000e+00
  br i1 %2056, label %2057, label %2070

2057:                                             ; preds = %2053
  %2058 = getelementptr inbounds %struct.View3D, ptr %2049, i64 0, i32 17, i32 2
  %2059 = load float, ptr %2058, align 8, !tbaa !392
  %2060 = fcmp oeq float %2059, 0.000000e+00
  br i1 %2060, label %2061, label %2070

2061:                                             ; preds = %2057
  %2062 = getelementptr inbounds %struct.View3D, ptr %2049, i64 0, i32 17, i32 1
  %2063 = load float, ptr %2062, align 4, !tbaa !393
  %2064 = fcmp oeq float %2063, 0.000000e+00
  br i1 %2064, label %2065, label %2070

2065:                                             ; preds = %2061
  %2066 = getelementptr inbounds %struct.View3D, ptr %2049, i64 0, i32 17, i32 3
  %2067 = load float, ptr %2066, align 4, !tbaa !394
  %2068 = fcmp oeq float %2067, 0.000000e+00
  br i1 %2068, label %2069, label %2070

2069:                                             ; preds = %2065
  store float 1.000000e+00, ptr %2062, align 4, !tbaa !393
  store float 1.000000e+00, ptr %2066, align 4, !tbaa !394
  br label %2070

2070:                                             ; preds = %2053, %2057, %2061, %2065, %2069, %2048
  %2071 = load ptr, ptr %2049, align 8, !tbaa !42
  %2072 = icmp eq ptr %2071, null
  br i1 %2072, label %2040, label %2048, !llvm.loop !395

2073:                                             ; preds = %2032, %2028
  br i1 %1976, label %2082, label %2074

2074:                                             ; preds = %2073
  %2075 = icmp eq i16 %1977, 264
  br i1 %2075, label %2076, label %2153

2076:                                             ; preds = %2074
  %2077 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2078 = load i16, ptr %2077, align 2, !tbaa !74
  br label %2079

2079:                                             ; preds = %2076, %1972
  %2080 = phi i16 [ %2078, %2076 ], [ %1973, %1972 ]
  %2081 = icmp slt i16 %2080, 5
  br i1 %2081, label %2082, label %2106

2082:                                             ; preds = %2079, %2073
  %2083 = phi i1 [ false, %2079 ], [ true, %2073 ]
  %2084 = phi i16 [ 264, %2079 ], [ %1977, %2073 ]
  %2085 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %2086 = load ptr, ptr %2085, align 8, !tbaa !42
  %2087 = icmp eq ptr %2086, null
  br i1 %2087, label %2100, label %2088

2088:                                             ; preds = %2082, %2097
  %2089 = phi ptr [ %2098, %2097 ], [ %2086, %2082 ]
  %2090 = getelementptr inbounds %struct.Scene, ptr %2089, i64 0, i32 20
  %2091 = load ptr, ptr %2090, align 8, !tbaa !194
  %2092 = getelementptr inbounds %struct.ToolSettings, ptr %2091, i64 0, i32 13
  %2093 = load float, ptr %2092, align 4, !tbaa !396
  %2094 = fcmp oeq float %2093, 0.000000e+00
  br i1 %2094, label %2095, label %2097

2095:                                             ; preds = %2088
  store float 0x3F50624DE0000000, ptr %2092, align 4, !tbaa !396
  %2096 = getelementptr inbounds %struct.ToolSettings, ptr %2091, i64 0, i32 9
  store i8 0, ptr %2096, align 8, !tbaa !397
  br label %2097

2097:                                             ; preds = %2088, %2095
  %2098 = load ptr, ptr %2089, align 8, !tbaa !42
  %2099 = icmp eq ptr %2098, null
  br i1 %2099, label %2100, label %2088, !llvm.loop !398

2100:                                             ; preds = %2097, %2082
  br i1 %2083, label %2109, label %2101

2101:                                             ; preds = %2100
  %2102 = icmp eq i16 %2084, 264
  br i1 %2102, label %2103, label %2153

2103:                                             ; preds = %2101
  %2104 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2105 = load i16, ptr %2104, align 2, !tbaa !74
  br label %2106

2106:                                             ; preds = %2103, %2079
  %2107 = phi i16 [ %2105, %2103 ], [ %2080, %2079 ]
  %2108 = icmp slt i16 %2107, 6
  br i1 %2108, label %2109, label %2158

2109:                                             ; preds = %2106, %2100
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %26) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %28) #14
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %26, ptr noundef %2) #15
  %2110 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %26, ptr noundef nonnull %27, ptr noundef nonnull %28) #15
  %2111 = icmp eq i8 %2110, 1
  br i1 %2111, label %2112, label %2151

2112:                                             ; preds = %2109, %2148
  %2113 = load ptr, ptr %27, align 8, !tbaa !42
  %2114 = icmp eq ptr %2113, null
  br i1 %2114, label %2148, label %2115

2115:                                             ; preds = %2112
  %2116 = getelementptr inbounds %struct.bNodeTree, ptr %2113, i64 0, i32 7
  %2117 = load ptr, ptr %2116, align 8, !tbaa !42
  %2118 = icmp eq ptr %2117, null
  br i1 %2118, label %2148, label %2122

2119:                                             ; preds = %2146, %2122
  %2120 = load ptr, ptr %2123, align 8, !tbaa !42
  %2121 = icmp eq ptr %2120, null
  br i1 %2121, label %2148, label %2122, !llvm.loop !399

2122:                                             ; preds = %2115, %2119
  %2123 = phi ptr [ %2120, %2119 ], [ %2117, %2115 ]
  %2124 = getelementptr inbounds %struct.bNode, ptr %2123, i64 0, i32 23
  %2125 = load ptr, ptr %2124, align 8, !tbaa !400
  %2126 = icmp eq ptr %2125, null
  br i1 %2126, label %2119, label %2127

2127:                                             ; preds = %2122, %2146
  %2128 = phi ptr [ %2129, %2146 ], [ %2125, %2122 ]
  %2129 = load ptr, ptr %2128, align 8, !tbaa !401
  %2130 = getelementptr inbounds %struct.bNodeLink, ptr %2128, i64 0, i32 2
  %2131 = load ptr, ptr %2130, align 8, !tbaa !403
  %2132 = icmp eq ptr %2131, null
  br i1 %2132, label %2145, label %2133

2133:                                             ; preds = %2127
  %2134 = getelementptr inbounds %struct.bNodeLink, ptr %2128, i64 0, i32 4
  %2135 = load ptr, ptr %2134, align 8, !tbaa !404
  %2136 = icmp eq ptr %2135, null
  br i1 %2136, label %2145, label %2137

2137:                                             ; preds = %2133
  %2138 = getelementptr inbounds %struct.bNodeLink, ptr %2128, i64 0, i32 3
  %2139 = load ptr, ptr %2138, align 8, !tbaa !405
  %2140 = icmp eq ptr %2139, null
  br i1 %2140, label %2145, label %2141

2141:                                             ; preds = %2137
  %2142 = getelementptr inbounds %struct.bNodeLink, ptr %2128, i64 0, i32 5
  %2143 = load ptr, ptr %2142, align 8, !tbaa !406
  %2144 = icmp eq ptr %2143, null
  br i1 %2144, label %2145, label %2146

2145:                                             ; preds = %2141, %2137, %2133, %2127
  call void @BLI_remlink(ptr noundef nonnull %2124, ptr noundef nonnull %2128) #15
  br label %2146

2146:                                             ; preds = %2141, %2145
  %2147 = icmp eq ptr %2129, null
  br i1 %2147, label %2119, label %2127, !llvm.loop !407

2148:                                             ; preds = %2119, %2115, %2112
  %2149 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %26, ptr noundef nonnull %27, ptr noundef nonnull %28) #15
  %2150 = icmp eq i8 %2149, 1
  br i1 %2150, label %2112, label %2151, !llvm.loop !408

2151:                                             ; preds = %2148, %2109
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %26) #14
  %2152 = load i16, ptr %55, align 8, !tbaa !34
  br label %2153

2153:                                             ; preds = %1967, %2074, %2151, %2101
  %2154 = phi i16 [ %1938, %1967 ], [ %1977, %2074 ], [ %2152, %2151 ], [ %2084, %2101 ]
  %2155 = icmp slt i16 %2154, 264
  br i1 %2155, label %2162, label %2156

2156:                                             ; preds = %2153
  %2157 = icmp eq i16 %2154, 264
  br i1 %2157, label %2158, label %2328

2158:                                             ; preds = %2106, %2156
  %2159 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2160 = load i16, ptr %2159, align 2, !tbaa !74
  %2161 = icmp slt i16 %2160, 6
  br i1 %2161, label %2162, label %2206

2162:                                             ; preds = %2158, %2153
  %2163 = phi i16 [ 264, %2158 ], [ %2154, %2153 ]
  %2164 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %2165 = load ptr, ptr %2164, align 8, !tbaa !42
  %2166 = icmp eq ptr %2165, null
  br i1 %2166, label %2201, label %2170

2167:                                             ; preds = %2175, %2170
  %2168 = load ptr, ptr %2171, align 8, !tbaa !42
  %2169 = icmp eq ptr %2168, null
  br i1 %2169, label %2199, label %2170, !llvm.loop !409

2170:                                             ; preds = %2162, %2167
  %2171 = phi ptr [ %2168, %2167 ], [ %2165, %2162 ]
  %2172 = getelementptr inbounds %struct.bScreen, ptr %2171, i64 0, i32 3
  %2173 = load ptr, ptr %2172, align 8, !tbaa !42
  %2174 = icmp eq ptr %2173, null
  br i1 %2174, label %2167, label %2178

2175:                                             ; preds = %2196, %2185
  %2176 = load ptr, ptr %2179, align 8, !tbaa !42
  %2177 = icmp eq ptr %2176, null
  br i1 %2177, label %2167, label %2178, !llvm.loop !410

2178:                                             ; preds = %2170, %2175
  %2179 = phi ptr [ %2176, %2175 ], [ %2173, %2170 ]
  %2180 = getelementptr inbounds %struct.ScrArea, ptr %2179, i64 0, i32 8
  %2181 = load i8, ptr %2180, align 8, !tbaa !411
  %2182 = icmp eq i8 %2181, 17
  br i1 %2182, label %2183, label %2185

2183:                                             ; preds = %2178
  %2184 = getelementptr inbounds %struct.ScrArea, ptr %2179, i64 0, i32 20
  call fastcc void @do_version_logic_264(ptr noundef nonnull %2184) #13
  br label %2185

2185:                                             ; preds = %2183, %2178
  %2186 = getelementptr inbounds %struct.ScrArea, ptr %2179, i64 0, i32 19
  %2187 = load ptr, ptr %2186, align 8, !tbaa !42
  %2188 = icmp eq ptr %2187, null
  br i1 %2188, label %2175, label %2189

2189:                                             ; preds = %2185, %2196
  %2190 = phi ptr [ %2197, %2196 ], [ %2187, %2185 ]
  %2191 = getelementptr inbounds %struct.SpaceLink, ptr %2190, i64 0, i32 3
  %2192 = load i32, ptr %2191, align 8, !tbaa !105
  %2193 = icmp eq i32 %2192, 17
  br i1 %2193, label %2194, label %2196

2194:                                             ; preds = %2189
  %2195 = getelementptr inbounds %struct.SpaceLink, ptr %2190, i64 0, i32 2
  call fastcc void @do_version_logic_264(ptr noundef nonnull %2195) #13
  br label %2196

2196:                                             ; preds = %2189, %2194
  %2197 = load ptr, ptr %2190, align 8, !tbaa !42
  %2198 = icmp eq ptr %2197, null
  br i1 %2198, label %2175, label %2189, !llvm.loop !413

2199:                                             ; preds = %2167
  %2200 = load i16, ptr %55, align 8, !tbaa !34
  br label %2201

2201:                                             ; preds = %2199, %2162
  %2202 = phi i16 [ %2200, %2199 ], [ %2163, %2162 ]
  %2203 = icmp sgt i16 %2202, 263
  br i1 %2203, label %2204, label %2210

2204:                                             ; preds = %2201
  %2205 = icmp eq i16 %2202, 264
  br i1 %2205, label %2206, label %2328

2206:                                             ; preds = %2158, %2204
  %2207 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2208 = load i16, ptr %2207, align 2, !tbaa !74
  %2209 = icmp slt i16 %2208, 7
  br i1 %2209, label %2210, label %2313

2210:                                             ; preds = %2206, %2201
  %2211 = phi i1 [ true, %2206 ], [ false, %2201 ]
  %2212 = phi i16 [ 264, %2206 ], [ %2202, %2201 ]
  %2213 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %2214 = load ptr, ptr %2213, align 8, !tbaa !42
  %2215 = icmp eq ptr %2214, null
  br i1 %2215, label %2257, label %2216

2216:                                             ; preds = %2210, %2254
  %2217 = phi ptr [ %2255, %2254 ], [ %2214, %2210 ]
  %2218 = getelementptr inbounds %struct.Scene, ptr %2217, i64 0, i32 22, i32 37
  %2219 = load i32, ptr %2218, align 8, !tbaa !414
  %2220 = icmp eq i32 %2219, 0
  br i1 %2220, label %2225, label %2221

2221:                                             ; preds = %2216
  %2222 = getelementptr inbounds %struct.Scene, ptr %2217, i64 0, i32 22, i32 38
  %2223 = load i32, ptr %2222, align 4, !tbaa !415
  %2224 = icmp eq i32 %2223, 1
  br i1 %2224, label %2225, label %2254

2225:                                             ; preds = %2221, %2216
  %2226 = getelementptr inbounds %struct.Scene, ptr %2217, i64 0, i32 22, i32 35
  %2227 = load i16, ptr %2226, align 4, !tbaa !416
  %2228 = sext i16 %2227 to i32
  %2229 = icmp eq i16 %2227, 0
  br i1 %2229, label %2252, label %2230

2230:                                             ; preds = %2225
  %2231 = getelementptr inbounds %struct.Scene, ptr %2217, i64 0, i32 22, i32 36
  %2232 = load i16, ptr %2231, align 2, !tbaa !417
  %2233 = icmp eq i16 %2232, 0
  br i1 %2233, label %2252, label %2234

2234:                                             ; preds = %2230
  %2235 = getelementptr inbounds %struct.Scene, ptr %2217, i64 0, i32 22, i32 33
  %2236 = load i32, ptr %2235, align 4, !tbaa !418
  %2237 = getelementptr inbounds %struct.Scene, ptr %2217, i64 0, i32 22, i32 30
  %2238 = load i16, ptr %2237, align 2, !tbaa !419
  %2239 = sext i16 %2238 to i32
  %2240 = mul nsw i32 %2236, %2239
  %2241 = sdiv i32 %2240, %2228
  %2242 = sdiv i32 %2241, 100
  %2243 = call fastcc i32 @max_ii(i32 noundef %2242, i32 noundef 8) #13
  store i32 %2243, ptr %2218, align 8, !tbaa !414
  %2244 = getelementptr inbounds %struct.Scene, ptr %2217, i64 0, i32 22, i32 34
  %2245 = load i32, ptr %2244, align 8, !tbaa !420
  %2246 = mul nsw i32 %2245, %2239
  %2247 = sext i16 %2232 to i32
  %2248 = sdiv i32 %2246, %2247
  %2249 = sdiv i32 %2248, 100
  %2250 = call fastcc i32 @max_ii(i32 noundef %2249, i32 noundef 8) #13
  %2251 = getelementptr inbounds %struct.Scene, ptr %2217, i64 0, i32 22, i32 38
  store i32 %2250, ptr %2251, align 4, !tbaa !415
  br label %2254

2252:                                             ; preds = %2230, %2225
  %2253 = getelementptr inbounds %struct.Scene, ptr %2217, i64 0, i32 22, i32 38
  store i32 64, ptr %2253, align 4, !tbaa !415
  store i32 64, ptr %2218, align 8, !tbaa !414
  br label %2254

2254:                                             ; preds = %2221, %2252, %2234
  %2255 = load ptr, ptr %2217, align 8, !tbaa !42
  %2256 = icmp eq ptr %2255, null
  br i1 %2256, label %2257, label %2216, !llvm.loop !421

2257:                                             ; preds = %2254, %2210
  %2258 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %2259 = load ptr, ptr %2258, align 8, !tbaa !42
  %2260 = icmp eq ptr %2259, null
  br i1 %2260, label %2271, label %2261

2261:                                             ; preds = %2257, %2268
  %2262 = phi ptr [ %2269, %2268 ], [ %2259, %2257 ]
  %2263 = getelementptr inbounds %struct.Object, ptr %2262, i64 0, i32 81
  %2264 = load i16, ptr %2263, align 4, !tbaa !422
  %2265 = icmp eq i16 %2264, 0
  br i1 %2265, label %2266, label %2268

2266:                                             ; preds = %2261
  store i16 1, ptr %2263, align 4, !tbaa !422
  %2267 = getelementptr inbounds %struct.Object, ptr %2262, i64 0, i32 82
  store i16 255, ptr %2267, align 2, !tbaa !423
  br label %2268

2268:                                             ; preds = %2261, %2266
  %2269 = load ptr, ptr %2262, align 8, !tbaa !42
  %2270 = icmp eq ptr %2269, null
  br i1 %2270, label %2271, label %2261, !llvm.loop !424

2271:                                             ; preds = %2268, %2257
  br i1 %2211, label %2272, label %2276

2272:                                             ; preds = %2271
  %2273 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2274 = load i16, ptr %2273, align 2, !tbaa !74
  %2275 = icmp slt i16 %2274, 7
  br i1 %2275, label %2276, label %2310

2276:                                             ; preds = %2272, %2271
  %2277 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 42
  %2278 = load ptr, ptr %2277, align 8, !tbaa !42
  %2279 = icmp eq ptr %2278, null
  br i1 %2279, label %2310, label %2283

2280:                                             ; preds = %2296, %2292
  %2281 = load ptr, ptr %2284, align 8, !tbaa !42
  %2282 = icmp eq ptr %2281, null
  br i1 %2282, label %2308, label %2283, !llvm.loop !425

2283:                                             ; preds = %2276, %2280
  %2284 = phi ptr [ %2281, %2280 ], [ %2278, %2276 ]
  %2285 = getelementptr inbounds %struct.MovieClip, ptr %2284, i64 0, i32 11, i32 2
  %2286 = load ptr, ptr %2285, align 8, !tbaa !42
  %2287 = icmp eq ptr %2286, null
  br i1 %2287, label %2292, label %2288

2288:                                             ; preds = %2283, %2288
  %2289 = phi ptr [ %2290, %2288 ], [ %2286, %2283 ]
  call fastcc void @do_versions_affine_tracker_track(ptr noundef nonnull %2289) #13
  %2290 = load ptr, ptr %2289, align 8, !tbaa !42
  %2291 = icmp eq ptr %2290, null
  br i1 %2291, label %2292, label %2288, !llvm.loop !426

2292:                                             ; preds = %2288, %2283
  %2293 = getelementptr inbounds %struct.MovieClip, ptr %2284, i64 0, i32 11, i32 8
  %2294 = load ptr, ptr %2293, align 8, !tbaa !42
  %2295 = icmp eq ptr %2294, null
  br i1 %2295, label %2280, label %2299

2296:                                             ; preds = %2304, %2299
  %2297 = load ptr, ptr %2300, align 8, !tbaa !42
  %2298 = icmp eq ptr %2297, null
  br i1 %2298, label %2280, label %2299, !llvm.loop !427

2299:                                             ; preds = %2292, %2296
  %2300 = phi ptr [ %2297, %2296 ], [ %2294, %2292 ]
  %2301 = getelementptr inbounds %struct.MovieTrackingObject, ptr %2300, i64 0, i32 5
  %2302 = load ptr, ptr %2301, align 8, !tbaa !42
  %2303 = icmp eq ptr %2302, null
  br i1 %2303, label %2296, label %2304

2304:                                             ; preds = %2299, %2304
  %2305 = phi ptr [ %2306, %2304 ], [ %2302, %2299 ]
  call fastcc void @do_versions_affine_tracker_track(ptr noundef nonnull %2305) #13
  %2306 = load ptr, ptr %2305, align 8, !tbaa !42
  %2307 = icmp eq ptr %2306, null
  br i1 %2307, label %2296, label %2304, !llvm.loop !428

2308:                                             ; preds = %2280
  %2309 = load i16, ptr %55, align 8, !tbaa !34
  br label %2310

2310:                                             ; preds = %2308, %2276, %2272
  %2311 = phi i16 [ %2309, %2308 ], [ %2212, %2276 ], [ %2212, %2272 ]
  %2312 = icmp slt i16 %2311, 265
  br i1 %2312, label %2313, label %2328

2313:                                             ; preds = %2206, %2310
  %2314 = phi i16 [ %2311, %2310 ], [ 264, %2206 ]
  %2315 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %2316 = load ptr, ptr %2315, align 8, !tbaa !42
  %2317 = icmp eq ptr %2316, null
  br i1 %2317, label %2335, label %2318

2318:                                             ; preds = %2313, %2325
  %2319 = phi ptr [ %2326, %2325 ], [ %2316, %2313 ]
  %2320 = getelementptr inbounds %struct.Object, ptr %2319, i64 0, i32 78
  %2321 = load float, ptr %2320, align 8, !tbaa !429
  %2322 = fcmp oeq float %2321, 0.000000e+00
  br i1 %2322, label %2323, label %2325

2323:                                             ; preds = %2318
  store <2 x float> <float 0x3FC3333340000000, float 1.000000e+01>, ptr %2320, align 8, !tbaa !128
  %2324 = getelementptr inbounds %struct.Object, ptr %2319, i64 0, i32 80
  store float 5.500000e+01, ptr %2324, align 8, !tbaa !430
  br label %2325

2325:                                             ; preds = %2318, %2323
  %2326 = load ptr, ptr %2319, align 8, !tbaa !42
  %2327 = icmp eq ptr %2326, null
  br i1 %2327, label %2335, label %2318, !llvm.loop !431

2328:                                             ; preds = %2204, %2156, %1929, %2310
  %2329 = phi i16 [ %2311, %2310 ], [ %2154, %2156 ], [ %1930, %1929 ], [ %2202, %2204 ]
  %2330 = icmp eq i16 %2329, 265
  br i1 %2330, label %2331, label %2546

2331:                                             ; preds = %2328
  %2332 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2333 = load i16, ptr %2332, align 2, !tbaa !74
  %2334 = icmp slt i16 %2333, 3
  br i1 %2334, label %2335, label %2390

2335:                                             ; preds = %2325, %2313, %2331
  %2336 = phi i1 [ false, %2331 ], [ true, %2313 ], [ true, %2325 ]
  %2337 = phi i16 [ 265, %2331 ], [ %2314, %2313 ], [ %2314, %2325 ]
  %2338 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %2339 = load ptr, ptr %2338, align 8, !tbaa !42
  %2340 = icmp eq ptr %2339, null
  br i1 %2340, label %2384, label %2344

2341:                                             ; preds = %2349, %2344
  %2342 = load ptr, ptr %2345, align 8, !tbaa !42
  %2343 = icmp eq ptr %2342, null
  br i1 %2343, label %2384, label %2344, !llvm.loop !432

2344:                                             ; preds = %2335, %2341
  %2345 = phi ptr [ %2342, %2341 ], [ %2339, %2335 ]
  %2346 = getelementptr inbounds %struct.bScreen, ptr %2345, i64 0, i32 3
  %2347 = load ptr, ptr %2346, align 8, !tbaa !42
  %2348 = icmp eq ptr %2347, null
  br i1 %2348, label %2341, label %2352

2349:                                             ; preds = %2381, %2352
  %2350 = load ptr, ptr %2353, align 8, !tbaa !42
  %2351 = icmp eq ptr %2350, null
  br i1 %2351, label %2341, label %2352, !llvm.loop !433

2352:                                             ; preds = %2344, %2349
  %2353 = phi ptr [ %2350, %2349 ], [ %2347, %2344 ]
  %2354 = getelementptr inbounds %struct.ScrArea, ptr %2353, i64 0, i32 19
  %2355 = load ptr, ptr %2354, align 8, !tbaa !42
  %2356 = icmp eq ptr %2355, null
  br i1 %2356, label %2349, label %2357

2357:                                             ; preds = %2352, %2381
  %2358 = phi ptr [ %2382, %2381 ], [ %2355, %2352 ]
  %2359 = getelementptr inbounds %struct.SpaceLink, ptr %2358, i64 0, i32 3
  %2360 = load i32, ptr %2359, align 8, !tbaa !105
  switch i32 %2360, label %2381 [
    i32 1, label %2361
    i32 8, label %2365
    i32 6, label %2369
    i32 16, label %2373
    i32 20, label %2377
  ]

2361:                                             ; preds = %2357
  %2362 = getelementptr inbounds %struct.View3D, ptr %2358, i64 0, i32 29
  %2363 = load i16, ptr %2362, align 2, !tbaa !109
  %2364 = or i16 %2363, 16
  store i16 %2364, ptr %2362, align 2, !tbaa !109
  br label %2381

2365:                                             ; preds = %2357
  %2366 = getelementptr inbounds %struct.SpaceSeq, ptr %2358, i64 0, i32 13
  %2367 = load i32, ptr %2366, align 8, !tbaa !434
  %2368 = or i32 %2367, 16
  store i32 %2368, ptr %2366, align 8, !tbaa !434
  br label %2381

2369:                                             ; preds = %2357
  %2370 = getelementptr inbounds %struct.SpaceImage, ptr %2358, i64 0, i32 4
  %2371 = load i32, ptr %2370, align 4, !tbaa !437
  %2372 = or i32 %2371, 4194304
  store i32 %2372, ptr %2370, align 4, !tbaa !437
  br label %2381

2373:                                             ; preds = %2357
  %2374 = getelementptr inbounds %struct.SpaceNode, ptr %2358, i64 0, i32 9
  %2375 = load i16, ptr %2374, align 8, !tbaa !441
  %2376 = or i16 %2375, 4
  store i16 %2376, ptr %2374, align 8, !tbaa !441
  br label %2381

2377:                                             ; preds = %2357
  %2378 = getelementptr inbounds %struct.SpaceClip, ptr %2358, i64 0, i32 12
  %2379 = load i32, ptr %2378, align 8, !tbaa !443
  %2380 = or i32 %2379, 4096
  store i32 %2380, ptr %2378, align 8, !tbaa !443
  br label %2381

2381:                                             ; preds = %2361, %2365, %2369, %2373, %2377, %2357
  %2382 = load ptr, ptr %2358, align 8, !tbaa !42
  %2383 = icmp eq ptr %2382, null
  br i1 %2383, label %2349, label %2357, !llvm.loop !444

2384:                                             ; preds = %2341, %2335
  br i1 %2336, label %2393, label %2385

2385:                                             ; preds = %2384
  %2386 = icmp eq i16 %2337, 265
  br i1 %2386, label %2387, label %2546

2387:                                             ; preds = %2385
  %2388 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2389 = load i16, ptr %2388, align 2, !tbaa !74
  br label %2390

2390:                                             ; preds = %2387, %2331
  %2391 = phi i16 [ %2389, %2387 ], [ %2333, %2331 ]
  %2392 = icmp slt i16 %2391, 5
  br i1 %2392, label %2393, label %2553

2393:                                             ; preds = %2390, %2384
  %2394 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %2395 = load ptr, ptr %2394, align 8, !tbaa !42
  %2396 = icmp eq ptr %2395, null
  br i1 %2396, label %2452, label %2397

2397:                                             ; preds = %2393
  %2398 = getelementptr inbounds %struct.SeqIterator, ptr %29, i64 0, i32 4
  %2399 = getelementptr inbounds %struct.SeqIterator, ptr %29, i64 0, i32 3
  br label %2400

2400:                                             ; preds = %2397, %2449
  %2401 = phi ptr [ %2395, %2397 ], [ %2450, %2449 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %29) #14
  %2402 = getelementptr inbounds %struct.Scene, ptr %2401, i64 0, i32 19
  %2403 = load ptr, ptr %2402, align 8, !tbaa !339
  call void @BKE_sequence_iterator_begin(ptr noundef %2403, ptr noundef nonnull %29, i8 noundef zeroext 0) #15
  %2404 = load i32, ptr %2398, align 8, !tbaa !340
  %2405 = icmp eq i32 %2404, 0
  br i1 %2405, label %2418, label %2406

2406:                                             ; preds = %2400, %2415
  %2407 = load ptr, ptr %2399, align 8, !tbaa !342
  %2408 = getelementptr inbounds %struct.Sequence, ptr %2407, i64 0, i32 5
  %2409 = load i32, ptr %2408, align 8, !tbaa !445
  %2410 = and i32 %2409, 64
  %2411 = icmp eq i32 %2410, 0
  br i1 %2411, label %2414, label %2412

2412:                                             ; preds = %2406
  %2413 = getelementptr inbounds %struct.Sequence, ptr %2407, i64 0, i32 49
  store i8 0, ptr %2413, align 4, !tbaa !446
  br label %2415

2414:                                             ; preds = %2406
  call void @BKE_sequence_alpha_mode_from_extension(ptr noundef nonnull %2407) #15
  br label %2415

2415:                                             ; preds = %2412, %2414
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %29) #15
  %2416 = load i32, ptr %2398, align 8, !tbaa !340
  %2417 = icmp eq i32 %2416, 0
  br i1 %2417, label %2418, label %2406, !llvm.loop !447

2418:                                             ; preds = %2415, %2400
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %29) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %29) #14
  %2419 = getelementptr inbounds %struct.Scene, ptr %2401, i64 0, i32 22, i32 80
  %2420 = load i16, ptr %2419, align 4, !tbaa !448
  %2421 = icmp eq i16 %2420, 0
  br i1 %2421, label %2422, label %2423

2422:                                             ; preds = %2418
  store i16 256, ptr %2419, align 4, !tbaa !448
  br label %2423

2423:                                             ; preds = %2422, %2418
  %2424 = getelementptr inbounds %struct.Scene, ptr %2401, i64 0, i32 3
  %2425 = load ptr, ptr %2424, align 8, !tbaa !449
  %2426 = icmp eq ptr %2425, null
  br i1 %2426, label %2445, label %2427

2427:                                             ; preds = %2423
  %2428 = getelementptr inbounds %struct.ID, ptr %2401, i64 0, i32 3
  %2429 = load ptr, ptr %2428, align 8, !tbaa !450
  %2430 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %2429, ptr noundef nonnull %2425) #15
  %2431 = icmp eq ptr %2430, null
  br i1 %2431, label %2449, label %2432

2432:                                             ; preds = %2427
  %2433 = getelementptr inbounds %struct.World, ptr %2430, i64 0, i32 6
  %2434 = call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %2433) #13, !range !147
  %2435 = icmp eq i8 %2434, 0
  br i1 %2435, label %2449, label %2436

2436:                                             ; preds = %2432
  %2437 = getelementptr inbounds %struct.World, ptr %2430, i64 0, i32 22
  %2438 = load i16, ptr %2437, align 8, !tbaa !451
  %2439 = and i16 %2438, 1
  %2440 = icmp eq i16 %2439, 0
  br i1 %2440, label %2445, label %2441

2441:                                             ; preds = %2436
  %2442 = getelementptr inbounds %struct.World, ptr %2430, i64 0, i32 9
  %2443 = call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %2442) #13, !range !147
  %2444 = icmp eq i8 %2443, 0
  br i1 %2444, label %2449, label %2445

2445:                                             ; preds = %2436, %2441, %2423
  %2446 = getelementptr inbounds %struct.ID, ptr %2401, i64 0, i32 4, i64 2
  %2447 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull %2446) #13
  %2448 = getelementptr inbounds %struct.Scene, ptr %2401, i64 0, i32 22, i32 53
  store i16 1, ptr %2448, align 8, !tbaa !452
  br label %2449

2449:                                             ; preds = %2427, %2432, %2441, %2445
  %2450 = load ptr, ptr %2401, align 8, !tbaa !42
  %2451 = icmp eq ptr %2450, null
  br i1 %2451, label %2452, label %2400, !llvm.loop !453

2452:                                             ; preds = %2449, %2393
  %2453 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 19
  %2454 = load ptr, ptr %2453, align 8, !tbaa !42
  %2455 = icmp eq ptr %2454, null
  br i1 %2455, label %2468, label %2456

2456:                                             ; preds = %2452, %2465
  %2457 = phi ptr [ %2466, %2465 ], [ %2454, %2452 ]
  %2458 = getelementptr inbounds %struct.Image, ptr %2457, i64 0, i32 10
  %2459 = load i16, ptr %2458, align 2, !tbaa !359
  %2460 = and i16 %2459, 4
  %2461 = icmp eq i16 %2460, 0
  br i1 %2461, label %2464, label %2462

2462:                                             ; preds = %2456
  %2463 = getelementptr inbounds %struct.Image, ptr %2457, i64 0, i32 37
  store i8 0, ptr %2463, align 8, !tbaa !454
  br label %2465

2464:                                             ; preds = %2456
  call void @BKE_image_alpha_mode_from_extension(ptr noundef nonnull %2457) #15
  br label %2465

2465:                                             ; preds = %2462, %2464
  %2466 = load ptr, ptr %2457, align 8, !tbaa !42
  %2467 = icmp eq ptr %2466, null
  br i1 %2467, label %2468, label %2456, !llvm.loop !455

2468:                                             ; preds = %2465, %2452
  %2469 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %2470 = load ptr, ptr %2469, align 8, !tbaa !42
  %2471 = icmp eq ptr %2470, null
  br i1 %2471, label %2499, label %2472

2472:                                             ; preds = %2468, %2496
  %2473 = phi ptr [ %2497, %2496 ], [ %2470, %2468 ]
  %2474 = getelementptr inbounds %struct.Tex, ptr %2473, i64 0, i32 32
  %2475 = load i16, ptr %2474, align 8, !tbaa !456
  %2476 = icmp eq i16 %2475, 8
  br i1 %2476, label %2477, label %2496

2477:                                             ; preds = %2472
  %2478 = getelementptr inbounds %struct.Tex, ptr %2473, i64 0, i32 30
  %2479 = load i16, ptr %2478, align 4, !tbaa !457
  %2480 = and i16 %2479, 2
  %2481 = icmp eq i16 %2480, 0
  br i1 %2481, label %2482, label %2496

2482:                                             ; preds = %2477
  %2483 = getelementptr inbounds %struct.ID, ptr %2473, i64 0, i32 3
  %2484 = load ptr, ptr %2483, align 8, !tbaa !458
  %2485 = getelementptr inbounds %struct.Tex, ptr %2473, i64 0, i32 54
  %2486 = load ptr, ptr %2485, align 8, !tbaa !459
  %2487 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %2484, ptr noundef %2486) #15
  %2488 = icmp eq ptr %2487, null
  br i1 %2488, label %2496, label %2489

2489:                                             ; preds = %2482
  %2490 = getelementptr inbounds %struct.Image, ptr %2487, i64 0, i32 10
  %2491 = load i16, ptr %2490, align 2, !tbaa !359
  %2492 = and i16 %2491, 4
  %2493 = icmp eq i16 %2492, 0
  br i1 %2493, label %2494, label %2496

2494:                                             ; preds = %2489
  %2495 = or i16 %2491, 4096
  store i16 %2495, ptr %2490, align 2, !tbaa !359
  br label %2496

2496:                                             ; preds = %2472, %2477, %2494, %2489, %2482
  %2497 = load ptr, ptr %2473, align 8, !tbaa !42
  %2498 = icmp eq ptr %2497, null
  br i1 %2498, label %2499, label %2472, !llvm.loop !460

2499:                                             ; preds = %2496, %2468
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %30) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %31) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %32) #14
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %30, ptr noundef %2) #15
  %2500 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %30, ptr noundef nonnull %31, ptr noundef nonnull %32) #15
  %2501 = icmp eq i8 %2500, 1
  br i1 %2501, label %2502, label %2545

2502:                                             ; preds = %2499, %2542
  %2503 = load ptr, ptr %31, align 8, !tbaa !42
  %2504 = icmp eq ptr %2503, null
  br i1 %2504, label %2542, label %2505

2505:                                             ; preds = %2502
  %2506 = getelementptr inbounds %struct.bNodeTree, ptr %2503, i64 0, i32 9
  %2507 = load i32, ptr %2506, align 8, !tbaa !84
  %2508 = icmp eq i32 %2507, 1
  br i1 %2508, label %2509, label %2542

2509:                                             ; preds = %2505
  %2510 = getelementptr inbounds %struct.bNodeTree, ptr %2503, i64 0, i32 7
  %2511 = load ptr, ptr %2510, align 8, !tbaa !42
  %2512 = icmp eq ptr %2511, null
  br i1 %2512, label %2542, label %2513

2513:                                             ; preds = %2509, %2539
  %2514 = phi ptr [ %2540, %2539 ], [ %2511, %2509 ]
  %2515 = getelementptr inbounds %struct.bNode, ptr %2514, i64 0, i32 8
  %2516 = load i16, ptr %2515, align 4, !tbaa !87
  %2517 = icmp eq i16 %2516, 220
  br i1 %2517, label %2518, label %2539

2518:                                             ; preds = %2513
  %2519 = load ptr, ptr %31, align 8, !tbaa !42
  %2520 = getelementptr inbounds %struct.ID, ptr %2519, i64 0, i32 3
  %2521 = load ptr, ptr %2520, align 8, !tbaa !461
  %2522 = getelementptr inbounds %struct.bNode, ptr %2514, i64 0, i32 20
  %2523 = load ptr, ptr %2522, align 8, !tbaa !462
  %2524 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %2521, ptr noundef %2523) #15
  %2525 = icmp eq ptr %2524, null
  br i1 %2525, label %2539, label %2526

2526:                                             ; preds = %2518
  %2527 = getelementptr inbounds %struct.Image, ptr %2524, i64 0, i32 10
  %2528 = load i16, ptr %2527, align 2, !tbaa !359
  %2529 = and i16 %2528, 4
  %2530 = icmp eq i16 %2529, 0
  br i1 %2530, label %2531, label %2539

2531:                                             ; preds = %2526
  %2532 = getelementptr inbounds %struct.Image, ptr %2524, i64 0, i32 37
  %2533 = load i8, ptr %2532, align 8, !tbaa !454
  %2534 = icmp eq i8 %2533, 0
  br i1 %2534, label %2535, label %2539

2535:                                             ; preds = %2531
  %2536 = getelementptr inbounds %struct.bNode, ptr %2514, i64 0, i32 33
  %2537 = load i16, ptr %2536, align 8, !tbaa !463
  %2538 = or i16 %2537, 1
  store i16 %2538, ptr %2536, align 8, !tbaa !463
  br label %2539

2539:                                             ; preds = %2518, %2535, %2531, %2526, %2513
  %2540 = load ptr, ptr %2514, align 8, !tbaa !42
  %2541 = icmp eq ptr %2540, null
  br i1 %2541, label %2542, label %2513, !llvm.loop !464

2542:                                             ; preds = %2539, %2509, %2505, %2502
  %2543 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %30, ptr noundef nonnull %31, ptr noundef nonnull %32) #15
  %2544 = icmp eq i8 %2543, 1
  br i1 %2544, label %2502, label %2545, !llvm.loop !465

2545:                                             ; preds = %2542, %2499
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %32) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %31) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %30) #14
  br label %2569

2546:                                             ; preds = %2328, %2385
  %2547 = phi i16 [ %2337, %2385 ], [ %2329, %2328 ]
  %2548 = icmp eq i16 %2547, 266
  br i1 %2548, label %2549, label %2569

2549:                                             ; preds = %2546
  %2550 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2551 = load i16, ptr %2550, align 2, !tbaa !74
  %2552 = icmp slt i16 %2551, 1
  br i1 %2552, label %2553, label %2569

2553:                                             ; preds = %2390, %2549
  %2554 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %2555 = load ptr, ptr %2554, align 8, !tbaa !42
  %2556 = icmp eq ptr %2555, null
  br i1 %2556, label %2569, label %2557

2557:                                             ; preds = %2553, %2566
  %2558 = phi ptr [ %2567, %2566 ], [ %2555, %2553 ]
  %2559 = getelementptr inbounds %struct.Tex, ptr %2558, i64 0, i32 32
  %2560 = load i16, ptr %2559, align 8, !tbaa !456
  %2561 = icmp eq i16 %2560, 8
  br i1 %2561, label %2562, label %2566

2562:                                             ; preds = %2557
  %2563 = getelementptr inbounds %struct.Tex, ptr %2558, i64 0, i32 30
  %2564 = load i16, ptr %2563, align 4, !tbaa !457
  %2565 = or i16 %2564, 2
  store i16 %2565, ptr %2563, align 4, !tbaa !457
  br label %2566

2566:                                             ; preds = %2557, %2562
  %2567 = load ptr, ptr %2558, align 8, !tbaa !42
  %2568 = icmp eq ptr %2567, null
  br i1 %2568, label %2569, label %2557, !llvm.loop !466

2569:                                             ; preds = %2566, %2553, %2546, %2549, %2545
  %2570 = load i16, ptr %55, align 8, !tbaa !34
  %2571 = icmp slt i16 %2570, 265
  br i1 %2571, label %2578, label %2572

2572:                                             ; preds = %2569
  %2573 = icmp eq i16 %2570, 265
  br i1 %2573, label %2574, label %2731

2574:                                             ; preds = %2572
  %2575 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2576 = load i16, ptr %2575, align 2, !tbaa !74
  %2577 = icmp slt i16 %2576, 7
  br i1 %2577, label %2578, label %2646

2578:                                             ; preds = %2574, %2569
  %2579 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 15
  %2580 = load ptr, ptr %2579, align 8, !tbaa !42
  %2581 = icmp eq ptr %2580, null
  br i1 %2581, label %2640, label %2582

2582:                                             ; preds = %2578, %2637
  %2583 = phi ptr [ %2638, %2637 ], [ %2580, %2578 ]
  %2584 = getelementptr inbounds %struct.Curve, ptr %2583, i64 0, i32 23
  %2585 = load i32, ptr %2584, align 4, !tbaa !467
  %2586 = and i32 %2585, 6
  %2587 = icmp eq i32 %2586, 0
  br i1 %2587, label %2637, label %2588

2588:                                             ; preds = %2582
  %2589 = getelementptr inbounds %struct.Curve, ptr %2583, i64 0, i32 25
  %2590 = load float, ptr %2589, align 4, !tbaa !468
  %2591 = fcmp une float %2590, 0.000000e+00
  br i1 %2591, label %2596, label %2592

2592:                                             ; preds = %2588
  %2593 = getelementptr inbounds %struct.Curve, ptr %2583, i64 0, i32 26
  %2594 = load float, ptr %2593, align 8, !tbaa !469
  %2595 = fcmp une float %2594, 0.000000e+00
  br i1 %2595, label %2596, label %2637

2596:                                             ; preds = %2592, %2588
  %2597 = getelementptr inbounds %struct.Curve, ptr %2583, i64 0, i32 3
  %2598 = load ptr, ptr %2597, align 8, !tbaa !42
  %2599 = icmp eq ptr %2598, null
  br i1 %2599, label %2637, label %2600

2600:                                             ; preds = %2596, %2634
  %2601 = phi ptr [ %2635, %2634 ], [ %2598, %2596 ]
  %2602 = getelementptr inbounds %struct.Nurb, ptr %2601, i64 0, i32 18
  %2603 = load ptr, ptr %2602, align 8, !tbaa !470
  %2604 = icmp eq ptr %2603, null
  br i1 %2604, label %2616, label %2605

2605:                                             ; preds = %2600
  %2606 = getelementptr inbounds %struct.Nurb, ptr %2601, i64 0, i32 6
  %2607 = load i32, ptr %2606, align 8, !tbaa !472
  %2608 = icmp eq i32 %2607, 0
  br i1 %2608, label %2634, label %2609

2609:                                             ; preds = %2605, %2609
  %2610 = phi ptr [ %2614, %2609 ], [ %2603, %2605 ]
  %2611 = phi i32 [ %2612, %2609 ], [ %2607, %2605 ]
  %2612 = add nsw i32 %2611, -1
  %2613 = getelementptr inbounds %struct.BezTriple, ptr %2610, i64 0, i32 3
  store float 1.000000e+00, ptr %2613, align 4, !tbaa !473
  %2614 = getelementptr inbounds %struct.BezTriple, ptr %2610, i64 1
  %2615 = icmp eq i32 %2612, 0
  br i1 %2615, label %2634, label %2609, !llvm.loop !475

2616:                                             ; preds = %2600
  %2617 = getelementptr inbounds %struct.Nurb, ptr %2601, i64 0, i32 17
  %2618 = load ptr, ptr %2617, align 8, !tbaa !476
  %2619 = icmp eq ptr %2618, null
  br i1 %2619, label %2634, label %2620

2620:                                             ; preds = %2616
  %2621 = getelementptr inbounds %struct.Nurb, ptr %2601, i64 0, i32 6
  %2622 = load i32, ptr %2621, align 8, !tbaa !472
  %2623 = getelementptr inbounds %struct.Nurb, ptr %2601, i64 0, i32 7
  %2624 = load i32, ptr %2623, align 4, !tbaa !477
  %2625 = mul nsw i32 %2624, %2622
  %2626 = icmp eq i32 %2625, 0
  br i1 %2626, label %2634, label %2627

2627:                                             ; preds = %2620, %2627
  %2628 = phi ptr [ %2632, %2627 ], [ %2618, %2620 ]
  %2629 = phi i32 [ %2630, %2627 ], [ %2625, %2620 ]
  %2630 = add nsw i32 %2629, -1
  %2631 = getelementptr inbounds %struct.BPoint, ptr %2628, i64 0, i32 5
  store float 1.000000e+00, ptr %2631, align 4, !tbaa !478
  %2632 = getelementptr inbounds %struct.BPoint, ptr %2628, i64 1
  %2633 = icmp eq i32 %2630, 0
  br i1 %2633, label %2634, label %2627, !llvm.loop !480

2634:                                             ; preds = %2609, %2627, %2605, %2620, %2616
  %2635 = load ptr, ptr %2601, align 8, !tbaa !42
  %2636 = icmp eq ptr %2635, null
  br i1 %2636, label %2637, label %2600, !llvm.loop !481

2637:                                             ; preds = %2634, %2596, %2582, %2592
  %2638 = load ptr, ptr %2583, align 8, !tbaa !42
  %2639 = icmp eq ptr %2638, null
  br i1 %2639, label %2640, label %2582, !llvm.loop !482

2640:                                             ; preds = %2637, %2578
  br i1 %2571, label %2649, label %2641

2641:                                             ; preds = %2640
  %2642 = icmp eq i16 %2570, 265
  br i1 %2642, label %2643, label %2662

2643:                                             ; preds = %2641
  %2644 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2645 = load i16, ptr %2644, align 2, !tbaa !74
  br label %2646

2646:                                             ; preds = %2643, %2574
  %2647 = phi i16 [ %2645, %2643 ], [ %2576, %2574 ]
  %2648 = icmp slt i16 %2647, 9
  br i1 %2648, label %2649, label %2662

2649:                                             ; preds = %2646, %2640
  %2650 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %2651 = load ptr, ptr %2650, align 8, !tbaa !42
  %2652 = icmp eq ptr %2651, null
  br i1 %2652, label %2659, label %2653

2653:                                             ; preds = %2649, %2653
  %2654 = phi ptr [ %2655, %2653 ], [ %2651, %2649 ]
  call void @BKE_mesh_do_versions_cd_flag_init(ptr noundef nonnull %2654) #15
  %2655 = load ptr, ptr %2654, align 8, !tbaa !42
  %2656 = icmp eq ptr %2655, null
  br i1 %2656, label %2657, label %2653, !llvm.loop !483

2657:                                             ; preds = %2653
  %2658 = load i16, ptr %55, align 8, !tbaa !34
  br label %2659

2659:                                             ; preds = %2657, %2649
  %2660 = phi i16 [ %2658, %2657 ], [ %2570, %2649 ]
  %2661 = icmp sgt i16 %2660, 264
  br i1 %2661, label %2662, label %2669

2662:                                             ; preds = %2641, %2646, %2659
  %2663 = phi i16 [ %2660, %2659 ], [ %2570, %2646 ], [ %2570, %2641 ]
  %2664 = icmp eq i16 %2663, 265
  br i1 %2664, label %2665, label %2731

2665:                                             ; preds = %2662
  %2666 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2667 = load i16, ptr %2666, align 2, !tbaa !74
  %2668 = icmp slt i16 %2667, 10
  br i1 %2668, label %2669, label %2690

2669:                                             ; preds = %2665, %2659
  %2670 = phi i1 [ true, %2665 ], [ false, %2659 ]
  %2671 = phi i16 [ 265, %2665 ], [ %2660, %2659 ]
  %2672 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 36
  %2673 = load ptr, ptr %2672, align 8, !tbaa !42
  %2674 = icmp eq ptr %2673, null
  br i1 %2674, label %2686, label %2675

2675:                                             ; preds = %2669, %2683
  %2676 = phi ptr [ %2684, %2683 ], [ %2673, %2669 ]
  %2677 = getelementptr inbounds %struct.Brush, ptr %2676, i64 0, i32 13
  %2678 = load i16, ptr %2677, align 2, !tbaa !484
  %2679 = and i16 %2678, 16
  %2680 = icmp eq i16 %2679, 0
  br i1 %2680, label %2683, label %2681

2681:                                             ; preds = %2675
  %2682 = getelementptr inbounds %struct.Brush, ptr %2676, i64 0, i32 3, i32 20
  store i8 1, ptr %2682, align 4, !tbaa !485
  br label %2683

2683:                                             ; preds = %2675, %2681
  %2684 = load ptr, ptr %2676, align 8, !tbaa !42
  %2685 = icmp eq ptr %2684, null
  br i1 %2685, label %2686, label %2675, !llvm.loop !486

2686:                                             ; preds = %2683, %2669
  br i1 %2670, label %2687, label %2694

2687:                                             ; preds = %2686
  %2688 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2689 = load i16, ptr %2688, align 2, !tbaa !74
  br label %2690

2690:                                             ; preds = %2687, %2665
  %2691 = phi i16 [ %2671, %2687 ], [ 265, %2665 ]
  %2692 = phi i16 [ %2689, %2687 ], [ %2667, %2665 ]
  %2693 = icmp slt i16 %2692, 11
  br i1 %2693, label %2694, label %2728

2694:                                             ; preds = %2690, %2686
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %33) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %34) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %35) #14
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %33, ptr noundef %2) #15
  %2695 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %33, ptr noundef nonnull %34, ptr noundef nonnull %35) #15
  %2696 = icmp eq i8 %2695, 1
  br i1 %2696, label %2697, label %2726

2697:                                             ; preds = %2694, %2723
  %2698 = load ptr, ptr %34, align 8, !tbaa !42
  %2699 = icmp eq ptr %2698, null
  br i1 %2699, label %2723, label %2700

2700:                                             ; preds = %2697
  %2701 = getelementptr inbounds %struct.bNodeTree, ptr %2698, i64 0, i32 9
  %2702 = load i32, ptr %2701, align 8, !tbaa !84
  %2703 = icmp eq i32 %2702, 1
  br i1 %2703, label %2704, label %2723

2704:                                             ; preds = %2700
  %2705 = getelementptr inbounds %struct.bNodeTree, ptr %2698, i64 0, i32 7
  %2706 = load ptr, ptr %2705, align 8, !tbaa !42
  %2707 = icmp eq ptr %2706, null
  br i1 %2707, label %2723, label %2708

2708:                                             ; preds = %2704, %2720
  %2709 = phi ptr [ %2721, %2720 ], [ %2706, %2704 ]
  %2710 = getelementptr inbounds %struct.bNode, ptr %2709, i64 0, i32 8
  %2711 = load i16, ptr %2710, align 4, !tbaa !87
  %2712 = icmp eq i16 %2711, 225
  br i1 %2712, label %2713, label %2720

2713:                                             ; preds = %2708
  %2714 = getelementptr inbounds %struct.bNode, ptr %2709, i64 0, i32 21
  %2715 = load ptr, ptr %2714, align 8, !tbaa !89
  %2716 = icmp eq ptr %2715, null
  br i1 %2716, label %2717, label %2720

2717:                                             ; preds = %2713
  %2718 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %2719 = call ptr %2718(i64 noundef 8, ptr noundef nonnull @.str.5) #15
  store ptr %2719, ptr %2714, align 8, !tbaa !89
  br label %2720

2720:                                             ; preds = %2708, %2713, %2717
  %2721 = load ptr, ptr %2709, align 8, !tbaa !42
  %2722 = icmp eq ptr %2721, null
  br i1 %2722, label %2723, label %2708, !llvm.loop !487

2723:                                             ; preds = %2720, %2704, %2700, %2697
  %2724 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %33, ptr noundef nonnull %34, ptr noundef nonnull %35) #15
  %2725 = icmp eq i8 %2724, 1
  br i1 %2725, label %2697, label %2726, !llvm.loop !488

2726:                                             ; preds = %2723, %2694
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %35) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %34) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %33) #14
  %2727 = load i16, ptr %55, align 8, !tbaa !34
  br label %2728

2728:                                             ; preds = %2726, %2690
  %2729 = phi i16 [ %2727, %2726 ], [ %2691, %2690 ]
  %2730 = icmp slt i16 %2729, 266
  br i1 %2730, label %2738, label %2731

2731:                                             ; preds = %2662, %2572, %2728
  %2732 = phi i16 [ %2729, %2728 ], [ %2570, %2572 ], [ %2663, %2662 ]
  %2733 = icmp eq i16 %2732, 266
  br i1 %2733, label %2734, label %2796

2734:                                             ; preds = %2731
  %2735 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2736 = load i16, ptr %2735, align 2, !tbaa !74
  %2737 = icmp slt i16 %2736, 2
  br i1 %2737, label %2738, label %2753

2738:                                             ; preds = %2734, %2728
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %36) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %37) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %38) #14
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %36, ptr noundef nonnull %2) #15
  %2739 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %36, ptr noundef nonnull %37, ptr noundef nonnull %38) #15
  %2740 = icmp eq i8 %2739, 1
  br i1 %2740, label %2741, label %2748

2741:                                             ; preds = %2738, %2745
  %2742 = load ptr, ptr %37, align 8, !tbaa !42
  %2743 = icmp eq ptr %2742, null
  br i1 %2743, label %2745, label %2744

2744:                                             ; preds = %2741
  call fastcc void @do_versions_nodetree_customnodes(ptr noundef nonnull %2742) #13
  br label %2745

2745:                                             ; preds = %2744, %2741
  %2746 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %36, ptr noundef nonnull %37, ptr noundef nonnull %38) #15
  %2747 = icmp eq i8 %2746, 1
  br i1 %2747, label %2741, label %2748, !llvm.loop !489

2748:                                             ; preds = %2745, %2738
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %38) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %37) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %36) #14
  %2749 = load i16, ptr %55, align 8, !tbaa !34
  %2750 = icmp slt i16 %2749, 266
  br i1 %2750, label %2757, label %2751

2751:                                             ; preds = %2748
  %2752 = icmp eq i16 %2749, 266
  br i1 %2752, label %2753, label %2796

2753:                                             ; preds = %2734, %2751
  %2754 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2755 = load i16, ptr %2754, align 2, !tbaa !74
  %2756 = icmp slt i16 %2755, 2
  br i1 %2756, label %2757, label %2796

2757:                                             ; preds = %2753, %2748
  %2758 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %2759 = load ptr, ptr %2758, align 8, !tbaa !42
  %2760 = icmp eq ptr %2759, null
  br i1 %2760, label %2796, label %2764

2761:                                             ; preds = %2769, %2764
  %2762 = load ptr, ptr %2765, align 8, !tbaa !42
  %2763 = icmp eq ptr %2762, null
  br i1 %2763, label %2796, label %2764, !llvm.loop !490

2764:                                             ; preds = %2757, %2761
  %2765 = phi ptr [ %2762, %2761 ], [ %2759, %2757 ]
  %2766 = getelementptr inbounds %struct.bScreen, ptr %2765, i64 0, i32 3
  %2767 = load ptr, ptr %2766, align 8, !tbaa !42
  %2768 = icmp eq ptr %2767, null
  br i1 %2768, label %2761, label %2772

2769:                                             ; preds = %2793, %2772
  %2770 = load ptr, ptr %2773, align 8, !tbaa !42
  %2771 = icmp eq ptr %2770, null
  br i1 %2771, label %2761, label %2772, !llvm.loop !491

2772:                                             ; preds = %2764, %2769
  %2773 = phi ptr [ %2770, %2769 ], [ %2767, %2764 ]
  %2774 = getelementptr inbounds %struct.ScrArea, ptr %2773, i64 0, i32 19
  %2775 = load ptr, ptr %2774, align 8, !tbaa !42
  %2776 = icmp eq ptr %2775, null
  br i1 %2776, label %2769, label %2777

2777:                                             ; preds = %2772, %2793
  %2778 = phi ptr [ %2794, %2793 ], [ %2775, %2772 ]
  %2779 = getelementptr inbounds %struct.SpaceLink, ptr %2778, i64 0, i32 3
  %2780 = load i32, ptr %2779, align 8, !tbaa !105
  %2781 = icmp eq i32 %2780, 16
  br i1 %2781, label %2782, label %2793

2782:                                             ; preds = %2777
  %2783 = getelementptr inbounds %struct.SpaceNode, ptr %2778, i64 0, i32 18
  %2784 = getelementptr inbounds %struct.SpaceNode, ptr %2778, i64 0, i32 7
  %2785 = getelementptr inbounds %struct.SpaceNode, ptr %2778, i64 0, i32 21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2784, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2783, i8 0, i64 16, i1 false)
  %2786 = load i32, ptr %2785, align 8, !tbaa !492
  switch i32 %2786, label %2793 [
    i32 1, label %2787
    i32 0, label %2789
    i32 2, label %2791
  ]

2787:                                             ; preds = %2782
  %2788 = getelementptr inbounds %struct.SpaceNode, ptr %2778, i64 0, i32 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %2788, ptr noundef nonnull align 1 dereferenceable(19) @.str.6, i64 19, i1 false) #15
  br label %2793

2789:                                             ; preds = %2782
  %2790 = getelementptr inbounds %struct.SpaceNode, ptr %2778, i64 0, i32 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %2790, ptr noundef nonnull align 1 dereferenceable(15) @.str.7, i64 15, i1 false) #15
  br label %2793

2791:                                             ; preds = %2782
  %2792 = getelementptr inbounds %struct.SpaceNode, ptr %2778, i64 0, i32 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %2792, ptr noundef nonnull align 1 dereferenceable(16) @.str.8, i64 16, i1 false) #15
  br label %2793

2793:                                             ; preds = %2787, %2789, %2791, %2782, %2777
  %2794 = load ptr, ptr %2778, align 8, !tbaa !42
  %2795 = icmp eq ptr %2794, null
  br i1 %2795, label %2769, label %2777, !llvm.loop !493

2796:                                             ; preds = %2761, %2757, %2731, %2753, %2751
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %39) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %40) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %41) #14
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %39, ptr noundef %2) #15
  %2797 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %39, ptr noundef nonnull %40, ptr noundef nonnull %41) #15
  %2798 = icmp eq i8 %2797, 1
  br i1 %2798, label %2799, label %2820

2799:                                             ; preds = %2796
  %2800 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  br label %2801

2801:                                             ; preds = %2799, %2817
  %2802 = load ptr, ptr %40, align 8, !tbaa !42
  %2803 = icmp eq ptr %2802, null
  br i1 %2803, label %2817, label %2804

2804:                                             ; preds = %2801
  %2805 = getelementptr inbounds %struct.bNodeTree, ptr %2802, i64 0, i32 12
  %2806 = load i32, ptr %2805, align 4, !tbaa !494
  %2807 = or i32 %2806, 2048
  store i32 %2807, ptr %2805, align 4, !tbaa !494
  %2808 = load i16, ptr %55, align 8, !tbaa !34
  %2809 = icmp slt i16 %2808, 266
  br i1 %2809, label %2815, label %2810

2810:                                             ; preds = %2804
  %2811 = icmp eq i16 %2808, 266
  br i1 %2811, label %2812, label %2817

2812:                                             ; preds = %2810
  %2813 = load i16, ptr %2800, align 2, !tbaa !74
  %2814 = icmp slt i16 %2813, 2
  br i1 %2814, label %2815, label %2817

2815:                                             ; preds = %2812, %2804
  %2816 = or i32 %2806, 6144
  store i32 %2816, ptr %2805, align 4, !tbaa !494
  br label %2817

2817:                                             ; preds = %2810, %2812, %2815, %2801
  %2818 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %39, ptr noundef nonnull %40, ptr noundef nonnull %41) #15
  %2819 = icmp eq i8 %2818, 1
  br i1 %2819, label %2801, label %2820, !llvm.loop !495

2820:                                             ; preds = %2817, %2796
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %41) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %40) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %39) #14
  %2821 = load i16, ptr %55, align 8, !tbaa !34
  %2822 = icmp slt i16 %2821, 266
  br i1 %2822, label %2829, label %2823

2823:                                             ; preds = %2820
  %2824 = icmp eq i16 %2821, 266
  br i1 %2824, label %2825, label %3054

2825:                                             ; preds = %2823
  %2826 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2827 = load i16, ptr %2826, align 2, !tbaa !74
  %2828 = icmp slt i16 %2827, 3
  br i1 %2828, label %2829, label %2855

2829:                                             ; preds = %2825, %2820
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %42) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %43) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %44) #14
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %42, ptr noundef nonnull %2) #15
  %2830 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %42, ptr noundef nonnull %43, ptr noundef nonnull %44) #15
  %2831 = icmp eq i8 %2830, 1
  br i1 %2831, label %2832, label %2850

2832:                                             ; preds = %2829, %2847
  %2833 = load ptr, ptr %43, align 8, !tbaa !42
  %2834 = icmp eq ptr %2833, null
  %2835 = load ptr, ptr %44, align 8
  %2836 = icmp eq ptr %2835, %2833
  %2837 = select i1 %2834, i1 true, i1 %2836
  br i1 %2837, label %2847, label %2838

2838:                                             ; preds = %2832
  %2839 = getelementptr inbounds %struct.bNodeTree, ptr %2833, i64 0, i32 7
  %2840 = load ptr, ptr %2839, align 8, !tbaa !42
  %2841 = icmp eq ptr %2840, null
  br i1 %2841, label %2847, label %2842

2842:                                             ; preds = %2838, %2842
  %2843 = phi ptr [ %2845, %2842 ], [ %2840, %2838 ]
  %2844 = load ptr, ptr %43, align 8, !tbaa !42
  call void @nodeUniqueName(ptr noundef %2844, ptr noundef nonnull %2843) #15
  %2845 = load ptr, ptr %2843, align 8, !tbaa !42
  %2846 = icmp eq ptr %2845, null
  br i1 %2846, label %2847, label %2842, !llvm.loop !496

2847:                                             ; preds = %2842, %2832, %2838
  %2848 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %42, ptr noundef nonnull %43, ptr noundef nonnull %44) #15
  %2849 = icmp eq i8 %2848, 1
  br i1 %2849, label %2832, label %2850, !llvm.loop !497

2850:                                             ; preds = %2847, %2829
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %44) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %43) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %42) #14
  %2851 = load i16, ptr %55, align 8, !tbaa !34
  %2852 = icmp sgt i16 %2851, 266
  br i1 %2852, label %3054, label %2853

2853:                                             ; preds = %2850
  %2854 = icmp eq i16 %2851, 266
  br i1 %2854, label %2855, label %2859

2855:                                             ; preds = %2825, %2853
  %2856 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2857 = load i16, ptr %2856, align 2, !tbaa !74
  %2858 = icmp sgt i16 %2857, 3
  br i1 %2858, label %2884, label %2859

2859:                                             ; preds = %2855, %2853
  %2860 = phi i16 [ 266, %2855 ], [ %2851, %2853 ]
  %2861 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 36
  %2862 = load ptr, ptr %2861, align 8, !tbaa !42
  %2863 = icmp eq ptr %2862, null
  br i1 %2863, label %2881, label %2864

2864:                                             ; preds = %2859, %2875
  %2865 = phi ptr [ %2876, %2875 ], [ %2862, %2859 ]
  %2866 = getelementptr inbounds %struct.Brush, ptr %2865, i64 0, i32 4
  call void @default_mtex(ptr noundef nonnull %2866) #15
  %2867 = getelementptr inbounds %struct.Brush, ptr %2865, i64 0, i32 13
  %2868 = load i16, ptr %2867, align 2, !tbaa !484
  %2869 = and i16 %2868, 16
  %2870 = icmp eq i16 %2869, 0
  br i1 %2870, label %2875, label %2871

2871:                                             ; preds = %2864
  %2872 = getelementptr inbounds %struct.Brush, ptr %2865, i64 0, i32 21
  %2873 = load i32, ptr %2872, align 4, !tbaa !498
  %2874 = sdiv i32 %2873, 2
  store i32 %2874, ptr %2872, align 4, !tbaa !498
  br label %2875

2875:                                             ; preds = %2864, %2871
  %2876 = load ptr, ptr %2865, align 8, !tbaa !42
  %2877 = icmp eq ptr %2876, null
  br i1 %2877, label %2878, label %2864, !llvm.loop !499

2878:                                             ; preds = %2875
  %2879 = load i16, ptr %55, align 8, !tbaa !34
  %2880 = icmp sgt i16 %2879, 266
  br i1 %2880, label %3054, label %2881

2881:                                             ; preds = %2859, %2878
  %2882 = phi i16 [ %2879, %2878 ], [ %2860, %2859 ]
  %2883 = icmp eq i16 %2882, 266
  br i1 %2883, label %2884, label %2888

2884:                                             ; preds = %2855, %2881
  %2885 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2886 = load i16, ptr %2885, align 2, !tbaa !74
  %2887 = icmp sgt i16 %2886, 5
  br i1 %2887, label %2906, label %2888

2888:                                             ; preds = %2884, %2881
  %2889 = phi i16 [ 266, %2884 ], [ %2882, %2881 ]
  %2890 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 36
  %2891 = load ptr, ptr %2890, align 8, !tbaa !42
  %2892 = icmp eq ptr %2891, null
  br i1 %2892, label %2906, label %2893

2893:                                             ; preds = %2888, %2893
  %2894 = phi ptr [ %2901, %2893 ], [ %2891, %2888 ]
  %2895 = getelementptr inbounds %struct.Brush, ptr %2894, i64 0, i32 20
  %2896 = getelementptr inbounds %struct.Brush, ptr %2894, i64 0, i32 16
  %2897 = load i32, ptr %2896, align 8, !tbaa !500
  %2898 = and i32 %2897, 2097152
  %2899 = icmp eq i32 %2898, 0
  %2900 = select i1 %2899, i32 0, i32 3
  store i32 %2900, ptr %2895, align 8
  %2901 = load ptr, ptr %2894, align 8, !tbaa !42
  %2902 = icmp eq ptr %2901, null
  br i1 %2902, label %2903, label %2893, !llvm.loop !501

2903:                                             ; preds = %2893
  %2904 = load i16, ptr %55, align 8, !tbaa !34
  %2905 = icmp slt i16 %2904, 267
  br i1 %2905, label %2906, label %3054

2906:                                             ; preds = %2884, %2888, %2903
  %2907 = phi i16 [ %2904, %2903 ], [ 266, %2884 ], [ %2889, %2888 ]
  %2908 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 36
  %2909 = load ptr, ptr %2908, align 8, !tbaa !42
  %2910 = icmp eq ptr %2909, null
  br i1 %2910, label %2927, label %2911

2911:                                             ; preds = %2906, %2924
  %2912 = phi ptr [ %2925, %2924 ], [ %2909, %2906 ]
  %2913 = getelementptr inbounds %struct.Brush, ptr %2912, i64 0, i32 54
  %2914 = load float, ptr %2913, align 8, !tbaa !128
  %2915 = fcmp oeq float %2914, 0.000000e+00
  br i1 %2915, label %2916, label %2918

2916:                                             ; preds = %2911
  %2917 = getelementptr inbounds %struct.Brush, ptr %2912, i64 0, i32 53
  store <4 x float> <float 2.560000e+02, float 2.560000e+02, float 2.560000e+02, float 2.560000e+02>, ptr %2917, align 8, !tbaa !128
  br label %2918

2918:                                             ; preds = %2916, %2911
  %2919 = getelementptr inbounds %struct.Brush, ptr %2912, i64 0, i32 56
  %2920 = load float, ptr %2919, align 8, !tbaa !128
  %2921 = fcmp oeq float %2920, 0.000000e+00
  br i1 %2921, label %2922, label %2924

2922:                                             ; preds = %2918
  %2923 = getelementptr inbounds %struct.Brush, ptr %2912, i64 0, i32 55
  store <4 x float> <float 2.560000e+02, float 2.560000e+02, float 2.560000e+02, float 2.560000e+02>, ptr %2923, align 8, !tbaa !128
  br label %2924

2924:                                             ; preds = %2918, %2922
  %2925 = load ptr, ptr %2912, align 8, !tbaa !42
  %2926 = icmp eq ptr %2925, null
  br i1 %2926, label %2927, label %2911, !llvm.loop !502

2927:                                             ; preds = %2924, %2906
  %2928 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %2929 = load ptr, ptr %2928, align 8, !tbaa !42
  %2930 = icmp eq ptr %2929, null
  br i1 %2930, label %2972, label %2931

2931:                                             ; preds = %2927, %2969
  %2932 = phi ptr [ %2970, %2969 ], [ %2929, %2927 ]
  %2933 = getelementptr inbounds %struct.Scene, ptr %2932, i64 0, i32 22, i32 113
  %2934 = load i32, ptr %2933, align 8, !tbaa !503
  %2935 = icmp eq i32 %2934, 0
  br i1 %2935, label %2936, label %2938

2936:                                             ; preds = %2931
  store i32 1, ptr %2933, align 8, !tbaa !503
  %2937 = getelementptr inbounds %struct.Scene, ptr %2932, i64 0, i32 22, i32 114
  store float 1.000000e+00, ptr %2937, align 4, !tbaa !504
  br label %2938

2938:                                             ; preds = %2936, %2931
  %2939 = getelementptr inbounds %struct.Scene, ptr %2932, i64 0, i32 22, i32 60
  %2940 = load ptr, ptr %2939, align 8, !tbaa !42
  %2941 = icmp eq ptr %2940, null
  br i1 %2941, label %2958, label %2942

2942:                                             ; preds = %2938, %2955
  %2943 = phi ptr [ %2956, %2955 ], [ %2940, %2938 ]
  %2944 = getelementptr inbounds %struct.SceneRenderLayer, ptr %2943, i64 0, i32 13, i32 1
  %2945 = load i32, ptr %2944, align 8, !tbaa !505
  %2946 = icmp eq i32 %2945, 0
  br i1 %2946, label %2947, label %2948

2947:                                             ; preds = %2942
  store i32 2, ptr %2944, align 8, !tbaa !505
  br label %2948

2948:                                             ; preds = %2947, %2942
  %2949 = getelementptr inbounds %struct.SceneRenderLayer, ptr %2943, i64 0, i32 13, i32 2
  %2950 = load i32, ptr %2949, align 4, !tbaa !508
  switch i32 %2950, label %2955 [
    i32 6, label %2951
    i32 4, label %2951
  ]

2951:                                             ; preds = %2948, %2948
  store i32 0, ptr %2949, align 4, !tbaa !508
  %2952 = getelementptr inbounds %struct.SceneRenderLayer, ptr %2943, i64 0, i32 13, i32 3
  %2953 = load i32, ptr %2952, align 8, !tbaa !509
  %2954 = or i32 %2953, 32
  store i32 %2954, ptr %2952, align 8, !tbaa !509
  br label %2955

2955:                                             ; preds = %2948, %2951
  %2956 = load ptr, ptr %2943, align 8, !tbaa !42
  %2957 = icmp eq ptr %2956, null
  br i1 %2957, label %2958, label %2942, !llvm.loop !510

2958:                                             ; preds = %2955, %2938
  %2959 = getelementptr inbounds %struct.Scene, ptr %2932, i64 0, i32 20
  %2960 = load ptr, ptr %2959, align 8, !tbaa !194
  %2961 = getelementptr inbounds %struct.ToolSettings, ptr %2960, i64 0, i32 74, i32 7
  %2962 = load i8, ptr %2961, align 4, !tbaa !511
  %2963 = icmp eq i8 %2962, 0
  br i1 %2963, label %2964, label %2969

2964:                                             ; preds = %2958
  %2965 = getelementptr inbounds %struct.ToolSettings, ptr %2960, i64 0, i32 74, i32 2
  store i8 5, ptr %2965, align 1, !tbaa !512
  %2966 = getelementptr inbounds %struct.ToolSettings, ptr %2960, i64 0, i32 74, i32 3
  store <2 x float> <float 0.000000e+00, float 0x3FE921FB60000000>, ptr %2966, align 4, !tbaa !128
  %2967 = getelementptr inbounds %struct.ToolSettings, ptr %2960, i64 0, i32 74, i32 6
  store float 0x3FB99999A0000000, ptr %2967, align 4, !tbaa !513
  store i8 1, ptr %2961, align 4, !tbaa !511
  %2968 = getelementptr inbounds %struct.ToolSettings, ptr %2960, i64 0, i32 74, i32 9
  store <4 x float> <float 0x3FB6571840000000, float 0x3FE921FB60000000, float 0x3FF921FB60000000, float 0x400921FB60000000>, ptr %2968, align 4, !tbaa !128
  br label %2969

2969:                                             ; preds = %2964, %2958
  %2970 = load ptr, ptr %2932, align 8, !tbaa !42
  %2971 = icmp eq ptr %2970, null
  br i1 %2971, label %2972, label %2931, !llvm.loop !514

2972:                                             ; preds = %2969, %2927
  %2973 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 44
  %2974 = load ptr, ptr %2973, align 8, !tbaa !42
  %2975 = icmp eq ptr %2974, null
  br i1 %2975, label %3001, label %2976

2976:                                             ; preds = %2972, %2998
  %2977 = phi ptr [ %2999, %2998 ], [ %2974, %2972 ]
  %2978 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %2977, i64 0, i32 38
  %2979 = load i32, ptr %2978, align 4, !tbaa !515
  %2980 = icmp eq i32 %2979, 7
  br i1 %2980, label %2981, label %2982

2981:                                             ; preds = %2976
  store i32 1, ptr %2978, align 4, !tbaa !515
  br label %2982

2982:                                             ; preds = %2981, %2976
  %2983 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %2977, i64 0, i32 7
  %2984 = load i32, ptr %2983, align 4, !tbaa !517
  %2985 = icmp eq i32 %2984, 0
  br i1 %2985, label %2986, label %2988

2986:                                             ; preds = %2982
  store i32 1, ptr %2983, align 4, !tbaa !517
  %2987 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %2977, i64 0, i32 8
  store float 5.000000e-01, ptr %2987, align 8, !tbaa !518
  br label %2988

2988:                                             ; preds = %2986, %2982
  %2989 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %2977, i64 0, i32 11
  %2990 = load i32, ptr %2989, align 4, !tbaa !519
  %2991 = icmp eq i32 %2990, 0
  br i1 %2991, label %2992, label %2993

2992:                                             ; preds = %2988
  store i32 1, ptr %2989, align 4, !tbaa !519
  br label %2993

2993:                                             ; preds = %2992, %2988
  %2994 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %2977, i64 0, i32 12
  %2995 = load i32, ptr %2994, align 8, !tbaa !520
  %2996 = icmp eq i32 %2995, 0
  br i1 %2996, label %2997, label %2998

2997:                                             ; preds = %2993
  store i32 3, ptr %2994, align 8, !tbaa !520
  br label %2998

2998:                                             ; preds = %2993, %2997
  %2999 = load ptr, ptr %2977, align 8, !tbaa !42
  %3000 = icmp eq ptr %2999, null
  br i1 %3000, label %3001, label %2976, !llvm.loop !521

3001:                                             ; preds = %2998, %2972
  %3002 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %3003 = load ptr, ptr %3002, align 8, !tbaa !42
  %3004 = icmp eq ptr %3003, null
  br i1 %3004, label %3037, label %3008

3005:                                             ; preds = %3011
  %3006 = load ptr, ptr %3009, align 8, !tbaa !42
  %3007 = icmp eq ptr %3006, null
  br i1 %3007, label %3037, label %3008

3008:                                             ; preds = %3001, %3005
  %3009 = phi ptr [ %3006, %3005 ], [ %3003, %3001 ]
  %3010 = getelementptr inbounds %struct.bScreen, ptr %3009, i64 0, i32 3
  br label %3011

3011:                                             ; preds = %3034, %3008
  %3012 = phi ptr [ %3010, %3008 ], [ %3013, %3034 ]
  %3013 = load ptr, ptr %3012, align 8, !tbaa !42
  %3014 = icmp eq ptr %3013, null
  br i1 %3014, label %3005, label %3015

3015:                                             ; preds = %3011
  %3016 = getelementptr inbounds %struct.ScrArea, ptr %3013, i64 0, i32 19
  %3017 = load ptr, ptr %3016, align 8, !tbaa !42
  %3018 = icmp eq ptr %3017, null
  br i1 %3018, label %3034, label %3019

3019:                                             ; preds = %3015, %3031
  %3020 = phi ptr [ %3032, %3031 ], [ %3017, %3015 ]
  %3021 = getelementptr inbounds %struct.SpaceLink, ptr %3020, i64 0, i32 3
  %3022 = load i32, ptr %3021, align 8, !tbaa !105
  %3023 = icmp eq i32 %3022, 16
  br i1 %3023, label %3024, label %3031

3024:                                             ; preds = %3019
  %3025 = getelementptr inbounds %struct.SpaceNode, ptr %3020, i64 0, i32 17, i32 1
  %3026 = load ptr, ptr %3025, align 8, !tbaa !522
  %3027 = icmp eq ptr %3026, null
  br i1 %3027, label %3031, label %3028

3028:                                             ; preds = %3024
  %3029 = getelementptr inbounds %struct.bNodeTreePath, ptr %3026, i64 0, i32 3
  %3030 = load i32, ptr %3029, align 8, !tbaa.struct !523
  br label %3034

3031:                                             ; preds = %3024, %3019
  %3032 = load ptr, ptr %3020, align 8, !tbaa !42
  %3033 = icmp eq ptr %3032, null
  br i1 %3033, label %3034, label %3019, !llvm.loop !524

3034:                                             ; preds = %3031, %3015, %3028
  %3035 = phi i32 [ %3030, %3028 ], [ 0, %3015 ], [ 0, %3031 ]
  %3036 = icmp eq i32 %3035, 0
  br i1 %3036, label %3011, label %3037

3037:                                             ; preds = %3005, %3034, %3001
  %3038 = phi i32 [ 0, %3001 ], [ %3035, %3034 ], [ 0, %3005 ]
  br i1 %2930, label %3051, label %3039

3039:                                             ; preds = %3037, %3046
  %3040 = phi ptr [ %3047, %3046 ], [ %2929, %3037 ]
  %3041 = getelementptr inbounds %struct.Scene, ptr %3040, i64 0, i32 18
  %3042 = load ptr, ptr %3041, align 8, !tbaa !65
  %3043 = icmp eq ptr %3042, null
  br i1 %3043, label %3046, label %3044

3044:                                             ; preds = %3039
  %3045 = getelementptr inbounds %struct.bNodeTree, ptr %3042, i64 0, i32 25
  store i32 %3038, ptr %3045, align 8, !tbaa.struct !523
  br label %3046

3046:                                             ; preds = %3039, %3044
  %3047 = load ptr, ptr %3040, align 8, !tbaa !42
  %3048 = icmp eq ptr %3047, null
  br i1 %3048, label %3049, label %3039, !llvm.loop !525

3049:                                             ; preds = %3046
  %3050 = load i16, ptr %55, align 8, !tbaa !34
  br label %3051

3051:                                             ; preds = %3049, %3037
  %3052 = phi i16 [ %3050, %3049 ], [ %2907, %3037 ]
  %3053 = icmp slt i16 %3052, 267
  br i1 %3053, label %3061, label %3054

3054:                                             ; preds = %2823, %2850, %2903, %2878, %3051
  %3055 = phi i16 [ %3052, %3051 ], [ %2904, %2903 ], [ %2879, %2878 ], [ %2821, %2823 ], [ %2851, %2850 ]
  %3056 = icmp eq i16 %3055, 267
  br i1 %3056, label %3057, label %3097

3057:                                             ; preds = %3054
  %3058 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3059 = load i16, ptr %3058, align 2, !tbaa !74
  %3060 = icmp slt i16 %3059, 1
  br i1 %3060, label %3061, label %3106

3061:                                             ; preds = %3057, %3051
  %3062 = phi i16 [ 267, %3057 ], [ %3052, %3051 ]
  %3063 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %3064 = load ptr, ptr %3063, align 8, !tbaa !42
  %3065 = icmp eq ptr %3064, null
  br i1 %3065, label %3106, label %3069

3066:                                             ; preds = %3094, %3069
  %3067 = load ptr, ptr %3070, align 8, !tbaa !42
  %3068 = icmp eq ptr %3067, null
  br i1 %3068, label %3097, label %3069, !llvm.loop !526

3069:                                             ; preds = %3061, %3066
  %3070 = phi ptr [ %3067, %3066 ], [ %3064, %3061 ]
  %3071 = getelementptr inbounds %struct.Object, ptr %3070, i64 0, i32 26
  %3072 = load ptr, ptr %3071, align 8, !tbaa !42
  %3073 = icmp eq ptr %3072, null
  br i1 %3073, label %3066, label %3074

3074:                                             ; preds = %3069, %3094
  %3075 = phi ptr [ %3095, %3094 ], [ %3072, %3069 ]
  %3076 = getelementptr inbounds %struct.ModifierData, ptr %3075, i64 0, i32 2
  %3077 = load i32, ptr %3076, align 8, !tbaa !216
  %3078 = icmp eq i32 %3077, 31
  br i1 %3078, label %3079, label %3094

3079:                                             ; preds = %3074
  %3080 = getelementptr inbounds %struct.SmokeModifierData, ptr %3075, i64 0, i32 5
  %3081 = load i32, ptr %3080, align 4, !tbaa !291
  %3082 = and i32 %3081, 1
  %3083 = icmp eq i32 %3082, 0
  br i1 %3083, label %3094, label %3084

3084:                                             ; preds = %3079
  %3085 = getelementptr inbounds %struct.SmokeModifierData, ptr %3075, i64 0, i32 1
  %3086 = load ptr, ptr %3085, align 8, !tbaa !293
  %3087 = icmp eq ptr %3086, null
  br i1 %3087, label %3094, label %3088

3088:                                             ; preds = %3084
  %3089 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3086, i64 0, i32 37
  %3090 = load i32, ptr %3089, align 4, !tbaa !527
  %3091 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3086, i64 0, i32 55
  %3092 = lshr i32 %3090, 5
  %3093 = and i32 %3092, 1
  store i32 %3093, ptr %3091, align 4, !tbaa !528
  br label %3094

3094:                                             ; preds = %3088, %3079, %3084, %3074
  %3095 = load ptr, ptr %3075, align 8, !tbaa !42
  %3096 = icmp eq ptr %3095, null
  br i1 %3096, label %3066, label %3074, !llvm.loop !529

3097:                                             ; preds = %3066, %3054
  %3098 = phi i16 [ %3055, %3054 ], [ %3062, %3066 ]
  %3099 = icmp sgt i16 %3098, 268
  br i1 %3099, label %3346, label %3100

3100:                                             ; preds = %3097
  %3101 = icmp eq i16 %3098, 268
  br i1 %3101, label %3102, label %3106

3102:                                             ; preds = %3100
  %3103 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3104 = load i16, ptr %3103, align 2, !tbaa !74
  %3105 = icmp sgt i16 %3104, 0
  br i1 %3105, label %3123, label %3106

3106:                                             ; preds = %3061, %3057, %3102, %3100
  %3107 = phi i16 [ 268, %3102 ], [ %3098, %3100 ], [ 267, %3057 ], [ %3062, %3061 ]
  %3108 = phi i1 [ true, %3102 ], [ false, %3100 ], [ false, %3057 ], [ false, %3061 ]
  %3109 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 36
  %3110 = load ptr, ptr %3109, align 8, !tbaa !42
  %3111 = icmp eq ptr %3110, null
  br i1 %3111, label %3119, label %3112

3112:                                             ; preds = %3106, %3112
  %3113 = phi ptr [ %3117, %3112 ], [ %3110, %3106 ]
  %3114 = getelementptr inbounds %struct.Brush, ptr %3113, i64 0, i32 21
  %3115 = load i32, ptr %3114, align 4, !tbaa !498
  %3116 = call i32 @llvm.smax.i32(i32 %3115, i32 1)
  store i32 %3116, ptr %3114, align 4, !tbaa !498
  %3117 = load ptr, ptr %3113, align 8, !tbaa !42
  %3118 = icmp eq ptr %3117, null
  br i1 %3118, label %3119, label %3112, !llvm.loop !530

3119:                                             ; preds = %3112, %3106
  br i1 %3108, label %3120, label %3130

3120:                                             ; preds = %3119
  %3121 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3122 = load i16, ptr %3121, align 2, !tbaa !74
  br label %3123

3123:                                             ; preds = %3120, %3102
  %3124 = phi i16 [ %3107, %3120 ], [ 268, %3102 ]
  %3125 = phi i16 [ %3122, %3120 ], [ %3104, %3102 ]
  %3126 = icmp sgt i16 %3125, 1
  br i1 %3126, label %3161, label %3127

3127:                                             ; preds = %3123
  %3128 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 36
  %3129 = load ptr, ptr %3128, align 8, !tbaa !42
  br label %3130

3130:                                             ; preds = %3127, %3119
  %3131 = phi i16 [ %3124, %3127 ], [ %3107, %3119 ]
  %3132 = phi ptr [ %3129, %3127 ], [ %3110, %3119 ]
  %3133 = phi i1 [ true, %3127 ], [ false, %3119 ]
  %3134 = icmp eq ptr %3132, null
  br i1 %3134, label %3157, label %3135

3135:                                             ; preds = %3130, %3154
  %3136 = phi ptr [ %3155, %3154 ], [ %3132, %3130 ]
  %3137 = getelementptr inbounds %struct.Brush, ptr %3136, i64 0, i32 16
  %3138 = load i32, ptr %3137, align 8, !tbaa !500
  %3139 = and i32 %3138, -65
  store i32 %3139, ptr %3137, align 8, !tbaa !500
  %3140 = getelementptr inbounds %struct.Brush, ptr %3136, i64 0, i32 45
  %3141 = load i32, ptr %3140, align 8, !tbaa !531
  %3142 = icmp slt i32 %3141, 2
  br i1 %3142, label %3143, label %3144

3143:                                             ; preds = %3135
  store i32 33, ptr %3140, align 8, !tbaa !531
  br label %3144

3144:                                             ; preds = %3143, %3135
  %3145 = getelementptr inbounds %struct.Brush, ptr %3136, i64 0, i32 43
  %3146 = load i32, ptr %3145, align 8, !tbaa !532
  %3147 = icmp slt i32 %3146, 2
  br i1 %3147, label %3148, label %3149

3148:                                             ; preds = %3144
  store i32 33, ptr %3145, align 8, !tbaa !532
  br label %3149

3149:                                             ; preds = %3148, %3144
  %3150 = getelementptr inbounds %struct.Brush, ptr %3136, i64 0, i32 44
  %3151 = load i32, ptr %3150, align 4, !tbaa !533
  %3152 = icmp slt i32 %3151, 2
  br i1 %3152, label %3153, label %3154

3153:                                             ; preds = %3149
  store i32 33, ptr %3150, align 4, !tbaa !533
  br label %3154

3154:                                             ; preds = %3149, %3153
  %3155 = load ptr, ptr %3136, align 8, !tbaa !42
  %3156 = icmp eq ptr %3155, null
  br i1 %3156, label %3157, label %3135, !llvm.loop !534

3157:                                             ; preds = %3154, %3130
  br i1 %3133, label %3158, label %3165

3158:                                             ; preds = %3157
  %3159 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3160 = load i16, ptr %3159, align 2, !tbaa !74
  br label %3161

3161:                                             ; preds = %3158, %3123
  %3162 = phi i16 [ %3131, %3158 ], [ %3124, %3123 ]
  %3163 = phi i16 [ %3160, %3158 ], [ %3125, %3123 ]
  %3164 = icmp sgt i16 %3163, 3
  br i1 %3164, label %3302, label %3165

3165:                                             ; preds = %3161, %3157
  %3166 = phi i16 [ %3162, %3161 ], [ %3131, %3157 ]
  %3167 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %3168 = load ptr, ptr %3167, align 8, !tbaa !42
  %3169 = icmp eq ptr %3168, null
  br i1 %3169, label %3230, label %3174

3170:                                             ; preds = %3197, %3174
  %3171 = load ptr, ptr %3175, align 8, !tbaa !42
  %3172 = icmp eq ptr %3171, null
  br i1 %3172, label %3173, label %3174, !llvm.loop !535

3173:                                             ; preds = %3170
  br i1 %3169, label %3230, label %3203

3174:                                             ; preds = %3165, %3170
  %3175 = phi ptr [ %3171, %3170 ], [ %3168, %3165 ]
  %3176 = getelementptr inbounds %struct.Object, ptr %3175, i64 0, i32 106
  %3177 = load ptr, ptr %3176, align 8, !tbaa !42
  %3178 = icmp eq ptr %3177, null
  br i1 %3178, label %3170, label %3179

3179:                                             ; preds = %3174, %3197
  %3180 = phi ptr [ %3198, %3197 ], [ %3177, %3174 ]
  %3181 = getelementptr inbounds %struct.bConstraint, ptr %3180, i64 0, i32 3
  %3182 = load i16, ptr %3181, align 8, !tbaa !178
  %3183 = icmp eq i16 %3182, 20
  br i1 %3183, label %3184, label %3197

3184:                                             ; preds = %3179
  %3185 = getelementptr inbounds %struct.bConstraint, ptr %3180, i64 0, i32 2
  %3186 = load ptr, ptr %3185, align 8, !tbaa !180
  %3187 = getelementptr inbounds %struct.bShrinkwrapConstraint, ptr %3186, i64 0, i32 3
  %3188 = load i8, ptr %3187, align 2, !tbaa !536
  %3189 = zext i8 %3188 to i32
  %3190 = and i32 %3189, 1
  %3191 = icmp eq i32 %3190, 0
  %3192 = and i32 %3189, 2
  %3193 = icmp eq i32 %3192, 0
  %3194 = select i1 %3193, i8 2, i8 1
  %3195 = select i1 %3191, i8 %3194, i8 0
  store i8 %3195, ptr %3187, align 2, !tbaa !536
  %3196 = getelementptr inbounds %struct.bShrinkwrapConstraint, ptr %3186, i64 0, i32 4
  store i8 1, ptr %3196, align 1, !tbaa !538
  br label %3197

3197:                                             ; preds = %3179, %3184
  %3198 = load ptr, ptr %3180, align 8, !tbaa !42
  %3199 = icmp eq ptr %3198, null
  br i1 %3199, label %3170, label %3179, !llvm.loop !539

3200:                                             ; preds = %3227, %3203
  %3201 = load ptr, ptr %3204, align 8, !tbaa !42
  %3202 = icmp eq ptr %3201, null
  br i1 %3202, label %3230, label %3203, !llvm.loop !540

3203:                                             ; preds = %3173, %3200
  %3204 = phi ptr [ %3201, %3200 ], [ %3168, %3173 ]
  %3205 = getelementptr inbounds %struct.Object, ptr %3204, i64 0, i32 26
  %3206 = load ptr, ptr %3205, align 8, !tbaa !42
  %3207 = icmp eq ptr %3206, null
  br i1 %3207, label %3200, label %3208

3208:                                             ; preds = %3203, %3227
  %3209 = phi ptr [ %3228, %3227 ], [ %3206, %3203 ]
  %3210 = getelementptr inbounds %struct.ModifierData, ptr %3209, i64 0, i32 2
  %3211 = load i32, ptr %3210, align 8, !tbaa !216
  %3212 = icmp eq i32 %3211, 31
  br i1 %3212, label %3213, label %3227

3213:                                             ; preds = %3208
  %3214 = getelementptr inbounds %struct.SmokeModifierData, ptr %3209, i64 0, i32 5
  %3215 = load i32, ptr %3214, align 4, !tbaa !291
  %3216 = and i32 %3215, 2
  %3217 = icmp eq i32 %3216, 0
  br i1 %3217, label %3227, label %3218

3218:                                             ; preds = %3213
  %3219 = getelementptr inbounds %struct.SmokeModifierData, ptr %3209, i64 0, i32 2
  %3220 = load ptr, ptr %3219, align 8, !tbaa !384
  %3221 = icmp eq ptr %3220, null
  br i1 %3221, label %3227, label %3222

3222:                                             ; preds = %3218
  %3223 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %3220, i64 0, i32 15
  %3224 = load float, ptr %3223, align 8, !tbaa !541
  %3225 = fcmp une float %3224, 0.000000e+00
  br i1 %3225, label %3227, label %3226

3226:                                             ; preds = %3222
  store float 1.000000e+00, ptr %3223, align 8, !tbaa !541
  br label %3227

3227:                                             ; preds = %3213, %3218, %3226, %3222, %3208
  %3228 = load ptr, ptr %3209, align 8, !tbaa !42
  %3229 = icmp eq ptr %3228, null
  br i1 %3229, label %3200, label %3208, !llvm.loop !542

3230:                                             ; preds = %3200, %3165, %3173
  %3231 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %3232 = load ptr, ptr %3231, align 8, !tbaa !42
  %3233 = icmp eq ptr %3232, null
  br i1 %3233, label %3237, label %3238

3234:                                             ; preds = %3243, %3238
  %3235 = load ptr, ptr %3239, align 8, !tbaa !42
  %3236 = icmp eq ptr %3235, null
  br i1 %3236, label %3237, label %3238, !llvm.loop !543

3237:                                             ; preds = %3234, %3230
  br i1 %3169, label %3302, label %3267

3238:                                             ; preds = %3230, %3234
  %3239 = phi ptr [ %3235, %3234 ], [ %3232, %3230 ]
  %3240 = getelementptr inbounds %struct.bScreen, ptr %3239, i64 0, i32 3
  %3241 = load ptr, ptr %3240, align 8, !tbaa !42
  %3242 = icmp eq ptr %3241, null
  br i1 %3242, label %3234, label %3246

3243:                                             ; preds = %3261, %3246
  %3244 = load ptr, ptr %3247, align 8, !tbaa !42
  %3245 = icmp eq ptr %3244, null
  br i1 %3245, label %3234, label %3246, !llvm.loop !544

3246:                                             ; preds = %3238, %3243
  %3247 = phi ptr [ %3244, %3243 ], [ %3241, %3238 ]
  %3248 = getelementptr inbounds %struct.ScrArea, ptr %3247, i64 0, i32 19
  %3249 = load ptr, ptr %3248, align 8, !tbaa !42
  %3250 = icmp eq ptr %3249, null
  br i1 %3250, label %3243, label %3251

3251:                                             ; preds = %3246, %3261
  %3252 = phi ptr [ %3262, %3261 ], [ %3249, %3246 ]
  %3253 = getelementptr inbounds %struct.SpaceLink, ptr %3252, i64 0, i32 3
  %3254 = load i32, ptr %3253, align 8, !tbaa !105
  %3255 = icmp eq i32 %3254, 16
  br i1 %3255, label %3256, label %3261

3256:                                             ; preds = %3251
  %3257 = getelementptr inbounds %struct.SpaceNode, ptr %3252, i64 0, i32 15
  %3258 = load float, ptr %3257, align 4, !tbaa !545
  %3259 = fcmp olt float %3258, 0x3F947AE140000000
  br i1 %3259, label %3260, label %3261

3260:                                             ; preds = %3256
  store float 1.000000e+00, ptr %3257, align 4, !tbaa !545
  br label %3261

3261:                                             ; preds = %3256, %3260, %3251
  %3262 = load ptr, ptr %3252, align 8, !tbaa !42
  %3263 = icmp eq ptr %3262, null
  br i1 %3263, label %3243, label %3251, !llvm.loop !546

3264:                                             ; preds = %3297, %3267
  %3265 = load ptr, ptr %3268, align 8, !tbaa !42
  %3266 = icmp eq ptr %3265, null
  br i1 %3266, label %3300, label %3267, !llvm.loop !547

3267:                                             ; preds = %3237, %3264
  %3268 = phi ptr [ %3265, %3264 ], [ %3168, %3237 ]
  %3269 = getelementptr inbounds %struct.Object, ptr %3268, i64 0, i32 92
  %3270 = load ptr, ptr %3269, align 8, !tbaa !42
  %3271 = icmp eq ptr %3270, null
  br i1 %3271, label %3264, label %3272

3272:                                             ; preds = %3267
  %3273 = getelementptr inbounds %struct.ID, ptr %3268, i64 0, i32 3
  br label %3274

3274:                                             ; preds = %3272, %3297
  %3275 = phi ptr [ %3270, %3272 ], [ %3298, %3297 ]
  %3276 = getelementptr inbounds %struct.bSensor, ptr %3275, i64 0, i32 2
  %3277 = load i16, ptr %3276, align 8, !tbaa !548
  %3278 = icmp eq i16 %3277, 1
  br i1 %3278, label %3279, label %3297

3279:                                             ; preds = %3274
  %3280 = getelementptr inbounds %struct.bSensor, ptr %3275, i64 0, i32 11
  %3281 = load ptr, ptr %3280, align 8, !tbaa !550
  %3282 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %3283 = call ptr %3282(i64 noundef 136, ptr noundef nonnull @.str.9) #15
  %3284 = getelementptr inbounds %struct.bTouchSensor, ptr %3281, i64 0, i32 1
  %3285 = load ptr, ptr %3284, align 8, !tbaa !551
  %3286 = icmp eq ptr %3285, null
  br i1 %3286, label %3293, label %3287

3287:                                             ; preds = %3279
  %3288 = load ptr, ptr %3273, align 8, !tbaa !553
  %3289 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %3288, ptr noundef nonnull %3285) #15
  %3290 = getelementptr inbounds %struct.bCollisionSensor, ptr %3283, i64 0, i32 1
  %3291 = getelementptr inbounds %struct.ID, ptr %3289, i64 0, i32 4, i64 2
  %3292 = call ptr @BLI_strncpy(ptr noundef nonnull %3290, ptr noundef nonnull %3291, i64 noundef 64) #15
  br label %3293

3293:                                             ; preds = %3287, %3279
  %3294 = getelementptr inbounds %struct.bCollisionSensor, ptr %3283, i64 0, i32 4
  store i16 1, ptr %3294, align 2, !tbaa !554
  %3295 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %3295(ptr noundef nonnull %3281) #15
  store ptr %3283, ptr %3280, align 8, !tbaa !550
  %3296 = getelementptr inbounds %struct.bSensor, ptr %3275, i64 0, i32 3
  store i16 6, ptr %3296, align 2, !tbaa !556
  store i16 6, ptr %3276, align 8, !tbaa !548
  br label %3297

3297:                                             ; preds = %3274, %3293
  %3298 = load ptr, ptr %3275, align 8, !tbaa !42
  %3299 = icmp eq ptr %3298, null
  br i1 %3299, label %3264, label %3274, !llvm.loop !557

3300:                                             ; preds = %3264
  %3301 = load i16, ptr %55, align 8, !tbaa !34
  br label %3302

3302:                                             ; preds = %3300, %3237, %3161
  %3303 = phi i16 [ %3301, %3300 ], [ %3166, %3237 ], [ %3162, %3161 ]
  %3304 = icmp sgt i16 %3303, 268
  br i1 %3304, label %3346, label %3305

3305:                                             ; preds = %3302
  %3306 = icmp eq i16 %3303, 268
  br i1 %3306, label %3307, label %3311

3307:                                             ; preds = %3305
  %3308 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3309 = load i16, ptr %3308, align 2, !tbaa !74
  %3310 = icmp sgt i16 %3309, 4
  br i1 %3310, label %3355, label %3311

3311:                                             ; preds = %3307, %3305
  %3312 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %3313 = load ptr, ptr %3312, align 8, !tbaa !42
  %3314 = icmp eq ptr %3313, null
  br i1 %3314, label %3355, label %3318

3315:                                             ; preds = %3341, %3318
  %3316 = load ptr, ptr %3319, align 8, !tbaa !42
  %3317 = icmp eq ptr %3316, null
  br i1 %3317, label %3344, label %3318, !llvm.loop !558

3318:                                             ; preds = %3311, %3315
  %3319 = phi ptr [ %3316, %3315 ], [ %3313, %3311 ]
  %3320 = getelementptr inbounds %struct.bScreen, ptr %3319, i64 0, i32 3
  %3321 = load ptr, ptr %3320, align 8, !tbaa !42
  %3322 = icmp eq ptr %3321, null
  br i1 %3322, label %3315, label %3323

3323:                                             ; preds = %3318, %3341
  %3324 = phi ptr [ %3342, %3341 ], [ %3321, %3318 ]
  %3325 = getelementptr inbounds %struct.ScrArea, ptr %3324, i64 0, i32 8
  %3326 = load i8, ptr %3325, align 8, !tbaa !411
  %3327 = icmp eq i8 %3326, 16
  br i1 %3327, label %3328, label %3341

3328:                                             ; preds = %3323
  %3329 = call ptr @BKE_area_find_region_type(ptr noundef nonnull %3324, i32 noundef 5) #15
  %3330 = icmp eq ptr %3329, null
  br i1 %3330, label %3331, label %3341

3331:                                             ; preds = %3328
  %3332 = call ptr @BKE_area_find_region_type(ptr noundef nonnull %3324, i32 noundef 1) #15
  %3333 = icmp eq ptr %3332, null
  br i1 %3333, label %3341, label %3334

3334:                                             ; preds = %3331
  %3335 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %3336 = call ptr %3335(i64 noundef 384, ptr noundef nonnull @.str.10) #15
  %3337 = getelementptr inbounds %struct.ScrArea, ptr %3324, i64 0, i32 20
  call void @BLI_insertlinkafter(ptr noundef nonnull %3337, ptr noundef nonnull %3332, ptr noundef %3336) #15
  %3338 = getelementptr inbounds %struct.ARegion, ptr %3336, i64 0, i32 8
  store i16 5, ptr %3338, align 2, !tbaa !264
  %3339 = getelementptr inbounds %struct.ARegion, ptr %3336, i64 0, i32 9
  store i16 3, ptr %3339, align 8, !tbaa !267
  %3340 = getelementptr inbounds %struct.ARegion, ptr %3336, i64 0, i32 10
  store i16 1, ptr %3340, align 2, !tbaa !268
  br label %3341

3341:                                             ; preds = %3323, %3334, %3331, %3328
  %3342 = load ptr, ptr %3324, align 8, !tbaa !42
  %3343 = icmp eq ptr %3342, null
  br i1 %3343, label %3315, label %3323, !llvm.loop !559

3344:                                             ; preds = %3315
  %3345 = load i16, ptr %55, align 8, !tbaa !34
  br label %3346

3346:                                             ; preds = %3097, %3344, %3302
  %3347 = phi i16 [ %3303, %3302 ], [ %3345, %3344 ], [ %3098, %3097 ]
  %3348 = icmp sgt i16 %3347, 269
  br i1 %3348, label %3916, label %3349

3349:                                             ; preds = %3346
  %3350 = icmp eq i16 %3347, 269
  br i1 %3350, label %3351, label %3355

3351:                                             ; preds = %3349
  %3352 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3353 = load i16, ptr %3352, align 2, !tbaa !74
  %3354 = icmp sgt i16 %3353, 0
  br i1 %3354, label %3390, label %3355

3355:                                             ; preds = %3311, %3307, %3351, %3349
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %45) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %46) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %47) #14
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %45, ptr noundef nonnull %2) #15
  %3356 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %45, ptr noundef nonnull %46, ptr noundef nonnull %47) #15
  %3357 = icmp eq i8 %3356, 1
  br i1 %3357, label %3358, label %3385

3358:                                             ; preds = %3355, %3382
  %3359 = load ptr, ptr %46, align 8, !tbaa !42
  %3360 = icmp eq ptr %3359, null
  br i1 %3360, label %3382, label %3361

3361:                                             ; preds = %3358
  %3362 = getelementptr inbounds %struct.bNodeTree, ptr %3359, i64 0, i32 9
  %3363 = load i32, ptr %3362, align 8, !tbaa !84
  %3364 = icmp eq i32 %3363, 0
  br i1 %3364, label %3365, label %3382

3365:                                             ; preds = %3361
  %3366 = getelementptr inbounds %struct.bNodeTree, ptr %3359, i64 0, i32 7
  %3367 = load ptr, ptr %3366, align 8, !tbaa !42
  %3368 = icmp eq ptr %3367, null
  br i1 %3368, label %3382, label %3369

3369:                                             ; preds = %3365, %3379
  %3370 = phi ptr [ %3380, %3379 ], [ %3367, %3365 ]
  %3371 = getelementptr inbounds %struct.bNode, ptr %3370, i64 0, i32 8
  %3372 = load i16, ptr %3371, align 4, !tbaa !87
  %3373 = icmp eq i16 %3372, 177
  br i1 %3373, label %3374, label %3379

3374:                                             ; preds = %3369
  %3375 = getelementptr inbounds %struct.bNode, ptr %3370, i64 0, i32 33
  %3376 = load i16, ptr %3375, align 8, !tbaa !463
  %3377 = icmp eq i16 %3376, 0
  br i1 %3377, label %3378, label %3379

3378:                                             ; preds = %3374
  store i16 1, ptr %3375, align 8, !tbaa !463
  br label %3379

3379:                                             ; preds = %3369, %3378, %3374
  %3380 = load ptr, ptr %3370, align 8, !tbaa !42
  %3381 = icmp eq ptr %3380, null
  br i1 %3381, label %3382, label %3369, !llvm.loop !560

3382:                                             ; preds = %3379, %3365, %3361, %3358
  %3383 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %45, ptr noundef nonnull %46, ptr noundef nonnull %47) #15
  %3384 = icmp eq i8 %3383, 1
  br i1 %3384, label %3358, label %3385, !llvm.loop !561

3385:                                             ; preds = %3382, %3355
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %47) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %46) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %45) #14
  %3386 = load i16, ptr %55, align 8, !tbaa !34
  %3387 = icmp sgt i16 %3386, 269
  br i1 %3387, label %3916, label %3388

3388:                                             ; preds = %3385
  %3389 = icmp eq i16 %3386, 269
  br i1 %3389, label %3390, label %3394

3390:                                             ; preds = %3351, %3388
  %3391 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3392 = load i16, ptr %3391, align 2, !tbaa !74
  %3393 = icmp sgt i16 %3392, 1
  br i1 %3393, label %3438, label %3394

3394:                                             ; preds = %3390, %3388
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %48) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %49) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %50) #14
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %48, ptr noundef nonnull %2) #15
  %3395 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %48, ptr noundef nonnull %49, ptr noundef nonnull %50) #15
  %3396 = icmp eq i8 %3395, 1
  br i1 %3396, label %3397, label %3433

3397:                                             ; preds = %3394, %3430
  %3398 = load ptr, ptr %49, align 8, !tbaa !42
  %3399 = icmp eq ptr %3398, null
  br i1 %3399, label %3430, label %3400

3400:                                             ; preds = %3397
  %3401 = getelementptr inbounds %struct.bNodeTree, ptr %3398, i64 0, i32 9
  %3402 = load i32, ptr %3401, align 8, !tbaa !84
  %3403 = icmp eq i32 %3402, 1
  br i1 %3403, label %3404, label %3430

3404:                                             ; preds = %3400
  %3405 = getelementptr inbounds %struct.bNodeTree, ptr %3398, i64 0, i32 7
  %3406 = load ptr, ptr %3405, align 8, !tbaa !42
  %3407 = icmp eq ptr %3406, null
  br i1 %3407, label %3430, label %3408

3408:                                             ; preds = %3404, %3427
  %3409 = phi ptr [ %3428, %3427 ], [ %3406, %3404 ]
  %3410 = getelementptr inbounds %struct.bNode, ptr %3409, i64 0, i32 8
  %3411 = load i16, ptr %3410, align 4, !tbaa !87
  %3412 = icmp eq i16 %3411, 260
  br i1 %3412, label %3413, label %3427

3413:                                             ; preds = %3408
  %3414 = getelementptr inbounds %struct.bNode, ptr %3409, i64 0, i32 33
  %3415 = load i16, ptr %3414, align 8, !tbaa !463
  switch i16 %3415, label %3427 [
    i16 0, label %3416
    i16 1, label %3418
  ]

3416:                                             ; preds = %3413
  %3417 = load ptr, ptr %49, align 8, !tbaa !42
  call void @ntreeCompositColorBalanceSyncFromLGG(ptr noundef %3417, ptr noundef nonnull %3409) #15
  br label %3427

3418:                                             ; preds = %3413
  %3419 = getelementptr inbounds %struct.bNode, ptr %3409, i64 0, i32 21
  %3420 = load ptr, ptr %3419, align 8, !tbaa !89
  %3421 = getelementptr inbounds %struct.NodeColorBalance, ptr %3420, i64 0, i32 1
  %3422 = getelementptr inbounds %struct.NodeColorBalance, ptr %3420, i64 0, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3421, ptr noundef nonnull %3422) #13
  %3423 = getelementptr inbounds %struct.NodeColorBalance, ptr %3420, i64 0, i32 2
  %3424 = getelementptr inbounds %struct.NodeColorBalance, ptr %3420, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %3423, ptr noundef nonnull %3424) #13
  %3425 = getelementptr inbounds %struct.NodeColorBalance, ptr %3420, i64 0, i32 5
  call fastcc void @copy_v3_v3(ptr noundef %3420, ptr noundef nonnull %3425) #13
  %3426 = load ptr, ptr %49, align 8, !tbaa !42
  call void @ntreeCompositColorBalanceSyncFromCDL(ptr noundef %3426, ptr noundef nonnull %3409) #15
  br label %3427

3427:                                             ; preds = %3416, %3418, %3413, %3408
  %3428 = load ptr, ptr %3409, align 8, !tbaa !42
  %3429 = icmp eq ptr %3428, null
  br i1 %3429, label %3430, label %3408, !llvm.loop !562

3430:                                             ; preds = %3427, %3404, %3400, %3397
  %3431 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %48, ptr noundef nonnull %49, ptr noundef nonnull %50) #15
  %3432 = icmp eq i8 %3431, 1
  br i1 %3432, label %3397, label %3433, !llvm.loop !563

3433:                                             ; preds = %3430, %3394
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %50) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %49) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %48) #14
  %3434 = load i16, ptr %55, align 8, !tbaa !34
  %3435 = icmp sgt i16 %3434, 269
  br i1 %3435, label %3916, label %3436

3436:                                             ; preds = %3433
  %3437 = icmp eq i16 %3434, 269
  br i1 %3437, label %3438, label %3442

3438:                                             ; preds = %3390, %3436
  %3439 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3440 = load i16, ptr %3439, align 2, !tbaa !74
  %3441 = icmp sgt i16 %3440, 2
  br i1 %3441, label %3564, label %3442

3442:                                             ; preds = %3438, %3436
  %3443 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %3444 = load ptr, ptr %3443, align 8, !tbaa !42
  %3445 = icmp eq ptr %3444, null
  br i1 %3445, label %3474, label %3449

3446:                                             ; preds = %3454, %3449
  %3447 = load ptr, ptr %3450, align 8, !tbaa !42
  %3448 = icmp eq ptr %3447, null
  br i1 %3448, label %3474, label %3449, !llvm.loop !564

3449:                                             ; preds = %3442, %3446
  %3450 = phi ptr [ %3447, %3446 ], [ %3444, %3442 ]
  %3451 = getelementptr inbounds %struct.bScreen, ptr %3450, i64 0, i32 3
  %3452 = load ptr, ptr %3451, align 8, !tbaa !42
  %3453 = icmp eq ptr %3452, null
  br i1 %3453, label %3446, label %3457

3454:                                             ; preds = %3471, %3457
  %3455 = load ptr, ptr %3458, align 8, !tbaa !42
  %3456 = icmp eq ptr %3455, null
  br i1 %3456, label %3446, label %3457, !llvm.loop !565

3457:                                             ; preds = %3449, %3454
  %3458 = phi ptr [ %3455, %3454 ], [ %3452, %3449 ]
  %3459 = getelementptr inbounds %struct.ScrArea, ptr %3458, i64 0, i32 19
  %3460 = load ptr, ptr %3459, align 8, !tbaa !42
  %3461 = icmp eq ptr %3460, null
  br i1 %3461, label %3454, label %3462

3462:                                             ; preds = %3457, %3471
  %3463 = phi ptr [ %3472, %3471 ], [ %3460, %3457 ]
  %3464 = getelementptr inbounds %struct.SpaceLink, ptr %3463, i64 0, i32 3
  %3465 = load i32, ptr %3464, align 8, !tbaa !105
  %3466 = icmp eq i32 %3465, 3
  br i1 %3466, label %3467, label %3471

3467:                                             ; preds = %3462
  %3468 = getelementptr inbounds %struct.SpaceOops, ptr %3463, i64 0, i32 12
  %3469 = load i16, ptr %3468, align 2, !tbaa !566
  switch i16 %3469, label %3470 [
    i16 0, label %3471
    i16 1, label %3471
    i16 2, label %3471
    i16 3, label %3471
    i16 4, label %3471
    i16 5, label %3471
    i16 6, label %3471
    i16 7, label %3471
    i16 10, label %3471
    i16 11, label %3471
    i16 12, label %3471
  ]

3470:                                             ; preds = %3467
  store i16 0, ptr %3468, align 2, !tbaa !566
  br label %3471

3471:                                             ; preds = %3470, %3467, %3467, %3467, %3467, %3467, %3467, %3467, %3467, %3467, %3467, %3467, %3462
  %3472 = load ptr, ptr %3463, align 8, !tbaa !42
  %3473 = icmp eq ptr %3472, null
  br i1 %3473, label %3454, label %3462, !llvm.loop !569

3474:                                             ; preds = %3446, %3442
  %3475 = getelementptr inbounds %struct.FileData, ptr %0, i64 0, i32 14
  %3476 = load ptr, ptr %3475, align 8, !tbaa !570
  %3477 = call zeroext i8 @DNA_struct_elem_find(ptr noundef %3476, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #15
  %3478 = icmp eq i8 %3477, 0
  br i1 %3478, label %3479, label %3505

3479:                                             ; preds = %3474
  %3480 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 42
  %3481 = load ptr, ptr %3480, align 8, !tbaa !42
  %3482 = icmp eq ptr %3481, null
  br i1 %3482, label %3505, label %3486

3483:                                             ; preds = %3492, %3486
  %3484 = load ptr, ptr %3487, align 8, !tbaa !42
  %3485 = icmp eq ptr %3484, null
  br i1 %3485, label %3505, label %3486, !llvm.loop !571

3486:                                             ; preds = %3479, %3483
  %3487 = phi ptr [ %3484, %3483 ], [ %3481, %3479 ]
  %3488 = getelementptr inbounds %struct.MovieClip, ptr %3487, i64 0, i32 11
  %3489 = getelementptr inbounds %struct.MovieClip, ptr %3487, i64 0, i32 11, i32 8
  %3490 = load ptr, ptr %3489, align 8, !tbaa !42
  %3491 = icmp eq ptr %3490, null
  br i1 %3491, label %3483, label %3495

3492:                                             ; preds = %3500, %3495
  %3493 = load ptr, ptr %3496, align 8, !tbaa !42
  %3494 = icmp eq ptr %3493, null
  br i1 %3494, label %3483, label %3495, !llvm.loop !572

3495:                                             ; preds = %3486, %3492
  %3496 = phi ptr [ %3493, %3492 ], [ %3490, %3486 ]
  %3497 = call ptr @BKE_tracking_object_get_tracks(ptr noundef nonnull %3488, ptr noundef nonnull %3496) #15
  %3498 = load ptr, ptr %3497, align 8, !tbaa !42
  %3499 = icmp eq ptr %3498, null
  br i1 %3499, label %3492, label %3500

3500:                                             ; preds = %3495, %3500
  %3501 = phi ptr [ %3503, %3500 ], [ %3498, %3495 ]
  %3502 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %3501, i64 0, i32 24
  store float 1.000000e+00, ptr %3502, align 8, !tbaa !573
  %3503 = load ptr, ptr %3501, align 8, !tbaa !42
  %3504 = icmp eq ptr %3503, null
  br i1 %3504, label %3492, label %3500, !llvm.loop !574

3505:                                             ; preds = %3483, %3479, %3474
  %3506 = load ptr, ptr %3475, align 8, !tbaa !570
  %3507 = call zeroext i8 @DNA_struct_elem_find(ptr noundef %3506, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #15
  %3508 = icmp eq i8 %3507, 0
  br i1 %3508, label %3509, label %3536

3509:                                             ; preds = %3505
  %3510 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %3511 = load ptr, ptr %3510, align 8, !tbaa !42
  %3512 = icmp eq ptr %3511, null
  br i1 %3512, label %3536, label %3516

3513:                                             ; preds = %3533, %3516
  %3514 = load ptr, ptr %3517, align 8, !tbaa !42
  %3515 = icmp eq ptr %3514, null
  br i1 %3515, label %3536, label %3516, !llvm.loop !575

3516:                                             ; preds = %3509, %3513
  %3517 = phi ptr [ %3514, %3513 ], [ %3511, %3509 ]
  %3518 = getelementptr inbounds %struct.Object, ptr %3517, i64 0, i32 26
  %3519 = load ptr, ptr %3518, align 8, !tbaa !42
  %3520 = icmp eq ptr %3519, null
  br i1 %3520, label %3513, label %3521

3521:                                             ; preds = %3516, %3533
  %3522 = phi ptr [ %3534, %3533 ], [ %3519, %3516 ]
  %3523 = getelementptr inbounds %struct.ModifierData, ptr %3522, i64 0, i32 2
  %3524 = load i32, ptr %3523, align 8, !tbaa !216
  %3525 = icmp eq i32 %3524, 44
  br i1 %3525, label %3526, label %3533

3526:                                             ; preds = %3521
  %3527 = getelementptr inbounds %struct.TriangulateModifierData, ptr %3522, i64 0, i32 1
  %3528 = load i32, ptr %3527, align 8, !tbaa !576
  %3529 = and i32 %3528, 1
  %3530 = getelementptr inbounds %struct.TriangulateModifierData, ptr %3522, i64 0, i32 2
  %3531 = getelementptr inbounds %struct.TriangulateModifierData, ptr %3522, i64 0, i32 3
  %3532 = xor i32 %3529, 1
  store i32 %3532, ptr %3530, align 4, !tbaa !578
  store i32 %3532, ptr %3531, align 8, !tbaa !579
  br label %3533

3533:                                             ; preds = %3526, %3521
  %3534 = load ptr, ptr %3522, align 8, !tbaa !42
  %3535 = icmp eq ptr %3534, null
  br i1 %3535, label %3513, label %3521, !llvm.loop !580

3536:                                             ; preds = %3513, %3509, %3505
  %3537 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %3538 = load ptr, ptr %3537, align 8, !tbaa !42
  %3539 = icmp eq ptr %3538, null
  br i1 %3539, label %3564, label %3540

3540:                                             ; preds = %3536, %3561
  %3541 = phi ptr [ %3562, %3561 ], [ %3538, %3536 ]
  %3542 = getelementptr inbounds %struct.Scene, ptr %3541, i64 0, i32 20
  %3543 = load ptr, ptr %3542, align 8, !tbaa !194
  %3544 = getelementptr inbounds %struct.ToolSettings, ptr %3543, i64 0, i32 2
  %3545 = load ptr, ptr %3544, align 8, !tbaa !581
  %3546 = icmp eq ptr %3545, null
  br i1 %3546, label %3551, label %3547

3547:                                             ; preds = %3540
  %3548 = getelementptr inbounds %struct.Sculpt, ptr %3545, i64 0, i32 1
  %3549 = load i32, ptr %3548, align 8, !tbaa !582
  %3550 = or i32 %3549, 4096
  store i32 %3550, ptr %3548, align 8, !tbaa !582
  br label %3551

3551:                                             ; preds = %3547, %3540
  %3552 = getelementptr inbounds %struct.Scene, ptr %3541, i64 0, i32 37, i32 20
  %3553 = load i16, ptr %3552, align 2, !tbaa !584
  %3554 = icmp eq i16 %3553, 0
  br i1 %3554, label %3555, label %3556

3555:                                             ; preds = %3551
  store i16 1, ptr %3552, align 2, !tbaa !584
  br label %3556

3556:                                             ; preds = %3555, %3551
  %3557 = getelementptr inbounds %struct.ToolSettings, ptr %3543, i64 0, i32 52
  %3558 = load i8, ptr %3557, align 8, !tbaa !585
  %3559 = icmp eq i8 %3558, 0
  br i1 %3559, label %3560, label %3561

3560:                                             ; preds = %3556
  store i8 8, ptr %3557, align 8, !tbaa !585
  br label %3561

3561:                                             ; preds = %3560, %3556
  %3562 = load ptr, ptr %3541, align 8, !tbaa !42
  %3563 = icmp eq ptr %3562, null
  br i1 %3563, label %3564, label %3540, !llvm.loop !586

3564:                                             ; preds = %3561, %3536, %3438
  %3565 = load i16, ptr %55, align 8, !tbaa !34
  %3566 = icmp sgt i16 %3565, 269
  br i1 %3566, label %3916, label %3567

3567:                                             ; preds = %3564
  %3568 = icmp eq i16 %3565, 269
  br i1 %3568, label %3569, label %3573

3569:                                             ; preds = %3567
  %3570 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3571 = load i16, ptr %3570, align 2, !tbaa !74
  %3572 = icmp sgt i16 %3571, 3
  br i1 %3572, label %3752, label %3573

3573:                                             ; preds = %3569, %3567
  %3574 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 21
  %3575 = load ptr, ptr %3574, align 8, !tbaa !42
  %3576 = icmp eq ptr %3575, null
  br i1 %3576, label %3584, label %3577

3577:                                             ; preds = %3573, %3577
  %3578 = phi ptr [ %3582, %3577 ], [ %3575, %3573 ]
  %3579 = getelementptr inbounds %struct.Lamp, ptr %3578, i64 0, i32 17
  %3580 = load float, ptr %3579, align 4, !tbaa !587
  %3581 = fmul float %3580, 0x3F91DF46A0000000
  store float %3581, ptr %3579, align 4, !tbaa !587
  %3582 = load ptr, ptr %3578, align 8, !tbaa !42
  %3583 = icmp eq ptr %3582, null
  br i1 %3583, label %3584, label %3577, !llvm.loop !588

3584:                                             ; preds = %3577, %3573
  %3585 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %3586 = load ptr, ptr %3585, align 8, !tbaa !42
  %3587 = icmp eq ptr %3586, null
  br i1 %3587, label %3661, label %3591

3588:                                             ; preds = %3658, %3629
  %3589 = load ptr, ptr %3592, align 8, !tbaa !42
  %3590 = icmp eq ptr %3589, null
  br i1 %3590, label %3661, label %3591, !llvm.loop !589

3591:                                             ; preds = %3584, %3588
  %3592 = phi ptr [ %3589, %3588 ], [ %3586, %3584 ]
  %3593 = getelementptr inbounds %struct.Object, ptr %3592, i64 0, i32 26
  %3594 = load ptr, ptr %3593, align 8, !tbaa !42
  %3595 = icmp eq ptr %3594, null
  br i1 %3595, label %3611, label %3596

3596:                                             ; preds = %3591, %3608
  %3597 = phi ptr [ %3609, %3608 ], [ %3594, %3591 ]
  %3598 = getelementptr inbounds %struct.ModifierData, ptr %3597, i64 0, i32 2
  %3599 = load i32, ptr %3598, align 8, !tbaa !216
  switch i32 %3599, label %3608 [
    i32 13, label %3600
    i32 24, label %3604
  ]

3600:                                             ; preds = %3596
  %3601 = getelementptr inbounds %struct.EdgeSplitModifierData, ptr %3597, i64 0, i32 1
  %3602 = load float, ptr %3601, align 8, !tbaa !590
  %3603 = fmul float %3602, 0x3F91DF46A0000000
  store float %3603, ptr %3601, align 8, !tbaa !590
  br label %3608

3604:                                             ; preds = %3596
  %3605 = getelementptr inbounds %struct.BevelModifierData, ptr %3597, i64 0, i32 11
  %3606 = load float, ptr %3605, align 4, !tbaa !592
  %3607 = fmul float %3606, 0x3F91DF46A0000000
  store float %3607, ptr %3605, align 4, !tbaa !592
  br label %3608

3608:                                             ; preds = %3596, %3600, %3604
  %3609 = load ptr, ptr %3597, align 8, !tbaa !42
  %3610 = icmp eq ptr %3609, null
  br i1 %3610, label %3611, label %3596, !llvm.loop !594

3611:                                             ; preds = %3608, %3591
  %3612 = getelementptr inbounds %struct.Object, ptr %3592, i64 0, i32 92
  %3613 = load ptr, ptr %3612, align 8, !tbaa !42
  %3614 = icmp eq ptr %3613, null
  br i1 %3614, label %3629, label %3615

3615:                                             ; preds = %3611, %3626
  %3616 = phi ptr [ %3627, %3626 ], [ %3613, %3611 ]
  %3617 = getelementptr inbounds %struct.bSensor, ptr %3616, i64 0, i32 2
  %3618 = load i16, ptr %3617, align 8, !tbaa !548
  %3619 = icmp eq i16 %3618, 7
  br i1 %3619, label %3620, label %3626

3620:                                             ; preds = %3615
  %3621 = getelementptr inbounds %struct.bSensor, ptr %3616, i64 0, i32 11
  %3622 = load ptr, ptr %3621, align 8, !tbaa !550
  %3623 = getelementptr inbounds %struct.bRadarSensor, ptr %3622, i64 0, i32 1
  %3624 = load float, ptr %3623, align 4, !tbaa !595
  %3625 = fmul float %3624, 0x3F91DF46A0000000
  store float %3625, ptr %3623, align 4, !tbaa !595
  br label %3626

3626:                                             ; preds = %3615, %3620
  %3627 = load ptr, ptr %3616, align 8, !tbaa !42
  %3628 = icmp eq ptr %3627, null
  br i1 %3628, label %3629, label %3615, !llvm.loop !597

3629:                                             ; preds = %3626, %3611
  %3630 = getelementptr inbounds %struct.Object, ptr %3592, i64 0, i32 94
  %3631 = load ptr, ptr %3630, align 8, !tbaa !42
  %3632 = icmp eq ptr %3631, null
  br i1 %3632, label %3588, label %3633

3633:                                             ; preds = %3629, %3658
  %3634 = phi ptr [ %3659, %3658 ], [ %3631, %3629 ]
  %3635 = getelementptr inbounds %struct.bActuator, ptr %3634, i64 0, i32 3
  %3636 = load i16, ptr %3635, align 8, !tbaa !188
  switch i16 %3636, label %3658 [
    i16 9, label %3637
    i16 5, label %3647
  ]

3637:                                             ; preds = %3633
  %3638 = getelementptr inbounds %struct.bActuator, ptr %3634, i64 0, i32 8
  %3639 = load ptr, ptr %3638, align 8, !tbaa !190
  %3640 = load i16, ptr %3639, align 4, !tbaa !598
  %3641 = icmp eq i16 %3640, 2
  br i1 %3641, label %3642, label %3658

3642:                                             ; preds = %3637
  %3643 = getelementptr inbounds %struct.bConstraintActuator, ptr %3639, i64 0, i32 7
  %3644 = load float, ptr %3643, align 4, !tbaa !128
  %3645 = fmul float %3644, 0x3F91DF46A0000000
  store float %3645, ptr %3643, align 4, !tbaa !128
  %3646 = getelementptr inbounds %struct.bConstraintActuator, ptr %3639, i64 0, i32 8
  br label %3654

3647:                                             ; preds = %3633
  %3648 = getelementptr inbounds %struct.bActuator, ptr %3634, i64 0, i32 8
  %3649 = load ptr, ptr %3648, align 8, !tbaa !190
  %3650 = getelementptr inbounds %struct.bSoundActuator, ptr %3649, i64 0, i32 8, i32 6
  %3651 = load float, ptr %3650, align 8, !tbaa !600
  %3652 = fmul float %3651, 0x3F91DF46A0000000
  store float %3652, ptr %3650, align 8, !tbaa !600
  %3653 = getelementptr inbounds %struct.bSoundActuator, ptr %3649, i64 0, i32 8, i32 5
  br label %3654

3654:                                             ; preds = %3647, %3642
  %3655 = phi ptr [ %3646, %3642 ], [ %3653, %3647 ]
  %3656 = load float, ptr %3655, align 4, !tbaa !128
  %3657 = fmul float %3656, 0x3F91DF46A0000000
  store float %3657, ptr %3655, align 4, !tbaa !128
  br label %3658

3658:                                             ; preds = %3654, %3633, %3637
  %3659 = load ptr, ptr %3634, align 8, !tbaa !42
  %3660 = icmp eq ptr %3659, null
  br i1 %3660, label %3588, label %3633, !llvm.loop !603

3661:                                             ; preds = %3588, %3584
  %3662 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %3663 = load ptr, ptr %3662, align 8, !tbaa !42
  %3664 = icmp eq ptr %3663, null
  br i1 %3664, label %3691, label %3665

3665:                                             ; preds = %3661
  %3666 = getelementptr inbounds %struct.SeqIterator, ptr %51, i64 0, i32 4
  %3667 = getelementptr inbounds %struct.SeqIterator, ptr %51, i64 0, i32 3
  br label %3668

3668:                                             ; preds = %3665, %3688
  %3669 = phi ptr [ %3663, %3665 ], [ %3689, %3688 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %51) #14
  %3670 = getelementptr inbounds %struct.Scene, ptr %3669, i64 0, i32 19
  %3671 = load ptr, ptr %3670, align 8, !tbaa !339
  call void @BKE_sequence_iterator_begin(ptr noundef %3671, ptr noundef nonnull %51, i8 noundef zeroext 0) #15
  %3672 = load i32, ptr %3666, align 8, !tbaa !340
  %3673 = icmp eq i32 %3672, 0
  br i1 %3673, label %3688, label %3674

3674:                                             ; preds = %3668, %3685
  %3675 = load ptr, ptr %3667, align 8, !tbaa !342
  %3676 = getelementptr inbounds %struct.Sequence, ptr %3675, i64 0, i32 6
  %3677 = load i32, ptr %3676, align 4, !tbaa !604
  %3678 = icmp eq i32 %3677, 25
  br i1 %3678, label %3679, label %3685

3679:                                             ; preds = %3674
  %3680 = getelementptr inbounds %struct.Sequence, ptr %3675, i64 0, i32 43
  %3681 = load ptr, ptr %3680, align 8, !tbaa !605
  %3682 = getelementptr inbounds %struct.WipeVars, ptr %3681, i64 0, i32 1
  %3683 = load float, ptr %3682, align 4, !tbaa !606
  %3684 = fmul float %3683, 0x3F91DF46A0000000
  store float %3684, ptr %3682, align 4, !tbaa !606
  br label %3685

3685:                                             ; preds = %3674, %3679
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %51) #15
  %3686 = load i32, ptr %3666, align 8, !tbaa !340
  %3687 = icmp eq i32 %3686, 0
  br i1 %3687, label %3688, label %3674, !llvm.loop !608

3688:                                             ; preds = %3685, %3668
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %51) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %51) #14
  %3689 = load ptr, ptr %3669, align 8, !tbaa !42
  %3690 = icmp eq ptr %3689, null
  br i1 %3690, label %3691, label %3668, !llvm.loop !609

3691:                                             ; preds = %3688, %3661
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %52) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %53) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %54) #14
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %52, ptr noundef %2) #15
  %3692 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %52, ptr noundef nonnull %53, ptr noundef nonnull %54) #15
  %3693 = icmp eq i8 %3692, 1
  br i1 %3693, label %3694, label %3730

3694:                                             ; preds = %3691, %3727
  %3695 = load ptr, ptr %53, align 8, !tbaa !42
  %3696 = icmp eq ptr %3695, null
  br i1 %3696, label %3727, label %3697

3697:                                             ; preds = %3694
  %3698 = getelementptr inbounds %struct.bNodeTree, ptr %3695, i64 0, i32 9
  %3699 = load i32, ptr %3698, align 8, !tbaa !84
  %3700 = icmp eq i32 %3699, 1
  br i1 %3700, label %3701, label %3727

3701:                                             ; preds = %3697
  %3702 = getelementptr inbounds %struct.bNodeTree, ptr %3695, i64 0, i32 7
  %3703 = load ptr, ptr %3702, align 8, !tbaa !42
  %3704 = icmp eq ptr %3703, null
  br i1 %3704, label %3727, label %3705

3705:                                             ; preds = %3701, %3724
  %3706 = phi ptr [ %3725, %3724 ], [ %3703, %3701 ]
  %3707 = getelementptr inbounds %struct.bNode, ptr %3706, i64 0, i32 8
  %3708 = load i16, ptr %3707, align 4, !tbaa !87
  switch i16 %3708, label %3724 [
    i16 315, label %3709
    i16 313, label %3712
    i16 314, label %3716
  ]

3709:                                             ; preds = %3705
  %3710 = getelementptr inbounds %struct.bNode, ptr %3706, i64 0, i32 21
  %3711 = load ptr, ptr %3710, align 8, !tbaa !89
  br label %3720

3712:                                             ; preds = %3705
  %3713 = getelementptr inbounds %struct.bNode, ptr %3706, i64 0, i32 21
  %3714 = load ptr, ptr %3713, align 8, !tbaa !89
  %3715 = getelementptr inbounds %struct.NodeBoxMask, ptr %3714, i64 0, i32 2
  br label %3720

3716:                                             ; preds = %3705
  %3717 = getelementptr inbounds %struct.bNode, ptr %3706, i64 0, i32 21
  %3718 = load ptr, ptr %3717, align 8, !tbaa !89
  %3719 = getelementptr inbounds %struct.NodeEllipseMask, ptr %3718, i64 0, i32 2
  br label %3720

3720:                                             ; preds = %3716, %3709, %3712
  %3721 = phi ptr [ %3715, %3712 ], [ %3711, %3709 ], [ %3719, %3716 ]
  %3722 = load float, ptr %3721, align 4, !tbaa !128
  %3723 = fmul float %3722, 0x3F91DF46A0000000
  store float %3723, ptr %3721, align 4, !tbaa !128
  br label %3724

3724:                                             ; preds = %3720, %3705
  %3725 = load ptr, ptr %3706, align 8, !tbaa !42
  %3726 = icmp eq ptr %3725, null
  br i1 %3726, label %3727, label %3705, !llvm.loop !610

3727:                                             ; preds = %3724, %3701, %3697, %3694
  %3728 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %52, ptr noundef nonnull %53, ptr noundef nonnull %54) #15
  %3729 = icmp eq i8 %3728, 1
  br i1 %3729, label %3694, label %3730, !llvm.loop !611

3730:                                             ; preds = %3727, %3691
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %54) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %53) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %52) #14
  %3731 = getelementptr inbounds %struct.FileData, ptr %0, i64 0, i32 14
  %3732 = load ptr, ptr %3731, align 8, !tbaa !570
  %3733 = call zeroext i8 @DNA_struct_elem_find(ptr noundef %3732, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.18) #15
  %3734 = icmp eq i8 %3733, 0
  br i1 %3734, label %3735, label %3752

3735:                                             ; preds = %3730
  %3736 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 42
  %3737 = load ptr, ptr %3736, align 8, !tbaa !42
  %3738 = icmp eq ptr %3737, null
  br i1 %3738, label %3752, label %3742

3739:                                             ; preds = %3747, %3742
  %3740 = load ptr, ptr %3743, align 8, !tbaa !42
  %3741 = icmp eq ptr %3740, null
  br i1 %3741, label %3752, label %3742, !llvm.loop !612

3742:                                             ; preds = %3735, %3739
  %3743 = phi ptr [ %3740, %3739 ], [ %3737, %3735 ]
  %3744 = getelementptr inbounds %struct.MovieClip, ptr %3743, i64 0, i32 11, i32 3
  %3745 = load ptr, ptr %3744, align 8, !tbaa !42
  %3746 = icmp eq ptr %3745, null
  br i1 %3746, label %3739, label %3747

3747:                                             ; preds = %3742, %3747
  %3748 = phi ptr [ %3750, %3747 ], [ %3745, %3742 ]
  %3749 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %3748, i64 0, i32 10
  store float 1.000000e+00, ptr %3749, align 8, !tbaa !613
  %3750 = load ptr, ptr %3748, align 8, !tbaa !42
  %3751 = icmp eq ptr %3750, null
  br i1 %3751, label %3739, label %3747, !llvm.loop !615

3752:                                             ; preds = %3739, %3735, %3730, %3569
  %3753 = load i16, ptr %55, align 8, !tbaa !34
  %3754 = icmp sgt i16 %3753, 269
  br i1 %3754, label %3916, label %3755

3755:                                             ; preds = %3752
  %3756 = icmp eq i16 %3753, 269
  br i1 %3756, label %3757, label %3761

3757:                                             ; preds = %3755
  %3758 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3759 = load i16, ptr %3758, align 2, !tbaa !74
  %3760 = icmp sgt i16 %3759, 6
  br i1 %3760, label %3802, label %3761

3761:                                             ; preds = %3757, %3755
  %3762 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %3763 = load ptr, ptr %3762, align 8, !tbaa !42
  %3764 = icmp eq ptr %3763, null
  br i1 %3764, label %3798, label %3765

3765:                                             ; preds = %3761, %3795
  %3766 = phi ptr [ %3796, %3795 ], [ %3763, %3761 ]
  %3767 = getelementptr inbounds %struct.Scene, ptr %3766, i64 0, i32 20
  %3768 = load ptr, ptr %3767, align 8, !tbaa !194
  %3769 = getelementptr inbounds %struct.ToolSettings, ptr %3768, i64 0, i32 2
  %3770 = load ptr, ptr %3769, align 8, !tbaa !581
  %3771 = icmp eq ptr %3770, null
  br i1 %3771, label %3795, label %3772

3772:                                             ; preds = %3765
  %3773 = getelementptr inbounds %struct.Sculpt, ptr %3770, i64 0, i32 1
  %3774 = load i32, ptr %3773, align 8, !tbaa !582
  %3775 = and i32 %3774, 1
  %3776 = icmp eq i32 %3775, 0
  br i1 %3776, label %3781, label %3777

3777:                                             ; preds = %3772
  %3778 = getelementptr inbounds %struct.Paint, ptr %3770, i64 0, i32 6
  %3779 = load i32, ptr %3778, align 4, !tbaa !616
  %3780 = or i32 %3779, 1
  store i32 %3780, ptr %3778, align 4, !tbaa !616
  br label %3781

3781:                                             ; preds = %3777, %3772
  %3782 = and i32 %3774, 2
  %3783 = icmp eq i32 %3782, 0
  br i1 %3783, label %3788, label %3784

3784:                                             ; preds = %3781
  %3785 = getelementptr inbounds %struct.Paint, ptr %3770, i64 0, i32 6
  %3786 = load i32, ptr %3785, align 4, !tbaa !616
  %3787 = or i32 %3786, 2
  store i32 %3787, ptr %3785, align 4, !tbaa !616
  br label %3788

3788:                                             ; preds = %3784, %3781
  %3789 = and i32 %3774, 4
  %3790 = icmp eq i32 %3789, 0
  br i1 %3790, label %3795, label %3791

3791:                                             ; preds = %3788
  %3792 = getelementptr inbounds %struct.Paint, ptr %3770, i64 0, i32 6
  %3793 = load i32, ptr %3792, align 4, !tbaa !616
  %3794 = or i32 %3793, 4
  store i32 %3794, ptr %3792, align 4, !tbaa !616
  br label %3795

3795:                                             ; preds = %3791, %3788, %3765
  %3796 = load ptr, ptr %3766, align 8, !tbaa !42
  %3797 = icmp eq ptr %3796, null
  br i1 %3797, label %3798, label %3765, !llvm.loop !617

3798:                                             ; preds = %3795, %3761
  br i1 %3756, label %3799, label %3805

3799:                                             ; preds = %3798
  %3800 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3801 = load i16, ptr %3800, align 2, !tbaa !74
  br label %3802

3802:                                             ; preds = %3799, %3757
  %3803 = phi i16 [ %3801, %3799 ], [ %3759, %3757 ]
  %3804 = icmp sgt i16 %3803, 7
  br i1 %3804, label %3828, label %3805

3805:                                             ; preds = %3802, %3798
  %3806 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 15
  %3807 = load ptr, ptr %3806, align 8, !tbaa !42
  %3808 = icmp eq ptr %3807, null
  br i1 %3808, label %3823, label %3809

3809:                                             ; preds = %3805, %3818
  %3810 = phi ptr [ %3819, %3818 ], [ %3807, %3805 ]
  %3811 = getelementptr inbounds %struct.Curve, ptr %3810, i64 0, i32 52
  %3812 = load ptr, ptr %3811, align 8, !tbaa !618
  %3813 = icmp eq ptr %3812, null
  br i1 %3813, label %3818, label %3814

3814:                                             ; preds = %3809
  %3815 = call i64 @BLI_strlen_utf8(ptr noundef nonnull %3812) #15
  %3816 = trunc i64 %3815 to i32
  %3817 = getelementptr inbounds %struct.Curve, ptr %3810, i64 0, i32 50
  store i32 %3816, ptr %3817, align 8, !tbaa !619
  br label %3818

3818:                                             ; preds = %3809, %3814
  %3819 = load ptr, ptr %3810, align 8, !tbaa !42
  %3820 = icmp eq ptr %3819, null
  br i1 %3820, label %3821, label %3809, !llvm.loop !620

3821:                                             ; preds = %3818
  %3822 = load i16, ptr %55, align 8, !tbaa !34
  br label %3823

3823:                                             ; preds = %3821, %3805
  %3824 = phi i16 [ %3822, %3821 ], [ %3753, %3805 ]
  %3825 = icmp sgt i16 %3824, 269
  br i1 %3825, label %3916, label %3826

3826:                                             ; preds = %3823
  %3827 = icmp eq i16 %3824, 269
  br i1 %3827, label %3828, label %3832

3828:                                             ; preds = %3802, %3826
  %3829 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3830 = load i16, ptr %3829, align 2, !tbaa !74
  %3831 = icmp sgt i16 %3830, 8
  br i1 %3831, label %3865, label %3832

3832:                                             ; preds = %3828, %3826
  %3833 = phi i1 [ true, %3828 ], [ false, %3826 ]
  %3834 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %3835 = load ptr, ptr %3834, align 8, !tbaa !42
  %3836 = icmp eq ptr %3835, null
  br i1 %3836, label %3861, label %3840

3837:                                             ; preds = %3858, %3840
  %3838 = load ptr, ptr %3841, align 8, !tbaa !42
  %3839 = icmp eq ptr %3838, null
  br i1 %3839, label %3861, label %3840, !llvm.loop !621

3840:                                             ; preds = %3832, %3837
  %3841 = phi ptr [ %3838, %3837 ], [ %3835, %3832 ]
  %3842 = getelementptr inbounds %struct.Object, ptr %3841, i64 0, i32 26
  %3843 = load ptr, ptr %3842, align 8, !tbaa !42
  %3844 = icmp eq ptr %3843, null
  br i1 %3844, label %3837, label %3845

3845:                                             ; preds = %3840, %3858
  %3846 = phi ptr [ %3859, %3858 ], [ %3843, %3840 ]
  %3847 = getelementptr inbounds %struct.ModifierData, ptr %3846, i64 0, i32 2
  %3848 = load i32, ptr %3847, align 8, !tbaa !216
  %3849 = icmp eq i32 %3848, 4
  br i1 %3849, label %3850, label %3858

3850:                                             ; preds = %3845
  %3851 = getelementptr inbounds %struct.BuildModifierData, ptr %3846, i64 0, i32 4
  %3852 = load i16, ptr %3851, align 2, !tbaa !622
  %3853 = icmp eq i16 %3852, 0
  br i1 %3853, label %3858, label %3854

3854:                                             ; preds = %3850
  %3855 = getelementptr inbounds %struct.BuildModifierData, ptr %3846, i64 0, i32 3
  %3856 = load i16, ptr %3855, align 8, !tbaa !624
  %3857 = or i16 %3856, 1
  store i16 %3857, ptr %3855, align 8, !tbaa !624
  br label %3858

3858:                                             ; preds = %3850, %3854, %3845
  %3859 = load ptr, ptr %3846, align 8, !tbaa !42
  %3860 = icmp eq ptr %3859, null
  br i1 %3860, label %3837, label %3845, !llvm.loop !625

3861:                                             ; preds = %3837, %3832
  br i1 %3833, label %3862, label %3868

3862:                                             ; preds = %3861
  %3863 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3864 = load i16, ptr %3863, align 2, !tbaa !74
  br label %3865

3865:                                             ; preds = %3862, %3828
  %3866 = phi i16 [ %3864, %3862 ], [ %3830, %3828 ]
  %3867 = icmp sgt i16 %3866, 10
  br i1 %3867, label %3916, label %3868

3868:                                             ; preds = %3865, %3861
  %3869 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %3870 = load ptr, ptr %3869, align 8, !tbaa !42
  %3871 = icmp eq ptr %3870, null
  br i1 %3871, label %3916, label %3875

3872:                                             ; preds = %3880, %3875
  %3873 = load ptr, ptr %3876, align 8, !tbaa !42
  %3874 = icmp eq ptr %3873, null
  br i1 %3874, label %3916, label %3875, !llvm.loop !626

3875:                                             ; preds = %3868, %3872
  %3876 = phi ptr [ %3873, %3872 ], [ %3870, %3868 ]
  %3877 = getelementptr inbounds %struct.bScreen, ptr %3876, i64 0, i32 3
  %3878 = load ptr, ptr %3877, align 8, !tbaa !42
  %3879 = icmp eq ptr %3878, null
  br i1 %3879, label %3872, label %3883

3880:                                             ; preds = %3913, %3883
  %3881 = load ptr, ptr %3884, align 8, !tbaa !42
  %3882 = icmp eq ptr %3881, null
  br i1 %3882, label %3872, label %3883, !llvm.loop !627

3883:                                             ; preds = %3875, %3880
  %3884 = phi ptr [ %3881, %3880 ], [ %3878, %3875 ]
  %3885 = getelementptr inbounds %struct.ScrArea, ptr %3884, i64 0, i32 19
  %3886 = load ptr, ptr %3885, align 8, !tbaa !42
  %3887 = icmp eq ptr %3886, null
  br i1 %3887, label %3880, label %3888

3888:                                             ; preds = %3883
  %3889 = getelementptr inbounds %struct.ScrArea, ptr %3884, i64 0, i32 20
  br label %3890

3890:                                             ; preds = %3888, %3913
  %3891 = phi ptr [ %3886, %3888 ], [ %3914, %3913 ]
  %3892 = getelementptr inbounds %struct.SpaceLink, ptr %3891, i64 0, i32 3
  %3893 = load i32, ptr %3892, align 8, !tbaa !105
  %3894 = icmp eq i32 %3893, 6
  br i1 %3894, label %3895, label %3913

3895:                                             ; preds = %3890
  %3896 = load ptr, ptr %3885, align 8, !tbaa !628
  %3897 = icmp eq ptr %3891, %3896
  %3898 = getelementptr inbounds %struct.SpaceLink, ptr %3891, i64 0, i32 2
  %3899 = select i1 %3897, ptr %3889, ptr %3898
  %3900 = load ptr, ptr %3899, align 8, !tbaa !42
  %3901 = icmp eq ptr %3900, null
  br i1 %3901, label %3913, label %3902

3902:                                             ; preds = %3895, %3910
  %3903 = phi ptr [ %3911, %3910 ], [ %3900, %3895 ]
  %3904 = getelementptr inbounds %struct.ARegion, ptr %3903, i64 0, i32 8
  %3905 = load i16, ptr %3904, align 2, !tbaa !264
  switch i16 %3905, label %3910 [
    i16 7, label %3906
    i16 4, label %3907
  ]

3906:                                             ; preds = %3902
  store i16 5, ptr %3904, align 2, !tbaa !264
  br label %3907

3907:                                             ; preds = %3902, %3906
  %3908 = phi i16 [ 3, %3906 ], [ %3905, %3902 ]
  %3909 = getelementptr inbounds %struct.ARegion, ptr %3903, i64 0, i32 9
  store i16 %3908, ptr %3909, align 8, !tbaa !267
  br label %3910

3910:                                             ; preds = %3907, %3902
  %3911 = load ptr, ptr %3903, align 8, !tbaa !42
  %3912 = icmp eq ptr %3911, null
  br i1 %3912, label %3913, label %3902, !llvm.loop !629

3913:                                             ; preds = %3910, %3895, %3890
  %3914 = load ptr, ptr %3891, align 8, !tbaa !42
  %3915 = icmp eq ptr %3914, null
  br i1 %3915, label %3880, label %3890, !llvm.loop !630

3916:                                             ; preds = %3872, %3346, %3868, %3385, %3433, %3752, %3564, %3823, %3865
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_versions_nodetree_image_default_alpha_output(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !631 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1, %17
  %6 = phi ptr [ %18, %17 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 8
  %8 = load i16, ptr %7, align 4, !tbaa !87
  %9 = and i16 %8, -2
  %10 = icmp eq i16 %9, 220
  br i1 %10, label %11, label %17

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 18
  %13 = load ptr, ptr %12, align 8, !tbaa !632
  %14 = getelementptr inbounds %struct.bNodeSocket, ptr %13, i64 0, i32 15
  %15 = load ptr, ptr %14, align 8, !tbaa !633
  %16 = getelementptr inbounds [4 x float], ptr %15, i64 0, i64 3
  store float 0.000000e+00, ptr %16, align 4, !tbaa !128
  br label %17

17:                                               ; preds = %5, %11
  %18 = load ptr, ptr %6, align 8, !tbaa !42
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %5, !llvm.loop !636

20:                                               ; preds = %17, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BKE_node_tree_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BKE_node_tree_iter_step(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_versions_nodetree_convert_angle(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !637 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = icmp eq ptr %3, null
  br i1 %4, label %59, label %5

5:                                                ; preds = %1, %56
  %6 = phi ptr [ %57, %56 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 8
  %8 = load i16, ptr %7, align 4, !tbaa !87
  switch i16 %8, label %56 [
    i16 229, label %9
    i16 254, label %17
    i16 244, label %25
    i16 237, label %31
    i16 301, label %38
    i16 109, label %44
  ]

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !638
  %12 = load ptr, ptr %11, align 8, !tbaa !639
  %13 = getelementptr inbounds %struct.bNodeSocket, ptr %12, i64 0, i32 15
  %14 = load ptr, ptr %13, align 8, !tbaa !633
  %15 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %14, i64 0, i32 1
  %16 = load float, ptr %15, align 4, !tbaa !640
  br label %52

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 21
  %19 = load ptr, ptr %18, align 8, !tbaa !89
  %20 = getelementptr inbounds %struct.NodeDBlurData, ptr %19, i64 0, i32 3
  %21 = load float, ptr %20, align 4, !tbaa !642
  %22 = fmul float %21, 0x3F91DF46A0000000
  store float %22, ptr %20, align 4, !tbaa !642
  %23 = getelementptr inbounds %struct.NodeDBlurData, ptr %19, i64 0, i32 4
  %24 = load float, ptr %23, align 4, !tbaa !644
  br label %52

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 21
  %27 = load ptr, ptr %26, align 8, !tbaa !89
  %28 = getelementptr inbounds %struct.NodeDefocus, ptr %27, i64 0, i32 10
  %29 = load float, ptr %28, align 4, !tbaa !645
  %30 = fmul float %29, 2.550000e+02
  br label %52

31:                                               ; preds = %5
  %32 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 21
  %33 = load ptr, ptr %32, align 8, !tbaa !89
  %34 = load float, ptr %33, align 4, !tbaa !646
  %35 = fmul float %34, 0x3F91DF46A0000000
  store float %35, ptr %33, align 4, !tbaa !646
  %36 = getelementptr inbounds %struct.NodeChroma, ptr %33, i64 0, i32 1
  %37 = load float, ptr %36, align 4, !tbaa !648
  br label %52

38:                                               ; preds = %5
  %39 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 21
  %40 = load ptr, ptr %39, align 8, !tbaa !89
  %41 = getelementptr inbounds %struct.NodeGlare, ptr %40, i64 0, i32 11
  %42 = load float, ptr %41, align 4, !tbaa !649
  %43 = fmul float %42, 2.550000e+02
  br label %52

44:                                               ; preds = %5
  %45 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 21
  %46 = load ptr, ptr %45, align 8, !tbaa !89
  %47 = getelementptr inbounds %struct.TexMapping, ptr %46, i64 0, i32 1
  %48 = load <2 x float>, ptr %47, align 4, !tbaa !128
  %49 = fmul <2 x float> %48, <float 0x3F91DF46A0000000, float 0x3F91DF46A0000000>
  store <2 x float> %49, ptr %47, align 4, !tbaa !128
  %50 = getelementptr inbounds %struct.TexMapping, ptr %46, i64 0, i32 1, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !128
  br label %52

52:                                               ; preds = %17, %31, %44, %38, %25, %9
  %53 = phi float [ %16, %9 ], [ %30, %25 ], [ %43, %38 ], [ %51, %44 ], [ %37, %31 ], [ %24, %17 ]
  %54 = phi ptr [ %15, %9 ], [ %28, %25 ], [ %41, %38 ], [ %50, %44 ], [ %36, %31 ], [ %23, %17 ]
  %55 = fmul float %53, 0x3F91DF46A0000000
  store float %55, ptr %54, align 4, !tbaa !128
  br label %56

56:                                               ; preds = %52, %5
  %57 = load ptr, ptr %6, align 8, !tbaa !42
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %5, !llvm.loop !651

59:                                               ; preds = %56, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @do_versions_image_settings_2_60(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !652 {
  %2 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 40
  %4 = load i16, ptr %3, align 2, !tbaa !653
  %5 = trunc i16 %4 to i8
  store i8 %5, ptr %2, align 8, !tbaa !654
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 39
  %7 = load i16, ptr %6, align 8, !tbaa !655
  %8 = trunc i16 %7 to i8
  %9 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 0, i32 2
  store i8 %8, ptr %9, align 2, !tbaa !656
  %10 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 42
  %11 = load i16, ptr %10, align 2, !tbaa !657
  %12 = trunc i16 %11 to i8
  %13 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 0, i32 5
  store i8 %12, ptr %13, align 1, !tbaa !658
  %14 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 0, i32 4
  store i8 %12, ptr %14, align 4, !tbaa !659
  %15 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 0, i32 1
  store i8 2, ptr %15, align 1, !tbaa !660
  %16 = and i8 %12, 7
  %17 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 0, i32 6
  store i8 %16, ptr %17, align 2, !tbaa !661
  switch i8 %5, label %84 [
    i8 23, label %18
    i8 22, label %37
    i8 30, label %43
    i8 26, label %75
    i8 27, label %75
  ]

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 41
  %20 = load i16, ptr %19, align 4, !tbaa !662
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  %23 = select i1 %22, i8 64, i8 16
  store i8 %23, ptr %15, align 1, !tbaa !660
  %24 = and i16 %20, 4
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 0, i32 3
  %28 = load i8, ptr %27, align 1, !tbaa !663
  %29 = or i8 %28, 2
  store i8 %29, ptr %27, align 1, !tbaa !663
  br label %30

30:                                               ; preds = %26, %18
  %31 = and i16 %20, 2
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %84, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 0, i32 3
  %35 = load i8, ptr %34, align 1, !tbaa !663
  %36 = or i8 %35, 1
  store i8 %36, ptr %34, align 1, !tbaa !663
  br label %84

37:                                               ; preds = %1
  %38 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 41
  %39 = load i16, ptr %38, align 4, !tbaa !662
  %40 = and i16 %39, 16
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %84, label %42

42:                                               ; preds = %37
  store i8 16, ptr %15, align 1, !tbaa !660
  br label %84

43:                                               ; preds = %1
  %44 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 41
  %45 = load i16, ptr %44, align 4, !tbaa !662
  %46 = zext i16 %45 to i32
  %47 = and i32 %46, 64
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = and i32 %46, 32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49, %43
  %53 = phi i8 [ 16, %43 ], [ 8, %49 ]
  store i8 %53, ptr %15, align 1, !tbaa !660
  br label %54

54:                                               ; preds = %52, %49
  %55 = and i16 %45, 128
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 0, i32 11
  %59 = load i8, ptr %58, align 8, !tbaa !664
  %60 = or i8 %59, 1
  store i8 %60, ptr %58, align 8, !tbaa !664
  br label %61

61:                                               ; preds = %57, %54
  %62 = and i16 %45, 256
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 0, i32 11
  %66 = load i8, ptr %65, align 8, !tbaa !664
  %67 = or i8 %66, 2
  store i8 %67, ptr %65, align 8, !tbaa !664
  br label %68

68:                                               ; preds = %64, %61
  %69 = and i16 %45, 512
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %84, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 0, i32 11
  %73 = load i8, ptr %72, align 8, !tbaa !664
  %74 = or i8 %73, 4
  store i8 %74, ptr %72, align 8, !tbaa !664
  br label %84

75:                                               ; preds = %1, %1
  %76 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 41
  %77 = load i16, ptr %76, align 4, !tbaa !662
  %78 = and i16 %77, 8
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 0, i32 7
  %82 = load i8, ptr %81, align 1, !tbaa !665
  %83 = or i8 %82, 1
  store i8 %83, ptr %81, align 1, !tbaa !665
  br label %84

84:                                               ; preds = %75, %80, %68, %71, %37, %42, %30, %33, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_zero_v3(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !666 {
  %2 = load float, ptr %0, align 4, !tbaa !128
  %3 = fcmp oeq float %2, 0.000000e+00
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !128
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !128
  %11 = fcmp oeq float %10, 0.000000e+00
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %8, %4, %1
  %14 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: optsize
declare void @fill_vn_fl(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_versions_nodetree_socket_use_flags_2_62(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !667 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %8

5:                                                ; preds = %24, %20
  %6 = load ptr, ptr %9, align 8, !tbaa !42
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8, !llvm.loop !668

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %10 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %8, %13
  %14 = phi ptr [ %18, %13 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct.bNodeSocket, ptr %14, i64 0, i32 8
  %16 = load i16, ptr %15, align 2, !tbaa !669
  %17 = and i16 %16, -5
  store i16 %17, ptr %15, align 2, !tbaa !669
  %18 = load ptr, ptr %14, align 8, !tbaa !42
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %13, !llvm.loop !670

20:                                               ; preds = %13, %8
  %21 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 18
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = icmp eq ptr %22, null
  br i1 %23, label %5, label %24

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %29, %24 ], [ %22, %20 ]
  %26 = getelementptr inbounds %struct.bNodeSocket, ptr %25, i64 0, i32 8
  %27 = load i16, ptr %26, align 2, !tbaa !669
  %28 = and i16 %27, -5
  store i16 %28, ptr %26, align 2, !tbaa !669
  %29 = load ptr, ptr %25, align 8, !tbaa !42
  %30 = icmp eq ptr %29, null
  br i1 %30, label %5, label %24, !llvm.loop !671

31:                                               ; preds = %5, %1
  %32 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 22
  %33 = load ptr, ptr %32, align 8, !tbaa !42
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %31, %35
  %36 = phi ptr [ %40, %35 ], [ %33, %31 ]
  %37 = getelementptr inbounds %struct.bNodeSocket, ptr %36, i64 0, i32 8
  %38 = load i16, ptr %37, align 2, !tbaa !669
  %39 = and i16 %38, -5
  store i16 %39, ptr %37, align 2, !tbaa !669
  %40 = load ptr, ptr %36, align 8, !tbaa !42
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %35, !llvm.loop !672

42:                                               ; preds = %35, %31
  %43 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 23
  %44 = load ptr, ptr %43, align 8, !tbaa !42
  %45 = icmp eq ptr %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %42, %46
  %47 = phi ptr [ %51, %46 ], [ %44, %42 ]
  %48 = getelementptr inbounds %struct.bNodeSocket, ptr %47, i64 0, i32 8
  %49 = load i16, ptr %48, align 2, !tbaa !669
  %50 = and i16 %49, -5
  store i16 %50, ptr %48, align 2, !tbaa !669
  %51 = load ptr, ptr %47, align 8, !tbaa !42
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %46, !llvm.loop !673

53:                                               ; preds = %46, %42
  %54 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  %55 = load ptr, ptr %54, align 8, !tbaa !42
  %56 = icmp eq ptr %55, null
  br i1 %56, label %71, label %57

57:                                               ; preds = %53, %57
  %58 = phi ptr [ %69, %57 ], [ %55, %53 ]
  %59 = getelementptr inbounds %struct.bNodeLink, ptr %58, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !404
  %61 = getelementptr inbounds %struct.bNodeSocket, ptr %60, i64 0, i32 8
  %62 = load i16, ptr %61, align 2, !tbaa !669
  %63 = or i16 %62, 4
  store i16 %63, ptr %61, align 2, !tbaa !669
  %64 = getelementptr inbounds %struct.bNodeLink, ptr %58, i64 0, i32 5
  %65 = load ptr, ptr %64, align 8, !tbaa !406
  %66 = getelementptr inbounds %struct.bNodeSocket, ptr %65, i64 0, i32 8
  %67 = load i16, ptr %66, align 2, !tbaa !669
  %68 = or i16 %67, 4
  store i16 %68, ptr %66, align 2, !tbaa !669
  %69 = load ptr, ptr %58, align 8, !tbaa !42
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %57, !llvm.loop !674

71:                                               ; preds = %57, %53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !675 {
  %2 = load ptr, ptr %0, align 8, !tbaa !676
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare ptr @BKE_tracking_object_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_bproperty_object_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @blo_reportf_wrap(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @txt_extended_ascii_as_utf8(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_versions_nodetree_multi_file_output_format_2_62_1(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !677 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca [768 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = icmp eq ptr %7, null
  br i1 %8, label %95, label %9

9:                                                ; preds = %2
  %10 = icmp eq ptr %0, null
  %11 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22
  br label %12

12:                                               ; preds = %9, %92
  %13 = phi ptr [ %7, %9 ], [ %93, %92 ]
  %14 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 8
  %15 = load i16, ptr %14, align 4, !tbaa !87
  switch i16 %15, label %92 [
    i16 223, label %16
    i16 267, label %71
  ]

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 21
  %18 = load ptr, ptr %17, align 8, !tbaa !89
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %20 = call ptr %19(i64 noundef 1288, ptr noundef nonnull @.str.19) #15
  %21 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 17
  %22 = call ptr @BLI_findlink(ptr noundef nonnull %21, i32 noundef 0) #15
  %23 = call ptr @BLI_findlink(ptr noundef nonnull %21, i32 noundef 1) #15
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #14
  call fastcc void @BLI_listbase_clear(ptr noundef nonnull %21) #13
  store ptr %20, ptr %17, align 8, !tbaa !89
  %24 = icmp eq ptr %18, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.bNodeSocket, ptr %22, i64 0, i32 5
  %27 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %26, i64 noundef 256) #15
  br label %56

28:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 768, ptr nonnull %4) #14
  call void @BLI_split_dirfile(ptr noundef nonnull %18, ptr noundef nonnull %4, ptr noundef nonnull %3, i64 noundef 768, i64 noundef 256) #15
  %29 = call ptr @BLI_strncpy(ptr noundef %20, ptr noundef nonnull %4, i64 noundef 1024) #15
  %30 = getelementptr inbounds %struct.NodeImageMultiFile, ptr %20, i64 0, i32 1
  %31 = getelementptr inbounds %struct.NodeImageFile, ptr %18, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %30, ptr noundef nonnull align 8 dereferenceable(248) %31, i64 248, i1 false), !tbaa.struct !678
  call void @llvm.lifetime.end.p0(i64 768, ptr nonnull %4) #14
  %32 = load i8, ptr %31, align 8, !tbaa !680
  switch i8 %32, label %56 [
    i8 7, label %33
    i8 23, label %33
  ]

33:                                               ; preds = %28, %28
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #14
  store i8 28, ptr %30, align 8, !tbaa !682
  %34 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 1024, ptr noundef nonnull @.str.20, ptr noundef nonnull %3) #15
  %35 = call ptr @ntreeCompositOutputFileAddSocket(ptr noundef %1, ptr noundef nonnull %13, ptr noundef nonnull %5, ptr noundef nonnull %30) #15
  %36 = getelementptr inbounds %struct.bNodeSocket, ptr %35, i64 0, i32 5
  %37 = call ptr @BLI_strncpy(ptr noundef nonnull %36, ptr noundef nonnull %5, i64 noundef 64) #15
  %38 = getelementptr inbounds %struct.bNodeSocket, ptr %22, i64 0, i32 23
  %39 = load ptr, ptr %38, align 8, !tbaa !684
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.bNodeLink, ptr %39, i64 0, i32 5
  store ptr %35, ptr %42, align 8, !tbaa !406
  %43 = getelementptr inbounds %struct.bNodeSocket, ptr %35, i64 0, i32 23
  store ptr %39, ptr %43, align 8, !tbaa !684
  br label %44

44:                                               ; preds = %41, %33
  %45 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 1024, ptr noundef nonnull @.str.21, ptr noundef nonnull %3) #15
  %46 = call ptr @ntreeCompositOutputFileAddSocket(ptr noundef %1, ptr noundef nonnull %13, ptr noundef nonnull %5, ptr noundef nonnull %30) #15
  %47 = getelementptr inbounds %struct.bNodeSocket, ptr %46, i64 0, i32 5
  %48 = call ptr @BLI_strncpy(ptr noundef nonnull %47, ptr noundef nonnull %5, i64 noundef 64) #15
  %49 = getelementptr inbounds %struct.bNodeSocket, ptr %23, i64 0, i32 23
  %50 = load ptr, ptr %49, align 8, !tbaa !684
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.bNodeLink, ptr %50, i64 0, i32 5
  store ptr %46, ptr %53, align 8, !tbaa !406
  %54 = getelementptr inbounds %struct.bNodeSocket, ptr %46, i64 0, i32 23
  store ptr %50, ptr %54, align 8, !tbaa !684
  br label %55

55:                                               ; preds = %52, %44
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #14
  br label %67

56:                                               ; preds = %25, %28
  %57 = getelementptr inbounds %struct.NodeImageMultiFile, ptr %20, i64 0, i32 1
  %58 = call ptr @ntreeCompositOutputFileAddSocket(ptr noundef %1, ptr noundef nonnull %13, ptr noundef nonnull %3, ptr noundef nonnull %57) #15
  %59 = getelementptr inbounds %struct.bNodeSocket, ptr %58, i64 0, i32 5
  %60 = call ptr @BLI_strncpy(ptr noundef nonnull %59, ptr noundef nonnull %3, i64 noundef 64) #15
  %61 = getelementptr inbounds %struct.bNodeSocket, ptr %22, i64 0, i32 23
  %62 = load ptr, ptr %61, align 8, !tbaa !684
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.bNodeLink, ptr %62, i64 0, i32 5
  store ptr %58, ptr %65, align 8, !tbaa !406
  %66 = getelementptr inbounds %struct.bNodeSocket, ptr %58, i64 0, i32 23
  store ptr %62, ptr %66, align 8, !tbaa !684
  br label %67

67:                                               ; preds = %56, %64, %55
  call void @nodeRemoveSocket(ptr noundef %1, ptr noundef nonnull %13, ptr noundef nonnull %22) #15
  call void @nodeRemoveSocket(ptr noundef %1, ptr noundef nonnull %13, ptr noundef %23) #15
  br i1 %24, label %70, label %68

68:                                               ; preds = %67
  %69 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %69(ptr noundef nonnull %18) #15
  br label %70

70:                                               ; preds = %68, %67
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #14
  br label %92

71:                                               ; preds = %12
  %72 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 21
  %73 = load ptr, ptr %72, align 8, !tbaa !89
  store i16 223, ptr %14, align 4, !tbaa !87
  br i1 %10, label %76, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.NodeImageMultiFile, ptr %73, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %75, ptr noundef nonnull align 8 dereferenceable(248) %11, i64 248, i1 false), !tbaa.struct !678
  br label %76

76:                                               ; preds = %74, %71
  %77 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 17
  %78 = load ptr, ptr %77, align 8, !tbaa !42
  %79 = icmp eq ptr %78, null
  br i1 %79, label %88, label %80

80:                                               ; preds = %76, %80
  %81 = phi ptr [ %86, %80 ], [ %78, %76 ]
  %82 = getelementptr inbounds %struct.bNodeSocket, ptr %81, i64 0, i32 6
  %83 = load ptr, ptr %82, align 8, !tbaa !685
  %84 = load i16, ptr %83, align 8, !tbaa !686
  %85 = getelementptr inbounds %struct.NodeImageMultiFileSocket, ptr %83, i64 0, i32 1
  store i16 %84, ptr %85, align 2, !tbaa !688
  %86 = load ptr, ptr %81, align 8, !tbaa !42
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %80, !llvm.loop !689

88:                                               ; preds = %80, %76
  %89 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 7
  %90 = load i32, ptr %89, align 8, !tbaa !373
  %91 = or i32 %90, 4
  store i32 %91, ptr %89, align 8, !tbaa !373
  br label %92

92:                                               ; preds = %12, %70, %88
  %93 = load ptr, ptr %13, align 8, !tbaa !42
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %12, !llvm.loop !690

95:                                               ; preds = %92, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_versions_mesh_mloopcol_swap_2_62_1(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !691 {
  %2 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !692
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %33

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 25
  %7 = load ptr, ptr %6, align 8, !tbaa !693
  %8 = getelementptr inbounds %struct.Mesh, ptr %0, i64 0, i32 31
  %9 = zext nneg i32 %3 to i64
  br label %10

10:                                               ; preds = %5, %30
  %11 = phi i64 [ 0, %5 ], [ %31, %30 ]
  %12 = getelementptr inbounds %struct.CustomDataLayer, ptr %7, i64 %11
  %13 = load i32, ptr %12, align 8, !tbaa !694
  %14 = icmp eq i32 %13, 17
  br i1 %14, label %15, label %30

15:                                               ; preds = %10
  %16 = load i32, ptr %8, align 4, !tbaa !696
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.CustomDataLayer, ptr %7, i64 %11, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !697
  br label %21

21:                                               ; preds = %18, %21
  %22 = phi ptr [ %28, %21 ], [ %20, %18 ]
  %23 = phi i32 [ %27, %21 ], [ 0, %18 ]
  %24 = load i8, ptr %22, align 1, !tbaa !698
  %25 = getelementptr inbounds %struct.MLoopCol, ptr %22, i64 0, i32 2
  %26 = load i8, ptr %25, align 1, !tbaa !700
  store i8 %26, ptr %22, align 1, !tbaa !698
  store i8 %24, ptr %25, align 1, !tbaa !700
  %27 = add nuw nsw i32 %23, 1
  %28 = getelementptr inbounds %struct.MLoopCol, ptr %22, i64 1
  %29 = icmp eq i32 %27, %16
  br i1 %29, label %30, label %21, !llvm.loop !701

30:                                               ; preds = %21, %15, %10
  %31 = add nuw nsw i64 %11, 1
  %32 = icmp eq i64 %31, %9
  br i1 %32, label %33, label %10, !llvm.loop !702

33:                                               ; preds = %30, %1
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_versions_nodetree_multi_file_output_path_2_63_1(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !703 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %1, %23
  %6 = phi ptr [ %24, %23 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 8
  %8 = load i16, ptr %7, align 4, !tbaa !87
  %9 = icmp eq i16 %8, 223
  br i1 %9, label %10, label %23

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %10, %14
  %15 = phi ptr [ %21, %14 ], [ %12, %10 ]
  %16 = getelementptr inbounds %struct.bNodeSocket, ptr %15, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !685
  %18 = getelementptr inbounds %struct.NodeImageMultiFileSocket, ptr %17, i64 0, i32 3
  %19 = getelementptr inbounds %struct.bNodeSocket, ptr %15, i64 0, i32 5
  %20 = tail call ptr @BLI_strncpy(ptr noundef nonnull %18, ptr noundef nonnull %19, i64 noundef 1024) #15
  %21 = load ptr, ptr %15, align 8, !tbaa !42
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %14, !llvm.loop !704

23:                                               ; preds = %14, %10, %5
  %24 = load ptr, ptr %6, align 8, !tbaa !42
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %5, !llvm.loop !705

26:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_versions_nodetree_file_output_layers_2_64_5(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !706 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %1, %23
  %6 = phi ptr [ %24, %23 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 8
  %8 = load i16, ptr %7, align 4, !tbaa !87
  %9 = icmp eq i16 %8, 223
  br i1 %9, label %10, label %23

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %10, %14
  %15 = phi ptr [ %21, %14 ], [ %12, %10 ]
  %16 = getelementptr inbounds %struct.bNodeSocket, ptr %15, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !685
  %18 = getelementptr inbounds %struct.NodeImageMultiFileSocket, ptr %17, i64 0, i32 5
  %19 = getelementptr inbounds %struct.NodeImageMultiFileSocket, ptr %17, i64 0, i32 3
  %20 = tail call ptr @BLI_strncpy(ptr noundef nonnull %18, ptr noundef nonnull %19, i64 noundef 30) #15
  tail call void @ntreeCompositOutputFileUniquePath(ptr noundef nonnull %11, ptr noundef nonnull %15, ptr noundef nonnull %19, i8 noundef zeroext 95) #15
  tail call void @ntreeCompositOutputFileUniqueLayer(ptr noundef nonnull %11, ptr noundef nonnull %15, ptr noundef nonnull %18, i8 noundef zeroext 95) #15
  %21 = load ptr, ptr %15, align 8, !tbaa !42
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %14, !llvm.loop !707

23:                                               ; preds = %14, %10, %5
  %24 = load ptr, ptr %6, align 8, !tbaa !42
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %5, !llvm.loop !708

26:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_versions_nodetree_image_layer_2_64_5(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !709 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %1, %24
  %6 = phi ptr [ %25, %24 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 8
  %8 = load i16, ptr %7, align 4, !tbaa !87
  %9 = icmp eq i16 %8, 220
  br i1 %9, label %10, label %24

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 18
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %10, %14
  %15 = phi ptr [ %22, %14 ], [ %12, %10 ]
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %17 = tail call ptr %16(i64 noundef 8, ptr noundef nonnull @.str.22) #15
  %18 = getelementptr inbounds %struct.bNodeSocket, ptr %15, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !685
  %20 = ptrtoint ptr %19 to i64
  %21 = trunc i64 %20 to i32
  store i32 %21, ptr %17, align 4, !tbaa !710
  store ptr %17, ptr %18, align 8, !tbaa !685
  %22 = load ptr, ptr %15, align 8, !tbaa !42
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %14, !llvm.loop !712

24:                                               ; preds = %14, %10, %5
  %25 = load ptr, ptr %6, align 8, !tbaa !42
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %5, !llvm.loop !713

27:                                               ; preds = %24, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_versions_nodetree_frame_2_64_6(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !714 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %1, %20
  %6 = phi ptr [ %23, %20 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 8
  %8 = load i16, ptr %7, align 4, !tbaa !87
  %9 = icmp eq i16 %8, 5
  br i1 %9, label %10, label %20

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 21
  %12 = load ptr, ptr %11, align 8, !tbaa !89
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %16 = tail call ptr %15(i64 noundef 4, ptr noundef nonnull @.str.23) #15
  store ptr %16, ptr %11, align 8, !tbaa !89
  %17 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 33
  %18 = load i16, ptr %17, align 8, !tbaa !463
  store i16 %18, ptr %16, align 2, !tbaa !715
  %19 = getelementptr inbounds %struct.NodeFrame, ptr %16, i64 0, i32 1
  store i16 20, ptr %19, align 2, !tbaa !717
  br label %20

20:                                               ; preds = %10, %14, %5
  %21 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 16
  %22 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 16, i64 2
  store float 0x3FE374BC60000000, ptr %22, align 4, !tbaa !128
  store <2 x float> <float 0x3FE374BC60000000, float 0x3FE374BC60000000>, ptr %21, align 4, !tbaa !128
  %23 = load ptr, ptr %6, align 8, !tbaa !42
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %5, !llvm.loop !718

25:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_iii(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 !PGOFuncName !719 {
  %4 = tail call fastcc i32 @max_ii(i32 noundef %0, i32 noundef %1) #13
  %5 = tail call fastcc i32 @max_ii(i32 noundef %4, i32 noundef %2) #13
  ret i32 %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_versions_affine_tracker_track(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !720 {
  %2 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !721
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %60

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %7 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 3, i64 1
  %9 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 4, i64 1
  %11 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 5
  %12 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 6
  br label %13

13:                                               ; preds = %5, %55
  %14 = phi i32 [ %3, %5 ], [ %56, %55 ]
  %15 = phi i64 [ 0, %5 ], [ %57, %55 ]
  %16 = load ptr, ptr %6, align 8, !tbaa !722
  %17 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %16, i64 %15, i32 1
  %18 = tail call fastcc zeroext i8 @is_zero_v2(ptr noundef nonnull %17) #13, !range !147
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %45, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %16, i64 %15, i32 1, i64 1
  %22 = tail call fastcc zeroext i8 @is_zero_v2(ptr noundef nonnull %21) #13, !range !147
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %16, i64 %15, i32 1, i64 2
  %26 = tail call fastcc zeroext i8 @is_zero_v2(ptr noundef nonnull %25) #13, !range !147
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %16, i64 %15, i32 1, i64 3
  %30 = tail call fastcc zeroext i8 @is_zero_v2(ptr noundef nonnull %29) #13, !range !147
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %28
  %33 = load float, ptr %7, align 8, !tbaa !128
  store float %33, ptr %17, align 4, !tbaa !128
  %34 = load float, ptr %8, align 4, !tbaa !128
  %35 = getelementptr inbounds [2 x float], ptr %17, i64 0, i64 1
  store float %34, ptr %35, align 4, !tbaa !128
  %36 = load float, ptr %9, align 8, !tbaa !128
  store float %36, ptr %21, align 4, !tbaa !128
  %37 = load float, ptr %8, align 4, !tbaa !128
  %38 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %16, i64 %15, i32 1, i64 1, i64 1
  store float %37, ptr %38, align 4, !tbaa !128
  %39 = load float, ptr %9, align 8, !tbaa !128
  store float %39, ptr %25, align 4, !tbaa !128
  %40 = load float, ptr %10, align 4, !tbaa !128
  %41 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %16, i64 %15, i32 1, i64 2, i64 1
  store float %40, ptr %41, align 4, !tbaa !128
  %42 = load float, ptr %7, align 8, !tbaa !128
  store float %42, ptr %29, align 4, !tbaa !128
  %43 = load float, ptr %10, align 4, !tbaa !128
  %44 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %16, i64 %15, i32 1, i64 3, i64 1
  store float %43, ptr %44, align 4, !tbaa !128
  br label %45

45:                                               ; preds = %32, %28, %24, %20, %13
  %46 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %16, i64 %15, i32 2
  %47 = tail call fastcc zeroext i8 @is_zero_v2(ptr noundef nonnull %46) #13, !range !147
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %16, i64 %15, i32 3
  %51 = tail call fastcc zeroext i8 @is_zero_v2(ptr noundef nonnull %50) #13, !range !147
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %46, ptr noundef nonnull %11) #13
  tail call fastcc void @copy_v2_v2(ptr noundef nonnull %50, ptr noundef nonnull %12) #13
  %54 = load i32, ptr %2, align 8, !tbaa !721
  br label %55

55:                                               ; preds = %53, %49, %45
  %56 = phi i32 [ %54, %53 ], [ %14, %49 ], [ %14, %45 ]
  %57 = add nuw nsw i64 %15, 1
  %58 = sext i32 %56 to i64
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %13, label %60, !llvm.loop !723

60:                                               ; preds = %55, %1
  ret void
}

; Function Attrs: optsize
declare void @BKE_sequence_iterator_begin(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_sequence_modifier_new(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: optsize
declare void @BKE_sequence_iterator_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_sequence_iterator_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_scene_disable_color_management(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @blo_do_versions_key_uidgen(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @CustomData_update_typemap(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @CustomData_free_layers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @animviz_settings_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_version_logic_264(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !724 {
  %2 = load ptr, ptr %0, align 8, !tbaa !42
  %3 = icmp eq ptr %2, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %1, %18
  %5 = phi ptr [ %19, %18 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 8
  %7 = load i16, ptr %6, align 2, !tbaa !264
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 11
  %11 = load i16, ptr %10, align 4, !tbaa !725
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 8
  store float 1.500000e+00, ptr %14, align 4, !tbaa !726
  %15 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 12
  store i16 7, ptr %15, align 2, !tbaa !727
  store i16 1, ptr %10, align 4, !tbaa !725
  %16 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 15
  store i16 6, ptr %16, align 4, !tbaa !728
  %17 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 13
  store i16 16, ptr %17, align 8, !tbaa !729
  br label %18

18:                                               ; preds = %4, %13, %9
  %19 = load ptr, ptr %5, align 8, !tbaa !42
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %4, !llvm.loop !730

21:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !731 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: optsize
declare void @BKE_sequence_alpha_mode_from_extension(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @blo_do_versions_newlibadr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: optsize
declare void @BKE_image_alpha_mode_from_extension(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_mesh_do_versions_cd_flag_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_versions_nodetree_customnodes(ptr noundef %0) unnamed_addr #0 !PGOFuncName !732 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 2
  store ptr null, ptr %2, align 8, !tbaa !733
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !84
  switch i32 %4, label %11 [
    i32 1, label %5
    i32 0, label %7
    i32 2, label %9
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %6, ptr noundef nonnull align 1 dereferenceable(19) @.str.6, i64 19, i1 false) #15
  br label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %8, ptr noundef nonnull align 1 dereferenceable(15) @.str.7, i64 15, i1 false) #15
  br label %11

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %10, ptr noundef nonnull align 1 dereferenceable(16) @.str.8, i64 16, i1 false) #15
  br label %11

11:                                               ; preds = %1, %9, %7, %5
  %12 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = icmp eq ptr %13, null
  br i1 %14, label %51, label %18

15:                                               ; preds = %44, %40
  %16 = load ptr, ptr %19, align 8, !tbaa !42
  %17 = icmp eq ptr %16, null
  br i1 %17, label %51, label %18, !llvm.loop !734

18:                                               ; preds = %11, %15
  %19 = phi ptr [ %16, %15 ], [ %13, %11 ]
  %20 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 5
  %21 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 8
  %22 = load i16, ptr %21, align 4, !tbaa !87
  %23 = sext i16 %22 to i32
  %24 = load i32, ptr %3, align 8, !tbaa !84
  %25 = tail call fastcc ptr @node_get_static_idname(i32 noundef %23, i32 noundef %24) #13
  %26 = tail call ptr @BLI_strncpy(ptr noundef nonnull %20, ptr noundef nonnull %25, i64 noundef 64) #15
  %27 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 7
  %28 = load i32, ptr %27, align 8, !tbaa !373
  %29 = or i32 %28, 65536
  store i32 %29, ptr %27, align 8, !tbaa !373
  %30 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 17
  %31 = load ptr, ptr %30, align 8, !tbaa !42
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %18, %33
  %34 = phi ptr [ %38, %33 ], [ %31, %18 ]
  %35 = getelementptr inbounds %struct.bNodeSocket, ptr %34, i64 0, i32 12
  %36 = tail call fastcc ptr @node_socket_get_static_idname(ptr noundef nonnull %34) #13
  %37 = tail call ptr @BLI_strncpy(ptr noundef nonnull %35, ptr noundef %36, i64 noundef 64) #15
  %38 = load ptr, ptr %34, align 8, !tbaa !42
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %33, !llvm.loop !735

40:                                               ; preds = %33, %18
  %41 = getelementptr inbounds %struct.bNode, ptr %19, i64 0, i32 18
  %42 = load ptr, ptr %41, align 8, !tbaa !42
  %43 = icmp eq ptr %42, null
  br i1 %43, label %15, label %44

44:                                               ; preds = %40, %44
  %45 = phi ptr [ %49, %44 ], [ %42, %40 ]
  %46 = getelementptr inbounds %struct.bNodeSocket, ptr %45, i64 0, i32 12
  %47 = tail call fastcc ptr @node_socket_get_static_idname(ptr noundef nonnull %45) #13
  %48 = tail call ptr @BLI_strncpy(ptr noundef nonnull %46, ptr noundef %47, i64 noundef 64) #15
  %49 = load ptr, ptr %45, align 8, !tbaa !42
  %50 = icmp eq ptr %49, null
  br i1 %50, label %15, label %44, !llvm.loop !736

51:                                               ; preds = %15, %11
  %52 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 22
  %53 = load ptr, ptr %52, align 8, !tbaa !42
  %54 = icmp eq ptr %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %51, %55
  %56 = phi ptr [ %60, %55 ], [ %53, %51 ]
  %57 = getelementptr inbounds %struct.bNodeSocket, ptr %56, i64 0, i32 12
  %58 = tail call fastcc ptr @node_socket_get_static_idname(ptr noundef nonnull %56) #13
  %59 = tail call ptr @BLI_strncpy(ptr noundef nonnull %57, ptr noundef %58, i64 noundef 64) #15
  %60 = load ptr, ptr %56, align 8, !tbaa !42
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %55, !llvm.loop !737

62:                                               ; preds = %55, %51
  %63 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 23
  %64 = load ptr, ptr %63, align 8, !tbaa !42
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %69, %62
  %67 = load ptr, ptr %12, align 8, !tbaa !42
  %68 = icmp eq ptr %67, null
  br i1 %68, label %79, label %82

69:                                               ; preds = %62, %69
  %70 = phi ptr [ %74, %69 ], [ %64, %62 ]
  %71 = getelementptr inbounds %struct.bNodeSocket, ptr %70, i64 0, i32 12
  %72 = tail call fastcc ptr @node_socket_get_static_idname(ptr noundef nonnull %70) #13
  %73 = tail call ptr @BLI_strncpy(ptr noundef nonnull %71, ptr noundef %72, i64 noundef 64) #15
  %74 = load ptr, ptr %70, align 8, !tbaa !42
  %75 = icmp eq ptr %74, null
  br i1 %75, label %66, label %69, !llvm.loop !738

76:                                               ; preds = %96, %92
  %77 = load ptr, ptr %83, align 8, !tbaa !42
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %82, !llvm.loop !739

79:                                               ; preds = %76, %66
  %80 = load ptr, ptr %52, align 8, !tbaa !42
  %81 = icmp eq ptr %80, null
  br i1 %81, label %101, label %104

82:                                               ; preds = %66, %76
  %83 = phi ptr [ %77, %76 ], [ %67, %66 ]
  %84 = getelementptr inbounds %struct.bNode, ptr %83, i64 0, i32 17
  %85 = load ptr, ptr %84, align 8, !tbaa !42
  %86 = icmp eq ptr %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %82, %87
  %88 = phi ptr [ %90, %87 ], [ %85, %82 ]
  %89 = getelementptr inbounds %struct.bNodeSocket, ptr %88, i64 0, i32 10
  store i16 1, ptr %89, align 2, !tbaa !740
  %90 = load ptr, ptr %88, align 8, !tbaa !42
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %87, !llvm.loop !741

92:                                               ; preds = %87, %82
  %93 = getelementptr inbounds %struct.bNode, ptr %83, i64 0, i32 18
  %94 = load ptr, ptr %93, align 8, !tbaa !42
  %95 = icmp eq ptr %94, null
  br i1 %95, label %76, label %96

96:                                               ; preds = %92, %96
  %97 = phi ptr [ %99, %96 ], [ %94, %92 ]
  %98 = getelementptr inbounds %struct.bNodeSocket, ptr %97, i64 0, i32 10
  store i16 2, ptr %98, align 2, !tbaa !740
  %99 = load ptr, ptr %97, align 8, !tbaa !42
  %100 = icmp eq ptr %99, null
  br i1 %100, label %76, label %96, !llvm.loop !742

101:                                              ; preds = %104, %79
  %102 = load ptr, ptr %63, align 8, !tbaa !42
  %103 = icmp eq ptr %102, null
  br i1 %103, label %109, label %110

104:                                              ; preds = %79, %104
  %105 = phi ptr [ %107, %104 ], [ %80, %79 ]
  %106 = getelementptr inbounds %struct.bNodeSocket, ptr %105, i64 0, i32 10
  store i16 1, ptr %106, align 2, !tbaa !740
  %107 = load ptr, ptr %105, align 8, !tbaa !42
  %108 = icmp eq ptr %107, null
  br i1 %108, label %101, label %104, !llvm.loop !743

109:                                              ; preds = %110, %101
  br i1 %68, label %120, label %123

110:                                              ; preds = %101, %110
  %111 = phi ptr [ %113, %110 ], [ %102, %101 ]
  %112 = getelementptr inbounds %struct.bNodeSocket, ptr %111, i64 0, i32 10
  store i16 2, ptr %112, align 2, !tbaa !740
  %113 = load ptr, ptr %111, align 8, !tbaa !42
  %114 = icmp eq ptr %113, null
  br i1 %114, label %109, label %110, !llvm.loop !744

115:                                              ; preds = %139, %135
  %116 = load ptr, ptr %124, align 8, !tbaa !42
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %123, !llvm.loop !745

118:                                              ; preds = %115
  %119 = load ptr, ptr %52, align 8, !tbaa !42
  br label %120

120:                                              ; preds = %118, %109
  %121 = phi ptr [ %119, %118 ], [ %80, %109 ]
  %122 = icmp eq ptr %121, null
  br i1 %122, label %146, label %149

123:                                              ; preds = %109, %115
  %124 = phi ptr [ %116, %115 ], [ %67, %109 ]
  %125 = getelementptr inbounds %struct.bNode, ptr %124, i64 0, i32 17
  %126 = load ptr, ptr %125, align 8, !tbaa !42
  %127 = icmp eq ptr %126, null
  br i1 %127, label %135, label %128

128:                                              ; preds = %123, %128
  %129 = phi ptr [ %133, %128 ], [ %126, %123 ]
  %130 = getelementptr inbounds %struct.bNodeSocket, ptr %129, i64 0, i32 4
  %131 = getelementptr inbounds %struct.bNodeSocket, ptr %129, i64 0, i32 5
  %132 = tail call ptr @BLI_strncpy(ptr noundef nonnull %130, ptr noundef nonnull %131, i64 noundef 64) #15
  tail call void @BLI_uniquename(ptr noundef nonnull %125, ptr noundef nonnull %129, ptr noundef nonnull @.str.24, i8 noundef zeroext 46, i32 noundef 32, i32 noundef 64) #15
  %133 = load ptr, ptr %129, align 8, !tbaa !42
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %128, !llvm.loop !746

135:                                              ; preds = %128, %123
  %136 = getelementptr inbounds %struct.bNode, ptr %124, i64 0, i32 18
  %137 = load ptr, ptr %136, align 8, !tbaa !42
  %138 = icmp eq ptr %137, null
  br i1 %138, label %115, label %139

139:                                              ; preds = %135, %139
  %140 = phi ptr [ %144, %139 ], [ %137, %135 ]
  %141 = getelementptr inbounds %struct.bNodeSocket, ptr %140, i64 0, i32 4
  %142 = getelementptr inbounds %struct.bNodeSocket, ptr %140, i64 0, i32 5
  %143 = tail call ptr @BLI_strncpy(ptr noundef nonnull %141, ptr noundef nonnull %142, i64 noundef 64) #15
  tail call void @BLI_uniquename(ptr noundef nonnull %136, ptr noundef nonnull %140, ptr noundef nonnull @.str.24, i8 noundef zeroext 46, i32 noundef 32, i32 noundef 64) #15
  %144 = load ptr, ptr %140, align 8, !tbaa !42
  %145 = icmp eq ptr %144, null
  br i1 %145, label %115, label %139, !llvm.loop !747

146:                                              ; preds = %149, %120
  %147 = load ptr, ptr %63, align 8, !tbaa !42
  %148 = icmp eq ptr %147, null
  br i1 %148, label %163, label %156

149:                                              ; preds = %120, %149
  %150 = phi ptr [ %154, %149 ], [ %121, %120 ]
  %151 = getelementptr inbounds %struct.bNodeSocket, ptr %150, i64 0, i32 4
  %152 = getelementptr inbounds %struct.bNodeSocket, ptr %150, i64 0, i32 5
  %153 = tail call ptr @BLI_strncpy(ptr noundef nonnull %151, ptr noundef nonnull %152, i64 noundef 64) #15
  tail call void @BLI_uniquename(ptr noundef nonnull %52, ptr noundef nonnull %150, ptr noundef nonnull @.str.24, i8 noundef zeroext 46, i32 noundef 32, i32 noundef 64) #15
  %154 = load ptr, ptr %150, align 8, !tbaa !42
  %155 = icmp eq ptr %154, null
  br i1 %155, label %146, label %149, !llvm.loop !748

156:                                              ; preds = %146, %156
  %157 = phi ptr [ %161, %156 ], [ %147, %146 ]
  %158 = getelementptr inbounds %struct.bNodeSocket, ptr %157, i64 0, i32 4
  %159 = getelementptr inbounds %struct.bNodeSocket, ptr %157, i64 0, i32 5
  %160 = tail call ptr @BLI_strncpy(ptr noundef nonnull %158, ptr noundef nonnull %159, i64 noundef 64) #15
  tail call void @BLI_uniquename(ptr noundef nonnull %63, ptr noundef nonnull %157, ptr noundef nonnull @.str.24, i8 noundef zeroext 46, i32 noundef 32, i32 noundef 64) #15
  %161 = load ptr, ptr %157, align 8, !tbaa !42
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %156, !llvm.loop !749

163:                                              ; preds = %156, %146
  ret void
}

; Function Attrs: optsize
declare void @nodeUniqueName(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @default_mtex(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ntreeCompositColorBalanceSyncFromLGG(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !750 {
  %3 = load float, ptr %1, align 4, !tbaa !128
  store float %3, ptr %0, align 4, !tbaa !128
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !128
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !128
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !128
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !128
  ret void
}

; Function Attrs: optsize
declare void @ntreeCompositColorBalanceSyncFromCDL(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @DNA_struct_elem_find(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BKE_tracking_object_get_tracks(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @BLI_strlen_utf8(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #9 !PGOFuncName !751 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @BLI_split_dirfile(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ntreeCompositOutputFileAddSocket(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @nodeRemoveSocket(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ntreeCompositOutputFileUniquePath(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ntreeCompositOutputFileUniqueLayer(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_zero_v2(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !752 {
  %2 = load float, ptr %0, align 4, !tbaa !128
  %3 = fcmp oeq float %2, 0.000000e+00
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !128
  %7 = fcmp oeq float %6, 0.000000e+00
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %4 ]
  ret i8 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !753 {
  %3 = load float, ptr %1, align 4, !tbaa !128
  store float %3, ptr %0, align 4, !tbaa !128
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !128
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !128
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @node_get_static_idname(i32 noundef %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !754 {
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = icmp ult i32 %1, 3
  br i1 %5, label %212, label %211

6:                                                ; preds = %2
  switch i32 %0, label %211 [
    i32 5, label %216
    i32 513, label %210
    i32 7, label %7
    i32 8, label %8
    i32 6, label %9
    i32 1, label %10
    i32 100, label %11
    i32 101, label %12
    i32 102, label %13
    i32 103, label %14
    i32 104, label %15
    i32 105, label %16
    i32 106, label %17
    i32 107, label %18
    i32 163, label %19
    i32 165, label %20
    i32 108, label %21
    i32 109, label %22
    i32 110, label %23
    i32 111, label %24
    i32 114, label %25
    i32 186, label %26
    i32 115, label %27
    i32 116, label %28
    i32 117, label %29
    i32 118, label %30
    i32 119, label %31
    i32 120, label %32
    i32 121, label %33
    i32 122, label %34
    i32 124, label %35
    i32 126, label %36
    i32 125, label %37
    i32 190, label %38
    i32 127, label %39
    i32 160, label %40
    i32 128, label %41
    i32 156, label %42
    i32 129, label %43
    i32 172, label %44
    i32 130, label %45
    i32 159, label %46
    i32 131, label %47
    i32 132, label %48
    i32 133, label %49
    i32 134, label %50
    i32 173, label %51
    i32 137, label %52
    i32 138, label %53
    i32 139, label %54
    i32 179, label %55
    i32 185, label %56
    i32 177, label %57
    i32 161, label %58
    i32 162, label %59
    i32 140, label %60
    i32 141, label %61
    i32 142, label %62
    i32 166, label %63
    i32 167, label %64
    i32 168, label %65
    i32 176, label %66
    i32 178, label %67
    i32 180, label %68
    i32 181, label %69
    i32 170, label %70
    i32 175, label %71
    i32 174, label %72
    i32 171, label %73
    i32 143, label %74
    i32 157, label %75
    i32 145, label %76
    i32 146, label %77
    i32 150, label %78
    i32 148, label %79
    i32 149, label %80
    i32 152, label %81
    i32 147, label %82
    i32 164, label %83
    i32 169, label %84
    i32 155, label %85
    i32 182, label %86
    i32 183, label %87
    i32 184, label %88
    i32 187, label %89
    i32 191, label %90
    i32 188, label %91
    i32 189, label %92
    i32 201, label %93
    i32 202, label %94
    i32 203, label %95
    i32 204, label %96
    i32 205, label %97
    i32 206, label %98
    i32 207, label %99
    i32 208, label %100
    i32 209, label %101
    i32 210, label %102
    i32 211, label %103
    i32 212, label %104
    i32 213, label %105
    i32 319, label %106
    i32 214, label %107
    i32 215, label %108
    i32 216, label %109
    i32 217, label %110
    i32 218, label %111
    i32 219, label %112
    i32 220, label %113
    i32 221, label %114
    i32 222, label %115
    i32 223, label %116
    i32 224, label %117
    i32 225, label %118
    i32 226, label %119
    i32 227, label %120
    i32 228, label %121
    i32 272, label %122
    i32 273, label %123
    i32 229, label %124
    i32 230, label %125
    i32 231, label %126
    i32 232, label %127
    i32 233, label %128
    i32 234, label %129
    i32 235, label %130
    i32 236, label %131
    i32 237, label %132
    i32 238, label %133
    i32 239, label %134
    i32 240, label %135
    i32 242, label %136
    i32 243, label %137
    i32 266, label %138
    i32 244, label %139
    i32 245, label %140
    i32 246, label %141
    i32 247, label %142
    i32 248, label %143
    i32 249, label %144
    i32 250, label %145
    i32 251, label %146
    i32 252, label %147
    i32 253, label %148
    i32 254, label %149
    i32 255, label %150
    i32 256, label %151
    i32 301, label %152
    i32 302, label %153
    i32 303, label %154
    i32 258, label %155
    i32 259, label %156
    i32 257, label %157
    i32 260, label %158
    i32 261, label %159
    i32 262, label %160
    i32 264, label %161
    i32 263, label %162
    i32 265, label %163
    i32 313, label %164
    i32 314, label %165
    i32 315, label %166
    i32 316, label %167
    i32 317, label %168
    i32 312, label %169
    i32 268, label %170
    i32 269, label %171
    i32 270, label %172
    i32 271, label %173
    i32 318, label %174
    i32 320, label %175
    i32 321, label %176
    i32 304, label %177
    i32 401, label %178
    i32 402, label %179
    i32 403, label %180
    i32 404, label %181
    i32 405, label %182
    i32 406, label %183
    i32 407, label %184
    i32 408, label %185
    i32 409, label %186
    i32 410, label %187
    i32 411, label %188
    i32 412, label %189
    i32 413, label %190
    i32 414, label %191
    i32 415, label %192
    i32 416, label %193
    i32 417, label %194
    i32 418, label %195
    i32 419, label %196
    i32 420, label %197
    i32 421, label %198
    i32 422, label %199
    i32 423, label %200
    i32 512, label %201
    i32 505, label %202
    i32 504, label %203
    i32 503, label %204
    i32 501, label %205
    i32 502, label %206
    i32 511, label %207
    i32 507, label %208
    i32 506, label %209
  ]

7:                                                ; preds = %6
  br label %216

8:                                                ; preds = %6
  br label %216

9:                                                ; preds = %6
  br label %216

10:                                               ; preds = %6
  br label %216

11:                                               ; preds = %6
  br label %216

12:                                               ; preds = %6
  br label %216

13:                                               ; preds = %6
  br label %216

14:                                               ; preds = %6
  br label %216

15:                                               ; preds = %6
  br label %216

16:                                               ; preds = %6
  br label %216

17:                                               ; preds = %6
  br label %216

18:                                               ; preds = %6
  br label %216

19:                                               ; preds = %6
  br label %216

20:                                               ; preds = %6
  br label %216

21:                                               ; preds = %6
  br label %216

22:                                               ; preds = %6
  br label %216

23:                                               ; preds = %6
  br label %216

24:                                               ; preds = %6
  br label %216

25:                                               ; preds = %6
  br label %216

26:                                               ; preds = %6
  br label %216

27:                                               ; preds = %6
  br label %216

28:                                               ; preds = %6
  br label %216

29:                                               ; preds = %6
  br label %216

30:                                               ; preds = %6
  br label %216

31:                                               ; preds = %6
  br label %216

32:                                               ; preds = %6
  br label %216

33:                                               ; preds = %6
  br label %216

34:                                               ; preds = %6
  br label %216

35:                                               ; preds = %6
  br label %216

36:                                               ; preds = %6
  br label %216

37:                                               ; preds = %6
  br label %216

38:                                               ; preds = %6
  br label %216

39:                                               ; preds = %6
  br label %216

40:                                               ; preds = %6
  br label %216

41:                                               ; preds = %6
  br label %216

42:                                               ; preds = %6
  br label %216

43:                                               ; preds = %6
  br label %216

44:                                               ; preds = %6
  br label %216

45:                                               ; preds = %6
  br label %216

46:                                               ; preds = %6
  br label %216

47:                                               ; preds = %6
  br label %216

48:                                               ; preds = %6
  br label %216

49:                                               ; preds = %6
  br label %216

50:                                               ; preds = %6
  br label %216

51:                                               ; preds = %6
  br label %216

52:                                               ; preds = %6
  br label %216

53:                                               ; preds = %6
  br label %216

54:                                               ; preds = %6
  br label %216

55:                                               ; preds = %6
  br label %216

56:                                               ; preds = %6
  br label %216

57:                                               ; preds = %6
  br label %216

58:                                               ; preds = %6
  br label %216

59:                                               ; preds = %6
  br label %216

60:                                               ; preds = %6
  br label %216

61:                                               ; preds = %6
  br label %216

62:                                               ; preds = %6
  br label %216

63:                                               ; preds = %6
  br label %216

64:                                               ; preds = %6
  br label %216

65:                                               ; preds = %6
  br label %216

66:                                               ; preds = %6
  br label %216

67:                                               ; preds = %6
  br label %216

68:                                               ; preds = %6
  br label %216

69:                                               ; preds = %6
  br label %216

70:                                               ; preds = %6
  br label %216

71:                                               ; preds = %6
  br label %216

72:                                               ; preds = %6
  br label %216

73:                                               ; preds = %6
  br label %216

74:                                               ; preds = %6
  br label %216

75:                                               ; preds = %6
  br label %216

76:                                               ; preds = %6
  br label %216

77:                                               ; preds = %6
  br label %216

78:                                               ; preds = %6
  br label %216

79:                                               ; preds = %6
  br label %216

80:                                               ; preds = %6
  br label %216

81:                                               ; preds = %6
  br label %216

82:                                               ; preds = %6
  br label %216

83:                                               ; preds = %6
  br label %216

84:                                               ; preds = %6
  br label %216

85:                                               ; preds = %6
  br label %216

86:                                               ; preds = %6
  br label %216

87:                                               ; preds = %6
  br label %216

88:                                               ; preds = %6
  br label %216

89:                                               ; preds = %6
  br label %216

90:                                               ; preds = %6
  br label %216

91:                                               ; preds = %6
  br label %216

92:                                               ; preds = %6
  br label %216

93:                                               ; preds = %6
  br label %216

94:                                               ; preds = %6
  br label %216

95:                                               ; preds = %6
  br label %216

96:                                               ; preds = %6
  br label %216

97:                                               ; preds = %6
  br label %216

98:                                               ; preds = %6
  br label %216

99:                                               ; preds = %6
  br label %216

100:                                              ; preds = %6
  br label %216

101:                                              ; preds = %6
  br label %216

102:                                              ; preds = %6
  br label %216

103:                                              ; preds = %6
  br label %216

104:                                              ; preds = %6
  br label %216

105:                                              ; preds = %6
  br label %216

106:                                              ; preds = %6
  br label %216

107:                                              ; preds = %6
  br label %216

108:                                              ; preds = %6
  br label %216

109:                                              ; preds = %6
  br label %216

110:                                              ; preds = %6
  br label %216

111:                                              ; preds = %6
  br label %216

112:                                              ; preds = %6
  br label %216

113:                                              ; preds = %6
  br label %216

114:                                              ; preds = %6
  br label %216

115:                                              ; preds = %6
  br label %216

116:                                              ; preds = %6
  br label %216

117:                                              ; preds = %6
  br label %216

118:                                              ; preds = %6
  br label %216

119:                                              ; preds = %6
  br label %216

120:                                              ; preds = %6
  br label %216

121:                                              ; preds = %6
  br label %216

122:                                              ; preds = %6
  br label %216

123:                                              ; preds = %6
  br label %216

124:                                              ; preds = %6
  br label %216

125:                                              ; preds = %6
  br label %216

126:                                              ; preds = %6
  br label %216

127:                                              ; preds = %6
  br label %216

128:                                              ; preds = %6
  br label %216

129:                                              ; preds = %6
  br label %216

130:                                              ; preds = %6
  br label %216

131:                                              ; preds = %6
  br label %216

132:                                              ; preds = %6
  br label %216

133:                                              ; preds = %6
  br label %216

134:                                              ; preds = %6
  br label %216

135:                                              ; preds = %6
  br label %216

136:                                              ; preds = %6
  br label %216

137:                                              ; preds = %6
  br label %216

138:                                              ; preds = %6
  br label %216

139:                                              ; preds = %6
  br label %216

140:                                              ; preds = %6
  br label %216

141:                                              ; preds = %6
  br label %216

142:                                              ; preds = %6
  br label %216

143:                                              ; preds = %6
  br label %216

144:                                              ; preds = %6
  br label %216

145:                                              ; preds = %6
  br label %216

146:                                              ; preds = %6
  br label %216

147:                                              ; preds = %6
  br label %216

148:                                              ; preds = %6
  br label %216

149:                                              ; preds = %6
  br label %216

150:                                              ; preds = %6
  br label %216

151:                                              ; preds = %6
  br label %216

152:                                              ; preds = %6
  br label %216

153:                                              ; preds = %6
  br label %216

154:                                              ; preds = %6
  br label %216

155:                                              ; preds = %6
  br label %216

156:                                              ; preds = %6
  br label %216

157:                                              ; preds = %6
  br label %216

158:                                              ; preds = %6
  br label %216

159:                                              ; preds = %6
  br label %216

160:                                              ; preds = %6
  br label %216

161:                                              ; preds = %6
  br label %216

162:                                              ; preds = %6
  br label %216

163:                                              ; preds = %6
  br label %216

164:                                              ; preds = %6
  br label %216

165:                                              ; preds = %6
  br label %216

166:                                              ; preds = %6
  br label %216

167:                                              ; preds = %6
  br label %216

168:                                              ; preds = %6
  br label %216

169:                                              ; preds = %6
  br label %216

170:                                              ; preds = %6
  br label %216

171:                                              ; preds = %6
  br label %216

172:                                              ; preds = %6
  br label %216

173:                                              ; preds = %6
  br label %216

174:                                              ; preds = %6
  br label %216

175:                                              ; preds = %6
  br label %216

176:                                              ; preds = %6
  br label %216

177:                                              ; preds = %6
  br label %216

178:                                              ; preds = %6
  br label %216

179:                                              ; preds = %6
  br label %216

180:                                              ; preds = %6
  br label %216

181:                                              ; preds = %6
  br label %216

182:                                              ; preds = %6
  br label %216

183:                                              ; preds = %6
  br label %216

184:                                              ; preds = %6
  br label %216

185:                                              ; preds = %6
  br label %216

186:                                              ; preds = %6
  br label %216

187:                                              ; preds = %6
  br label %216

188:                                              ; preds = %6
  br label %216

189:                                              ; preds = %6
  br label %216

190:                                              ; preds = %6
  br label %216

191:                                              ; preds = %6
  br label %216

192:                                              ; preds = %6
  br label %216

193:                                              ; preds = %6
  br label %216

194:                                              ; preds = %6
  br label %216

195:                                              ; preds = %6
  br label %216

196:                                              ; preds = %6
  br label %216

197:                                              ; preds = %6
  br label %216

198:                                              ; preds = %6
  br label %216

199:                                              ; preds = %6
  br label %216

200:                                              ; preds = %6
  br label %216

201:                                              ; preds = %6
  br label %216

202:                                              ; preds = %6
  br label %216

203:                                              ; preds = %6
  br label %216

204:                                              ; preds = %6
  br label %216

205:                                              ; preds = %6
  br label %216

206:                                              ; preds = %6
  br label %216

207:                                              ; preds = %6
  br label %216

208:                                              ; preds = %6
  br label %216

209:                                              ; preds = %6
  br label %216

210:                                              ; preds = %6
  br label %216

211:                                              ; preds = %4, %6
  br label %216

212:                                              ; preds = %4
  %213 = zext nneg i32 %1 to i64
  %214 = shl i64 %213, 2
  %215 = call ptr @llvm.load.relative.i64(ptr @reltable.node_get_static_idname, i64 %214)
  br label %216

216:                                              ; preds = %212, %6, %211, %210, %209, %208, %207, %206, %205, %204, %203, %202, %201, %200, %199, %198, %197, %196, %195, %194, %193, %192, %191, %190, %189, %188, %187, %186, %185, %184, %183, %182, %181, %180, %179, %178, %177, %176, %175, %174, %173, %172, %171, %170, %169, %168, %167, %166, %165, %164, %163, %162, %161, %160, %159, %158, %157, %156, %155, %154, %153, %152, %151, %150, %149, %148, %147, %146, %145, %144, %143, %142, %141, %140, %139, %138, %137, %136, %135, %134, %133, %132, %131, %130, %129, %128, %127, %126, %125, %124, %123, %122, %121, %120, %119, %118, %117, %116, %115, %114, %113, %112, %111, %110, %109, %108, %107, %106, %105, %104, %103, %102, %101, %100, %99, %98, %97, %96, %95, %94, %93, %92, %91, %90, %89, %88, %87, %86, %85, %84, %83, %82, %81, %80, %79, %78, %77, %76, %75, %74, %73, %72, %71, %70, %69, %68, %67, %66, %65, %64, %63, %62, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7
  %217 = phi ptr [ @.str.234, %211 ], [ @.str.233, %210 ], [ @.str.232, %209 ], [ @.str.231, %208 ], [ @.str.230, %207 ], [ @.str.229, %206 ], [ @.str.228, %205 ], [ @.str.227, %204 ], [ @.str.226, %203 ], [ @.str.225, %202 ], [ @.str.224, %201 ], [ @.str.223, %200 ], [ @.str.222, %199 ], [ @.str.221, %198 ], [ @.str.220, %197 ], [ @.str.219, %196 ], [ @.str.218, %195 ], [ @.str.217, %194 ], [ @.str.216, %193 ], [ @.str.215, %192 ], [ @.str.214, %191 ], [ @.str.213, %190 ], [ @.str.212, %189 ], [ @.str.211, %188 ], [ @.str.210, %187 ], [ @.str.209, %186 ], [ @.str.208, %185 ], [ @.str.207, %184 ], [ @.str.206, %183 ], [ @.str.205, %182 ], [ @.str.204, %181 ], [ @.str.203, %180 ], [ @.str.202, %179 ], [ @.str.201, %178 ], [ @.str.200, %177 ], [ @.str.199, %176 ], [ @.str.198, %175 ], [ @.str.197, %174 ], [ @.str.196, %173 ], [ @.str.195, %172 ], [ @.str.194, %171 ], [ @.str.193, %170 ], [ @.str.192, %169 ], [ @.str.191, %168 ], [ @.str.190, %167 ], [ @.str.189, %166 ], [ @.str.188, %165 ], [ @.str.187, %164 ], [ @.str.186, %163 ], [ @.str.185, %162 ], [ @.str.184, %161 ], [ @.str.183, %160 ], [ @.str.182, %159 ], [ @.str.181, %158 ], [ @.str.180, %157 ], [ @.str.179, %156 ], [ @.str.178, %155 ], [ @.str.177, %154 ], [ @.str.176, %153 ], [ @.str.175, %152 ], [ @.str.174, %151 ], [ @.str.173, %150 ], [ @.str.172, %149 ], [ @.str.171, %148 ], [ @.str.170, %147 ], [ @.str.169, %146 ], [ @.str.168, %145 ], [ @.str.167, %144 ], [ @.str.166, %143 ], [ @.str.165, %142 ], [ @.str.164, %141 ], [ @.str.163, %140 ], [ @.str.162, %139 ], [ @.str.161, %138 ], [ @.str.160, %137 ], [ @.str.159, %136 ], [ @.str.158, %135 ], [ @.str.157, %134 ], [ @.str.156, %133 ], [ @.str.155, %132 ], [ @.str.154, %131 ], [ @.str.153, %130 ], [ @.str.152, %129 ], [ @.str.151, %128 ], [ @.str.150, %127 ], [ @.str.149, %126 ], [ @.str.148, %125 ], [ @.str.147, %124 ], [ @.str.146, %123 ], [ @.str.145, %122 ], [ @.str.144, %121 ], [ @.str.143, %120 ], [ @.str.142, %119 ], [ @.str.141, %118 ], [ @.str.140, %117 ], [ @.str.139, %116 ], [ @.str.138, %115 ], [ @.str.137, %114 ], [ @.str.136, %113 ], [ @.str.135, %112 ], [ @.str.134, %111 ], [ @.str.133, %110 ], [ @.str.132, %109 ], [ @.str.131, %108 ], [ @.str.130, %107 ], [ @.str.129, %106 ], [ @.str.128, %105 ], [ @.str.127, %104 ], [ @.str.126, %103 ], [ @.str.125, %102 ], [ @.str.124, %101 ], [ @.str.123, %100 ], [ @.str.122, %99 ], [ @.str.121, %98 ], [ @.str.120, %97 ], [ @.str.119, %96 ], [ @.str.118, %95 ], [ @.str.117, %94 ], [ @.str.116, %93 ], [ @.str.115, %92 ], [ @.str.114, %91 ], [ @.str.113, %90 ], [ @.str.112, %89 ], [ @.str.111, %88 ], [ @.str.110, %87 ], [ @.str.109, %86 ], [ @.str.108, %85 ], [ @.str.107, %84 ], [ @.str.106, %83 ], [ @.str.105, %82 ], [ @.str.104, %81 ], [ @.str.103, %80 ], [ @.str.102, %79 ], [ @.str.101, %78 ], [ @.str.100, %77 ], [ @.str.99, %76 ], [ @.str.98, %75 ], [ @.str.97, %74 ], [ @.str.96, %73 ], [ @.str.95, %72 ], [ @.str.94, %71 ], [ @.str.93, %70 ], [ @.str.92, %69 ], [ @.str.91, %68 ], [ @.str.90, %67 ], [ @.str.89, %66 ], [ @.str.88, %65 ], [ @.str.87, %64 ], [ @.str.86, %63 ], [ @.str.85, %62 ], [ @.str.84, %61 ], [ @.str.83, %60 ], [ @.str.82, %59 ], [ @.str.81, %58 ], [ @.str.80, %57 ], [ @.str.79, %56 ], [ @.str.78, %55 ], [ @.str.77, %54 ], [ @.str.76, %53 ], [ @.str.75, %52 ], [ @.str.74, %51 ], [ @.str.73, %50 ], [ @.str.72, %49 ], [ @.str.71, %48 ], [ @.str.70, %47 ], [ @.str.69, %46 ], [ @.str.68, %45 ], [ @.str.67, %44 ], [ @.str.66, %43 ], [ @.str.65, %42 ], [ @.str.64, %41 ], [ @.str.63, %40 ], [ @.str.62, %39 ], [ @.str.61, %38 ], [ @.str.60, %37 ], [ @.str.59, %36 ], [ @.str.58, %35 ], [ @.str.57, %34 ], [ @.str.56, %33 ], [ @.str.55, %32 ], [ @.str.54, %31 ], [ @.str.53, %30 ], [ @.str.52, %29 ], [ @.str.51, %28 ], [ @.str.50, %27 ], [ @.str.49, %26 ], [ @.str.48, %25 ], [ @.str.47, %24 ], [ @.str.46, %23 ], [ @.str.45, %22 ], [ @.str.44, %21 ], [ @.str.43, %20 ], [ @.str.42, %19 ], [ @.str.41, %18 ], [ @.str.40, %17 ], [ @.str.39, %16 ], [ @.str.38, %15 ], [ @.str.37, %14 ], [ @.str.36, %13 ], [ @.str.35, %12 ], [ @.str.34, %11 ], [ @.str.33, %10 ], [ @.str.32, %9 ], [ @.str.31, %8 ], [ @.str.30, %7 ], [ @.str.28, %6 ], [ %215, %212 ]
  ret ptr %217
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @node_socket_get_static_idname(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !755 {
  %2 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 7
  %3 = load i16, ptr %2, align 8, !tbaa !756
  switch i16 %3, label %30 [
    i16 0, label %4
    i16 6, label %9
    i16 4, label %14
    i16 1, label %16
    i16 2, label %21
    i16 7, label %23
    i16 3, label %28
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 15
  %6 = load ptr, ptr %5, align 8, !tbaa !633
  %7 = load i32, ptr %6, align 4, !tbaa !757
  %8 = tail call ptr @nodeStaticSocketType(i32 noundef 0, i32 noundef %7) #15
  br label %30

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 15
  %11 = load ptr, ptr %10, align 8, !tbaa !633
  %12 = load i32, ptr %11, align 4, !tbaa !758
  %13 = tail call ptr @nodeStaticSocketType(i32 noundef 6, i32 noundef %12) #15
  br label %30

14:                                               ; preds = %1
  %15 = tail call ptr @nodeStaticSocketType(i32 noundef 4, i32 noundef 0) #15
  br label %30

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 15
  %18 = load ptr, ptr %17, align 8, !tbaa !633
  %19 = load i32, ptr %18, align 4, !tbaa !760
  %20 = tail call ptr @nodeStaticSocketType(i32 noundef 1, i32 noundef %19) #15
  br label %30

21:                                               ; preds = %1
  %22 = tail call ptr @nodeStaticSocketType(i32 noundef 2, i32 noundef 0) #15
  br label %30

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 15
  %25 = load ptr, ptr %24, align 8, !tbaa !633
  %26 = load i32, ptr %25, align 4, !tbaa !762
  %27 = tail call ptr @nodeStaticSocketType(i32 noundef 7, i32 noundef %26) #15
  br label %30

28:                                               ; preds = %1
  %29 = tail call ptr @nodeStaticSocketType(i32 noundef 3, i32 noundef 0) #15
  br label %30

30:                                               ; preds = %1, %28, %23, %21, %16, %14, %9, %4
  %31 = phi ptr [ %29, %28 ], [ %27, %23 ], [ %22, %21 ], [ %20, %16 ], [ %15, %14 ], [ %13, %9 ], [ %8, %4 ], [ @.str.234, %1 ]
  ret ptr %31
}

; Function Attrs: optsize
declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @nodeStaticSocketType(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #13 = { optsize }
attributes #14 = { nounwind }
attributes #15 = { nounwind optsize }

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
!43 = !{!44, !46, i64 632}
!44 = !{!"Scene", !45, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !41, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !46, i64 232, !46, i64 236, !46, i64 240, !39, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !47, i64 280, !57, i64 4264, !41, i64 4296, !41, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !39, i64 4376, !39, i64 4378, !46, i64 4380, !41, i64 4384, !58, i64 4400, !59, i64 4416, !62, i64 4600, !36, i64 4608, !63, i64 4616, !36, i64 4640, !40, i64 4648, !40, i64 4656, !50, i64 4664, !51, i64 4824, !64, i64 4888, !36, i64 4952}
!45 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !39, i64 98, !46, i64 100, !46, i64 104, !46, i64 108, !36, i64 112}
!46 = !{!"int", !37, i64 0}
!47 = !{!"RenderData", !48, i64 0, !36, i64 248, !36, i64 256, !52, i64 264, !53, i64 328, !46, i64 400, !46, i64 404, !46, i64 408, !49, i64 412, !46, i64 416, !46, i64 420, !46, i64 424, !46, i64 428, !39, i64 432, !39, i64 434, !49, i64 436, !49, i64 440, !49, i64 444, !49, i64 448, !49, i64 452, !39, i64 456, !39, i64 458, !39, i64 460, !39, i64 462, !39, i64 464, !39, i64 466, !46, i64 468, !39, i64 472, !39, i64 474, !39, i64 476, !39, i64 478, !39, i64 480, !39, i64 482, !46, i64 484, !46, i64 488, !39, i64 492, !39, i64 494, !46, i64 496, !46, i64 500, !39, i64 504, !39, i64 506, !39, i64 508, !39, i64 510, !39, i64 512, !37, i64 514, !37, i64 515, !46, i64 516, !46, i64 520, !46, i64 524, !39, i64 528, !39, i64 530, !39, i64 532, !39, i64 534, !39, i64 536, !39, i64 538, !39, i64 540, !39, i64 542, !54, i64 544, !54, i64 560, !55, i64 576, !41, i64 592, !39, i64 608, !39, i64 610, !49, i64 612, !49, i64 616, !49, i64 620, !49, i64 624, !46, i64 628, !49, i64 632, !49, i64 636, !49, i64 640, !49, i64 644, !39, i64 648, !39, i64 650, !39, i64 652, !39, i64 654, !39, i64 656, !39, i64 658, !49, i64 660, !49, i64 664, !39, i64 668, !39, i64 670, !49, i64 672, !49, i64 676, !37, i64 680, !46, i64 1704, !39, i64 1708, !39, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !46, i64 2520, !39, i64 2524, !39, i64 2526, !49, i64 2528, !49, i64 2532, !39, i64 2536, !39, i64 2538, !49, i64 2540, !39, i64 2544, !39, i64 2546, !46, i64 2548, !39, i64 2552, !39, i64 2554, !39, i64 2556, !39, i64 2558, !49, i64 2560, !49, i64 2564, !36, i64 2568, !46, i64 2576, !49, i64 2580, !37, i64 2584, !56, i64 2616, !46, i64 3976, !46, i64 3980}
!48 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !39, i64 8, !39, i64 10, !49, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !50, i64 24, !51, i64 184}
!49 = !{!"float", !37, i64 0}
!50 = !{!"ColorManagedViewSettings", !46, i64 0, !46, i64 4, !37, i64 8, !37, i64 72, !49, i64 136, !49, i64 140, !36, i64 144, !36, i64 152}
!51 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!52 = !{!"QuicktimeCodecSettings", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !46, i64 32, !46, i64 36, !46, i64 40, !46, i64 44, !39, i64 48, !39, i64 50, !46, i64 52, !46, i64 56, !46, i64 60}
!53 = !{!"FFMpegCodecData", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !49, i64 32, !46, i64 36, !46, i64 40, !46, i64 44, !46, i64 48, !46, i64 52, !46, i64 56, !46, i64 60, !36, i64 64}
!54 = !{!"rctf", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12}
!55 = !{!"rcti", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12}
!56 = !{!"BakeData", !48, i64 0, !37, i64 248, !39, i64 1272, !39, i64 1274, !39, i64 1276, !39, i64 1278, !49, i64 1280, !49, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!57 = !{!"AudioData", !46, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !46, i64 16, !39, i64 20, !39, i64 22, !49, i64 24, !49, i64 28}
!58 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!59 = !{!"GameData", !58, i64 0, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !37, i64 34, !60, i64 40, !39, i64 64, !39, i64 66, !49, i64 68, !61, i64 72, !49, i64 128, !49, i64 132, !46, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !49, i64 164, !49, i64 168, !49, i64 172, !49, i64 176, !49, i64 180}
!60 = !{!"GameDome", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !49, i64 8, !49, i64 12, !36, i64 16}
!61 = !{!"RecastData", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28, !49, i64 32, !49, i64 36, !46, i64 40, !49, i64 44, !49, i64 48, !39, i64 52, !39, i64 54}
!62 = !{!"UnitSettings", !49, i64 0, !37, i64 4, !37, i64 5, !39, i64 6}
!63 = !{!"PhysicsSettings", !37, i64 0, !46, i64 12, !46, i64 16, !46, i64 20}
!64 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!65 = !{!44, !36, i64 248}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.mustprogress"}
!68 = distinct !{!68, !67}
!69 = !{!70, !39, i64 192}
!70 = !{!"ParticleSettings", !45, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !46, i64 152, !46, i64 156, !39, i64 160, !39, i64 162, !39, i64 164, !39, i64 166, !39, i64 168, !39, i64 170, !39, i64 172, !39, i64 174, !46, i64 176, !46, i64 180, !39, i64 184, !39, i64 186, !39, i64 188, !39, i64 190, !39, i64 192, !39, i64 194, !39, i64 196, !39, i64 198, !39, i64 200, !39, i64 202, !39, i64 204, !39, i64 206, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !39, i64 220, !39, i64 222, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !49, i64 232, !49, i64 236, !37, i64 240, !37, i64 248, !49, i64 256, !49, i64 260, !49, i64 264, !39, i64 268, !39, i64 270, !49, i64 272, !49, i64 276, !49, i64 280, !49, i64 284, !49, i64 288, !49, i64 292, !49, i64 296, !49, i64 300, !49, i64 304, !49, i64 308, !49, i64 312, !49, i64 316, !37, i64 320, !46, i64 324, !46, i64 328, !46, i64 332, !46, i64 336, !39, i64 340, !37, i64 342, !49, i64 348, !49, i64 352, !49, i64 356, !49, i64 360, !49, i64 364, !49, i64 368, !49, i64 372, !37, i64 376, !49, i64 388, !49, i64 392, !49, i64 396, !49, i64 400, !49, i64 404, !49, i64 408, !49, i64 412, !37, i64 416, !49, i64 428, !49, i64 432, !49, i64 436, !49, i64 440, !46, i64 444, !46, i64 448, !49, i64 452, !49, i64 456, !49, i64 460, !49, i64 464, !49, i64 468, !49, i64 472, !49, i64 476, !49, i64 480, !49, i64 484, !49, i64 488, !49, i64 492, !49, i64 496, !49, i64 500, !49, i64 504, !49, i64 508, !49, i64 512, !49, i64 516, !49, i64 520, !49, i64 524, !49, i64 528, !49, i64 532, !49, i64 536, !49, i64 540, !49, i64 544, !49, i64 548, !37, i64 552, !49, i64 560, !49, i64 564, !46, i64 568, !46, i64 572, !37, i64 576, !36, i64 720, !41, i64 728, !36, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !39, i64 792, !37, i64 794}
!71 = !{!70, !46, i64 176}
!72 = !{!70, !39, i64 170}
!73 = distinct !{!73, !67}
!74 = !{!35, !39, i64 1042}
!75 = !{!76, !37, i64 1042}
!76 = !{!"Object", !45, i64 0, !36, i64 120, !36, i64 128, !39, i64 136, !39, i64 138, !46, i64 140, !46, i64 144, !46, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !77, i64 312, !36, i64 360, !41, i64 368, !41, i64 384, !41, i64 400, !41, i64 416, !46, i64 432, !46, i64 436, !36, i64 440, !36, i64 448, !46, i64 456, !46, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !49, i64 616, !49, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !46, i64 944, !39, i64 948, !39, i64 950, !39, i64 952, !39, i64 954, !39, i64 956, !39, i64 958, !39, i64 960, !39, i64 962, !39, i64 964, !37, i64 966, !37, i64 967, !46, i64 968, !46, i64 972, !46, i64 976, !46, i64 980, !46, i64 984, !49, i64 988, !49, i64 992, !49, i64 996, !49, i64 1000, !49, i64 1004, !49, i64 1008, !49, i64 1012, !49, i64 1016, !49, i64 1020, !49, i64 1024, !49, i64 1028, !49, i64 1032, !39, i64 1036, !39, i64 1038, !39, i64 1040, !37, i64 1042, !37, i64 1043, !39, i64 1044, !37, i64 1046, !37, i64 1047, !49, i64 1048, !49, i64 1052, !41, i64 1056, !41, i64 1072, !41, i64 1088, !41, i64 1104, !49, i64 1120, !39, i64 1124, !39, i64 1126, !37, i64 1128, !46, i64 1144, !46, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !39, i64 1162, !37, i64 1164, !41, i64 1176, !41, i64 1192, !41, i64 1208, !41, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !39, i64 1266, !49, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !40, i64 1304, !40, i64 1312, !46, i64 1320, !46, i64 1324, !41, i64 1328, !41, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !41, i64 1400, !36, i64 1416}
!77 = !{!"bAnimVizSettings", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !46, i64 32, !46, i64 36, !46, i64 40, !46, i64 44}
!78 = !{!76, !37, i64 1043}
!79 = distinct !{!79, !67}
!80 = !{!81, !49, i64 156}
!81 = !{!"Camera", !45, i64 0, !36, i64 120, !37, i64 128, !37, i64 129, !39, i64 130, !49, i64 132, !49, i64 136, !49, i64 140, !49, i64 144, !49, i64 148, !49, i64 152, !49, i64 156, !49, i64 160, !49, i64 164, !49, i64 168, !49, i64 172, !36, i64 176, !36, i64 184, !37, i64 192, !37, i64 193}
!82 = !{!81, !49, i64 160}
!83 = distinct !{!83, !67}
!84 = !{!85, !46, i64 256}
!85 = !{!"bNodeTree", !45, i64 0, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 200, !36, i64 208, !37, i64 216, !41, i64 224, !41, i64 240, !46, i64 256, !46, i64 260, !46, i64 264, !46, i64 268, !46, i64 272, !39, i64 276, !39, i64 278, !46, i64 280, !46, i64 284, !39, i64 288, !39, i64 290, !46, i64 292, !54, i64 296, !41, i64 312, !41, i64 328, !36, i64 344, !86, i64 352, !46, i64 356, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !36, i64 408, !36, i64 416, !36, i64 424}
!86 = !{!"bNodeInstanceKey", !46, i64 0}
!87 = !{!88, !39, i64 172}
!88 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !46, i64 168, !39, i64 172, !39, i64 174, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !39, i64 184, !39, i64 186, !37, i64 188, !41, i64 200, !41, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !41, i64 264, !49, i64 280, !49, i64 284, !49, i64 288, !49, i64 292, !49, i64 296, !49, i64 300, !49, i64 304, !46, i64 308, !37, i64 312, !39, i64 376, !39, i64 378, !49, i64 380, !49, i64 384, !39, i64 388, !39, i64 390, !36, i64 392, !54, i64 400, !54, i64 416, !54, i64 432, !39, i64 448, !39, i64 450, !46, i64 452, !36, i64 456}
!89 = !{!88, !36, i64 248}
!90 = !{!91, !37, i64 40}
!91 = !{!"TexMapping", !37, i64 0, !37, i64 12, !37, i64 24, !46, i64 36, !37, i64 40, !37, i64 41, !37, i64 42, !37, i64 43, !46, i64 44, !37, i64 48, !37, i64 112, !37, i64 124, !36, i64 136}
!92 = !{!91, !37, i64 41}
!93 = !{!91, !37, i64 42}
!94 = distinct !{!94, !67}
!95 = distinct !{!95, !67}
!96 = distinct !{!96, !67}
!97 = !{!98, !36, i64 768}
!98 = !{!"Material", !45, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !49, i64 132, !49, i64 136, !49, i64 140, !49, i64 144, !49, i64 148, !49, i64 152, !49, i64 156, !49, i64 160, !49, i64 164, !49, i64 168, !49, i64 172, !49, i64 176, !49, i64 180, !49, i64 184, !49, i64 188, !49, i64 192, !49, i64 196, !49, i64 200, !49, i64 204, !49, i64 208, !49, i64 212, !49, i64 216, !49, i64 220, !99, i64 224, !100, i64 312, !49, i64 328, !49, i64 332, !49, i64 336, !49, i64 340, !49, i64 344, !49, i64 348, !49, i64 352, !39, i64 356, !39, i64 358, !39, i64 360, !37, i64 362, !37, i64 363, !49, i64 364, !49, i64 368, !39, i64 372, !39, i64 374, !49, i64 376, !49, i64 380, !49, i64 384, !49, i64 388, !39, i64 392, !39, i64 394, !46, i64 396, !46, i64 400, !46, i64 404, !46, i64 408, !39, i64 412, !39, i64 414, !39, i64 416, !39, i64 418, !49, i64 420, !49, i64 424, !49, i64 428, !49, i64 432, !49, i64 436, !49, i64 440, !49, i64 444, !49, i64 448, !49, i64 452, !49, i64 456, !37, i64 460, !49, i64 524, !49, i64 528, !49, i64 532, !46, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !39, i64 544, !39, i64 546, !39, i64 548, !37, i64 550, !37, i64 551, !39, i64 552, !39, i64 554, !49, i64 556, !49, i64 560, !37, i64 564, !49, i64 580, !49, i64 584, !39, i64 588, !39, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !39, i64 612, !39, i64 614, !49, i64 616, !49, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !49, i64 800, !49, i64 804, !49, i64 808, !49, i64 812, !49, i64 816, !39, i64 820, !39, i64 822, !37, i64 824, !37, i64 836, !49, i64 848, !49, i64 852, !49, i64 856, !49, i64 860, !49, i64 864, !49, i64 868, !49, i64 872, !39, i64 876, !39, i64 878, !46, i64 880, !39, i64 884, !39, i64 886, !37, i64 888, !39, i64 904, !39, i64 906, !39, i64 908, !39, i64 910, !39, i64 912, !37, i64 914, !36, i64 920, !41, i64 928}
!99 = !{!"VolumeSettings", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !49, i64 52, !49, i64 56, !49, i64 60, !39, i64 64, !39, i64 66, !39, i64 68, !39, i64 70, !49, i64 72, !49, i64 76, !49, i64 80, !49, i64 84}
!100 = !{!"GameSettings", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12}
!101 = distinct !{!101, !67}
!102 = distinct !{!102, !67}
!103 = distinct !{!103, !67}
!104 = distinct !{!104, !67}
!105 = !{!106, !46, i64 32}
!106 = !{!"SpaceLink", !36, i64 0, !36, i64 8, !41, i64 16, !46, i64 32, !49, i64 36, !37, i64 40}
!107 = !{!108, !49, i64 76}
!108 = !{!"View3D", !36, i64 0, !36, i64 8, !41, i64 16, !46, i64 32, !49, i64 36, !37, i64 40, !37, i64 56, !49, i64 72, !49, i64 76, !37, i64 80, !37, i64 81, !46, i64 84, !46, i64 88, !39, i64 92, !39, i64 94, !36, i64 96, !36, i64 104, !54, i64 112, !41, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !46, i64 224, !46, i64 228, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !39, i64 240, !39, i64 242, !49, i64 244, !49, i64 248, !49, i64 252, !49, i64 256, !37, i64 260, !37, i64 272, !39, i64 284, !39, i64 286, !39, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !41, i64 296, !41, i64 312, !41, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!109 = !{!108, !39, i64 242}
!110 = !{!108, !37, i64 80}
!111 = !{!112, !46, i64 76}
!112 = !{!"SpaceClip", !36, i64 0, !36, i64 8, !41, i64 16, !46, i64 32, !49, i64 36, !49, i64 40, !49, i64 44, !49, i64 48, !49, i64 52, !113, i64 56, !36, i64 64, !114, i64 72, !46, i64 208, !39, i64 212, !39, i64 214, !46, i64 216, !37, i64 220, !49, i64 228, !49, i64 232, !46, i64 236, !37, i64 240, !37, i64 304, !46, i64 368, !39, i64 372, !39, i64 374, !46, i64 376, !46, i64 380, !37, i64 384, !116, i64 392}
!113 = !{!"MovieClipUser", !46, i64 0, !39, i64 4, !39, i64 6}
!114 = !{!"MovieClipScopes", !39, i64 0, !39, i64 2, !46, i64 4, !46, i64 8, !46, i64 12, !115, i64 16, !36, i64 80, !36, i64 88, !37, i64 96, !39, i64 104, !39, i64 106, !46, i64 108, !36, i64 112, !36, i64 120, !37, i64 128}
!115 = !{!"MovieTrackingMarker", !37, i64 0, !37, i64 8, !37, i64 40, !37, i64 48, !46, i64 56, !46, i64 60}
!116 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!117 = distinct !{!117, !67}
!118 = distinct !{!118, !67}
!119 = !{!120, !49, i64 1168}
!120 = !{!"MovieClip", !45, i64 0, !36, i64 120, !37, i64 128, !46, i64 1152, !46, i64 1156, !37, i64 1160, !49, i64 1168, !49, i64 1172, !36, i64 1176, !36, i64 1184, !36, i64 1192, !121, i64 1200, !36, i64 1528, !127, i64 1536, !46, i64 2312, !46, i64 2316, !46, i64 2320, !46, i64 2324, !64, i64 2328}
!121 = !{!"MovieTracking", !122, i64 0, !123, i64 72, !41, i64 128, !41, i64 144, !124, i64 160, !125, i64 184, !36, i64 232, !36, i64 240, !41, i64 248, !46, i64 264, !46, i64 268, !36, i64 272, !126, i64 280}
!122 = !{!"MovieTrackingSettings", !46, i64 0, !39, i64 4, !39, i64 6, !49, i64 8, !39, i64 12, !39, i64 14, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !49, i64 24, !39, i64 28, !39, i64 30, !46, i64 32, !46, i64 36, !46, i64 40, !39, i64 44, !39, i64 46, !49, i64 48, !46, i64 52, !46, i64 56, !49, i64 60, !49, i64 64, !46, i64 68}
!123 = !{!"MovieTrackingCamera", !36, i64 0, !39, i64 8, !39, i64 10, !49, i64 12, !49, i64 16, !49, i64 20, !39, i64 24, !39, i64 26, !37, i64 28, !49, i64 36, !49, i64 40, !49, i64 44, !49, i64 48, !49, i64 52}
!124 = !{!"MovieTrackingReconstruction", !46, i64 0, !49, i64 4, !46, i64 8, !46, i64 12, !36, i64 16}
!125 = !{!"MovieTrackingStabilization", !46, i64 0, !46, i64 4, !46, i64 8, !49, i64 12, !36, i64 16, !49, i64 24, !49, i64 28, !49, i64 32, !46, i64 36, !46, i64 40, !49, i64 44}
!126 = !{!"MovieTrackingDopesheet", !46, i64 0, !39, i64 4, !39, i64 6, !41, i64 8, !41, i64 24, !46, i64 40, !46, i64 44}
!127 = !{!"MovieClipProxy", !37, i64 0, !39, i64 768, !39, i64 770, !39, i64 772, !39, i64 774}
!128 = !{!49, !49, i64 0}
!129 = !{!120, !39, i64 2310}
!130 = !{!120, !39, i64 2308}
!131 = !{!120, !39, i64 2306}
!132 = !{!120, !49, i64 1288}
!133 = !{!134, !49, i64 188}
!134 = !{!"MovieTrackingTrack", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !46, i64 120, !46, i64 124, !36, i64 128, !37, i64 136, !49, i64 148, !46, i64 152, !46, i64 156, !46, i64 160, !37, i64 164, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !46, i64 184, !49, i64 188, !36, i64 192, !49, i64 200, !49, i64 204}
!135 = distinct !{!135, !67}
!136 = distinct !{!136, !67}
!137 = !{!122, !39, i64 12}
!138 = !{!122, !39, i64 4}
!139 = !{!122, !49, i64 8}
!140 = !{!122, !39, i64 14}
!141 = distinct !{!141, !67}
!142 = distinct !{!142, !67}
!143 = distinct !{!143, !67}
!144 = distinct !{!144, !67}
!145 = distinct !{!145, !67}
!146 = distinct !{!146, !67}
!147 = !{i8 0, i8 2}
!148 = distinct !{!148, !67}
!149 = !{!150, !37, i64 1944}
!150 = !{!"Brush", !45, i64 0, !151, i64 120, !36, i64 144, !152, i64 152, !152, i64 464, !36, i64 776, !36, i64 784, !36, i64 792, !36, i64 800, !36, i64 808, !37, i64 816, !49, i64 1840, !39, i64 1844, !39, i64 1846, !49, i64 1848, !46, i64 1852, !46, i64 1856, !46, i64 1860, !49, i64 1864, !46, i64 1868, !46, i64 1872, !46, i64 1876, !46, i64 1880, !49, i64 1884, !49, i64 1888, !37, i64 1892, !49, i64 1904, !37, i64 1908, !46, i64 1920, !49, i64 1924, !49, i64 1928, !46, i64 1932, !46, i64 1936, !46, i64 1940, !37, i64 1944, !37, i64 1945, !37, i64 1946, !37, i64 1947, !49, i64 1948, !49, i64 1952, !49, i64 1956, !49, i64 1960, !49, i64 1964, !46, i64 1968, !46, i64 1972, !46, i64 1976, !49, i64 1980, !49, i64 1984, !46, i64 1988, !46, i64 1992, !49, i64 1996, !37, i64 2000, !37, i64 2012, !37, i64 2024, !37, i64 2032, !37, i64 2040, !37, i64 2048}
!151 = !{!"BrushClone", !36, i64 0, !37, i64 8, !49, i64 16, !49, i64 20}
!152 = !{!"MTex", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !49, i64 116, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !39, i64 128, !39, i64 130, !37, i64 132, !37, i64 133, !49, i64 140, !49, i64 144, !49, i64 148, !49, i64 152, !49, i64 156, !49, i64 160, !49, i64 164, !49, i64 168, !49, i64 172, !49, i64 176, !49, i64 180, !49, i64 184, !49, i64 188, !49, i64 192, !49, i64 196, !49, i64 200, !49, i64 204, !49, i64 208, !49, i64 212, !49, i64 216, !49, i64 220, !49, i64 224, !49, i64 228, !49, i64 232, !49, i64 236, !49, i64 240, !49, i64 244, !49, i64 248, !49, i64 252, !49, i64 256, !49, i64 260, !49, i64 264, !49, i64 268, !49, i64 272, !49, i64 276, !49, i64 280, !49, i64 284, !49, i64 288, !49, i64 292, !49, i64 296, !49, i64 300, !49, i64 304, !49, i64 308}
!153 = !{!150, !49, i64 1904}
!154 = distinct !{!154, !67}
!155 = distinct !{!155, !67}
!156 = distinct !{!156, !67}
!157 = !{!158, !36, i64 336}
!158 = !{!"Tex", !45, i64 0, !36, i64 120, !49, i64 128, !49, i64 132, !49, i64 136, !49, i64 140, !49, i64 144, !49, i64 148, !49, i64 152, !49, i64 156, !49, i64 160, !49, i64 164, !49, i64 168, !49, i64 172, !49, i64 176, !49, i64 180, !49, i64 184, !49, i64 188, !49, i64 192, !49, i64 196, !49, i64 200, !49, i64 204, !49, i64 208, !49, i64 212, !39, i64 216, !39, i64 218, !39, i64 220, !39, i64 222, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !49, i64 236, !49, i64 240, !49, i64 244, !49, i64 248, !46, i64 252, !46, i64 256, !39, i64 260, !39, i64 262, !39, i64 264, !39, i64 266, !46, i64 268, !46, i64 272, !46, i64 276, !46, i64 280, !49, i64 284, !49, i64 288, !49, i64 292, !159, i64 296, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !37, i64 408, !37, i64 409}
!159 = !{!"ImageUser", !36, i64 0, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !39, i64 28, !39, i64 30, !39, i64 32, !39, i64 34, !46, i64 36}
!160 = distinct !{!160, !67}
!161 = !{!162, !36, i64 512}
!162 = !{!"Lamp", !45, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !46, i64 132, !39, i64 136, !39, i64 138, !49, i64 140, !49, i64 144, !49, i64 148, !49, i64 152, !49, i64 156, !49, i64 160, !49, i64 164, !49, i64 168, !49, i64 172, !49, i64 176, !49, i64 180, !49, i64 184, !49, i64 188, !49, i64 192, !49, i64 196, !36, i64 200, !39, i64 208, !39, i64 210, !49, i64 212, !49, i64 216, !49, i64 220, !49, i64 224, !49, i64 228, !49, i64 232, !49, i64 236, !39, i64 240, !39, i64 242, !39, i64 244, !39, i64 246, !37, i64 248, !37, i64 249, !39, i64 250, !39, i64 252, !39, i64 254, !39, i64 256, !39, i64 258, !49, i64 260, !49, i64 264, !49, i64 268, !49, i64 272, !39, i64 276, !39, i64 278, !39, i64 280, !39, i64 282, !39, i64 284, !39, i64 286, !49, i64 288, !49, i64 292, !49, i64 296, !49, i64 300, !49, i64 304, !49, i64 308, !49, i64 312, !49, i64 316, !49, i64 320, !49, i64 324, !49, i64 328, !49, i64 332, !49, i64 336, !39, i64 340, !37, i64 342, !36, i64 344, !37, i64 352, !39, i64 496, !39, i64 498, !37, i64 500, !36, i64 504, !36, i64 512}
!163 = distinct !{!163, !67}
!164 = !{!165, !36, i64 520}
!165 = !{!"World", !45, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !39, i64 132, !39, i64 134, !49, i64 136, !49, i64 140, !49, i64 144, !49, i64 148, !49, i64 152, !49, i64 156, !49, i64 160, !49, i64 164, !49, i64 168, !49, i64 172, !49, i64 176, !49, i64 180, !49, i64 184, !49, i64 188, !49, i64 192, !49, i64 196, !39, i64 200, !39, i64 202, !39, i64 204, !39, i64 206, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !49, i64 216, !49, i64 220, !49, i64 224, !49, i64 228, !49, i64 232, !49, i64 236, !49, i64 240, !49, i64 244, !49, i64 248, !49, i64 252, !49, i64 256, !49, i64 260, !39, i64 264, !39, i64 266, !39, i64 268, !39, i64 270, !49, i64 272, !49, i64 276, !49, i64 280, !49, i64 284, !39, i64 288, !39, i64 290, !39, i64 292, !39, i64 294, !49, i64 296, !49, i64 300, !49, i64 304, !49, i64 308, !49, i64 312, !49, i64 316, !49, i64 320, !39, i64 324, !39, i64 326, !39, i64 328, !39, i64 330, !39, i64 332, !39, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !39, i64 504, !39, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!166 = distinct !{!166, !67}
!167 = distinct !{!167, !67}
!168 = !{!44, !39, i64 4564}
!169 = distinct !{!169, !67}
!170 = distinct !{!170, !67}
!171 = !{!121, !36, i64 248}
!172 = !{!121, !49, i64 64}
!173 = !{!174, !49, i64 84}
!174 = !{!"MovieTrackingObject", !36, i64 0, !36, i64 8, !37, i64 16, !46, i64 80, !49, i64 84, !41, i64 88, !41, i64 104, !124, i64 120, !46, i64 144, !46, i64 148}
!175 = !{!174, !36, i64 0}
!176 = distinct !{!176, !67}
!177 = distinct !{!177, !67}
!178 = !{!179, !39, i64 24}
!179 = !{!"bConstraint", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 26, !37, i64 28, !37, i64 29, !37, i64 30, !39, i64 94, !49, i64 96, !49, i64 100, !36, i64 104, !49, i64 112, !49, i64 116}
!180 = !{!179, !36, i64 16}
!181 = distinct !{!181, !67}
!182 = !{!76, !39, i64 136}
!183 = !{!184, !36, i64 1336}
!184 = !{!"FileData", !41, i64 0, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !36, i64 32, !36, i64 40, !36, i64 48, !46, i64 56, !36, i64 64, !37, i64 72, !37, i64 1096, !46, i64 1100, !185, i64 1104, !36, i64 1216, !36, i64 1224, !36, i64 1232, !46, i64 1240, !46, i64 1244, !46, i64 1248, !46, i64 1252, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !46, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336}
!185 = !{!"z_stream_s", !36, i64 0, !46, i64 8, !40, i64 16, !36, i64 24, !46, i64 32, !40, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !46, i64 88, !40, i64 96, !40, i64 104}
!186 = distinct !{!186, !67}
!187 = distinct !{!187, !67}
!188 = !{!189, !39, i64 24}
!189 = !{!"bActuator", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !37, i64 32, !36, i64 96, !36, i64 104}
!190 = !{!189, !36, i64 96}
!191 = !{!192, !39, i64 26}
!192 = !{!"bCameraActuator", !36, i64 0, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !39, i64 24, !39, i64 26, !49, i64 28}
!193 = distinct !{!193, !67}
!194 = !{!44, !36, i64 264}
!195 = !{!196, !46, i64 468}
!196 = !{!"ToolSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !49, i64 32, !49, i64 36, !49, i64 40, !39, i64 44, !39, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !49, i64 52, !39, i64 56, !37, i64 58, !37, i64 59, !197, i64 64, !199, i64 168, !49, i64 336, !49, i64 340, !39, i64 344, !39, i64 346, !37, i64 348, !37, i64 349, !39, i64 350, !49, i64 352, !49, i64 356, !49, i64 360, !49, i64 364, !49, i64 368, !49, i64 372, !49, i64 376, !49, i64 380, !49, i64 384, !49, i64 388, !39, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !36, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !39, i64 434, !39, i64 436, !39, i64 438, !39, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !46, i64 448, !46, i64 452, !46, i64 456, !46, i64 460, !39, i64 464, !39, i64 466, !46, i64 468, !49, i64 472, !49, i64 476, !200, i64 480, !201, i64 608}
!197 = !{!"ImagePaintSettings", !198, i64 0, !39, i64 40, !39, i64 42, !39, i64 44, !39, i64 46, !37, i64 48, !46, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !49, i64 100}
!198 = !{!"Paint", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !46, i64 28, !46, i64 32, !46, i64 36}
!199 = !{!"ParticleEditSettings", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !37, i64 8, !36, i64 120, !49, i64 128, !49, i64 132, !46, i64 136, !46, i64 140, !46, i64 144, !46, i64 148, !36, i64 152, !36, i64 160}
!200 = !{!"UnifiedPaintSettings", !46, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !37, i64 16, !37, i64 28, !46, i64 40, !37, i64 44, !49, i64 52, !46, i64 56, !46, i64 60, !37, i64 64, !37, i64 65, !49, i64 72, !37, i64 76, !46, i64 84, !49, i64 88, !37, i64 92, !37, i64 100, !46, i64 108, !36, i64 112, !49, i64 120, !46, i64 124}
!201 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !37, i64 20, !37, i64 21, !49, i64 24, !49, i64 28, !49, i64 32, !49, i64 36}
!202 = !{!200, !46, i64 0}
!203 = !{!196, !39, i64 464}
!204 = !{!200, !46, i64 40}
!205 = distinct !{!205, !67}
!206 = !{!207, !46, i64 128}
!207 = !{!"Text", !45, i64 0, !36, i64 120, !46, i64 128, !46, i64 132, !41, i64 136, !36, i64 152, !36, i64 160, !46, i64 168, !46, i64 172, !36, i64 176, !46, i64 184, !46, i64 188, !36, i64 192, !208, i64 200}
!208 = !{!"double", !37, i64 0}
!209 = !{!210, !46, i64 32}
!210 = !{!"TextLine", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !46, i64 32, !46, i64 36}
!211 = !{!207, !36, i64 152}
!212 = !{!207, !46, i64 168}
!213 = distinct !{!213, !67}
!214 = distinct !{!214, !67}
!215 = distinct !{!215, !67}
!216 = !{!217, !46, i64 16}
!217 = !{!"ModifierData", !36, i64 0, !36, i64 8, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!218 = !{!219, !36, i64 112}
!219 = !{!"DynamicPaintModifierData", !217, i64 0, !36, i64 112, !36, i64 120, !46, i64 128, !46, i64 132}
!220 = !{!221, !49, i64 280}
!221 = !{!"DynamicPaintSurface", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !41, i64 56, !46, i64 72, !37, i64 76, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !46, i64 156, !46, i64 160, !46, i64 164, !46, i64 168, !46, i64 172, !46, i64 176, !46, i64 180, !37, i64 184, !36, i64 200, !37, i64 208, !46, i64 272, !46, i64 276, !49, i64 280, !49, i64 284, !49, i64 288, !49, i64 292, !49, i64 296, !49, i64 300, !49, i64 304, !49, i64 308, !49, i64 312, !49, i64 316, !49, i64 320, !49, i64 324, !49, i64 328, !49, i64 332, !49, i64 336, !46, i64 340, !37, i64 344, !37, i64 408, !37, i64 1432, !37, i64 1496}
!222 = !{!221, !46, i64 156}
!223 = distinct !{!223, !67}
!224 = distinct !{!224, !67}
!225 = distinct !{!225, !67}
!226 = !{!227, !36, i64 128}
!227 = !{!"ClothModifierData", !217, i64 0, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !41, i64 152}
!228 = !{!229, !49, i64 112}
!229 = !{!"ClothSimSettings", !36, i64 0, !49, i64 8, !49, i64 12, !49, i64 16, !37, i64 20, !49, i64 32, !49, i64 36, !49, i64 40, !49, i64 44, !49, i64 48, !49, i64 52, !49, i64 56, !49, i64 60, !49, i64 64, !49, i64 68, !49, i64 72, !49, i64 76, !49, i64 80, !49, i64 84, !49, i64 88, !49, i64 92, !49, i64 96, !49, i64 100, !49, i64 104, !49, i64 108, !49, i64 112, !49, i64 116, !49, i64 120, !46, i64 124, !46, i64 128, !46, i64 132, !46, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !37, i64 156, !36, i64 160}
!230 = distinct !{!230, !67}
!231 = distinct !{!231, !67}
!232 = !{!233, !36, i64 112}
!233 = !{!"FluidsimModifierData", !217, i64 0, !36, i64 112, !36, i64 120}
!234 = !{!235, !49, i64 1252}
!235 = !{!"FluidsimSettings", !36, i64 0, !46, i64 8, !46, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !49, i64 24, !39, i64 28, !39, i64 30, !49, i64 32, !39, i64 36, !39, i64 38, !37, i64 40, !49, i64 52, !49, i64 56, !46, i64 60, !46, i64 64, !46, i64 68, !46, i64 72, !49, i64 76, !46, i64 80, !49, i64 84, !49, i64 88, !49, i64 92, !36, i64 96, !36, i64 104, !37, i64 112, !37, i64 1136, !37, i64 1148, !36, i64 1160, !39, i64 1168, !37, i64 1170, !37, i64 1171, !49, i64 1172, !46, i64 1176, !49, i64 1180, !49, i64 1184, !46, i64 1188, !46, i64 1192, !49, i64 1196, !49, i64 1200, !49, i64 1204, !36, i64 1208, !46, i64 1216, !49, i64 1220, !49, i64 1224, !49, i64 1228, !49, i64 1232, !49, i64 1236, !49, i64 1240, !49, i64 1244, !46, i64 1248, !49, i64 1252}
!236 = distinct !{!236, !67}
!237 = distinct !{!237, !67}
!238 = distinct !{!238, !67}
!239 = distinct !{!239, !67}
!240 = distinct !{!240, !67}
!241 = !{!37, !37, i64 0}
!242 = distinct !{!242, !67}
!243 = distinct !{!243, !67}
!244 = !{!245, !49, i64 184}
!245 = !{!"LatticeModifierData", !217, i64 0, !36, i64 112, !37, i64 120, !49, i64 184, !37, i64 188}
!246 = distinct !{!246, !67}
!247 = distinct !{!247, !67}
!248 = !{!235, !39, i64 36}
!249 = !{!235, !49, i64 32}
!250 = !{!235, !39, i64 38}
!251 = distinct !{!251, !67}
!252 = !{!70, !46, i64 152}
!253 = distinct !{!253, !67}
!254 = distinct !{!254, !67}
!255 = distinct !{!255, !67}
!256 = !{!196, !49, i64 32}
!257 = !{!196, !49, i64 492}
!258 = !{!196, !46, i64 520}
!259 = distinct !{!259, !67}
!260 = !{!150, !49, i64 1848}
!261 = distinct !{!261, !67}
!262 = distinct !{!262, !67}
!263 = distinct !{!263, !67}
!264 = !{!265, !39, i64 214}
!265 = !{!"ARegion", !36, i64 0, !36, i64 8, !266, i64 16, !55, i64 176, !55, i64 192, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !49, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !36, i64 240, !41, i64 248, !41, i64 264, !41, i64 280, !41, i64 296, !41, i64 312, !41, i64 328, !41, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!266 = !{!"View2D", !54, i64 0, !54, i64 16, !55, i64 32, !55, i64 48, !55, i64 64, !37, i64 80, !37, i64 88, !49, i64 96, !49, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !36, i64 128, !46, i64 136, !46, i64 140, !36, i64 144, !36, i64 152}
!267 = !{!265, !39, i64 216}
!268 = !{!265, !39, i64 218}
!269 = !{!265, !39, i64 130}
!270 = distinct !{!270, !67}
!271 = !{!112, !39, i64 214}
!272 = distinct !{!272, !67}
!273 = !{!162, !49, i64 336}
!274 = distinct !{!274, !67}
!275 = !{!81, !39, i64 130}
!276 = !{!81, !37, i64 128}
!277 = distinct !{!277, !67}
!278 = !{!279, !49, i64 520}
!279 = !{!"Curve", !45, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !39, i64 244, !39, i64 246, !39, i64 248, !39, i64 250, !49, i64 252, !49, i64 256, !46, i64 260, !39, i64 264, !39, i64 266, !46, i64 268, !49, i64 272, !49, i64 276, !49, i64 280, !39, i64 284, !39, i64 286, !39, i64 288, !39, i64 290, !46, i64 292, !46, i64 296, !37, i64 300, !39, i64 304, !37, i64 306, !37, i64 307, !49, i64 308, !49, i64 312, !49, i64 316, !49, i64 320, !49, i64 324, !49, i64 328, !49, i64 332, !49, i64 336, !49, i64 340, !49, i64 344, !46, i64 348, !46, i64 352, !46, i64 356, !46, i64 360, !46, i64 364, !36, i64 368, !36, i64 376, !37, i64 384, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !36, i64 480, !46, i64 488, !46, i64 492, !36, i64 496, !280, i64 504, !49, i64 512, !49, i64 516, !49, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!280 = !{!"CharInfo", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !39, i64 6}
!281 = distinct !{!281, !67}
!282 = distinct !{!282, !67}
!283 = distinct !{!283, !67}
!284 = distinct !{!284, !67}
!285 = distinct !{!285, !67}
!286 = distinct !{!286, !67}
!287 = distinct !{!287, !67}
!288 = distinct !{!288, !67}
!289 = distinct !{!289, !67}
!290 = distinct !{!290, !67}
!291 = !{!292, !46, i64 140}
!292 = !{!"SmokeModifierData", !217, i64 0, !36, i64 112, !36, i64 120, !36, i64 128, !49, i64 136, !46, i64 140}
!293 = !{!292, !36, i64 112}
!294 = !{!46, !46, i64 0}
!295 = !{!296, !49, i64 384}
!296 = !{!"SmokeDomainSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !37, i64 96, !37, i64 108, !37, i64 120, !37, i64 132, !37, i64 144, !37, i64 156, !37, i64 168, !37, i64 180, !37, i64 192, !37, i64 204, !37, i64 268, !37, i64 332, !37, i64 344, !37, i64 356, !37, i64 368, !46, i64 380, !49, i64 384, !49, i64 388, !46, i64 392, !46, i64 396, !49, i64 400, !49, i64 404, !49, i64 408, !46, i64 412, !46, i64 416, !46, i64 420, !46, i64 424, !39, i64 428, !39, i64 430, !46, i64 432, !49, i64 436, !37, i64 440, !49, i64 452, !46, i64 456, !46, i64 460, !37, i64 464, !37, i64 480, !36, i64 512, !46, i64 520, !49, i64 524, !49, i64 528, !46, i64 532, !37, i64 536, !46, i64 548, !49, i64 552, !49, i64 556, !49, i64 560, !49, i64 564, !49, i64 568, !37, i64 572}
!297 = !{!296, !49, i64 388}
!298 = distinct !{!298, !67}
!299 = !{!44, !49, i64 4592}
!300 = distinct !{!300, !67}
!301 = !{!302, !46, i64 980}
!302 = !{!"NodeTexImage", !303, i64 0, !159, i64 968, !46, i64 1008, !46, i64 1012, !49, i64 1016, !46, i64 1020}
!303 = !{!"NodeTexBase", !91, i64 0, !304, i64 144}
!304 = !{!"ColorMapping", !305, i64 0, !49, i64 776, !49, i64 780, !49, i64 784, !46, i64 788, !37, i64 792, !49, i64 804, !46, i64 808, !37, i64 812}
!305 = !{!"ColorBand", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!306 = !{!302, !46, i64 988}
!307 = !{!302, !37, i64 992}
!308 = !{!302, !37, i64 994}
!309 = distinct !{!309, !67}
!310 = distinct !{!310, !67}
!311 = !{!85, !46, i64 292}
!312 = distinct !{!312, !67}
!313 = !{!314, !49, i64 12}
!314 = !{!"NodeDefocus", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !39, i64 4, !39, i64 6, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28}
!315 = distinct !{!315, !67}
!316 = distinct !{!316, !67}
!317 = distinct !{!317, !67}
!318 = distinct !{!318, !67}
!319 = !{!112, !46, i64 376}
!320 = distinct !{!320, !67}
!321 = !{!120, !46, i64 2320}
!322 = distinct !{!322, !67}
!323 = distinct !{!323, !67}
!324 = distinct !{!324, !67}
!325 = !{!98, !49, i64 456}
!326 = distinct !{!326, !67}
!327 = !{!328, !37, i64 0}
!328 = !{!"NodeDilateErode", !37, i64 0, !37, i64 1}
!329 = distinct !{!329, !67}
!330 = distinct !{!330, !67}
!331 = !{!332, !49, i64 8}
!332 = !{!"NodeKeyingData", !49, i64 0, !49, i64 4, !49, i64 8, !46, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !46, i64 28, !46, i64 32, !46, i64 36, !46, i64 40, !46, i64 44}
!333 = distinct !{!333, !67}
!334 = distinct !{!334, !67}
!335 = distinct !{!335, !67}
!336 = !{!88, !49, i64 380}
!337 = distinct !{!337, !67}
!338 = distinct !{!338, !67}
!339 = !{!44, !36, i64 256}
!340 = !{!341, !46, i64 24}
!341 = !{!"SeqIterator", !36, i64 0, !46, i64 8, !46, i64 12, !36, i64 16, !46, i64 24}
!342 = !{!341, !36, i64 16}
!343 = !{!344, !36, i64 168}
!344 = !{!"Sequence", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !46, i64 96, !46, i64 100, !46, i64 104, !46, i64 108, !46, i64 112, !46, i64 116, !46, i64 120, !46, i64 124, !46, i64 128, !46, i64 132, !46, i64 136, !46, i64 140, !49, i64 144, !49, i64 148, !49, i64 152, !39, i64 156, !39, i64 158, !46, i64 160, !46, i64 164, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !49, i64 224, !49, i64 228, !36, i64 232, !36, i64 240, !36, i64 248, !41, i64 256, !36, i64 272, !36, i64 280, !49, i64 288, !49, i64 292, !49, i64 296, !49, i64 300, !36, i64 304, !46, i64 312, !46, i64 316, !46, i64 320, !49, i64 324, !46, i64 328, !37, i64 332, !37, i64 333, !41, i64 336}
!345 = !{!346, !36, i64 832}
!346 = !{!"Strip", !36, i64 0, !36, i64 8, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !36, i64 32, !37, i64 40, !36, i64 808, !36, i64 816, !36, i64 824, !36, i64 832, !64, i64 840}
!347 = !{i64 0, i64 12, !241, i64 12, i64 12, !241, i64 24, i64 12, !241, i64 36, i64 4, !294, i64 40, i64 4, !294}
!348 = !{!344, !49, i64 148}
!349 = !{!350, !49, i64 156}
!350 = !{!"ColorBalanceModifierData", !351, i64 0, !352, i64 112, !49, i64 156}
!351 = !{!"SequenceModifierData", !36, i64 0, !36, i64 8, !46, i64 16, !46, i64 20, !37, i64 24, !46, i64 88, !46, i64 92, !36, i64 96, !36, i64 104}
!352 = !{!"StripColorBalance", !37, i64 0, !37, i64 12, !37, i64 24, !46, i64 36, !46, i64 40}
!353 = distinct !{!353, !67}
!354 = distinct !{!354, !67}
!355 = !{!44, !46, i64 908}
!356 = distinct !{!356, !67}
!357 = !{!358, !39, i64 1248}
!358 = !{!"Image", !45, i64 0, !37, i64 120, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !37, i64 1176, !39, i64 1240, !39, i64 1242, !39, i64 1244, !39, i64 1246, !39, i64 1248, !39, i64 1250, !46, i64 1252, !39, i64 1256, !39, i64 1258, !39, i64 1260, !39, i64 1262, !39, i64 1264, !39, i64 1266, !46, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !49, i64 1296, !46, i64 1300, !39, i64 1304, !39, i64 1306, !46, i64 1308, !46, i64 1312, !37, i64 1316, !37, i64 1317, !39, i64 1318, !37, i64 1320, !49, i64 1336, !49, i64 1340, !64, i64 1344, !37, i64 1408, !37, i64 1409, !37, i64 1416}
!359 = !{!358, !39, i64 1246}
!360 = distinct !{!360, !67}
!361 = distinct !{!361, !67}
!362 = distinct !{!362, !67}
!363 = !{!152, !39, i64 0}
!364 = distinct !{!364, !67}
!365 = !{!366, !46, i64 1280}
!366 = !{!"Mesh", !45, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !367, i64 280, !367, i64 480, !367, i64 680, !367, i64 880, !367, i64 1080, !46, i64 1280, !46, i64 1284, !46, i64 1288, !46, i64 1292, !46, i64 1296, !46, i64 1300, !46, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !46, i64 1344, !39, i64 1348, !39, i64 1350, !49, i64 1352, !46, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !39, i64 1366, !36, i64 1368}
!367 = !{!"CustomData", !36, i64 0, !37, i64 8, !46, i64 172, !46, i64 176, !46, i64 180, !36, i64 184, !36, i64 192}
!368 = distinct !{!368, !67}
!369 = !{!76, !36, i64 288}
!370 = !{!371, !39, i64 130}
!371 = !{!"bPose", !41, i64 0, !36, i64 16, !39, i64 24, !39, i64 26, !46, i64 28, !46, i64 32, !49, i64 36, !37, i64 40, !37, i64 52, !41, i64 64, !46, i64 80, !46, i64 84, !36, i64 88, !36, i64 96, !77, i64 104, !37, i64 152}
!372 = distinct !{!372, !67}
!373 = !{!88, !46, i64 168}
!374 = distinct !{!374, !67}
!375 = distinct !{!375, !67}
!376 = distinct !{!376, !67}
!377 = !{!174, !46, i64 144}
!378 = !{!174, !46, i64 148}
!379 = distinct !{!379, !67}
!380 = distinct !{!380, !67}
!381 = !{!296, !49, i64 568}
!382 = !{!296, !49, i64 400}
!383 = !{!296, !46, i64 392}
!384 = !{!292, !36, i64 120}
!385 = !{!386, !49, i64 96}
!386 = !{!"SmokeFlowSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !46, i64 40, !49, i64 44, !49, i64 48, !49, i64 52, !49, i64 56, !37, i64 60, !49, i64 72, !49, i64 76, !49, i64 80, !49, i64 84, !49, i64 88, !46, i64 92, !49, i64 96, !49, i64 100, !46, i64 104, !37, i64 108, !39, i64 172, !39, i64 174, !39, i64 176, !39, i64 178, !46, i64 180}
!387 = !{!386, !49, i64 84}
!388 = distinct !{!388, !67}
!389 = distinct !{!389, !67}
!390 = distinct !{!390, !67}
!391 = !{!108, !49, i64 112}
!392 = !{!108, !49, i64 120}
!393 = !{!108, !49, i64 116}
!394 = !{!108, !49, i64 124}
!395 = distinct !{!395, !67}
!396 = !{!196, !49, i64 52}
!397 = !{!196, !37, i64 48}
!398 = distinct !{!398, !67}
!399 = distinct !{!399, !67}
!400 = !{!88, !36, i64 264}
!401 = !{!402, !36, i64 0}
!402 = !{!"bNodeLink", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !46, i64 48, !46, i64 52}
!403 = !{!402, !36, i64 16}
!404 = !{!402, !36, i64 32}
!405 = !{!402, !36, i64 24}
!406 = !{!402, !36, i64 40}
!407 = distinct !{!407, !67}
!408 = distinct !{!408, !67}
!409 = distinct !{!409, !67}
!410 = distinct !{!410, !67}
!411 = !{!412, !37, i64 72}
!412 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !55, i64 56, !37, i64 72, !37, i64 73, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !39, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !41, i64 96, !41, i64 112, !41, i64 128, !41, i64 144}
!413 = distinct !{!413, !67}
!414 = !{!44, !46, i64 776}
!415 = !{!44, !46, i64 780}
!416 = !{!44, !39, i64 772}
!417 = !{!44, !39, i64 774}
!418 = !{!44, !46, i64 764}
!419 = !{!44, !39, i64 758}
!420 = !{!44, !46, i64 768}
!421 = distinct !{!421, !67}
!422 = !{!76, !39, i64 1036}
!423 = !{!76, !39, i64 1038}
!424 = distinct !{!424, !67}
!425 = distinct !{!425, !67}
!426 = distinct !{!426, !67}
!427 = distinct !{!427, !67}
!428 = distinct !{!428, !67}
!429 = !{!76, !49, i64 1024}
!430 = !{!76, !49, i64 1032}
!431 = distinct !{!431, !67}
!432 = distinct !{!432, !67}
!433 = distinct !{!433, !67}
!434 = !{!435, !46, i64 232}
!435 = !{!"SpaceSeq", !36, i64 0, !36, i64 8, !41, i64 16, !46, i64 32, !49, i64 36, !37, i64 40, !266, i64 56, !49, i64 216, !49, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !46, i64 232, !49, i64 236, !46, i64 240, !46, i64 244, !36, i64 248, !436, i64 256}
!436 = !{!"SequencerScopes", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!437 = !{!438, !46, i64 36}
!438 = !{!"SpaceImage", !36, i64 0, !36, i64 8, !41, i64 16, !46, i64 32, !46, i64 36, !36, i64 40, !159, i64 48, !36, i64 88, !439, i64 96, !440, i64 5360, !36, i64 10520, !37, i64 10528, !49, i64 10536, !49, i64 10540, !49, i64 10544, !49, i64 10548, !49, i64 10552, !37, i64 10556, !37, i64 10557, !39, i64 10558, !39, i64 10560, !39, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !116, i64 10568}
!439 = !{!"Scopes", !46, i64 0, !46, i64 4, !46, i64 8, !49, i64 12, !46, i64 16, !49, i64 20, !49, i64 24, !46, i64 28, !49, i64 32, !46, i64 36, !37, i64 40, !440, i64 64, !36, i64 5224, !36, i64 5232, !36, i64 5240, !36, i64 5248, !46, i64 5256, !46, i64 5260}
!440 = !{!"Histogram", !46, i64 0, !46, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !49, i64 5128, !49, i64 5132, !39, i64 5136, !39, i64 5138, !46, i64 5140, !37, i64 5144}
!441 = !{!442, !39, i64 232}
!442 = !{!"SpaceNode", !36, i64 0, !36, i64 8, !41, i64 16, !46, i64 32, !49, i64 36, !37, i64 40, !266, i64 56, !36, i64 216, !36, i64 224, !39, i64 232, !39, i64 234, !49, i64 236, !49, i64 240, !49, i64 244, !49, i64 248, !49, i64 252, !37, i64 256, !41, i64 264, !36, i64 280, !36, i64 288, !37, i64 296, !46, i64 360, !46, i64 364, !39, i64 368, !39, i64 370, !39, i64 372, !39, i64 374, !41, i64 376, !36, i64 392}
!443 = !{!112, !46, i64 208}
!444 = distinct !{!444, !67}
!445 = !{!344, !46, i64 96}
!446 = !{!344, !37, i64 332}
!447 = distinct !{!447, !67}
!448 = !{!44, !39, i64 948}
!449 = !{!44, !36, i64 136}
!450 = !{!44, !36, i64 24}
!451 = !{!165, !39, i64 200}
!452 = !{!44, !39, i64 816}
!453 = distinct !{!453, !67}
!454 = !{!358, !37, i64 1408}
!455 = distinct !{!455, !67}
!456 = !{!158, !39, i64 232}
!457 = !{!158, !39, i64 228}
!458 = !{!158, !36, i64 24}
!459 = !{!158, !36, i64 352}
!460 = distinct !{!460, !67}
!461 = !{!85, !36, i64 24}
!462 = !{!88, !36, i64 240}
!463 = !{!88, !39, i64 376}
!464 = distinct !{!464, !67}
!465 = distinct !{!465, !67}
!466 = distinct !{!466, !67}
!467 = !{!279, !46, i64 268}
!468 = !{!279, !49, i64 276}
!469 = !{!279, !49, i64 280}
!470 = !{!471, !36, i64 72}
!471 = !{!"Nurb", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !46, i64 24, !46, i64 28, !37, i64 32, !39, i64 36, !39, i64 38, !39, i64 40, !39, i64 42, !39, i64 44, !39, i64 46, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !39, i64 80, !39, i64 82, !46, i64 84}
!472 = !{!471, !46, i64 24}
!473 = !{!474, !49, i64 44}
!474 = !{!"BezTriple", !37, i64 0, !49, i64 36, !49, i64 40, !49, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !49, i64 56, !49, i64 60, !49, i64 64, !37, i64 68}
!475 = distinct !{!475, !67}
!476 = !{!471, !36, i64 64}
!477 = !{!471, !46, i64 28}
!478 = !{!479, !49, i64 28}
!479 = !{!"BPoint", !37, i64 0, !49, i64 16, !49, i64 20, !39, i64 24, !39, i64 26, !49, i64 28, !49, i64 32}
!480 = distinct !{!480, !67}
!481 = distinct !{!481, !67}
!482 = distinct !{!482, !67}
!483 = distinct !{!483, !67}
!484 = !{!150, !39, i64 1846}
!485 = !{!150, !37, i64 284}
!486 = distinct !{!486, !67}
!487 = distinct !{!487, !67}
!488 = distinct !{!488, !67}
!489 = distinct !{!489, !67}
!490 = distinct !{!490, !67}
!491 = distinct !{!491, !67}
!492 = !{!442, !46, i64 360}
!493 = distinct !{!493, !67}
!494 = !{!85, !46, i64 268}
!495 = distinct !{!495, !67}
!496 = distinct !{!496, !67}
!497 = distinct !{!497, !67}
!498 = !{!150, !46, i64 1876}
!499 = distinct !{!499, !67}
!500 = !{!150, !46, i64 1856}
!501 = distinct !{!501, !67}
!502 = distinct !{!502, !67}
!503 = !{!44, !46, i64 2856}
!504 = !{!44, !49, i64 2860}
!505 = !{!506, !46, i64 144}
!506 = !{!"SceneRenderLayer", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !46, i64 96, !46, i64 100, !46, i64 104, !46, i64 108, !46, i64 112, !46, i64 116, !46, i64 120, !49, i64 124, !507, i64 128}
!507 = !{!"FreestyleConfig", !41, i64 0, !46, i64 16, !46, i64 20, !46, i64 24, !49, i64 28, !49, i64 32, !49, i64 36, !41, i64 40}
!508 = !{!506, !46, i64 148}
!509 = !{!506, !46, i64 152}
!510 = distinct !{!510, !67}
!511 = !{!201, !37, i64 20}
!512 = !{!201, !37, i64 3}
!513 = !{!201, !49, i64 16}
!514 = distinct !{!514, !67}
!515 = !{!516, !46, i64 244}
!516 = !{!"FreestyleLineStyle", !45, i64 0, !36, i64 120, !49, i64 128, !49, i64 132, !49, i64 136, !49, i64 140, !49, i64 144, !46, i64 148, !49, i64 152, !46, i64 156, !46, i64 160, !46, i64 164, !46, i64 168, !49, i64 172, !49, i64 176, !49, i64 180, !49, i64 184, !49, i64 188, !46, i64 192, !39, i64 196, !39, i64 198, !39, i64 200, !39, i64 202, !39, i64 204, !39, i64 206, !46, i64 208, !46, i64 212, !49, i64 216, !39, i64 220, !39, i64 222, !39, i64 224, !37, i64 226, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !39, i64 240, !39, i64 242, !46, i64 244, !37, i64 248, !36, i64 392, !41, i64 400, !41, i64 416, !41, i64 432, !41, i64 448}
!517 = !{!516, !46, i64 148}
!518 = !{!516, !49, i64 152}
!519 = !{!516, !46, i64 164}
!520 = !{!516, !46, i64 168}
!521 = distinct !{!521, !67}
!522 = !{!442, !36, i64 272}
!523 = !{i64 0, i64 4, !294}
!524 = distinct !{!524, !67}
!525 = distinct !{!525, !67}
!526 = distinct !{!526, !67}
!527 = !{!296, !46, i64 420}
!528 = !{!296, !46, i64 548}
!529 = distinct !{!529, !67}
!530 = distinct !{!530, !67}
!531 = !{!150, !46, i64 1976}
!532 = !{!150, !46, i64 1968}
!533 = !{!150, !46, i64 1972}
!534 = distinct !{!534, !67}
!535 = distinct !{!535, !67}
!536 = !{!537, !37, i64 14}
!537 = !{!"bShrinkwrapConstraint", !36, i64 0, !49, i64 8, !39, i64 12, !37, i64 14, !37, i64 15, !49, i64 16, !37, i64 20}
!538 = !{!537, !37, i64 15}
!539 = distinct !{!539, !67}
!540 = distinct !{!540, !67}
!541 = !{!386, !49, i64 88}
!542 = distinct !{!542, !67}
!543 = distinct !{!543, !67}
!544 = distinct !{!544, !67}
!545 = !{!442, !49, i64 252}
!546 = distinct !{!546, !67}
!547 = distinct !{!547, !67}
!548 = !{!549, !39, i64 16}
!549 = !{!"bSensor", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !37, i64 32, !36, i64 96, !36, i64 104, !36, i64 112, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126}
!550 = !{!549, !36, i64 96}
!551 = !{!552, !36, i64 64}
!552 = !{!"bTouchSensor", !37, i64 0, !36, i64 64, !49, i64 72, !49, i64 76}
!553 = !{!76, !36, i64 24}
!554 = !{!555, !39, i64 132}
!555 = !{!"bCollisionSensor", !37, i64 0, !37, i64 64, !39, i64 128, !39, i64 130, !39, i64 132, !39, i64 134}
!556 = !{!549, !39, i64 18}
!557 = distinct !{!557, !67}
!558 = distinct !{!558, !67}
!559 = distinct !{!559, !67}
!560 = distinct !{!560, !67}
!561 = distinct !{!561, !67}
!562 = distinct !{!562, !67}
!563 = distinct !{!563, !67}
!564 = distinct !{!564, !67}
!565 = distinct !{!565, !67}
!566 = !{!567, !39, i64 290}
!567 = !{!"SpaceOops", !36, i64 0, !36, i64 8, !41, i64 16, !46, i64 32, !49, i64 36, !37, i64 40, !266, i64 56, !41, i64 216, !36, i64 232, !37, i64 240, !568, i64 272, !39, i64 288, !39, i64 290, !39, i64 292, !39, i64 294, !36, i64 296}
!568 = !{!"TreeStoreElem", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !36, i64 8}
!569 = distinct !{!569, !67}
!570 = !{!184, !36, i64 1216}
!571 = distinct !{!571, !67}
!572 = distinct !{!572, !67}
!573 = !{!134, !49, i64 200}
!574 = distinct !{!574, !67}
!575 = distinct !{!575, !67}
!576 = !{!577, !46, i64 112}
!577 = !{!"TriangulateModifierData", !217, i64 0, !46, i64 112, !46, i64 116, !46, i64 120, !46, i64 124}
!578 = !{!577, !46, i64 116}
!579 = !{!577, !46, i64 120}
!580 = distinct !{!580, !67}
!581 = !{!196, !36, i64 16}
!582 = !{!583, !46, i64 40}
!583 = !{!"Sculpt", !198, i64 0, !46, i64 40, !37, i64 44, !49, i64 56, !46, i64 60, !49, i64 64, !49, i64 68, !36, i64 72, !36, i64 80}
!584 = !{!44, !39, i64 4558}
!585 = !{!196, !37, i64 432}
!586 = distinct !{!586, !67}
!587 = !{!162, !49, i64 180}
!588 = distinct !{!588, !67}
!589 = distinct !{!589, !67}
!590 = !{!591, !49, i64 112}
!591 = !{!"EdgeSplitModifierData", !217, i64 0, !49, i64 112, !46, i64 116}
!592 = !{!593, !49, i64 140}
!593 = !{!"BevelModifierData", !217, i64 0, !49, i64 112, !46, i64 116, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !39, i64 128, !39, i64 130, !46, i64 132, !49, i64 136, !49, i64 140, !37, i64 144}
!594 = distinct !{!594, !67}
!595 = !{!596, !49, i64 64}
!596 = !{!"bRadarSensor", !37, i64 0, !49, i64 64, !49, i64 68, !39, i64 72, !39, i64 74}
!597 = distinct !{!597, !67}
!598 = !{!599, !39, i64 0}
!599 = !{!"bConstraintActuator", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !39, i64 8, !39, i64 10, !46, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !37, i64 52, !37, i64 64}
!600 = !{!601, !49, i64 56}
!601 = !{!"bSoundActuator", !39, i64 0, !39, i64 2, !46, i64 4, !46, i64 8, !37, i64 12, !49, i64 16, !49, i64 20, !36, i64 24, !602, i64 32, !39, i64 64, !39, i64 66, !39, i64 68, !37, i64 70}
!602 = !{!"Sound3D", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28}
!603 = distinct !{!603, !67}
!604 = !{!344, !46, i64 100}
!605 = !{!344, !36, i64 304}
!606 = !{!607, !49, i64 4}
!607 = !{!"WipeVars", !49, i64 0, !49, i64 4, !39, i64 8, !39, i64 10}
!608 = distinct !{!608, !67}
!609 = distinct !{!609, !67}
!610 = distinct !{!610, !67}
!611 = distinct !{!611, !67}
!612 = distinct !{!612, !67}
!613 = !{!614, !49, i64 120}
!614 = !{!"MovieTrackingPlaneTrack", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !46, i64 88, !46, i64 92, !36, i64 96, !46, i64 104, !46, i64 108, !36, i64 112, !49, i64 120, !46, i64 124}
!615 = distinct !{!615, !67}
!616 = !{!583, !46, i64 36}
!617 = distinct !{!617, !67}
!618 = !{!279, !36, i64 368}
!619 = !{!279, !46, i64 360}
!620 = distinct !{!620, !67}
!621 = distinct !{!621, !67}
!622 = !{!623, !39, i64 122}
!623 = !{!"BuildModifierData", !217, i64 0, !49, i64 112, !49, i64 116, !39, i64 120, !39, i64 122, !46, i64 124}
!624 = !{!623, !39, i64 120}
!625 = distinct !{!625, !67}
!626 = distinct !{!626, !67}
!627 = distinct !{!627, !67}
!628 = !{!412, !36, i64 96}
!629 = distinct !{!629, !67}
!630 = distinct !{!630, !67}
!631 = !{!"versioning_260.c:do_versions_nodetree_image_default_alpha_output"}
!632 = !{!88, !36, i64 216}
!633 = !{!634, !36, i64 256}
!634 = !{!"bNodeSocket", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !37, i64 96, !36, i64 160, !39, i64 168, !39, i64 170, !39, i64 172, !39, i64 174, !36, i64 176, !37, i64 184, !49, i64 248, !49, i64 252, !36, i64 256, !39, i64 264, !39, i64 266, !46, i64 268, !36, i64 272, !46, i64 280, !46, i64 284, !36, i64 288, !36, i64 296, !635, i64 304}
!635 = !{!"bNodeStack", !37, i64 0, !49, i64 16, !49, i64 20, !36, i64 24, !39, i64 32, !39, i64 34, !39, i64 36, !39, i64 38, !39, i64 40, !39, i64 42, !37, i64 44}
!636 = distinct !{!636, !67}
!637 = !{!"versioning_260.c:do_versions_nodetree_convert_angle"}
!638 = !{!88, !36, i64 200}
!639 = !{!634, !36, i64 0}
!640 = !{!641, !49, i64 4}
!641 = !{!"bNodeSocketValueFloat", !46, i64 0, !49, i64 4, !49, i64 8, !49, i64 12}
!642 = !{!643, !49, i64 12}
!643 = !{!"NodeDBlurData", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !39, i64 24, !37, i64 26, !37, i64 27}
!644 = !{!643, !49, i64 16}
!645 = !{!314, !49, i64 24}
!646 = !{!647, !49, i64 0}
!647 = !{!"NodeChroma", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !37, i64 24, !39, i64 40, !39, i64 42}
!648 = !{!647, !49, i64 4}
!649 = !{!650, !49, i64 24}
!650 = !{!"NodeGlare", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28}
!651 = distinct !{!651, !67}
!652 = !{!"versioning_260.c:do_versions_image_settings_2_60"}
!653 = !{!47, !39, i64 506}
!654 = !{!48, !37, i64 0}
!655 = !{!47, !39, i64 504}
!656 = !{!48, !37, i64 2}
!657 = !{!47, !39, i64 510}
!658 = !{!48, !37, i64 5}
!659 = !{!48, !37, i64 4}
!660 = !{!48, !37, i64 1}
!661 = !{!48, !37, i64 6}
!662 = !{!47, !39, i64 508}
!663 = !{!48, !37, i64 3}
!664 = !{!48, !37, i64 16}
!665 = !{!48, !37, i64 7}
!666 = !{!"versioning_260.c:is_zero_v3"}
!667 = !{!"versioning_260.c:do_versions_nodetree_socket_use_flags_2_62"}
!668 = distinct !{!668, !67}
!669 = !{!634, !39, i64 170}
!670 = distinct !{!670, !67}
!671 = distinct !{!671, !67}
!672 = distinct !{!672, !67}
!673 = distinct !{!673, !67}
!674 = distinct !{!674, !67}
!675 = !{!"versioning_260.c:BLI_listbase_is_empty"}
!676 = !{!41, !36, i64 0}
!677 = !{!"versioning_260.c:do_versions_nodetree_multi_file_output_format_2_62_1"}
!678 = !{i64 0, i64 1, !241, i64 1, i64 1, !241, i64 2, i64 1, !241, i64 3, i64 1, !241, i64 4, i64 1, !241, i64 5, i64 1, !241, i64 6, i64 1, !241, i64 7, i64 1, !241, i64 8, i64 2, !679, i64 10, i64 2, !679, i64 12, i64 4, !128, i64 16, i64 1, !241, i64 17, i64 1, !241, i64 18, i64 6, !241, i64 24, i64 4, !294, i64 28, i64 4, !294, i64 32, i64 64, !241, i64 96, i64 64, !241, i64 160, i64 4, !128, i64 164, i64 4, !128, i64 168, i64 8, !42, i64 176, i64 8, !42, i64 184, i64 64, !241}
!679 = !{!39, !39, i64 0}
!680 = !{!681, !37, i64 1024}
!681 = !{!"NodeImageFile", !37, i64 0, !48, i64 1024, !46, i64 1272, !46, i64 1276}
!682 = !{!683, !37, i64 1024}
!683 = !{!"NodeImageMultiFile", !37, i64 0, !48, i64 1024, !46, i64 1272, !46, i64 1276, !46, i64 1280, !46, i64 1284}
!684 = !{!634, !36, i64 296}
!685 = !{!634, !36, i64 160}
!686 = !{!687, !39, i64 0}
!687 = !{!"NodeImageMultiFileSocket", !39, i64 0, !39, i64 2, !46, i64 4, !37, i64 8, !48, i64 1032, !37, i64 1280, !37, i64 1310}
!688 = !{!687, !39, i64 2}
!689 = distinct !{!689, !67}
!690 = distinct !{!690, !67}
!691 = !{!"versioning_260.c:do_versions_mesh_mloopcol_swap_2_62_1"}
!692 = !{!366, !46, i64 1252}
!693 = !{!366, !36, i64 1080}
!694 = !{!695, !46, i64 0}
!695 = !{!"CustomDataLayer", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !37, i64 32, !36, i64 96}
!696 = !{!366, !46, i64 1300}
!697 = !{!695, !36, i64 96}
!698 = !{!699, !37, i64 0}
!699 = !{!"MLoopCol", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3}
!700 = !{!699, !37, i64 2}
!701 = distinct !{!701, !67}
!702 = distinct !{!702, !67}
!703 = !{!"versioning_260.c:do_versions_nodetree_multi_file_output_path_2_63_1"}
!704 = distinct !{!704, !67}
!705 = distinct !{!705, !67}
!706 = !{!"versioning_260.c:do_versions_nodetree_file_output_layers_2_64_5"}
!707 = distinct !{!707, !67}
!708 = distinct !{!708, !67}
!709 = !{!"versioning_260.c:do_versions_nodetree_image_layer_2_64_5"}
!710 = !{!711, !46, i64 0}
!711 = !{!"NodeImageLayer", !46, i64 0, !46, i64 4}
!712 = distinct !{!712, !67}
!713 = distinct !{!713, !67}
!714 = !{!"versioning_260.c:do_versions_nodetree_frame_2_64_6"}
!715 = !{!716, !39, i64 0}
!716 = !{!"NodeFrame", !39, i64 0, !39, i64 2}
!717 = !{!716, !39, i64 2}
!718 = distinct !{!718, !67}
!719 = !{!"versioning_260.c:max_iii"}
!720 = !{!"versioning_260.c:do_versions_affine_tracker_track"}
!721 = !{!134, !46, i64 120}
!722 = !{!134, !36, i64 128}
!723 = distinct !{!723, !67}
!724 = !{!"versioning_260.c:do_version_logic_264"}
!725 = !{!265, !39, i64 124}
!726 = !{!265, !49, i64 116}
!727 = !{!265, !39, i64 126}
!728 = !{!265, !39, i64 132}
!729 = !{!265, !39, i64 128}
!730 = distinct !{!730, !67}
!731 = !{!"versioning_260.c:max_ii"}
!732 = !{!"versioning_260.c:do_versions_nodetree_customnodes"}
!733 = !{!85, !36, i64 128}
!734 = distinct !{!734, !67}
!735 = distinct !{!735, !67}
!736 = distinct !{!736, !67}
!737 = distinct !{!737, !67}
!738 = distinct !{!738, !67}
!739 = distinct !{!739, !67}
!740 = !{!634, !39, i64 174}
!741 = distinct !{!741, !67}
!742 = distinct !{!742, !67}
!743 = distinct !{!743, !67}
!744 = distinct !{!744, !67}
!745 = distinct !{!745, !67}
!746 = distinct !{!746, !67}
!747 = distinct !{!747, !67}
!748 = distinct !{!748, !67}
!749 = distinct !{!749, !67}
!750 = !{!"versioning_260.c:copy_v3_v3"}
!751 = !{!"versioning_260.c:BLI_listbase_clear"}
!752 = !{!"versioning_260.c:is_zero_v2"}
!753 = !{!"versioning_260.c:copy_v2_v2"}
!754 = !{!"versioning_260.c:node_get_static_idname"}
!755 = !{!"versioning_260.c:node_socket_get_static_idname"}
!756 = !{!634, !39, i64 168}
!757 = !{!641, !46, i64 0}
!758 = !{!759, !46, i64 0}
!759 = !{!"bNodeSocketValueInt", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12}
!760 = !{!761, !46, i64 0}
!761 = !{!"bNodeSocketValueVector", !46, i64 0, !37, i64 4, !49, i64 16, !49, i64 20}
!762 = !{!763, !46, i64 0}
!763 = !{!"bNodeSocketValueString", !46, i64 0, !46, i64 4, !37, i64 8}
