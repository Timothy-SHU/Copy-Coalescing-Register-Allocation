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
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.bNodeSocket = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], ptr, i16, i16, i16, i16, ptr, [64 x i8], float, float, ptr, i16, i16, i32, ptr, i32, i32, ptr, ptr, %struct.bNodeStack }
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Camera = type { %struct.ID, ptr, i8, i8, i16, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, i8, [7 x i8] }
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
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.CustomDataLayer = type { i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], ptr }
%struct.MLoopCol = type { i8, i8, i8, i8 }
%struct.KeyingSet = type { ptr, ptr, %struct.ListBase, [64 x i8], [64 x i8], [240 x i8], [64 x i8], i16, i16, i32 }
%struct.LatticeModifierData = type { %struct.ModifierData, ptr, [64 x i8], float, [4 x i8] }
%struct.NodeImageMultiFileSocket = type { i16, i16, i32, [1024 x i8], %struct.ImageFormatData, [30 x i8], [2 x i8] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.NodeFrame = type { i16, i16 }
%struct.SmokeModifierData = type { %struct.ModifierData, ptr, ptr, ptr, float, i32 }
%struct.SmokeDomainSettings = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x i32], [3 x float], [3 x float], [4 x [4 x float]], [4 x [4 x float]], [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, float, float, i32, i32, float, float, float, i32, i32, i32, i32, i16, i16, i32, float, [3 x i32], float, i32, i32, [2 x ptr], [2 x %struct.ListBase], ptr, i32, float, float, i32, [3 x float], i32, float, float, float, float, float, [3 x float] }
%struct.NodeTexImage = type { %struct.NodeTexBase, %struct.ImageUser, i32, i32, float, i32 }
%struct.NodeTexBase = type { %struct.TexMapping, %struct.ColorMapping }
%struct.ColorMapping = type { %struct.ColorBand, float, float, float, i32, [3 x float], float, i32, [3 x i32] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.NodeDefocus = type { i8, i8, i8, i8, i16, i16, float, float, float, float, float, float }
%struct.NodeKeyingData = type { float, float, float, i32, float, float, float, i32, i32, i32, i32, i32 }
%struct.NodeMask = type { i32, i32 }
%struct.Sequence = type { ptr, ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, float, float, float, float, ptr, i32, i32, i32, float, i32, i8, [3 x i8], %struct.ListBase }
%struct.Strip = type { ptr, ptr, i32, i32, i32, i32, ptr, [768 x i8], ptr, ptr, ptr, ptr, %struct.ColorManagedColorspaceSettings }
%struct.ColorBalanceModifierData = type { %struct.SequenceModifierData, %struct.StripColorBalance, float }
%struct.SequenceModifierData = type { ptr, ptr, i32, i32, [64 x i8], i32, i32, ptr, ptr }
%struct.StripColorBalance = type { [3 x float], [3 x float], [3 x float], i32, i32 }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.RenderSlot = type { [64 x i8] }
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
%struct.bNodeSocketValueFloat = type { i32, float, float, float }
%struct.NodeDBlurData = type { float, float, float, float, float, float, i16, i8, i8 }
%struct.NodeChroma = type { float, float, float, float, float, float, [4 x float], i16, i16 }
%struct.NodeGlare = type { i8, i8, i8, i8, i8, i8, [2 x i8], float, float, float, float, float, float }
%struct.NodeImageMultiFile = type { [1024 x i8], %struct.ImageFormatData, i32, i32, i32, i32 }
%struct.NodeImageFile = type { [1024 x i8], %struct.ImageFormatData, i32, i32 }

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
@.str.29 = private unnamed_addr constant [10 x i8] c"NodeGroup\00", align 1
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
@switch.table.blo_do_versions_260 = private unnamed_addr constant [3 x ptr] [ptr @.str.26, ptr @.str.25, ptr @.str.27], align 8
@switch.table.blo_do_versions_260.235 = private unnamed_addr constant [513 x ptr] [ptr @.str.33, ptr @.str.29, ptr @.str.234, ptr @.str.234, ptr @.str.28, ptr @.str.32, ptr @.str.30, ptr @.str.31, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.234, ptr @.str.234, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.234, ptr @.str.58, ptr @.str.60, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.234, ptr @.str.234, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.97, ptr @.str.234, ptr @.str.99, ptr @.str.100, ptr @.str.105, ptr @.str.102, ptr @.str.103, ptr @.str.101, ptr @.str.234, ptr @.str.104, ptr @.str.234, ptr @.str.234, ptr @.str.108, ptr @.str.65, ptr @.str.98, ptr @.str.234, ptr @.str.69, ptr @.str.63, ptr @.str.81, ptr @.str.82, ptr @.str.42, ptr @.str.106, ptr @.str.43, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.107, ptr @.str.93, ptr @.str.96, ptr @.str.67, ptr @.str.74, ptr @.str.95, ptr @.str.94, ptr @.str.89, ptr @.str.80, ptr @.str.90, ptr @.str.78, ptr @.str.91, ptr @.str.92, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.79, ptr @.str.49, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @.str.61, ptr @.str.113, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.234, ptr @.str.159, ptr @.str.160, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.180, ptr @.str.178, ptr @.str.179, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.185, ptr @.str.184, ptr @.str.186, ptr @.str.161, ptr @.str.234, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.145, ptr @.str.146, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.200, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.192, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.197, ptr @.str.129, ptr @.str.198, ptr @.str.199, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.228, ptr @.str.229, ptr @.str.227, ptr @.str.226, ptr @.str.225, ptr @.str.232, ptr @.str.231, ptr @.str.234, ptr @.str.234, ptr @.str.234, ptr @.str.230, ptr @.str.224, ptr @.str.233], align 8

; Function Attrs: nounwind uwtable
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
  br i1 %57, label %58, label %143

58:                                               ; preds = %3
  %59 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %60 = load ptr, ptr %59, align 8, !tbaa !42
  %61 = icmp eq ptr %60, null
  br i1 %61, label %94, label %62

62:                                               ; preds = %58, %91
  %63 = phi ptr [ %92, %91 ], [ %60, %58 ]
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
  br i1 %71, label %91, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.bNodeTree, ptr %70, i64 0, i32 7
  %74 = load ptr, ptr %73, align 8, !tbaa !42
  %75 = icmp eq ptr %74, null
  br i1 %75, label %91, label %76

76:                                               ; preds = %72, %88
  %77 = phi ptr [ %89, %88 ], [ %74, %72 ]
  %78 = getelementptr inbounds %struct.bNode, ptr %77, i64 0, i32 8
  %79 = load i16, ptr %78, align 4, !tbaa !66
  %80 = and i16 %79, -2
  %81 = icmp eq i16 %80, 220
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.bNode, ptr %77, i64 0, i32 18
  %84 = load ptr, ptr %83, align 8, !tbaa !68
  %85 = getelementptr inbounds %struct.bNodeSocket, ptr %84, i64 0, i32 15
  %86 = load ptr, ptr %85, align 8, !tbaa !69
  %87 = getelementptr inbounds [4 x float], ptr %86, i64 0, i64 3
  store float 0.000000e+00, ptr %87, align 4, !tbaa !72
  br label %88

88:                                               ; preds = %82, %76
  %89 = load ptr, ptr %77, align 8, !tbaa !42
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %76, !llvm.loop !73

91:                                               ; preds = %88, %72, %68
  %92 = load ptr, ptr %63, align 8, !tbaa !42
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %62, !llvm.loop !76

94:                                               ; preds = %91, %58
  %95 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 35
  %96 = load ptr, ptr %95, align 8, !tbaa !42
  %97 = icmp eq ptr %96, null
  br i1 %97, label %121, label %101

98:                                               ; preds = %118, %101
  %99 = load ptr, ptr %102, align 8, !tbaa !42
  %100 = icmp eq ptr %99, null
  br i1 %100, label %121, label %101, !llvm.loop !77

101:                                              ; preds = %94, %98
  %102 = phi ptr [ %99, %98 ], [ %96, %94 ]
  %103 = getelementptr inbounds %struct.bNodeTree, ptr %102, i64 0, i32 7
  %104 = load ptr, ptr %103, align 8, !tbaa !42
  %105 = icmp eq ptr %104, null
  br i1 %105, label %98, label %106

106:                                              ; preds = %101, %118
  %107 = phi ptr [ %119, %118 ], [ %104, %101 ]
  %108 = getelementptr inbounds %struct.bNode, ptr %107, i64 0, i32 8
  %109 = load i16, ptr %108, align 4, !tbaa !66
  %110 = and i16 %109, -2
  %111 = icmp eq i16 %110, 220
  br i1 %111, label %112, label %118

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.bNode, ptr %107, i64 0, i32 18
  %114 = load ptr, ptr %113, align 8, !tbaa !68
  %115 = getelementptr inbounds %struct.bNodeSocket, ptr %114, i64 0, i32 15
  %116 = load ptr, ptr %115, align 8, !tbaa !69
  %117 = getelementptr inbounds [4 x float], ptr %116, i64 0, i64 3
  store float 0.000000e+00, ptr %117, align 4, !tbaa !72
  br label %118

118:                                              ; preds = %112, %106
  %119 = load ptr, ptr %107, align 8, !tbaa !42
  %120 = icmp eq ptr %119, null
  br i1 %120, label %98, label %106, !llvm.loop !73

121:                                              ; preds = %98, %94
  %122 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 37
  %123 = load ptr, ptr %122, align 8, !tbaa !42
  %124 = icmp eq ptr %123, null
  br i1 %124, label %142, label %125

125:                                              ; preds = %121, %139
  %126 = phi ptr [ %140, %139 ], [ %123, %121 ]
  %127 = getelementptr inbounds %struct.ParticleSettings, ptr %126, i64 0, i32 21
  %128 = load i16, ptr %127, align 8, !tbaa !78
  %129 = add i16 %128, -7
  %130 = icmp ult i16 %129, 2
  br i1 %130, label %131, label %139

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.ParticleSettings, ptr %126, i64 0, i32 15
  %133 = load i32, ptr %132, align 8, !tbaa !80
  %134 = or i32 %133, 128
  store i32 %134, ptr %132, align 8, !tbaa !80
  %135 = getelementptr inbounds %struct.ParticleSettings, ptr %126, i64 0, i32 12
  %136 = load i16, ptr %135, align 2, !tbaa !81
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %131
  store i16 2, ptr %135, align 2, !tbaa !81
  br label %139

139:                                              ; preds = %125, %138, %131
  %140 = load ptr, ptr %126, align 8, !tbaa !42
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %125, !llvm.loop !82

142:                                              ; preds = %139, %121
  br i1 %57, label %149, label %143

143:                                              ; preds = %3, %142
  %144 = icmp eq i16 %56, 260
  br i1 %144, label %145, label %178

145:                                              ; preds = %143
  %146 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %147 = load i16, ptr %146, align 2, !tbaa !83
  %148 = icmp slt i16 %147, 1
  br i1 %148, label %149, label %178

149:                                              ; preds = %145, %142
  %150 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %151 = load ptr, ptr %150, align 8, !tbaa !42
  %152 = icmp eq ptr %151, null
  br i1 %152, label %160, label %153

153:                                              ; preds = %149, %153
  %154 = phi ptr [ %158, %153 ], [ %151, %149 ]
  %155 = getelementptr inbounds %struct.Object, ptr %154, i64 0, i32 84
  %156 = load i8, ptr %155, align 2, !tbaa !84
  %157 = getelementptr inbounds %struct.Object, ptr %154, i64 0, i32 85
  store i8 %156, ptr %157, align 1, !tbaa !87
  %158 = load ptr, ptr %154, align 8, !tbaa !42
  %159 = icmp eq ptr %158, null
  br i1 %159, label %160, label %153, !llvm.loop !88

160:                                              ; preds = %153, %149
  %161 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 22
  %162 = load ptr, ptr %161, align 8, !tbaa !42
  %163 = icmp eq ptr %162, null
  br i1 %163, label %178, label %164

164:                                              ; preds = %160, %175
  %165 = phi ptr [ %176, %175 ], [ %162, %160 ]
  %166 = getelementptr inbounds %struct.Camera, ptr %165, i64 0, i32 11
  %167 = load float, ptr %166, align 4, !tbaa !89
  %168 = fcmp olt float %167, 0x3F847AE140000000
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  store float 3.200000e+01, ptr %166, align 4, !tbaa !89
  br label %170

170:                                              ; preds = %169, %164
  %171 = getelementptr inbounds %struct.Camera, ptr %165, i64 0, i32 12
  %172 = load float, ptr %171, align 8, !tbaa !91
  %173 = fcmp olt float %172, 0x3F847AE140000000
  br i1 %173, label %174, label %175

174:                                              ; preds = %170
  store float 1.800000e+01, ptr %171, align 8, !tbaa !91
  br label %175

175:                                              ; preds = %170, %174
  %176 = load ptr, ptr %165, align 8, !tbaa !42
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %164, !llvm.loop !92

178:                                              ; preds = %175, %160, %145, %143
  br i1 %57, label %185, label %179

179:                                              ; preds = %178
  %180 = icmp eq i16 %56, 260
  br i1 %180, label %181, label %217

181:                                              ; preds = %179
  %182 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %183 = load i16, ptr %182, align 2, !tbaa !83
  %184 = icmp slt i16 %183, 2
  br i1 %184, label %185, label %217

185:                                              ; preds = %181, %178
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %4, ptr noundef %2) #8
  %186 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  %187 = icmp eq i8 %186, 1
  br i1 %187, label %188, label %216

188:                                              ; preds = %185, %213
  %189 = load ptr, ptr %5, align 8, !tbaa !42
  %190 = icmp eq ptr %189, null
  br i1 %190, label %213, label %191

191:                                              ; preds = %188
  %192 = getelementptr inbounds %struct.bNodeTree, ptr %189, i64 0, i32 9
  %193 = load i32, ptr %192, align 8, !tbaa !93
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %213

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.bNodeTree, ptr %189, i64 0, i32 7
  %197 = load ptr, ptr %196, align 8, !tbaa !42
  %198 = icmp eq ptr %197, null
  br i1 %198, label %213, label %199

199:                                              ; preds = %195, %210
  %200 = phi ptr [ %211, %210 ], [ %197, %195 ]
  %201 = getelementptr inbounds %struct.bNode, ptr %200, i64 0, i32 8
  %202 = load i16, ptr %201, align 4, !tbaa !66
  %203 = icmp eq i16 %202, 109
  br i1 %203, label %204, label %210

204:                                              ; preds = %199
  %205 = getelementptr inbounds %struct.bNode, ptr %200, i64 0, i32 21
  %206 = load ptr, ptr %205, align 8, !tbaa !96
  %207 = getelementptr inbounds %struct.TexMapping, ptr %206, i64 0, i32 4
  store i8 1, ptr %207, align 8, !tbaa !97
  %208 = getelementptr inbounds %struct.TexMapping, ptr %206, i64 0, i32 5
  store i8 2, ptr %208, align 1, !tbaa !99
  %209 = getelementptr inbounds %struct.TexMapping, ptr %206, i64 0, i32 6
  store i8 3, ptr %209, align 2, !tbaa !100
  br label %210

210:                                              ; preds = %199, %204
  %211 = load ptr, ptr %200, align 8, !tbaa !42
  %212 = icmp eq ptr %211, null
  br i1 %212, label %213, label %199, !llvm.loop !101

213:                                              ; preds = %210, %195, %191, %188
  %214 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  %215 = icmp eq i8 %214, 1
  br i1 %215, label %188, label %216, !llvm.loop !102

216:                                              ; preds = %213, %185
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #8
  br label %217

217:                                              ; preds = %216, %181, %179
  %218 = load i16, ptr %55, align 8, !tbaa !34
  %219 = icmp slt i16 %218, 260
  br i1 %219, label %226, label %220

220:                                              ; preds = %217
  %221 = icmp eq i16 %218, 260
  br i1 %221, label %222, label %348

222:                                              ; preds = %220
  %223 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %224 = load i16, ptr %223, align 2, !tbaa !83
  %225 = icmp slt i16 %224, 4
  br i1 %225, label %226, label %348

226:                                              ; preds = %222, %217
  %227 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %228 = load ptr, ptr %227, align 8, !tbaa !42
  %229 = icmp eq ptr %228, null
  br i1 %229, label %239, label %230

230:                                              ; preds = %226, %236
  %231 = phi ptr [ %237, %236 ], [ %228, %226 ]
  %232 = getelementptr inbounds %struct.Scene, ptr %231, i64 0, i32 18
  %233 = load ptr, ptr %232, align 8, !tbaa !65
  %234 = icmp eq ptr %233, null
  br i1 %234, label %236, label %235

235:                                              ; preds = %230
  call fastcc void @do_versions_nodetree_convert_angle(ptr noundef nonnull %233)
  br label %236

236:                                              ; preds = %230, %235
  %237 = load ptr, ptr %231, align 8, !tbaa !42
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %230, !llvm.loop !103

239:                                              ; preds = %236, %226
  %240 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %241 = load ptr, ptr %240, align 8, !tbaa !42
  %242 = icmp eq ptr %241, null
  br i1 %242, label %252, label %243

243:                                              ; preds = %239, %249
  %244 = phi ptr [ %250, %249 ], [ %241, %239 ]
  %245 = getelementptr inbounds %struct.Material, ptr %244, i64 0, i32 103
  %246 = load ptr, ptr %245, align 8, !tbaa !104
  %247 = icmp eq ptr %246, null
  br i1 %247, label %249, label %248

248:                                              ; preds = %243
  call fastcc void @do_versions_nodetree_convert_angle(ptr noundef nonnull %246)
  br label %249

249:                                              ; preds = %243, %248
  %250 = load ptr, ptr %244, align 8, !tbaa !42
  %251 = icmp eq ptr %250, null
  br i1 %251, label %252, label %243, !llvm.loop !108

252:                                              ; preds = %249, %239
  %253 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 35
  %254 = load ptr, ptr %253, align 8, !tbaa !42
  %255 = icmp eq ptr %254, null
  br i1 %255, label %260, label %256

256:                                              ; preds = %252, %256
  %257 = phi ptr [ %258, %256 ], [ %254, %252 ]
  call fastcc void @do_versions_nodetree_convert_angle(ptr noundef nonnull %257)
  %258 = load ptr, ptr %257, align 8, !tbaa !42
  %259 = icmp eq ptr %258, null
  br i1 %259, label %260, label %256, !llvm.loop !109

260:                                              ; preds = %256, %252
  %261 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %262 = load ptr, ptr %261, align 8, !tbaa !42
  %263 = icmp eq ptr %262, null
  br i1 %263, label %305, label %267

264:                                              ; preds = %272, %267
  %265 = load ptr, ptr %268, align 8, !tbaa !42
  %266 = icmp eq ptr %265, null
  br i1 %266, label %305, label %267, !llvm.loop !110

267:                                              ; preds = %260, %264
  %268 = phi ptr [ %265, %264 ], [ %262, %260 ]
  %269 = getelementptr inbounds %struct.bScreen, ptr %268, i64 0, i32 3
  %270 = load ptr, ptr %269, align 8, !tbaa !42
  %271 = icmp eq ptr %270, null
  br i1 %271, label %264, label %275

272:                                              ; preds = %302, %275
  %273 = load ptr, ptr %276, align 8, !tbaa !42
  %274 = icmp eq ptr %273, null
  br i1 %274, label %264, label %275, !llvm.loop !111

275:                                              ; preds = %267, %272
  %276 = phi ptr [ %273, %272 ], [ %270, %267 ]
  %277 = getelementptr inbounds %struct.ScrArea, ptr %276, i64 0, i32 19
  %278 = load ptr, ptr %277, align 8, !tbaa !42
  %279 = icmp eq ptr %278, null
  br i1 %279, label %272, label %280

280:                                              ; preds = %275, %302
  %281 = phi ptr [ %303, %302 ], [ %278, %275 ]
  %282 = getelementptr inbounds %struct.SpaceLink, ptr %281, i64 0, i32 3
  %283 = load i32, ptr %282, align 8, !tbaa !112
  switch i32 %283, label %302 [
    i32 1, label %284
    i32 20, label %297
  ]

284:                                              ; preds = %280
  %285 = getelementptr inbounds %struct.View3D, ptr %281, i64 0, i32 8
  %286 = load float, ptr %285, align 4, !tbaa !114
  %287 = fcmp oeq float %286, 0.000000e+00
  br i1 %287, label %288, label %292

288:                                              ; preds = %284
  store float 0x3FC99999A0000000, ptr %285, align 4, !tbaa !114
  %289 = getelementptr inbounds %struct.View3D, ptr %281, i64 0, i32 29
  %290 = load i16, ptr %289, align 2, !tbaa !116
  %291 = or i16 %290, 128
  store i16 %291, ptr %289, align 2, !tbaa !116
  br label %292

292:                                              ; preds = %288, %284
  %293 = getelementptr inbounds %struct.View3D, ptr %281, i64 0, i32 9
  %294 = load i8, ptr %293, align 8, !tbaa !117
  %295 = icmp eq i8 %294, 0
  br i1 %295, label %296, label %302

296:                                              ; preds = %292
  store i8 2, ptr %293, align 8, !tbaa !117
  br label %302

297:                                              ; preds = %280
  %298 = getelementptr inbounds %struct.SpaceClip, ptr %281, i64 0, i32 11, i32 2
  %299 = load i32, ptr %298, align 4, !tbaa !118
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %297
  store i32 120, ptr %298, align 4, !tbaa !118
  br label %302

302:                                              ; preds = %297, %301, %280, %292, %296
  %303 = load ptr, ptr %281, align 8, !tbaa !42
  %304 = icmp eq ptr %303, null
  br i1 %304, label %272, label %280, !llvm.loop !124

305:                                              ; preds = %264, %260
  %306 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 42
  %307 = load ptr, ptr %306, align 8, !tbaa !42
  %308 = icmp eq ptr %307, null
  br i1 %308, label %348, label %312

309:                                              ; preds = %345, %335
  %310 = load ptr, ptr %313, align 8, !tbaa !42
  %311 = icmp eq ptr %310, null
  br i1 %311, label %348, label %312, !llvm.loop !125

312:                                              ; preds = %305, %309
  %313 = phi ptr [ %310, %309 ], [ %307, %305 ]
  %314 = getelementptr inbounds %struct.MovieClip, ptr %313, i64 0, i32 6
  %315 = load float, ptr %314, align 8, !tbaa !126
  %316 = fcmp olt float %315, 1.000000e+00
  br i1 %316, label %317, label %319

317:                                              ; preds = %312
  store float 1.000000e+00, ptr %314, align 8, !tbaa !126
  %318 = getelementptr inbounds %struct.MovieClip, ptr %313, i64 0, i32 7
  store float 1.000000e+00, ptr %318, align 4, !tbaa !135
  br label %319

319:                                              ; preds = %317, %312
  %320 = getelementptr inbounds %struct.MovieClip, ptr %313, i64 0, i32 13, i32 4
  store i16 7, ptr %320, align 2, !tbaa !136
  %321 = getelementptr inbounds %struct.MovieClip, ptr %313, i64 0, i32 13, i32 3
  %322 = load i16, ptr %321, align 4, !tbaa !137
  %323 = icmp eq i16 %322, 0
  br i1 %323, label %324, label %325

324:                                              ; preds = %319
  store i16 1, ptr %321, align 4, !tbaa !137
  br label %325

325:                                              ; preds = %324, %319
  %326 = getelementptr inbounds %struct.MovieClip, ptr %313, i64 0, i32 13, i32 2
  %327 = load i16, ptr %326, align 2, !tbaa !138
  %328 = icmp eq i16 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %325
  store i16 90, ptr %326, align 2, !tbaa !138
  br label %330

330:                                              ; preds = %329, %325
  %331 = getelementptr inbounds %struct.MovieClip, ptr %313, i64 0, i32 11, i32 1, i32 4
  %332 = load float, ptr %331, align 8, !tbaa !139
  %333 = fcmp olt float %332, 0x3F847AE140000000
  br i1 %333, label %334, label %335

334:                                              ; preds = %330
  store float 1.000000e+00, ptr %331, align 8, !tbaa !139
  br label %335

335:                                              ; preds = %334, %330
  %336 = getelementptr inbounds %struct.MovieClip, ptr %313, i64 0, i32 11, i32 2
  %337 = load ptr, ptr %336, align 8, !tbaa !42
  %338 = icmp eq ptr %337, null
  br i1 %338, label %309, label %339

339:                                              ; preds = %335, %345
  %340 = phi ptr [ %346, %345 ], [ %337, %335 ]
  %341 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %340, i64 0, i32 22
  %342 = load float, ptr %341, align 4, !tbaa !140
  %343 = fcmp oeq float %342, 0.000000e+00
  br i1 %343, label %344, label %345

344:                                              ; preds = %339
  store float 7.500000e-01, ptr %341, align 4, !tbaa !140
  br label %345

345:                                              ; preds = %344, %339
  %346 = load ptr, ptr %340, align 8, !tbaa !42
  %347 = icmp eq ptr %346, null
  br i1 %347, label %309, label %339, !llvm.loop !142

348:                                              ; preds = %309, %305, %222, %220
  %349 = load i16, ptr %55, align 8, !tbaa !34
  %350 = icmp slt i16 %349, 260
  br i1 %350, label %357, label %351

351:                                              ; preds = %348
  %352 = icmp eq i16 %349, 260
  br i1 %352, label %353, label %552

353:                                              ; preds = %351
  %354 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %355 = load i16, ptr %354, align 2, !tbaa !83
  %356 = icmp slt i16 %355, 6
  br i1 %356, label %357, label %522

357:                                              ; preds = %353, %348
  %358 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %359 = load ptr, ptr %358, align 8, !tbaa !42
  %360 = icmp eq ptr %359, null
  br i1 %360, label %448, label %361

361:                                              ; preds = %357, %445
  %362 = phi ptr [ %446, %445 ], [ %359, %357 ]
  %363 = getelementptr inbounds %struct.Scene, ptr %362, i64 0, i32 22
  %364 = getelementptr inbounds %struct.Scene, ptr %362, i64 0, i32 22, i32 40
  %365 = load i16, ptr %364, align 2, !tbaa !143
  %366 = trunc i16 %365 to i8
  store i8 %366, ptr %363, align 8, !tbaa !144
  %367 = getelementptr inbounds %struct.Scene, ptr %362, i64 0, i32 22, i32 39
  %368 = load i16, ptr %367, align 8, !tbaa !145
  %369 = trunc i16 %368 to i8
  %370 = getelementptr inbounds %struct.Scene, ptr %362, i64 0, i32 22, i32 0, i32 2
  store i8 %369, ptr %370, align 2, !tbaa !146
  %371 = getelementptr inbounds %struct.Scene, ptr %362, i64 0, i32 22, i32 42
  %372 = load i16, ptr %371, align 2, !tbaa !147
  %373 = trunc i16 %372 to i8
  %374 = getelementptr inbounds %struct.Scene, ptr %362, i64 0, i32 22, i32 0, i32 5
  store i8 %373, ptr %374, align 1, !tbaa !148
  %375 = getelementptr inbounds %struct.Scene, ptr %362, i64 0, i32 22, i32 0, i32 4
  store i8 %373, ptr %375, align 4, !tbaa !149
  %376 = getelementptr inbounds %struct.Scene, ptr %362, i64 0, i32 22, i32 0, i32 1
  store i8 2, ptr %376, align 1, !tbaa !150
  %377 = and i8 %373, 7
  %378 = getelementptr inbounds %struct.Scene, ptr %362, i64 0, i32 22, i32 0, i32 6
  store i8 %377, ptr %378, align 2, !tbaa !151
  switch i8 %366, label %445 [
    i8 23, label %379
    i8 22, label %398
    i8 30, label %404
    i8 26, label %436
    i8 27, label %436
  ]

379:                                              ; preds = %361
  %380 = getelementptr inbounds %struct.Scene, ptr %362, i64 0, i32 22, i32 41
  %381 = load i16, ptr %380, align 4, !tbaa !152
  %382 = and i16 %381, 1
  %383 = icmp eq i16 %382, 0
  %384 = select i1 %383, i8 64, i8 16
  store i8 %384, ptr %376, align 1, !tbaa !150
  %385 = and i16 %381, 4
  %386 = icmp eq i16 %385, 0
  br i1 %386, label %391, label %387

387:                                              ; preds = %379
  %388 = getelementptr inbounds %struct.Scene, ptr %362, i64 0, i32 22, i32 0, i32 3
  %389 = load i8, ptr %388, align 1, !tbaa !153
  %390 = or i8 %389, 2
  store i8 %390, ptr %388, align 1, !tbaa !153
  br label %391

391:                                              ; preds = %387, %379
  %392 = and i16 %381, 2
  %393 = icmp eq i16 %392, 0
  br i1 %393, label %445, label %394

394:                                              ; preds = %391
  %395 = getelementptr inbounds %struct.Scene, ptr %362, i64 0, i32 22, i32 0, i32 3
  %396 = load i8, ptr %395, align 1, !tbaa !153
  %397 = or i8 %396, 1
  store i8 %397, ptr %395, align 1, !tbaa !153
  br label %445

398:                                              ; preds = %361
  %399 = getelementptr inbounds %struct.Scene, ptr %362, i64 0, i32 22, i32 41
  %400 = load i16, ptr %399, align 4, !tbaa !152
  %401 = and i16 %400, 16
  %402 = icmp eq i16 %401, 0
  br i1 %402, label %445, label %403

403:                                              ; preds = %398
  store i8 16, ptr %376, align 1, !tbaa !150
  br label %445

404:                                              ; preds = %361
  %405 = getelementptr inbounds %struct.Scene, ptr %362, i64 0, i32 22, i32 41
  %406 = load i16, ptr %405, align 4, !tbaa !152
  %407 = zext i16 %406 to i32
  %408 = and i32 %407, 64
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %410, label %413

410:                                              ; preds = %404
  %411 = and i32 %407, 32
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %415, label %413

413:                                              ; preds = %410, %404
  %414 = phi i8 [ 16, %404 ], [ 8, %410 ]
  store i8 %414, ptr %376, align 1, !tbaa !150
  br label %415

415:                                              ; preds = %413, %410
  %416 = and i16 %406, 128
  %417 = icmp eq i16 %416, 0
  br i1 %417, label %422, label %418

418:                                              ; preds = %415
  %419 = getelementptr inbounds %struct.Scene, ptr %362, i64 0, i32 22, i32 0, i32 11
  %420 = load i8, ptr %419, align 8, !tbaa !154
  %421 = or i8 %420, 1
  store i8 %421, ptr %419, align 8, !tbaa !154
  br label %422

422:                                              ; preds = %418, %415
  %423 = and i16 %406, 256
  %424 = icmp eq i16 %423, 0
  br i1 %424, label %429, label %425

425:                                              ; preds = %422
  %426 = getelementptr inbounds %struct.Scene, ptr %362, i64 0, i32 22, i32 0, i32 11
  %427 = load i8, ptr %426, align 8, !tbaa !154
  %428 = or i8 %427, 2
  store i8 %428, ptr %426, align 8, !tbaa !154
  br label %429

429:                                              ; preds = %425, %422
  %430 = and i16 %406, 512
  %431 = icmp eq i16 %430, 0
  br i1 %431, label %445, label %432

432:                                              ; preds = %429
  %433 = getelementptr inbounds %struct.Scene, ptr %362, i64 0, i32 22, i32 0, i32 11
  %434 = load i8, ptr %433, align 8, !tbaa !154
  %435 = or i8 %434, 4
  store i8 %435, ptr %433, align 8, !tbaa !154
  br label %445

436:                                              ; preds = %361, %361
  %437 = getelementptr inbounds %struct.Scene, ptr %362, i64 0, i32 22, i32 41
  %438 = load i16, ptr %437, align 4, !tbaa !152
  %439 = and i16 %438, 8
  %440 = icmp eq i16 %439, 0
  br i1 %440, label %445, label %441

441:                                              ; preds = %436
  %442 = getelementptr inbounds %struct.Scene, ptr %362, i64 0, i32 22, i32 0, i32 7
  %443 = load i8, ptr %442, align 1, !tbaa !155
  %444 = or i8 %443, 1
  store i8 %444, ptr %442, align 1, !tbaa !155
  br label %445

445:                                              ; preds = %361, %391, %394, %398, %403, %429, %432, %436, %441
  %446 = load ptr, ptr %362, align 8, !tbaa !42
  %447 = icmp eq ptr %446, null
  br i1 %447, label %448, label %361, !llvm.loop !156

448:                                              ; preds = %445, %357
  %449 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 42
  %450 = load ptr, ptr %449, align 8, !tbaa !42
  %451 = icmp eq ptr %450, null
  br i1 %451, label %464, label %452

452:                                              ; preds = %448, %461
  %453 = phi ptr [ %462, %461 ], [ %450, %448 ]
  %454 = getelementptr inbounds %struct.MovieClip, ptr %453, i64 0, i32 11, i32 0, i32 4
  %455 = load i16, ptr %454, align 4, !tbaa !157
  %456 = icmp eq i16 %455, 0
  br i1 %456, label %457, label %461

457:                                              ; preds = %452
  %458 = getelementptr inbounds %struct.MovieClip, ptr %453, i64 0, i32 11, i32 0, i32 1
  store i16 0, ptr %458, align 4, !tbaa !158
  %459 = getelementptr inbounds %struct.MovieClip, ptr %453, i64 0, i32 11, i32 0, i32 3
  store float 7.500000e-01, ptr %459, align 4, !tbaa !159
  store i16 11, ptr %454, align 4, !tbaa !157
  %460 = getelementptr inbounds %struct.MovieClip, ptr %453, i64 0, i32 11, i32 0, i32 5
  store i16 51, ptr %460, align 2, !tbaa !160
  br label %461

461:                                              ; preds = %457, %452
  %462 = load ptr, ptr %453, align 8, !tbaa !42
  %463 = icmp eq ptr %462, null
  br i1 %463, label %464, label %452, !llvm.loop !161

464:                                              ; preds = %461, %448
  %465 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %466 = load ptr, ptr %465, align 8, !tbaa !42
  %467 = icmp eq ptr %466, null
  br i1 %467, label %496, label %471

468:                                              ; preds = %476, %471
  %469 = load ptr, ptr %472, align 8, !tbaa !42
  %470 = icmp eq ptr %469, null
  br i1 %470, label %496, label %471, !llvm.loop !162

471:                                              ; preds = %464, %468
  %472 = phi ptr [ %469, %468 ], [ %466, %464 ]
  %473 = getelementptr inbounds %struct.bScreen, ptr %472, i64 0, i32 3
  %474 = load ptr, ptr %473, align 8, !tbaa !42
  %475 = icmp eq ptr %474, null
  br i1 %475, label %468, label %479

476:                                              ; preds = %493, %479
  %477 = load ptr, ptr %480, align 8, !tbaa !42
  %478 = icmp eq ptr %477, null
  br i1 %478, label %468, label %479, !llvm.loop !163

479:                                              ; preds = %471, %476
  %480 = phi ptr [ %477, %476 ], [ %474, %471 ]
  %481 = getelementptr inbounds %struct.ScrArea, ptr %480, i64 0, i32 19
  %482 = load ptr, ptr %481, align 8, !tbaa !42
  %483 = icmp eq ptr %482, null
  br i1 %483, label %476, label %484

484:                                              ; preds = %479, %493
  %485 = phi ptr [ %494, %493 ], [ %482, %479 ]
  %486 = getelementptr inbounds %struct.SpaceLink, ptr %485, i64 0, i32 3
  %487 = load i32, ptr %486, align 8, !tbaa !112
  %488 = icmp eq i32 %487, 1
  br i1 %488, label %489, label %493

489:                                              ; preds = %484
  %490 = getelementptr inbounds %struct.View3D, ptr %485, i64 0, i32 29
  %491 = load i16, ptr %490, align 2, !tbaa !116
  %492 = and i16 %491, -65
  store i16 %492, ptr %490, align 2, !tbaa !116
  br label %493

493:                                              ; preds = %484, %489
  %494 = load ptr, ptr %485, align 8, !tbaa !42
  %495 = icmp eq ptr %494, null
  br i1 %495, label %476, label %484, !llvm.loop !164

496:                                              ; preds = %468, %464
  %497 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %498 = load ptr, ptr %497, align 8, !tbaa !42
  %499 = icmp eq ptr %498, null
  br i1 %499, label %552, label %503

500:                                              ; preds = %517
  %501 = load ptr, ptr %504, align 8, !tbaa !42
  %502 = icmp eq ptr %501, null
  br i1 %502, label %552, label %503, !llvm.loop !165

503:                                              ; preds = %496, %500
  %504 = phi ptr [ %501, %500 ], [ %498, %496 ]
  br label %505

505:                                              ; preds = %503, %517
  %506 = phi i64 [ 0, %503 ], [ %520, %517 ]
  %507 = getelementptr inbounds %struct.Object, ptr %504, i64 0, i32 37, i64 %506
  %508 = load float, ptr %507, align 4, !tbaa !72
  %509 = fcmp oeq float %508, 0.000000e+00
  br i1 %509, label %517, label %510

510:                                              ; preds = %505
  %511 = getelementptr inbounds %struct.Object, ptr %504, i64 0, i32 36, i64 %506
  %512 = load float, ptr %511, align 4, !tbaa !72
  %513 = fcmp oeq float %512, 0.000000e+00
  br i1 %513, label %517, label %514

514:                                              ; preds = %510
  %515 = fadd float %508, %512
  %516 = fdiv float %515, %512
  br label %517

517:                                              ; preds = %505, %510, %514
  %518 = phi float [ %516, %514 ], [ 1.000000e+00, %510 ], [ 1.000000e+00, %505 ]
  %519 = getelementptr inbounds %struct.Object, ptr %504, i64 0, i32 38, i64 %506
  store float %518, ptr %519, align 4, !tbaa !72
  %520 = add nuw nsw i64 %506, 1
  %521 = icmp eq i64 %520, 3
  br i1 %521, label %500, label %505, !llvm.loop !166

522:                                              ; preds = %353
  br i1 %352, label %523, label %552

523:                                              ; preds = %522
  %524 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %525 = load i16, ptr %524, align 2, !tbaa !83
  %526 = icmp eq i16 %525, 6
  br i1 %526, label %527, label %552

527:                                              ; preds = %523
  %528 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %529 = load ptr, ptr %528, align 8, !tbaa !42
  %530 = icmp eq ptr %529, null
  br i1 %530, label %552, label %531

531:                                              ; preds = %527, %549
  %532 = phi ptr [ %550, %549 ], [ %529, %527 ]
  %533 = getelementptr inbounds %struct.Object, ptr %532, i64 0, i32 38
  %534 = load float, ptr %533, align 4, !tbaa !72
  %535 = fcmp oeq float %534, 0.000000e+00
  br i1 %535, label %536, label %545

536:                                              ; preds = %531
  %537 = getelementptr inbounds %struct.Object, ptr %532, i64 0, i32 38, i64 1
  %538 = load float, ptr %537, align 4, !tbaa !72
  %539 = fcmp oeq float %538, 0.000000e+00
  br i1 %539, label %540, label %545

540:                                              ; preds = %536
  %541 = getelementptr inbounds %struct.Object, ptr %532, i64 0, i32 38, i64 2
  %542 = load float, ptr %541, align 4, !tbaa !72
  %543 = fcmp oeq float %542, 0.000000e+00
  %544 = zext i1 %543 to i8
  br label %545

545:                                              ; preds = %531, %536, %540
  %546 = phi i8 [ 0, %536 ], [ 0, %531 ], [ %544, %540 ]
  %547 = icmp eq i8 %546, 0
  br i1 %547, label %549, label %548

548:                                              ; preds = %545
  call void @fill_vn_fl(ptr noundef nonnull %533, i32 noundef 3, float noundef 1.000000e+00) #8
  br label %549

549:                                              ; preds = %545, %548
  %550 = load ptr, ptr %532, align 8, !tbaa !42
  %551 = icmp eq ptr %550, null
  br i1 %551, label %552, label %531, !llvm.loop !167

552:                                              ; preds = %549, %500, %527, %496, %351, %522, %523
  %553 = load i16, ptr %55, align 8, !tbaa !34
  %554 = icmp slt i16 %553, 260
  br i1 %554, label %561, label %555

555:                                              ; preds = %552
  %556 = icmp eq i16 %553, 260
  br i1 %556, label %557, label %575

557:                                              ; preds = %555
  %558 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %559 = load i16, ptr %558, align 2, !tbaa !83
  %560 = icmp slt i16 %559, 8
  br i1 %560, label %561, label %575

561:                                              ; preds = %557, %552
  %562 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 36
  %563 = load ptr, ptr %562, align 8, !tbaa !42
  %564 = icmp eq ptr %563, null
  br i1 %564, label %575, label %565

565:                                              ; preds = %561, %572
  %566 = phi ptr [ %573, %572 ], [ %563, %561 ]
  %567 = getelementptr inbounds %struct.Brush, ptr %566, i64 0, i32 34
  %568 = load i8, ptr %567, align 8, !tbaa !168
  %569 = icmp eq i8 %568, 14
  br i1 %569, label %570, label %572

570:                                              ; preds = %565
  %571 = getelementptr inbounds %struct.Brush, ptr %566, i64 0, i32 26
  store float 1.000000e+00, ptr %571, align 8, !tbaa !172
  br label %572

572:                                              ; preds = %565, %570
  %573 = load ptr, ptr %566, align 8, !tbaa !42
  %574 = icmp eq ptr %573, null
  br i1 %574, label %575, label %565, !llvm.loop !173

575:                                              ; preds = %572, %561, %557, %555
  %576 = icmp slt i16 %553, 261
  br i1 %576, label %583, label %577

577:                                              ; preds = %575
  %578 = icmp eq i16 %553, 261
  br i1 %578, label %579, label %747

579:                                              ; preds = %577
  %580 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %581 = load i16, ptr %580, align 2, !tbaa !83
  %582 = icmp slt i16 %581, 1
  br i1 %582, label %583, label %747

583:                                              ; preds = %579, %575
  %584 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %585 = load ptr, ptr %584, align 8, !tbaa !42
  %586 = icmp eq ptr %585, null
  br i1 %586, label %596, label %587

587:                                              ; preds = %583, %593
  %588 = phi ptr [ %594, %593 ], [ %585, %583 ]
  %589 = getelementptr inbounds %struct.Scene, ptr %588, i64 0, i32 18
  %590 = load ptr, ptr %589, align 8, !tbaa !65
  %591 = icmp eq ptr %590, null
  br i1 %591, label %593, label %592

592:                                              ; preds = %587
  call fastcc void @do_versions_nodetree_socket_use_flags_2_62(ptr noundef nonnull %590)
  br label %593

593:                                              ; preds = %587, %592
  %594 = load ptr, ptr %588, align 8, !tbaa !42
  %595 = icmp eq ptr %594, null
  br i1 %595, label %596, label %587, !llvm.loop !174

596:                                              ; preds = %593, %583
  %597 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %598 = load ptr, ptr %597, align 8, !tbaa !42
  %599 = icmp eq ptr %598, null
  br i1 %599, label %609, label %600

600:                                              ; preds = %596, %606
  %601 = phi ptr [ %607, %606 ], [ %598, %596 ]
  %602 = getelementptr inbounds %struct.Material, ptr %601, i64 0, i32 103
  %603 = load ptr, ptr %602, align 8, !tbaa !104
  %604 = icmp eq ptr %603, null
  br i1 %604, label %606, label %605

605:                                              ; preds = %600
  call fastcc void @do_versions_nodetree_socket_use_flags_2_62(ptr noundef nonnull %603)
  br label %606

606:                                              ; preds = %600, %605
  %607 = load ptr, ptr %601, align 8, !tbaa !42
  %608 = icmp eq ptr %607, null
  br i1 %608, label %609, label %600, !llvm.loop !175

609:                                              ; preds = %606, %596
  %610 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %611 = load ptr, ptr %610, align 8, !tbaa !42
  %612 = icmp eq ptr %611, null
  br i1 %612, label %622, label %613

613:                                              ; preds = %609, %619
  %614 = phi ptr [ %620, %619 ], [ %611, %609 ]
  %615 = getelementptr inbounds %struct.Tex, ptr %614, i64 0, i32 52
  %616 = load ptr, ptr %615, align 8, !tbaa !176
  %617 = icmp eq ptr %616, null
  br i1 %617, label %619, label %618

618:                                              ; preds = %613
  call fastcc void @do_versions_nodetree_socket_use_flags_2_62(ptr noundef nonnull %616)
  br label %619

619:                                              ; preds = %613, %618
  %620 = load ptr, ptr %614, align 8, !tbaa !42
  %621 = icmp eq ptr %620, null
  br i1 %621, label %622, label %613, !llvm.loop !179

622:                                              ; preds = %619, %609
  %623 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 21
  %624 = load ptr, ptr %623, align 8, !tbaa !42
  %625 = icmp eq ptr %624, null
  br i1 %625, label %635, label %626

626:                                              ; preds = %622, %632
  %627 = phi ptr [ %633, %632 ], [ %624, %622 ]
  %628 = getelementptr inbounds %struct.Lamp, ptr %627, i64 0, i32 74
  %629 = load ptr, ptr %628, align 8, !tbaa !180
  %630 = icmp eq ptr %629, null
  br i1 %630, label %632, label %631

631:                                              ; preds = %626
  call fastcc void @do_versions_nodetree_socket_use_flags_2_62(ptr noundef nonnull %629)
  br label %632

632:                                              ; preds = %626, %631
  %633 = load ptr, ptr %627, align 8, !tbaa !42
  %634 = icmp eq ptr %633, null
  br i1 %634, label %635, label %626, !llvm.loop !182

635:                                              ; preds = %632, %622
  %636 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 25
  %637 = load ptr, ptr %636, align 8, !tbaa !42
  %638 = icmp eq ptr %637, null
  br i1 %638, label %648, label %639

639:                                              ; preds = %635, %645
  %640 = phi ptr [ %646, %645 ], [ %637, %635 ]
  %641 = getelementptr inbounds %struct.World, ptr %640, i64 0, i32 75
  %642 = load ptr, ptr %641, align 8, !tbaa !183
  %643 = icmp eq ptr %642, null
  br i1 %643, label %645, label %644

644:                                              ; preds = %639
  call fastcc void @do_versions_nodetree_socket_use_flags_2_62(ptr noundef nonnull %642)
  br label %645

645:                                              ; preds = %639, %644
  %646 = load ptr, ptr %640, align 8, !tbaa !42
  %647 = icmp eq ptr %646, null
  br i1 %647, label %648, label %639, !llvm.loop !185

648:                                              ; preds = %645, %635
  %649 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 35
  %650 = load ptr, ptr %649, align 8, !tbaa !42
  %651 = icmp eq ptr %650, null
  br i1 %651, label %652, label %655

652:                                              ; preds = %655, %648
  %653 = load ptr, ptr %584, align 8, !tbaa !42
  %654 = icmp eq ptr %653, null
  br i1 %654, label %668, label %659

655:                                              ; preds = %648, %655
  %656 = phi ptr [ %657, %655 ], [ %650, %648 ]
  call fastcc void @do_versions_nodetree_socket_use_flags_2_62(ptr noundef nonnull %656)
  %657 = load ptr, ptr %656, align 8, !tbaa !42
  %658 = icmp eq ptr %657, null
  br i1 %658, label %652, label %655, !llvm.loop !186

659:                                              ; preds = %652, %665
  %660 = phi ptr [ %666, %665 ], [ %653, %652 ]
  %661 = getelementptr inbounds %struct.Scene, ptr %660, i64 0, i32 37, i32 23
  %662 = load i16, ptr %661, align 4, !tbaa !187
  %663 = icmp eq i16 %662, 0
  br i1 %663, label %664, label %665

664:                                              ; preds = %659
  store i16 218, ptr %661, align 4, !tbaa !187
  br label %665

665:                                              ; preds = %659, %664
  %666 = load ptr, ptr %660, align 8, !tbaa !42
  %667 = icmp eq ptr %666, null
  br i1 %667, label %668, label %659, !llvm.loop !188

668:                                              ; preds = %665, %652
  %669 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 42
  %670 = load ptr, ptr %669, align 8, !tbaa !42
  %671 = icmp eq ptr %670, null
  br i1 %671, label %700, label %675

672:                                              ; preds = %697, %689
  %673 = load ptr, ptr %676, align 8, !tbaa !42
  %674 = icmp eq ptr %673, null
  br i1 %674, label %700, label %675, !llvm.loop !189

675:                                              ; preds = %668, %672
  %676 = phi ptr [ %673, %672 ], [ %670, %668 ]
  %677 = getelementptr inbounds %struct.MovieClip, ptr %676, i64 0, i32 11
  %678 = getelementptr inbounds %struct.MovieClip, ptr %676, i64 0, i32 11, i32 8
  %679 = load ptr, ptr %678, align 8, !tbaa !190
  %680 = getelementptr inbounds %struct.MovieClip, ptr %676, i64 0, i32 13, i32 4
  %681 = load i16, ptr %680, align 2, !tbaa !136
  %682 = or i16 %681, 8
  store i16 %682, ptr %680, align 2, !tbaa !136
  %683 = getelementptr inbounds %struct.MovieClip, ptr %676, i64 0, i32 11, i32 0, i32 22
  %684 = load float, ptr %683, align 8, !tbaa !191
  %685 = fcmp une float %684, 0.000000e+00
  br i1 %685, label %687, label %686

686:                                              ; preds = %675
  store float 1.000000e+00, ptr %683, align 8, !tbaa !191
  br label %687

687:                                              ; preds = %686, %675
  %688 = icmp eq ptr %679, null
  br i1 %688, label %689, label %691

689:                                              ; preds = %687
  %690 = call ptr @BKE_tracking_object_add(ptr noundef nonnull %677, ptr noundef nonnull @.str) #8
  br label %672

691:                                              ; preds = %687, %697
  %692 = phi ptr [ %698, %697 ], [ %679, %687 ]
  %693 = getelementptr inbounds %struct.MovieTrackingObject, ptr %692, i64 0, i32 4
  %694 = load float, ptr %693, align 4, !tbaa !192
  %695 = fcmp une float %694, 0.000000e+00
  br i1 %695, label %697, label %696

696:                                              ; preds = %691
  store float 1.000000e+00, ptr %693, align 4, !tbaa !192
  br label %697

697:                                              ; preds = %696, %691
  %698 = load ptr, ptr %692, align 8, !tbaa !194
  %699 = icmp eq ptr %698, null
  br i1 %699, label %672, label %691, !llvm.loop !195

700:                                              ; preds = %672, %668
  %701 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %702 = load ptr, ptr %701, align 8, !tbaa !42
  %703 = icmp eq ptr %702, null
  br i1 %703, label %707, label %712

704:                                              ; preds = %730, %712
  %705 = load ptr, ptr %713, align 8, !tbaa !42
  %706 = icmp eq ptr %705, null
  br i1 %706, label %707, label %712, !llvm.loop !196

707:                                              ; preds = %704, %700
  %708 = load ptr, ptr %701, align 8, !tbaa !42
  %709 = icmp eq ptr %708, null
  br i1 %709, label %747, label %710

710:                                              ; preds = %707
  %711 = getelementptr inbounds %struct.FileData, ptr %0, i64 0, i32 31
  br label %733

712:                                              ; preds = %700, %704
  %713 = phi ptr [ %705, %704 ], [ %702, %700 ]
  %714 = getelementptr inbounds %struct.Object, ptr %713, i64 0, i32 106
  %715 = load ptr, ptr %714, align 8, !tbaa !42
  %716 = icmp eq ptr %715, null
  br i1 %716, label %704, label %717

717:                                              ; preds = %712, %730
  %718 = phi ptr [ %731, %730 ], [ %715, %712 ]
  %719 = getelementptr inbounds %struct.bConstraint, ptr %718, i64 0, i32 3
  %720 = load i16, ptr %719, align 8, !tbaa !197
  %721 = icmp eq i16 %720, 28
  br i1 %721, label %722, label %730

722:                                              ; preds = %717
  %723 = getelementptr inbounds %struct.bConstraint, ptr %718, i64 0, i32 2
  %724 = load ptr, ptr %723, align 8, !tbaa !199
  %725 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %724, i64 0, i32 4, i64 3, i64 3
  %726 = load float, ptr %725, align 4, !tbaa !72
  %727 = fcmp oeq float %726, 0.000000e+00
  br i1 %727, label %728, label %730

728:                                              ; preds = %722
  %729 = getelementptr inbounds %struct.bObjectSolverConstraint, ptr %724, i64 0, i32 4
  call void @unit_m4(ptr noundef nonnull %729) #8
  br label %730

730:                                              ; preds = %722, %728, %717
  %731 = load ptr, ptr %718, align 8, !tbaa !42
  %732 = icmp eq ptr %731, null
  br i1 %732, label %704, label %717, !llvm.loop !200

733:                                              ; preds = %710, %744
  %734 = phi ptr [ %708, %710 ], [ %745, %744 ]
  %735 = getelementptr inbounds %struct.Object, ptr %734, i64 0, i32 3
  %736 = load i16, ptr %735, align 8, !tbaa !201
  %737 = icmp eq i16 %736, 4
  br i1 %737, label %738, label %744

738:                                              ; preds = %733
  %739 = call ptr @BKE_bproperty_object_get(ptr noundef nonnull %734, ptr noundef nonnull @.str.1) #8
  %740 = icmp eq ptr %739, null
  br i1 %740, label %744, label %741

741:                                              ; preds = %738
  %742 = load ptr, ptr %711, align 8, !tbaa !202
  %743 = getelementptr inbounds %struct.ID, ptr %734, i64 0, i32 4, i64 2
  call void (ptr, i32, ptr, ...) @blo_reportf_wrap(ptr noundef %742, i32 noundef 16, ptr noundef nonnull @.str.2, ptr noundef nonnull %743) #8
  br label %744

744:                                              ; preds = %733, %741, %738
  %745 = load ptr, ptr %734, align 8, !tbaa !42
  %746 = icmp eq ptr %745, null
  br i1 %746, label %747, label %733, !llvm.loop !205

747:                                              ; preds = %744, %707, %579, %577
  %748 = load i16, ptr %55, align 8, !tbaa !34
  %749 = icmp slt i16 %748, 261
  br i1 %749, label %756, label %750

750:                                              ; preds = %747
  %751 = icmp eq i16 %748, 261
  br i1 %751, label %752, label %807

752:                                              ; preds = %750
  %753 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %754 = load i16, ptr %753, align 2, !tbaa !83
  %755 = icmp slt i16 %754, 2
  br i1 %755, label %756, label %807

756:                                              ; preds = %752, %747
  %757 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %758 = load ptr, ptr %757, align 8, !tbaa !42
  %759 = icmp eq ptr %758, null
  br i1 %759, label %784, label %763

760:                                              ; preds = %781, %763
  %761 = load ptr, ptr %764, align 8, !tbaa !42
  %762 = icmp eq ptr %761, null
  br i1 %762, label %784, label %763, !llvm.loop !206

763:                                              ; preds = %756, %760
  %764 = phi ptr [ %761, %760 ], [ %758, %756 ]
  %765 = getelementptr inbounds %struct.Object, ptr %764, i64 0, i32 94
  %766 = load ptr, ptr %765, align 8, !tbaa !42
  %767 = icmp eq ptr %766, null
  br i1 %767, label %760, label %768

768:                                              ; preds = %763, %781
  %769 = phi ptr [ %782, %781 ], [ %766, %763 ]
  %770 = getelementptr inbounds %struct.bActuator, ptr %769, i64 0, i32 3
  %771 = load i16, ptr %770, align 8, !tbaa !207
  %772 = icmp eq i16 %771, 3
  br i1 %772, label %773, label %781

773:                                              ; preds = %768
  %774 = getelementptr inbounds %struct.bActuator, ptr %769, i64 0, i32 8
  %775 = load ptr, ptr %774, align 8, !tbaa !209
  %776 = getelementptr inbounds %struct.bCameraActuator, ptr %775, i64 0, i32 6
  %777 = load i16, ptr %776, align 2, !tbaa !210
  switch i16 %777, label %781 [
    i16 120, label %779
    i16 121, label %778
  ]

778:                                              ; preds = %773
  br label %779

779:                                              ; preds = %773, %778
  %780 = phi i16 [ 1, %778 ], [ 0, %773 ]
  store i16 %780, ptr %776, align 2, !tbaa !210
  br label %781

781:                                              ; preds = %779, %773, %768
  %782 = load ptr, ptr %769, align 8, !tbaa !42
  %783 = icmp eq ptr %782, null
  br i1 %783, label %760, label %768, !llvm.loop !212

784:                                              ; preds = %760, %756
  %785 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %786 = load ptr, ptr %785, align 8, !tbaa !42
  %787 = icmp eq ptr %786, null
  br i1 %787, label %807, label %788

788:                                              ; preds = %784, %788
  %789 = phi ptr [ %805, %788 ], [ %786, %784 ]
  %790 = getelementptr inbounds %struct.Scene, ptr %789, i64 0, i32 20
  %791 = load ptr, ptr %790, align 8, !tbaa !213
  %792 = getelementptr inbounds %struct.ToolSettings, ptr %791, i64 0, i32 73
  %793 = getelementptr inbounds %struct.ToolSettings, ptr %791, i64 0, i32 70
  %794 = load i32, ptr %793, align 4, !tbaa !214
  store i32 %794, ptr %792, align 8, !tbaa !221
  %795 = getelementptr inbounds %struct.ToolSettings, ptr %791, i64 0, i32 71
  %796 = load float, ptr %795, align 8, !tbaa !222
  %797 = getelementptr inbounds %struct.ToolSettings, ptr %791, i64 0, i32 73, i32 1
  store float %796, ptr %797, align 4, !tbaa !223
  %798 = getelementptr inbounds %struct.ToolSettings, ptr %791, i64 0, i32 72
  %799 = load float, ptr %798, align 4, !tbaa !224
  %800 = getelementptr inbounds %struct.ToolSettings, ptr %791, i64 0, i32 73, i32 2
  store float %799, ptr %800, align 8, !tbaa !225
  %801 = getelementptr inbounds %struct.ToolSettings, ptr %791, i64 0, i32 68
  %802 = load i16, ptr %801, align 8, !tbaa !226
  %803 = sext i16 %802 to i32
  %804 = getelementptr inbounds %struct.ToolSettings, ptr %791, i64 0, i32 73, i32 6
  store i32 %803, ptr %804, align 8, !tbaa !227
  %805 = load ptr, ptr %789, align 8, !tbaa !42
  %806 = icmp eq ptr %805, null
  br i1 %806, label %807, label %788, !llvm.loop !228

807:                                              ; preds = %788, %784, %752, %750
  br i1 %749, label %814, label %808

808:                                              ; preds = %807
  %809 = icmp eq i16 %748, 261
  br i1 %809, label %810, label %887

810:                                              ; preds = %808
  %811 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %812 = load i16, ptr %811, align 2, !tbaa !83
  %813 = icmp slt i16 %812, 3
  br i1 %813, label %814, label %887

814:                                              ; preds = %810, %807
  %815 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 29
  %816 = load ptr, ptr %815, align 8, !tbaa !42
  %817 = icmp eq ptr %816, null
  br i1 %817, label %849, label %818

818:                                              ; preds = %814, %846
  %819 = phi ptr [ %847, %846 ], [ %816, %814 ]
  %820 = getelementptr inbounds %struct.Text, ptr %819, i64 0, i32 2
  %821 = load i32, ptr %820, align 8, !tbaa !229
  %822 = and i32 %821, 8
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %824, label %846

824:                                              ; preds = %818
  %825 = getelementptr inbounds %struct.Text, ptr %819, i64 0, i32 4
  %826 = load ptr, ptr %825, align 8, !tbaa !42
  %827 = icmp eq ptr %826, null
  br i1 %827, label %846, label %828

828:                                              ; preds = %824
  %829 = getelementptr inbounds %struct.Text, ptr %819, i64 0, i32 5
  %830 = getelementptr inbounds %struct.Text, ptr %819, i64 0, i32 7
  br label %831

831:                                              ; preds = %828, %843
  %832 = phi ptr [ %826, %828 ], [ %844, %843 ]
  %833 = getelementptr inbounds %struct.TextLine, ptr %832, i64 0, i32 2
  %834 = call i32 @txt_extended_ascii_as_utf8(ptr noundef nonnull %833) #8
  %835 = getelementptr inbounds %struct.TextLine, ptr %832, i64 0, i32 4
  %836 = load i32, ptr %835, align 8, !tbaa !232
  %837 = add nsw i32 %836, %834
  store i32 %837, ptr %835, align 8, !tbaa !232
  %838 = icmp eq i32 %834, 0
  br i1 %838, label %843, label %839

839:                                              ; preds = %831
  %840 = load ptr, ptr %829, align 8, !tbaa !234
  %841 = icmp eq ptr %832, %840
  br i1 %841, label %842, label %843

842:                                              ; preds = %839
  store i32 0, ptr %830, align 8, !tbaa !235
  br label %843

843:                                              ; preds = %842, %839, %831
  %844 = load ptr, ptr %832, align 8, !tbaa !42
  %845 = icmp eq ptr %844, null
  br i1 %845, label %846, label %831, !llvm.loop !236

846:                                              ; preds = %843, %824, %818
  %847 = load ptr, ptr %819, align 8, !tbaa !42
  %848 = icmp eq ptr %847, null
  br i1 %848, label %849, label %818, !llvm.loop !237

849:                                              ; preds = %846, %814
  %850 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %851 = load ptr, ptr %850, align 8, !tbaa !42
  %852 = icmp eq ptr %851, null
  br i1 %852, label %887, label %856

853:                                              ; preds = %884, %856
  %854 = load ptr, ptr %857, align 8, !tbaa !42
  %855 = icmp eq ptr %854, null
  br i1 %855, label %887, label %856, !llvm.loop !238

856:                                              ; preds = %849, %853
  %857 = phi ptr [ %854, %853 ], [ %851, %849 ]
  %858 = getelementptr inbounds %struct.Object, ptr %857, i64 0, i32 26
  %859 = load ptr, ptr %858, align 8, !tbaa !42
  %860 = icmp eq ptr %859, null
  br i1 %860, label %853, label %861

861:                                              ; preds = %856, %884
  %862 = phi ptr [ %885, %884 ], [ %859, %856 ]
  %863 = getelementptr inbounds %struct.ModifierData, ptr %862, i64 0, i32 2
  %864 = load i32, ptr %863, align 8, !tbaa !239
  %865 = icmp eq i32 %864, 40
  br i1 %865, label %866, label %884

866:                                              ; preds = %861
  %867 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %862, i64 0, i32 1
  %868 = load ptr, ptr %867, align 8, !tbaa !241
  %869 = icmp eq ptr %868, null
  br i1 %869, label %884, label %870

870:                                              ; preds = %866
  %871 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %868, i64 0, i32 2
  %872 = load ptr, ptr %871, align 8, !tbaa !42
  %873 = icmp eq ptr %872, null
  br i1 %873, label %884, label %874

874:                                              ; preds = %870, %874
  %875 = phi ptr [ %882, %874 ], [ %872, %870 ]
  %876 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %875, i64 0, i32 30
  store float 1.000000e+00, ptr %876, align 8, !tbaa !243
  %877 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %875, i64 0, i32 38
  store float 1.000000e+00, ptr %877, align 8, !tbaa !245
  %878 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %875, i64 0, i32 39
  store float 1.000000e+00, ptr %878, align 4, !tbaa !246
  %879 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %875, i64 0, i32 18
  %880 = load i32, ptr %879, align 4, !tbaa !247
  %881 = or i32 %880, 512
  store i32 %881, ptr %879, align 4, !tbaa !247
  %882 = load ptr, ptr %875, align 8, !tbaa !42
  %883 = icmp eq ptr %882, null
  br i1 %883, label %884, label %874, !llvm.loop !248

884:                                              ; preds = %874, %870, %866, %861
  %885 = load ptr, ptr %862, align 8, !tbaa !42
  %886 = icmp eq ptr %885, null
  br i1 %886, label %853, label %861, !llvm.loop !249

887:                                              ; preds = %853, %849, %810, %808
  %888 = load i16, ptr %55, align 8, !tbaa !34
  %889 = icmp slt i16 %888, 262
  br i1 %889, label %890, label %916

890:                                              ; preds = %887
  %891 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %892 = load ptr, ptr %891, align 8, !tbaa !42
  %893 = icmp eq ptr %892, null
  br i1 %893, label %916, label %897

894:                                              ; preds = %913, %897
  %895 = load ptr, ptr %898, align 8, !tbaa !42
  %896 = icmp eq ptr %895, null
  br i1 %896, label %916, label %897, !llvm.loop !250

897:                                              ; preds = %890, %894
  %898 = phi ptr [ %895, %894 ], [ %892, %890 ]
  %899 = getelementptr inbounds %struct.Object, ptr %898, i64 0, i32 26
  %900 = load ptr, ptr %899, align 8, !tbaa !42
  %901 = icmp eq ptr %900, null
  br i1 %901, label %894, label %902

902:                                              ; preds = %897, %913
  %903 = phi ptr [ %914, %913 ], [ %900, %897 ]
  %904 = getelementptr inbounds %struct.ModifierData, ptr %903, i64 0, i32 2
  %905 = load i32, ptr %904, align 8, !tbaa !239
  %906 = icmp eq i32 %905, 22
  br i1 %906, label %907, label %913

907:                                              ; preds = %902
  %908 = getelementptr inbounds %struct.ClothModifierData, ptr %903, i64 0, i32 3
  %909 = load ptr, ptr %908, align 8, !tbaa !251
  %910 = icmp eq ptr %909, null
  br i1 %910, label %913, label %911

911:                                              ; preds = %907
  %912 = getelementptr inbounds %struct.ClothSimSettings, ptr %909, i64 0, i32 25
  store float 1.000000e+00, ptr %912, align 8, !tbaa !253
  br label %913

913:                                              ; preds = %907, %911, %902
  %914 = load ptr, ptr %903, align 8, !tbaa !42
  %915 = icmp eq ptr %914, null
  br i1 %915, label %894, label %902, !llvm.loop !255

916:                                              ; preds = %894, %890, %887
  %917 = icmp slt i16 %888, 263
  br i1 %917, label %918, label %945

918:                                              ; preds = %916
  %919 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %920 = load ptr, ptr %919, align 8, !tbaa !42
  %921 = icmp eq ptr %920, null
  br i1 %921, label %945, label %925

922:                                              ; preds = %942, %925
  %923 = load ptr, ptr %926, align 8, !tbaa !42
  %924 = icmp eq ptr %923, null
  br i1 %924, label %945, label %925, !llvm.loop !256

925:                                              ; preds = %918, %922
  %926 = phi ptr [ %923, %922 ], [ %920, %918 ]
  %927 = getelementptr inbounds %struct.Object, ptr %926, i64 0, i32 26
  %928 = load ptr, ptr %927, align 8, !tbaa !42
  %929 = icmp eq ptr %928, null
  br i1 %929, label %922, label %930

930:                                              ; preds = %925, %942
  %931 = phi ptr [ %943, %942 ], [ %928, %925 ]
  %932 = getelementptr inbounds %struct.ModifierData, ptr %931, i64 0, i32 2
  %933 = load i32, ptr %932, align 8, !tbaa !239
  %934 = icmp eq i32 %933, 26
  br i1 %934, label %935, label %942

935:                                              ; preds = %930
  %936 = getelementptr inbounds %struct.FluidsimModifierData, ptr %931, i64 0, i32 1
  %937 = load ptr, ptr %936, align 8, !tbaa !257
  %938 = getelementptr inbounds %struct.FluidsimSettings, ptr %937, i64 0, i32 53
  %939 = load float, ptr %938, align 4, !tbaa !259
  %940 = fcmp oeq float %939, 0.000000e+00
  br i1 %940, label %941, label %942

941:                                              ; preds = %935
  store float 1.000000e+00, ptr %938, align 4, !tbaa !259
  br label %942

942:                                              ; preds = %935, %941, %930
  %943 = load ptr, ptr %931, align 8, !tbaa !42
  %944 = icmp eq ptr %943, null
  br i1 %944, label %922, label %930, !llvm.loop !261

945:                                              ; preds = %922, %918, %916
  br i1 %889, label %952, label %946

946:                                              ; preds = %945
  %947 = icmp eq i16 %888, 262
  br i1 %947, label %948, label %973

948:                                              ; preds = %946
  %949 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %950 = load i16, ptr %949, align 2, !tbaa !83
  %951 = icmp slt i16 %950, 1
  br i1 %951, label %952, label %973

952:                                              ; preds = %948, %945
  %953 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %954 = load ptr, ptr %953, align 8, !tbaa !42
  %955 = icmp eq ptr %954, null
  br i1 %955, label %965, label %956

956:                                              ; preds = %952, %962
  %957 = phi ptr [ %963, %962 ], [ %954, %952 ]
  %958 = getelementptr inbounds %struct.Scene, ptr %957, i64 0, i32 18
  %959 = load ptr, ptr %958, align 8, !tbaa !65
  %960 = icmp eq ptr %959, null
  br i1 %960, label %962, label %961

961:                                              ; preds = %956
  call fastcc void @do_versions_nodetree_multi_file_output_format_2_62_1(ptr noundef nonnull %957, ptr noundef nonnull %959)
  br label %962

962:                                              ; preds = %956, %961
  %963 = load ptr, ptr %957, align 8, !tbaa !42
  %964 = icmp eq ptr %963, null
  br i1 %964, label %965, label %956, !llvm.loop !262

965:                                              ; preds = %962, %952
  %966 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 35
  %967 = load ptr, ptr %966, align 8, !tbaa !42
  %968 = icmp eq ptr %967, null
  br i1 %968, label %973, label %969

969:                                              ; preds = %965, %969
  %970 = phi ptr [ %971, %969 ], [ %967, %965 ]
  call fastcc void @do_versions_nodetree_multi_file_output_format_2_62_1(ptr noundef null, ptr noundef nonnull %970)
  %971 = load ptr, ptr %970, align 8, !tbaa !42
  %972 = icmp eq ptr %971, null
  br i1 %972, label %973, label %969, !llvm.loop !263

973:                                              ; preds = %969, %965, %948, %946
  %974 = load i16, ptr %55, align 8, !tbaa !34
  %975 = icmp eq i16 %974, 262
  br i1 %975, label %976, label %1020

976:                                              ; preds = %973
  %977 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %978 = load i16, ptr %977, align 2, !tbaa !83
  %979 = icmp eq i16 %978, 1
  br i1 %979, label %980, label %1020

980:                                              ; preds = %976
  %981 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %982 = load ptr, ptr %981, align 8, !tbaa !42
  %983 = icmp eq ptr %982, null
  br i1 %983, label %1020, label %987

984:                                              ; preds = %1017, %987
  %985 = load ptr, ptr %988, align 8, !tbaa !42
  %986 = icmp eq ptr %985, null
  br i1 %986, label %1020, label %987, !llvm.loop !264

987:                                              ; preds = %980, %984
  %988 = phi ptr [ %985, %984 ], [ %982, %980 ]
  %989 = getelementptr inbounds %struct.Mesh, ptr %988, i64 0, i32 25, i32 2
  %990 = load i32, ptr %989, align 4, !tbaa !265
  %991 = icmp sgt i32 %990, 0
  br i1 %991, label %992, label %984

992:                                              ; preds = %987
  %993 = getelementptr inbounds %struct.Mesh, ptr %988, i64 0, i32 25
  %994 = load ptr, ptr %993, align 8, !tbaa !268
  %995 = getelementptr inbounds %struct.Mesh, ptr %988, i64 0, i32 31
  %996 = zext nneg i32 %990 to i64
  br label %997

997:                                              ; preds = %992, %1017
  %998 = phi i64 [ 0, %992 ], [ %1018, %1017 ]
  %999 = getelementptr inbounds %struct.CustomDataLayer, ptr %994, i64 %998
  %1000 = load i32, ptr %999, align 8, !tbaa !269
  %1001 = icmp eq i32 %1000, 17
  br i1 %1001, label %1002, label %1017

1002:                                             ; preds = %997
  %1003 = load i32, ptr %995, align 4, !tbaa !271
  %1004 = icmp sgt i32 %1003, 0
  br i1 %1004, label %1005, label %1017

1005:                                             ; preds = %1002
  %1006 = getelementptr inbounds %struct.CustomDataLayer, ptr %994, i64 %998, i32 9
  %1007 = load ptr, ptr %1006, align 8, !tbaa !272
  br label %1008

1008:                                             ; preds = %1005, %1008
  %1009 = phi ptr [ %1015, %1008 ], [ %1007, %1005 ]
  %1010 = phi i32 [ %1014, %1008 ], [ 0, %1005 ]
  %1011 = load i8, ptr %1009, align 1, !tbaa !273
  %1012 = getelementptr inbounds %struct.MLoopCol, ptr %1009, i64 0, i32 2
  %1013 = load i8, ptr %1012, align 1, !tbaa !275
  store i8 %1013, ptr %1009, align 1, !tbaa !273
  store i8 %1011, ptr %1012, align 1, !tbaa !275
  %1014 = add nuw nsw i32 %1010, 1
  %1015 = getelementptr inbounds %struct.MLoopCol, ptr %1009, i64 1
  %1016 = icmp eq i32 %1014, %1003
  br i1 %1016, label %1017, label %1008, !llvm.loop !276

1017:                                             ; preds = %1008, %1002, %997
  %1018 = add nuw nsw i64 %998, 1
  %1019 = icmp eq i64 %1018, %996
  br i1 %1019, label %984, label %997, !llvm.loop !277

1020:                                             ; preds = %984, %980, %976, %973
  %1021 = icmp slt i16 %974, 262
  br i1 %1021, label %1027, label %1022

1022:                                             ; preds = %1020
  br i1 %975, label %1023, label %1050

1023:                                             ; preds = %1022
  %1024 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1025 = load i16, ptr %1024, align 2, !tbaa !83
  %1026 = icmp slt i16 %1025, 2
  br i1 %1026, label %1027, label %1050

1027:                                             ; preds = %1023, %1020
  %1028 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1029 = load ptr, ptr %1028, align 8, !tbaa !42
  %1030 = icmp eq ptr %1029, null
  br i1 %1030, label %1050, label %1034

1031:                                             ; preds = %1047, %1034
  %1032 = load ptr, ptr %1035, align 8, !tbaa !42
  %1033 = icmp eq ptr %1032, null
  br i1 %1033, label %1050, label %1034, !llvm.loop !278

1034:                                             ; preds = %1027, %1031
  %1035 = phi ptr [ %1032, %1031 ], [ %1029, %1027 ]
  %1036 = getelementptr inbounds %struct.Scene, ptr %1035, i64 0, i32 35
  %1037 = load ptr, ptr %1036, align 8, !tbaa !42
  %1038 = icmp eq ptr %1037, null
  br i1 %1038, label %1031, label %1039

1039:                                             ; preds = %1034, %1047
  %1040 = phi ptr [ %1048, %1047 ], [ %1037, %1034 ]
  %1041 = getelementptr inbounds %struct.KeyingSet, ptr %1040, i64 0, i32 3
  %1042 = load i8, ptr %1041, align 8, !tbaa !279
  %1043 = icmp eq i8 %1042, 0
  br i1 %1043, label %1044, label %1047

1044:                                             ; preds = %1039
  %1045 = getelementptr inbounds %struct.KeyingSet, ptr %1040, i64 0, i32 4
  %1046 = call ptr @BLI_strncpy(ptr noundef nonnull %1041, ptr noundef nonnull %1045, i64 noundef 64) #8
  br label %1047

1047:                                             ; preds = %1039, %1044
  %1048 = load ptr, ptr %1040, align 8, !tbaa !42
  %1049 = icmp eq ptr %1048, null
  br i1 %1049, label %1031, label %1039, !llvm.loop !280

1050:                                             ; preds = %1031, %1027, %1023, %1022
  %1051 = load i16, ptr %55, align 8, !tbaa !34
  %1052 = icmp slt i16 %1051, 262
  br i1 %1052, label %1059, label %1053

1053:                                             ; preds = %1050
  %1054 = icmp eq i16 %1051, 262
  br i1 %1054, label %1055, label %1081

1055:                                             ; preds = %1053
  %1056 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1057 = load i16, ptr %1056, align 2, !tbaa !83
  %1058 = icmp slt i16 %1057, 3
  br i1 %1058, label %1059, label %1081

1059:                                             ; preds = %1055, %1050
  %1060 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %1061 = load ptr, ptr %1060, align 8, !tbaa !42
  %1062 = icmp eq ptr %1061, null
  br i1 %1062, label %1081, label %1066

1063:                                             ; preds = %1078, %1066
  %1064 = load ptr, ptr %1067, align 8, !tbaa !42
  %1065 = icmp eq ptr %1064, null
  br i1 %1065, label %1081, label %1066, !llvm.loop !281

1066:                                             ; preds = %1059, %1063
  %1067 = phi ptr [ %1064, %1063 ], [ %1061, %1059 ]
  %1068 = getelementptr inbounds %struct.Object, ptr %1067, i64 0, i32 26
  %1069 = load ptr, ptr %1068, align 8, !tbaa !42
  %1070 = icmp eq ptr %1069, null
  br i1 %1070, label %1063, label %1071

1071:                                             ; preds = %1066, %1078
  %1072 = phi ptr [ %1079, %1078 ], [ %1069, %1066 ]
  %1073 = getelementptr inbounds %struct.ModifierData, ptr %1072, i64 0, i32 2
  %1074 = load i32, ptr %1073, align 8, !tbaa !239
  %1075 = icmp eq i32 %1074, 2
  br i1 %1075, label %1076, label %1078

1076:                                             ; preds = %1071
  %1077 = getelementptr inbounds %struct.LatticeModifierData, ptr %1072, i64 0, i32 3
  store float 1.000000e+00, ptr %1077, align 8, !tbaa !282
  br label %1078

1078:                                             ; preds = %1071, %1076
  %1079 = load ptr, ptr %1072, align 8, !tbaa !42
  %1080 = icmp eq ptr %1079, null
  br i1 %1080, label %1063, label %1071, !llvm.loop !284

1081:                                             ; preds = %1063, %1059, %1055, %1053
  br i1 %1052, label %1088, label %1082

1082:                                             ; preds = %1081
  %1083 = icmp eq i16 %1051, 262
  br i1 %1083, label %1084, label %1119

1084:                                             ; preds = %1082
  %1085 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1086 = load i16, ptr %1085, align 2, !tbaa !83
  %1087 = icmp slt i16 %1086, 4
  br i1 %1087, label %1088, label %1119

1088:                                             ; preds = %1084, %1081
  %1089 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %1090 = load ptr, ptr %1089, align 8, !tbaa !42
  %1091 = icmp eq ptr %1090, null
  br i1 %1091, label %1119, label %1095

1092:                                             ; preds = %1116, %1095
  %1093 = load ptr, ptr %1096, align 8, !tbaa !42
  %1094 = icmp eq ptr %1093, null
  br i1 %1094, label %1119, label %1095, !llvm.loop !285

1095:                                             ; preds = %1088, %1092
  %1096 = phi ptr [ %1093, %1092 ], [ %1090, %1088 ]
  %1097 = getelementptr inbounds %struct.Object, ptr %1096, i64 0, i32 26
  %1098 = load ptr, ptr %1097, align 8, !tbaa !42
  %1099 = icmp eq ptr %1098, null
  br i1 %1099, label %1092, label %1100

1100:                                             ; preds = %1095, %1116
  %1101 = phi ptr [ %1117, %1116 ], [ %1098, %1095 ]
  %1102 = getelementptr inbounds %struct.ModifierData, ptr %1101, i64 0, i32 2
  %1103 = load i32, ptr %1102, align 8, !tbaa !239
  %1104 = icmp eq i32 %1103, 26
  br i1 %1104, label %1105, label %1116

1105:                                             ; preds = %1100
  %1106 = getelementptr inbounds %struct.FluidsimModifierData, ptr %1101, i64 0, i32 1
  %1107 = load ptr, ptr %1106, align 8, !tbaa !257
  %1108 = getelementptr inbounds %struct.FluidsimSettings, ptr %1107, i64 0, i32 11
  %1109 = load i16, ptr %1108, align 4, !tbaa !286
  switch i16 %1109, label %1116 [
    i16 3, label %1111
    i16 4, label %1110
  ]

1110:                                             ; preds = %1105
  br label %1111

1111:                                             ; preds = %1105, %1110
  %1112 = phi float [ 2.000000e+00, %1110 ], [ 5.000000e+00, %1105 ]
  %1113 = phi i16 [ 3, %1110 ], [ 5, %1105 ]
  %1114 = getelementptr inbounds %struct.FluidsimSettings, ptr %1107, i64 0, i32 10
  store float %1112, ptr %1114, align 8, !tbaa !287
  %1115 = getelementptr inbounds %struct.FluidsimSettings, ptr %1107, i64 0, i32 12
  store i16 %1113, ptr %1115, align 2, !tbaa !288
  br label %1116

1116:                                             ; preds = %1111, %1105, %1100
  %1117 = load ptr, ptr %1101, align 8, !tbaa !42
  %1118 = icmp eq ptr %1117, null
  br i1 %1118, label %1092, label %1100, !llvm.loop !289

1119:                                             ; preds = %1092, %1088, %1084, %1082
  %1120 = icmp slt i16 %1051, 263
  br i1 %1120, label %1121, label %1133

1121:                                             ; preds = %1119
  %1122 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 37
  %1123 = load ptr, ptr %1122, align 8, !tbaa !42
  %1124 = icmp eq ptr %1123, null
  br i1 %1124, label %1132, label %1125

1125:                                             ; preds = %1121, %1125
  %1126 = phi ptr [ %1130, %1125 ], [ %1123, %1121 ]
  %1127 = getelementptr inbounds %struct.ParticleSettings, ptr %1126, i64 0, i32 5
  %1128 = load i32, ptr %1127, align 8, !tbaa !290
  %1129 = or i32 %1128, 512
  store i32 %1129, ptr %1127, align 8, !tbaa !290
  %1130 = load ptr, ptr %1126, align 8, !tbaa !42
  %1131 = icmp eq ptr %1130, null
  br i1 %1131, label %1132, label %1125, !llvm.loop !291

1132:                                             ; preds = %1125, %1121
  br i1 %1120, label %1139, label %1133

1133:                                             ; preds = %1119, %1132
  %1134 = icmp eq i16 %1051, 263
  br i1 %1134, label %1135, label %1209

1135:                                             ; preds = %1133
  %1136 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1137 = load i16, ptr %1136, align 2, !tbaa !83
  %1138 = icmp slt i16 %1137, 1
  br i1 %1138, label %1139, label %1209

1139:                                             ; preds = %1135, %1132
  %1140 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1141 = load ptr, ptr %1140, align 8, !tbaa !42
  %1142 = icmp eq ptr %1141, null
  br i1 %1142, label %1176, label %1143

1143:                                             ; preds = %1139, %1173
  %1144 = phi ptr [ %1174, %1173 ], [ %1141, %1139 ]
  %1145 = getelementptr inbounds %struct.Scene, ptr %1144, i64 0, i32 18
  %1146 = load ptr, ptr %1145, align 8, !tbaa !65
  %1147 = icmp eq ptr %1146, null
  br i1 %1147, label %1173, label %1148

1148:                                             ; preds = %1143
  %1149 = getelementptr inbounds %struct.bNodeTree, ptr %1146, i64 0, i32 7
  %1150 = load ptr, ptr %1149, align 8, !tbaa !42
  %1151 = icmp eq ptr %1150, null
  br i1 %1151, label %1173, label %1152

1152:                                             ; preds = %1148, %1170
  %1153 = phi ptr [ %1171, %1170 ], [ %1150, %1148 ]
  %1154 = getelementptr inbounds %struct.bNode, ptr %1153, i64 0, i32 8
  %1155 = load i16, ptr %1154, align 4, !tbaa !66
  %1156 = icmp eq i16 %1155, 223
  br i1 %1156, label %1157, label %1170

1157:                                             ; preds = %1152
  %1158 = getelementptr inbounds %struct.bNode, ptr %1153, i64 0, i32 17
  %1159 = load ptr, ptr %1158, align 8, !tbaa !42
  %1160 = icmp eq ptr %1159, null
  br i1 %1160, label %1170, label %1161

1161:                                             ; preds = %1157, %1161
  %1162 = phi ptr [ %1168, %1161 ], [ %1159, %1157 ]
  %1163 = getelementptr inbounds %struct.bNodeSocket, ptr %1162, i64 0, i32 6
  %1164 = load ptr, ptr %1163, align 8, !tbaa !292
  %1165 = getelementptr inbounds %struct.NodeImageMultiFileSocket, ptr %1164, i64 0, i32 3
  %1166 = getelementptr inbounds %struct.bNodeSocket, ptr %1162, i64 0, i32 5
  %1167 = call ptr @BLI_strncpy(ptr noundef nonnull %1165, ptr noundef nonnull %1166, i64 noundef 1024) #8
  %1168 = load ptr, ptr %1162, align 8, !tbaa !42
  %1169 = icmp eq ptr %1168, null
  br i1 %1169, label %1170, label %1161, !llvm.loop !293

1170:                                             ; preds = %1161, %1157, %1152
  %1171 = load ptr, ptr %1153, align 8, !tbaa !42
  %1172 = icmp eq ptr %1171, null
  br i1 %1172, label %1173, label %1152, !llvm.loop !294

1173:                                             ; preds = %1170, %1148, %1143
  %1174 = load ptr, ptr %1144, align 8, !tbaa !42
  %1175 = icmp eq ptr %1174, null
  br i1 %1175, label %1176, label %1143, !llvm.loop !295

1176:                                             ; preds = %1173, %1139
  %1177 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 35
  %1178 = load ptr, ptr %1177, align 8, !tbaa !42
  %1179 = icmp eq ptr %1178, null
  br i1 %1179, label %1209, label %1183

1180:                                             ; preds = %1206, %1183
  %1181 = load ptr, ptr %1184, align 8, !tbaa !42
  %1182 = icmp eq ptr %1181, null
  br i1 %1182, label %1209, label %1183, !llvm.loop !296

1183:                                             ; preds = %1176, %1180
  %1184 = phi ptr [ %1181, %1180 ], [ %1178, %1176 ]
  %1185 = getelementptr inbounds %struct.bNodeTree, ptr %1184, i64 0, i32 7
  %1186 = load ptr, ptr %1185, align 8, !tbaa !42
  %1187 = icmp eq ptr %1186, null
  br i1 %1187, label %1180, label %1188

1188:                                             ; preds = %1183, %1206
  %1189 = phi ptr [ %1207, %1206 ], [ %1186, %1183 ]
  %1190 = getelementptr inbounds %struct.bNode, ptr %1189, i64 0, i32 8
  %1191 = load i16, ptr %1190, align 4, !tbaa !66
  %1192 = icmp eq i16 %1191, 223
  br i1 %1192, label %1193, label %1206

1193:                                             ; preds = %1188
  %1194 = getelementptr inbounds %struct.bNode, ptr %1189, i64 0, i32 17
  %1195 = load ptr, ptr %1194, align 8, !tbaa !42
  %1196 = icmp eq ptr %1195, null
  br i1 %1196, label %1206, label %1197

1197:                                             ; preds = %1193, %1197
  %1198 = phi ptr [ %1204, %1197 ], [ %1195, %1193 ]
  %1199 = getelementptr inbounds %struct.bNodeSocket, ptr %1198, i64 0, i32 6
  %1200 = load ptr, ptr %1199, align 8, !tbaa !292
  %1201 = getelementptr inbounds %struct.NodeImageMultiFileSocket, ptr %1200, i64 0, i32 3
  %1202 = getelementptr inbounds %struct.bNodeSocket, ptr %1198, i64 0, i32 5
  %1203 = call ptr @BLI_strncpy(ptr noundef nonnull %1201, ptr noundef nonnull %1202, i64 noundef 1024) #8
  %1204 = load ptr, ptr %1198, align 8, !tbaa !42
  %1205 = icmp eq ptr %1204, null
  br i1 %1205, label %1206, label %1197, !llvm.loop !293

1206:                                             ; preds = %1197, %1193, %1188
  %1207 = load ptr, ptr %1189, align 8, !tbaa !42
  %1208 = icmp eq ptr %1207, null
  br i1 %1208, label %1180, label %1188, !llvm.loop !294

1209:                                             ; preds = %1180, %1176, %1135, %1133
  %1210 = load i16, ptr %55, align 8, !tbaa !34
  %1211 = icmp slt i16 %1210, 263
  br i1 %1211, label %1218, label %1212

1212:                                             ; preds = %1209
  %1213 = icmp eq i16 %1210, 263
  br i1 %1213, label %1214, label %1246

1214:                                             ; preds = %1212
  %1215 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1216 = load i16, ptr %1215, align 2, !tbaa !83
  %1217 = icmp slt i16 %1216, 3
  br i1 %1217, label %1218, label %1246

1218:                                             ; preds = %1214, %1209
  %1219 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1220 = load ptr, ptr %1219, align 8, !tbaa !42
  %1221 = icmp eq ptr %1220, null
  br i1 %1221, label %1237, label %1222

1222:                                             ; preds = %1218, %1234
  %1223 = phi ptr [ %1235, %1234 ], [ %1220, %1218 ]
  %1224 = getelementptr inbounds %struct.Scene, ptr %1223, i64 0, i32 20
  %1225 = load ptr, ptr %1224, align 8, !tbaa !213
  %1226 = icmp eq ptr %1225, null
  br i1 %1226, label %1234, label %1227

1227:                                             ; preds = %1222
  %1228 = getelementptr inbounds %struct.ToolSettings, ptr %1225, i64 0, i32 4
  %1229 = load float, ptr %1228, align 8, !tbaa !297
  %1230 = getelementptr inbounds %struct.ToolSettings, ptr %1225, i64 0, i32 73, i32 3
  store float %1229, ptr %1230, align 4, !tbaa !298
  %1231 = getelementptr inbounds %struct.ToolSettings, ptr %1225, i64 0, i32 73, i32 6
  %1232 = load i32, ptr %1231, align 8, !tbaa !299
  %1233 = or i32 %1232, 32
  store i32 %1233, ptr %1231, align 8, !tbaa !299
  br label %1234

1234:                                             ; preds = %1227, %1222
  %1235 = load ptr, ptr %1223, align 8, !tbaa !42
  %1236 = icmp eq ptr %1235, null
  br i1 %1236, label %1237, label %1222, !llvm.loop !300

1237:                                             ; preds = %1234, %1218
  %1238 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 36
  %1239 = load ptr, ptr %1238, align 8, !tbaa !42
  %1240 = icmp eq ptr %1239, null
  br i1 %1240, label %1246, label %1241

1241:                                             ; preds = %1237, %1241
  %1242 = phi ptr [ %1244, %1241 ], [ %1239, %1237 ]
  %1243 = getelementptr inbounds %struct.Brush, ptr %1242, i64 0, i32 14
  store float 5.000000e-01, ptr %1243, align 8, !tbaa !301
  %1244 = load ptr, ptr %1242, align 8, !tbaa !42
  %1245 = icmp eq ptr %1244, null
  br i1 %1245, label %1246, label %1241, !llvm.loop !302

1246:                                             ; preds = %1241, %1237, %1214, %1212
  br i1 %1211, label %1253, label %1247

1247:                                             ; preds = %1246
  %1248 = icmp eq i16 %1210, 263
  br i1 %1248, label %1249, label %1312

1249:                                             ; preds = %1247
  %1250 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1251 = load i16, ptr %1250, align 2, !tbaa !83
  %1252 = icmp slt i16 %1251, 2
  br i1 %1252, label %1253, label %1312

1253:                                             ; preds = %1249, %1246
  %1254 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %1255 = load ptr, ptr %1254, align 8, !tbaa !42
  %1256 = icmp eq ptr %1255, null
  br i1 %1256, label %1312, label %1260

1257:                                             ; preds = %1265, %1260
  %1258 = load ptr, ptr %1261, align 8, !tbaa !42
  %1259 = icmp eq ptr %1258, null
  br i1 %1259, label %1312, label %1260, !llvm.loop !303

1260:                                             ; preds = %1253, %1257
  %1261 = phi ptr [ %1258, %1257 ], [ %1255, %1253 ]
  %1262 = getelementptr inbounds %struct.bScreen, ptr %1261, i64 0, i32 3
  %1263 = load ptr, ptr %1262, align 8, !tbaa !42
  %1264 = icmp eq ptr %1263, null
  br i1 %1264, label %1257, label %1268

1265:                                             ; preds = %1309, %1268
  %1266 = load ptr, ptr %1269, align 8, !tbaa !42
  %1267 = icmp eq ptr %1266, null
  br i1 %1267, label %1257, label %1268, !llvm.loop !304

1268:                                             ; preds = %1260, %1265
  %1269 = phi ptr [ %1266, %1265 ], [ %1263, %1260 ]
  %1270 = getelementptr inbounds %struct.ScrArea, ptr %1269, i64 0, i32 19
  %1271 = load ptr, ptr %1270, align 8, !tbaa !42
  %1272 = icmp eq ptr %1271, null
  br i1 %1272, label %1265, label %1273

1273:                                             ; preds = %1268
  %1274 = getelementptr inbounds %struct.ScrArea, ptr %1269, i64 0, i32 20
  br label %1275

1275:                                             ; preds = %1273, %1309
  %1276 = phi ptr [ %1271, %1273 ], [ %1310, %1309 ]
  %1277 = getelementptr inbounds %struct.SpaceLink, ptr %1276, i64 0, i32 3
  %1278 = load i32, ptr %1277, align 8, !tbaa !112
  %1279 = icmp eq i32 %1278, 20
  br i1 %1279, label %1280, label %1309

1280:                                             ; preds = %1275
  %1281 = load ptr, ptr %1274, align 8, !tbaa !42
  %1282 = icmp eq ptr %1281, null
  br i1 %1282, label %1304, label %1283

1283:                                             ; preds = %1280, %1300
  %1284 = phi ptr [ %1302, %1300 ], [ %1281, %1280 ]
  %1285 = phi i8 [ %1301, %1300 ], [ 0, %1280 ]
  %1286 = getelementptr inbounds %struct.ARegion, ptr %1284, i64 0, i32 8
  %1287 = load i16, ptr %1286, align 2, !tbaa !305
  %1288 = icmp eq i16 %1287, 7
  br i1 %1288, label %1289, label %1300

1289:                                             ; preds = %1283
  %1290 = getelementptr inbounds %struct.ARegion, ptr %1284, i64 0, i32 9
  %1291 = load i16, ptr %1290, align 8, !tbaa !308
  %1292 = icmp eq i16 %1291, 0
  br i1 %1292, label %1300, label %1293

1293:                                             ; preds = %1289
  %1294 = getelementptr inbounds %struct.ARegion, ptr %1284, i64 0, i32 10
  %1295 = load i16, ptr %1294, align 2, !tbaa !309
  %1296 = or i16 %1295, 1
  store i16 %1296, ptr %1294, align 2, !tbaa !309
  %1297 = getelementptr inbounds %struct.ARegion, ptr %1284, i64 0, i32 2, i32 14
  %1298 = load i16, ptr %1297, align 2, !tbaa !310
  %1299 = and i16 %1298, -1025
  store i16 %1299, ptr %1297, align 2, !tbaa !310
  store i16 0, ptr %1290, align 8, !tbaa !308
  br label %1300

1300:                                             ; preds = %1283, %1293, %1289
  %1301 = phi i8 [ 1, %1293 ], [ %1285, %1289 ], [ %1285, %1283 ]
  %1302 = load ptr, ptr %1284, align 8, !tbaa !42
  %1303 = icmp eq ptr %1302, null
  br i1 %1303, label %1304, label %1283, !llvm.loop !311

1304:                                             ; preds = %1300, %1280
  %1305 = phi i8 [ 0, %1280 ], [ %1301, %1300 ]
  %1306 = icmp eq i8 %1305, 0
  br i1 %1306, label %1309, label %1307

1307:                                             ; preds = %1304
  %1308 = getelementptr inbounds %struct.SpaceClip, ptr %1276, i64 0, i32 14
  store i16 0, ptr %1308, align 2, !tbaa !312
  br label %1309

1309:                                             ; preds = %1304, %1307, %1275
  %1310 = load ptr, ptr %1276, align 8, !tbaa !42
  %1311 = icmp eq ptr %1310, null
  br i1 %1311, label %1265, label %1275, !llvm.loop !313

1312:                                             ; preds = %1257, %1253, %1249, %1247
  br i1 %1211, label %1319, label %1313

1313:                                             ; preds = %1312
  %1314 = icmp eq i16 %1210, 263
  br i1 %1314, label %1315, label %1362

1315:                                             ; preds = %1313
  %1316 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1317 = load i16, ptr %1316, align 2, !tbaa !83
  %1318 = icmp slt i16 %1317, 4
  br i1 %1318, label %1319, label %1362

1319:                                             ; preds = %1315, %1312
  %1320 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 21
  %1321 = load ptr, ptr %1320, align 8, !tbaa !42
  %1322 = icmp eq ptr %1321, null
  br i1 %1322, label %1332, label %1323

1323:                                             ; preds = %1319, %1329
  %1324 = phi ptr [ %1330, %1329 ], [ %1321, %1319 ]
  %1325 = getelementptr inbounds %struct.Lamp, ptr %1324, i64 0, i32 65
  %1326 = load float, ptr %1325, align 8, !tbaa !314
  %1327 = fcmp oeq float %1326, 0.000000e+00
  br i1 %1327, label %1328, label %1329

1328:                                             ; preds = %1323
  store float 1.000000e+01, ptr %1325, align 8, !tbaa !314
  br label %1329

1329:                                             ; preds = %1323, %1328
  %1330 = load ptr, ptr %1324, align 8, !tbaa !42
  %1331 = icmp eq ptr %1330, null
  br i1 %1331, label %1332, label %1323, !llvm.loop !315

1332:                                             ; preds = %1329, %1319
  %1333 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 22
  %1334 = load ptr, ptr %1333, align 8, !tbaa !42
  %1335 = icmp eq ptr %1334, null
  br i1 %1335, label %1348, label %1336

1336:                                             ; preds = %1332, %1345
  %1337 = phi ptr [ %1346, %1345 ], [ %1334, %1332 ]
  %1338 = getelementptr inbounds %struct.Camera, ptr %1337, i64 0, i32 4
  %1339 = load i16, ptr %1338, align 2, !tbaa !316
  %1340 = and i16 %1339, 128
  %1341 = icmp eq i16 %1340, 0
  br i1 %1341, label %1345, label %1342

1342:                                             ; preds = %1336
  %1343 = getelementptr inbounds %struct.Camera, ptr %1337, i64 0, i32 2
  store i8 2, ptr %1343, align 8, !tbaa !317
  %1344 = and i16 %1339, -129
  store i16 %1344, ptr %1338, align 2, !tbaa !316
  br label %1345

1345:                                             ; preds = %1336, %1342
  %1346 = load ptr, ptr %1337, align 8, !tbaa !42
  %1347 = icmp eq ptr %1346, null
  br i1 %1347, label %1348, label %1336, !llvm.loop !318

1348:                                             ; preds = %1345, %1332
  %1349 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 15
  %1350 = load ptr, ptr %1349, align 8, !tbaa !42
  %1351 = icmp eq ptr %1350, null
  br i1 %1351, label %1362, label %1352

1352:                                             ; preds = %1348, %1359
  %1353 = phi ptr [ %1360, %1359 ], [ %1350, %1348 ]
  %1354 = getelementptr inbounds %struct.Curve, ptr %1353, i64 0, i32 66
  %1355 = load float, ptr %1354, align 8, !tbaa !319
  %1356 = fcmp oeq float %1355, 0.000000e+00
  br i1 %1356, label %1357, label %1359

1357:                                             ; preds = %1352
  %1358 = getelementptr inbounds %struct.Curve, ptr %1353, i64 0, i32 65
  store float 0.000000e+00, ptr %1358, align 4, !tbaa !322
  store float 1.000000e+00, ptr %1354, align 8, !tbaa !319
  br label %1359

1359:                                             ; preds = %1352, %1357
  %1360 = load ptr, ptr %1353, align 8, !tbaa !42
  %1361 = icmp eq ptr %1360, null
  br i1 %1361, label %1362, label %1352, !llvm.loop !323

1362:                                             ; preds = %1359, %1348, %1315, %1313
  br i1 %1211, label %1369, label %1363

1363:                                             ; preds = %1362
  %1364 = icmp eq i16 %1210, 263
  br i1 %1364, label %1365, label %1491

1365:                                             ; preds = %1363
  %1366 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1367 = load i16, ptr %1366, align 2, !tbaa !83
  %1368 = icmp slt i16 %1367, 5
  br i1 %1368, label %1369, label %1491

1369:                                             ; preds = %1365, %1362
  %1370 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1371 = load ptr, ptr %1370, align 8, !tbaa !42
  %1372 = icmp eq ptr %1371, null
  br i1 %1372, label %1433, label %1373

1373:                                             ; preds = %1369, %1430
  %1374 = phi ptr [ %1431, %1430 ], [ %1371, %1369 ]
  %1375 = getelementptr inbounds %struct.Scene, ptr %1374, i64 0, i32 18
  %1376 = load ptr, ptr %1375, align 8, !tbaa !65
  %1377 = icmp eq ptr %1376, null
  br i1 %1377, label %1430, label %1378

1378:                                             ; preds = %1373
  %1379 = getelementptr inbounds %struct.bNodeTree, ptr %1376, i64 0, i32 7
  %1380 = load ptr, ptr %1379, align 8, !tbaa !42
  %1381 = icmp eq ptr %1380, null
  br i1 %1381, label %1403, label %1382

1382:                                             ; preds = %1378, %1400
  %1383 = phi ptr [ %1401, %1400 ], [ %1380, %1378 ]
  %1384 = getelementptr inbounds %struct.bNode, ptr %1383, i64 0, i32 8
  %1385 = load i16, ptr %1384, align 4, !tbaa !66
  %1386 = icmp eq i16 %1385, 223
  br i1 %1386, label %1387, label %1400

1387:                                             ; preds = %1382
  %1388 = getelementptr inbounds %struct.bNode, ptr %1383, i64 0, i32 17
  %1389 = load ptr, ptr %1388, align 8, !tbaa !42
  %1390 = icmp eq ptr %1389, null
  br i1 %1390, label %1400, label %1391

1391:                                             ; preds = %1387, %1391
  %1392 = phi ptr [ %1398, %1391 ], [ %1389, %1387 ]
  %1393 = getelementptr inbounds %struct.bNodeSocket, ptr %1392, i64 0, i32 6
  %1394 = load ptr, ptr %1393, align 8, !tbaa !292
  %1395 = getelementptr inbounds %struct.NodeImageMultiFileSocket, ptr %1394, i64 0, i32 5
  %1396 = getelementptr inbounds %struct.NodeImageMultiFileSocket, ptr %1394, i64 0, i32 3
  %1397 = call ptr @BLI_strncpy(ptr noundef nonnull %1395, ptr noundef nonnull %1396, i64 noundef 30) #8
  call void @ntreeCompositOutputFileUniquePath(ptr noundef nonnull %1388, ptr noundef nonnull %1392, ptr noundef nonnull %1396, i8 noundef zeroext 95) #8
  call void @ntreeCompositOutputFileUniqueLayer(ptr noundef nonnull %1388, ptr noundef nonnull %1392, ptr noundef nonnull %1395, i8 noundef zeroext 95) #8
  %1398 = load ptr, ptr %1392, align 8, !tbaa !42
  %1399 = icmp eq ptr %1398, null
  br i1 %1399, label %1400, label %1391, !llvm.loop !324

1400:                                             ; preds = %1391, %1387, %1382
  %1401 = load ptr, ptr %1383, align 8, !tbaa !42
  %1402 = icmp eq ptr %1401, null
  br i1 %1402, label %1403, label %1382, !llvm.loop !325

1403:                                             ; preds = %1400, %1378
  %1404 = load ptr, ptr %1375, align 8, !tbaa !65
  %1405 = getelementptr inbounds %struct.bNodeTree, ptr %1404, i64 0, i32 7
  %1406 = load ptr, ptr %1405, align 8, !tbaa !42
  %1407 = icmp eq ptr %1406, null
  br i1 %1407, label %1430, label %1408

1408:                                             ; preds = %1403, %1427
  %1409 = phi ptr [ %1428, %1427 ], [ %1406, %1403 ]
  %1410 = getelementptr inbounds %struct.bNode, ptr %1409, i64 0, i32 8
  %1411 = load i16, ptr %1410, align 4, !tbaa !66
  %1412 = icmp eq i16 %1411, 220
  br i1 %1412, label %1413, label %1427

1413:                                             ; preds = %1408
  %1414 = getelementptr inbounds %struct.bNode, ptr %1409, i64 0, i32 18
  %1415 = load ptr, ptr %1414, align 8, !tbaa !42
  %1416 = icmp eq ptr %1415, null
  br i1 %1416, label %1427, label %1417

1417:                                             ; preds = %1413, %1417
  %1418 = phi ptr [ %1425, %1417 ], [ %1415, %1413 ]
  %1419 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %1420 = call ptr %1419(i64 noundef 8, ptr noundef nonnull @.str.22) #8
  %1421 = getelementptr inbounds %struct.bNodeSocket, ptr %1418, i64 0, i32 6
  %1422 = load ptr, ptr %1421, align 8, !tbaa !292
  %1423 = ptrtoint ptr %1422 to i64
  %1424 = trunc i64 %1423 to i32
  store i32 %1424, ptr %1420, align 4, !tbaa !326
  store ptr %1420, ptr %1421, align 8, !tbaa !292
  %1425 = load ptr, ptr %1418, align 8, !tbaa !42
  %1426 = icmp eq ptr %1425, null
  br i1 %1426, label %1427, label %1417, !llvm.loop !328

1427:                                             ; preds = %1417, %1413, %1408
  %1428 = load ptr, ptr %1409, align 8, !tbaa !42
  %1429 = icmp eq ptr %1428, null
  br i1 %1429, label %1430, label %1408, !llvm.loop !329

1430:                                             ; preds = %1427, %1403, %1373
  %1431 = load ptr, ptr %1374, align 8, !tbaa !42
  %1432 = icmp eq ptr %1431, null
  br i1 %1432, label %1433, label %1373, !llvm.loop !330

1433:                                             ; preds = %1430, %1369
  %1434 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 35
  %1435 = load ptr, ptr %1434, align 8, !tbaa !42
  %1436 = icmp eq ptr %1435, null
  br i1 %1436, label %1491, label %1440

1437:                                             ; preds = %1488, %1466
  %1438 = load ptr, ptr %1441, align 8, !tbaa !42
  %1439 = icmp eq ptr %1438, null
  br i1 %1439, label %1491, label %1440, !llvm.loop !331

1440:                                             ; preds = %1433, %1437
  %1441 = phi ptr [ %1438, %1437 ], [ %1435, %1433 ]
  %1442 = getelementptr inbounds %struct.bNodeTree, ptr %1441, i64 0, i32 7
  %1443 = load ptr, ptr %1442, align 8, !tbaa !42
  %1444 = icmp eq ptr %1443, null
  br i1 %1444, label %1466, label %1445

1445:                                             ; preds = %1440, %1463
  %1446 = phi ptr [ %1464, %1463 ], [ %1443, %1440 ]
  %1447 = getelementptr inbounds %struct.bNode, ptr %1446, i64 0, i32 8
  %1448 = load i16, ptr %1447, align 4, !tbaa !66
  %1449 = icmp eq i16 %1448, 223
  br i1 %1449, label %1450, label %1463

1450:                                             ; preds = %1445
  %1451 = getelementptr inbounds %struct.bNode, ptr %1446, i64 0, i32 17
  %1452 = load ptr, ptr %1451, align 8, !tbaa !42
  %1453 = icmp eq ptr %1452, null
  br i1 %1453, label %1463, label %1454

1454:                                             ; preds = %1450, %1454
  %1455 = phi ptr [ %1461, %1454 ], [ %1452, %1450 ]
  %1456 = getelementptr inbounds %struct.bNodeSocket, ptr %1455, i64 0, i32 6
  %1457 = load ptr, ptr %1456, align 8, !tbaa !292
  %1458 = getelementptr inbounds %struct.NodeImageMultiFileSocket, ptr %1457, i64 0, i32 5
  %1459 = getelementptr inbounds %struct.NodeImageMultiFileSocket, ptr %1457, i64 0, i32 3
  %1460 = call ptr @BLI_strncpy(ptr noundef nonnull %1458, ptr noundef nonnull %1459, i64 noundef 30) #8
  call void @ntreeCompositOutputFileUniquePath(ptr noundef nonnull %1451, ptr noundef nonnull %1455, ptr noundef nonnull %1459, i8 noundef zeroext 95) #8
  call void @ntreeCompositOutputFileUniqueLayer(ptr noundef nonnull %1451, ptr noundef nonnull %1455, ptr noundef nonnull %1458, i8 noundef zeroext 95) #8
  %1461 = load ptr, ptr %1455, align 8, !tbaa !42
  %1462 = icmp eq ptr %1461, null
  br i1 %1462, label %1463, label %1454, !llvm.loop !324

1463:                                             ; preds = %1454, %1450, %1445
  %1464 = load ptr, ptr %1446, align 8, !tbaa !42
  %1465 = icmp eq ptr %1464, null
  br i1 %1465, label %1466, label %1445, !llvm.loop !325

1466:                                             ; preds = %1463, %1440
  %1467 = load ptr, ptr %1442, align 8, !tbaa !42
  %1468 = icmp eq ptr %1467, null
  br i1 %1468, label %1437, label %1469

1469:                                             ; preds = %1466, %1488
  %1470 = phi ptr [ %1489, %1488 ], [ %1467, %1466 ]
  %1471 = getelementptr inbounds %struct.bNode, ptr %1470, i64 0, i32 8
  %1472 = load i16, ptr %1471, align 4, !tbaa !66
  %1473 = icmp eq i16 %1472, 220
  br i1 %1473, label %1474, label %1488

1474:                                             ; preds = %1469
  %1475 = getelementptr inbounds %struct.bNode, ptr %1470, i64 0, i32 18
  %1476 = load ptr, ptr %1475, align 8, !tbaa !42
  %1477 = icmp eq ptr %1476, null
  br i1 %1477, label %1488, label %1478

1478:                                             ; preds = %1474, %1478
  %1479 = phi ptr [ %1486, %1478 ], [ %1476, %1474 ]
  %1480 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %1481 = call ptr %1480(i64 noundef 8, ptr noundef nonnull @.str.22) #8
  %1482 = getelementptr inbounds %struct.bNodeSocket, ptr %1479, i64 0, i32 6
  %1483 = load ptr, ptr %1482, align 8, !tbaa !292
  %1484 = ptrtoint ptr %1483 to i64
  %1485 = trunc i64 %1484 to i32
  store i32 %1485, ptr %1481, align 4, !tbaa !326
  store ptr %1481, ptr %1482, align 8, !tbaa !292
  %1486 = load ptr, ptr %1479, align 8, !tbaa !42
  %1487 = icmp eq ptr %1486, null
  br i1 %1487, label %1488, label %1478, !llvm.loop !328

1488:                                             ; preds = %1478, %1474, %1469
  %1489 = load ptr, ptr %1470, align 8, !tbaa !42
  %1490 = icmp eq ptr %1489, null
  br i1 %1490, label %1437, label %1469, !llvm.loop !329

1491:                                             ; preds = %1437, %1433, %1365, %1363
  %1492 = load i16, ptr %55, align 8, !tbaa !34
  %1493 = icmp slt i16 %1492, 263
  br i1 %1493, label %1500, label %1494

1494:                                             ; preds = %1491
  %1495 = icmp eq i16 %1492, 263
  br i1 %1495, label %1496, label %1718

1496:                                             ; preds = %1494
  %1497 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1498 = load i16, ptr %1497, align 2, !tbaa !83
  %1499 = icmp slt i16 %1498, 6
  br i1 %1499, label %1500, label %1718

1500:                                             ; preds = %1496, %1491
  %1501 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1502 = load ptr, ptr %1501, align 8, !tbaa !42
  %1503 = icmp eq ptr %1502, null
  br i1 %1503, label %1537, label %1504

1504:                                             ; preds = %1500, %1534
  %1505 = phi ptr [ %1535, %1534 ], [ %1502, %1500 ]
  %1506 = getelementptr inbounds %struct.Scene, ptr %1505, i64 0, i32 18
  %1507 = load ptr, ptr %1506, align 8, !tbaa !65
  %1508 = icmp eq ptr %1507, null
  br i1 %1508, label %1534, label %1509

1509:                                             ; preds = %1504
  %1510 = getelementptr inbounds %struct.bNodeTree, ptr %1507, i64 0, i32 7
  %1511 = load ptr, ptr %1510, align 8, !tbaa !42
  %1512 = icmp eq ptr %1511, null
  br i1 %1512, label %1534, label %1513

1513:                                             ; preds = %1509, %1528
  %1514 = phi ptr [ %1532, %1528 ], [ %1511, %1509 ]
  %1515 = getelementptr inbounds %struct.bNode, ptr %1514, i64 0, i32 8
  %1516 = load i16, ptr %1515, align 4, !tbaa !66
  %1517 = icmp eq i16 %1516, 5
  br i1 %1517, label %1518, label %1528

1518:                                             ; preds = %1513
  %1519 = getelementptr inbounds %struct.bNode, ptr %1514, i64 0, i32 21
  %1520 = load ptr, ptr %1519, align 8, !tbaa !96
  %1521 = icmp eq ptr %1520, null
  br i1 %1521, label %1522, label %1528

1522:                                             ; preds = %1518
  %1523 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %1524 = call ptr %1523(i64 noundef 4, ptr noundef nonnull @.str.23) #8
  store ptr %1524, ptr %1519, align 8, !tbaa !96
  %1525 = getelementptr inbounds %struct.bNode, ptr %1514, i64 0, i32 33
  %1526 = load i16, ptr %1525, align 8, !tbaa !332
  store i16 %1526, ptr %1524, align 2, !tbaa !333
  %1527 = getelementptr inbounds %struct.NodeFrame, ptr %1524, i64 0, i32 1
  store i16 20, ptr %1527, align 2, !tbaa !335
  br label %1528

1528:                                             ; preds = %1522, %1518, %1513
  %1529 = getelementptr inbounds %struct.bNode, ptr %1514, i64 0, i32 16
  %1530 = getelementptr inbounds %struct.bNode, ptr %1514, i64 0, i32 16, i64 2
  store float 0x3FE374BC60000000, ptr %1530, align 4, !tbaa !72
  %1531 = getelementptr inbounds %struct.bNode, ptr %1514, i64 0, i32 16, i64 1
  store float 0x3FE374BC60000000, ptr %1531, align 4, !tbaa !72
  store float 0x3FE374BC60000000, ptr %1529, align 4, !tbaa !72
  %1532 = load ptr, ptr %1514, align 8, !tbaa !42
  %1533 = icmp eq ptr %1532, null
  br i1 %1533, label %1534, label %1513, !llvm.loop !336

1534:                                             ; preds = %1528, %1509, %1504
  %1535 = load ptr, ptr %1505, align 8, !tbaa !42
  %1536 = icmp eq ptr %1535, null
  br i1 %1536, label %1537, label %1504, !llvm.loop !337

1537:                                             ; preds = %1534, %1500
  %1538 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %1539 = load ptr, ptr %1538, align 8, !tbaa !42
  %1540 = icmp eq ptr %1539, null
  br i1 %1540, label %1574, label %1541

1541:                                             ; preds = %1537, %1571
  %1542 = phi ptr [ %1572, %1571 ], [ %1539, %1537 ]
  %1543 = getelementptr inbounds %struct.Material, ptr %1542, i64 0, i32 103
  %1544 = load ptr, ptr %1543, align 8, !tbaa !104
  %1545 = icmp eq ptr %1544, null
  br i1 %1545, label %1571, label %1546

1546:                                             ; preds = %1541
  %1547 = getelementptr inbounds %struct.bNodeTree, ptr %1544, i64 0, i32 7
  %1548 = load ptr, ptr %1547, align 8, !tbaa !42
  %1549 = icmp eq ptr %1548, null
  br i1 %1549, label %1571, label %1550

1550:                                             ; preds = %1546, %1565
  %1551 = phi ptr [ %1569, %1565 ], [ %1548, %1546 ]
  %1552 = getelementptr inbounds %struct.bNode, ptr %1551, i64 0, i32 8
  %1553 = load i16, ptr %1552, align 4, !tbaa !66
  %1554 = icmp eq i16 %1553, 5
  br i1 %1554, label %1555, label %1565

1555:                                             ; preds = %1550
  %1556 = getelementptr inbounds %struct.bNode, ptr %1551, i64 0, i32 21
  %1557 = load ptr, ptr %1556, align 8, !tbaa !96
  %1558 = icmp eq ptr %1557, null
  br i1 %1558, label %1559, label %1565

1559:                                             ; preds = %1555
  %1560 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %1561 = call ptr %1560(i64 noundef 4, ptr noundef nonnull @.str.23) #8
  store ptr %1561, ptr %1556, align 8, !tbaa !96
  %1562 = getelementptr inbounds %struct.bNode, ptr %1551, i64 0, i32 33
  %1563 = load i16, ptr %1562, align 8, !tbaa !332
  store i16 %1563, ptr %1561, align 2, !tbaa !333
  %1564 = getelementptr inbounds %struct.NodeFrame, ptr %1561, i64 0, i32 1
  store i16 20, ptr %1564, align 2, !tbaa !335
  br label %1565

1565:                                             ; preds = %1559, %1555, %1550
  %1566 = getelementptr inbounds %struct.bNode, ptr %1551, i64 0, i32 16
  %1567 = getelementptr inbounds %struct.bNode, ptr %1551, i64 0, i32 16, i64 2
  store float 0x3FE374BC60000000, ptr %1567, align 4, !tbaa !72
  %1568 = getelementptr inbounds %struct.bNode, ptr %1551, i64 0, i32 16, i64 1
  store float 0x3FE374BC60000000, ptr %1568, align 4, !tbaa !72
  store float 0x3FE374BC60000000, ptr %1566, align 4, !tbaa !72
  %1569 = load ptr, ptr %1551, align 8, !tbaa !42
  %1570 = icmp eq ptr %1569, null
  br i1 %1570, label %1571, label %1550, !llvm.loop !336

1571:                                             ; preds = %1565, %1546, %1541
  %1572 = load ptr, ptr %1542, align 8, !tbaa !42
  %1573 = icmp eq ptr %1572, null
  br i1 %1573, label %1574, label %1541, !llvm.loop !338

1574:                                             ; preds = %1571, %1537
  %1575 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %1576 = load ptr, ptr %1575, align 8, !tbaa !42
  %1577 = icmp eq ptr %1576, null
  br i1 %1577, label %1611, label %1578

1578:                                             ; preds = %1574, %1608
  %1579 = phi ptr [ %1609, %1608 ], [ %1576, %1574 ]
  %1580 = getelementptr inbounds %struct.Tex, ptr %1579, i64 0, i32 52
  %1581 = load ptr, ptr %1580, align 8, !tbaa !176
  %1582 = icmp eq ptr %1581, null
  br i1 %1582, label %1608, label %1583

1583:                                             ; preds = %1578
  %1584 = getelementptr inbounds %struct.bNodeTree, ptr %1581, i64 0, i32 7
  %1585 = load ptr, ptr %1584, align 8, !tbaa !42
  %1586 = icmp eq ptr %1585, null
  br i1 %1586, label %1608, label %1587

1587:                                             ; preds = %1583, %1602
  %1588 = phi ptr [ %1606, %1602 ], [ %1585, %1583 ]
  %1589 = getelementptr inbounds %struct.bNode, ptr %1588, i64 0, i32 8
  %1590 = load i16, ptr %1589, align 4, !tbaa !66
  %1591 = icmp eq i16 %1590, 5
  br i1 %1591, label %1592, label %1602

1592:                                             ; preds = %1587
  %1593 = getelementptr inbounds %struct.bNode, ptr %1588, i64 0, i32 21
  %1594 = load ptr, ptr %1593, align 8, !tbaa !96
  %1595 = icmp eq ptr %1594, null
  br i1 %1595, label %1596, label %1602

1596:                                             ; preds = %1592
  %1597 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %1598 = call ptr %1597(i64 noundef 4, ptr noundef nonnull @.str.23) #8
  store ptr %1598, ptr %1593, align 8, !tbaa !96
  %1599 = getelementptr inbounds %struct.bNode, ptr %1588, i64 0, i32 33
  %1600 = load i16, ptr %1599, align 8, !tbaa !332
  store i16 %1600, ptr %1598, align 2, !tbaa !333
  %1601 = getelementptr inbounds %struct.NodeFrame, ptr %1598, i64 0, i32 1
  store i16 20, ptr %1601, align 2, !tbaa !335
  br label %1602

1602:                                             ; preds = %1596, %1592, %1587
  %1603 = getelementptr inbounds %struct.bNode, ptr %1588, i64 0, i32 16
  %1604 = getelementptr inbounds %struct.bNode, ptr %1588, i64 0, i32 16, i64 2
  store float 0x3FE374BC60000000, ptr %1604, align 4, !tbaa !72
  %1605 = getelementptr inbounds %struct.bNode, ptr %1588, i64 0, i32 16, i64 1
  store float 0x3FE374BC60000000, ptr %1605, align 4, !tbaa !72
  store float 0x3FE374BC60000000, ptr %1603, align 4, !tbaa !72
  %1606 = load ptr, ptr %1588, align 8, !tbaa !42
  %1607 = icmp eq ptr %1606, null
  br i1 %1607, label %1608, label %1587, !llvm.loop !336

1608:                                             ; preds = %1602, %1583, %1578
  %1609 = load ptr, ptr %1579, align 8, !tbaa !42
  %1610 = icmp eq ptr %1609, null
  br i1 %1610, label %1611, label %1578, !llvm.loop !339

1611:                                             ; preds = %1608, %1574
  %1612 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 21
  %1613 = load ptr, ptr %1612, align 8, !tbaa !42
  %1614 = icmp eq ptr %1613, null
  br i1 %1614, label %1648, label %1615

1615:                                             ; preds = %1611, %1645
  %1616 = phi ptr [ %1646, %1645 ], [ %1613, %1611 ]
  %1617 = getelementptr inbounds %struct.Lamp, ptr %1616, i64 0, i32 74
  %1618 = load ptr, ptr %1617, align 8, !tbaa !180
  %1619 = icmp eq ptr %1618, null
  br i1 %1619, label %1645, label %1620

1620:                                             ; preds = %1615
  %1621 = getelementptr inbounds %struct.bNodeTree, ptr %1618, i64 0, i32 7
  %1622 = load ptr, ptr %1621, align 8, !tbaa !42
  %1623 = icmp eq ptr %1622, null
  br i1 %1623, label %1645, label %1624

1624:                                             ; preds = %1620, %1639
  %1625 = phi ptr [ %1643, %1639 ], [ %1622, %1620 ]
  %1626 = getelementptr inbounds %struct.bNode, ptr %1625, i64 0, i32 8
  %1627 = load i16, ptr %1626, align 4, !tbaa !66
  %1628 = icmp eq i16 %1627, 5
  br i1 %1628, label %1629, label %1639

1629:                                             ; preds = %1624
  %1630 = getelementptr inbounds %struct.bNode, ptr %1625, i64 0, i32 21
  %1631 = load ptr, ptr %1630, align 8, !tbaa !96
  %1632 = icmp eq ptr %1631, null
  br i1 %1632, label %1633, label %1639

1633:                                             ; preds = %1629
  %1634 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %1635 = call ptr %1634(i64 noundef 4, ptr noundef nonnull @.str.23) #8
  store ptr %1635, ptr %1630, align 8, !tbaa !96
  %1636 = getelementptr inbounds %struct.bNode, ptr %1625, i64 0, i32 33
  %1637 = load i16, ptr %1636, align 8, !tbaa !332
  store i16 %1637, ptr %1635, align 2, !tbaa !333
  %1638 = getelementptr inbounds %struct.NodeFrame, ptr %1635, i64 0, i32 1
  store i16 20, ptr %1638, align 2, !tbaa !335
  br label %1639

1639:                                             ; preds = %1633, %1629, %1624
  %1640 = getelementptr inbounds %struct.bNode, ptr %1625, i64 0, i32 16
  %1641 = getelementptr inbounds %struct.bNode, ptr %1625, i64 0, i32 16, i64 2
  store float 0x3FE374BC60000000, ptr %1641, align 4, !tbaa !72
  %1642 = getelementptr inbounds %struct.bNode, ptr %1625, i64 0, i32 16, i64 1
  store float 0x3FE374BC60000000, ptr %1642, align 4, !tbaa !72
  store float 0x3FE374BC60000000, ptr %1640, align 4, !tbaa !72
  %1643 = load ptr, ptr %1625, align 8, !tbaa !42
  %1644 = icmp eq ptr %1643, null
  br i1 %1644, label %1645, label %1624, !llvm.loop !336

1645:                                             ; preds = %1639, %1620, %1615
  %1646 = load ptr, ptr %1616, align 8, !tbaa !42
  %1647 = icmp eq ptr %1646, null
  br i1 %1647, label %1648, label %1615, !llvm.loop !340

1648:                                             ; preds = %1645, %1611
  %1649 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 25
  %1650 = load ptr, ptr %1649, align 8, !tbaa !42
  %1651 = icmp eq ptr %1650, null
  br i1 %1651, label %1685, label %1652

1652:                                             ; preds = %1648, %1682
  %1653 = phi ptr [ %1683, %1682 ], [ %1650, %1648 ]
  %1654 = getelementptr inbounds %struct.World, ptr %1653, i64 0, i32 75
  %1655 = load ptr, ptr %1654, align 8, !tbaa !183
  %1656 = icmp eq ptr %1655, null
  br i1 %1656, label %1682, label %1657

1657:                                             ; preds = %1652
  %1658 = getelementptr inbounds %struct.bNodeTree, ptr %1655, i64 0, i32 7
  %1659 = load ptr, ptr %1658, align 8, !tbaa !42
  %1660 = icmp eq ptr %1659, null
  br i1 %1660, label %1682, label %1661

1661:                                             ; preds = %1657, %1676
  %1662 = phi ptr [ %1680, %1676 ], [ %1659, %1657 ]
  %1663 = getelementptr inbounds %struct.bNode, ptr %1662, i64 0, i32 8
  %1664 = load i16, ptr %1663, align 4, !tbaa !66
  %1665 = icmp eq i16 %1664, 5
  br i1 %1665, label %1666, label %1676

1666:                                             ; preds = %1661
  %1667 = getelementptr inbounds %struct.bNode, ptr %1662, i64 0, i32 21
  %1668 = load ptr, ptr %1667, align 8, !tbaa !96
  %1669 = icmp eq ptr %1668, null
  br i1 %1669, label %1670, label %1676

1670:                                             ; preds = %1666
  %1671 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %1672 = call ptr %1671(i64 noundef 4, ptr noundef nonnull @.str.23) #8
  store ptr %1672, ptr %1667, align 8, !tbaa !96
  %1673 = getelementptr inbounds %struct.bNode, ptr %1662, i64 0, i32 33
  %1674 = load i16, ptr %1673, align 8, !tbaa !332
  store i16 %1674, ptr %1672, align 2, !tbaa !333
  %1675 = getelementptr inbounds %struct.NodeFrame, ptr %1672, i64 0, i32 1
  store i16 20, ptr %1675, align 2, !tbaa !335
  br label %1676

1676:                                             ; preds = %1670, %1666, %1661
  %1677 = getelementptr inbounds %struct.bNode, ptr %1662, i64 0, i32 16
  %1678 = getelementptr inbounds %struct.bNode, ptr %1662, i64 0, i32 16, i64 2
  store float 0x3FE374BC60000000, ptr %1678, align 4, !tbaa !72
  %1679 = getelementptr inbounds %struct.bNode, ptr %1662, i64 0, i32 16, i64 1
  store float 0x3FE374BC60000000, ptr %1679, align 4, !tbaa !72
  store float 0x3FE374BC60000000, ptr %1677, align 4, !tbaa !72
  %1680 = load ptr, ptr %1662, align 8, !tbaa !42
  %1681 = icmp eq ptr %1680, null
  br i1 %1681, label %1682, label %1661, !llvm.loop !336

1682:                                             ; preds = %1676, %1657, %1652
  %1683 = load ptr, ptr %1653, align 8, !tbaa !42
  %1684 = icmp eq ptr %1683, null
  br i1 %1684, label %1685, label %1652, !llvm.loop !341

1685:                                             ; preds = %1682, %1648
  %1686 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 35
  %1687 = load ptr, ptr %1686, align 8, !tbaa !42
  %1688 = icmp eq ptr %1687, null
  br i1 %1688, label %1718, label %1692

1689:                                             ; preds = %1712, %1692
  %1690 = load ptr, ptr %1693, align 8, !tbaa !42
  %1691 = icmp eq ptr %1690, null
  br i1 %1691, label %1718, label %1692, !llvm.loop !342

1692:                                             ; preds = %1685, %1689
  %1693 = phi ptr [ %1690, %1689 ], [ %1687, %1685 ]
  %1694 = getelementptr inbounds %struct.bNodeTree, ptr %1693, i64 0, i32 7
  %1695 = load ptr, ptr %1694, align 8, !tbaa !42
  %1696 = icmp eq ptr %1695, null
  br i1 %1696, label %1689, label %1697

1697:                                             ; preds = %1692, %1712
  %1698 = phi ptr [ %1716, %1712 ], [ %1695, %1692 ]
  %1699 = getelementptr inbounds %struct.bNode, ptr %1698, i64 0, i32 8
  %1700 = load i16, ptr %1699, align 4, !tbaa !66
  %1701 = icmp eq i16 %1700, 5
  br i1 %1701, label %1702, label %1712

1702:                                             ; preds = %1697
  %1703 = getelementptr inbounds %struct.bNode, ptr %1698, i64 0, i32 21
  %1704 = load ptr, ptr %1703, align 8, !tbaa !96
  %1705 = icmp eq ptr %1704, null
  br i1 %1705, label %1706, label %1712

1706:                                             ; preds = %1702
  %1707 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %1708 = call ptr %1707(i64 noundef 4, ptr noundef nonnull @.str.23) #8
  store ptr %1708, ptr %1703, align 8, !tbaa !96
  %1709 = getelementptr inbounds %struct.bNode, ptr %1698, i64 0, i32 33
  %1710 = load i16, ptr %1709, align 8, !tbaa !332
  store i16 %1710, ptr %1708, align 2, !tbaa !333
  %1711 = getelementptr inbounds %struct.NodeFrame, ptr %1708, i64 0, i32 1
  store i16 20, ptr %1711, align 2, !tbaa !335
  br label %1712

1712:                                             ; preds = %1706, %1702, %1697
  %1713 = getelementptr inbounds %struct.bNode, ptr %1698, i64 0, i32 16
  %1714 = getelementptr inbounds %struct.bNode, ptr %1698, i64 0, i32 16, i64 2
  store float 0x3FE374BC60000000, ptr %1714, align 4, !tbaa !72
  %1715 = getelementptr inbounds %struct.bNode, ptr %1698, i64 0, i32 16, i64 1
  store float 0x3FE374BC60000000, ptr %1715, align 4, !tbaa !72
  store float 0x3FE374BC60000000, ptr %1713, align 4, !tbaa !72
  %1716 = load ptr, ptr %1698, align 8, !tbaa !42
  %1717 = icmp eq ptr %1716, null
  br i1 %1717, label %1689, label %1697, !llvm.loop !336

1718:                                             ; preds = %1689, %1685, %1496, %1494
  %1719 = load i16, ptr %55, align 8, !tbaa !34
  %1720 = icmp slt i16 %1719, 263
  br i1 %1720, label %1727, label %1721

1721:                                             ; preds = %1718
  %1722 = icmp eq i16 %1719, 263
  br i1 %1722, label %1723, label %1771

1723:                                             ; preds = %1721
  %1724 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1725 = load i16, ptr %1724, align 2, !tbaa !83
  %1726 = icmp slt i16 %1725, 7
  br i1 %1726, label %1727, label %1771

1727:                                             ; preds = %1723, %1718
  %1728 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %1729 = load ptr, ptr %1728, align 8, !tbaa !42
  %1730 = icmp eq ptr %1729, null
  br i1 %1730, label %1771, label %1734

1731:                                             ; preds = %1768, %1734
  %1732 = load ptr, ptr %1735, align 8, !tbaa !42
  %1733 = icmp eq ptr %1732, null
  br i1 %1733, label %1771, label %1734, !llvm.loop !343

1734:                                             ; preds = %1727, %1731
  %1735 = phi ptr [ %1732, %1731 ], [ %1729, %1727 ]
  %1736 = getelementptr inbounds %struct.Object, ptr %1735, i64 0, i32 26
  %1737 = load ptr, ptr %1736, align 8, !tbaa !42
  %1738 = icmp eq ptr %1737, null
  br i1 %1738, label %1731, label %1739

1739:                                             ; preds = %1734, %1768
  %1740 = phi ptr [ %1769, %1768 ], [ %1737, %1734 ]
  %1741 = getelementptr inbounds %struct.ModifierData, ptr %1740, i64 0, i32 2
  %1742 = load i32, ptr %1741, align 8, !tbaa !239
  %1743 = icmp eq i32 %1742, 31
  br i1 %1743, label %1744, label %1768

1744:                                             ; preds = %1739
  %1745 = getelementptr inbounds %struct.SmokeModifierData, ptr %1740, i64 0, i32 5
  %1746 = load i32, ptr %1745, align 4, !tbaa !344
  %1747 = and i32 %1746, 1
  %1748 = icmp eq i32 %1747, 0
  br i1 %1748, label %1768, label %1749

1749:                                             ; preds = %1744
  %1750 = getelementptr inbounds %struct.SmokeModifierData, ptr %1740, i64 0, i32 1
  %1751 = load ptr, ptr %1750, align 8, !tbaa !346
  %1752 = icmp eq ptr %1751, null
  br i1 %1752, label %1768, label %1753

1753:                                             ; preds = %1749
  %1754 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %1751, i64 0, i32 26
  %1755 = load i32, ptr %1754, align 8, !tbaa !347
  %1756 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %1751, i64 0, i32 26, i64 1
  %1757 = load i32, ptr %1756, align 4, !tbaa !347
  %1758 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %1751, i64 0, i32 26, i64 2
  %1759 = load i32, ptr %1758, align 8, !tbaa !347
  %1760 = call i32 @llvm.smax.i32(i32 %1757, i32 %1755)
  %1761 = call i32 @llvm.smax.i32(i32 %1759, i32 %1760)
  %1762 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %1751, i64 0, i32 28
  %1763 = load float, ptr %1762, align 8, !tbaa !348
  %1764 = sitofp i32 %1761 to float
  %1765 = fmul float %1763, %1764
  %1766 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %1751, i64 0, i32 29
  store float %1765, ptr %1766, align 4, !tbaa !350
  %1767 = fdiv float 1.000000e+00, %1765
  store float %1767, ptr %1762, align 8, !tbaa !348
  br label %1768

1768:                                             ; preds = %1744, %1749, %1753, %1739
  %1769 = load ptr, ptr %1740, align 8, !tbaa !42
  %1770 = icmp eq ptr %1769, null
  br i1 %1770, label %1731, label %1739, !llvm.loop !351

1771:                                             ; preds = %1731, %1727, %1723, %1721
  br i1 %1720, label %1778, label %1772

1772:                                             ; preds = %1771
  %1773 = icmp eq i16 %1719, 263
  br i1 %1773, label %1774, label %1789

1774:                                             ; preds = %1772
  %1775 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1776 = load i16, ptr %1775, align 2, !tbaa !83
  %1777 = icmp slt i16 %1776, 8
  br i1 %1777, label %1778, label %1789

1778:                                             ; preds = %1774, %1771
  %1779 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1780 = load ptr, ptr %1779, align 8, !tbaa !42
  %1781 = icmp eq ptr %1780, null
  br i1 %1781, label %1789, label %1782

1782:                                             ; preds = %1778, %1782
  %1783 = phi ptr [ %1787, %1782 ], [ %1780, %1778 ]
  %1784 = getelementptr inbounds %struct.Scene, ptr %1783, i64 0, i32 37, i32 33
  store float 0x3FE99999A0000000, ptr %1784, align 4, !tbaa !352
  %1785 = getelementptr inbounds %struct.Scene, ptr %1783, i64 0, i32 37, i32 34
  store float 1.000000e+00, ptr %1785, align 8, !tbaa !353
  %1786 = getelementptr inbounds %struct.Scene, ptr %1783, i64 0, i32 37, i32 32
  store float 2.000000e+00, ptr %1786, align 8, !tbaa !354
  %1787 = load ptr, ptr %1783, align 8, !tbaa !42
  %1788 = icmp eq ptr %1787, null
  br i1 %1788, label %1789, label %1782, !llvm.loop !355

1789:                                             ; preds = %1782, %1778, %1774, %1772
  br i1 %1720, label %1796, label %1790

1790:                                             ; preds = %1789
  %1791 = icmp eq i16 %1719, 263
  br i1 %1791, label %1792, label %1828

1792:                                             ; preds = %1790
  %1793 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1794 = load i16, ptr %1793, align 2, !tbaa !83
  %1795 = icmp slt i16 %1794, 9
  br i1 %1795, label %1796, label %1828

1796:                                             ; preds = %1792, %1789
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %7, ptr noundef %2) #8
  %1797 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #8
  %1798 = icmp eq i8 %1797, 1
  br i1 %1798, label %1799, label %1827

1799:                                             ; preds = %1796, %1824
  %1800 = load ptr, ptr %8, align 8, !tbaa !42
  %1801 = icmp eq ptr %1800, null
  br i1 %1801, label %1824, label %1802

1802:                                             ; preds = %1799
  %1803 = getelementptr inbounds %struct.bNodeTree, ptr %1800, i64 0, i32 9
  %1804 = load i32, ptr %1803, align 8, !tbaa !93
  %1805 = icmp eq i32 %1804, 0
  br i1 %1805, label %1806, label %1824

1806:                                             ; preds = %1802
  %1807 = getelementptr inbounds %struct.bNodeTree, ptr %1800, i64 0, i32 7
  %1808 = load ptr, ptr %1807, align 8, !tbaa !42
  %1809 = icmp eq ptr %1808, null
  br i1 %1809, label %1824, label %1810

1810:                                             ; preds = %1806, %1821
  %1811 = phi ptr [ %1822, %1821 ], [ %1808, %1806 ]
  %1812 = getelementptr inbounds %struct.bNode, ptr %1811, i64 0, i32 8
  %1813 = load i16, ptr %1812, align 4, !tbaa !66
  switch i16 %1813, label %1821 [
    i16 143, label %1814
    i16 157, label %1814
  ]

1814:                                             ; preds = %1810, %1810
  %1815 = getelementptr inbounds %struct.bNode, ptr %1811, i64 0, i32 21
  %1816 = load ptr, ptr %1815, align 8, !tbaa !96
  %1817 = getelementptr inbounds %struct.NodeTexImage, ptr %1816, i64 0, i32 1, i32 2
  store i32 1, ptr %1817, align 4, !tbaa !356
  %1818 = getelementptr inbounds %struct.NodeTexImage, ptr %1816, i64 0, i32 1, i32 4
  store i32 1, ptr %1818, align 4, !tbaa !361
  %1819 = getelementptr inbounds %struct.NodeTexImage, ptr %1816, i64 0, i32 1, i32 5
  store i8 2, ptr %1819, align 8, !tbaa !362
  %1820 = getelementptr inbounds %struct.NodeTexImage, ptr %1816, i64 0, i32 1, i32 7
  store i8 1, ptr %1820, align 2, !tbaa !363
  br label %1821

1821:                                             ; preds = %1810, %1814
  %1822 = load ptr, ptr %1811, align 8, !tbaa !42
  %1823 = icmp eq ptr %1822, null
  br i1 %1823, label %1824, label %1810, !llvm.loop !364

1824:                                             ; preds = %1821, %1806, %1802, %1799
  %1825 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #8
  %1826 = icmp eq i8 %1825, 1
  br i1 %1826, label %1799, label %1827, !llvm.loop !365

1827:                                             ; preds = %1824, %1796
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #8
  br label %1828

1828:                                             ; preds = %1827, %1792, %1790
  %1829 = load i16, ptr %55, align 8, !tbaa !34
  %1830 = icmp slt i16 %1829, 263
  br i1 %1830, label %1837, label %1831

1831:                                             ; preds = %1828
  %1832 = icmp eq i16 %1829, 263
  br i1 %1832, label %1833, label %1928

1833:                                             ; preds = %1831
  %1834 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1835 = load i16, ptr %1834, align 2, !tbaa !83
  %1836 = icmp slt i16 %1835, 10
  br i1 %1836, label %1837, label %1928

1837:                                             ; preds = %1833, %1828
  %1838 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %1839 = load ptr, ptr %1838, align 8, !tbaa !42
  %1840 = icmp eq ptr %1839, null
  br i1 %1840, label %1854, label %1841

1841:                                             ; preds = %1837, %1851
  %1842 = phi ptr [ %1852, %1851 ], [ %1839, %1837 ]
  %1843 = getelementptr inbounds %struct.Scene, ptr %1842, i64 0, i32 18
  %1844 = load ptr, ptr %1843, align 8, !tbaa !65
  %1845 = icmp eq ptr %1844, null
  br i1 %1845, label %1851, label %1846

1846:                                             ; preds = %1841
  %1847 = getelementptr inbounds %struct.bNodeTree, ptr %1844, i64 0, i32 20
  %1848 = load i32, ptr %1847, align 4, !tbaa !366
  %1849 = icmp eq i32 %1848, 0
  br i1 %1849, label %1850, label %1851

1850:                                             ; preds = %1846
  store i32 256, ptr %1847, align 4, !tbaa !366
  br label %1851

1851:                                             ; preds = %1841, %1850, %1846
  %1852 = load ptr, ptr %1842, align 8, !tbaa !42
  %1853 = icmp eq ptr %1852, null
  br i1 %1853, label %1854, label %1841, !llvm.loop !367

1854:                                             ; preds = %1851, %1837
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %10, ptr noundef %2) #8
  %1855 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #8
  %1856 = icmp eq i8 %1855, 1
  br i1 %1856, label %1857, label %1886

1857:                                             ; preds = %1854, %1883
  %1858 = load ptr, ptr %11, align 8, !tbaa !42
  %1859 = icmp eq ptr %1858, null
  br i1 %1859, label %1883, label %1860

1860:                                             ; preds = %1857
  %1861 = getelementptr inbounds %struct.bNodeTree, ptr %1858, i64 0, i32 9
  %1862 = load i32, ptr %1861, align 8, !tbaa !93
  %1863 = icmp eq i32 %1862, 1
  br i1 %1863, label %1864, label %1883

1864:                                             ; preds = %1860
  %1865 = getelementptr inbounds %struct.bNodeTree, ptr %1858, i64 0, i32 7
  %1866 = load ptr, ptr %1865, align 8, !tbaa !42
  %1867 = icmp eq ptr %1866, null
  br i1 %1867, label %1883, label %1868

1868:                                             ; preds = %1864, %1880
  %1869 = phi ptr [ %1881, %1880 ], [ %1866, %1864 ]
  %1870 = getelementptr inbounds %struct.bNode, ptr %1869, i64 0, i32 8
  %1871 = load i16, ptr %1870, align 4, !tbaa !66
  %1872 = icmp eq i16 %1871, 244
  br i1 %1872, label %1873, label %1880

1873:                                             ; preds = %1868
  %1874 = getelementptr inbounds %struct.bNode, ptr %1869, i64 0, i32 21
  %1875 = load ptr, ptr %1874, align 8, !tbaa !96
  %1876 = getelementptr inbounds %struct.NodeDefocus, ptr %1875, i64 0, i32 7
  %1877 = load float, ptr %1876, align 4, !tbaa !368
  %1878 = fcmp oeq float %1877, 0.000000e+00
  br i1 %1878, label %1879, label %1880

1879:                                             ; preds = %1873
  store float 1.600000e+01, ptr %1876, align 4, !tbaa !368
  br label %1880

1880:                                             ; preds = %1873, %1879, %1868
  %1881 = load ptr, ptr %1869, align 8, !tbaa !42
  %1882 = icmp eq ptr %1881, null
  br i1 %1882, label %1883, label %1868, !llvm.loop !370

1883:                                             ; preds = %1880, %1864, %1860, %1857
  %1884 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #8
  %1885 = icmp eq i8 %1884, 1
  br i1 %1885, label %1857, label %1886, !llvm.loop !371

1886:                                             ; preds = %1883, %1854
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #8
  %1887 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %1888 = load ptr, ptr %1887, align 8, !tbaa !42
  %1889 = icmp eq ptr %1888, null
  br i1 %1889, label %1919, label %1893

1890:                                             ; preds = %1898, %1893
  %1891 = load ptr, ptr %1894, align 8, !tbaa !42
  %1892 = icmp eq ptr %1891, null
  br i1 %1892, label %1919, label %1893, !llvm.loop !372

1893:                                             ; preds = %1886, %1890
  %1894 = phi ptr [ %1891, %1890 ], [ %1888, %1886 ]
  %1895 = getelementptr inbounds %struct.bScreen, ptr %1894, i64 0, i32 3
  %1896 = load ptr, ptr %1895, align 8, !tbaa !42
  %1897 = icmp eq ptr %1896, null
  br i1 %1897, label %1890, label %1901

1898:                                             ; preds = %1916, %1901
  %1899 = load ptr, ptr %1902, align 8, !tbaa !42
  %1900 = icmp eq ptr %1899, null
  br i1 %1900, label %1890, label %1901, !llvm.loop !373

1901:                                             ; preds = %1893, %1898
  %1902 = phi ptr [ %1899, %1898 ], [ %1896, %1893 ]
  %1903 = getelementptr inbounds %struct.ScrArea, ptr %1902, i64 0, i32 19
  %1904 = load ptr, ptr %1903, align 8, !tbaa !42
  %1905 = icmp eq ptr %1904, null
  br i1 %1905, label %1898, label %1906

1906:                                             ; preds = %1901, %1916
  %1907 = phi ptr [ %1917, %1916 ], [ %1904, %1901 ]
  %1908 = getelementptr inbounds %struct.SpaceLink, ptr %1907, i64 0, i32 3
  %1909 = load i32, ptr %1908, align 8, !tbaa !112
  %1910 = icmp eq i32 %1909, 20
  br i1 %1910, label %1911, label %1916

1911:                                             ; preds = %1906
  %1912 = getelementptr inbounds %struct.SpaceClip, ptr %1907, i64 0, i32 25
  %1913 = load i32, ptr %1912, align 8, !tbaa !374
  %1914 = icmp eq i32 %1913, 0
  br i1 %1914, label %1915, label %1916

1915:                                             ; preds = %1911
  store i32 3, ptr %1912, align 8, !tbaa !374
  br label %1916

1916:                                             ; preds = %1911, %1915, %1906
  %1917 = load ptr, ptr %1907, align 8, !tbaa !42
  %1918 = icmp eq ptr %1917, null
  br i1 %1918, label %1898, label %1906, !llvm.loop !375

1919:                                             ; preds = %1890, %1886
  %1920 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 42
  %1921 = load ptr, ptr %1920, align 8, !tbaa !42
  %1922 = icmp eq ptr %1921, null
  br i1 %1922, label %1928, label %1923

1923:                                             ; preds = %1919, %1923
  %1924 = phi ptr [ %1926, %1923 ], [ %1921, %1919 ]
  %1925 = getelementptr inbounds %struct.MovieClip, ptr %1924, i64 0, i32 16
  store i32 1, ptr %1925, align 8, !tbaa !376
  %1926 = load ptr, ptr %1924, align 8, !tbaa !42
  %1927 = icmp eq ptr %1926, null
  br i1 %1927, label %1928, label %1923, !llvm.loop !377

1928:                                             ; preds = %1923, %1919, %1833, %1831
  %1929 = load i16, ptr %55, align 8, !tbaa !34
  %1930 = icmp slt i16 %1929, 263
  br i1 %1930, label %1937, label %1931

1931:                                             ; preds = %1928
  %1932 = icmp eq i16 %1929, 263
  br i1 %1932, label %1933, label %1953

1933:                                             ; preds = %1931
  %1934 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1935 = load i16, ptr %1934, align 2, !tbaa !83
  %1936 = icmp slt i16 %1935, 11
  br i1 %1936, label %1937, label %1953

1937:                                             ; preds = %1933, %1928
  %1938 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 42
  %1939 = load ptr, ptr %1938, align 8, !tbaa !42
  %1940 = icmp eq ptr %1939, null
  br i1 %1940, label %1953, label %1944

1941:                                             ; preds = %1949, %1944
  %1942 = load ptr, ptr %1945, align 8, !tbaa !42
  %1943 = icmp eq ptr %1942, null
  br i1 %1943, label %1953, label %1944, !llvm.loop !378

1944:                                             ; preds = %1937, %1941
  %1945 = phi ptr [ %1942, %1941 ], [ %1939, %1937 ]
  %1946 = getelementptr inbounds %struct.MovieClip, ptr %1945, i64 0, i32 11, i32 2
  %1947 = load ptr, ptr %1946, align 8, !tbaa !42
  %1948 = icmp eq ptr %1947, null
  br i1 %1948, label %1941, label %1949

1949:                                             ; preds = %1944, %1949
  %1950 = phi ptr [ %1951, %1949 ], [ %1947, %1944 ]
  call fastcc void @do_versions_affine_tracker_track(ptr noundef nonnull %1950)
  %1951 = load ptr, ptr %1950, align 8, !tbaa !42
  %1952 = icmp eq ptr %1951, null
  br i1 %1952, label %1941, label %1949, !llvm.loop !379

1953:                                             ; preds = %1941, %1937, %1933, %1931
  %1954 = load i16, ptr %55, align 8, !tbaa !34
  %1955 = icmp slt i16 %1954, 263
  br i1 %1955, label %1962, label %1956

1956:                                             ; preds = %1953
  %1957 = icmp eq i16 %1954, 263
  br i1 %1957, label %1958, label %1975

1958:                                             ; preds = %1956
  %1959 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1960 = load i16, ptr %1959, align 2, !tbaa !83
  %1961 = icmp slt i16 %1960, 12
  br i1 %1961, label %1962, label %1975

1962:                                             ; preds = %1958, %1953
  %1963 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %1964 = load ptr, ptr %1963, align 8, !tbaa !42
  %1965 = icmp eq ptr %1964, null
  br i1 %1965, label %1975, label %1966

1966:                                             ; preds = %1962, %1972
  %1967 = phi ptr [ %1973, %1972 ], [ %1964, %1962 ]
  %1968 = getelementptr inbounds %struct.Material, ptr %1967, i64 0, i32 68
  %1969 = load float, ptr %1968, align 8, !tbaa !380
  %1970 = fcmp oeq float %1969, 2.000000e+00
  br i1 %1970, label %1971, label %1972

1971:                                             ; preds = %1966
  store float 0.000000e+00, ptr %1968, align 8, !tbaa !380
  br label %1972

1972:                                             ; preds = %1966, %1971
  %1973 = load ptr, ptr %1967, align 8, !tbaa !42
  %1974 = icmp eq ptr %1973, null
  br i1 %1974, label %1975, label %1966, !llvm.loop !381

1975:                                             ; preds = %1972, %1962, %1958, %1956
  br i1 %1955, label %1982, label %1976

1976:                                             ; preds = %1975
  %1977 = icmp eq i16 %1954, 263
  br i1 %1977, label %1978, label %2015

1978:                                             ; preds = %1976
  %1979 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %1980 = load i16, ptr %1979, align 2, !tbaa !83
  %1981 = icmp slt i16 %1980, 13
  br i1 %1981, label %1982, label %2015

1982:                                             ; preds = %1978, %1975
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #8
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %13, ptr noundef %2) #8
  %1983 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15) #8
  %1984 = icmp eq i8 %1983, 1
  br i1 %1984, label %1985, label %2014

1985:                                             ; preds = %1982, %2011
  %1986 = load ptr, ptr %14, align 8, !tbaa !42
  %1987 = icmp eq ptr %1986, null
  br i1 %1987, label %2011, label %1988

1988:                                             ; preds = %1985
  %1989 = getelementptr inbounds %struct.bNodeTree, ptr %1986, i64 0, i32 9
  %1990 = load i32, ptr %1989, align 8, !tbaa !93
  %1991 = icmp eq i32 %1990, 1
  br i1 %1991, label %1992, label %2011

1992:                                             ; preds = %1988
  %1993 = getelementptr inbounds %struct.bNodeTree, ptr %1986, i64 0, i32 7
  %1994 = load ptr, ptr %1993, align 8, !tbaa !42
  %1995 = icmp eq ptr %1994, null
  br i1 %1995, label %2011, label %1996

1996:                                             ; preds = %1992, %2008
  %1997 = phi ptr [ %2009, %2008 ], [ %1994, %1992 ]
  %1998 = getelementptr inbounds %struct.bNode, ptr %1997, i64 0, i32 8
  %1999 = load i16, ptr %1998, align 4, !tbaa !66
  %2000 = icmp eq i16 %1999, 228
  br i1 %2000, label %2001, label %2008

2001:                                             ; preds = %1996
  %2002 = getelementptr inbounds %struct.bNode, ptr %1997, i64 0, i32 21
  %2003 = load ptr, ptr %2002, align 8, !tbaa !96
  %2004 = icmp eq ptr %2003, null
  br i1 %2004, label %2005, label %2008

2005:                                             ; preds = %2001
  %2006 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %2007 = call ptr %2006(i64 noundef 8, ptr noundef nonnull @__func__.blo_do_versions_260) #8
  store i8 0, ptr %2007, align 1, !tbaa !382
  store ptr %2007, ptr %2002, align 8, !tbaa !96
  br label %2008

2008:                                             ; preds = %1996, %2005, %2001
  %2009 = load ptr, ptr %1997, align 8, !tbaa !42
  %2010 = icmp eq ptr %2009, null
  br i1 %2010, label %2011, label %1996, !llvm.loop !384

2011:                                             ; preds = %2008, %1992, %1988, %1985
  %2012 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15) #8
  %2013 = icmp eq i8 %2012, 1
  br i1 %2013, label %1985, label %2014, !llvm.loop !385

2014:                                             ; preds = %2011, %1982
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %13) #8
  br label %2015

2015:                                             ; preds = %2014, %1978, %1976
  %2016 = load i16, ptr %55, align 8, !tbaa !34
  %2017 = icmp slt i16 %2016, 263
  br i1 %2017, label %2024, label %2018

2018:                                             ; preds = %2015
  %2019 = icmp eq i16 %2016, 263
  br i1 %2019, label %2020, label %2076

2020:                                             ; preds = %2018
  %2021 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2022 = load i16, ptr %2021, align 2, !tbaa !83
  %2023 = icmp slt i16 %2022, 14
  br i1 %2023, label %2024, label %2076

2024:                                             ; preds = %2020, %2015
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %16) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #8
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %16, ptr noundef %2) #8
  %2025 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %18) #8
  %2026 = icmp eq i8 %2025, 1
  br i1 %2026, label %2027, label %2056

2027:                                             ; preds = %2024, %2053
  %2028 = load ptr, ptr %17, align 8, !tbaa !42
  %2029 = icmp eq ptr %2028, null
  br i1 %2029, label %2053, label %2030

2030:                                             ; preds = %2027
  %2031 = getelementptr inbounds %struct.bNodeTree, ptr %2028, i64 0, i32 9
  %2032 = load i32, ptr %2031, align 8, !tbaa !93
  %2033 = icmp eq i32 %2032, 1
  br i1 %2033, label %2034, label %2053

2034:                                             ; preds = %2030
  %2035 = getelementptr inbounds %struct.bNodeTree, ptr %2028, i64 0, i32 7
  %2036 = load ptr, ptr %2035, align 8, !tbaa !42
  %2037 = icmp eq ptr %2036, null
  br i1 %2037, label %2053, label %2038

2038:                                             ; preds = %2034, %2050
  %2039 = phi ptr [ %2051, %2050 ], [ %2036, %2034 ]
  %2040 = getelementptr inbounds %struct.bNode, ptr %2039, i64 0, i32 8
  %2041 = load i16, ptr %2040, align 4, !tbaa !66
  %2042 = icmp eq i16 %2041, 270
  br i1 %2042, label %2043, label %2050

2043:                                             ; preds = %2038
  %2044 = getelementptr inbounds %struct.bNode, ptr %2039, i64 0, i32 21
  %2045 = load ptr, ptr %2044, align 8, !tbaa !96
  %2046 = getelementptr inbounds %struct.NodeKeyingData, ptr %2045, i64 0, i32 2
  %2047 = load float, ptr %2046, align 4, !tbaa !386
  %2048 = fcmp oeq float %2047, 0.000000e+00
  br i1 %2048, label %2049, label %2050

2049:                                             ; preds = %2043
  store float 5.000000e-01, ptr %2046, align 4, !tbaa !386
  br label %2050

2050:                                             ; preds = %2043, %2049, %2038
  %2051 = load ptr, ptr %2039, align 8, !tbaa !42
  %2052 = icmp eq ptr %2051, null
  br i1 %2052, label %2053, label %2038, !llvm.loop !388

2053:                                             ; preds = %2050, %2034, %2030, %2027
  %2054 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %18) #8
  %2055 = icmp eq i8 %2054, 1
  br i1 %2055, label %2027, label %2056, !llvm.loop !389

2056:                                             ; preds = %2053, %2024
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %16) #8
  %2057 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 37
  %2058 = load ptr, ptr %2057, align 8, !tbaa !42
  %2059 = icmp eq ptr %2058, null
  br i1 %2059, label %2076, label %2060

2060:                                             ; preds = %2056, %2073
  %2061 = phi ptr [ %2074, %2073 ], [ %2058, %2056 ]
  %2062 = getelementptr inbounds %struct.ParticleSettings, ptr %2061, i64 0, i32 21
  %2063 = load i16, ptr %2062, align 8, !tbaa !78
  %2064 = add i16 %2063, -7
  %2065 = icmp ult i16 %2064, 2
  br i1 %2065, label %2066, label %2073

2066:                                             ; preds = %2060
  %2067 = getelementptr inbounds %struct.ParticleSettings, ptr %2061, i64 0, i32 15
  %2068 = load i32, ptr %2067, align 8, !tbaa !80
  %2069 = and i32 %2068, 128
  %2070 = icmp eq i32 %2069, 0
  br i1 %2070, label %2071, label %2073

2071:                                             ; preds = %2066
  %2072 = or i32 %2068, 65536
  store i32 %2072, ptr %2067, align 8, !tbaa !80
  br label %2073

2073:                                             ; preds = %2060, %2071, %2066
  %2074 = load ptr, ptr %2061, align 8, !tbaa !42
  %2075 = icmp eq ptr %2074, null
  br i1 %2075, label %2076, label %2060, !llvm.loop !390

2076:                                             ; preds = %2073, %2056, %2020, %2018
  %2077 = load i16, ptr %55, align 8, !tbaa !34
  %2078 = icmp slt i16 %2077, 263
  br i1 %2078, label %2085, label %2079

2079:                                             ; preds = %2076
  %2080 = icmp eq i16 %2077, 263
  br i1 %2080, label %2081, label %2125

2081:                                             ; preds = %2079
  %2082 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2083 = load i16, ptr %2082, align 2, !tbaa !83
  %2084 = icmp slt i16 %2083, 17
  br i1 %2084, label %2085, label %2125

2085:                                             ; preds = %2081, %2076
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %19) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #8
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %19, ptr noundef %2) #8
  %2086 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %21) #8
  %2087 = icmp eq i8 %2086, 1
  br i1 %2087, label %2088, label %2124

2088:                                             ; preds = %2085, %2121
  %2089 = load ptr, ptr %20, align 8, !tbaa !42
  %2090 = icmp eq ptr %2089, null
  br i1 %2090, label %2121, label %2091

2091:                                             ; preds = %2088
  %2092 = getelementptr inbounds %struct.bNodeTree, ptr %2089, i64 0, i32 9
  %2093 = load i32, ptr %2092, align 8, !tbaa !93
  %2094 = icmp eq i32 %2093, 1
  br i1 %2094, label %2095, label %2121

2095:                                             ; preds = %2091
  %2096 = getelementptr inbounds %struct.bNodeTree, ptr %2089, i64 0, i32 7
  %2097 = load ptr, ptr %2096, align 8, !tbaa !42
  %2098 = icmp eq ptr %2097, null
  br i1 %2098, label %2121, label %2099

2099:                                             ; preds = %2095, %2118
  %2100 = phi ptr [ %2119, %2118 ], [ %2097, %2095 ]
  %2101 = getelementptr inbounds %struct.bNode, ptr %2100, i64 0, i32 8
  %2102 = load i16, ptr %2101, align 4, !tbaa !66
  %2103 = icmp eq i16 %2102, 268
  br i1 %2103, label %2104, label %2118

2104:                                             ; preds = %2099
  %2105 = getelementptr inbounds %struct.bNode, ptr %2100, i64 0, i32 21
  %2106 = load ptr, ptr %2105, align 8, !tbaa !96
  %2107 = icmp eq ptr %2106, null
  br i1 %2107, label %2108, label %2118

2108:                                             ; preds = %2104
  %2109 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %2110 = call ptr %2109(i64 noundef 8, ptr noundef nonnull @__func__.blo_do_versions_260) #8
  %2111 = getelementptr inbounds %struct.bNode, ptr %2100, i64 0, i32 35
  %2112 = load float, ptr %2111, align 4, !tbaa !391
  %2113 = fptosi float %2112 to i32
  store i32 %2113, ptr %2110, align 4, !tbaa !392
  %2114 = getelementptr inbounds %struct.bNode, ptr %2100, i64 0, i32 36
  %2115 = load float, ptr %2114, align 8, !tbaa !394
  %2116 = fptosi float %2115 to i32
  %2117 = getelementptr inbounds %struct.NodeMask, ptr %2110, i64 0, i32 1
  store i32 %2116, ptr %2117, align 4, !tbaa !395
  store float 5.000000e-01, ptr %2111, align 4, !tbaa !391
  store ptr %2110, ptr %2105, align 8, !tbaa !96
  br label %2118

2118:                                             ; preds = %2099, %2108, %2104
  %2119 = load ptr, ptr %2100, align 8, !tbaa !42
  %2120 = icmp eq ptr %2119, null
  br i1 %2120, label %2121, label %2099, !llvm.loop !396

2121:                                             ; preds = %2118, %2095, %2091, %2088
  %2122 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %21) #8
  %2123 = icmp eq i8 %2122, 1
  br i1 %2123, label %2088, label %2124, !llvm.loop !397

2124:                                             ; preds = %2121, %2085
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %19) #8
  br label %2125

2125:                                             ; preds = %2124, %2081, %2079
  %2126 = load i16, ptr %55, align 8, !tbaa !34
  %2127 = icmp slt i16 %2126, 263
  br i1 %2127, label %2134, label %2128

2128:                                             ; preds = %2125
  %2129 = icmp eq i16 %2126, 263
  br i1 %2129, label %2130, label %2174

2130:                                             ; preds = %2128
  %2131 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2132 = load i16, ptr %2131, align 2, !tbaa !83
  %2133 = icmp slt i16 %2132, 18
  br i1 %2133, label %2134, label %2174

2134:                                             ; preds = %2130, %2125
  %2135 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %2136 = load ptr, ptr %2135, align 8, !tbaa !42
  %2137 = icmp eq ptr %2136, null
  br i1 %2137, label %2174, label %2138

2138:                                             ; preds = %2134
  %2139 = getelementptr inbounds %struct.SeqIterator, ptr %22, i64 0, i32 4
  %2140 = getelementptr inbounds %struct.SeqIterator, ptr %22, i64 0, i32 3
  br label %2141

2141:                                             ; preds = %2138, %2171
  %2142 = phi ptr [ %2136, %2138 ], [ %2172, %2171 ]
  %2143 = getelementptr inbounds %struct.Scene, ptr %2142, i64 0, i32 19
  %2144 = load ptr, ptr %2143, align 8, !tbaa !398
  %2145 = icmp eq ptr %2144, null
  br i1 %2145, label %2171, label %2146

2146:                                             ; preds = %2141
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %22) #8
  call void @BKE_sequence_iterator_begin(ptr noundef nonnull %2144, ptr noundef nonnull %22, i8 noundef zeroext 0) #8
  %2147 = load i32, ptr %2139, align 8, !tbaa !399
  %2148 = icmp eq i32 %2147, 0
  br i1 %2148, label %2170, label %2149

2149:                                             ; preds = %2146, %2167
  %2150 = load ptr, ptr %2140, align 8, !tbaa !401
  %2151 = getelementptr inbounds %struct.Sequence, ptr %2150, i64 0, i32 24
  %2152 = load ptr, ptr %2151, align 8, !tbaa !402
  %2153 = icmp eq ptr %2152, null
  br i1 %2153, label %2167, label %2154

2154:                                             ; preds = %2149
  %2155 = getelementptr inbounds %struct.Strip, ptr %2152, i64 0, i32 11
  %2156 = load ptr, ptr %2155, align 8, !tbaa !404
  %2157 = icmp eq ptr %2156, null
  br i1 %2157, label %2167, label %2158

2158:                                             ; preds = %2154
  %2159 = call ptr @BKE_sequence_modifier_new(ptr noundef %2150, ptr noundef null, i32 noundef 1) #8
  %2160 = getelementptr inbounds %struct.ColorBalanceModifierData, ptr %2159, i64 0, i32 1
  %2161 = load ptr, ptr %2155, align 8, !tbaa !404
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %2160, ptr noundef nonnull align 4 dereferenceable(44) %2161, i64 44, i1 false), !tbaa.struct !406
  %2162 = getelementptr inbounds %struct.Sequence, ptr %2150, i64 0, i32 18
  %2163 = load float, ptr %2162, align 4, !tbaa !407
  %2164 = getelementptr inbounds %struct.ColorBalanceModifierData, ptr %2159, i64 0, i32 2
  store float %2163, ptr %2164, align 4, !tbaa !408
  store float 1.000000e+00, ptr %2162, align 4, !tbaa !407
  %2165 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  %2166 = load ptr, ptr %2155, align 8, !tbaa !404
  call void %2165(ptr noundef %2166) #8
  store ptr null, ptr %2155, align 8, !tbaa !404
  br label %2167

2167:                                             ; preds = %2158, %2154, %2149
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %22) #8
  %2168 = load i32, ptr %2139, align 8, !tbaa !399
  %2169 = icmp eq i32 %2168, 0
  br i1 %2169, label %2170, label %2149, !llvm.loop !412

2170:                                             ; preds = %2167, %2146
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %22) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %22) #8
  br label %2171

2171:                                             ; preds = %2141, %2170
  %2172 = load ptr, ptr %2142, align 8, !tbaa !42
  %2173 = icmp eq ptr %2172, null
  br i1 %2173, label %2174, label %2141, !llvm.loop !413

2174:                                             ; preds = %2171, %2134, %2130, %2128
  %2175 = load i16, ptr %55, align 8, !tbaa !34
  %2176 = icmp slt i16 %2175, 263
  br i1 %2176, label %2183, label %2177

2177:                                             ; preds = %2174
  %2178 = icmp eq i16 %2175, 263
  br i1 %2178, label %2179, label %2226

2179:                                             ; preds = %2177
  %2180 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2181 = load i16, ptr %2180, align 2, !tbaa !83
  %2182 = icmp slt i16 %2181, 19
  br i1 %2182, label %2183, label %2226

2183:                                             ; preds = %2179, %2174
  %2184 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %2185 = load ptr, ptr %2184, align 8, !tbaa !42
  %2186 = icmp eq ptr %2185, null
  br i1 %2186, label %2203, label %2187

2187:                                             ; preds = %2183, %2199
  %2188 = phi ptr [ %2201, %2199 ], [ %2185, %2183 ]
  %2189 = phi i8 [ %2200, %2199 ], [ 0, %2183 ]
  %2190 = getelementptr inbounds %struct.Scene, ptr %2188, i64 0, i32 22, i32 67
  %2191 = load i32, ptr %2190, align 4, !tbaa !414
  %2192 = and i32 %2191, 1
  %2193 = icmp eq i32 %2192, 0
  br i1 %2193, label %2194, label %2199

2194:                                             ; preds = %2187
  %2195 = getelementptr inbounds %struct.Scene, ptr %2188, i64 0, i32 45
  %2196 = load i8, ptr %2195, align 1, !tbaa !279
  %2197 = icmp eq i8 %2196, 0
  br i1 %2197, label %2198, label %2199

2198:                                             ; preds = %2194
  call void @BKE_scene_disable_color_management(ptr noundef nonnull %2188) #8
  br label %2199

2199:                                             ; preds = %2194, %2198, %2187
  %2200 = phi i8 [ %2189, %2187 ], [ 1, %2198 ], [ 1, %2194 ]
  %2201 = load ptr, ptr %2188, align 8, !tbaa !42
  %2202 = icmp eq ptr %2201, null
  br i1 %2202, label %2203, label %2187, !llvm.loop !415

2203:                                             ; preds = %2199, %2183
  %2204 = phi i8 [ 0, %2183 ], [ %2200, %2199 ]
  %2205 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 19
  %2206 = load ptr, ptr %2205, align 8, !tbaa !42
  %2207 = icmp eq ptr %2206, null
  br i1 %2207, label %2226, label %2208

2208:                                             ; preds = %2203
  %2209 = icmp eq i8 %2204, 0
  br label %2210

2210:                                             ; preds = %2208, %2223
  %2211 = phi ptr [ %2206, %2208 ], [ %2224, %2223 ]
  %2212 = getelementptr inbounds %struct.Image, ptr %2211, i64 0, i32 11
  %2213 = load i16, ptr %2212, align 8, !tbaa !416
  %2214 = icmp eq i16 %2213, 5
  br i1 %2214, label %2215, label %2219

2215:                                             ; preds = %2210
  %2216 = getelementptr inbounds %struct.Image, ptr %2211, i64 0, i32 10
  %2217 = load i16, ptr %2216, align 2, !tbaa !418
  %2218 = or i16 %2217, 2048
  store i16 %2218, ptr %2216, align 2, !tbaa !418
  br label %2223

2219:                                             ; preds = %2210
  br i1 %2209, label %2223, label %2220

2220:                                             ; preds = %2219
  %2221 = getelementptr inbounds %struct.Image, ptr %2211, i64 0, i32 36
  %2222 = call ptr @BLI_strncpy(ptr noundef nonnull %2221, ptr noundef nonnull @.str.3, i64 noundef 64) #8
  br label %2223

2223:                                             ; preds = %2215, %2220, %2219
  %2224 = load ptr, ptr %2211, align 8, !tbaa !42
  %2225 = icmp eq ptr %2224, null
  br i1 %2225, label %2226, label %2210, !llvm.loop !419

2226:                                             ; preds = %2223, %2203, %2179, %2177
  %2227 = load i16, ptr %55, align 8, !tbaa !34
  %2228 = icmp slt i16 %2227, 263
  br i1 %2228, label %2235, label %2229

2229:                                             ; preds = %2226
  %2230 = icmp eq i16 %2227, 263
  br i1 %2230, label %2231, label %2243

2231:                                             ; preds = %2229
  %2232 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2233 = load i16, ptr %2232, align 2, !tbaa !83
  %2234 = icmp slt i16 %2233, 20
  br i1 %2234, label %2235, label %2243

2235:                                             ; preds = %2231, %2226
  %2236 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 24
  %2237 = load ptr, ptr %2236, align 8, !tbaa !42
  %2238 = icmp eq ptr %2237, null
  br i1 %2238, label %2243, label %2239

2239:                                             ; preds = %2235, %2239
  %2240 = phi ptr [ %2241, %2239 ], [ %2237, %2235 ]
  call void @blo_do_versions_key_uidgen(ptr noundef nonnull %2240) #8
  %2241 = load ptr, ptr %2240, align 8, !tbaa !42
  %2242 = icmp eq ptr %2241, null
  br i1 %2242, label %2243, label %2239, !llvm.loop !420

2243:                                             ; preds = %2239, %2235, %2231, %2229
  %2244 = load i16, ptr %55, align 8, !tbaa !34
  %2245 = icmp slt i16 %2244, 263
  br i1 %2245, label %2252, label %2246

2246:                                             ; preds = %2243
  %2247 = icmp eq i16 %2244, 263
  br i1 %2247, label %2248, label %2284

2248:                                             ; preds = %2246
  %2249 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2250 = load i16, ptr %2249, align 2, !tbaa !83
  %2251 = icmp slt i16 %2250, 21
  br i1 %2251, label %2252, label %2284

2252:                                             ; preds = %2248, %2243
  %2253 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 17
  %2254 = load ptr, ptr %2253, align 8, !tbaa !42
  %2255 = icmp eq ptr %2254, null
  br i1 %2255, label %2273, label %2259

2256:                                             ; preds = %2270
  %2257 = load ptr, ptr %2260, align 8, !tbaa !42
  %2258 = icmp eq ptr %2257, null
  br i1 %2258, label %2273, label %2259, !llvm.loop !421

2259:                                             ; preds = %2252, %2256
  %2260 = phi ptr [ %2257, %2256 ], [ %2254, %2252 ]
  br label %2261

2261:                                             ; preds = %2259, %2270
  %2262 = phi i64 [ 0, %2259 ], [ %2271, %2270 ]
  %2263 = getelementptr inbounds %struct.Material, ptr %2260, i64 0, i32 102, i64 %2262
  %2264 = load ptr, ptr %2263, align 8, !tbaa !42
  %2265 = icmp eq ptr %2264, null
  br i1 %2265, label %2270, label %2266

2266:                                             ; preds = %2261
  %2267 = load i16, ptr %2264, align 8, !tbaa !422
  %2268 = icmp eq i16 %2267, 256
  br i1 %2268, label %2269, label %2270

2269:                                             ; preds = %2266
  store i16 16, ptr %2264, align 8, !tbaa !422
  br label %2270

2270:                                             ; preds = %2261, %2269, %2266
  %2271 = add nuw nsw i64 %2262, 1
  %2272 = icmp eq i64 %2271, 18
  br i1 %2272, label %2256, label %2261, !llvm.loop !423

2273:                                             ; preds = %2256, %2252
  %2274 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %2275 = load ptr, ptr %2274, align 8, !tbaa !42
  %2276 = icmp eq ptr %2275, null
  br i1 %2276, label %2284, label %2277

2277:                                             ; preds = %2273, %2277
  %2278 = phi ptr [ %2282, %2277 ], [ %2275, %2273 ]
  %2279 = getelementptr inbounds %struct.Mesh, ptr %2278, i64 0, i32 21
  call void @CustomData_update_typemap(ptr noundef nonnull %2279) #8
  %2280 = getelementptr inbounds %struct.Mesh, ptr %2278, i64 0, i32 26
  %2281 = load i32, ptr %2280, align 8, !tbaa !424
  call void @CustomData_free_layers(ptr noundef nonnull %2279, i32 noundef 1, i32 noundef %2281) #8
  %2282 = load ptr, ptr %2278, align 8, !tbaa !42
  %2283 = icmp eq ptr %2282, null
  br i1 %2283, label %2284, label %2277, !llvm.loop !425

2284:                                             ; preds = %2277, %2273, %2248, %2246
  %2285 = load i16, ptr %55, align 8, !tbaa !34
  %2286 = icmp slt i16 %2285, 264
  br i1 %2286, label %2287, label %2305

2287:                                             ; preds = %2284
  %2288 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %2289 = load ptr, ptr %2288, align 8, !tbaa !42
  %2290 = icmp eq ptr %2289, null
  br i1 %2290, label %2305, label %2291

2291:                                             ; preds = %2287, %2302
  %2292 = phi ptr [ %2303, %2302 ], [ %2289, %2287 ]
  %2293 = getelementptr inbounds %struct.Object, ptr %2292, i64 0, i32 18
  %2294 = load ptr, ptr %2293, align 8, !tbaa !426
  %2295 = icmp eq ptr %2294, null
  br i1 %2295, label %2302, label %2296

2296:                                             ; preds = %2291
  %2297 = getelementptr inbounds %struct.bPose, ptr %2294, i64 0, i32 14, i32 9
  %2298 = load i16, ptr %2297, align 2, !tbaa !427
  %2299 = icmp eq i16 %2298, 0
  br i1 %2299, label %2300, label %2302

2300:                                             ; preds = %2296
  %2301 = getelementptr inbounds %struct.bPose, ptr %2294, i64 0, i32 14
  call void @animviz_settings_init(ptr noundef nonnull %2301) #8
  br label %2302

2302:                                             ; preds = %2291, %2300, %2296
  %2303 = load ptr, ptr %2292, align 8, !tbaa !42
  %2304 = icmp eq ptr %2303, null
  br i1 %2304, label %2305, label %2291, !llvm.loop !429

2305:                                             ; preds = %2302, %2287, %2284
  %2306 = load i16, ptr %55, align 8, !tbaa !34
  %2307 = icmp slt i16 %2306, 264
  br i1 %2307, label %2314, label %2308

2308:                                             ; preds = %2305
  %2309 = icmp eq i16 %2306, 264
  br i1 %2309, label %2310, label %2344

2310:                                             ; preds = %2308
  %2311 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2312 = load i16, ptr %2311, align 2, !tbaa !83
  %2313 = icmp slt i16 %2312, 1
  br i1 %2313, label %2314, label %2344

2314:                                             ; preds = %2310, %2305
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %23) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #8
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %23, ptr noundef %2) #8
  %2315 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %23, ptr noundef nonnull %24, ptr noundef nonnull %25) #8
  %2316 = icmp eq i8 %2315, 1
  br i1 %2316, label %2317, label %2343

2317:                                             ; preds = %2314, %2340
  %2318 = load ptr, ptr %24, align 8, !tbaa !42
  %2319 = icmp eq ptr %2318, null
  br i1 %2319, label %2340, label %2320

2320:                                             ; preds = %2317
  %2321 = getelementptr inbounds %struct.bNodeTree, ptr %2318, i64 0, i32 9
  %2322 = load i32, ptr %2321, align 8, !tbaa !93
  %2323 = icmp eq i32 %2322, 0
  br i1 %2323, label %2324, label %2340

2324:                                             ; preds = %2320
  %2325 = getelementptr inbounds %struct.bNodeTree, ptr %2318, i64 0, i32 7
  %2326 = load ptr, ptr %2325, align 8, !tbaa !42
  %2327 = icmp eq ptr %2326, null
  br i1 %2327, label %2340, label %2328

2328:                                             ; preds = %2324, %2337
  %2329 = phi ptr [ %2338, %2337 ], [ %2326, %2324 ]
  %2330 = getelementptr inbounds %struct.bNode, ptr %2329, i64 0, i32 8
  %2331 = load i16, ptr %2330, align 4, !tbaa !66
  %2332 = icmp eq i16 %2331, 155
  br i1 %2332, label %2333, label %2337

2333:                                             ; preds = %2328
  %2334 = getelementptr inbounds %struct.bNode, ptr %2329, i64 0, i32 7
  %2335 = load i32, ptr %2334, align 8, !tbaa !430
  %2336 = or i32 %2335, 2
  store i32 %2336, ptr %2334, align 8, !tbaa !430
  br label %2337

2337:                                             ; preds = %2328, %2333
  %2338 = load ptr, ptr %2329, align 8, !tbaa !42
  %2339 = icmp eq ptr %2338, null
  br i1 %2339, label %2340, label %2328, !llvm.loop !431

2340:                                             ; preds = %2337, %2324, %2320, %2317
  %2341 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %23, ptr noundef nonnull %24, ptr noundef nonnull %25) #8
  %2342 = icmp eq i8 %2341, 1
  br i1 %2342, label %2317, label %2343, !llvm.loop !432

2343:                                             ; preds = %2340, %2314
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %23) #8
  br label %2344

2344:                                             ; preds = %2343, %2310, %2308
  %2345 = load i16, ptr %55, align 8, !tbaa !34
  %2346 = icmp slt i16 %2345, 264
  br i1 %2346, label %2353, label %2347

2347:                                             ; preds = %2344
  %2348 = icmp eq i16 %2345, 264
  br i1 %2348, label %2349, label %2383

2349:                                             ; preds = %2347
  %2350 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2351 = load i16, ptr %2350, align 2, !tbaa !83
  %2352 = icmp slt i16 %2351, 2
  br i1 %2352, label %2353, label %2383

2353:                                             ; preds = %2349, %2344
  %2354 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 42
  %2355 = load ptr, ptr %2354, align 8, !tbaa !42
  %2356 = icmp eq ptr %2355, null
  br i1 %2356, label %2383, label %2360

2357:                                             ; preds = %2380, %2360
  %2358 = load ptr, ptr %2361, align 8, !tbaa !42
  %2359 = icmp eq ptr %2358, null
  br i1 %2359, label %2383, label %2360, !llvm.loop !433

2360:                                             ; preds = %2353, %2357
  %2361 = phi ptr [ %2358, %2357 ], [ %2355, %2353 ]
  %2362 = getelementptr inbounds %struct.MovieClip, ptr %2361, i64 0, i32 11, i32 8
  %2363 = load ptr, ptr %2362, align 8, !tbaa !42
  %2364 = icmp eq ptr %2363, null
  br i1 %2364, label %2357, label %2365

2365:                                             ; preds = %2360
  %2366 = getelementptr inbounds %struct.MovieClip, ptr %2361, i64 0, i32 11, i32 0, i32 13
  %2367 = getelementptr inbounds %struct.MovieClip, ptr %2361, i64 0, i32 11, i32 0, i32 14
  br label %2368

2368:                                             ; preds = %2365, %2380
  %2369 = phi ptr [ %2363, %2365 ], [ %2381, %2380 ]
  %2370 = getelementptr inbounds %struct.MovieTrackingObject, ptr %2369, i64 0, i32 8
  %2371 = load i32, ptr %2370, align 8, !tbaa !434
  %2372 = icmp eq i32 %2371, 0
  br i1 %2372, label %2373, label %2380

2373:                                             ; preds = %2368
  %2374 = getelementptr inbounds %struct.MovieTrackingObject, ptr %2369, i64 0, i32 9
  %2375 = load i32, ptr %2374, align 4, !tbaa !435
  %2376 = icmp eq i32 %2375, 0
  br i1 %2376, label %2377, label %2380

2377:                                             ; preds = %2373
  %2378 = load i32, ptr %2366, align 8, !tbaa !436
  store i32 %2378, ptr %2370, align 8, !tbaa !434
  %2379 = load i32, ptr %2367, align 4, !tbaa !437
  store i32 %2379, ptr %2374, align 4, !tbaa !435
  br label %2380

2380:                                             ; preds = %2368, %2373, %2377
  %2381 = load ptr, ptr %2369, align 8, !tbaa !42
  %2382 = icmp eq ptr %2381, null
  br i1 %2382, label %2357, label %2368, !llvm.loop !438

2383:                                             ; preds = %2357, %2353, %2349, %2347
  br i1 %2346, label %2390, label %2384

2384:                                             ; preds = %2383
  %2385 = icmp eq i16 %2345, 264
  br i1 %2385, label %2386, label %2495

2386:                                             ; preds = %2384
  %2387 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2388 = load i16, ptr %2387, align 2, !tbaa !83
  %2389 = icmp slt i16 %2388, 3
  br i1 %2389, label %2390, label %2495

2390:                                             ; preds = %2386, %2383
  %2391 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %2392 = load ptr, ptr %2391, align 8, !tbaa !42
  %2393 = icmp eq ptr %2392, null
  br i1 %2393, label %2450, label %2397

2394:                                             ; preds = %2447, %2397
  %2395 = load ptr, ptr %2398, align 8, !tbaa !42
  %2396 = icmp eq ptr %2395, null
  br i1 %2396, label %2450, label %2397, !llvm.loop !439

2397:                                             ; preds = %2390, %2394
  %2398 = phi ptr [ %2395, %2394 ], [ %2392, %2390 ]
  %2399 = getelementptr inbounds %struct.Object, ptr %2398, i64 0, i32 26
  %2400 = load ptr, ptr %2399, align 8, !tbaa !42
  %2401 = icmp eq ptr %2400, null
  br i1 %2401, label %2394, label %2402

2402:                                             ; preds = %2397, %2447
  %2403 = phi ptr [ %2448, %2447 ], [ %2400, %2397 ]
  %2404 = getelementptr inbounds %struct.ModifierData, ptr %2403, i64 0, i32 2
  %2405 = load i32, ptr %2404, align 8, !tbaa !239
  %2406 = icmp eq i32 %2405, 31
  br i1 %2406, label %2407, label %2447

2407:                                             ; preds = %2402
  %2408 = getelementptr inbounds %struct.SmokeModifierData, ptr %2403, i64 0, i32 5
  %2409 = load i32, ptr %2408, align 4, !tbaa !344
  %2410 = and i32 %2409, 1
  %2411 = icmp eq i32 %2410, 0
  br i1 %2411, label %2430, label %2412

2412:                                             ; preds = %2407
  %2413 = getelementptr inbounds %struct.SmokeModifierData, ptr %2403, i64 0, i32 1
  %2414 = load ptr, ptr %2413, align 8, !tbaa !346
  %2415 = icmp eq ptr %2414, null
  br i1 %2415, label %2430, label %2416

2416:                                             ; preds = %2412
  %2417 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %2414, i64 0, i32 60
  %2418 = load float, ptr %2417, align 8, !tbaa !440
  %2419 = fcmp une float %2418, 0.000000e+00
  br i1 %2419, label %2447, label %2420

2420:                                             ; preds = %2416
  %2421 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %2414, i64 0, i32 56
  store float 7.500000e-01, ptr %2421, align 8, !tbaa !441
  %2422 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %2414, i64 0, i32 57
  store float 1.000000e+00, ptr %2422, align 4, !tbaa !442
  %2423 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %2414, i64 0, i32 58
  store float 5.000000e-01, ptr %2423, align 8, !tbaa !443
  %2424 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %2414, i64 0, i32 59
  store float 1.250000e+00, ptr %2424, align 4, !tbaa !444
  store float 1.750000e+00, ptr %2417, align 8, !tbaa !440
  %2425 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %2414, i64 0, i32 32
  store float 0x3F947AE140000000, ptr %2425, align 8, !tbaa !445
  %2426 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %2414, i64 0, i32 30
  store i32 4, ptr %2426, align 8, !tbaa !446
  %2427 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %2414, i64 0, i32 61
  store float 0x3FE6666660000000, ptr %2427, align 4, !tbaa !72
  %2428 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %2414, i64 0, i32 61, i64 1
  store float 0x3FE6666660000000, ptr %2428, align 4, !tbaa !72
  %2429 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %2414, i64 0, i32 61, i64 2
  store float 0x3FE6666660000000, ptr %2429, align 4, !tbaa !72
  br label %2447

2430:                                             ; preds = %2412, %2407
  %2431 = and i32 %2409, 2
  %2432 = icmp eq i32 %2431, 0
  br i1 %2432, label %2447, label %2433

2433:                                             ; preds = %2430
  %2434 = getelementptr inbounds %struct.SmokeModifierData, ptr %2403, i64 0, i32 2
  %2435 = load ptr, ptr %2434, align 8, !tbaa !447
  %2436 = icmp eq ptr %2435, null
  br i1 %2436, label %2447, label %2437

2437:                                             ; preds = %2433
  %2438 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %2435, i64 0, i32 17
  %2439 = load float, ptr %2438, align 8, !tbaa !448
  %2440 = fcmp une float %2439, 0.000000e+00
  br i1 %2440, label %2447, label %2441

2441:                                             ; preds = %2437
  %2442 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %2435, i64 0, i32 11
  store float 1.000000e+00, ptr %2442, align 8, !tbaa !450
  %2443 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %2435, i64 0, i32 14
  store float 1.500000e+00, ptr %2443, align 4, !tbaa !451
  %2444 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %2435, i64 0, i32 10
  store float 0x3FE6666660000000, ptr %2444, align 4, !tbaa !72
  %2445 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %2435, i64 0, i32 10, i64 1
  store float 0x3FE6666660000000, ptr %2445, align 4, !tbaa !72
  %2446 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %2435, i64 0, i32 10, i64 2
  store float 0x3FE6666660000000, ptr %2446, align 4, !tbaa !72
  store float 1.000000e+00, ptr %2438, align 8, !tbaa !448
  br label %2447

2447:                                             ; preds = %2420, %2416, %2437, %2441, %2433, %2430, %2402
  %2448 = load ptr, ptr %2403, align 8, !tbaa !42
  %2449 = icmp eq ptr %2448, null
  br i1 %2449, label %2394, label %2402, !llvm.loop !452

2450:                                             ; preds = %2394, %2390
  %2451 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %2452 = load ptr, ptr %2451, align 8, !tbaa !42
  %2453 = icmp eq ptr %2452, null
  br i1 %2453, label %2495, label %2457

2454:                                             ; preds = %2462, %2457
  %2455 = load ptr, ptr %2458, align 8, !tbaa !42
  %2456 = icmp eq ptr %2455, null
  br i1 %2456, label %2495, label %2457, !llvm.loop !453

2457:                                             ; preds = %2450, %2454
  %2458 = phi ptr [ %2455, %2454 ], [ %2452, %2450 ]
  %2459 = getelementptr inbounds %struct.bScreen, ptr %2458, i64 0, i32 3
  %2460 = load ptr, ptr %2459, align 8, !tbaa !42
  %2461 = icmp eq ptr %2460, null
  br i1 %2461, label %2454, label %2465

2462:                                             ; preds = %2492, %2465
  %2463 = load ptr, ptr %2466, align 8, !tbaa !42
  %2464 = icmp eq ptr %2463, null
  br i1 %2464, label %2454, label %2465, !llvm.loop !454

2465:                                             ; preds = %2457, %2462
  %2466 = phi ptr [ %2463, %2462 ], [ %2460, %2457 ]
  %2467 = getelementptr inbounds %struct.ScrArea, ptr %2466, i64 0, i32 19
  %2468 = load ptr, ptr %2467, align 8, !tbaa !42
  %2469 = icmp eq ptr %2468, null
  br i1 %2469, label %2462, label %2470

2470:                                             ; preds = %2465, %2492
  %2471 = phi ptr [ %2493, %2492 ], [ %2468, %2465 ]
  %2472 = getelementptr inbounds %struct.SpaceLink, ptr %2471, i64 0, i32 3
  %2473 = load i32, ptr %2472, align 8, !tbaa !112
  %2474 = icmp eq i32 %2473, 1
  br i1 %2474, label %2475, label %2492

2475:                                             ; preds = %2470
  %2476 = getelementptr inbounds %struct.View3D, ptr %2471, i64 0, i32 17
  %2477 = load float, ptr %2476, align 8, !tbaa !455
  %2478 = fcmp oeq float %2477, 0.000000e+00
  br i1 %2478, label %2479, label %2492

2479:                                             ; preds = %2475
  %2480 = getelementptr inbounds %struct.View3D, ptr %2471, i64 0, i32 17, i32 2
  %2481 = load float, ptr %2480, align 8, !tbaa !456
  %2482 = fcmp oeq float %2481, 0.000000e+00
  br i1 %2482, label %2483, label %2492

2483:                                             ; preds = %2479
  %2484 = getelementptr inbounds %struct.View3D, ptr %2471, i64 0, i32 17, i32 1
  %2485 = load float, ptr %2484, align 4, !tbaa !457
  %2486 = fcmp oeq float %2485, 0.000000e+00
  br i1 %2486, label %2487, label %2492

2487:                                             ; preds = %2483
  %2488 = getelementptr inbounds %struct.View3D, ptr %2471, i64 0, i32 17, i32 3
  %2489 = load float, ptr %2488, align 4, !tbaa !458
  %2490 = fcmp oeq float %2489, 0.000000e+00
  br i1 %2490, label %2491, label %2492

2491:                                             ; preds = %2487
  store float 1.000000e+00, ptr %2484, align 4, !tbaa !457
  store float 1.000000e+00, ptr %2488, align 4, !tbaa !458
  br label %2492

2492:                                             ; preds = %2475, %2479, %2483, %2487, %2491, %2470
  %2493 = load ptr, ptr %2471, align 8, !tbaa !42
  %2494 = icmp eq ptr %2493, null
  br i1 %2494, label %2462, label %2470, !llvm.loop !459

2495:                                             ; preds = %2454, %2450, %2386, %2384
  br i1 %2346, label %2502, label %2496

2496:                                             ; preds = %2495
  %2497 = icmp eq i16 %2345, 264
  br i1 %2497, label %2498, label %2518

2498:                                             ; preds = %2496
  %2499 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2500 = load i16, ptr %2499, align 2, !tbaa !83
  %2501 = icmp slt i16 %2500, 5
  br i1 %2501, label %2502, label %2518

2502:                                             ; preds = %2498, %2495
  %2503 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %2504 = load ptr, ptr %2503, align 8, !tbaa !42
  %2505 = icmp eq ptr %2504, null
  br i1 %2505, label %2518, label %2506

2506:                                             ; preds = %2502, %2515
  %2507 = phi ptr [ %2516, %2515 ], [ %2504, %2502 ]
  %2508 = getelementptr inbounds %struct.Scene, ptr %2507, i64 0, i32 20
  %2509 = load ptr, ptr %2508, align 8, !tbaa !213
  %2510 = getelementptr inbounds %struct.ToolSettings, ptr %2509, i64 0, i32 13
  %2511 = load float, ptr %2510, align 4, !tbaa !460
  %2512 = fcmp oeq float %2511, 0.000000e+00
  br i1 %2512, label %2513, label %2515

2513:                                             ; preds = %2506
  store float 0x3F50624DE0000000, ptr %2510, align 4, !tbaa !460
  %2514 = getelementptr inbounds %struct.ToolSettings, ptr %2509, i64 0, i32 9
  store i8 0, ptr %2514, align 8, !tbaa !461
  br label %2515

2515:                                             ; preds = %2506, %2513
  %2516 = load ptr, ptr %2507, align 8, !tbaa !42
  %2517 = icmp eq ptr %2516, null
  br i1 %2517, label %2518, label %2506, !llvm.loop !462

2518:                                             ; preds = %2515, %2502, %2498, %2496
  br i1 %2346, label %2525, label %2519

2519:                                             ; preds = %2518
  %2520 = icmp eq i16 %2345, 264
  br i1 %2520, label %2521, label %2568

2521:                                             ; preds = %2519
  %2522 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2523 = load i16, ptr %2522, align 2, !tbaa !83
  %2524 = icmp slt i16 %2523, 6
  br i1 %2524, label %2525, label %2568

2525:                                             ; preds = %2521, %2518
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %26) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %28) #8
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %26, ptr noundef %2) #8
  %2526 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %26, ptr noundef nonnull %27, ptr noundef nonnull %28) #8
  %2527 = icmp eq i8 %2526, 1
  br i1 %2527, label %2528, label %2567

2528:                                             ; preds = %2525, %2564
  %2529 = load ptr, ptr %27, align 8, !tbaa !42
  %2530 = icmp eq ptr %2529, null
  br i1 %2530, label %2564, label %2531

2531:                                             ; preds = %2528
  %2532 = getelementptr inbounds %struct.bNodeTree, ptr %2529, i64 0, i32 7
  %2533 = load ptr, ptr %2532, align 8, !tbaa !42
  %2534 = icmp eq ptr %2533, null
  br i1 %2534, label %2564, label %2538

2535:                                             ; preds = %2562, %2538
  %2536 = load ptr, ptr %2539, align 8, !tbaa !42
  %2537 = icmp eq ptr %2536, null
  br i1 %2537, label %2564, label %2538, !llvm.loop !463

2538:                                             ; preds = %2531, %2535
  %2539 = phi ptr [ %2536, %2535 ], [ %2533, %2531 ]
  %2540 = getelementptr inbounds %struct.bNode, ptr %2539, i64 0, i32 23
  %2541 = load ptr, ptr %2540, align 8, !tbaa !464
  %2542 = icmp eq ptr %2541, null
  br i1 %2542, label %2535, label %2543

2543:                                             ; preds = %2538, %2562
  %2544 = phi ptr [ %2545, %2562 ], [ %2541, %2538 ]
  %2545 = load ptr, ptr %2544, align 8, !tbaa !465
  %2546 = getelementptr inbounds %struct.bNodeLink, ptr %2544, i64 0, i32 2
  %2547 = load ptr, ptr %2546, align 8, !tbaa !467
  %2548 = icmp eq ptr %2547, null
  br i1 %2548, label %2561, label %2549

2549:                                             ; preds = %2543
  %2550 = getelementptr inbounds %struct.bNodeLink, ptr %2544, i64 0, i32 4
  %2551 = load ptr, ptr %2550, align 8, !tbaa !468
  %2552 = icmp eq ptr %2551, null
  br i1 %2552, label %2561, label %2553

2553:                                             ; preds = %2549
  %2554 = getelementptr inbounds %struct.bNodeLink, ptr %2544, i64 0, i32 3
  %2555 = load ptr, ptr %2554, align 8, !tbaa !469
  %2556 = icmp eq ptr %2555, null
  br i1 %2556, label %2561, label %2557

2557:                                             ; preds = %2553
  %2558 = getelementptr inbounds %struct.bNodeLink, ptr %2544, i64 0, i32 5
  %2559 = load ptr, ptr %2558, align 8, !tbaa !470
  %2560 = icmp eq ptr %2559, null
  br i1 %2560, label %2561, label %2562

2561:                                             ; preds = %2557, %2553, %2549, %2543
  call void @BLI_remlink(ptr noundef nonnull %2540, ptr noundef nonnull %2544) #8
  br label %2562

2562:                                             ; preds = %2557, %2561
  %2563 = icmp eq ptr %2545, null
  br i1 %2563, label %2535, label %2543, !llvm.loop !471

2564:                                             ; preds = %2535, %2531, %2528
  %2565 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %26, ptr noundef nonnull %27, ptr noundef nonnull %28) #8
  %2566 = icmp eq i8 %2565, 1
  br i1 %2566, label %2528, label %2567, !llvm.loop !472

2567:                                             ; preds = %2564, %2525
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %26) #8
  br label %2568

2568:                                             ; preds = %2567, %2521, %2519
  %2569 = load i16, ptr %55, align 8, !tbaa !34
  %2570 = icmp slt i16 %2569, 264
  br i1 %2570, label %2577, label %2571

2571:                                             ; preds = %2568
  %2572 = icmp eq i16 %2569, 264
  br i1 %2572, label %2573, label %2651

2573:                                             ; preds = %2571
  %2574 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2575 = load i16, ptr %2574, align 2, !tbaa !83
  %2576 = icmp slt i16 %2575, 6
  br i1 %2576, label %2577, label %2651

2577:                                             ; preds = %2573, %2568
  %2578 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %2579 = load ptr, ptr %2578, align 8, !tbaa !42
  %2580 = icmp eq ptr %2579, null
  br i1 %2580, label %2651, label %2584

2581:                                             ; preds = %2589, %2584
  %2582 = load ptr, ptr %2585, align 8, !tbaa !42
  %2583 = icmp eq ptr %2582, null
  br i1 %2583, label %2651, label %2584, !llvm.loop !473

2584:                                             ; preds = %2577, %2581
  %2585 = phi ptr [ %2582, %2581 ], [ %2579, %2577 ]
  %2586 = getelementptr inbounds %struct.bScreen, ptr %2585, i64 0, i32 3
  %2587 = load ptr, ptr %2586, align 8, !tbaa !42
  %2588 = icmp eq ptr %2587, null
  br i1 %2588, label %2581, label %2592

2589:                                             ; preds = %2648, %2618
  %2590 = load ptr, ptr %2593, align 8, !tbaa !42
  %2591 = icmp eq ptr %2590, null
  br i1 %2591, label %2581, label %2592, !llvm.loop !474

2592:                                             ; preds = %2584, %2589
  %2593 = phi ptr [ %2590, %2589 ], [ %2587, %2584 ]
  %2594 = getelementptr inbounds %struct.ScrArea, ptr %2593, i64 0, i32 8
  %2595 = load i8, ptr %2594, align 8, !tbaa !475
  %2596 = icmp eq i8 %2595, 17
  br i1 %2596, label %2597, label %2618

2597:                                             ; preds = %2592
  %2598 = getelementptr inbounds %struct.ScrArea, ptr %2593, i64 0, i32 20
  %2599 = load ptr, ptr %2598, align 8, !tbaa !42
  %2600 = icmp eq ptr %2599, null
  br i1 %2600, label %2618, label %2601

2601:                                             ; preds = %2597, %2615
  %2602 = phi ptr [ %2616, %2615 ], [ %2599, %2597 ]
  %2603 = getelementptr inbounds %struct.ARegion, ptr %2602, i64 0, i32 8
  %2604 = load i16, ptr %2603, align 2, !tbaa !305
  %2605 = icmp eq i16 %2604, 0
  br i1 %2605, label %2606, label %2615

2606:                                             ; preds = %2601
  %2607 = getelementptr inbounds %struct.ARegion, ptr %2602, i64 0, i32 2, i32 11
  %2608 = load i16, ptr %2607, align 4, !tbaa !477
  %2609 = icmp eq i16 %2608, 0
  br i1 %2609, label %2610, label %2615

2610:                                             ; preds = %2606
  %2611 = getelementptr inbounds %struct.ARegion, ptr %2602, i64 0, i32 2, i32 8
  store float 1.500000e+00, ptr %2611, align 4, !tbaa !478
  %2612 = getelementptr inbounds %struct.ARegion, ptr %2602, i64 0, i32 2, i32 12
  store i16 7, ptr %2612, align 2, !tbaa !479
  store i16 1, ptr %2607, align 4, !tbaa !477
  %2613 = getelementptr inbounds %struct.ARegion, ptr %2602, i64 0, i32 2, i32 15
  store i16 6, ptr %2613, align 4, !tbaa !480
  %2614 = getelementptr inbounds %struct.ARegion, ptr %2602, i64 0, i32 2, i32 13
  store i16 16, ptr %2614, align 8, !tbaa !481
  br label %2615

2615:                                             ; preds = %2610, %2606, %2601
  %2616 = load ptr, ptr %2602, align 8, !tbaa !42
  %2617 = icmp eq ptr %2616, null
  br i1 %2617, label %2618, label %2601, !llvm.loop !482

2618:                                             ; preds = %2615, %2597, %2592
  %2619 = getelementptr inbounds %struct.ScrArea, ptr %2593, i64 0, i32 19
  %2620 = load ptr, ptr %2619, align 8, !tbaa !42
  %2621 = icmp eq ptr %2620, null
  br i1 %2621, label %2589, label %2622

2622:                                             ; preds = %2618, %2648
  %2623 = phi ptr [ %2649, %2648 ], [ %2620, %2618 ]
  %2624 = getelementptr inbounds %struct.SpaceLink, ptr %2623, i64 0, i32 3
  %2625 = load i32, ptr %2624, align 8, !tbaa !112
  %2626 = icmp eq i32 %2625, 17
  br i1 %2626, label %2627, label %2648

2627:                                             ; preds = %2622
  %2628 = getelementptr inbounds %struct.SpaceLink, ptr %2623, i64 0, i32 2
  %2629 = load ptr, ptr %2628, align 8, !tbaa !42
  %2630 = icmp eq ptr %2629, null
  br i1 %2630, label %2648, label %2631

2631:                                             ; preds = %2627, %2645
  %2632 = phi ptr [ %2646, %2645 ], [ %2629, %2627 ]
  %2633 = getelementptr inbounds %struct.ARegion, ptr %2632, i64 0, i32 8
  %2634 = load i16, ptr %2633, align 2, !tbaa !305
  %2635 = icmp eq i16 %2634, 0
  br i1 %2635, label %2636, label %2645

2636:                                             ; preds = %2631
  %2637 = getelementptr inbounds %struct.ARegion, ptr %2632, i64 0, i32 2, i32 11
  %2638 = load i16, ptr %2637, align 4, !tbaa !477
  %2639 = icmp eq i16 %2638, 0
  br i1 %2639, label %2640, label %2645

2640:                                             ; preds = %2636
  %2641 = getelementptr inbounds %struct.ARegion, ptr %2632, i64 0, i32 2, i32 8
  store float 1.500000e+00, ptr %2641, align 4, !tbaa !478
  %2642 = getelementptr inbounds %struct.ARegion, ptr %2632, i64 0, i32 2, i32 12
  store i16 7, ptr %2642, align 2, !tbaa !479
  store i16 1, ptr %2637, align 4, !tbaa !477
  %2643 = getelementptr inbounds %struct.ARegion, ptr %2632, i64 0, i32 2, i32 15
  store i16 6, ptr %2643, align 4, !tbaa !480
  %2644 = getelementptr inbounds %struct.ARegion, ptr %2632, i64 0, i32 2, i32 13
  store i16 16, ptr %2644, align 8, !tbaa !481
  br label %2645

2645:                                             ; preds = %2640, %2636, %2631
  %2646 = load ptr, ptr %2632, align 8, !tbaa !42
  %2647 = icmp eq ptr %2646, null
  br i1 %2647, label %2648, label %2631, !llvm.loop !482

2648:                                             ; preds = %2645, %2627, %2622
  %2649 = load ptr, ptr %2623, align 8, !tbaa !42
  %2650 = icmp eq ptr %2649, null
  br i1 %2650, label %2589, label %2622, !llvm.loop !483

2651:                                             ; preds = %2581, %2577, %2573, %2571
  br i1 %2570, label %2658, label %2652

2652:                                             ; preds = %2651
  %2653 = icmp eq i16 %2569, 264
  br i1 %2653, label %2654, label %2717

2654:                                             ; preds = %2652
  %2655 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2656 = load i16, ptr %2655, align 2, !tbaa !83
  %2657 = icmp slt i16 %2656, 7
  br i1 %2657, label %2658, label %2717

2658:                                             ; preds = %2654, %2651
  %2659 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %2660 = load ptr, ptr %2659, align 8, !tbaa !42
  %2661 = icmp eq ptr %2660, null
  br i1 %2661, label %2703, label %2662

2662:                                             ; preds = %2658, %2700
  %2663 = phi ptr [ %2701, %2700 ], [ %2660, %2658 ]
  %2664 = getelementptr inbounds %struct.Scene, ptr %2663, i64 0, i32 22, i32 37
  %2665 = load i32, ptr %2664, align 8, !tbaa !484
  %2666 = icmp eq i32 %2665, 0
  br i1 %2666, label %2671, label %2667

2667:                                             ; preds = %2662
  %2668 = getelementptr inbounds %struct.Scene, ptr %2663, i64 0, i32 22, i32 38
  %2669 = load i32, ptr %2668, align 4, !tbaa !485
  %2670 = icmp eq i32 %2669, 1
  br i1 %2670, label %2671, label %2700

2671:                                             ; preds = %2667, %2662
  %2672 = getelementptr inbounds %struct.Scene, ptr %2663, i64 0, i32 22, i32 35
  %2673 = load i16, ptr %2672, align 4, !tbaa !486
  %2674 = sext i16 %2673 to i32
  %2675 = icmp eq i16 %2673, 0
  br i1 %2675, label %2698, label %2676

2676:                                             ; preds = %2671
  %2677 = getelementptr inbounds %struct.Scene, ptr %2663, i64 0, i32 22, i32 36
  %2678 = load i16, ptr %2677, align 2, !tbaa !487
  %2679 = icmp eq i16 %2678, 0
  br i1 %2679, label %2698, label %2680

2680:                                             ; preds = %2676
  %2681 = getelementptr inbounds %struct.Scene, ptr %2663, i64 0, i32 22, i32 33
  %2682 = load i32, ptr %2681, align 4, !tbaa !488
  %2683 = getelementptr inbounds %struct.Scene, ptr %2663, i64 0, i32 22, i32 30
  %2684 = load i16, ptr %2683, align 2, !tbaa !489
  %2685 = sext i16 %2684 to i32
  %2686 = mul nsw i32 %2682, %2685
  %2687 = sdiv i32 %2686, %2674
  %2688 = sdiv i32 %2687, 100
  %2689 = call i32 @llvm.smax.i32(i32 %2688, i32 8)
  store i32 %2689, ptr %2664, align 8, !tbaa !484
  %2690 = getelementptr inbounds %struct.Scene, ptr %2663, i64 0, i32 22, i32 34
  %2691 = load i32, ptr %2690, align 8, !tbaa !490
  %2692 = mul nsw i32 %2691, %2685
  %2693 = sext i16 %2678 to i32
  %2694 = sdiv i32 %2692, %2693
  %2695 = sdiv i32 %2694, 100
  %2696 = call i32 @llvm.smax.i32(i32 %2695, i32 8)
  %2697 = getelementptr inbounds %struct.Scene, ptr %2663, i64 0, i32 22, i32 38
  store i32 %2696, ptr %2697, align 4, !tbaa !485
  br label %2700

2698:                                             ; preds = %2676, %2671
  %2699 = getelementptr inbounds %struct.Scene, ptr %2663, i64 0, i32 22, i32 38
  store i32 64, ptr %2699, align 4, !tbaa !485
  store i32 64, ptr %2664, align 8, !tbaa !484
  br label %2700

2700:                                             ; preds = %2667, %2698, %2680
  %2701 = load ptr, ptr %2663, align 8, !tbaa !42
  %2702 = icmp eq ptr %2701, null
  br i1 %2702, label %2703, label %2662, !llvm.loop !491

2703:                                             ; preds = %2700, %2658
  %2704 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %2705 = load ptr, ptr %2704, align 8, !tbaa !42
  %2706 = icmp eq ptr %2705, null
  br i1 %2706, label %2717, label %2707

2707:                                             ; preds = %2703, %2714
  %2708 = phi ptr [ %2715, %2714 ], [ %2705, %2703 ]
  %2709 = getelementptr inbounds %struct.Object, ptr %2708, i64 0, i32 81
  %2710 = load i16, ptr %2709, align 4, !tbaa !492
  %2711 = icmp eq i16 %2710, 0
  br i1 %2711, label %2712, label %2714

2712:                                             ; preds = %2707
  store i16 1, ptr %2709, align 4, !tbaa !492
  %2713 = getelementptr inbounds %struct.Object, ptr %2708, i64 0, i32 82
  store i16 255, ptr %2713, align 2, !tbaa !493
  br label %2714

2714:                                             ; preds = %2707, %2712
  %2715 = load ptr, ptr %2708, align 8, !tbaa !42
  %2716 = icmp eq ptr %2715, null
  br i1 %2716, label %2717, label %2707, !llvm.loop !494

2717:                                             ; preds = %2714, %2703, %2654, %2652
  br i1 %2570, label %2724, label %2718

2718:                                             ; preds = %2717
  %2719 = icmp eq i16 %2569, 264
  br i1 %2719, label %2720, label %2756

2720:                                             ; preds = %2718
  %2721 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2722 = load i16, ptr %2721, align 2, !tbaa !83
  %2723 = icmp slt i16 %2722, 7
  br i1 %2723, label %2724, label %2756

2724:                                             ; preds = %2720, %2717
  %2725 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 42
  %2726 = load ptr, ptr %2725, align 8, !tbaa !42
  %2727 = icmp eq ptr %2726, null
  br i1 %2727, label %2756, label %2731

2728:                                             ; preds = %2744, %2740
  %2729 = load ptr, ptr %2732, align 8, !tbaa !42
  %2730 = icmp eq ptr %2729, null
  br i1 %2730, label %2756, label %2731, !llvm.loop !495

2731:                                             ; preds = %2724, %2728
  %2732 = phi ptr [ %2729, %2728 ], [ %2726, %2724 ]
  %2733 = getelementptr inbounds %struct.MovieClip, ptr %2732, i64 0, i32 11, i32 2
  %2734 = load ptr, ptr %2733, align 8, !tbaa !42
  %2735 = icmp eq ptr %2734, null
  br i1 %2735, label %2740, label %2736

2736:                                             ; preds = %2731, %2736
  %2737 = phi ptr [ %2738, %2736 ], [ %2734, %2731 ]
  call fastcc void @do_versions_affine_tracker_track(ptr noundef nonnull %2737)
  %2738 = load ptr, ptr %2737, align 8, !tbaa !42
  %2739 = icmp eq ptr %2738, null
  br i1 %2739, label %2740, label %2736, !llvm.loop !496

2740:                                             ; preds = %2736, %2731
  %2741 = getelementptr inbounds %struct.MovieClip, ptr %2732, i64 0, i32 11, i32 8
  %2742 = load ptr, ptr %2741, align 8, !tbaa !42
  %2743 = icmp eq ptr %2742, null
  br i1 %2743, label %2728, label %2747

2744:                                             ; preds = %2752, %2747
  %2745 = load ptr, ptr %2748, align 8, !tbaa !42
  %2746 = icmp eq ptr %2745, null
  br i1 %2746, label %2728, label %2747, !llvm.loop !497

2747:                                             ; preds = %2740, %2744
  %2748 = phi ptr [ %2745, %2744 ], [ %2742, %2740 ]
  %2749 = getelementptr inbounds %struct.MovieTrackingObject, ptr %2748, i64 0, i32 5
  %2750 = load ptr, ptr %2749, align 8, !tbaa !42
  %2751 = icmp eq ptr %2750, null
  br i1 %2751, label %2744, label %2752

2752:                                             ; preds = %2747, %2752
  %2753 = phi ptr [ %2754, %2752 ], [ %2750, %2747 ]
  call fastcc void @do_versions_affine_tracker_track(ptr noundef nonnull %2753)
  %2754 = load ptr, ptr %2753, align 8, !tbaa !42
  %2755 = icmp eq ptr %2754, null
  br i1 %2755, label %2744, label %2752, !llvm.loop !498

2756:                                             ; preds = %2728, %2724, %2720, %2718
  %2757 = load i16, ptr %55, align 8, !tbaa !34
  %2758 = icmp slt i16 %2757, 265
  br i1 %2758, label %2759, label %2775

2759:                                             ; preds = %2756
  %2760 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %2761 = load ptr, ptr %2760, align 8, !tbaa !42
  %2762 = icmp eq ptr %2761, null
  br i1 %2762, label %2774, label %2763

2763:                                             ; preds = %2759, %2771
  %2764 = phi ptr [ %2772, %2771 ], [ %2761, %2759 ]
  %2765 = getelementptr inbounds %struct.Object, ptr %2764, i64 0, i32 78
  %2766 = load float, ptr %2765, align 8, !tbaa !499
  %2767 = fcmp oeq float %2766, 0.000000e+00
  br i1 %2767, label %2768, label %2771

2768:                                             ; preds = %2763
  store float 0x3FC3333340000000, ptr %2765, align 8, !tbaa !499
  %2769 = getelementptr inbounds %struct.Object, ptr %2764, i64 0, i32 79
  store float 1.000000e+01, ptr %2769, align 4, !tbaa !500
  %2770 = getelementptr inbounds %struct.Object, ptr %2764, i64 0, i32 80
  store float 5.500000e+01, ptr %2770, align 8, !tbaa !501
  br label %2771

2771:                                             ; preds = %2763, %2768
  %2772 = load ptr, ptr %2764, align 8, !tbaa !42
  %2773 = icmp eq ptr %2772, null
  br i1 %2773, label %2774, label %2763, !llvm.loop !502

2774:                                             ; preds = %2771, %2759
  br i1 %2758, label %2781, label %2775

2775:                                             ; preds = %2756, %2774
  %2776 = icmp eq i16 %2757, 265
  br i1 %2776, label %2777, label %2828

2777:                                             ; preds = %2775
  %2778 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2779 = load i16, ptr %2778, align 2, !tbaa !83
  %2780 = icmp slt i16 %2779, 3
  br i1 %2780, label %2781, label %2828

2781:                                             ; preds = %2777, %2774
  %2782 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %2783 = load ptr, ptr %2782, align 8, !tbaa !42
  %2784 = icmp eq ptr %2783, null
  br i1 %2784, label %2828, label %2788

2785:                                             ; preds = %2793, %2788
  %2786 = load ptr, ptr %2789, align 8, !tbaa !42
  %2787 = icmp eq ptr %2786, null
  br i1 %2787, label %2828, label %2788, !llvm.loop !503

2788:                                             ; preds = %2781, %2785
  %2789 = phi ptr [ %2786, %2785 ], [ %2783, %2781 ]
  %2790 = getelementptr inbounds %struct.bScreen, ptr %2789, i64 0, i32 3
  %2791 = load ptr, ptr %2790, align 8, !tbaa !42
  %2792 = icmp eq ptr %2791, null
  br i1 %2792, label %2785, label %2796

2793:                                             ; preds = %2825, %2796
  %2794 = load ptr, ptr %2797, align 8, !tbaa !42
  %2795 = icmp eq ptr %2794, null
  br i1 %2795, label %2785, label %2796, !llvm.loop !504

2796:                                             ; preds = %2788, %2793
  %2797 = phi ptr [ %2794, %2793 ], [ %2791, %2788 ]
  %2798 = getelementptr inbounds %struct.ScrArea, ptr %2797, i64 0, i32 19
  %2799 = load ptr, ptr %2798, align 8, !tbaa !42
  %2800 = icmp eq ptr %2799, null
  br i1 %2800, label %2793, label %2801

2801:                                             ; preds = %2796, %2825
  %2802 = phi ptr [ %2826, %2825 ], [ %2799, %2796 ]
  %2803 = getelementptr inbounds %struct.SpaceLink, ptr %2802, i64 0, i32 3
  %2804 = load i32, ptr %2803, align 8, !tbaa !112
  switch i32 %2804, label %2825 [
    i32 1, label %2805
    i32 8, label %2809
    i32 6, label %2813
    i32 16, label %2817
    i32 20, label %2821
  ]

2805:                                             ; preds = %2801
  %2806 = getelementptr inbounds %struct.View3D, ptr %2802, i64 0, i32 29
  %2807 = load i16, ptr %2806, align 2, !tbaa !116
  %2808 = or i16 %2807, 16
  store i16 %2808, ptr %2806, align 2, !tbaa !116
  br label %2825

2809:                                             ; preds = %2801
  %2810 = getelementptr inbounds %struct.SpaceSeq, ptr %2802, i64 0, i32 13
  %2811 = load i32, ptr %2810, align 8, !tbaa !505
  %2812 = or i32 %2811, 16
  store i32 %2812, ptr %2810, align 8, !tbaa !505
  br label %2825

2813:                                             ; preds = %2801
  %2814 = getelementptr inbounds %struct.SpaceImage, ptr %2802, i64 0, i32 4
  %2815 = load i32, ptr %2814, align 4, !tbaa !508
  %2816 = or i32 %2815, 4194304
  store i32 %2816, ptr %2814, align 4, !tbaa !508
  br label %2825

2817:                                             ; preds = %2801
  %2818 = getelementptr inbounds %struct.SpaceNode, ptr %2802, i64 0, i32 9
  %2819 = load i16, ptr %2818, align 8, !tbaa !512
  %2820 = or i16 %2819, 4
  store i16 %2820, ptr %2818, align 8, !tbaa !512
  br label %2825

2821:                                             ; preds = %2801
  %2822 = getelementptr inbounds %struct.SpaceClip, ptr %2802, i64 0, i32 12
  %2823 = load i32, ptr %2822, align 8, !tbaa !514
  %2824 = or i32 %2823, 4096
  store i32 %2824, ptr %2822, align 8, !tbaa !514
  br label %2825

2825:                                             ; preds = %2805, %2809, %2813, %2817, %2821, %2801
  %2826 = load ptr, ptr %2802, align 8, !tbaa !42
  %2827 = icmp eq ptr %2826, null
  br i1 %2827, label %2793, label %2801, !llvm.loop !515

2828:                                             ; preds = %2785, %2781, %2777, %2775
  br i1 %2758, label %2834, label %2829

2829:                                             ; preds = %2828
  switch i16 %2757, label %3032 [
    i16 265, label %2830
    i16 266, label %3012
  ]

2830:                                             ; preds = %2829
  %2831 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %2832 = load i16, ptr %2831, align 2, !tbaa !83
  %2833 = icmp slt i16 %2832, 5
  br i1 %2833, label %2834, label %3011

2834:                                             ; preds = %2830, %2828
  %2835 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %2836 = load ptr, ptr %2835, align 8, !tbaa !42
  %2837 = icmp eq ptr %2836, null
  br i1 %2837, label %2917, label %2838

2838:                                             ; preds = %2834
  %2839 = getelementptr inbounds %struct.SeqIterator, ptr %29, i64 0, i32 4
  %2840 = getelementptr inbounds %struct.SeqIterator, ptr %29, i64 0, i32 3
  br label %2841

2841:                                             ; preds = %2838, %2914
  %2842 = phi ptr [ %2836, %2838 ], [ %2915, %2914 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %29) #8
  %2843 = getelementptr inbounds %struct.Scene, ptr %2842, i64 0, i32 19
  %2844 = load ptr, ptr %2843, align 8, !tbaa !398
  call void @BKE_sequence_iterator_begin(ptr noundef %2844, ptr noundef nonnull %29, i8 noundef zeroext 0) #8
  %2845 = load i32, ptr %2839, align 8, !tbaa !399
  %2846 = icmp eq i32 %2845, 0
  br i1 %2846, label %2859, label %2847

2847:                                             ; preds = %2841, %2856
  %2848 = load ptr, ptr %2840, align 8, !tbaa !401
  %2849 = getelementptr inbounds %struct.Sequence, ptr %2848, i64 0, i32 5
  %2850 = load i32, ptr %2849, align 8, !tbaa !516
  %2851 = and i32 %2850, 64
  %2852 = icmp eq i32 %2851, 0
  br i1 %2852, label %2855, label %2853

2853:                                             ; preds = %2847
  %2854 = getelementptr inbounds %struct.Sequence, ptr %2848, i64 0, i32 49
  store i8 0, ptr %2854, align 4, !tbaa !517
  br label %2856

2855:                                             ; preds = %2847
  call void @BKE_sequence_alpha_mode_from_extension(ptr noundef %2848) #8
  br label %2856

2856:                                             ; preds = %2853, %2855
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %29) #8
  %2857 = load i32, ptr %2839, align 8, !tbaa !399
  %2858 = icmp eq i32 %2857, 0
  br i1 %2858, label %2859, label %2847, !llvm.loop !518

2859:                                             ; preds = %2856, %2841
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %29) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %29) #8
  %2860 = getelementptr inbounds %struct.Scene, ptr %2842, i64 0, i32 22, i32 80
  %2861 = load i16, ptr %2860, align 4, !tbaa !519
  %2862 = icmp eq i16 %2861, 0
  br i1 %2862, label %2863, label %2864

2863:                                             ; preds = %2859
  store i16 256, ptr %2860, align 4, !tbaa !519
  br label %2864

2864:                                             ; preds = %2863, %2859
  %2865 = getelementptr inbounds %struct.Scene, ptr %2842, i64 0, i32 3
  %2866 = load ptr, ptr %2865, align 8, !tbaa !520
  %2867 = icmp eq ptr %2866, null
  br i1 %2867, label %2910, label %2868

2868:                                             ; preds = %2864
  %2869 = getelementptr inbounds %struct.ID, ptr %2842, i64 0, i32 3
  %2870 = load ptr, ptr %2869, align 8, !tbaa !521
  %2871 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %2870, ptr noundef nonnull %2866) #8
  %2872 = icmp eq ptr %2871, null
  br i1 %2872, label %2914, label %2873

2873:                                             ; preds = %2868
  %2874 = getelementptr inbounds %struct.World, ptr %2871, i64 0, i32 6
  %2875 = load float, ptr %2874, align 4, !tbaa !72
  %2876 = fcmp oeq float %2875, 0.000000e+00
  br i1 %2876, label %2877, label %2886

2877:                                             ; preds = %2873
  %2878 = getelementptr inbounds %struct.World, ptr %2871, i64 0, i32 7
  %2879 = load float, ptr %2878, align 4, !tbaa !72
  %2880 = fcmp oeq float %2879, 0.000000e+00
  br i1 %2880, label %2881, label %2886

2881:                                             ; preds = %2877
  %2882 = getelementptr inbounds %struct.World, ptr %2871, i64 0, i32 8
  %2883 = load float, ptr %2882, align 4, !tbaa !72
  %2884 = fcmp oeq float %2883, 0.000000e+00
  %2885 = zext i1 %2884 to i8
  br label %2886

2886:                                             ; preds = %2873, %2877, %2881
  %2887 = phi i8 [ 0, %2877 ], [ 0, %2873 ], [ %2885, %2881 ]
  %2888 = icmp eq i8 %2887, 0
  br i1 %2888, label %2914, label %2889

2889:                                             ; preds = %2886
  %2890 = getelementptr inbounds %struct.World, ptr %2871, i64 0, i32 22
  %2891 = load i16, ptr %2890, align 8, !tbaa !522
  %2892 = and i16 %2891, 1
  %2893 = icmp eq i16 %2892, 0
  br i1 %2893, label %2910, label %2894

2894:                                             ; preds = %2889
  %2895 = getelementptr inbounds %struct.World, ptr %2871, i64 0, i32 9
  %2896 = load float, ptr %2895, align 4, !tbaa !72
  %2897 = fcmp oeq float %2896, 0.000000e+00
  br i1 %2897, label %2898, label %2907

2898:                                             ; preds = %2894
  %2899 = getelementptr inbounds %struct.World, ptr %2871, i64 0, i32 10
  %2900 = load float, ptr %2899, align 4, !tbaa !72
  %2901 = fcmp oeq float %2900, 0.000000e+00
  br i1 %2901, label %2902, label %2907

2902:                                             ; preds = %2898
  %2903 = getelementptr inbounds %struct.World, ptr %2871, i64 0, i32 11
  %2904 = load float, ptr %2903, align 4, !tbaa !72
  %2905 = fcmp oeq float %2904, 0.000000e+00
  %2906 = zext i1 %2905 to i8
  br label %2907

2907:                                             ; preds = %2894, %2898, %2902
  %2908 = phi i8 [ 0, %2898 ], [ 0, %2894 ], [ %2906, %2902 ]
  %2909 = icmp eq i8 %2908, 0
  br i1 %2909, label %2914, label %2910

2910:                                             ; preds = %2889, %2907, %2864
  %2911 = getelementptr inbounds %struct.ID, ptr %2842, i64 0, i32 4, i64 2
  %2912 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull %2911)
  %2913 = getelementptr inbounds %struct.Scene, ptr %2842, i64 0, i32 22, i32 53
  store i16 1, ptr %2913, align 8, !tbaa !523
  br label %2914

2914:                                             ; preds = %2907, %2886, %2868, %2910
  %2915 = load ptr, ptr %2842, align 8, !tbaa !42
  %2916 = icmp eq ptr %2915, null
  br i1 %2916, label %2917, label %2841, !llvm.loop !524

2917:                                             ; preds = %2914, %2834
  %2918 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 19
  %2919 = load ptr, ptr %2918, align 8, !tbaa !42
  %2920 = icmp eq ptr %2919, null
  br i1 %2920, label %2933, label %2921

2921:                                             ; preds = %2917, %2930
  %2922 = phi ptr [ %2931, %2930 ], [ %2919, %2917 ]
  %2923 = getelementptr inbounds %struct.Image, ptr %2922, i64 0, i32 10
  %2924 = load i16, ptr %2923, align 2, !tbaa !418
  %2925 = and i16 %2924, 4
  %2926 = icmp eq i16 %2925, 0
  br i1 %2926, label %2929, label %2927

2927:                                             ; preds = %2921
  %2928 = getelementptr inbounds %struct.Image, ptr %2922, i64 0, i32 37
  store i8 0, ptr %2928, align 8, !tbaa !525
  br label %2930

2929:                                             ; preds = %2921
  call void @BKE_image_alpha_mode_from_extension(ptr noundef nonnull %2922) #8
  br label %2930

2930:                                             ; preds = %2927, %2929
  %2931 = load ptr, ptr %2922, align 8, !tbaa !42
  %2932 = icmp eq ptr %2931, null
  br i1 %2932, label %2933, label %2921, !llvm.loop !526

2933:                                             ; preds = %2930, %2917
  %2934 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %2935 = load ptr, ptr %2934, align 8, !tbaa !42
  %2936 = icmp eq ptr %2935, null
  br i1 %2936, label %2964, label %2937

2937:                                             ; preds = %2933, %2961
  %2938 = phi ptr [ %2962, %2961 ], [ %2935, %2933 ]
  %2939 = getelementptr inbounds %struct.Tex, ptr %2938, i64 0, i32 32
  %2940 = load i16, ptr %2939, align 8, !tbaa !527
  %2941 = icmp eq i16 %2940, 8
  br i1 %2941, label %2942, label %2961

2942:                                             ; preds = %2937
  %2943 = getelementptr inbounds %struct.Tex, ptr %2938, i64 0, i32 30
  %2944 = load i16, ptr %2943, align 4, !tbaa !528
  %2945 = and i16 %2944, 2
  %2946 = icmp eq i16 %2945, 0
  br i1 %2946, label %2947, label %2961

2947:                                             ; preds = %2942
  %2948 = getelementptr inbounds %struct.ID, ptr %2938, i64 0, i32 3
  %2949 = load ptr, ptr %2948, align 8, !tbaa !529
  %2950 = getelementptr inbounds %struct.Tex, ptr %2938, i64 0, i32 54
  %2951 = load ptr, ptr %2950, align 8, !tbaa !530
  %2952 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %2949, ptr noundef %2951) #8
  %2953 = icmp eq ptr %2952, null
  br i1 %2953, label %2961, label %2954

2954:                                             ; preds = %2947
  %2955 = getelementptr inbounds %struct.Image, ptr %2952, i64 0, i32 10
  %2956 = load i16, ptr %2955, align 2, !tbaa !418
  %2957 = and i16 %2956, 4
  %2958 = icmp eq i16 %2957, 0
  br i1 %2958, label %2959, label %2961

2959:                                             ; preds = %2954
  %2960 = or i16 %2956, 4096
  store i16 %2960, ptr %2955, align 2, !tbaa !418
  br label %2961

2961:                                             ; preds = %2937, %2942, %2959, %2954, %2947
  %2962 = load ptr, ptr %2938, align 8, !tbaa !42
  %2963 = icmp eq ptr %2962, null
  br i1 %2963, label %2964, label %2937, !llvm.loop !531

2964:                                             ; preds = %2961, %2933
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %30) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %31) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %32) #8
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %30, ptr noundef %2) #8
  %2965 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %30, ptr noundef nonnull %31, ptr noundef nonnull %32) #8
  %2966 = icmp eq i8 %2965, 1
  br i1 %2966, label %2967, label %3010

2967:                                             ; preds = %2964, %3007
  %2968 = load ptr, ptr %31, align 8, !tbaa !42
  %2969 = icmp eq ptr %2968, null
  br i1 %2969, label %3007, label %2970

2970:                                             ; preds = %2967
  %2971 = getelementptr inbounds %struct.bNodeTree, ptr %2968, i64 0, i32 9
  %2972 = load i32, ptr %2971, align 8, !tbaa !93
  %2973 = icmp eq i32 %2972, 1
  br i1 %2973, label %2974, label %3007

2974:                                             ; preds = %2970
  %2975 = getelementptr inbounds %struct.bNodeTree, ptr %2968, i64 0, i32 7
  %2976 = load ptr, ptr %2975, align 8, !tbaa !42
  %2977 = icmp eq ptr %2976, null
  br i1 %2977, label %3007, label %2978

2978:                                             ; preds = %2974, %3004
  %2979 = phi ptr [ %3005, %3004 ], [ %2976, %2974 ]
  %2980 = getelementptr inbounds %struct.bNode, ptr %2979, i64 0, i32 8
  %2981 = load i16, ptr %2980, align 4, !tbaa !66
  %2982 = icmp eq i16 %2981, 220
  br i1 %2982, label %2983, label %3004

2983:                                             ; preds = %2978
  %2984 = load ptr, ptr %31, align 8, !tbaa !42
  %2985 = getelementptr inbounds %struct.ID, ptr %2984, i64 0, i32 3
  %2986 = load ptr, ptr %2985, align 8, !tbaa !532
  %2987 = getelementptr inbounds %struct.bNode, ptr %2979, i64 0, i32 20
  %2988 = load ptr, ptr %2987, align 8, !tbaa !533
  %2989 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %2986, ptr noundef %2988) #8
  %2990 = icmp eq ptr %2989, null
  br i1 %2990, label %3004, label %2991

2991:                                             ; preds = %2983
  %2992 = getelementptr inbounds %struct.Image, ptr %2989, i64 0, i32 10
  %2993 = load i16, ptr %2992, align 2, !tbaa !418
  %2994 = and i16 %2993, 4
  %2995 = icmp eq i16 %2994, 0
  br i1 %2995, label %2996, label %3004

2996:                                             ; preds = %2991
  %2997 = getelementptr inbounds %struct.Image, ptr %2989, i64 0, i32 37
  %2998 = load i8, ptr %2997, align 8, !tbaa !525
  %2999 = icmp eq i8 %2998, 0
  br i1 %2999, label %3000, label %3004

3000:                                             ; preds = %2996
  %3001 = getelementptr inbounds %struct.bNode, ptr %2979, i64 0, i32 33
  %3002 = load i16, ptr %3001, align 8, !tbaa !332
  %3003 = or i16 %3002, 1
  store i16 %3003, ptr %3001, align 8, !tbaa !332
  br label %3004

3004:                                             ; preds = %2983, %3000, %2996, %2991, %2978
  %3005 = load ptr, ptr %2979, align 8, !tbaa !42
  %3006 = icmp eq ptr %3005, null
  br i1 %3006, label %3007, label %2978, !llvm.loop !534

3007:                                             ; preds = %3004, %2974, %2970, %2967
  %3008 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %30, ptr noundef nonnull %31, ptr noundef nonnull %32) #8
  %3009 = icmp eq i8 %3008, 1
  br i1 %3009, label %2967, label %3010, !llvm.loop !535

3010:                                             ; preds = %3007, %2964
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %32) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %31) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %30) #8
  br label %3032

3011:                                             ; preds = %2830
  switch i16 %2757, label %3032 [
    i16 265, label %3016
    i16 266, label %3012
  ]

3012:                                             ; preds = %2829, %3011
  %3013 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3014 = load i16, ptr %3013, align 2, !tbaa !83
  %3015 = icmp slt i16 %3014, 1
  br i1 %3015, label %3016, label %3032

3016:                                             ; preds = %3011, %3012
  %3017 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 18
  %3018 = load ptr, ptr %3017, align 8, !tbaa !42
  %3019 = icmp eq ptr %3018, null
  br i1 %3019, label %3032, label %3020

3020:                                             ; preds = %3016, %3029
  %3021 = phi ptr [ %3030, %3029 ], [ %3018, %3016 ]
  %3022 = getelementptr inbounds %struct.Tex, ptr %3021, i64 0, i32 32
  %3023 = load i16, ptr %3022, align 8, !tbaa !527
  %3024 = icmp eq i16 %3023, 8
  br i1 %3024, label %3025, label %3029

3025:                                             ; preds = %3020
  %3026 = getelementptr inbounds %struct.Tex, ptr %3021, i64 0, i32 30
  %3027 = load i16, ptr %3026, align 4, !tbaa !528
  %3028 = or i16 %3027, 2
  store i16 %3028, ptr %3026, align 4, !tbaa !528
  br label %3029

3029:                                             ; preds = %3020, %3025
  %3030 = load ptr, ptr %3021, align 8, !tbaa !42
  %3031 = icmp eq ptr %3030, null
  br i1 %3031, label %3032, label %3020, !llvm.loop !536

3032:                                             ; preds = %3029, %3016, %2829, %3011, %3012, %3010
  %3033 = load i16, ptr %55, align 8, !tbaa !34
  %3034 = icmp slt i16 %3033, 265
  br i1 %3034, label %3041, label %3035

3035:                                             ; preds = %3032
  %3036 = icmp eq i16 %3033, 265
  br i1 %3036, label %3037, label %3103

3037:                                             ; preds = %3035
  %3038 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3039 = load i16, ptr %3038, align 2, !tbaa !83
  %3040 = icmp slt i16 %3039, 7
  br i1 %3040, label %3041, label %3103

3041:                                             ; preds = %3037, %3032
  %3042 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 15
  %3043 = load ptr, ptr %3042, align 8, !tbaa !42
  %3044 = icmp eq ptr %3043, null
  br i1 %3044, label %3103, label %3045

3045:                                             ; preds = %3041, %3100
  %3046 = phi ptr [ %3101, %3100 ], [ %3043, %3041 ]
  %3047 = getelementptr inbounds %struct.Curve, ptr %3046, i64 0, i32 23
  %3048 = load i32, ptr %3047, align 4, !tbaa !537
  %3049 = and i32 %3048, 6
  %3050 = icmp eq i32 %3049, 0
  br i1 %3050, label %3100, label %3051

3051:                                             ; preds = %3045
  %3052 = getelementptr inbounds %struct.Curve, ptr %3046, i64 0, i32 25
  %3053 = load float, ptr %3052, align 4, !tbaa !538
  %3054 = fcmp une float %3053, 0.000000e+00
  br i1 %3054, label %3059, label %3055

3055:                                             ; preds = %3051
  %3056 = getelementptr inbounds %struct.Curve, ptr %3046, i64 0, i32 26
  %3057 = load float, ptr %3056, align 8, !tbaa !539
  %3058 = fcmp une float %3057, 0.000000e+00
  br i1 %3058, label %3059, label %3100

3059:                                             ; preds = %3055, %3051
  %3060 = getelementptr inbounds %struct.Curve, ptr %3046, i64 0, i32 3
  %3061 = load ptr, ptr %3060, align 8, !tbaa !42
  %3062 = icmp eq ptr %3061, null
  br i1 %3062, label %3100, label %3063

3063:                                             ; preds = %3059, %3097
  %3064 = phi ptr [ %3098, %3097 ], [ %3061, %3059 ]
  %3065 = getelementptr inbounds %struct.Nurb, ptr %3064, i64 0, i32 18
  %3066 = load ptr, ptr %3065, align 8, !tbaa !540
  %3067 = icmp eq ptr %3066, null
  br i1 %3067, label %3079, label %3068

3068:                                             ; preds = %3063
  %3069 = getelementptr inbounds %struct.Nurb, ptr %3064, i64 0, i32 6
  %3070 = load i32, ptr %3069, align 8, !tbaa !542
  %3071 = icmp eq i32 %3070, 0
  br i1 %3071, label %3097, label %3072

3072:                                             ; preds = %3068, %3072
  %3073 = phi ptr [ %3077, %3072 ], [ %3066, %3068 ]
  %3074 = phi i32 [ %3075, %3072 ], [ %3070, %3068 ]
  %3075 = add nsw i32 %3074, -1
  %3076 = getelementptr inbounds %struct.BezTriple, ptr %3073, i64 0, i32 3
  store float 1.000000e+00, ptr %3076, align 4, !tbaa !543
  %3077 = getelementptr inbounds %struct.BezTriple, ptr %3073, i64 1
  %3078 = icmp eq i32 %3075, 0
  br i1 %3078, label %3097, label %3072, !llvm.loop !545

3079:                                             ; preds = %3063
  %3080 = getelementptr inbounds %struct.Nurb, ptr %3064, i64 0, i32 17
  %3081 = load ptr, ptr %3080, align 8, !tbaa !546
  %3082 = icmp eq ptr %3081, null
  br i1 %3082, label %3097, label %3083

3083:                                             ; preds = %3079
  %3084 = getelementptr inbounds %struct.Nurb, ptr %3064, i64 0, i32 6
  %3085 = load i32, ptr %3084, align 8, !tbaa !542
  %3086 = getelementptr inbounds %struct.Nurb, ptr %3064, i64 0, i32 7
  %3087 = load i32, ptr %3086, align 4, !tbaa !547
  %3088 = mul nsw i32 %3087, %3085
  %3089 = icmp eq i32 %3088, 0
  br i1 %3089, label %3097, label %3090

3090:                                             ; preds = %3083, %3090
  %3091 = phi ptr [ %3095, %3090 ], [ %3081, %3083 ]
  %3092 = phi i32 [ %3093, %3090 ], [ %3088, %3083 ]
  %3093 = add nsw i32 %3092, -1
  %3094 = getelementptr inbounds %struct.BPoint, ptr %3091, i64 0, i32 5
  store float 1.000000e+00, ptr %3094, align 4, !tbaa !548
  %3095 = getelementptr inbounds %struct.BPoint, ptr %3091, i64 1
  %3096 = icmp eq i32 %3093, 0
  br i1 %3096, label %3097, label %3090, !llvm.loop !550

3097:                                             ; preds = %3072, %3090, %3068, %3083, %3079
  %3098 = load ptr, ptr %3064, align 8, !tbaa !42
  %3099 = icmp eq ptr %3098, null
  br i1 %3099, label %3100, label %3063, !llvm.loop !551

3100:                                             ; preds = %3097, %3059, %3045, %3055
  %3101 = load ptr, ptr %3046, align 8, !tbaa !42
  %3102 = icmp eq ptr %3101, null
  br i1 %3102, label %3103, label %3045, !llvm.loop !552

3103:                                             ; preds = %3100, %3041, %3037, %3035
  br i1 %3034, label %3110, label %3104

3104:                                             ; preds = %3103
  %3105 = icmp eq i16 %3033, 265
  br i1 %3105, label %3106, label %3118

3106:                                             ; preds = %3104
  %3107 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3108 = load i16, ptr %3107, align 2, !tbaa !83
  %3109 = icmp slt i16 %3108, 9
  br i1 %3109, label %3110, label %3118

3110:                                             ; preds = %3106, %3103
  %3111 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 14
  %3112 = load ptr, ptr %3111, align 8, !tbaa !42
  %3113 = icmp eq ptr %3112, null
  br i1 %3113, label %3118, label %3114

3114:                                             ; preds = %3110, %3114
  %3115 = phi ptr [ %3116, %3114 ], [ %3112, %3110 ]
  call void @BKE_mesh_do_versions_cd_flag_init(ptr noundef nonnull %3115) #8
  %3116 = load ptr, ptr %3115, align 8, !tbaa !42
  %3117 = icmp eq ptr %3116, null
  br i1 %3117, label %3118, label %3114, !llvm.loop !553

3118:                                             ; preds = %3114, %3110, %3106, %3104
  %3119 = load i16, ptr %55, align 8, !tbaa !34
  %3120 = icmp slt i16 %3119, 265
  br i1 %3120, label %3127, label %3121

3121:                                             ; preds = %3118
  %3122 = icmp eq i16 %3119, 265
  br i1 %3122, label %3123, label %3142

3123:                                             ; preds = %3121
  %3124 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3125 = load i16, ptr %3124, align 2, !tbaa !83
  %3126 = icmp slt i16 %3125, 10
  br i1 %3126, label %3127, label %3142

3127:                                             ; preds = %3123, %3118
  %3128 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 36
  %3129 = load ptr, ptr %3128, align 8, !tbaa !42
  %3130 = icmp eq ptr %3129, null
  br i1 %3130, label %3142, label %3131

3131:                                             ; preds = %3127, %3139
  %3132 = phi ptr [ %3140, %3139 ], [ %3129, %3127 ]
  %3133 = getelementptr inbounds %struct.Brush, ptr %3132, i64 0, i32 13
  %3134 = load i16, ptr %3133, align 2, !tbaa !554
  %3135 = and i16 %3134, 16
  %3136 = icmp eq i16 %3135, 0
  br i1 %3136, label %3139, label %3137

3137:                                             ; preds = %3131
  %3138 = getelementptr inbounds %struct.Brush, ptr %3132, i64 0, i32 3, i32 20
  store i8 1, ptr %3138, align 4, !tbaa !555
  br label %3139

3139:                                             ; preds = %3131, %3137
  %3140 = load ptr, ptr %3132, align 8, !tbaa !42
  %3141 = icmp eq ptr %3140, null
  br i1 %3141, label %3142, label %3131, !llvm.loop !556

3142:                                             ; preds = %3139, %3127, %3123, %3121
  br i1 %3120, label %3149, label %3143

3143:                                             ; preds = %3142
  %3144 = icmp eq i16 %3119, 265
  br i1 %3144, label %3145, label %3182

3145:                                             ; preds = %3143
  %3146 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3147 = load i16, ptr %3146, align 2, !tbaa !83
  %3148 = icmp slt i16 %3147, 11
  br i1 %3148, label %3149, label %3182

3149:                                             ; preds = %3145, %3142
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %33) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %34) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %35) #8
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %33, ptr noundef %2) #8
  %3150 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %33, ptr noundef nonnull %34, ptr noundef nonnull %35) #8
  %3151 = icmp eq i8 %3150, 1
  br i1 %3151, label %3152, label %3181

3152:                                             ; preds = %3149, %3178
  %3153 = load ptr, ptr %34, align 8, !tbaa !42
  %3154 = icmp eq ptr %3153, null
  br i1 %3154, label %3178, label %3155

3155:                                             ; preds = %3152
  %3156 = getelementptr inbounds %struct.bNodeTree, ptr %3153, i64 0, i32 9
  %3157 = load i32, ptr %3156, align 8, !tbaa !93
  %3158 = icmp eq i32 %3157, 1
  br i1 %3158, label %3159, label %3178

3159:                                             ; preds = %3155
  %3160 = getelementptr inbounds %struct.bNodeTree, ptr %3153, i64 0, i32 7
  %3161 = load ptr, ptr %3160, align 8, !tbaa !42
  %3162 = icmp eq ptr %3161, null
  br i1 %3162, label %3178, label %3163

3163:                                             ; preds = %3159, %3175
  %3164 = phi ptr [ %3176, %3175 ], [ %3161, %3159 ]
  %3165 = getelementptr inbounds %struct.bNode, ptr %3164, i64 0, i32 8
  %3166 = load i16, ptr %3165, align 4, !tbaa !66
  %3167 = icmp eq i16 %3166, 225
  br i1 %3167, label %3168, label %3175

3168:                                             ; preds = %3163
  %3169 = getelementptr inbounds %struct.bNode, ptr %3164, i64 0, i32 21
  %3170 = load ptr, ptr %3169, align 8, !tbaa !96
  %3171 = icmp eq ptr %3170, null
  br i1 %3171, label %3172, label %3175

3172:                                             ; preds = %3168
  %3173 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %3174 = call ptr %3173(i64 noundef 8, ptr noundef nonnull @.str.5) #8
  store ptr %3174, ptr %3169, align 8, !tbaa !96
  br label %3175

3175:                                             ; preds = %3163, %3168, %3172
  %3176 = load ptr, ptr %3164, align 8, !tbaa !42
  %3177 = icmp eq ptr %3176, null
  br i1 %3177, label %3178, label %3163, !llvm.loop !557

3178:                                             ; preds = %3175, %3159, %3155, %3152
  %3179 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %33, ptr noundef nonnull %34, ptr noundef nonnull %35) #8
  %3180 = icmp eq i8 %3179, 1
  br i1 %3180, label %3152, label %3181, !llvm.loop !558

3181:                                             ; preds = %3178, %3149
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %35) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %34) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %33) #8
  br label %3182

3182:                                             ; preds = %3181, %3145, %3143
  %3183 = load i16, ptr %55, align 8, !tbaa !34
  %3184 = icmp slt i16 %3183, 266
  br i1 %3184, label %3191, label %3185

3185:                                             ; preds = %3182
  %3186 = icmp eq i16 %3183, 266
  br i1 %3186, label %3187, label %3378

3187:                                             ; preds = %3185
  %3188 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3189 = load i16, ptr %3188, align 2, !tbaa !83
  %3190 = icmp slt i16 %3189, 2
  br i1 %3190, label %3191, label %3378

3191:                                             ; preds = %3187, %3182
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %36) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %37) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %38) #8
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %36, ptr noundef %2) #8
  %3192 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %36, ptr noundef nonnull %37, ptr noundef nonnull %38) #8
  %3193 = icmp eq i8 %3192, 1
  br i1 %3193, label %3194, label %3377

3194:                                             ; preds = %3191, %3374
  %3195 = load ptr, ptr %37, align 8, !tbaa !42
  %3196 = icmp eq ptr %3195, null
  br i1 %3196, label %3374, label %3197

3197:                                             ; preds = %3194
  %3198 = getelementptr inbounds %struct.bNodeTree, ptr %3195, i64 0, i32 2
  store ptr null, ptr %3198, align 8, !tbaa !559
  %3199 = getelementptr inbounds %struct.bNodeTree, ptr %3195, i64 0, i32 9
  %3200 = load i32, ptr %3199, align 8, !tbaa !93
  switch i32 %3200, label %3207 [
    i32 1, label %3201
    i32 0, label %3203
    i32 2, label %3205
  ]

3201:                                             ; preds = %3197
  %3202 = getelementptr inbounds %struct.bNodeTree, ptr %3195, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %3202, ptr noundef nonnull align 1 dereferenceable(19) @.str.6, i64 19, i1 false) #8
  br label %3207

3203:                                             ; preds = %3197
  %3204 = getelementptr inbounds %struct.bNodeTree, ptr %3195, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %3204, ptr noundef nonnull align 1 dereferenceable(15) @.str.7, i64 15, i1 false) #8
  br label %3207

3205:                                             ; preds = %3197
  %3206 = getelementptr inbounds %struct.bNodeTree, ptr %3195, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %3206, ptr noundef nonnull align 1 dereferenceable(16) @.str.8, i64 16, i1 false) #8
  br label %3207

3207:                                             ; preds = %3205, %3203, %3201, %3197
  %3208 = getelementptr inbounds %struct.bNodeTree, ptr %3195, i64 0, i32 7
  %3209 = load ptr, ptr %3208, align 8, !tbaa !42
  %3210 = icmp eq ptr %3209, null
  br i1 %3210, label %3262, label %3214

3211:                                             ; preds = %3255, %3251
  %3212 = load ptr, ptr %3215, align 8, !tbaa !42
  %3213 = icmp eq ptr %3212, null
  br i1 %3213, label %3262, label %3214, !llvm.loop !560

3214:                                             ; preds = %3207, %3211
  %3215 = phi ptr [ %3212, %3211 ], [ %3209, %3207 ]
  %3216 = getelementptr inbounds %struct.bNode, ptr %3215, i64 0, i32 5
  %3217 = getelementptr inbounds %struct.bNode, ptr %3215, i64 0, i32 8
  %3218 = load i16, ptr %3217, align 4, !tbaa !66
  %3219 = icmp eq i16 %3218, 2
  br i1 %3219, label %3220, label %3223

3220:                                             ; preds = %3214
  %3221 = load i32, ptr %3199, align 8, !tbaa !93
  %3222 = icmp ult i32 %3221, 3
  br i1 %3222, label %3226, label %3235

3223:                                             ; preds = %3214
  %3224 = add i16 %3218, -1
  %3225 = icmp ult i16 %3224, 513
  br i1 %3225, label %3229, label %3235

3226:                                             ; preds = %3220
  %3227 = zext nneg i32 %3221 to i64
  %3228 = getelementptr inbounds [3 x ptr], ptr @switch.table.blo_do_versions_260, i64 0, i64 %3227
  br label %3232

3229:                                             ; preds = %3223
  %3230 = zext nneg i16 %3224 to i64
  %3231 = getelementptr inbounds [513 x ptr], ptr @switch.table.blo_do_versions_260.235, i64 0, i64 %3230
  br label %3232

3232:                                             ; preds = %3226, %3229
  %3233 = phi ptr [ %3231, %3229 ], [ %3228, %3226 ]
  %3234 = load ptr, ptr %3233, align 8
  br label %3235

3235:                                             ; preds = %3232, %3220, %3223
  %3236 = phi ptr [ @.str.234, %3223 ], [ @.str.234, %3220 ], [ %3234, %3232 ]
  %3237 = call ptr @BLI_strncpy(ptr noundef nonnull %3216, ptr noundef nonnull %3236, i64 noundef 64) #8
  %3238 = getelementptr inbounds %struct.bNode, ptr %3215, i64 0, i32 7
  %3239 = load i32, ptr %3238, align 8, !tbaa !430
  %3240 = or i32 %3239, 65536
  store i32 %3240, ptr %3238, align 8, !tbaa !430
  %3241 = getelementptr inbounds %struct.bNode, ptr %3215, i64 0, i32 17
  %3242 = load ptr, ptr %3241, align 8, !tbaa !42
  %3243 = icmp eq ptr %3242, null
  br i1 %3243, label %3251, label %3244

3244:                                             ; preds = %3235, %3244
  %3245 = phi ptr [ %3249, %3244 ], [ %3242, %3235 ]
  %3246 = getelementptr inbounds %struct.bNodeSocket, ptr %3245, i64 0, i32 12
  %3247 = call fastcc ptr @node_socket_get_static_idname(ptr noundef nonnull %3245)
  %3248 = call ptr @BLI_strncpy(ptr noundef nonnull %3246, ptr noundef %3247, i64 noundef 64) #8
  %3249 = load ptr, ptr %3245, align 8, !tbaa !42
  %3250 = icmp eq ptr %3249, null
  br i1 %3250, label %3251, label %3244, !llvm.loop !561

3251:                                             ; preds = %3244, %3235
  %3252 = getelementptr inbounds %struct.bNode, ptr %3215, i64 0, i32 18
  %3253 = load ptr, ptr %3252, align 8, !tbaa !42
  %3254 = icmp eq ptr %3253, null
  br i1 %3254, label %3211, label %3255

3255:                                             ; preds = %3251, %3255
  %3256 = phi ptr [ %3260, %3255 ], [ %3253, %3251 ]
  %3257 = getelementptr inbounds %struct.bNodeSocket, ptr %3256, i64 0, i32 12
  %3258 = call fastcc ptr @node_socket_get_static_idname(ptr noundef nonnull %3256)
  %3259 = call ptr @BLI_strncpy(ptr noundef nonnull %3257, ptr noundef %3258, i64 noundef 64) #8
  %3260 = load ptr, ptr %3256, align 8, !tbaa !42
  %3261 = icmp eq ptr %3260, null
  br i1 %3261, label %3211, label %3255, !llvm.loop !562

3262:                                             ; preds = %3211, %3207
  %3263 = getelementptr inbounds %struct.bNodeTree, ptr %3195, i64 0, i32 22
  %3264 = load ptr, ptr %3263, align 8, !tbaa !42
  %3265 = icmp eq ptr %3264, null
  br i1 %3265, label %3273, label %3266

3266:                                             ; preds = %3262, %3266
  %3267 = phi ptr [ %3271, %3266 ], [ %3264, %3262 ]
  %3268 = getelementptr inbounds %struct.bNodeSocket, ptr %3267, i64 0, i32 12
  %3269 = call fastcc ptr @node_socket_get_static_idname(ptr noundef nonnull %3267)
  %3270 = call ptr @BLI_strncpy(ptr noundef nonnull %3268, ptr noundef %3269, i64 noundef 64) #8
  %3271 = load ptr, ptr %3267, align 8, !tbaa !42
  %3272 = icmp eq ptr %3271, null
  br i1 %3272, label %3273, label %3266, !llvm.loop !563

3273:                                             ; preds = %3266, %3262
  %3274 = getelementptr inbounds %struct.bNodeTree, ptr %3195, i64 0, i32 23
  %3275 = load ptr, ptr %3274, align 8, !tbaa !42
  %3276 = icmp eq ptr %3275, null
  br i1 %3276, label %3277, label %3280

3277:                                             ; preds = %3280, %3273
  %3278 = load ptr, ptr %3208, align 8, !tbaa !42
  %3279 = icmp eq ptr %3278, null
  br i1 %3279, label %3290, label %3293

3280:                                             ; preds = %3273, %3280
  %3281 = phi ptr [ %3285, %3280 ], [ %3275, %3273 ]
  %3282 = getelementptr inbounds %struct.bNodeSocket, ptr %3281, i64 0, i32 12
  %3283 = call fastcc ptr @node_socket_get_static_idname(ptr noundef nonnull %3281)
  %3284 = call ptr @BLI_strncpy(ptr noundef nonnull %3282, ptr noundef %3283, i64 noundef 64) #8
  %3285 = load ptr, ptr %3281, align 8, !tbaa !42
  %3286 = icmp eq ptr %3285, null
  br i1 %3286, label %3277, label %3280, !llvm.loop !564

3287:                                             ; preds = %3307, %3303
  %3288 = load ptr, ptr %3294, align 8, !tbaa !42
  %3289 = icmp eq ptr %3288, null
  br i1 %3289, label %3290, label %3293, !llvm.loop !565

3290:                                             ; preds = %3287, %3277
  %3291 = load ptr, ptr %3263, align 8, !tbaa !42
  %3292 = icmp eq ptr %3291, null
  br i1 %3292, label %3312, label %3315

3293:                                             ; preds = %3277, %3287
  %3294 = phi ptr [ %3288, %3287 ], [ %3278, %3277 ]
  %3295 = getelementptr inbounds %struct.bNode, ptr %3294, i64 0, i32 17
  %3296 = load ptr, ptr %3295, align 8, !tbaa !42
  %3297 = icmp eq ptr %3296, null
  br i1 %3297, label %3303, label %3298

3298:                                             ; preds = %3293, %3298
  %3299 = phi ptr [ %3301, %3298 ], [ %3296, %3293 ]
  %3300 = getelementptr inbounds %struct.bNodeSocket, ptr %3299, i64 0, i32 10
  store i16 1, ptr %3300, align 2, !tbaa !566
  %3301 = load ptr, ptr %3299, align 8, !tbaa !42
  %3302 = icmp eq ptr %3301, null
  br i1 %3302, label %3303, label %3298, !llvm.loop !567

3303:                                             ; preds = %3298, %3293
  %3304 = getelementptr inbounds %struct.bNode, ptr %3294, i64 0, i32 18
  %3305 = load ptr, ptr %3304, align 8, !tbaa !42
  %3306 = icmp eq ptr %3305, null
  br i1 %3306, label %3287, label %3307

3307:                                             ; preds = %3303, %3307
  %3308 = phi ptr [ %3310, %3307 ], [ %3305, %3303 ]
  %3309 = getelementptr inbounds %struct.bNodeSocket, ptr %3308, i64 0, i32 10
  store i16 2, ptr %3309, align 2, !tbaa !566
  %3310 = load ptr, ptr %3308, align 8, !tbaa !42
  %3311 = icmp eq ptr %3310, null
  br i1 %3311, label %3287, label %3307, !llvm.loop !568

3312:                                             ; preds = %3315, %3290
  %3313 = load ptr, ptr %3274, align 8, !tbaa !42
  %3314 = icmp eq ptr %3313, null
  br i1 %3314, label %3320, label %3323

3315:                                             ; preds = %3290, %3315
  %3316 = phi ptr [ %3318, %3315 ], [ %3291, %3290 ]
  %3317 = getelementptr inbounds %struct.bNodeSocket, ptr %3316, i64 0, i32 10
  store i16 1, ptr %3317, align 2, !tbaa !566
  %3318 = load ptr, ptr %3316, align 8, !tbaa !42
  %3319 = icmp eq ptr %3318, null
  br i1 %3319, label %3312, label %3315, !llvm.loop !569

3320:                                             ; preds = %3323, %3312
  %3321 = load ptr, ptr %3208, align 8, !tbaa !42
  %3322 = icmp eq ptr %3321, null
  br i1 %3322, label %3331, label %3334

3323:                                             ; preds = %3312, %3323
  %3324 = phi ptr [ %3326, %3323 ], [ %3313, %3312 ]
  %3325 = getelementptr inbounds %struct.bNodeSocket, ptr %3324, i64 0, i32 10
  store i16 2, ptr %3325, align 2, !tbaa !566
  %3326 = load ptr, ptr %3324, align 8, !tbaa !42
  %3327 = icmp eq ptr %3326, null
  br i1 %3327, label %3320, label %3323, !llvm.loop !570

3328:                                             ; preds = %3350, %3346
  %3329 = load ptr, ptr %3335, align 8, !tbaa !42
  %3330 = icmp eq ptr %3329, null
  br i1 %3330, label %3331, label %3334, !llvm.loop !571

3331:                                             ; preds = %3328, %3320
  %3332 = load ptr, ptr %3263, align 8, !tbaa !42
  %3333 = icmp eq ptr %3332, null
  br i1 %3333, label %3357, label %3360

3334:                                             ; preds = %3320, %3328
  %3335 = phi ptr [ %3329, %3328 ], [ %3321, %3320 ]
  %3336 = getelementptr inbounds %struct.bNode, ptr %3335, i64 0, i32 17
  %3337 = load ptr, ptr %3336, align 8, !tbaa !42
  %3338 = icmp eq ptr %3337, null
  br i1 %3338, label %3346, label %3339

3339:                                             ; preds = %3334, %3339
  %3340 = phi ptr [ %3344, %3339 ], [ %3337, %3334 ]
  %3341 = getelementptr inbounds %struct.bNodeSocket, ptr %3340, i64 0, i32 4
  %3342 = getelementptr inbounds %struct.bNodeSocket, ptr %3340, i64 0, i32 5
  %3343 = call ptr @BLI_strncpy(ptr noundef nonnull %3341, ptr noundef nonnull %3342, i64 noundef 64) #8
  call void @BLI_uniquename(ptr noundef nonnull %3336, ptr noundef nonnull %3340, ptr noundef nonnull @.str.24, i8 noundef zeroext 46, i32 noundef 32, i32 noundef 64) #8
  %3344 = load ptr, ptr %3340, align 8, !tbaa !42
  %3345 = icmp eq ptr %3344, null
  br i1 %3345, label %3346, label %3339, !llvm.loop !572

3346:                                             ; preds = %3339, %3334
  %3347 = getelementptr inbounds %struct.bNode, ptr %3335, i64 0, i32 18
  %3348 = load ptr, ptr %3347, align 8, !tbaa !42
  %3349 = icmp eq ptr %3348, null
  br i1 %3349, label %3328, label %3350

3350:                                             ; preds = %3346, %3350
  %3351 = phi ptr [ %3355, %3350 ], [ %3348, %3346 ]
  %3352 = getelementptr inbounds %struct.bNodeSocket, ptr %3351, i64 0, i32 4
  %3353 = getelementptr inbounds %struct.bNodeSocket, ptr %3351, i64 0, i32 5
  %3354 = call ptr @BLI_strncpy(ptr noundef nonnull %3352, ptr noundef nonnull %3353, i64 noundef 64) #8
  call void @BLI_uniquename(ptr noundef nonnull %3347, ptr noundef nonnull %3351, ptr noundef nonnull @.str.24, i8 noundef zeroext 46, i32 noundef 32, i32 noundef 64) #8
  %3355 = load ptr, ptr %3351, align 8, !tbaa !42
  %3356 = icmp eq ptr %3355, null
  br i1 %3356, label %3328, label %3350, !llvm.loop !573

3357:                                             ; preds = %3360, %3331
  %3358 = load ptr, ptr %3274, align 8, !tbaa !42
  %3359 = icmp eq ptr %3358, null
  br i1 %3359, label %3374, label %3367

3360:                                             ; preds = %3331, %3360
  %3361 = phi ptr [ %3365, %3360 ], [ %3332, %3331 ]
  %3362 = getelementptr inbounds %struct.bNodeSocket, ptr %3361, i64 0, i32 4
  %3363 = getelementptr inbounds %struct.bNodeSocket, ptr %3361, i64 0, i32 5
  %3364 = call ptr @BLI_strncpy(ptr noundef nonnull %3362, ptr noundef nonnull %3363, i64 noundef 64) #8
  call void @BLI_uniquename(ptr noundef nonnull %3263, ptr noundef nonnull %3361, ptr noundef nonnull @.str.24, i8 noundef zeroext 46, i32 noundef 32, i32 noundef 64) #8
  %3365 = load ptr, ptr %3361, align 8, !tbaa !42
  %3366 = icmp eq ptr %3365, null
  br i1 %3366, label %3357, label %3360, !llvm.loop !574

3367:                                             ; preds = %3357, %3367
  %3368 = phi ptr [ %3372, %3367 ], [ %3358, %3357 ]
  %3369 = getelementptr inbounds %struct.bNodeSocket, ptr %3368, i64 0, i32 4
  %3370 = getelementptr inbounds %struct.bNodeSocket, ptr %3368, i64 0, i32 5
  %3371 = call ptr @BLI_strncpy(ptr noundef nonnull %3369, ptr noundef nonnull %3370, i64 noundef 64) #8
  call void @BLI_uniquename(ptr noundef nonnull %3274, ptr noundef nonnull %3368, ptr noundef nonnull @.str.24, i8 noundef zeroext 46, i32 noundef 32, i32 noundef 64) #8
  %3372 = load ptr, ptr %3368, align 8, !tbaa !42
  %3373 = icmp eq ptr %3372, null
  br i1 %3373, label %3374, label %3367, !llvm.loop !575

3374:                                             ; preds = %3367, %3357, %3194
  %3375 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %36, ptr noundef nonnull %37, ptr noundef nonnull %38) #8
  %3376 = icmp eq i8 %3375, 1
  br i1 %3376, label %3194, label %3377, !llvm.loop !576

3377:                                             ; preds = %3374, %3191
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %38) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %37) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %36) #8
  br label %3378

3378:                                             ; preds = %3377, %3187, %3185
  %3379 = load i16, ptr %55, align 8, !tbaa !34
  %3380 = icmp slt i16 %3379, 266
  br i1 %3380, label %3387, label %3381

3381:                                             ; preds = %3378
  %3382 = icmp eq i16 %3379, 266
  br i1 %3382, label %3383, label %3426

3383:                                             ; preds = %3381
  %3384 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3385 = load i16, ptr %3384, align 2, !tbaa !83
  %3386 = icmp slt i16 %3385, 2
  br i1 %3386, label %3387, label %3426

3387:                                             ; preds = %3383, %3378
  %3388 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %3389 = load ptr, ptr %3388, align 8, !tbaa !42
  %3390 = icmp eq ptr %3389, null
  br i1 %3390, label %3426, label %3394

3391:                                             ; preds = %3399, %3394
  %3392 = load ptr, ptr %3395, align 8, !tbaa !42
  %3393 = icmp eq ptr %3392, null
  br i1 %3393, label %3426, label %3394, !llvm.loop !577

3394:                                             ; preds = %3387, %3391
  %3395 = phi ptr [ %3392, %3391 ], [ %3389, %3387 ]
  %3396 = getelementptr inbounds %struct.bScreen, ptr %3395, i64 0, i32 3
  %3397 = load ptr, ptr %3396, align 8, !tbaa !42
  %3398 = icmp eq ptr %3397, null
  br i1 %3398, label %3391, label %3402

3399:                                             ; preds = %3423, %3402
  %3400 = load ptr, ptr %3403, align 8, !tbaa !42
  %3401 = icmp eq ptr %3400, null
  br i1 %3401, label %3391, label %3402, !llvm.loop !578

3402:                                             ; preds = %3394, %3399
  %3403 = phi ptr [ %3400, %3399 ], [ %3397, %3394 ]
  %3404 = getelementptr inbounds %struct.ScrArea, ptr %3403, i64 0, i32 19
  %3405 = load ptr, ptr %3404, align 8, !tbaa !42
  %3406 = icmp eq ptr %3405, null
  br i1 %3406, label %3399, label %3407

3407:                                             ; preds = %3402, %3423
  %3408 = phi ptr [ %3424, %3423 ], [ %3405, %3402 ]
  %3409 = getelementptr inbounds %struct.SpaceLink, ptr %3408, i64 0, i32 3
  %3410 = load i32, ptr %3409, align 8, !tbaa !112
  %3411 = icmp eq i32 %3410, 16
  br i1 %3411, label %3412, label %3423

3412:                                             ; preds = %3407
  %3413 = getelementptr inbounds %struct.SpaceNode, ptr %3408, i64 0, i32 18
  %3414 = getelementptr inbounds %struct.SpaceNode, ptr %3408, i64 0, i32 7
  %3415 = getelementptr inbounds %struct.SpaceNode, ptr %3408, i64 0, i32 21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3414, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3413, i8 0, i64 16, i1 false)
  %3416 = load i32, ptr %3415, align 8, !tbaa !579
  switch i32 %3416, label %3423 [
    i32 1, label %3417
    i32 0, label %3419
    i32 2, label %3421
  ]

3417:                                             ; preds = %3412
  %3418 = getelementptr inbounds %struct.SpaceNode, ptr %3408, i64 0, i32 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %3418, ptr noundef nonnull align 1 dereferenceable(19) @.str.6, i64 19, i1 false) #8
  br label %3423

3419:                                             ; preds = %3412
  %3420 = getelementptr inbounds %struct.SpaceNode, ptr %3408, i64 0, i32 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %3420, ptr noundef nonnull align 1 dereferenceable(15) @.str.7, i64 15, i1 false) #8
  br label %3423

3421:                                             ; preds = %3412
  %3422 = getelementptr inbounds %struct.SpaceNode, ptr %3408, i64 0, i32 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %3422, ptr noundef nonnull align 1 dereferenceable(16) @.str.8, i64 16, i1 false) #8
  br label %3423

3423:                                             ; preds = %3417, %3419, %3421, %3412, %3407
  %3424 = load ptr, ptr %3408, align 8, !tbaa !42
  %3425 = icmp eq ptr %3424, null
  br i1 %3425, label %3399, label %3407, !llvm.loop !580

3426:                                             ; preds = %3391, %3387, %3383, %3381
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %39) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %40) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %41) #8
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %39, ptr noundef %2) #8
  %3427 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %39, ptr noundef nonnull %40, ptr noundef nonnull %41) #8
  %3428 = icmp eq i8 %3427, 1
  br i1 %3428, label %3429, label %3450

3429:                                             ; preds = %3426
  %3430 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  br label %3431

3431:                                             ; preds = %3429, %3447
  %3432 = load ptr, ptr %40, align 8, !tbaa !42
  %3433 = icmp eq ptr %3432, null
  br i1 %3433, label %3447, label %3434

3434:                                             ; preds = %3431
  %3435 = getelementptr inbounds %struct.bNodeTree, ptr %3432, i64 0, i32 12
  %3436 = load i32, ptr %3435, align 4, !tbaa !581
  %3437 = or i32 %3436, 2048
  store i32 %3437, ptr %3435, align 4, !tbaa !581
  %3438 = load i16, ptr %55, align 8, !tbaa !34
  %3439 = icmp slt i16 %3438, 266
  br i1 %3439, label %3445, label %3440

3440:                                             ; preds = %3434
  %3441 = icmp eq i16 %3438, 266
  br i1 %3441, label %3442, label %3447

3442:                                             ; preds = %3440
  %3443 = load i16, ptr %3430, align 2, !tbaa !83
  %3444 = icmp slt i16 %3443, 2
  br i1 %3444, label %3445, label %3447

3445:                                             ; preds = %3442, %3434
  %3446 = or i32 %3436, 6144
  store i32 %3446, ptr %3435, align 4, !tbaa !581
  br label %3447

3447:                                             ; preds = %3440, %3442, %3445, %3431
  %3448 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %39, ptr noundef nonnull %40, ptr noundef nonnull %41) #8
  %3449 = icmp eq i8 %3448, 1
  br i1 %3449, label %3431, label %3450, !llvm.loop !582

3450:                                             ; preds = %3447, %3426
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %41) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %40) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %39) #8
  %3451 = load i16, ptr %55, align 8, !tbaa !34
  %3452 = icmp slt i16 %3451, 266
  br i1 %3452, label %3459, label %3453

3453:                                             ; preds = %3450
  %3454 = icmp eq i16 %3451, 266
  br i1 %3454, label %3455, label %3481

3455:                                             ; preds = %3453
  %3456 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3457 = load i16, ptr %3456, align 2, !tbaa !83
  %3458 = icmp slt i16 %3457, 3
  br i1 %3458, label %3459, label %3481

3459:                                             ; preds = %3455, %3450
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %42) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %43) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %44) #8
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %42, ptr noundef %2) #8
  %3460 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %42, ptr noundef nonnull %43, ptr noundef nonnull %44) #8
  %3461 = icmp eq i8 %3460, 1
  br i1 %3461, label %3462, label %3480

3462:                                             ; preds = %3459, %3477
  %3463 = load ptr, ptr %43, align 8, !tbaa !42
  %3464 = icmp eq ptr %3463, null
  %3465 = load ptr, ptr %44, align 8
  %3466 = icmp eq ptr %3465, %3463
  %3467 = select i1 %3464, i1 true, i1 %3466
  br i1 %3467, label %3477, label %3468

3468:                                             ; preds = %3462
  %3469 = getelementptr inbounds %struct.bNodeTree, ptr %3463, i64 0, i32 7
  %3470 = load ptr, ptr %3469, align 8, !tbaa !42
  %3471 = icmp eq ptr %3470, null
  br i1 %3471, label %3477, label %3472

3472:                                             ; preds = %3468, %3472
  %3473 = phi ptr [ %3475, %3472 ], [ %3470, %3468 ]
  %3474 = load ptr, ptr %43, align 8, !tbaa !42
  call void @nodeUniqueName(ptr noundef %3474, ptr noundef nonnull %3473) #8
  %3475 = load ptr, ptr %3473, align 8, !tbaa !42
  %3476 = icmp eq ptr %3475, null
  br i1 %3476, label %3477, label %3472, !llvm.loop !583

3477:                                             ; preds = %3472, %3462, %3468
  %3478 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %42, ptr noundef nonnull %43, ptr noundef nonnull %44) #8
  %3479 = icmp eq i8 %3478, 1
  br i1 %3479, label %3462, label %3480, !llvm.loop !584

3480:                                             ; preds = %3477, %3459
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %44) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %43) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %42) #8
  br label %3481

3481:                                             ; preds = %3480, %3455, %3453
  %3482 = load i16, ptr %55, align 8, !tbaa !34
  %3483 = icmp sgt i16 %3482, 266
  br i1 %3483, label %3508, label %3484

3484:                                             ; preds = %3481
  %3485 = icmp eq i16 %3482, 266
  br i1 %3485, label %3486, label %3490

3486:                                             ; preds = %3484
  %3487 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3488 = load i16, ptr %3487, align 2, !tbaa !83
  %3489 = icmp sgt i16 %3488, 3
  br i1 %3489, label %3508, label %3490

3490:                                             ; preds = %3486, %3484
  %3491 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 36
  %3492 = load ptr, ptr %3491, align 8, !tbaa !42
  %3493 = icmp eq ptr %3492, null
  br i1 %3493, label %3508, label %3494

3494:                                             ; preds = %3490, %3505
  %3495 = phi ptr [ %3506, %3505 ], [ %3492, %3490 ]
  %3496 = getelementptr inbounds %struct.Brush, ptr %3495, i64 0, i32 4
  call void @default_mtex(ptr noundef nonnull %3496) #8
  %3497 = getelementptr inbounds %struct.Brush, ptr %3495, i64 0, i32 13
  %3498 = load i16, ptr %3497, align 2, !tbaa !554
  %3499 = and i16 %3498, 16
  %3500 = icmp eq i16 %3499, 0
  br i1 %3500, label %3505, label %3501

3501:                                             ; preds = %3494
  %3502 = getelementptr inbounds %struct.Brush, ptr %3495, i64 0, i32 21
  %3503 = load i32, ptr %3502, align 4, !tbaa !585
  %3504 = sdiv i32 %3503, 2
  store i32 %3504, ptr %3502, align 4, !tbaa !585
  br label %3505

3505:                                             ; preds = %3494, %3501
  %3506 = load ptr, ptr %3495, align 8, !tbaa !42
  %3507 = icmp eq ptr %3506, null
  br i1 %3507, label %3508, label %3494, !llvm.loop !586

3508:                                             ; preds = %3505, %3490, %3486, %3481
  %3509 = load i16, ptr %55, align 8, !tbaa !34
  %3510 = icmp sgt i16 %3509, 266
  br i1 %3510, label %3531, label %3511

3511:                                             ; preds = %3508
  %3512 = icmp eq i16 %3509, 266
  br i1 %3512, label %3513, label %3517

3513:                                             ; preds = %3511
  %3514 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3515 = load i16, ptr %3514, align 2, !tbaa !83
  %3516 = icmp sgt i16 %3515, 5
  br i1 %3516, label %3531, label %3517

3517:                                             ; preds = %3513, %3511
  %3518 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 36
  %3519 = load ptr, ptr %3518, align 8, !tbaa !42
  %3520 = icmp eq ptr %3519, null
  br i1 %3520, label %3531, label %3521

3521:                                             ; preds = %3517, %3521
  %3522 = phi ptr [ %3529, %3521 ], [ %3519, %3517 ]
  %3523 = getelementptr inbounds %struct.Brush, ptr %3522, i64 0, i32 20
  store i32 0, ptr %3523, align 8, !tbaa !587
  %3524 = getelementptr inbounds %struct.Brush, ptr %3522, i64 0, i32 16
  %3525 = load i32, ptr %3524, align 8, !tbaa !588
  %3526 = and i32 %3525, 2097152
  %3527 = icmp eq i32 %3526, 0
  %3528 = select i1 %3527, i32 0, i32 3
  store i32 %3528, ptr %3523, align 8
  %3529 = load ptr, ptr %3522, align 8, !tbaa !42
  %3530 = icmp eq ptr %3529, null
  br i1 %3530, label %3531, label %3521, !llvm.loop !589

3531:                                             ; preds = %3521, %3517, %3513, %3508
  %3532 = load i16, ptr %55, align 8, !tbaa !34
  %3533 = icmp slt i16 %3532, 267
  br i1 %3533, label %3534, label %3696

3534:                                             ; preds = %3531
  %3535 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 36
  %3536 = load ptr, ptr %3535, align 8, !tbaa !42
  %3537 = icmp eq ptr %3536, null
  br i1 %3537, label %3558, label %3538

3538:                                             ; preds = %3534, %3555
  %3539 = phi ptr [ %3556, %3555 ], [ %3536, %3534 ]
  %3540 = getelementptr inbounds %struct.Brush, ptr %3539, i64 0, i32 54
  %3541 = load float, ptr %3540, align 8, !tbaa !72
  %3542 = fcmp oeq float %3541, 0.000000e+00
  br i1 %3542, label %3543, label %3547

3543:                                             ; preds = %3538
  store float 2.560000e+02, ptr %3540, align 8, !tbaa !72
  %3544 = getelementptr inbounds %struct.Brush, ptr %3539, i64 0, i32 54, i64 1
  store float 2.560000e+02, ptr %3544, align 4, !tbaa !72
  %3545 = getelementptr inbounds %struct.Brush, ptr %3539, i64 0, i32 53
  store float 2.560000e+02, ptr %3545, align 8, !tbaa !72
  %3546 = getelementptr inbounds %struct.Brush, ptr %3539, i64 0, i32 53, i64 1
  store float 2.560000e+02, ptr %3546, align 4, !tbaa !72
  br label %3547

3547:                                             ; preds = %3543, %3538
  %3548 = getelementptr inbounds %struct.Brush, ptr %3539, i64 0, i32 56
  %3549 = load float, ptr %3548, align 8, !tbaa !72
  %3550 = fcmp oeq float %3549, 0.000000e+00
  br i1 %3550, label %3551, label %3555

3551:                                             ; preds = %3547
  store float 2.560000e+02, ptr %3548, align 8, !tbaa !72
  %3552 = getelementptr inbounds %struct.Brush, ptr %3539, i64 0, i32 56, i64 1
  store float 2.560000e+02, ptr %3552, align 4, !tbaa !72
  %3553 = getelementptr inbounds %struct.Brush, ptr %3539, i64 0, i32 55
  store float 2.560000e+02, ptr %3553, align 8, !tbaa !72
  %3554 = getelementptr inbounds %struct.Brush, ptr %3539, i64 0, i32 55, i64 1
  store float 2.560000e+02, ptr %3554, align 4, !tbaa !72
  br label %3555

3555:                                             ; preds = %3547, %3551
  %3556 = load ptr, ptr %3539, align 8, !tbaa !42
  %3557 = icmp eq ptr %3556, null
  br i1 %3557, label %3558, label %3538, !llvm.loop !590

3558:                                             ; preds = %3555, %3534
  br i1 %3533, label %3559, label %3696

3559:                                             ; preds = %3558
  %3560 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %3561 = load ptr, ptr %3560, align 8, !tbaa !42
  %3562 = icmp eq ptr %3561, null
  br i1 %3562, label %3608, label %3563

3563:                                             ; preds = %3559, %3605
  %3564 = phi ptr [ %3606, %3605 ], [ %3561, %3559 ]
  %3565 = getelementptr inbounds %struct.Scene, ptr %3564, i64 0, i32 22, i32 113
  %3566 = load i32, ptr %3565, align 8, !tbaa !591
  %3567 = icmp eq i32 %3566, 0
  br i1 %3567, label %3568, label %3570

3568:                                             ; preds = %3563
  store i32 1, ptr %3565, align 8, !tbaa !591
  %3569 = getelementptr inbounds %struct.Scene, ptr %3564, i64 0, i32 22, i32 114
  store float 1.000000e+00, ptr %3569, align 4, !tbaa !592
  br label %3570

3570:                                             ; preds = %3568, %3563
  %3571 = getelementptr inbounds %struct.Scene, ptr %3564, i64 0, i32 22, i32 60
  %3572 = load ptr, ptr %3571, align 8, !tbaa !42
  %3573 = icmp eq ptr %3572, null
  br i1 %3573, label %3590, label %3574

3574:                                             ; preds = %3570, %3587
  %3575 = phi ptr [ %3588, %3587 ], [ %3572, %3570 ]
  %3576 = getelementptr inbounds %struct.SceneRenderLayer, ptr %3575, i64 0, i32 13, i32 1
  %3577 = load i32, ptr %3576, align 8, !tbaa !593
  %3578 = icmp eq i32 %3577, 0
  br i1 %3578, label %3579, label %3580

3579:                                             ; preds = %3574
  store i32 2, ptr %3576, align 8, !tbaa !593
  br label %3580

3580:                                             ; preds = %3579, %3574
  %3581 = getelementptr inbounds %struct.SceneRenderLayer, ptr %3575, i64 0, i32 13, i32 2
  %3582 = load i32, ptr %3581, align 4, !tbaa !596
  switch i32 %3582, label %3587 [
    i32 6, label %3583
    i32 4, label %3583
  ]

3583:                                             ; preds = %3580, %3580
  store i32 0, ptr %3581, align 4, !tbaa !596
  %3584 = getelementptr inbounds %struct.SceneRenderLayer, ptr %3575, i64 0, i32 13, i32 3
  %3585 = load i32, ptr %3584, align 8, !tbaa !597
  %3586 = or i32 %3585, 32
  store i32 %3586, ptr %3584, align 8, !tbaa !597
  br label %3587

3587:                                             ; preds = %3580, %3583
  %3588 = load ptr, ptr %3575, align 8, !tbaa !42
  %3589 = icmp eq ptr %3588, null
  br i1 %3589, label %3590, label %3574, !llvm.loop !598

3590:                                             ; preds = %3587, %3570
  %3591 = getelementptr inbounds %struct.Scene, ptr %3564, i64 0, i32 20
  %3592 = load ptr, ptr %3591, align 8, !tbaa !213
  %3593 = getelementptr inbounds %struct.ToolSettings, ptr %3592, i64 0, i32 74, i32 7
  %3594 = load i8, ptr %3593, align 4, !tbaa !599
  %3595 = icmp eq i8 %3594, 0
  br i1 %3595, label %3596, label %3605

3596:                                             ; preds = %3590
  %3597 = getelementptr inbounds %struct.ToolSettings, ptr %3592, i64 0, i32 74, i32 2
  store i8 5, ptr %3597, align 1, !tbaa !600
  %3598 = getelementptr inbounds %struct.ToolSettings, ptr %3592, i64 0, i32 74, i32 3
  store float 0.000000e+00, ptr %3598, align 4, !tbaa !601
  %3599 = getelementptr inbounds %struct.ToolSettings, ptr %3592, i64 0, i32 74, i32 4
  store float 0x3FE921FB60000000, ptr %3599, align 4, !tbaa !602
  %3600 = getelementptr inbounds %struct.ToolSettings, ptr %3592, i64 0, i32 74, i32 6
  store float 0x3FB99999A0000000, ptr %3600, align 4, !tbaa !603
  store i8 1, ptr %3593, align 4, !tbaa !599
  %3601 = getelementptr inbounds %struct.ToolSettings, ptr %3592, i64 0, i32 74, i32 9
  store float 0x3FB6571840000000, ptr %3601, align 4, !tbaa !604
  %3602 = getelementptr inbounds %struct.ToolSettings, ptr %3592, i64 0, i32 74, i32 10
  store float 0x3FE921FB60000000, ptr %3602, align 4, !tbaa !605
  %3603 = getelementptr inbounds %struct.ToolSettings, ptr %3592, i64 0, i32 74, i32 11
  store float 0x3FF921FB60000000, ptr %3603, align 4, !tbaa !606
  %3604 = getelementptr inbounds %struct.ToolSettings, ptr %3592, i64 0, i32 74, i32 12
  store float 0x400921FB60000000, ptr %3604, align 4, !tbaa !607
  br label %3605

3605:                                             ; preds = %3596, %3590
  %3606 = load ptr, ptr %3564, align 8, !tbaa !42
  %3607 = icmp eq ptr %3606, null
  br i1 %3607, label %3608, label %3563, !llvm.loop !608

3608:                                             ; preds = %3605, %3559
  %3609 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 44
  %3610 = load ptr, ptr %3609, align 8, !tbaa !42
  %3611 = icmp eq ptr %3610, null
  br i1 %3611, label %3637, label %3612

3612:                                             ; preds = %3608, %3634
  %3613 = phi ptr [ %3635, %3634 ], [ %3610, %3608 ]
  %3614 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %3613, i64 0, i32 38
  %3615 = load i32, ptr %3614, align 4, !tbaa !609
  %3616 = icmp eq i32 %3615, 7
  br i1 %3616, label %3617, label %3618

3617:                                             ; preds = %3612
  store i32 1, ptr %3614, align 4, !tbaa !609
  br label %3618

3618:                                             ; preds = %3617, %3612
  %3619 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %3613, i64 0, i32 7
  %3620 = load i32, ptr %3619, align 4, !tbaa !611
  %3621 = icmp eq i32 %3620, 0
  br i1 %3621, label %3622, label %3624

3622:                                             ; preds = %3618
  store i32 1, ptr %3619, align 4, !tbaa !611
  %3623 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %3613, i64 0, i32 8
  store float 5.000000e-01, ptr %3623, align 8, !tbaa !612
  br label %3624

3624:                                             ; preds = %3622, %3618
  %3625 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %3613, i64 0, i32 11
  %3626 = load i32, ptr %3625, align 4, !tbaa !613
  %3627 = icmp eq i32 %3626, 0
  br i1 %3627, label %3628, label %3629

3628:                                             ; preds = %3624
  store i32 1, ptr %3625, align 4, !tbaa !613
  br label %3629

3629:                                             ; preds = %3628, %3624
  %3630 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %3613, i64 0, i32 12
  %3631 = load i32, ptr %3630, align 8, !tbaa !614
  %3632 = icmp eq i32 %3631, 0
  br i1 %3632, label %3633, label %3634

3633:                                             ; preds = %3629
  store i32 3, ptr %3630, align 8, !tbaa !614
  br label %3634

3634:                                             ; preds = %3629, %3633
  %3635 = load ptr, ptr %3613, align 8, !tbaa !42
  %3636 = icmp eq ptr %3635, null
  br i1 %3636, label %3637, label %3612, !llvm.loop !615

3637:                                             ; preds = %3634, %3608
  br i1 %3533, label %3638, label %3696

3638:                                             ; preds = %3637
  %3639 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  br label %3640

3640:                                             ; preds = %3678, %3638
  %3641 = phi ptr [ %3639, %3638 ], [ %3643, %3678 ]
  %3642 = phi i32 [ 0, %3638 ], [ %3679, %3678 ]
  %3643 = load ptr, ptr %3641, align 8, !tbaa !42
  %3644 = icmp eq ptr %3643, null
  br i1 %3644, label %3681, label %3645

3645:                                             ; preds = %3640
  %3646 = getelementptr inbounds %struct.bScreen, ptr %3643, i64 0, i32 3
  br label %3647

3647:                                             ; preds = %3675, %3645
  %3648 = phi i32 [ %3642, %3645 ], [ %3676, %3675 ]
  %3649 = phi ptr [ %3646, %3645 ], [ %3650, %3675 ]
  %3650 = load ptr, ptr %3649, align 8, !tbaa !42
  %3651 = icmp eq ptr %3650, null
  br i1 %3651, label %3678, label %3652

3652:                                             ; preds = %3647
  %3653 = getelementptr inbounds %struct.ScrArea, ptr %3650, i64 0, i32 19
  %3654 = load ptr, ptr %3653, align 8, !tbaa !42
  %3655 = icmp eq ptr %3654, null
  br i1 %3655, label %3675, label %3656

3656:                                             ; preds = %3652, %3671
  %3657 = phi ptr [ %3673, %3671 ], [ %3654, %3652 ]
  %3658 = phi i32 [ %3672, %3671 ], [ %3648, %3652 ]
  %3659 = getelementptr inbounds %struct.SpaceLink, ptr %3657, i64 0, i32 3
  %3660 = load i32, ptr %3659, align 8, !tbaa !112
  %3661 = icmp eq i32 %3660, 16
  br i1 %3661, label %3662, label %3671

3662:                                             ; preds = %3656
  %3663 = getelementptr inbounds %struct.SpaceNode, ptr %3657, i64 0, i32 17, i32 1
  %3664 = load ptr, ptr %3663, align 8, !tbaa !616
  %3665 = icmp eq ptr %3664, null
  br i1 %3665, label %3669, label %3666

3666:                                             ; preds = %3662
  %3667 = getelementptr inbounds %struct.bNodeTreePath, ptr %3664, i64 0, i32 3
  %3668 = load i32, ptr %3667, align 8, !tbaa.struct !617
  br label %3669

3669:                                             ; preds = %3662, %3666
  %3670 = phi i32 [ %3668, %3666 ], [ %3658, %3662 ]
  br i1 %3665, label %3671, label %3675

3671:                                             ; preds = %3669, %3656
  %3672 = phi i32 [ %3670, %3669 ], [ %3658, %3656 ]
  %3673 = load ptr, ptr %3657, align 8, !tbaa !42
  %3674 = icmp eq ptr %3673, null
  br i1 %3674, label %3675, label %3656, !llvm.loop !618

3675:                                             ; preds = %3671, %3669, %3652
  %3676 = phi i32 [ %3648, %3652 ], [ %3672, %3671 ], [ %3670, %3669 ]
  %3677 = icmp eq i32 %3676, 0
  br i1 %3677, label %3647, label %3678

3678:                                             ; preds = %3675, %3647
  %3679 = phi i32 [ %3676, %3675 ], [ %3648, %3647 ]
  %3680 = icmp eq i32 %3679, 0
  br i1 %3680, label %3640, label %3681

3681:                                             ; preds = %3678, %3640
  %3682 = phi i32 [ %3679, %3678 ], [ %3642, %3640 ]
  %3683 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %3684 = load ptr, ptr %3683, align 8, !tbaa !42
  %3685 = icmp eq ptr %3684, null
  br i1 %3685, label %3696, label %3686

3686:                                             ; preds = %3681, %3693
  %3687 = phi ptr [ %3694, %3693 ], [ %3684, %3681 ]
  %3688 = getelementptr inbounds %struct.Scene, ptr %3687, i64 0, i32 18
  %3689 = load ptr, ptr %3688, align 8, !tbaa !65
  %3690 = icmp eq ptr %3689, null
  br i1 %3690, label %3693, label %3691

3691:                                             ; preds = %3686
  %3692 = getelementptr inbounds %struct.bNodeTree, ptr %3689, i64 0, i32 25
  store i32 %3682, ptr %3692, align 8, !tbaa.struct !617
  br label %3693

3693:                                             ; preds = %3686, %3691
  %3694 = load ptr, ptr %3687, align 8, !tbaa !42
  %3695 = icmp eq ptr %3694, null
  br i1 %3695, label %3696, label %3686, !llvm.loop !619

3696:                                             ; preds = %3693, %3681, %3531, %3558, %3637
  %3697 = load i16, ptr %55, align 8, !tbaa !34
  %3698 = icmp slt i16 %3697, 267
  br i1 %3698, label %3705, label %3699

3699:                                             ; preds = %3696
  %3700 = icmp eq i16 %3697, 267
  br i1 %3700, label %3701, label %3740

3701:                                             ; preds = %3699
  %3702 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3703 = load i16, ptr %3702, align 2, !tbaa !83
  %3704 = icmp slt i16 %3703, 1
  br i1 %3704, label %3705, label %3740

3705:                                             ; preds = %3701, %3696
  %3706 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %3707 = load ptr, ptr %3706, align 8, !tbaa !42
  %3708 = icmp eq ptr %3707, null
  br i1 %3708, label %3740, label %3712

3709:                                             ; preds = %3737, %3712
  %3710 = load ptr, ptr %3713, align 8, !tbaa !42
  %3711 = icmp eq ptr %3710, null
  br i1 %3711, label %3740, label %3712, !llvm.loop !620

3712:                                             ; preds = %3705, %3709
  %3713 = phi ptr [ %3710, %3709 ], [ %3707, %3705 ]
  %3714 = getelementptr inbounds %struct.Object, ptr %3713, i64 0, i32 26
  %3715 = load ptr, ptr %3714, align 8, !tbaa !42
  %3716 = icmp eq ptr %3715, null
  br i1 %3716, label %3709, label %3717

3717:                                             ; preds = %3712, %3737
  %3718 = phi ptr [ %3738, %3737 ], [ %3715, %3712 ]
  %3719 = getelementptr inbounds %struct.ModifierData, ptr %3718, i64 0, i32 2
  %3720 = load i32, ptr %3719, align 8, !tbaa !239
  %3721 = icmp eq i32 %3720, 31
  br i1 %3721, label %3722, label %3737

3722:                                             ; preds = %3717
  %3723 = getelementptr inbounds %struct.SmokeModifierData, ptr %3718, i64 0, i32 5
  %3724 = load i32, ptr %3723, align 4, !tbaa !344
  %3725 = and i32 %3724, 1
  %3726 = icmp eq i32 %3725, 0
  br i1 %3726, label %3737, label %3727

3727:                                             ; preds = %3722
  %3728 = getelementptr inbounds %struct.SmokeModifierData, ptr %3718, i64 0, i32 1
  %3729 = load ptr, ptr %3728, align 8, !tbaa !346
  %3730 = icmp eq ptr %3729, null
  br i1 %3730, label %3737, label %3731

3731:                                             ; preds = %3727
  %3732 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3729, i64 0, i32 37
  %3733 = load i32, ptr %3732, align 4, !tbaa !621
  %3734 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3729, i64 0, i32 55
  %3735 = lshr i32 %3733, 5
  %3736 = and i32 %3735, 1
  store i32 %3736, ptr %3734, align 4, !tbaa !622
  br label %3737

3737:                                             ; preds = %3731, %3722, %3727, %3717
  %3738 = load ptr, ptr %3718, align 8, !tbaa !42
  %3739 = icmp eq ptr %3738, null
  br i1 %3739, label %3709, label %3717, !llvm.loop !623

3740:                                             ; preds = %3709, %3705, %3701, %3699
  %3741 = icmp sgt i16 %3697, 268
  br i1 %3741, label %3937, label %3742

3742:                                             ; preds = %3740
  %3743 = icmp eq i16 %3697, 268
  br i1 %3743, label %3744, label %3748

3744:                                             ; preds = %3742
  %3745 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3746 = load i16, ptr %3745, align 2, !tbaa !83
  %3747 = icmp sgt i16 %3746, 0
  br i1 %3747, label %3759, label %3748

3748:                                             ; preds = %3744, %3742
  %3749 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 36
  %3750 = load ptr, ptr %3749, align 8, !tbaa !42
  %3751 = icmp eq ptr %3750, null
  br i1 %3751, label %3759, label %3752

3752:                                             ; preds = %3748, %3752
  %3753 = phi ptr [ %3757, %3752 ], [ %3750, %3748 ]
  %3754 = getelementptr inbounds %struct.Brush, ptr %3753, i64 0, i32 21
  %3755 = load i32, ptr %3754, align 4, !tbaa !585
  %3756 = call i32 @llvm.smax.i32(i32 %3755, i32 1)
  store i32 %3756, ptr %3754, align 4, !tbaa !585
  %3757 = load ptr, ptr %3753, align 8, !tbaa !42
  %3758 = icmp eq ptr %3757, null
  br i1 %3758, label %3759, label %3752, !llvm.loop !624

3759:                                             ; preds = %3752, %3748, %3744
  br i1 %3741, label %3937, label %3760

3760:                                             ; preds = %3759
  %3761 = icmp eq i16 %3697, 268
  br i1 %3761, label %3762, label %3766

3762:                                             ; preds = %3760
  %3763 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3764 = load i16, ptr %3763, align 2, !tbaa !83
  %3765 = icmp sgt i16 %3764, 1
  br i1 %3765, label %3792, label %3766

3766:                                             ; preds = %3762, %3760
  %3767 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 36
  %3768 = load ptr, ptr %3767, align 8, !tbaa !42
  %3769 = icmp eq ptr %3768, null
  br i1 %3769, label %3792, label %3770

3770:                                             ; preds = %3766, %3789
  %3771 = phi ptr [ %3790, %3789 ], [ %3768, %3766 ]
  %3772 = getelementptr inbounds %struct.Brush, ptr %3771, i64 0, i32 16
  %3773 = load i32, ptr %3772, align 8, !tbaa !588
  %3774 = and i32 %3773, -65
  store i32 %3774, ptr %3772, align 8, !tbaa !588
  %3775 = getelementptr inbounds %struct.Brush, ptr %3771, i64 0, i32 45
  %3776 = load i32, ptr %3775, align 8, !tbaa !625
  %3777 = icmp slt i32 %3776, 2
  br i1 %3777, label %3778, label %3779

3778:                                             ; preds = %3770
  store i32 33, ptr %3775, align 8, !tbaa !625
  br label %3779

3779:                                             ; preds = %3778, %3770
  %3780 = getelementptr inbounds %struct.Brush, ptr %3771, i64 0, i32 43
  %3781 = load i32, ptr %3780, align 8, !tbaa !626
  %3782 = icmp slt i32 %3781, 2
  br i1 %3782, label %3783, label %3784

3783:                                             ; preds = %3779
  store i32 33, ptr %3780, align 8, !tbaa !626
  br label %3784

3784:                                             ; preds = %3783, %3779
  %3785 = getelementptr inbounds %struct.Brush, ptr %3771, i64 0, i32 44
  %3786 = load i32, ptr %3785, align 4, !tbaa !627
  %3787 = icmp slt i32 %3786, 2
  br i1 %3787, label %3788, label %3789

3788:                                             ; preds = %3784
  store i32 33, ptr %3785, align 4, !tbaa !627
  br label %3789

3789:                                             ; preds = %3784, %3788
  %3790 = load ptr, ptr %3771, align 8, !tbaa !42
  %3791 = icmp eq ptr %3790, null
  br i1 %3791, label %3792, label %3770, !llvm.loop !628

3792:                                             ; preds = %3789, %3766, %3762
  br i1 %3741, label %3937, label %3793

3793:                                             ; preds = %3792
  %3794 = icmp eq i16 %3697, 268
  br i1 %3794, label %3795, label %3799

3795:                                             ; preds = %3793
  %3796 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3797 = load i16, ptr %3796, align 2, !tbaa !83
  %3798 = icmp sgt i16 %3797, 3
  br i1 %3798, label %3937, label %3799

3799:                                             ; preds = %3795, %3793
  %3800 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %3801 = load ptr, ptr %3800, align 8, !tbaa !42
  %3802 = icmp eq ptr %3801, null
  br i1 %3802, label %3806, label %3809

3803:                                             ; preds = %3832, %3809
  %3804 = load ptr, ptr %3810, align 8, !tbaa !42
  %3805 = icmp eq ptr %3804, null
  br i1 %3805, label %3806, label %3809, !llvm.loop !629

3806:                                             ; preds = %3803, %3799
  %3807 = load ptr, ptr %3800, align 8, !tbaa !42
  %3808 = icmp eq ptr %3807, null
  br i1 %3808, label %3865, label %3838

3809:                                             ; preds = %3799, %3803
  %3810 = phi ptr [ %3804, %3803 ], [ %3801, %3799 ]
  %3811 = getelementptr inbounds %struct.Object, ptr %3810, i64 0, i32 106
  %3812 = load ptr, ptr %3811, align 8, !tbaa !42
  %3813 = icmp eq ptr %3812, null
  br i1 %3813, label %3803, label %3814

3814:                                             ; preds = %3809, %3832
  %3815 = phi ptr [ %3833, %3832 ], [ %3812, %3809 ]
  %3816 = getelementptr inbounds %struct.bConstraint, ptr %3815, i64 0, i32 3
  %3817 = load i16, ptr %3816, align 8, !tbaa !197
  %3818 = icmp eq i16 %3817, 20
  br i1 %3818, label %3819, label %3832

3819:                                             ; preds = %3814
  %3820 = getelementptr inbounds %struct.bConstraint, ptr %3815, i64 0, i32 2
  %3821 = load ptr, ptr %3820, align 8, !tbaa !199
  %3822 = getelementptr inbounds %struct.bShrinkwrapConstraint, ptr %3821, i64 0, i32 3
  %3823 = load i8, ptr %3822, align 2, !tbaa !630
  %3824 = zext i8 %3823 to i32
  %3825 = and i32 %3824, 1
  %3826 = icmp eq i32 %3825, 0
  %3827 = and i32 %3824, 2
  %3828 = icmp eq i32 %3827, 0
  %3829 = select i1 %3828, i8 2, i8 1
  %3830 = select i1 %3826, i8 %3829, i8 0
  store i8 %3830, ptr %3822, align 2, !tbaa !630
  %3831 = getelementptr inbounds %struct.bShrinkwrapConstraint, ptr %3821, i64 0, i32 4
  store i8 1, ptr %3831, align 1, !tbaa !632
  br label %3832

3832:                                             ; preds = %3814, %3819
  %3833 = load ptr, ptr %3815, align 8, !tbaa !42
  %3834 = icmp eq ptr %3833, null
  br i1 %3834, label %3803, label %3814, !llvm.loop !633

3835:                                             ; preds = %3862, %3838
  %3836 = load ptr, ptr %3839, align 8, !tbaa !42
  %3837 = icmp eq ptr %3836, null
  br i1 %3837, label %3865, label %3838, !llvm.loop !634

3838:                                             ; preds = %3806, %3835
  %3839 = phi ptr [ %3836, %3835 ], [ %3807, %3806 ]
  %3840 = getelementptr inbounds %struct.Object, ptr %3839, i64 0, i32 26
  %3841 = load ptr, ptr %3840, align 8, !tbaa !42
  %3842 = icmp eq ptr %3841, null
  br i1 %3842, label %3835, label %3843

3843:                                             ; preds = %3838, %3862
  %3844 = phi ptr [ %3863, %3862 ], [ %3841, %3838 ]
  %3845 = getelementptr inbounds %struct.ModifierData, ptr %3844, i64 0, i32 2
  %3846 = load i32, ptr %3845, align 8, !tbaa !239
  %3847 = icmp eq i32 %3846, 31
  br i1 %3847, label %3848, label %3862

3848:                                             ; preds = %3843
  %3849 = getelementptr inbounds %struct.SmokeModifierData, ptr %3844, i64 0, i32 5
  %3850 = load i32, ptr %3849, align 4, !tbaa !344
  %3851 = and i32 %3850, 2
  %3852 = icmp eq i32 %3851, 0
  br i1 %3852, label %3862, label %3853

3853:                                             ; preds = %3848
  %3854 = getelementptr inbounds %struct.SmokeModifierData, ptr %3844, i64 0, i32 2
  %3855 = load ptr, ptr %3854, align 8, !tbaa !447
  %3856 = icmp eq ptr %3855, null
  br i1 %3856, label %3862, label %3857

3857:                                             ; preds = %3853
  %3858 = getelementptr inbounds %struct.SmokeFlowSettings, ptr %3855, i64 0, i32 15
  %3859 = load float, ptr %3858, align 8, !tbaa !635
  %3860 = fcmp une float %3859, 0.000000e+00
  br i1 %3860, label %3862, label %3861

3861:                                             ; preds = %3857
  store float 1.000000e+00, ptr %3858, align 8, !tbaa !635
  br label %3862

3862:                                             ; preds = %3848, %3853, %3861, %3857, %3843
  %3863 = load ptr, ptr %3844, align 8, !tbaa !42
  %3864 = icmp eq ptr %3863, null
  br i1 %3864, label %3835, label %3843, !llvm.loop !636

3865:                                             ; preds = %3835, %3806
  %3866 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %3867 = load ptr, ptr %3866, align 8, !tbaa !42
  %3868 = icmp eq ptr %3867, null
  br i1 %3868, label %3872, label %3875

3869:                                             ; preds = %3880, %3875
  %3870 = load ptr, ptr %3876, align 8, !tbaa !42
  %3871 = icmp eq ptr %3870, null
  br i1 %3871, label %3872, label %3875, !llvm.loop !637

3872:                                             ; preds = %3869, %3865
  %3873 = load ptr, ptr %3800, align 8, !tbaa !42
  %3874 = icmp eq ptr %3873, null
  br i1 %3874, label %3937, label %3904

3875:                                             ; preds = %3865, %3869
  %3876 = phi ptr [ %3870, %3869 ], [ %3867, %3865 ]
  %3877 = getelementptr inbounds %struct.bScreen, ptr %3876, i64 0, i32 3
  %3878 = load ptr, ptr %3877, align 8, !tbaa !42
  %3879 = icmp eq ptr %3878, null
  br i1 %3879, label %3869, label %3883

3880:                                             ; preds = %3898, %3883
  %3881 = load ptr, ptr %3884, align 8, !tbaa !42
  %3882 = icmp eq ptr %3881, null
  br i1 %3882, label %3869, label %3883, !llvm.loop !638

3883:                                             ; preds = %3875, %3880
  %3884 = phi ptr [ %3881, %3880 ], [ %3878, %3875 ]
  %3885 = getelementptr inbounds %struct.ScrArea, ptr %3884, i64 0, i32 19
  %3886 = load ptr, ptr %3885, align 8, !tbaa !42
  %3887 = icmp eq ptr %3886, null
  br i1 %3887, label %3880, label %3888

3888:                                             ; preds = %3883, %3898
  %3889 = phi ptr [ %3899, %3898 ], [ %3886, %3883 ]
  %3890 = getelementptr inbounds %struct.SpaceLink, ptr %3889, i64 0, i32 3
  %3891 = load i32, ptr %3890, align 8, !tbaa !112
  %3892 = icmp eq i32 %3891, 16
  br i1 %3892, label %3893, label %3898

3893:                                             ; preds = %3888
  %3894 = getelementptr inbounds %struct.SpaceNode, ptr %3889, i64 0, i32 15
  %3895 = load float, ptr %3894, align 4, !tbaa !639
  %3896 = fcmp olt float %3895, 0x3F947AE140000000
  br i1 %3896, label %3897, label %3898

3897:                                             ; preds = %3893
  store float 1.000000e+00, ptr %3894, align 4, !tbaa !639
  br label %3898

3898:                                             ; preds = %3893, %3897, %3888
  %3899 = load ptr, ptr %3889, align 8, !tbaa !42
  %3900 = icmp eq ptr %3899, null
  br i1 %3900, label %3880, label %3888, !llvm.loop !640

3901:                                             ; preds = %3934, %3904
  %3902 = load ptr, ptr %3905, align 8, !tbaa !42
  %3903 = icmp eq ptr %3902, null
  br i1 %3903, label %3937, label %3904, !llvm.loop !641

3904:                                             ; preds = %3872, %3901
  %3905 = phi ptr [ %3902, %3901 ], [ %3873, %3872 ]
  %3906 = getelementptr inbounds %struct.Object, ptr %3905, i64 0, i32 92
  %3907 = load ptr, ptr %3906, align 8, !tbaa !42
  %3908 = icmp eq ptr %3907, null
  br i1 %3908, label %3901, label %3909

3909:                                             ; preds = %3904
  %3910 = getelementptr inbounds %struct.ID, ptr %3905, i64 0, i32 3
  br label %3911

3911:                                             ; preds = %3909, %3934
  %3912 = phi ptr [ %3907, %3909 ], [ %3935, %3934 ]
  %3913 = getelementptr inbounds %struct.bSensor, ptr %3912, i64 0, i32 2
  %3914 = load i16, ptr %3913, align 8, !tbaa !642
  %3915 = icmp eq i16 %3914, 1
  br i1 %3915, label %3916, label %3934

3916:                                             ; preds = %3911
  %3917 = getelementptr inbounds %struct.bSensor, ptr %3912, i64 0, i32 11
  %3918 = load ptr, ptr %3917, align 8, !tbaa !644
  %3919 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %3920 = call ptr %3919(i64 noundef 136, ptr noundef nonnull @.str.9) #8
  %3921 = getelementptr inbounds %struct.bTouchSensor, ptr %3918, i64 0, i32 1
  %3922 = load ptr, ptr %3921, align 8, !tbaa !645
  %3923 = icmp eq ptr %3922, null
  br i1 %3923, label %3930, label %3924

3924:                                             ; preds = %3916
  %3925 = load ptr, ptr %3910, align 8, !tbaa !647
  %3926 = call ptr @blo_do_versions_newlibadr(ptr noundef %0, ptr noundef %3925, ptr noundef nonnull %3922) #8
  %3927 = getelementptr inbounds %struct.bCollisionSensor, ptr %3920, i64 0, i32 1
  %3928 = getelementptr inbounds %struct.ID, ptr %3926, i64 0, i32 4, i64 2
  %3929 = call ptr @BLI_strncpy(ptr noundef nonnull %3927, ptr noundef nonnull %3928, i64 noundef 64) #8
  br label %3930

3930:                                             ; preds = %3924, %3916
  %3931 = getelementptr inbounds %struct.bCollisionSensor, ptr %3920, i64 0, i32 4
  store i16 1, ptr %3931, align 2, !tbaa !648
  %3932 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %3932(ptr noundef %3918) #8
  store ptr %3920, ptr %3917, align 8, !tbaa !644
  %3933 = getelementptr inbounds %struct.bSensor, ptr %3912, i64 0, i32 3
  store i16 6, ptr %3933, align 2, !tbaa !650
  store i16 6, ptr %3913, align 8, !tbaa !642
  br label %3934

3934:                                             ; preds = %3911, %3930
  %3935 = load ptr, ptr %3912, align 8, !tbaa !42
  %3936 = icmp eq ptr %3935, null
  br i1 %3936, label %3901, label %3911, !llvm.loop !651

3937:                                             ; preds = %3901, %3872, %3740, %3759, %3795, %3792
  %3938 = load i16, ptr %55, align 8, !tbaa !34
  %3939 = icmp sgt i16 %3938, 268
  br i1 %3939, label %3979, label %3940

3940:                                             ; preds = %3937
  %3941 = icmp eq i16 %3938, 268
  br i1 %3941, label %3942, label %3946

3942:                                             ; preds = %3940
  %3943 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3944 = load i16, ptr %3943, align 2, !tbaa !83
  %3945 = icmp sgt i16 %3944, 4
  br i1 %3945, label %3979, label %3946

3946:                                             ; preds = %3942, %3940
  %3947 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %3948 = load ptr, ptr %3947, align 8, !tbaa !42
  %3949 = icmp eq ptr %3948, null
  br i1 %3949, label %3979, label %3953

3950:                                             ; preds = %3976, %3953
  %3951 = load ptr, ptr %3954, align 8, !tbaa !42
  %3952 = icmp eq ptr %3951, null
  br i1 %3952, label %3979, label %3953, !llvm.loop !652

3953:                                             ; preds = %3946, %3950
  %3954 = phi ptr [ %3951, %3950 ], [ %3948, %3946 ]
  %3955 = getelementptr inbounds %struct.bScreen, ptr %3954, i64 0, i32 3
  %3956 = load ptr, ptr %3955, align 8, !tbaa !42
  %3957 = icmp eq ptr %3956, null
  br i1 %3957, label %3950, label %3958

3958:                                             ; preds = %3953, %3976
  %3959 = phi ptr [ %3977, %3976 ], [ %3956, %3953 ]
  %3960 = getelementptr inbounds %struct.ScrArea, ptr %3959, i64 0, i32 8
  %3961 = load i8, ptr %3960, align 8, !tbaa !475
  %3962 = icmp eq i8 %3961, 16
  br i1 %3962, label %3963, label %3976

3963:                                             ; preds = %3958
  %3964 = call ptr @BKE_area_find_region_type(ptr noundef nonnull %3959, i32 noundef 5) #8
  %3965 = icmp eq ptr %3964, null
  br i1 %3965, label %3966, label %3976

3966:                                             ; preds = %3963
  %3967 = call ptr @BKE_area_find_region_type(ptr noundef nonnull %3959, i32 noundef 1) #8
  %3968 = icmp eq ptr %3967, null
  br i1 %3968, label %3976, label %3969

3969:                                             ; preds = %3966
  %3970 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %3971 = call ptr %3970(i64 noundef 384, ptr noundef nonnull @.str.10) #8
  %3972 = getelementptr inbounds %struct.ScrArea, ptr %3959, i64 0, i32 20
  call void @BLI_insertlinkafter(ptr noundef nonnull %3972, ptr noundef nonnull %3967, ptr noundef %3971) #8
  %3973 = getelementptr inbounds %struct.ARegion, ptr %3971, i64 0, i32 8
  store i16 5, ptr %3973, align 2, !tbaa !305
  %3974 = getelementptr inbounds %struct.ARegion, ptr %3971, i64 0, i32 9
  store i16 3, ptr %3974, align 8, !tbaa !308
  %3975 = getelementptr inbounds %struct.ARegion, ptr %3971, i64 0, i32 10
  store i16 1, ptr %3975, align 2, !tbaa !309
  br label %3976

3976:                                             ; preds = %3958, %3969, %3966, %3963
  %3977 = load ptr, ptr %3959, align 8, !tbaa !42
  %3978 = icmp eq ptr %3977, null
  br i1 %3978, label %3950, label %3958, !llvm.loop !653

3979:                                             ; preds = %3950, %3946, %3942, %3937
  %3980 = load i16, ptr %55, align 8, !tbaa !34
  %3981 = icmp sgt i16 %3980, 269
  br i1 %3981, label %4019, label %3982

3982:                                             ; preds = %3979
  %3983 = icmp eq i16 %3980, 269
  br i1 %3983, label %3984, label %3988

3984:                                             ; preds = %3982
  %3985 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %3986 = load i16, ptr %3985, align 2, !tbaa !83
  %3987 = icmp sgt i16 %3986, 0
  br i1 %3987, label %4019, label %3988

3988:                                             ; preds = %3984, %3982
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %45) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %46) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %47) #8
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %45, ptr noundef %2) #8
  %3989 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %45, ptr noundef nonnull %46, ptr noundef nonnull %47) #8
  %3990 = icmp eq i8 %3989, 1
  br i1 %3990, label %3991, label %4018

3991:                                             ; preds = %3988, %4015
  %3992 = load ptr, ptr %46, align 8, !tbaa !42
  %3993 = icmp eq ptr %3992, null
  br i1 %3993, label %4015, label %3994

3994:                                             ; preds = %3991
  %3995 = getelementptr inbounds %struct.bNodeTree, ptr %3992, i64 0, i32 9
  %3996 = load i32, ptr %3995, align 8, !tbaa !93
  %3997 = icmp eq i32 %3996, 0
  br i1 %3997, label %3998, label %4015

3998:                                             ; preds = %3994
  %3999 = getelementptr inbounds %struct.bNodeTree, ptr %3992, i64 0, i32 7
  %4000 = load ptr, ptr %3999, align 8, !tbaa !42
  %4001 = icmp eq ptr %4000, null
  br i1 %4001, label %4015, label %4002

4002:                                             ; preds = %3998, %4012
  %4003 = phi ptr [ %4013, %4012 ], [ %4000, %3998 ]
  %4004 = getelementptr inbounds %struct.bNode, ptr %4003, i64 0, i32 8
  %4005 = load i16, ptr %4004, align 4, !tbaa !66
  %4006 = icmp eq i16 %4005, 177
  br i1 %4006, label %4007, label %4012

4007:                                             ; preds = %4002
  %4008 = getelementptr inbounds %struct.bNode, ptr %4003, i64 0, i32 33
  %4009 = load i16, ptr %4008, align 8, !tbaa !332
  %4010 = icmp eq i16 %4009, 0
  br i1 %4010, label %4011, label %4012

4011:                                             ; preds = %4007
  store i16 1, ptr %4008, align 8, !tbaa !332
  br label %4012

4012:                                             ; preds = %4002, %4011, %4007
  %4013 = load ptr, ptr %4003, align 8, !tbaa !42
  %4014 = icmp eq ptr %4013, null
  br i1 %4014, label %4015, label %4002, !llvm.loop !654

4015:                                             ; preds = %4012, %3998, %3994, %3991
  %4016 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %45, ptr noundef nonnull %46, ptr noundef nonnull %47) #8
  %4017 = icmp eq i8 %4016, 1
  br i1 %4017, label %3991, label %4018, !llvm.loop !655

4018:                                             ; preds = %4015, %3988
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %47) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %46) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %45) #8
  br label %4019

4019:                                             ; preds = %4018, %3984, %3979
  %4020 = load i16, ptr %55, align 8, !tbaa !34
  %4021 = icmp sgt i16 %4020, 269
  br i1 %4021, label %4089, label %4022

4022:                                             ; preds = %4019
  %4023 = icmp eq i16 %4020, 269
  br i1 %4023, label %4024, label %4028

4024:                                             ; preds = %4022
  %4025 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4026 = load i16, ptr %4025, align 2, !tbaa !83
  %4027 = icmp sgt i16 %4026, 1
  br i1 %4027, label %4089, label %4028

4028:                                             ; preds = %4024, %4022
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %48) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %49) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %50) #8
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %48, ptr noundef %2) #8
  %4029 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %48, ptr noundef nonnull %49, ptr noundef nonnull %50) #8
  %4030 = icmp eq i8 %4029, 1
  br i1 %4030, label %4031, label %4088

4031:                                             ; preds = %4028, %4085
  %4032 = load ptr, ptr %49, align 8, !tbaa !42
  %4033 = icmp eq ptr %4032, null
  br i1 %4033, label %4085, label %4034

4034:                                             ; preds = %4031
  %4035 = getelementptr inbounds %struct.bNodeTree, ptr %4032, i64 0, i32 9
  %4036 = load i32, ptr %4035, align 8, !tbaa !93
  %4037 = icmp eq i32 %4036, 1
  br i1 %4037, label %4038, label %4085

4038:                                             ; preds = %4034
  %4039 = getelementptr inbounds %struct.bNodeTree, ptr %4032, i64 0, i32 7
  %4040 = load ptr, ptr %4039, align 8, !tbaa !42
  %4041 = icmp eq ptr %4040, null
  br i1 %4041, label %4085, label %4042

4042:                                             ; preds = %4038, %4082
  %4043 = phi ptr [ %4083, %4082 ], [ %4040, %4038 ]
  %4044 = getelementptr inbounds %struct.bNode, ptr %4043, i64 0, i32 8
  %4045 = load i16, ptr %4044, align 4, !tbaa !66
  %4046 = icmp eq i16 %4045, 260
  br i1 %4046, label %4047, label %4082

4047:                                             ; preds = %4042
  %4048 = getelementptr inbounds %struct.bNode, ptr %4043, i64 0, i32 33
  %4049 = load i16, ptr %4048, align 8, !tbaa !332
  switch i16 %4049, label %4082 [
    i16 0, label %4050
    i16 1, label %4052
  ]

4050:                                             ; preds = %4047
  %4051 = load ptr, ptr %49, align 8, !tbaa !42
  call void @ntreeCompositColorBalanceSyncFromLGG(ptr noundef %4051, ptr noundef nonnull %4043) #8
  br label %4082

4052:                                             ; preds = %4047
  %4053 = getelementptr inbounds %struct.bNode, ptr %4043, i64 0, i32 21
  %4054 = load ptr, ptr %4053, align 8, !tbaa !96
  %4055 = getelementptr inbounds %struct.NodeColorBalance, ptr %4054, i64 0, i32 1
  %4056 = getelementptr inbounds %struct.NodeColorBalance, ptr %4054, i64 0, i32 3
  %4057 = load float, ptr %4056, align 4, !tbaa !72
  store float %4057, ptr %4055, align 4, !tbaa !72
  %4058 = getelementptr inbounds %struct.NodeColorBalance, ptr %4054, i64 0, i32 3, i64 1
  %4059 = load float, ptr %4058, align 4, !tbaa !72
  %4060 = getelementptr inbounds %struct.NodeColorBalance, ptr %4054, i64 0, i32 1, i64 1
  store float %4059, ptr %4060, align 4, !tbaa !72
  %4061 = getelementptr inbounds %struct.NodeColorBalance, ptr %4054, i64 0, i32 3, i64 2
  %4062 = load float, ptr %4061, align 4, !tbaa !72
  %4063 = getelementptr inbounds %struct.NodeColorBalance, ptr %4054, i64 0, i32 1, i64 2
  store float %4062, ptr %4063, align 4, !tbaa !72
  %4064 = getelementptr inbounds %struct.NodeColorBalance, ptr %4054, i64 0, i32 2
  %4065 = getelementptr inbounds %struct.NodeColorBalance, ptr %4054, i64 0, i32 4
  %4066 = load float, ptr %4065, align 4, !tbaa !72
  store float %4066, ptr %4064, align 4, !tbaa !72
  %4067 = getelementptr inbounds %struct.NodeColorBalance, ptr %4054, i64 0, i32 4, i64 1
  %4068 = load float, ptr %4067, align 4, !tbaa !72
  %4069 = getelementptr inbounds %struct.NodeColorBalance, ptr %4054, i64 0, i32 2, i64 1
  store float %4068, ptr %4069, align 4, !tbaa !72
  %4070 = getelementptr inbounds %struct.NodeColorBalance, ptr %4054, i64 0, i32 4, i64 2
  %4071 = load float, ptr %4070, align 4, !tbaa !72
  %4072 = getelementptr inbounds %struct.NodeColorBalance, ptr %4054, i64 0, i32 2, i64 2
  store float %4071, ptr %4072, align 4, !tbaa !72
  %4073 = getelementptr inbounds %struct.NodeColorBalance, ptr %4054, i64 0, i32 5
  %4074 = load float, ptr %4073, align 4, !tbaa !72
  store float %4074, ptr %4054, align 4, !tbaa !72
  %4075 = getelementptr inbounds %struct.NodeColorBalance, ptr %4054, i64 0, i32 5, i64 1
  %4076 = load float, ptr %4075, align 4, !tbaa !72
  %4077 = getelementptr inbounds float, ptr %4054, i64 1
  store float %4076, ptr %4077, align 4, !tbaa !72
  %4078 = getelementptr inbounds %struct.NodeColorBalance, ptr %4054, i64 0, i32 5, i64 2
  %4079 = load float, ptr %4078, align 4, !tbaa !72
  %4080 = getelementptr inbounds float, ptr %4054, i64 2
  store float %4079, ptr %4080, align 4, !tbaa !72
  %4081 = load ptr, ptr %49, align 8, !tbaa !42
  call void @ntreeCompositColorBalanceSyncFromCDL(ptr noundef %4081, ptr noundef nonnull %4043) #8
  br label %4082

4082:                                             ; preds = %4050, %4052, %4047, %4042
  %4083 = load ptr, ptr %4043, align 8, !tbaa !42
  %4084 = icmp eq ptr %4083, null
  br i1 %4084, label %4085, label %4042, !llvm.loop !656

4085:                                             ; preds = %4082, %4038, %4034, %4031
  %4086 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %48, ptr noundef nonnull %49, ptr noundef nonnull %50) #8
  %4087 = icmp eq i8 %4086, 1
  br i1 %4087, label %4031, label %4088, !llvm.loop !657

4088:                                             ; preds = %4085, %4028
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %50) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %49) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %48) #8
  br label %4089

4089:                                             ; preds = %4088, %4024, %4019
  %4090 = load i16, ptr %55, align 8, !tbaa !34
  %4091 = icmp sgt i16 %4090, 269
  br i1 %4091, label %4220, label %4092

4092:                                             ; preds = %4089
  %4093 = icmp eq i16 %4090, 269
  br i1 %4093, label %4094, label %4098

4094:                                             ; preds = %4092
  %4095 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4096 = load i16, ptr %4095, align 2, !tbaa !83
  %4097 = icmp sgt i16 %4096, 2
  br i1 %4097, label %4220, label %4098

4098:                                             ; preds = %4094, %4092
  %4099 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %4100 = load ptr, ptr %4099, align 8, !tbaa !42
  %4101 = icmp eq ptr %4100, null
  br i1 %4101, label %4130, label %4105

4102:                                             ; preds = %4110, %4105
  %4103 = load ptr, ptr %4106, align 8, !tbaa !42
  %4104 = icmp eq ptr %4103, null
  br i1 %4104, label %4130, label %4105, !llvm.loop !658

4105:                                             ; preds = %4098, %4102
  %4106 = phi ptr [ %4103, %4102 ], [ %4100, %4098 ]
  %4107 = getelementptr inbounds %struct.bScreen, ptr %4106, i64 0, i32 3
  %4108 = load ptr, ptr %4107, align 8, !tbaa !42
  %4109 = icmp eq ptr %4108, null
  br i1 %4109, label %4102, label %4113

4110:                                             ; preds = %4127, %4113
  %4111 = load ptr, ptr %4114, align 8, !tbaa !42
  %4112 = icmp eq ptr %4111, null
  br i1 %4112, label %4102, label %4113, !llvm.loop !659

4113:                                             ; preds = %4105, %4110
  %4114 = phi ptr [ %4111, %4110 ], [ %4108, %4105 ]
  %4115 = getelementptr inbounds %struct.ScrArea, ptr %4114, i64 0, i32 19
  %4116 = load ptr, ptr %4115, align 8, !tbaa !42
  %4117 = icmp eq ptr %4116, null
  br i1 %4117, label %4110, label %4118

4118:                                             ; preds = %4113, %4127
  %4119 = phi ptr [ %4128, %4127 ], [ %4116, %4113 ]
  %4120 = getelementptr inbounds %struct.SpaceLink, ptr %4119, i64 0, i32 3
  %4121 = load i32, ptr %4120, align 8, !tbaa !112
  %4122 = icmp eq i32 %4121, 3
  br i1 %4122, label %4123, label %4127

4123:                                             ; preds = %4118
  %4124 = getelementptr inbounds %struct.SpaceOops, ptr %4119, i64 0, i32 12
  %4125 = load i16, ptr %4124, align 2, !tbaa !660
  switch i16 %4125, label %4126 [
    i16 0, label %4127
    i16 1, label %4127
    i16 2, label %4127
    i16 3, label %4127
    i16 4, label %4127
    i16 5, label %4127
    i16 6, label %4127
    i16 7, label %4127
    i16 10, label %4127
    i16 11, label %4127
    i16 12, label %4127
  ]

4126:                                             ; preds = %4123
  store i16 0, ptr %4124, align 2, !tbaa !660
  br label %4127

4127:                                             ; preds = %4126, %4123, %4123, %4123, %4123, %4123, %4123, %4123, %4123, %4123, %4123, %4123, %4118
  %4128 = load ptr, ptr %4119, align 8, !tbaa !42
  %4129 = icmp eq ptr %4128, null
  br i1 %4129, label %4110, label %4118, !llvm.loop !663

4130:                                             ; preds = %4102, %4098
  %4131 = getelementptr inbounds %struct.FileData, ptr %0, i64 0, i32 14
  %4132 = load ptr, ptr %4131, align 8, !tbaa !664
  %4133 = call zeroext i8 @DNA_struct_elem_find(ptr noundef %4132, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #8
  %4134 = icmp eq i8 %4133, 0
  br i1 %4134, label %4135, label %4161

4135:                                             ; preds = %4130
  %4136 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 42
  %4137 = load ptr, ptr %4136, align 8, !tbaa !42
  %4138 = icmp eq ptr %4137, null
  br i1 %4138, label %4161, label %4142

4139:                                             ; preds = %4148, %4142
  %4140 = load ptr, ptr %4143, align 8, !tbaa !42
  %4141 = icmp eq ptr %4140, null
  br i1 %4141, label %4161, label %4142, !llvm.loop !665

4142:                                             ; preds = %4135, %4139
  %4143 = phi ptr [ %4140, %4139 ], [ %4137, %4135 ]
  %4144 = getelementptr inbounds %struct.MovieClip, ptr %4143, i64 0, i32 11
  %4145 = getelementptr inbounds %struct.MovieClip, ptr %4143, i64 0, i32 11, i32 8
  %4146 = load ptr, ptr %4145, align 8, !tbaa !42
  %4147 = icmp eq ptr %4146, null
  br i1 %4147, label %4139, label %4151

4148:                                             ; preds = %4156, %4151
  %4149 = load ptr, ptr %4152, align 8, !tbaa !42
  %4150 = icmp eq ptr %4149, null
  br i1 %4150, label %4139, label %4151, !llvm.loop !666

4151:                                             ; preds = %4142, %4148
  %4152 = phi ptr [ %4149, %4148 ], [ %4146, %4142 ]
  %4153 = call ptr @BKE_tracking_object_get_tracks(ptr noundef nonnull %4144, ptr noundef nonnull %4152) #8
  %4154 = load ptr, ptr %4153, align 8, !tbaa !42
  %4155 = icmp eq ptr %4154, null
  br i1 %4155, label %4148, label %4156

4156:                                             ; preds = %4151, %4156
  %4157 = phi ptr [ %4159, %4156 ], [ %4154, %4151 ]
  %4158 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %4157, i64 0, i32 24
  store float 1.000000e+00, ptr %4158, align 8, !tbaa !667
  %4159 = load ptr, ptr %4157, align 8, !tbaa !42
  %4160 = icmp eq ptr %4159, null
  br i1 %4160, label %4148, label %4156, !llvm.loop !668

4161:                                             ; preds = %4139, %4135, %4130
  %4162 = load ptr, ptr %4131, align 8, !tbaa !664
  %4163 = call zeroext i8 @DNA_struct_elem_find(ptr noundef %4162, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #8
  %4164 = icmp eq i8 %4163, 0
  br i1 %4164, label %4165, label %4192

4165:                                             ; preds = %4161
  %4166 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %4167 = load ptr, ptr %4166, align 8, !tbaa !42
  %4168 = icmp eq ptr %4167, null
  br i1 %4168, label %4192, label %4172

4169:                                             ; preds = %4189, %4172
  %4170 = load ptr, ptr %4173, align 8, !tbaa !42
  %4171 = icmp eq ptr %4170, null
  br i1 %4171, label %4192, label %4172, !llvm.loop !669

4172:                                             ; preds = %4165, %4169
  %4173 = phi ptr [ %4170, %4169 ], [ %4167, %4165 ]
  %4174 = getelementptr inbounds %struct.Object, ptr %4173, i64 0, i32 26
  %4175 = load ptr, ptr %4174, align 8, !tbaa !42
  %4176 = icmp eq ptr %4175, null
  br i1 %4176, label %4169, label %4177

4177:                                             ; preds = %4172, %4189
  %4178 = phi ptr [ %4190, %4189 ], [ %4175, %4172 ]
  %4179 = getelementptr inbounds %struct.ModifierData, ptr %4178, i64 0, i32 2
  %4180 = load i32, ptr %4179, align 8, !tbaa !239
  %4181 = icmp eq i32 %4180, 44
  br i1 %4181, label %4182, label %4189

4182:                                             ; preds = %4177
  %4183 = getelementptr inbounds %struct.TriangulateModifierData, ptr %4178, i64 0, i32 1
  %4184 = load i32, ptr %4183, align 8, !tbaa !670
  %4185 = and i32 %4184, 1
  %4186 = getelementptr inbounds %struct.TriangulateModifierData, ptr %4178, i64 0, i32 2
  %4187 = getelementptr inbounds %struct.TriangulateModifierData, ptr %4178, i64 0, i32 3
  %4188 = xor i32 %4185, 1
  store i32 %4188, ptr %4186, align 4, !tbaa !672
  store i32 %4188, ptr %4187, align 8, !tbaa !673
  br label %4189

4189:                                             ; preds = %4182, %4177
  %4190 = load ptr, ptr %4178, align 8, !tbaa !42
  %4191 = icmp eq ptr %4190, null
  br i1 %4191, label %4169, label %4177, !llvm.loop !674

4192:                                             ; preds = %4169, %4165, %4161
  %4193 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %4194 = load ptr, ptr %4193, align 8, !tbaa !42
  %4195 = icmp eq ptr %4194, null
  br i1 %4195, label %4220, label %4196

4196:                                             ; preds = %4192, %4217
  %4197 = phi ptr [ %4218, %4217 ], [ %4194, %4192 ]
  %4198 = getelementptr inbounds %struct.Scene, ptr %4197, i64 0, i32 20
  %4199 = load ptr, ptr %4198, align 8, !tbaa !213
  %4200 = getelementptr inbounds %struct.ToolSettings, ptr %4199, i64 0, i32 2
  %4201 = load ptr, ptr %4200, align 8, !tbaa !675
  %4202 = icmp eq ptr %4201, null
  br i1 %4202, label %4207, label %4203

4203:                                             ; preds = %4196
  %4204 = getelementptr inbounds %struct.Sculpt, ptr %4201, i64 0, i32 1
  %4205 = load i32, ptr %4204, align 8, !tbaa !676
  %4206 = or i32 %4205, 4096
  store i32 %4206, ptr %4204, align 8, !tbaa !676
  br label %4207

4207:                                             ; preds = %4203, %4196
  %4208 = getelementptr inbounds %struct.Scene, ptr %4197, i64 0, i32 37, i32 20
  %4209 = load i16, ptr %4208, align 2, !tbaa !678
  %4210 = icmp eq i16 %4209, 0
  br i1 %4210, label %4211, label %4212

4211:                                             ; preds = %4207
  store i16 1, ptr %4208, align 2, !tbaa !678
  br label %4212

4212:                                             ; preds = %4211, %4207
  %4213 = getelementptr inbounds %struct.ToolSettings, ptr %4199, i64 0, i32 52
  %4214 = load i8, ptr %4213, align 8, !tbaa !679
  %4215 = icmp eq i8 %4214, 0
  br i1 %4215, label %4216, label %4217

4216:                                             ; preds = %4212
  store i8 8, ptr %4213, align 8, !tbaa !679
  br label %4217

4217:                                             ; preds = %4216, %4212
  %4218 = load ptr, ptr %4197, align 8, !tbaa !42
  %4219 = icmp eq ptr %4218, null
  br i1 %4219, label %4220, label %4196, !llvm.loop !680

4220:                                             ; preds = %4217, %4192, %4094, %4089
  %4221 = load i16, ptr %55, align 8, !tbaa !34
  %4222 = icmp sgt i16 %4221, 269
  br i1 %4222, label %4408, label %4223

4223:                                             ; preds = %4220
  %4224 = icmp eq i16 %4221, 269
  br i1 %4224, label %4225, label %4229

4225:                                             ; preds = %4223
  %4226 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4227 = load i16, ptr %4226, align 2, !tbaa !83
  %4228 = icmp sgt i16 %4227, 3
  br i1 %4228, label %4408, label %4229

4229:                                             ; preds = %4225, %4223
  %4230 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 21
  %4231 = load ptr, ptr %4230, align 8, !tbaa !42
  %4232 = icmp eq ptr %4231, null
  br i1 %4232, label %4240, label %4233

4233:                                             ; preds = %4229, %4233
  %4234 = phi ptr [ %4238, %4233 ], [ %4231, %4229 ]
  %4235 = getelementptr inbounds %struct.Lamp, ptr %4234, i64 0, i32 17
  %4236 = load float, ptr %4235, align 4, !tbaa !681
  %4237 = fmul float %4236, 0x3F91DF46A0000000
  store float %4237, ptr %4235, align 4, !tbaa !681
  %4238 = load ptr, ptr %4234, align 8, !tbaa !42
  %4239 = icmp eq ptr %4238, null
  br i1 %4239, label %4240, label %4233, !llvm.loop !682

4240:                                             ; preds = %4233, %4229
  %4241 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %4242 = load ptr, ptr %4241, align 8, !tbaa !42
  %4243 = icmp eq ptr %4242, null
  br i1 %4243, label %4317, label %4247

4244:                                             ; preds = %4314, %4285
  %4245 = load ptr, ptr %4248, align 8, !tbaa !42
  %4246 = icmp eq ptr %4245, null
  br i1 %4246, label %4317, label %4247, !llvm.loop !683

4247:                                             ; preds = %4240, %4244
  %4248 = phi ptr [ %4245, %4244 ], [ %4242, %4240 ]
  %4249 = getelementptr inbounds %struct.Object, ptr %4248, i64 0, i32 26
  %4250 = load ptr, ptr %4249, align 8, !tbaa !42
  %4251 = icmp eq ptr %4250, null
  br i1 %4251, label %4267, label %4252

4252:                                             ; preds = %4247, %4264
  %4253 = phi ptr [ %4265, %4264 ], [ %4250, %4247 ]
  %4254 = getelementptr inbounds %struct.ModifierData, ptr %4253, i64 0, i32 2
  %4255 = load i32, ptr %4254, align 8, !tbaa !239
  switch i32 %4255, label %4264 [
    i32 13, label %4256
    i32 24, label %4260
  ]

4256:                                             ; preds = %4252
  %4257 = getelementptr inbounds %struct.EdgeSplitModifierData, ptr %4253, i64 0, i32 1
  %4258 = load float, ptr %4257, align 8, !tbaa !684
  %4259 = fmul float %4258, 0x3F91DF46A0000000
  store float %4259, ptr %4257, align 8, !tbaa !684
  br label %4264

4260:                                             ; preds = %4252
  %4261 = getelementptr inbounds %struct.BevelModifierData, ptr %4253, i64 0, i32 11
  %4262 = load float, ptr %4261, align 4, !tbaa !686
  %4263 = fmul float %4262, 0x3F91DF46A0000000
  store float %4263, ptr %4261, align 4, !tbaa !686
  br label %4264

4264:                                             ; preds = %4252, %4256, %4260
  %4265 = load ptr, ptr %4253, align 8, !tbaa !42
  %4266 = icmp eq ptr %4265, null
  br i1 %4266, label %4267, label %4252, !llvm.loop !688

4267:                                             ; preds = %4264, %4247
  %4268 = getelementptr inbounds %struct.Object, ptr %4248, i64 0, i32 92
  %4269 = load ptr, ptr %4268, align 8, !tbaa !42
  %4270 = icmp eq ptr %4269, null
  br i1 %4270, label %4285, label %4271

4271:                                             ; preds = %4267, %4282
  %4272 = phi ptr [ %4283, %4282 ], [ %4269, %4267 ]
  %4273 = getelementptr inbounds %struct.bSensor, ptr %4272, i64 0, i32 2
  %4274 = load i16, ptr %4273, align 8, !tbaa !642
  %4275 = icmp eq i16 %4274, 7
  br i1 %4275, label %4276, label %4282

4276:                                             ; preds = %4271
  %4277 = getelementptr inbounds %struct.bSensor, ptr %4272, i64 0, i32 11
  %4278 = load ptr, ptr %4277, align 8, !tbaa !644
  %4279 = getelementptr inbounds %struct.bRadarSensor, ptr %4278, i64 0, i32 1
  %4280 = load float, ptr %4279, align 4, !tbaa !689
  %4281 = fmul float %4280, 0x3F91DF46A0000000
  store float %4281, ptr %4279, align 4, !tbaa !689
  br label %4282

4282:                                             ; preds = %4271, %4276
  %4283 = load ptr, ptr %4272, align 8, !tbaa !42
  %4284 = icmp eq ptr %4283, null
  br i1 %4284, label %4285, label %4271, !llvm.loop !691

4285:                                             ; preds = %4282, %4267
  %4286 = getelementptr inbounds %struct.Object, ptr %4248, i64 0, i32 94
  %4287 = load ptr, ptr %4286, align 8, !tbaa !42
  %4288 = icmp eq ptr %4287, null
  br i1 %4288, label %4244, label %4289

4289:                                             ; preds = %4285, %4314
  %4290 = phi ptr [ %4315, %4314 ], [ %4287, %4285 ]
  %4291 = getelementptr inbounds %struct.bActuator, ptr %4290, i64 0, i32 3
  %4292 = load i16, ptr %4291, align 8, !tbaa !207
  switch i16 %4292, label %4314 [
    i16 9, label %4293
    i16 5, label %4303
  ]

4293:                                             ; preds = %4289
  %4294 = getelementptr inbounds %struct.bActuator, ptr %4290, i64 0, i32 8
  %4295 = load ptr, ptr %4294, align 8, !tbaa !209
  %4296 = load i16, ptr %4295, align 4, !tbaa !692
  %4297 = icmp eq i16 %4296, 2
  br i1 %4297, label %4298, label %4314

4298:                                             ; preds = %4293
  %4299 = getelementptr inbounds %struct.bConstraintActuator, ptr %4295, i64 0, i32 7
  %4300 = load float, ptr %4299, align 4, !tbaa !72
  %4301 = fmul float %4300, 0x3F91DF46A0000000
  store float %4301, ptr %4299, align 4, !tbaa !72
  %4302 = getelementptr inbounds %struct.bConstraintActuator, ptr %4295, i64 0, i32 8
  br label %4310

4303:                                             ; preds = %4289
  %4304 = getelementptr inbounds %struct.bActuator, ptr %4290, i64 0, i32 8
  %4305 = load ptr, ptr %4304, align 8, !tbaa !209
  %4306 = getelementptr inbounds %struct.bSoundActuator, ptr %4305, i64 0, i32 8, i32 6
  %4307 = load float, ptr %4306, align 8, !tbaa !694
  %4308 = fmul float %4307, 0x3F91DF46A0000000
  store float %4308, ptr %4306, align 8, !tbaa !694
  %4309 = getelementptr inbounds %struct.bSoundActuator, ptr %4305, i64 0, i32 8, i32 5
  br label %4310

4310:                                             ; preds = %4303, %4298
  %4311 = phi ptr [ %4302, %4298 ], [ %4309, %4303 ]
  %4312 = load float, ptr %4311, align 4, !tbaa !72
  %4313 = fmul float %4312, 0x3F91DF46A0000000
  store float %4313, ptr %4311, align 4, !tbaa !72
  br label %4314

4314:                                             ; preds = %4310, %4289, %4293
  %4315 = load ptr, ptr %4290, align 8, !tbaa !42
  %4316 = icmp eq ptr %4315, null
  br i1 %4316, label %4244, label %4289, !llvm.loop !697

4317:                                             ; preds = %4244, %4240
  %4318 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %4319 = load ptr, ptr %4318, align 8, !tbaa !42
  %4320 = icmp eq ptr %4319, null
  br i1 %4320, label %4347, label %4321

4321:                                             ; preds = %4317
  %4322 = getelementptr inbounds %struct.SeqIterator, ptr %51, i64 0, i32 4
  %4323 = getelementptr inbounds %struct.SeqIterator, ptr %51, i64 0, i32 3
  br label %4324

4324:                                             ; preds = %4321, %4344
  %4325 = phi ptr [ %4319, %4321 ], [ %4345, %4344 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %51) #8
  %4326 = getelementptr inbounds %struct.Scene, ptr %4325, i64 0, i32 19
  %4327 = load ptr, ptr %4326, align 8, !tbaa !398
  call void @BKE_sequence_iterator_begin(ptr noundef %4327, ptr noundef nonnull %51, i8 noundef zeroext 0) #8
  %4328 = load i32, ptr %4322, align 8, !tbaa !399
  %4329 = icmp eq i32 %4328, 0
  br i1 %4329, label %4344, label %4330

4330:                                             ; preds = %4324, %4341
  %4331 = load ptr, ptr %4323, align 8, !tbaa !401
  %4332 = getelementptr inbounds %struct.Sequence, ptr %4331, i64 0, i32 6
  %4333 = load i32, ptr %4332, align 4, !tbaa !698
  %4334 = icmp eq i32 %4333, 25
  br i1 %4334, label %4335, label %4341

4335:                                             ; preds = %4330
  %4336 = getelementptr inbounds %struct.Sequence, ptr %4331, i64 0, i32 43
  %4337 = load ptr, ptr %4336, align 8, !tbaa !699
  %4338 = getelementptr inbounds %struct.WipeVars, ptr %4337, i64 0, i32 1
  %4339 = load float, ptr %4338, align 4, !tbaa !700
  %4340 = fmul float %4339, 0x3F91DF46A0000000
  store float %4340, ptr %4338, align 4, !tbaa !700
  br label %4341

4341:                                             ; preds = %4330, %4335
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %51) #8
  %4342 = load i32, ptr %4322, align 8, !tbaa !399
  %4343 = icmp eq i32 %4342, 0
  br i1 %4343, label %4344, label %4330, !llvm.loop !702

4344:                                             ; preds = %4341, %4324
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %51) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %51) #8
  %4345 = load ptr, ptr %4325, align 8, !tbaa !42
  %4346 = icmp eq ptr %4345, null
  br i1 %4346, label %4347, label %4324, !llvm.loop !703

4347:                                             ; preds = %4344, %4317
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %52) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %53) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %54) #8
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %52, ptr noundef %2) #8
  %4348 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %52, ptr noundef nonnull %53, ptr noundef nonnull %54) #8
  %4349 = icmp eq i8 %4348, 1
  br i1 %4349, label %4350, label %4386

4350:                                             ; preds = %4347, %4383
  %4351 = load ptr, ptr %53, align 8, !tbaa !42
  %4352 = icmp eq ptr %4351, null
  br i1 %4352, label %4383, label %4353

4353:                                             ; preds = %4350
  %4354 = getelementptr inbounds %struct.bNodeTree, ptr %4351, i64 0, i32 9
  %4355 = load i32, ptr %4354, align 8, !tbaa !93
  %4356 = icmp eq i32 %4355, 1
  br i1 %4356, label %4357, label %4383

4357:                                             ; preds = %4353
  %4358 = getelementptr inbounds %struct.bNodeTree, ptr %4351, i64 0, i32 7
  %4359 = load ptr, ptr %4358, align 8, !tbaa !42
  %4360 = icmp eq ptr %4359, null
  br i1 %4360, label %4383, label %4361

4361:                                             ; preds = %4357, %4380
  %4362 = phi ptr [ %4381, %4380 ], [ %4359, %4357 ]
  %4363 = getelementptr inbounds %struct.bNode, ptr %4362, i64 0, i32 8
  %4364 = load i16, ptr %4363, align 4, !tbaa !66
  switch i16 %4364, label %4380 [
    i16 315, label %4365
    i16 313, label %4368
    i16 314, label %4372
  ]

4365:                                             ; preds = %4361
  %4366 = getelementptr inbounds %struct.bNode, ptr %4362, i64 0, i32 21
  %4367 = load ptr, ptr %4366, align 8, !tbaa !96
  br label %4376

4368:                                             ; preds = %4361
  %4369 = getelementptr inbounds %struct.bNode, ptr %4362, i64 0, i32 21
  %4370 = load ptr, ptr %4369, align 8, !tbaa !96
  %4371 = getelementptr inbounds %struct.NodeBoxMask, ptr %4370, i64 0, i32 2
  br label %4376

4372:                                             ; preds = %4361
  %4373 = getelementptr inbounds %struct.bNode, ptr %4362, i64 0, i32 21
  %4374 = load ptr, ptr %4373, align 8, !tbaa !96
  %4375 = getelementptr inbounds %struct.NodeEllipseMask, ptr %4374, i64 0, i32 2
  br label %4376

4376:                                             ; preds = %4372, %4365, %4368
  %4377 = phi ptr [ %4371, %4368 ], [ %4367, %4365 ], [ %4375, %4372 ]
  %4378 = load float, ptr %4377, align 4, !tbaa !72
  %4379 = fmul float %4378, 0x3F91DF46A0000000
  store float %4379, ptr %4377, align 4, !tbaa !72
  br label %4380

4380:                                             ; preds = %4376, %4361
  %4381 = load ptr, ptr %4362, align 8, !tbaa !42
  %4382 = icmp eq ptr %4381, null
  br i1 %4382, label %4383, label %4361, !llvm.loop !704

4383:                                             ; preds = %4380, %4357, %4353, %4350
  %4384 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %52, ptr noundef nonnull %53, ptr noundef nonnull %54) #8
  %4385 = icmp eq i8 %4384, 1
  br i1 %4385, label %4350, label %4386, !llvm.loop !705

4386:                                             ; preds = %4383, %4347
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %54) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %53) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %52) #8
  %4387 = getelementptr inbounds %struct.FileData, ptr %0, i64 0, i32 14
  %4388 = load ptr, ptr %4387, align 8, !tbaa !664
  %4389 = call zeroext i8 @DNA_struct_elem_find(ptr noundef %4388, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.18) #8
  %4390 = icmp eq i8 %4389, 0
  br i1 %4390, label %4391, label %4408

4391:                                             ; preds = %4386
  %4392 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 42
  %4393 = load ptr, ptr %4392, align 8, !tbaa !42
  %4394 = icmp eq ptr %4393, null
  br i1 %4394, label %4408, label %4398

4395:                                             ; preds = %4403, %4398
  %4396 = load ptr, ptr %4399, align 8, !tbaa !42
  %4397 = icmp eq ptr %4396, null
  br i1 %4397, label %4408, label %4398, !llvm.loop !706

4398:                                             ; preds = %4391, %4395
  %4399 = phi ptr [ %4396, %4395 ], [ %4393, %4391 ]
  %4400 = getelementptr inbounds %struct.MovieClip, ptr %4399, i64 0, i32 11, i32 3
  %4401 = load ptr, ptr %4400, align 8, !tbaa !42
  %4402 = icmp eq ptr %4401, null
  br i1 %4402, label %4395, label %4403

4403:                                             ; preds = %4398, %4403
  %4404 = phi ptr [ %4406, %4403 ], [ %4401, %4398 ]
  %4405 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %4404, i64 0, i32 10
  store float 1.000000e+00, ptr %4405, align 8, !tbaa !707
  %4406 = load ptr, ptr %4404, align 8, !tbaa !42
  %4407 = icmp eq ptr %4406, null
  br i1 %4407, label %4395, label %4403, !llvm.loop !709

4408:                                             ; preds = %4395, %4391, %4386, %4225, %4220
  %4409 = load i16, ptr %55, align 8, !tbaa !34
  %4410 = icmp sgt i16 %4409, 269
  br i1 %4410, label %4477, label %4411

4411:                                             ; preds = %4408
  %4412 = icmp eq i16 %4409, 269
  br i1 %4412, label %4413, label %4417

4413:                                             ; preds = %4411
  %4414 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4415 = load i16, ptr %4414, align 2, !tbaa !83
  %4416 = icmp sgt i16 %4415, 6
  br i1 %4416, label %4454, label %4417

4417:                                             ; preds = %4413, %4411
  %4418 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %4419 = load ptr, ptr %4418, align 8, !tbaa !42
  %4420 = icmp eq ptr %4419, null
  br i1 %4420, label %4454, label %4421

4421:                                             ; preds = %4417, %4451
  %4422 = phi ptr [ %4452, %4451 ], [ %4419, %4417 ]
  %4423 = getelementptr inbounds %struct.Scene, ptr %4422, i64 0, i32 20
  %4424 = load ptr, ptr %4423, align 8, !tbaa !213
  %4425 = getelementptr inbounds %struct.ToolSettings, ptr %4424, i64 0, i32 2
  %4426 = load ptr, ptr %4425, align 8, !tbaa !675
  %4427 = icmp eq ptr %4426, null
  br i1 %4427, label %4451, label %4428

4428:                                             ; preds = %4421
  %4429 = getelementptr inbounds %struct.Sculpt, ptr %4426, i64 0, i32 1
  %4430 = load i32, ptr %4429, align 8, !tbaa !676
  %4431 = and i32 %4430, 1
  %4432 = icmp eq i32 %4431, 0
  br i1 %4432, label %4437, label %4433

4433:                                             ; preds = %4428
  %4434 = getelementptr inbounds %struct.Paint, ptr %4426, i64 0, i32 6
  %4435 = load i32, ptr %4434, align 4, !tbaa !710
  %4436 = or i32 %4435, 1
  store i32 %4436, ptr %4434, align 4, !tbaa !710
  br label %4437

4437:                                             ; preds = %4433, %4428
  %4438 = and i32 %4430, 2
  %4439 = icmp eq i32 %4438, 0
  br i1 %4439, label %4444, label %4440

4440:                                             ; preds = %4437
  %4441 = getelementptr inbounds %struct.Paint, ptr %4426, i64 0, i32 6
  %4442 = load i32, ptr %4441, align 4, !tbaa !710
  %4443 = or i32 %4442, 2
  store i32 %4443, ptr %4441, align 4, !tbaa !710
  br label %4444

4444:                                             ; preds = %4440, %4437
  %4445 = and i32 %4430, 4
  %4446 = icmp eq i32 %4445, 0
  br i1 %4446, label %4451, label %4447

4447:                                             ; preds = %4444
  %4448 = getelementptr inbounds %struct.Paint, ptr %4426, i64 0, i32 6
  %4449 = load i32, ptr %4448, align 4, !tbaa !710
  %4450 = or i32 %4449, 4
  store i32 %4450, ptr %4448, align 4, !tbaa !710
  br label %4451

4451:                                             ; preds = %4447, %4444, %4421
  %4452 = load ptr, ptr %4422, align 8, !tbaa !42
  %4453 = icmp eq ptr %4452, null
  br i1 %4453, label %4454, label %4421, !llvm.loop !711

4454:                                             ; preds = %4451, %4417, %4413
  br i1 %4410, label %4477, label %4455

4455:                                             ; preds = %4454
  %4456 = icmp eq i16 %4409, 269
  br i1 %4456, label %4457, label %4461

4457:                                             ; preds = %4455
  %4458 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4459 = load i16, ptr %4458, align 2, !tbaa !83
  %4460 = icmp sgt i16 %4459, 7
  br i1 %4460, label %4477, label %4461

4461:                                             ; preds = %4457, %4455
  %4462 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 15
  %4463 = load ptr, ptr %4462, align 8, !tbaa !42
  %4464 = icmp eq ptr %4463, null
  br i1 %4464, label %4477, label %4465

4465:                                             ; preds = %4461, %4474
  %4466 = phi ptr [ %4475, %4474 ], [ %4463, %4461 ]
  %4467 = getelementptr inbounds %struct.Curve, ptr %4466, i64 0, i32 52
  %4468 = load ptr, ptr %4467, align 8, !tbaa !712
  %4469 = icmp eq ptr %4468, null
  br i1 %4469, label %4474, label %4470

4470:                                             ; preds = %4465
  %4471 = call i64 @BLI_strlen_utf8(ptr noundef nonnull %4468) #8
  %4472 = trunc i64 %4471 to i32
  %4473 = getelementptr inbounds %struct.Curve, ptr %4466, i64 0, i32 50
  store i32 %4472, ptr %4473, align 8, !tbaa !713
  br label %4474

4474:                                             ; preds = %4465, %4470
  %4475 = load ptr, ptr %4466, align 8, !tbaa !42
  %4476 = icmp eq ptr %4475, null
  br i1 %4476, label %4477, label %4465, !llvm.loop !714

4477:                                             ; preds = %4474, %4461, %4408, %4457, %4454
  %4478 = load i16, ptr %55, align 8, !tbaa !34
  %4479 = icmp sgt i16 %4478, 269
  br i1 %4479, label %4569, label %4480

4480:                                             ; preds = %4477
  %4481 = icmp eq i16 %4478, 269
  br i1 %4481, label %4482, label %4486

4482:                                             ; preds = %4480
  %4483 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4484 = load i16, ptr %4483, align 2, !tbaa !83
  %4485 = icmp sgt i16 %4484, 8
  br i1 %4485, label %4514, label %4486

4486:                                             ; preds = %4482, %4480
  %4487 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 13
  %4488 = load ptr, ptr %4487, align 8, !tbaa !42
  %4489 = icmp eq ptr %4488, null
  br i1 %4489, label %4514, label %4493

4490:                                             ; preds = %4511, %4493
  %4491 = load ptr, ptr %4494, align 8, !tbaa !42
  %4492 = icmp eq ptr %4491, null
  br i1 %4492, label %4514, label %4493, !llvm.loop !715

4493:                                             ; preds = %4486, %4490
  %4494 = phi ptr [ %4491, %4490 ], [ %4488, %4486 ]
  %4495 = getelementptr inbounds %struct.Object, ptr %4494, i64 0, i32 26
  %4496 = load ptr, ptr %4495, align 8, !tbaa !42
  %4497 = icmp eq ptr %4496, null
  br i1 %4497, label %4490, label %4498

4498:                                             ; preds = %4493, %4511
  %4499 = phi ptr [ %4512, %4511 ], [ %4496, %4493 ]
  %4500 = getelementptr inbounds %struct.ModifierData, ptr %4499, i64 0, i32 2
  %4501 = load i32, ptr %4500, align 8, !tbaa !239
  %4502 = icmp eq i32 %4501, 4
  br i1 %4502, label %4503, label %4511

4503:                                             ; preds = %4498
  %4504 = getelementptr inbounds %struct.BuildModifierData, ptr %4499, i64 0, i32 4
  %4505 = load i16, ptr %4504, align 2, !tbaa !716
  %4506 = icmp eq i16 %4505, 0
  br i1 %4506, label %4511, label %4507

4507:                                             ; preds = %4503
  %4508 = getelementptr inbounds %struct.BuildModifierData, ptr %4499, i64 0, i32 3
  %4509 = load i16, ptr %4508, align 8, !tbaa !718
  %4510 = or i16 %4509, 1
  store i16 %4510, ptr %4508, align 8, !tbaa !718
  br label %4511

4511:                                             ; preds = %4503, %4507, %4498
  %4512 = load ptr, ptr %4499, align 8, !tbaa !42
  %4513 = icmp eq ptr %4512, null
  br i1 %4513, label %4490, label %4498, !llvm.loop !719

4514:                                             ; preds = %4490, %4486, %4482
  br i1 %4479, label %4569, label %4515

4515:                                             ; preds = %4514
  %4516 = icmp eq i16 %4478, 269
  br i1 %4516, label %4517, label %4521

4517:                                             ; preds = %4515
  %4518 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 4
  %4519 = load i16, ptr %4518, align 2, !tbaa !83
  %4520 = icmp sgt i16 %4519, 10
  br i1 %4520, label %4569, label %4521

4521:                                             ; preds = %4517, %4515
  %4522 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 26
  %4523 = load ptr, ptr %4522, align 8, !tbaa !42
  %4524 = icmp eq ptr %4523, null
  br i1 %4524, label %4569, label %4528

4525:                                             ; preds = %4533, %4528
  %4526 = load ptr, ptr %4529, align 8, !tbaa !42
  %4527 = icmp eq ptr %4526, null
  br i1 %4527, label %4569, label %4528, !llvm.loop !720

4528:                                             ; preds = %4521, %4525
  %4529 = phi ptr [ %4526, %4525 ], [ %4523, %4521 ]
  %4530 = getelementptr inbounds %struct.bScreen, ptr %4529, i64 0, i32 3
  %4531 = load ptr, ptr %4530, align 8, !tbaa !42
  %4532 = icmp eq ptr %4531, null
  br i1 %4532, label %4525, label %4536

4533:                                             ; preds = %4566, %4536
  %4534 = load ptr, ptr %4537, align 8, !tbaa !42
  %4535 = icmp eq ptr %4534, null
  br i1 %4535, label %4525, label %4536, !llvm.loop !721

4536:                                             ; preds = %4528, %4533
  %4537 = phi ptr [ %4534, %4533 ], [ %4531, %4528 ]
  %4538 = getelementptr inbounds %struct.ScrArea, ptr %4537, i64 0, i32 19
  %4539 = load ptr, ptr %4538, align 8, !tbaa !42
  %4540 = icmp eq ptr %4539, null
  br i1 %4540, label %4533, label %4541

4541:                                             ; preds = %4536
  %4542 = getelementptr inbounds %struct.ScrArea, ptr %4537, i64 0, i32 20
  br label %4543

4543:                                             ; preds = %4541, %4566
  %4544 = phi ptr [ %4539, %4541 ], [ %4567, %4566 ]
  %4545 = getelementptr inbounds %struct.SpaceLink, ptr %4544, i64 0, i32 3
  %4546 = load i32, ptr %4545, align 8, !tbaa !112
  %4547 = icmp eq i32 %4546, 6
  br i1 %4547, label %4548, label %4566

4548:                                             ; preds = %4543
  %4549 = load ptr, ptr %4538, align 8, !tbaa !722
  %4550 = icmp eq ptr %4544, %4549
  %4551 = getelementptr inbounds %struct.SpaceLink, ptr %4544, i64 0, i32 2
  %4552 = select i1 %4550, ptr %4542, ptr %4551
  %4553 = load ptr, ptr %4552, align 8, !tbaa !42
  %4554 = icmp eq ptr %4553, null
  br i1 %4554, label %4566, label %4555

4555:                                             ; preds = %4548, %4563
  %4556 = phi ptr [ %4564, %4563 ], [ %4553, %4548 ]
  %4557 = getelementptr inbounds %struct.ARegion, ptr %4556, i64 0, i32 8
  %4558 = load i16, ptr %4557, align 2, !tbaa !305
  switch i16 %4558, label %4563 [
    i16 7, label %4559
    i16 4, label %4560
  ]

4559:                                             ; preds = %4555
  store i16 5, ptr %4557, align 2, !tbaa !305
  br label %4560

4560:                                             ; preds = %4555, %4559
  %4561 = phi i16 [ 3, %4559 ], [ %4558, %4555 ]
  %4562 = getelementptr inbounds %struct.ARegion, ptr %4556, i64 0, i32 9
  store i16 %4561, ptr %4562, align 8, !tbaa !308
  br label %4563

4563:                                             ; preds = %4560, %4555
  %4564 = load ptr, ptr %4556, align 8, !tbaa !42
  %4565 = icmp eq ptr %4564, null
  br i1 %4565, label %4566, label %4555, !llvm.loop !723

4566:                                             ; preds = %4563, %4548, %4543
  %4567 = load ptr, ptr %4544, align 8, !tbaa !42
  %4568 = icmp eq ptr %4567, null
  br i1 %4568, label %4533, label %4543, !llvm.loop !724

4569:                                             ; preds = %4525, %4521, %4477, %4517, %4514
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @BKE_node_tree_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_node_tree_iter_step(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_versions_nodetree_convert_angle(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = icmp eq ptr %3, null
  br i1 %4, label %62, label %5

5:                                                ; preds = %1, %59
  %6 = phi ptr [ %60, %59 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 8
  %8 = load i16, ptr %7, align 4, !tbaa !66
  switch i16 %8, label %59 [
    i16 229, label %9
    i16 254, label %17
    i16 244, label %25
    i16 237, label %31
    i16 301, label %38
    i16 109, label %44
  ]

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !725
  %12 = load ptr, ptr %11, align 8, !tbaa !726
  %13 = getelementptr inbounds %struct.bNodeSocket, ptr %12, i64 0, i32 15
  %14 = load ptr, ptr %13, align 8, !tbaa !69
  %15 = getelementptr inbounds %struct.bNodeSocketValueFloat, ptr %14, i64 0, i32 1
  %16 = load float, ptr %15, align 4, !tbaa !727
  br label %55

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 21
  %19 = load ptr, ptr %18, align 8, !tbaa !96
  %20 = getelementptr inbounds %struct.NodeDBlurData, ptr %19, i64 0, i32 3
  %21 = load float, ptr %20, align 4, !tbaa !729
  %22 = fmul float %21, 0x3F91DF46A0000000
  store float %22, ptr %20, align 4, !tbaa !729
  %23 = getelementptr inbounds %struct.NodeDBlurData, ptr %19, i64 0, i32 4
  %24 = load float, ptr %23, align 4, !tbaa !731
  br label %55

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 21
  %27 = load ptr, ptr %26, align 8, !tbaa !96
  %28 = getelementptr inbounds %struct.NodeDefocus, ptr %27, i64 0, i32 10
  %29 = load float, ptr %28, align 4, !tbaa !732
  %30 = fmul float %29, 2.550000e+02
  br label %55

31:                                               ; preds = %5
  %32 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 21
  %33 = load ptr, ptr %32, align 8, !tbaa !96
  %34 = load float, ptr %33, align 4, !tbaa !733
  %35 = fmul float %34, 0x3F91DF46A0000000
  store float %35, ptr %33, align 4, !tbaa !733
  %36 = getelementptr inbounds %struct.NodeChroma, ptr %33, i64 0, i32 1
  %37 = load float, ptr %36, align 4, !tbaa !735
  br label %55

38:                                               ; preds = %5
  %39 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 21
  %40 = load ptr, ptr %39, align 8, !tbaa !96
  %41 = getelementptr inbounds %struct.NodeGlare, ptr %40, i64 0, i32 11
  %42 = load float, ptr %41, align 4, !tbaa !736
  %43 = fmul float %42, 2.550000e+02
  br label %55

44:                                               ; preds = %5
  %45 = getelementptr inbounds %struct.bNode, ptr %6, i64 0, i32 21
  %46 = load ptr, ptr %45, align 8, !tbaa !96
  %47 = getelementptr inbounds %struct.TexMapping, ptr %46, i64 0, i32 1
  %48 = load float, ptr %47, align 4, !tbaa !72
  %49 = fmul float %48, 0x3F91DF46A0000000
  store float %49, ptr %47, align 4, !tbaa !72
  %50 = getelementptr inbounds %struct.TexMapping, ptr %46, i64 0, i32 1, i64 1
  %51 = load float, ptr %50, align 4, !tbaa !72
  %52 = fmul float %51, 0x3F91DF46A0000000
  store float %52, ptr %50, align 4, !tbaa !72
  %53 = getelementptr inbounds %struct.TexMapping, ptr %46, i64 0, i32 1, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !72
  br label %55

55:                                               ; preds = %17, %31, %44, %38, %25, %9
  %56 = phi float [ %16, %9 ], [ %30, %25 ], [ %43, %38 ], [ %54, %44 ], [ %37, %31 ], [ %24, %17 ]
  %57 = phi ptr [ %15, %9 ], [ %28, %25 ], [ %41, %38 ], [ %53, %44 ], [ %36, %31 ], [ %23, %17 ]
  %58 = fmul float %56, 0x3F91DF46A0000000
  store float %58, ptr %57, align 4, !tbaa !72
  br label %59

59:                                               ; preds = %55, %5
  %60 = load ptr, ptr %6, align 8, !tbaa !42
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %5, !llvm.loop !738

62:                                               ; preds = %59, %1
  ret void
}

declare void @fill_vn_fl(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_versions_nodetree_socket_use_flags_2_62(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %8

5:                                                ; preds = %24, %20
  %6 = load ptr, ptr %9, align 8, !tbaa !42
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8, !llvm.loop !739

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %10 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %8, %13
  %14 = phi ptr [ %18, %13 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct.bNodeSocket, ptr %14, i64 0, i32 8
  %16 = load i16, ptr %15, align 2, !tbaa !740
  %17 = and i16 %16, -5
  store i16 %17, ptr %15, align 2, !tbaa !740
  %18 = load ptr, ptr %14, align 8, !tbaa !42
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %13, !llvm.loop !741

20:                                               ; preds = %13, %8
  %21 = getelementptr inbounds %struct.bNode, ptr %9, i64 0, i32 18
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = icmp eq ptr %22, null
  br i1 %23, label %5, label %24

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %29, %24 ], [ %22, %20 ]
  %26 = getelementptr inbounds %struct.bNodeSocket, ptr %25, i64 0, i32 8
  %27 = load i16, ptr %26, align 2, !tbaa !740
  %28 = and i16 %27, -5
  store i16 %28, ptr %26, align 2, !tbaa !740
  %29 = load ptr, ptr %25, align 8, !tbaa !42
  %30 = icmp eq ptr %29, null
  br i1 %30, label %5, label %24, !llvm.loop !742

31:                                               ; preds = %5, %1
  %32 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 22
  %33 = load ptr, ptr %32, align 8, !tbaa !42
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %31, %35
  %36 = phi ptr [ %40, %35 ], [ %33, %31 ]
  %37 = getelementptr inbounds %struct.bNodeSocket, ptr %36, i64 0, i32 8
  %38 = load i16, ptr %37, align 2, !tbaa !740
  %39 = and i16 %38, -5
  store i16 %39, ptr %37, align 2, !tbaa !740
  %40 = load ptr, ptr %36, align 8, !tbaa !42
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %35, !llvm.loop !743

42:                                               ; preds = %35, %31
  %43 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 23
  %44 = load ptr, ptr %43, align 8, !tbaa !42
  %45 = icmp eq ptr %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %42, %46
  %47 = phi ptr [ %51, %46 ], [ %44, %42 ]
  %48 = getelementptr inbounds %struct.bNodeSocket, ptr %47, i64 0, i32 8
  %49 = load i16, ptr %48, align 2, !tbaa !740
  %50 = and i16 %49, -5
  store i16 %50, ptr %48, align 2, !tbaa !740
  %51 = load ptr, ptr %47, align 8, !tbaa !42
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %46, !llvm.loop !744

53:                                               ; preds = %46, %42
  %54 = getelementptr inbounds %struct.bNodeTree, ptr %0, i64 0, i32 8
  %55 = load ptr, ptr %54, align 8, !tbaa !42
  %56 = icmp eq ptr %55, null
  br i1 %56, label %71, label %57

57:                                               ; preds = %53, %57
  %58 = phi ptr [ %69, %57 ], [ %55, %53 ]
  %59 = getelementptr inbounds %struct.bNodeLink, ptr %58, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !468
  %61 = getelementptr inbounds %struct.bNodeSocket, ptr %60, i64 0, i32 8
  %62 = load i16, ptr %61, align 2, !tbaa !740
  %63 = or i16 %62, 4
  store i16 %63, ptr %61, align 2, !tbaa !740
  %64 = getelementptr inbounds %struct.bNodeLink, ptr %58, i64 0, i32 5
  %65 = load ptr, ptr %64, align 8, !tbaa !470
  %66 = getelementptr inbounds %struct.bNodeSocket, ptr %65, i64 0, i32 8
  %67 = load i16, ptr %66, align 2, !tbaa !740
  %68 = or i16 %67, 4
  store i16 %68, ptr %66, align 2, !tbaa !740
  %69 = load ptr, ptr %58, align 8, !tbaa !42
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %57, !llvm.loop !745

71:                                               ; preds = %57, %53
  ret void
}

declare ptr @BKE_tracking_object_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @unit_m4(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_bproperty_object_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @blo_reportf_wrap(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @txt_extended_ascii_as_utf8(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @do_versions_nodetree_multi_file_output_format_2_62_1(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca [768 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  %6 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = icmp eq ptr %7, null
  br i1 %8, label %99, label %9

9:                                                ; preds = %2
  %10 = icmp eq ptr %0, null
  %11 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22
  br label %12

12:                                               ; preds = %9, %96
  %13 = phi ptr [ %7, %9 ], [ %97, %96 ]
  %14 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 8
  %15 = load i16, ptr %14, align 4, !tbaa !66
  switch i16 %15, label %96 [
    i16 223, label %16
    i16 267, label %75
  ]

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 21
  %18 = load ptr, ptr %17, align 8, !tbaa !96
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %20 = call ptr %19(i64 noundef 1288, ptr noundef nonnull @.str.19) #8
  %21 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 17
  %22 = call ptr @BLI_findlink(ptr noundef nonnull %21, i32 noundef 0) #8
  %23 = call ptr @BLI_findlink(ptr noundef nonnull %21, i32 noundef 1) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  store ptr %20, ptr %17, align 8, !tbaa !96
  %24 = icmp eq ptr %18, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 768, ptr nonnull %4) #8
  call void @BLI_split_dirfile(ptr noundef nonnull %18, ptr noundef nonnull %4, ptr noundef nonnull %3, i64 noundef 768, i64 noundef 256) #8
  %26 = call ptr @BLI_strncpy(ptr noundef %20, ptr noundef nonnull %4, i64 noundef 1024) #8
  %27 = getelementptr inbounds %struct.NodeImageMultiFile, ptr %20, i64 0, i32 1
  %28 = getelementptr inbounds %struct.NodeImageFile, ptr %18, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %27, ptr noundef nonnull align 8 dereferenceable(248) %28, i64 248, i1 false), !tbaa.struct !746
  call void @llvm.lifetime.end.p0(i64 768, ptr nonnull %4) #8
  br label %32

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct.bNodeSocket, ptr %22, i64 0, i32 5
  %31 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef nonnull %30, i64 noundef 256) #8
  br label %32

32:                                               ; preds = %29, %25
  br i1 %24, label %60, label %33

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.NodeImageFile, ptr %18, i64 0, i32 1
  %35 = load i8, ptr %34, align 8, !tbaa !748
  switch i8 %35, label %60 [
    i8 7, label %36
    i8 23, label %36
  ]

36:                                               ; preds = %33, %33
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #8
  %37 = getelementptr inbounds %struct.NodeImageMultiFile, ptr %20, i64 0, i32 1
  store i8 28, ptr %37, align 8, !tbaa !750
  %38 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 1024, ptr noundef nonnull @.str.20, ptr noundef nonnull %3) #8
  %39 = call ptr @ntreeCompositOutputFileAddSocket(ptr noundef %1, ptr noundef nonnull %13, ptr noundef nonnull %5, ptr noundef nonnull %37) #8
  %40 = getelementptr inbounds %struct.bNodeSocket, ptr %39, i64 0, i32 5
  %41 = call ptr @BLI_strncpy(ptr noundef nonnull %40, ptr noundef nonnull %5, i64 noundef 64) #8
  %42 = getelementptr inbounds %struct.bNodeSocket, ptr %22, i64 0, i32 23
  %43 = load ptr, ptr %42, align 8, !tbaa !752
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.bNodeLink, ptr %43, i64 0, i32 5
  store ptr %39, ptr %46, align 8, !tbaa !470
  %47 = getelementptr inbounds %struct.bNodeSocket, ptr %39, i64 0, i32 23
  store ptr %43, ptr %47, align 8, !tbaa !752
  br label %48

48:                                               ; preds = %45, %36
  %49 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %5, i64 noundef 1024, ptr noundef nonnull @.str.21, ptr noundef nonnull %3) #8
  %50 = call ptr @ntreeCompositOutputFileAddSocket(ptr noundef %1, ptr noundef nonnull %13, ptr noundef nonnull %5, ptr noundef nonnull %37) #8
  %51 = getelementptr inbounds %struct.bNodeSocket, ptr %50, i64 0, i32 5
  %52 = call ptr @BLI_strncpy(ptr noundef nonnull %51, ptr noundef nonnull %5, i64 noundef 64) #8
  %53 = getelementptr inbounds %struct.bNodeSocket, ptr %23, i64 0, i32 23
  %54 = load ptr, ptr %53, align 8, !tbaa !752
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.bNodeLink, ptr %54, i64 0, i32 5
  store ptr %50, ptr %57, align 8, !tbaa !470
  %58 = getelementptr inbounds %struct.bNodeSocket, ptr %50, i64 0, i32 23
  store ptr %54, ptr %58, align 8, !tbaa !752
  br label %59

59:                                               ; preds = %56, %48
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #8
  br label %71

60:                                               ; preds = %33, %32
  %61 = getelementptr inbounds %struct.NodeImageMultiFile, ptr %20, i64 0, i32 1
  %62 = call ptr @ntreeCompositOutputFileAddSocket(ptr noundef %1, ptr noundef nonnull %13, ptr noundef nonnull %3, ptr noundef nonnull %61) #8
  %63 = getelementptr inbounds %struct.bNodeSocket, ptr %62, i64 0, i32 5
  %64 = call ptr @BLI_strncpy(ptr noundef nonnull %63, ptr noundef nonnull %3, i64 noundef 64) #8
  %65 = getelementptr inbounds %struct.bNodeSocket, ptr %22, i64 0, i32 23
  %66 = load ptr, ptr %65, align 8, !tbaa !752
  %67 = icmp eq ptr %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.bNodeLink, ptr %66, i64 0, i32 5
  store ptr %62, ptr %69, align 8, !tbaa !470
  %70 = getelementptr inbounds %struct.bNodeSocket, ptr %62, i64 0, i32 23
  store ptr %66, ptr %70, align 8, !tbaa !752
  br label %71

71:                                               ; preds = %60, %68, %59
  call void @nodeRemoveSocket(ptr noundef %1, ptr noundef nonnull %13, ptr noundef %22) #8
  call void @nodeRemoveSocket(ptr noundef %1, ptr noundef nonnull %13, ptr noundef %23) #8
  br i1 %24, label %74, label %72

72:                                               ; preds = %71
  %73 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %73(ptr noundef nonnull %18) #8
  br label %74

74:                                               ; preds = %72, %71
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #8
  br label %96

75:                                               ; preds = %12
  %76 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 21
  %77 = load ptr, ptr %76, align 8, !tbaa !96
  store i16 223, ptr %14, align 4, !tbaa !66
  br i1 %10, label %80, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.NodeImageMultiFile, ptr %77, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %79, ptr noundef nonnull align 8 dereferenceable(248) %11, i64 248, i1 false), !tbaa.struct !746
  br label %80

80:                                               ; preds = %78, %75
  %81 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 17
  %82 = load ptr, ptr %81, align 8, !tbaa !42
  %83 = icmp eq ptr %82, null
  br i1 %83, label %92, label %84

84:                                               ; preds = %80, %84
  %85 = phi ptr [ %90, %84 ], [ %82, %80 ]
  %86 = getelementptr inbounds %struct.bNodeSocket, ptr %85, i64 0, i32 6
  %87 = load ptr, ptr %86, align 8, !tbaa !292
  %88 = load i16, ptr %87, align 8, !tbaa !753
  %89 = getelementptr inbounds %struct.NodeImageMultiFileSocket, ptr %87, i64 0, i32 1
  store i16 %88, ptr %89, align 2, !tbaa !755
  %90 = load ptr, ptr %85, align 8, !tbaa !42
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %84, !llvm.loop !756

92:                                               ; preds = %84, %80
  %93 = getelementptr inbounds %struct.bNode, ptr %13, i64 0, i32 7
  %94 = load i32, ptr %93, align 8, !tbaa !430
  %95 = or i32 %94, 4
  store i32 %95, ptr %93, align 8, !tbaa !430
  br label %96

96:                                               ; preds = %12, %74, %92
  %97 = load ptr, ptr %13, align 8, !tbaa !42
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %12, !llvm.loop !757

99:                                               ; preds = %96, %2
  ret void
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @do_versions_affine_tracker_track(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !758
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %113

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !759
  %8 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 3, i64 1
  %10 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 4, i64 1
  %12 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 5
  %13 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 5, i64 1
  %14 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 6
  %15 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %0, i64 0, i32 6, i64 1
  %16 = zext nneg i32 %3 to i64
  br label %17

17:                                               ; preds = %5, %110
  %18 = phi i64 [ 0, %5 ], [ %111, %110 ]
  %19 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %7, i64 %18, i32 1
  %20 = load float, ptr %19, align 4, !tbaa !72
  %21 = fcmp oeq float %20, 0.000000e+00
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = getelementptr inbounds float, ptr %19, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !72
  %25 = fcmp oeq float %24, 0.000000e+00
  %26 = zext i1 %25 to i8
  br label %27

27:                                               ; preds = %17, %22
  %28 = phi i8 [ 0, %17 ], [ %26, %22 ]
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %79, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %7, i64 %18, i32 1, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !72
  %33 = fcmp oeq float %32, 0.000000e+00
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = getelementptr inbounds float, ptr %31, i64 1
  %36 = load float, ptr %35, align 4, !tbaa !72
  %37 = fcmp oeq float %36, 0.000000e+00
  %38 = zext i1 %37 to i8
  br label %39

39:                                               ; preds = %30, %34
  %40 = phi i8 [ 0, %30 ], [ %38, %34 ]
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %79, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %7, i64 %18, i32 1, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !72
  %45 = fcmp oeq float %44, 0.000000e+00
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = getelementptr inbounds float, ptr %43, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !72
  %49 = fcmp oeq float %48, 0.000000e+00
  %50 = zext i1 %49 to i8
  br label %51

51:                                               ; preds = %42, %46
  %52 = phi i8 [ 0, %42 ], [ %50, %46 ]
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %79, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %7, i64 %18, i32 1, i64 3
  %56 = load float, ptr %55, align 4, !tbaa !72
  %57 = fcmp oeq float %56, 0.000000e+00
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = getelementptr inbounds float, ptr %55, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !72
  %61 = fcmp oeq float %60, 0.000000e+00
  %62 = zext i1 %61 to i8
  br label %63

63:                                               ; preds = %54, %58
  %64 = phi i8 [ 0, %54 ], [ %62, %58 ]
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %63
  %67 = load float, ptr %8, align 8, !tbaa !72
  store float %67, ptr %19, align 4, !tbaa !72
  %68 = load float, ptr %9, align 4, !tbaa !72
  %69 = getelementptr inbounds [2 x float], ptr %19, i64 0, i64 1
  store float %68, ptr %69, align 4, !tbaa !72
  %70 = load float, ptr %10, align 8, !tbaa !72
  store float %70, ptr %31, align 4, !tbaa !72
  %71 = load float, ptr %9, align 4, !tbaa !72
  %72 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %7, i64 %18, i32 1, i64 1, i64 1
  store float %71, ptr %72, align 4, !tbaa !72
  %73 = load float, ptr %10, align 8, !tbaa !72
  store float %73, ptr %43, align 4, !tbaa !72
  %74 = load float, ptr %11, align 4, !tbaa !72
  %75 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %7, i64 %18, i32 1, i64 2, i64 1
  store float %74, ptr %75, align 4, !tbaa !72
  %76 = load float, ptr %8, align 8, !tbaa !72
  store float %76, ptr %55, align 4, !tbaa !72
  %77 = load float, ptr %11, align 4, !tbaa !72
  %78 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %7, i64 %18, i32 1, i64 3, i64 1
  store float %77, ptr %78, align 4, !tbaa !72
  br label %79

79:                                               ; preds = %66, %63, %51, %39, %27
  %80 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %7, i64 %18, i32 2
  %81 = load float, ptr %80, align 4, !tbaa !72
  %82 = fcmp oeq float %81, 0.000000e+00
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = getelementptr inbounds float, ptr %80, i64 1
  %85 = load float, ptr %84, align 4, !tbaa !72
  %86 = fcmp oeq float %85, 0.000000e+00
  %87 = zext i1 %86 to i8
  br label %88

88:                                               ; preds = %79, %83
  %89 = phi i8 [ 0, %79 ], [ %87, %83 ]
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %110, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.MovieTrackingMarker, ptr %7, i64 %18, i32 3
  %93 = load float, ptr %92, align 4, !tbaa !72
  %94 = fcmp oeq float %93, 0.000000e+00
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = getelementptr inbounds float, ptr %92, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !72
  %98 = fcmp oeq float %97, 0.000000e+00
  %99 = zext i1 %98 to i8
  br label %100

100:                                              ; preds = %91, %95
  %101 = phi i8 [ 0, %91 ], [ %99, %95 ]
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %100
  %104 = load float, ptr %12, align 4, !tbaa !72
  store float %104, ptr %80, align 4, !tbaa !72
  %105 = load float, ptr %13, align 4, !tbaa !72
  %106 = getelementptr inbounds float, ptr %80, i64 1
  store float %105, ptr %106, align 4, !tbaa !72
  %107 = load float, ptr %14, align 4, !tbaa !72
  store float %107, ptr %92, align 4, !tbaa !72
  %108 = load float, ptr %15, align 4, !tbaa !72
  %109 = getelementptr inbounds float, ptr %92, i64 1
  store float %108, ptr %109, align 4, !tbaa !72
  br label %110

110:                                              ; preds = %103, %100, %88
  %111 = add nuw nsw i64 %18, 1
  %112 = icmp eq i64 %111, %16
  br i1 %112, label %113, label %17, !llvm.loop !760

113:                                              ; preds = %110, %1
  ret void
}

declare void @BKE_sequence_iterator_begin(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BKE_sequence_modifier_new(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @BKE_sequence_iterator_next(ptr noundef) local_unnamed_addr #2

declare void @BKE_sequence_iterator_end(ptr noundef) local_unnamed_addr #2

declare void @BKE_scene_disable_color_management(ptr noundef) local_unnamed_addr #2

declare void @blo_do_versions_key_uidgen(ptr noundef) local_unnamed_addr #2

declare void @CustomData_update_typemap(ptr noundef) local_unnamed_addr #2

declare void @CustomData_free_layers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @animviz_settings_init(ptr noundef) local_unnamed_addr #2

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_sequence_alpha_mode_from_extension(ptr noundef) local_unnamed_addr #2

declare ptr @blo_do_versions_newlibadr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare void @BKE_image_alpha_mode_from_extension(ptr noundef) local_unnamed_addr #2

declare void @BKE_mesh_do_versions_cd_flag_init(ptr noundef) local_unnamed_addr #2

declare void @nodeUniqueName(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @default_mtex(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ntreeCompositColorBalanceSyncFromLGG(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ntreeCompositColorBalanceSyncFromCDL(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @DNA_struct_elem_find(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_object_get_tracks(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @BLI_strlen_utf8(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_split_dirfile(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @ntreeCompositOutputFileAddSocket(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @nodeRemoveSocket(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ntreeCompositOutputFileUniquePath(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @ntreeCompositOutputFileUniqueLayer(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @node_socket_get_static_idname(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 7
  %3 = load i16, ptr %2, align 8, !tbaa !761
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
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = load i32, ptr %6, align 4, !tbaa !762
  %8 = tail call ptr @nodeStaticSocketType(i32 noundef 0, i32 noundef %7) #8
  br label %30

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 15
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  %12 = load i32, ptr %11, align 4, !tbaa !763
  %13 = tail call ptr @nodeStaticSocketType(i32 noundef 6, i32 noundef %12) #8
  br label %30

14:                                               ; preds = %1
  %15 = tail call ptr @nodeStaticSocketType(i32 noundef 4, i32 noundef 0) #8
  br label %30

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 15
  %18 = load ptr, ptr %17, align 8, !tbaa !69
  %19 = load i32, ptr %18, align 4, !tbaa !765
  %20 = tail call ptr @nodeStaticSocketType(i32 noundef 1, i32 noundef %19) #8
  br label %30

21:                                               ; preds = %1
  %22 = tail call ptr @nodeStaticSocketType(i32 noundef 2, i32 noundef 0) #8
  br label %30

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.bNodeSocket, ptr %0, i64 0, i32 15
  %25 = load ptr, ptr %24, align 8, !tbaa !69
  %26 = load i32, ptr %25, align 4, !tbaa !767
  %27 = tail call ptr @nodeStaticSocketType(i32 noundef 7, i32 noundef %26) #8
  br label %30

28:                                               ; preds = %1
  %29 = tail call ptr @nodeStaticSocketType(i32 noundef 3, i32 noundef 0) #8
  br label %30

30:                                               ; preds = %1, %28, %23, %21, %16, %14, %9, %4
  %31 = phi ptr [ %29, %28 ], [ %27, %23 ], [ %22, %21 ], [ %20, %16 ], [ %15, %14 ], [ %13, %9 ], [ %8, %4 ], [ @.str.234, %1 ]
  ret ptr %31
}

declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @nodeStaticSocketType(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

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
!66 = !{!67, !39, i64 172}
!67 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !46, i64 168, !39, i64 172, !39, i64 174, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !39, i64 184, !39, i64 186, !37, i64 188, !41, i64 200, !41, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !41, i64 264, !49, i64 280, !49, i64 284, !49, i64 288, !49, i64 292, !49, i64 296, !49, i64 300, !49, i64 304, !46, i64 308, !37, i64 312, !39, i64 376, !39, i64 378, !49, i64 380, !49, i64 384, !39, i64 388, !39, i64 390, !36, i64 392, !54, i64 400, !54, i64 416, !54, i64 432, !39, i64 448, !39, i64 450, !46, i64 452, !36, i64 456}
!68 = !{!67, !36, i64 216}
!69 = !{!70, !36, i64 256}
!70 = !{!"bNodeSocket", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !37, i64 96, !36, i64 160, !39, i64 168, !39, i64 170, !39, i64 172, !39, i64 174, !36, i64 176, !37, i64 184, !49, i64 248, !49, i64 252, !36, i64 256, !39, i64 264, !39, i64 266, !46, i64 268, !36, i64 272, !46, i64 280, !46, i64 284, !36, i64 288, !36, i64 296, !71, i64 304}
!71 = !{!"bNodeStack", !37, i64 0, !49, i64 16, !49, i64 20, !36, i64 24, !39, i64 32, !39, i64 34, !39, i64 36, !39, i64 38, !39, i64 40, !39, i64 42, !37, i64 44}
!72 = !{!49, !49, i64 0}
!73 = distinct !{!73, !74, !75}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"llvm.loop.unroll.disable"}
!76 = distinct !{!76, !74, !75}
!77 = distinct !{!77, !74, !75}
!78 = !{!79, !39, i64 192}
!79 = !{!"ParticleSettings", !45, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !46, i64 152, !46, i64 156, !39, i64 160, !39, i64 162, !39, i64 164, !39, i64 166, !39, i64 168, !39, i64 170, !39, i64 172, !39, i64 174, !46, i64 176, !46, i64 180, !39, i64 184, !39, i64 186, !39, i64 188, !39, i64 190, !39, i64 192, !39, i64 194, !39, i64 196, !39, i64 198, !39, i64 200, !39, i64 202, !39, i64 204, !39, i64 206, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !39, i64 220, !39, i64 222, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !49, i64 232, !49, i64 236, !37, i64 240, !37, i64 248, !49, i64 256, !49, i64 260, !49, i64 264, !39, i64 268, !39, i64 270, !49, i64 272, !49, i64 276, !49, i64 280, !49, i64 284, !49, i64 288, !49, i64 292, !49, i64 296, !49, i64 300, !49, i64 304, !49, i64 308, !49, i64 312, !49, i64 316, !37, i64 320, !46, i64 324, !46, i64 328, !46, i64 332, !46, i64 336, !39, i64 340, !37, i64 342, !49, i64 348, !49, i64 352, !49, i64 356, !49, i64 360, !49, i64 364, !49, i64 368, !49, i64 372, !37, i64 376, !49, i64 388, !49, i64 392, !49, i64 396, !49, i64 400, !49, i64 404, !49, i64 408, !49, i64 412, !37, i64 416, !49, i64 428, !49, i64 432, !49, i64 436, !49, i64 440, !46, i64 444, !46, i64 448, !49, i64 452, !49, i64 456, !49, i64 460, !49, i64 464, !49, i64 468, !49, i64 472, !49, i64 476, !49, i64 480, !49, i64 484, !49, i64 488, !49, i64 492, !49, i64 496, !49, i64 500, !49, i64 504, !49, i64 508, !49, i64 512, !49, i64 516, !49, i64 520, !49, i64 524, !49, i64 528, !49, i64 532, !49, i64 536, !49, i64 540, !49, i64 544, !49, i64 548, !37, i64 552, !49, i64 560, !49, i64 564, !46, i64 568, !46, i64 572, !37, i64 576, !36, i64 720, !41, i64 728, !36, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !39, i64 792, !37, i64 794}
!80 = !{!79, !46, i64 176}
!81 = !{!79, !39, i64 170}
!82 = distinct !{!82, !74, !75}
!83 = !{!35, !39, i64 1042}
!84 = !{!85, !37, i64 1042}
!85 = !{!"Object", !45, i64 0, !36, i64 120, !36, i64 128, !39, i64 136, !39, i64 138, !46, i64 140, !46, i64 144, !46, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !86, i64 312, !36, i64 360, !41, i64 368, !41, i64 384, !41, i64 400, !41, i64 416, !46, i64 432, !46, i64 436, !36, i64 440, !36, i64 448, !46, i64 456, !46, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !49, i64 616, !49, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !46, i64 944, !39, i64 948, !39, i64 950, !39, i64 952, !39, i64 954, !39, i64 956, !39, i64 958, !39, i64 960, !39, i64 962, !39, i64 964, !37, i64 966, !37, i64 967, !46, i64 968, !46, i64 972, !46, i64 976, !46, i64 980, !46, i64 984, !49, i64 988, !49, i64 992, !49, i64 996, !49, i64 1000, !49, i64 1004, !49, i64 1008, !49, i64 1012, !49, i64 1016, !49, i64 1020, !49, i64 1024, !49, i64 1028, !49, i64 1032, !39, i64 1036, !39, i64 1038, !39, i64 1040, !37, i64 1042, !37, i64 1043, !39, i64 1044, !37, i64 1046, !37, i64 1047, !49, i64 1048, !49, i64 1052, !41, i64 1056, !41, i64 1072, !41, i64 1088, !41, i64 1104, !49, i64 1120, !39, i64 1124, !39, i64 1126, !37, i64 1128, !46, i64 1144, !46, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !39, i64 1162, !37, i64 1164, !41, i64 1176, !41, i64 1192, !41, i64 1208, !41, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !39, i64 1266, !49, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !40, i64 1304, !40, i64 1312, !46, i64 1320, !46, i64 1324, !41, i64 1328, !41, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !41, i64 1400, !36, i64 1416}
!86 = !{!"bAnimVizSettings", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !46, i64 32, !46, i64 36, !46, i64 40, !46, i64 44}
!87 = !{!85, !37, i64 1043}
!88 = distinct !{!88, !74, !75}
!89 = !{!90, !49, i64 156}
!90 = !{!"Camera", !45, i64 0, !36, i64 120, !37, i64 128, !37, i64 129, !39, i64 130, !49, i64 132, !49, i64 136, !49, i64 140, !49, i64 144, !49, i64 148, !49, i64 152, !49, i64 156, !49, i64 160, !49, i64 164, !49, i64 168, !49, i64 172, !36, i64 176, !36, i64 184, !37, i64 192, !37, i64 193}
!91 = !{!90, !49, i64 160}
!92 = distinct !{!92, !74, !75}
!93 = !{!94, !46, i64 256}
!94 = !{!"bNodeTree", !45, i64 0, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 200, !36, i64 208, !37, i64 216, !41, i64 224, !41, i64 240, !46, i64 256, !46, i64 260, !46, i64 264, !46, i64 268, !46, i64 272, !39, i64 276, !39, i64 278, !46, i64 280, !46, i64 284, !39, i64 288, !39, i64 290, !46, i64 292, !54, i64 296, !41, i64 312, !41, i64 328, !36, i64 344, !95, i64 352, !46, i64 356, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !36, i64 408, !36, i64 416, !36, i64 424}
!95 = !{!"bNodeInstanceKey", !46, i64 0}
!96 = !{!67, !36, i64 248}
!97 = !{!98, !37, i64 40}
!98 = !{!"TexMapping", !37, i64 0, !37, i64 12, !37, i64 24, !46, i64 36, !37, i64 40, !37, i64 41, !37, i64 42, !37, i64 43, !46, i64 44, !37, i64 48, !37, i64 112, !37, i64 124, !36, i64 136}
!99 = !{!98, !37, i64 41}
!100 = !{!98, !37, i64 42}
!101 = distinct !{!101, !74, !75}
!102 = distinct !{!102, !74, !75}
!103 = distinct !{!103, !74, !75}
!104 = !{!105, !36, i64 768}
!105 = !{!"Material", !45, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !49, i64 132, !49, i64 136, !49, i64 140, !49, i64 144, !49, i64 148, !49, i64 152, !49, i64 156, !49, i64 160, !49, i64 164, !49, i64 168, !49, i64 172, !49, i64 176, !49, i64 180, !49, i64 184, !49, i64 188, !49, i64 192, !49, i64 196, !49, i64 200, !49, i64 204, !49, i64 208, !49, i64 212, !49, i64 216, !49, i64 220, !106, i64 224, !107, i64 312, !49, i64 328, !49, i64 332, !49, i64 336, !49, i64 340, !49, i64 344, !49, i64 348, !49, i64 352, !39, i64 356, !39, i64 358, !39, i64 360, !37, i64 362, !37, i64 363, !49, i64 364, !49, i64 368, !39, i64 372, !39, i64 374, !49, i64 376, !49, i64 380, !49, i64 384, !49, i64 388, !39, i64 392, !39, i64 394, !46, i64 396, !46, i64 400, !46, i64 404, !46, i64 408, !39, i64 412, !39, i64 414, !39, i64 416, !39, i64 418, !49, i64 420, !49, i64 424, !49, i64 428, !49, i64 432, !49, i64 436, !49, i64 440, !49, i64 444, !49, i64 448, !49, i64 452, !49, i64 456, !37, i64 460, !49, i64 524, !49, i64 528, !49, i64 532, !46, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !39, i64 544, !39, i64 546, !39, i64 548, !37, i64 550, !37, i64 551, !39, i64 552, !39, i64 554, !49, i64 556, !49, i64 560, !37, i64 564, !49, i64 580, !49, i64 584, !39, i64 588, !39, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !39, i64 612, !39, i64 614, !49, i64 616, !49, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !49, i64 800, !49, i64 804, !49, i64 808, !49, i64 812, !49, i64 816, !39, i64 820, !39, i64 822, !37, i64 824, !37, i64 836, !49, i64 848, !49, i64 852, !49, i64 856, !49, i64 860, !49, i64 864, !49, i64 868, !49, i64 872, !39, i64 876, !39, i64 878, !46, i64 880, !39, i64 884, !39, i64 886, !37, i64 888, !39, i64 904, !39, i64 906, !39, i64 908, !39, i64 910, !39, i64 912, !37, i64 914, !36, i64 920, !41, i64 928}
!106 = !{!"VolumeSettings", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !49, i64 52, !49, i64 56, !49, i64 60, !39, i64 64, !39, i64 66, !39, i64 68, !39, i64 70, !49, i64 72, !49, i64 76, !49, i64 80, !49, i64 84}
!107 = !{!"GameSettings", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12}
!108 = distinct !{!108, !74, !75}
!109 = distinct !{!109, !74, !75}
!110 = distinct !{!110, !74, !75}
!111 = distinct !{!111, !74, !75}
!112 = !{!113, !46, i64 32}
!113 = !{!"SpaceLink", !36, i64 0, !36, i64 8, !41, i64 16, !46, i64 32, !49, i64 36, !37, i64 40}
!114 = !{!115, !49, i64 76}
!115 = !{!"View3D", !36, i64 0, !36, i64 8, !41, i64 16, !46, i64 32, !49, i64 36, !37, i64 40, !37, i64 56, !49, i64 72, !49, i64 76, !37, i64 80, !37, i64 81, !46, i64 84, !46, i64 88, !39, i64 92, !39, i64 94, !36, i64 96, !36, i64 104, !54, i64 112, !41, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !46, i64 224, !46, i64 228, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !39, i64 240, !39, i64 242, !49, i64 244, !49, i64 248, !49, i64 252, !49, i64 256, !37, i64 260, !37, i64 272, !39, i64 284, !39, i64 286, !39, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !41, i64 296, !41, i64 312, !41, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!116 = !{!115, !39, i64 242}
!117 = !{!115, !37, i64 80}
!118 = !{!119, !46, i64 76}
!119 = !{!"SpaceClip", !36, i64 0, !36, i64 8, !41, i64 16, !46, i64 32, !49, i64 36, !49, i64 40, !49, i64 44, !49, i64 48, !49, i64 52, !120, i64 56, !36, i64 64, !121, i64 72, !46, i64 208, !39, i64 212, !39, i64 214, !46, i64 216, !37, i64 220, !49, i64 228, !49, i64 232, !46, i64 236, !37, i64 240, !37, i64 304, !46, i64 368, !39, i64 372, !39, i64 374, !46, i64 376, !46, i64 380, !37, i64 384, !123, i64 392}
!120 = !{!"MovieClipUser", !46, i64 0, !39, i64 4, !39, i64 6}
!121 = !{!"MovieClipScopes", !39, i64 0, !39, i64 2, !46, i64 4, !46, i64 8, !46, i64 12, !122, i64 16, !36, i64 80, !36, i64 88, !37, i64 96, !39, i64 104, !39, i64 106, !46, i64 108, !36, i64 112, !36, i64 120, !37, i64 128}
!122 = !{!"MovieTrackingMarker", !37, i64 0, !37, i64 8, !37, i64 40, !37, i64 48, !46, i64 56, !46, i64 60}
!123 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!124 = distinct !{!124, !74, !75}
!125 = distinct !{!125, !74, !75}
!126 = !{!127, !49, i64 1168}
!127 = !{!"MovieClip", !45, i64 0, !36, i64 120, !37, i64 128, !46, i64 1152, !46, i64 1156, !37, i64 1160, !49, i64 1168, !49, i64 1172, !36, i64 1176, !36, i64 1184, !36, i64 1192, !128, i64 1200, !36, i64 1528, !134, i64 1536, !46, i64 2312, !46, i64 2316, !46, i64 2320, !46, i64 2324, !64, i64 2328}
!128 = !{!"MovieTracking", !129, i64 0, !130, i64 72, !41, i64 128, !41, i64 144, !131, i64 160, !132, i64 184, !36, i64 232, !36, i64 240, !41, i64 248, !46, i64 264, !46, i64 268, !36, i64 272, !133, i64 280}
!129 = !{!"MovieTrackingSettings", !46, i64 0, !39, i64 4, !39, i64 6, !49, i64 8, !39, i64 12, !39, i64 14, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !49, i64 24, !39, i64 28, !39, i64 30, !46, i64 32, !46, i64 36, !46, i64 40, !39, i64 44, !39, i64 46, !49, i64 48, !46, i64 52, !46, i64 56, !49, i64 60, !49, i64 64, !46, i64 68}
!130 = !{!"MovieTrackingCamera", !36, i64 0, !39, i64 8, !39, i64 10, !49, i64 12, !49, i64 16, !49, i64 20, !39, i64 24, !39, i64 26, !37, i64 28, !49, i64 36, !49, i64 40, !49, i64 44, !49, i64 48, !49, i64 52}
!131 = !{!"MovieTrackingReconstruction", !46, i64 0, !49, i64 4, !46, i64 8, !46, i64 12, !36, i64 16}
!132 = !{!"MovieTrackingStabilization", !46, i64 0, !46, i64 4, !46, i64 8, !49, i64 12, !36, i64 16, !49, i64 24, !49, i64 28, !49, i64 32, !46, i64 36, !46, i64 40, !49, i64 44}
!133 = !{!"MovieTrackingDopesheet", !46, i64 0, !39, i64 4, !39, i64 6, !41, i64 8, !41, i64 24, !46, i64 40, !46, i64 44}
!134 = !{!"MovieClipProxy", !37, i64 0, !39, i64 768, !39, i64 770, !39, i64 772, !39, i64 774}
!135 = !{!127, !49, i64 1172}
!136 = !{!127, !39, i64 2310}
!137 = !{!127, !39, i64 2308}
!138 = !{!127, !39, i64 2306}
!139 = !{!127, !49, i64 1288}
!140 = !{!141, !49, i64 188}
!141 = !{!"MovieTrackingTrack", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !46, i64 120, !46, i64 124, !36, i64 128, !37, i64 136, !49, i64 148, !46, i64 152, !46, i64 156, !46, i64 160, !37, i64 164, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !46, i64 184, !49, i64 188, !36, i64 192, !49, i64 200, !49, i64 204}
!142 = distinct !{!142, !74, !75}
!143 = !{!47, !39, i64 506}
!144 = !{!48, !37, i64 0}
!145 = !{!47, !39, i64 504}
!146 = !{!48, !37, i64 2}
!147 = !{!47, !39, i64 510}
!148 = !{!48, !37, i64 5}
!149 = !{!48, !37, i64 4}
!150 = !{!48, !37, i64 1}
!151 = !{!48, !37, i64 6}
!152 = !{!47, !39, i64 508}
!153 = !{!48, !37, i64 3}
!154 = !{!48, !37, i64 16}
!155 = !{!48, !37, i64 7}
!156 = distinct !{!156, !74, !75}
!157 = !{!129, !39, i64 12}
!158 = !{!129, !39, i64 4}
!159 = !{!129, !49, i64 8}
!160 = !{!129, !39, i64 14}
!161 = distinct !{!161, !74, !75}
!162 = distinct !{!162, !74, !75}
!163 = distinct !{!163, !74, !75}
!164 = distinct !{!164, !74, !75}
!165 = distinct !{!165, !74, !75}
!166 = distinct !{!166, !74, !75}
!167 = distinct !{!167, !74, !75}
!168 = !{!169, !37, i64 1944}
!169 = !{!"Brush", !45, i64 0, !170, i64 120, !36, i64 144, !171, i64 152, !171, i64 464, !36, i64 776, !36, i64 784, !36, i64 792, !36, i64 800, !36, i64 808, !37, i64 816, !49, i64 1840, !39, i64 1844, !39, i64 1846, !49, i64 1848, !46, i64 1852, !46, i64 1856, !46, i64 1860, !49, i64 1864, !46, i64 1868, !46, i64 1872, !46, i64 1876, !46, i64 1880, !49, i64 1884, !49, i64 1888, !37, i64 1892, !49, i64 1904, !37, i64 1908, !46, i64 1920, !49, i64 1924, !49, i64 1928, !46, i64 1932, !46, i64 1936, !46, i64 1940, !37, i64 1944, !37, i64 1945, !37, i64 1946, !37, i64 1947, !49, i64 1948, !49, i64 1952, !49, i64 1956, !49, i64 1960, !49, i64 1964, !46, i64 1968, !46, i64 1972, !46, i64 1976, !49, i64 1980, !49, i64 1984, !46, i64 1988, !46, i64 1992, !49, i64 1996, !37, i64 2000, !37, i64 2012, !37, i64 2024, !37, i64 2032, !37, i64 2040, !37, i64 2048}
!170 = !{!"BrushClone", !36, i64 0, !37, i64 8, !49, i64 16, !49, i64 20}
!171 = !{!"MTex", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !49, i64 116, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !39, i64 128, !39, i64 130, !37, i64 132, !37, i64 133, !49, i64 140, !49, i64 144, !49, i64 148, !49, i64 152, !49, i64 156, !49, i64 160, !49, i64 164, !49, i64 168, !49, i64 172, !49, i64 176, !49, i64 180, !49, i64 184, !49, i64 188, !49, i64 192, !49, i64 196, !49, i64 200, !49, i64 204, !49, i64 208, !49, i64 212, !49, i64 216, !49, i64 220, !49, i64 224, !49, i64 228, !49, i64 232, !49, i64 236, !49, i64 240, !49, i64 244, !49, i64 248, !49, i64 252, !49, i64 256, !49, i64 260, !49, i64 264, !49, i64 268, !49, i64 272, !49, i64 276, !49, i64 280, !49, i64 284, !49, i64 288, !49, i64 292, !49, i64 296, !49, i64 300, !49, i64 304, !49, i64 308}
!172 = !{!169, !49, i64 1904}
!173 = distinct !{!173, !74, !75}
!174 = distinct !{!174, !74, !75}
!175 = distinct !{!175, !74, !75}
!176 = !{!177, !36, i64 336}
!177 = !{!"Tex", !45, i64 0, !36, i64 120, !49, i64 128, !49, i64 132, !49, i64 136, !49, i64 140, !49, i64 144, !49, i64 148, !49, i64 152, !49, i64 156, !49, i64 160, !49, i64 164, !49, i64 168, !49, i64 172, !49, i64 176, !49, i64 180, !49, i64 184, !49, i64 188, !49, i64 192, !49, i64 196, !49, i64 200, !49, i64 204, !49, i64 208, !49, i64 212, !39, i64 216, !39, i64 218, !39, i64 220, !39, i64 222, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !49, i64 236, !49, i64 240, !49, i64 244, !49, i64 248, !46, i64 252, !46, i64 256, !39, i64 260, !39, i64 262, !39, i64 264, !39, i64 266, !46, i64 268, !46, i64 272, !46, i64 276, !46, i64 280, !49, i64 284, !49, i64 288, !49, i64 292, !178, i64 296, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !37, i64 408, !37, i64 409}
!178 = !{!"ImageUser", !36, i64 0, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !39, i64 28, !39, i64 30, !39, i64 32, !39, i64 34, !46, i64 36}
!179 = distinct !{!179, !74, !75}
!180 = !{!181, !36, i64 512}
!181 = !{!"Lamp", !45, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !46, i64 132, !39, i64 136, !39, i64 138, !49, i64 140, !49, i64 144, !49, i64 148, !49, i64 152, !49, i64 156, !49, i64 160, !49, i64 164, !49, i64 168, !49, i64 172, !49, i64 176, !49, i64 180, !49, i64 184, !49, i64 188, !49, i64 192, !49, i64 196, !36, i64 200, !39, i64 208, !39, i64 210, !49, i64 212, !49, i64 216, !49, i64 220, !49, i64 224, !49, i64 228, !49, i64 232, !49, i64 236, !39, i64 240, !39, i64 242, !39, i64 244, !39, i64 246, !37, i64 248, !37, i64 249, !39, i64 250, !39, i64 252, !39, i64 254, !39, i64 256, !39, i64 258, !49, i64 260, !49, i64 264, !49, i64 268, !49, i64 272, !39, i64 276, !39, i64 278, !39, i64 280, !39, i64 282, !39, i64 284, !39, i64 286, !49, i64 288, !49, i64 292, !49, i64 296, !49, i64 300, !49, i64 304, !49, i64 308, !49, i64 312, !49, i64 316, !49, i64 320, !49, i64 324, !49, i64 328, !49, i64 332, !49, i64 336, !39, i64 340, !37, i64 342, !36, i64 344, !37, i64 352, !39, i64 496, !39, i64 498, !37, i64 500, !36, i64 504, !36, i64 512}
!182 = distinct !{!182, !74, !75}
!183 = !{!184, !36, i64 520}
!184 = !{!"World", !45, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !39, i64 132, !39, i64 134, !49, i64 136, !49, i64 140, !49, i64 144, !49, i64 148, !49, i64 152, !49, i64 156, !49, i64 160, !49, i64 164, !49, i64 168, !49, i64 172, !49, i64 176, !49, i64 180, !49, i64 184, !49, i64 188, !49, i64 192, !49, i64 196, !39, i64 200, !39, i64 202, !39, i64 204, !39, i64 206, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !49, i64 216, !49, i64 220, !49, i64 224, !49, i64 228, !49, i64 232, !49, i64 236, !49, i64 240, !49, i64 244, !49, i64 248, !49, i64 252, !49, i64 256, !49, i64 260, !39, i64 264, !39, i64 266, !39, i64 268, !39, i64 270, !49, i64 272, !49, i64 276, !49, i64 280, !49, i64 284, !39, i64 288, !39, i64 290, !39, i64 292, !39, i64 294, !49, i64 296, !49, i64 300, !49, i64 304, !49, i64 308, !49, i64 312, !49, i64 316, !49, i64 320, !39, i64 324, !39, i64 326, !39, i64 328, !39, i64 330, !39, i64 332, !39, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !39, i64 504, !39, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!185 = distinct !{!185, !74, !75}
!186 = distinct !{!186, !74, !75}
!187 = !{!44, !39, i64 4564}
!188 = distinct !{!188, !74, !75}
!189 = distinct !{!189, !74, !75}
!190 = !{!41, !36, i64 0}
!191 = !{!128, !49, i64 64}
!192 = !{!193, !49, i64 84}
!193 = !{!"MovieTrackingObject", !36, i64 0, !36, i64 8, !37, i64 16, !46, i64 80, !49, i64 84, !41, i64 88, !41, i64 104, !131, i64 120, !46, i64 144, !46, i64 148}
!194 = !{!193, !36, i64 0}
!195 = distinct !{!195, !74, !75}
!196 = distinct !{!196, !74, !75}
!197 = !{!198, !39, i64 24}
!198 = !{!"bConstraint", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 26, !37, i64 28, !37, i64 29, !37, i64 30, !39, i64 94, !49, i64 96, !49, i64 100, !36, i64 104, !49, i64 112, !49, i64 116}
!199 = !{!198, !36, i64 16}
!200 = distinct !{!200, !74, !75}
!201 = !{!85, !39, i64 136}
!202 = !{!203, !36, i64 1336}
!203 = !{!"FileData", !41, i64 0, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !36, i64 32, !36, i64 40, !36, i64 48, !46, i64 56, !36, i64 64, !37, i64 72, !37, i64 1096, !46, i64 1100, !204, i64 1104, !36, i64 1216, !36, i64 1224, !36, i64 1232, !46, i64 1240, !46, i64 1244, !46, i64 1248, !46, i64 1252, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !46, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336}
!204 = !{!"z_stream_s", !36, i64 0, !46, i64 8, !40, i64 16, !36, i64 24, !46, i64 32, !40, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !46, i64 88, !40, i64 96, !40, i64 104}
!205 = distinct !{!205, !74, !75}
!206 = distinct !{!206, !74, !75}
!207 = !{!208, !39, i64 24}
!208 = !{!"bActuator", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !37, i64 32, !36, i64 96, !36, i64 104}
!209 = !{!208, !36, i64 96}
!210 = !{!211, !39, i64 26}
!211 = !{!"bCameraActuator", !36, i64 0, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !39, i64 24, !39, i64 26, !49, i64 28}
!212 = distinct !{!212, !74, !75}
!213 = !{!44, !36, i64 264}
!214 = !{!215, !46, i64 468}
!215 = !{!"ToolSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !49, i64 32, !49, i64 36, !49, i64 40, !39, i64 44, !39, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !49, i64 52, !39, i64 56, !37, i64 58, !37, i64 59, !216, i64 64, !218, i64 168, !49, i64 336, !49, i64 340, !39, i64 344, !39, i64 346, !37, i64 348, !37, i64 349, !39, i64 350, !49, i64 352, !49, i64 356, !49, i64 360, !49, i64 364, !49, i64 368, !49, i64 372, !49, i64 376, !49, i64 380, !49, i64 384, !49, i64 388, !39, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !36, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !39, i64 434, !39, i64 436, !39, i64 438, !39, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !46, i64 448, !46, i64 452, !46, i64 456, !46, i64 460, !39, i64 464, !39, i64 466, !46, i64 468, !49, i64 472, !49, i64 476, !219, i64 480, !220, i64 608}
!216 = !{!"ImagePaintSettings", !217, i64 0, !39, i64 40, !39, i64 42, !39, i64 44, !39, i64 46, !37, i64 48, !46, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !49, i64 100}
!217 = !{!"Paint", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !46, i64 28, !46, i64 32, !46, i64 36}
!218 = !{!"ParticleEditSettings", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !37, i64 8, !36, i64 120, !49, i64 128, !49, i64 132, !46, i64 136, !46, i64 140, !46, i64 144, !46, i64 148, !36, i64 152, !36, i64 160}
!219 = !{!"UnifiedPaintSettings", !46, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !37, i64 16, !37, i64 28, !46, i64 40, !37, i64 44, !49, i64 52, !46, i64 56, !46, i64 60, !37, i64 64, !37, i64 65, !49, i64 72, !37, i64 76, !46, i64 84, !49, i64 88, !37, i64 92, !37, i64 100, !46, i64 108, !36, i64 112, !49, i64 120, !46, i64 124}
!220 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !37, i64 20, !37, i64 21, !49, i64 24, !49, i64 28, !49, i64 32, !49, i64 36}
!221 = !{!219, !46, i64 0}
!222 = !{!215, !49, i64 472}
!223 = !{!219, !49, i64 4}
!224 = !{!215, !49, i64 476}
!225 = !{!219, !49, i64 8}
!226 = !{!215, !39, i64 464}
!227 = !{!219, !46, i64 40}
!228 = distinct !{!228, !74, !75}
!229 = !{!230, !46, i64 128}
!230 = !{!"Text", !45, i64 0, !36, i64 120, !46, i64 128, !46, i64 132, !41, i64 136, !36, i64 152, !36, i64 160, !46, i64 168, !46, i64 172, !36, i64 176, !46, i64 184, !46, i64 188, !36, i64 192, !231, i64 200}
!231 = !{!"double", !37, i64 0}
!232 = !{!233, !46, i64 32}
!233 = !{!"TextLine", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !46, i64 32, !46, i64 36}
!234 = !{!230, !36, i64 152}
!235 = !{!230, !46, i64 168}
!236 = distinct !{!236, !74, !75}
!237 = distinct !{!237, !74, !75}
!238 = distinct !{!238, !74, !75}
!239 = !{!240, !46, i64 16}
!240 = !{!"ModifierData", !36, i64 0, !36, i64 8, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!241 = !{!242, !36, i64 112}
!242 = !{!"DynamicPaintModifierData", !240, i64 0, !36, i64 112, !36, i64 120, !46, i64 128, !46, i64 132}
!243 = !{!244, !49, i64 280}
!244 = !{!"DynamicPaintSurface", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !41, i64 56, !46, i64 72, !37, i64 76, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !46, i64 156, !46, i64 160, !46, i64 164, !46, i64 168, !46, i64 172, !46, i64 176, !46, i64 180, !37, i64 184, !36, i64 200, !37, i64 208, !46, i64 272, !46, i64 276, !49, i64 280, !49, i64 284, !49, i64 288, !49, i64 292, !49, i64 296, !49, i64 300, !49, i64 304, !49, i64 308, !49, i64 312, !49, i64 316, !49, i64 320, !49, i64 324, !49, i64 328, !49, i64 332, !49, i64 336, !46, i64 340, !37, i64 344, !37, i64 408, !37, i64 1432, !37, i64 1496}
!245 = !{!244, !49, i64 312}
!246 = !{!244, !49, i64 316}
!247 = !{!244, !46, i64 156}
!248 = distinct !{!248, !74, !75}
!249 = distinct !{!249, !74, !75}
!250 = distinct !{!250, !74, !75}
!251 = !{!252, !36, i64 128}
!252 = !{!"ClothModifierData", !240, i64 0, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !41, i64 152}
!253 = !{!254, !49, i64 112}
!254 = !{!"ClothSimSettings", !36, i64 0, !49, i64 8, !49, i64 12, !49, i64 16, !37, i64 20, !49, i64 32, !49, i64 36, !49, i64 40, !49, i64 44, !49, i64 48, !49, i64 52, !49, i64 56, !49, i64 60, !49, i64 64, !49, i64 68, !49, i64 72, !49, i64 76, !49, i64 80, !49, i64 84, !49, i64 88, !49, i64 92, !49, i64 96, !49, i64 100, !49, i64 104, !49, i64 108, !49, i64 112, !49, i64 116, !49, i64 120, !46, i64 124, !46, i64 128, !46, i64 132, !46, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !37, i64 156, !36, i64 160}
!255 = distinct !{!255, !74, !75}
!256 = distinct !{!256, !74, !75}
!257 = !{!258, !36, i64 112}
!258 = !{!"FluidsimModifierData", !240, i64 0, !36, i64 112, !36, i64 120}
!259 = !{!260, !49, i64 1252}
!260 = !{!"FluidsimSettings", !36, i64 0, !46, i64 8, !46, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !49, i64 24, !39, i64 28, !39, i64 30, !49, i64 32, !39, i64 36, !39, i64 38, !37, i64 40, !49, i64 52, !49, i64 56, !46, i64 60, !46, i64 64, !46, i64 68, !46, i64 72, !49, i64 76, !46, i64 80, !49, i64 84, !49, i64 88, !49, i64 92, !36, i64 96, !36, i64 104, !37, i64 112, !37, i64 1136, !37, i64 1148, !36, i64 1160, !39, i64 1168, !37, i64 1170, !37, i64 1171, !49, i64 1172, !46, i64 1176, !49, i64 1180, !49, i64 1184, !46, i64 1188, !46, i64 1192, !49, i64 1196, !49, i64 1200, !49, i64 1204, !36, i64 1208, !46, i64 1216, !49, i64 1220, !49, i64 1224, !49, i64 1228, !49, i64 1232, !49, i64 1236, !49, i64 1240, !49, i64 1244, !46, i64 1248, !49, i64 1252}
!261 = distinct !{!261, !74, !75}
!262 = distinct !{!262, !74, !75}
!263 = distinct !{!263, !74, !75}
!264 = distinct !{!264, !74, !75}
!265 = !{!266, !46, i64 1252}
!266 = !{!"Mesh", !45, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !267, i64 280, !267, i64 480, !267, i64 680, !267, i64 880, !267, i64 1080, !46, i64 1280, !46, i64 1284, !46, i64 1288, !46, i64 1292, !46, i64 1296, !46, i64 1300, !46, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !46, i64 1344, !39, i64 1348, !39, i64 1350, !49, i64 1352, !46, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !39, i64 1366, !36, i64 1368}
!267 = !{!"CustomData", !36, i64 0, !37, i64 8, !46, i64 172, !46, i64 176, !46, i64 180, !36, i64 184, !36, i64 192}
!268 = !{!266, !36, i64 1080}
!269 = !{!270, !46, i64 0}
!270 = !{!"CustomDataLayer", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !37, i64 32, !36, i64 96}
!271 = !{!266, !46, i64 1300}
!272 = !{!270, !36, i64 96}
!273 = !{!274, !37, i64 0}
!274 = !{!"MLoopCol", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3}
!275 = !{!274, !37, i64 2}
!276 = distinct !{!276, !74, !75}
!277 = distinct !{!277, !74, !75}
!278 = distinct !{!278, !74, !75}
!279 = !{!37, !37, i64 0}
!280 = distinct !{!280, !74, !75}
!281 = distinct !{!281, !74, !75}
!282 = !{!283, !49, i64 184}
!283 = !{!"LatticeModifierData", !240, i64 0, !36, i64 112, !37, i64 120, !49, i64 184, !37, i64 188}
!284 = distinct !{!284, !74, !75}
!285 = distinct !{!285, !74, !75}
!286 = !{!260, !39, i64 36}
!287 = !{!260, !49, i64 32}
!288 = !{!260, !39, i64 38}
!289 = distinct !{!289, !74, !75}
!290 = !{!79, !46, i64 152}
!291 = distinct !{!291, !74, !75}
!292 = !{!70, !36, i64 160}
!293 = distinct !{!293, !74, !75}
!294 = distinct !{!294, !74, !75}
!295 = distinct !{!295, !74, !75}
!296 = distinct !{!296, !74, !75}
!297 = !{!215, !49, i64 32}
!298 = !{!215, !49, i64 492}
!299 = !{!215, !46, i64 520}
!300 = distinct !{!300, !74, !75}
!301 = !{!169, !49, i64 1848}
!302 = distinct !{!302, !74, !75}
!303 = distinct !{!303, !74, !75}
!304 = distinct !{!304, !74, !75}
!305 = !{!306, !39, i64 214}
!306 = !{!"ARegion", !36, i64 0, !36, i64 8, !307, i64 16, !55, i64 176, !55, i64 192, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !49, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !36, i64 240, !41, i64 248, !41, i64 264, !41, i64 280, !41, i64 296, !41, i64 312, !41, i64 328, !41, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!307 = !{!"View2D", !54, i64 0, !54, i64 16, !55, i64 32, !55, i64 48, !55, i64 64, !37, i64 80, !37, i64 88, !49, i64 96, !49, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !36, i64 128, !46, i64 136, !46, i64 140, !36, i64 144, !36, i64 152}
!308 = !{!306, !39, i64 216}
!309 = !{!306, !39, i64 218}
!310 = !{!306, !39, i64 130}
!311 = distinct !{!311, !74, !75}
!312 = !{!119, !39, i64 214}
!313 = distinct !{!313, !74, !75}
!314 = !{!181, !49, i64 336}
!315 = distinct !{!315, !74, !75}
!316 = !{!90, !39, i64 130}
!317 = !{!90, !37, i64 128}
!318 = distinct !{!318, !74, !75}
!319 = !{!320, !49, i64 520}
!320 = !{!"Curve", !45, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !39, i64 244, !39, i64 246, !39, i64 248, !39, i64 250, !49, i64 252, !49, i64 256, !46, i64 260, !39, i64 264, !39, i64 266, !46, i64 268, !49, i64 272, !49, i64 276, !49, i64 280, !39, i64 284, !39, i64 286, !39, i64 288, !39, i64 290, !46, i64 292, !46, i64 296, !37, i64 300, !39, i64 304, !37, i64 306, !37, i64 307, !49, i64 308, !49, i64 312, !49, i64 316, !49, i64 320, !49, i64 324, !49, i64 328, !49, i64 332, !49, i64 336, !49, i64 340, !49, i64 344, !46, i64 348, !46, i64 352, !46, i64 356, !46, i64 360, !46, i64 364, !36, i64 368, !36, i64 376, !37, i64 384, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !36, i64 480, !46, i64 488, !46, i64 492, !36, i64 496, !321, i64 504, !49, i64 512, !49, i64 516, !49, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!321 = !{!"CharInfo", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !39, i64 6}
!322 = !{!320, !49, i64 516}
!323 = distinct !{!323, !74, !75}
!324 = distinct !{!324, !74, !75}
!325 = distinct !{!325, !74, !75}
!326 = !{!327, !46, i64 0}
!327 = !{!"NodeImageLayer", !46, i64 0, !46, i64 4}
!328 = distinct !{!328, !74, !75}
!329 = distinct !{!329, !74, !75}
!330 = distinct !{!330, !74, !75}
!331 = distinct !{!331, !74, !75}
!332 = !{!67, !39, i64 376}
!333 = !{!334, !39, i64 0}
!334 = !{!"NodeFrame", !39, i64 0, !39, i64 2}
!335 = !{!334, !39, i64 2}
!336 = distinct !{!336, !74, !75}
!337 = distinct !{!337, !74, !75}
!338 = distinct !{!338, !74, !75}
!339 = distinct !{!339, !74, !75}
!340 = distinct !{!340, !74, !75}
!341 = distinct !{!341, !74, !75}
!342 = distinct !{!342, !74, !75}
!343 = distinct !{!343, !74, !75}
!344 = !{!345, !46, i64 140}
!345 = !{!"SmokeModifierData", !240, i64 0, !36, i64 112, !36, i64 120, !36, i64 128, !49, i64 136, !46, i64 140}
!346 = !{!345, !36, i64 112}
!347 = !{!46, !46, i64 0}
!348 = !{!349, !49, i64 384}
!349 = !{!"SmokeDomainSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !37, i64 96, !37, i64 108, !37, i64 120, !37, i64 132, !37, i64 144, !37, i64 156, !37, i64 168, !37, i64 180, !37, i64 192, !37, i64 204, !37, i64 268, !37, i64 332, !37, i64 344, !37, i64 356, !37, i64 368, !46, i64 380, !49, i64 384, !49, i64 388, !46, i64 392, !46, i64 396, !49, i64 400, !49, i64 404, !49, i64 408, !46, i64 412, !46, i64 416, !46, i64 420, !46, i64 424, !39, i64 428, !39, i64 430, !46, i64 432, !49, i64 436, !37, i64 440, !49, i64 452, !46, i64 456, !46, i64 460, !37, i64 464, !37, i64 480, !36, i64 512, !46, i64 520, !49, i64 524, !49, i64 528, !46, i64 532, !37, i64 536, !46, i64 548, !49, i64 552, !49, i64 556, !49, i64 560, !49, i64 564, !49, i64 568, !37, i64 572}
!350 = !{!349, !49, i64 388}
!351 = distinct !{!351, !74, !75}
!352 = !{!44, !49, i64 4588}
!353 = !{!44, !49, i64 4592}
!354 = !{!44, !49, i64 4584}
!355 = distinct !{!355, !74, !75}
!356 = !{!357, !46, i64 980}
!357 = !{!"NodeTexImage", !358, i64 0, !178, i64 968, !46, i64 1008, !46, i64 1012, !49, i64 1016, !46, i64 1020}
!358 = !{!"NodeTexBase", !98, i64 0, !359, i64 144}
!359 = !{!"ColorMapping", !360, i64 0, !49, i64 776, !49, i64 780, !49, i64 784, !46, i64 788, !37, i64 792, !49, i64 804, !46, i64 808, !37, i64 812}
!360 = !{!"ColorBand", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!361 = !{!357, !46, i64 988}
!362 = !{!357, !37, i64 992}
!363 = !{!357, !37, i64 994}
!364 = distinct !{!364, !74, !75}
!365 = distinct !{!365, !74, !75}
!366 = !{!94, !46, i64 292}
!367 = distinct !{!367, !74, !75}
!368 = !{!369, !49, i64 12}
!369 = !{!"NodeDefocus", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !39, i64 4, !39, i64 6, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28}
!370 = distinct !{!370, !74, !75}
!371 = distinct !{!371, !74, !75}
!372 = distinct !{!372, !74, !75}
!373 = distinct !{!373, !74, !75}
!374 = !{!119, !46, i64 376}
!375 = distinct !{!375, !74, !75}
!376 = !{!127, !46, i64 2320}
!377 = distinct !{!377, !74, !75}
!378 = distinct !{!378, !74, !75}
!379 = distinct !{!379, !74, !75}
!380 = !{!105, !49, i64 456}
!381 = distinct !{!381, !74, !75}
!382 = !{!383, !37, i64 0}
!383 = !{!"NodeDilateErode", !37, i64 0, !37, i64 1}
!384 = distinct !{!384, !74, !75}
!385 = distinct !{!385, !74, !75}
!386 = !{!387, !49, i64 8}
!387 = !{!"NodeKeyingData", !49, i64 0, !49, i64 4, !49, i64 8, !46, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !46, i64 28, !46, i64 32, !46, i64 36, !46, i64 40, !46, i64 44}
!388 = distinct !{!388, !74, !75}
!389 = distinct !{!389, !74, !75}
!390 = distinct !{!390, !74, !75}
!391 = !{!67, !49, i64 380}
!392 = !{!393, !46, i64 0}
!393 = !{!"NodeMask", !46, i64 0, !46, i64 4}
!394 = !{!67, !49, i64 384}
!395 = !{!393, !46, i64 4}
!396 = distinct !{!396, !74, !75}
!397 = distinct !{!397, !74, !75}
!398 = !{!44, !36, i64 256}
!399 = !{!400, !46, i64 24}
!400 = !{!"SeqIterator", !36, i64 0, !46, i64 8, !46, i64 12, !36, i64 16, !46, i64 24}
!401 = !{!400, !36, i64 16}
!402 = !{!403, !36, i64 168}
!403 = !{!"Sequence", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !46, i64 96, !46, i64 100, !46, i64 104, !46, i64 108, !46, i64 112, !46, i64 116, !46, i64 120, !46, i64 124, !46, i64 128, !46, i64 132, !46, i64 136, !46, i64 140, !49, i64 144, !49, i64 148, !49, i64 152, !39, i64 156, !39, i64 158, !46, i64 160, !46, i64 164, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !49, i64 224, !49, i64 228, !36, i64 232, !36, i64 240, !36, i64 248, !41, i64 256, !36, i64 272, !36, i64 280, !49, i64 288, !49, i64 292, !49, i64 296, !49, i64 300, !36, i64 304, !46, i64 312, !46, i64 316, !46, i64 320, !49, i64 324, !46, i64 328, !37, i64 332, !37, i64 333, !41, i64 336}
!404 = !{!405, !36, i64 832}
!405 = !{!"Strip", !36, i64 0, !36, i64 8, !46, i64 16, !46, i64 20, !46, i64 24, !46, i64 28, !36, i64 32, !37, i64 40, !36, i64 808, !36, i64 816, !36, i64 824, !36, i64 832, !64, i64 840}
!406 = !{i64 0, i64 12, !279, i64 12, i64 12, !279, i64 24, i64 12, !279, i64 36, i64 4, !347, i64 40, i64 4, !347}
!407 = !{!403, !49, i64 148}
!408 = !{!409, !49, i64 156}
!409 = !{!"ColorBalanceModifierData", !410, i64 0, !411, i64 112, !49, i64 156}
!410 = !{!"SequenceModifierData", !36, i64 0, !36, i64 8, !46, i64 16, !46, i64 20, !37, i64 24, !46, i64 88, !46, i64 92, !36, i64 96, !36, i64 104}
!411 = !{!"StripColorBalance", !37, i64 0, !37, i64 12, !37, i64 24, !46, i64 36, !46, i64 40}
!412 = distinct !{!412, !74, !75}
!413 = distinct !{!413, !74, !75}
!414 = !{!44, !46, i64 908}
!415 = distinct !{!415, !74, !75}
!416 = !{!417, !39, i64 1248}
!417 = !{!"Image", !45, i64 0, !37, i64 120, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !37, i64 1176, !39, i64 1240, !39, i64 1242, !39, i64 1244, !39, i64 1246, !39, i64 1248, !39, i64 1250, !46, i64 1252, !39, i64 1256, !39, i64 1258, !39, i64 1260, !39, i64 1262, !39, i64 1264, !39, i64 1266, !46, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !49, i64 1296, !46, i64 1300, !39, i64 1304, !39, i64 1306, !46, i64 1308, !46, i64 1312, !37, i64 1316, !37, i64 1317, !39, i64 1318, !37, i64 1320, !49, i64 1336, !49, i64 1340, !64, i64 1344, !37, i64 1408, !37, i64 1409, !37, i64 1416}
!418 = !{!417, !39, i64 1246}
!419 = distinct !{!419, !74, !75}
!420 = distinct !{!420, !74, !75}
!421 = distinct !{!421, !74, !75}
!422 = !{!171, !39, i64 0}
!423 = distinct !{!423, !74, !75}
!424 = !{!266, !46, i64 1280}
!425 = distinct !{!425, !74, !75}
!426 = !{!85, !36, i64 288}
!427 = !{!428, !39, i64 130}
!428 = !{!"bPose", !41, i64 0, !36, i64 16, !39, i64 24, !39, i64 26, !46, i64 28, !46, i64 32, !49, i64 36, !37, i64 40, !37, i64 52, !41, i64 64, !46, i64 80, !46, i64 84, !36, i64 88, !36, i64 96, !86, i64 104, !37, i64 152}
!429 = distinct !{!429, !74, !75}
!430 = !{!67, !46, i64 168}
!431 = distinct !{!431, !74, !75}
!432 = distinct !{!432, !74, !75}
!433 = distinct !{!433, !74, !75}
!434 = !{!193, !46, i64 144}
!435 = !{!193, !46, i64 148}
!436 = !{!128, !46, i64 32}
!437 = !{!128, !46, i64 36}
!438 = distinct !{!438, !74, !75}
!439 = distinct !{!439, !74, !75}
!440 = !{!349, !49, i64 568}
!441 = !{!349, !49, i64 552}
!442 = !{!349, !49, i64 556}
!443 = !{!349, !49, i64 560}
!444 = !{!349, !49, i64 564}
!445 = !{!349, !49, i64 400}
!446 = !{!349, !46, i64 392}
!447 = !{!345, !36, i64 120}
!448 = !{!449, !49, i64 96}
!449 = !{!"SmokeFlowSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !46, i64 40, !49, i64 44, !49, i64 48, !49, i64 52, !49, i64 56, !37, i64 60, !49, i64 72, !49, i64 76, !49, i64 80, !49, i64 84, !49, i64 88, !46, i64 92, !49, i64 96, !49, i64 100, !46, i64 104, !37, i64 108, !39, i64 172, !39, i64 174, !39, i64 176, !39, i64 178, !46, i64 180}
!450 = !{!449, !49, i64 72}
!451 = !{!449, !49, i64 84}
!452 = distinct !{!452, !74, !75}
!453 = distinct !{!453, !74, !75}
!454 = distinct !{!454, !74, !75}
!455 = !{!115, !49, i64 112}
!456 = !{!115, !49, i64 120}
!457 = !{!115, !49, i64 116}
!458 = !{!115, !49, i64 124}
!459 = distinct !{!459, !74, !75}
!460 = !{!215, !49, i64 52}
!461 = !{!215, !37, i64 48}
!462 = distinct !{!462, !74, !75}
!463 = distinct !{!463, !74, !75}
!464 = !{!67, !36, i64 264}
!465 = !{!466, !36, i64 0}
!466 = !{!"bNodeLink", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !46, i64 48, !46, i64 52}
!467 = !{!466, !36, i64 16}
!468 = !{!466, !36, i64 32}
!469 = !{!466, !36, i64 24}
!470 = !{!466, !36, i64 40}
!471 = distinct !{!471, !74, !75}
!472 = distinct !{!472, !74, !75}
!473 = distinct !{!473, !74, !75}
!474 = distinct !{!474, !74, !75}
!475 = !{!476, !37, i64 72}
!476 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !55, i64 56, !37, i64 72, !37, i64 73, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !39, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !41, i64 96, !41, i64 112, !41, i64 128, !41, i64 144}
!477 = !{!306, !39, i64 124}
!478 = !{!306, !49, i64 116}
!479 = !{!306, !39, i64 126}
!480 = !{!306, !39, i64 132}
!481 = !{!306, !39, i64 128}
!482 = distinct !{!482, !74, !75}
!483 = distinct !{!483, !74, !75}
!484 = !{!44, !46, i64 776}
!485 = !{!44, !46, i64 780}
!486 = !{!44, !39, i64 772}
!487 = !{!44, !39, i64 774}
!488 = !{!44, !46, i64 764}
!489 = !{!44, !39, i64 758}
!490 = !{!44, !46, i64 768}
!491 = distinct !{!491, !74, !75}
!492 = !{!85, !39, i64 1036}
!493 = !{!85, !39, i64 1038}
!494 = distinct !{!494, !74, !75}
!495 = distinct !{!495, !74, !75}
!496 = distinct !{!496, !74, !75}
!497 = distinct !{!497, !74, !75}
!498 = distinct !{!498, !74, !75}
!499 = !{!85, !49, i64 1024}
!500 = !{!85, !49, i64 1028}
!501 = !{!85, !49, i64 1032}
!502 = distinct !{!502, !74, !75}
!503 = distinct !{!503, !74, !75}
!504 = distinct !{!504, !74, !75}
!505 = !{!506, !46, i64 232}
!506 = !{!"SpaceSeq", !36, i64 0, !36, i64 8, !41, i64 16, !46, i64 32, !49, i64 36, !37, i64 40, !307, i64 56, !49, i64 216, !49, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !46, i64 232, !49, i64 236, !46, i64 240, !46, i64 244, !36, i64 248, !507, i64 256}
!507 = !{!"SequencerScopes", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!508 = !{!509, !46, i64 36}
!509 = !{!"SpaceImage", !36, i64 0, !36, i64 8, !41, i64 16, !46, i64 32, !46, i64 36, !36, i64 40, !178, i64 48, !36, i64 88, !510, i64 96, !511, i64 5360, !36, i64 10520, !37, i64 10528, !49, i64 10536, !49, i64 10540, !49, i64 10544, !49, i64 10548, !49, i64 10552, !37, i64 10556, !37, i64 10557, !39, i64 10558, !39, i64 10560, !39, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !123, i64 10568}
!510 = !{!"Scopes", !46, i64 0, !46, i64 4, !46, i64 8, !49, i64 12, !46, i64 16, !49, i64 20, !49, i64 24, !46, i64 28, !49, i64 32, !46, i64 36, !37, i64 40, !511, i64 64, !36, i64 5224, !36, i64 5232, !36, i64 5240, !36, i64 5248, !46, i64 5256, !46, i64 5260}
!511 = !{!"Histogram", !46, i64 0, !46, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !49, i64 5128, !49, i64 5132, !39, i64 5136, !39, i64 5138, !46, i64 5140, !37, i64 5144}
!512 = !{!513, !39, i64 232}
!513 = !{!"SpaceNode", !36, i64 0, !36, i64 8, !41, i64 16, !46, i64 32, !49, i64 36, !37, i64 40, !307, i64 56, !36, i64 216, !36, i64 224, !39, i64 232, !39, i64 234, !49, i64 236, !49, i64 240, !49, i64 244, !49, i64 248, !49, i64 252, !37, i64 256, !41, i64 264, !36, i64 280, !36, i64 288, !37, i64 296, !46, i64 360, !46, i64 364, !39, i64 368, !39, i64 370, !39, i64 372, !39, i64 374, !41, i64 376, !36, i64 392}
!514 = !{!119, !46, i64 208}
!515 = distinct !{!515, !74, !75}
!516 = !{!403, !46, i64 96}
!517 = !{!403, !37, i64 332}
!518 = distinct !{!518, !74, !75}
!519 = !{!44, !39, i64 948}
!520 = !{!44, !36, i64 136}
!521 = !{!44, !36, i64 24}
!522 = !{!184, !39, i64 200}
!523 = !{!44, !39, i64 816}
!524 = distinct !{!524, !74, !75}
!525 = !{!417, !37, i64 1408}
!526 = distinct !{!526, !74, !75}
!527 = !{!177, !39, i64 232}
!528 = !{!177, !39, i64 228}
!529 = !{!177, !36, i64 24}
!530 = !{!177, !36, i64 352}
!531 = distinct !{!531, !74, !75}
!532 = !{!94, !36, i64 24}
!533 = !{!67, !36, i64 240}
!534 = distinct !{!534, !74, !75}
!535 = distinct !{!535, !74, !75}
!536 = distinct !{!536, !74, !75}
!537 = !{!320, !46, i64 268}
!538 = !{!320, !49, i64 276}
!539 = !{!320, !49, i64 280}
!540 = !{!541, !36, i64 72}
!541 = !{!"Nurb", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !46, i64 24, !46, i64 28, !37, i64 32, !39, i64 36, !39, i64 38, !39, i64 40, !39, i64 42, !39, i64 44, !39, i64 46, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !39, i64 80, !39, i64 82, !46, i64 84}
!542 = !{!541, !46, i64 24}
!543 = !{!544, !49, i64 44}
!544 = !{!"BezTriple", !37, i64 0, !49, i64 36, !49, i64 40, !49, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !49, i64 56, !49, i64 60, !49, i64 64, !37, i64 68}
!545 = distinct !{!545, !74, !75}
!546 = !{!541, !36, i64 64}
!547 = !{!541, !46, i64 28}
!548 = !{!549, !49, i64 28}
!549 = !{!"BPoint", !37, i64 0, !49, i64 16, !49, i64 20, !39, i64 24, !39, i64 26, !49, i64 28, !49, i64 32}
!550 = distinct !{!550, !74, !75}
!551 = distinct !{!551, !74, !75}
!552 = distinct !{!552, !74, !75}
!553 = distinct !{!553, !74, !75}
!554 = !{!169, !39, i64 1846}
!555 = !{!169, !37, i64 284}
!556 = distinct !{!556, !74, !75}
!557 = distinct !{!557, !74, !75}
!558 = distinct !{!558, !74, !75}
!559 = !{!94, !36, i64 128}
!560 = distinct !{!560, !74, !75}
!561 = distinct !{!561, !74, !75}
!562 = distinct !{!562, !74, !75}
!563 = distinct !{!563, !74, !75}
!564 = distinct !{!564, !74, !75}
!565 = distinct !{!565, !74, !75}
!566 = !{!70, !39, i64 174}
!567 = distinct !{!567, !74, !75}
!568 = distinct !{!568, !74, !75}
!569 = distinct !{!569, !74, !75}
!570 = distinct !{!570, !74, !75}
!571 = distinct !{!571, !74, !75}
!572 = distinct !{!572, !74, !75}
!573 = distinct !{!573, !74, !75}
!574 = distinct !{!574, !74, !75}
!575 = distinct !{!575, !74, !75}
!576 = distinct !{!576, !74, !75}
!577 = distinct !{!577, !74, !75}
!578 = distinct !{!578, !74, !75}
!579 = !{!513, !46, i64 360}
!580 = distinct !{!580, !74, !75}
!581 = !{!94, !46, i64 268}
!582 = distinct !{!582, !74, !75}
!583 = distinct !{!583, !74, !75}
!584 = distinct !{!584, !74, !75}
!585 = !{!169, !46, i64 1876}
!586 = distinct !{!586, !74, !75}
!587 = !{!169, !46, i64 1872}
!588 = !{!169, !46, i64 1856}
!589 = distinct !{!589, !74, !75}
!590 = distinct !{!590, !74, !75}
!591 = !{!44, !46, i64 2856}
!592 = !{!44, !49, i64 2860}
!593 = !{!594, !46, i64 144}
!594 = !{!"SceneRenderLayer", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !46, i64 96, !46, i64 100, !46, i64 104, !46, i64 108, !46, i64 112, !46, i64 116, !46, i64 120, !49, i64 124, !595, i64 128}
!595 = !{!"FreestyleConfig", !41, i64 0, !46, i64 16, !46, i64 20, !46, i64 24, !49, i64 28, !49, i64 32, !49, i64 36, !41, i64 40}
!596 = !{!594, !46, i64 148}
!597 = !{!594, !46, i64 152}
!598 = distinct !{!598, !74, !75}
!599 = !{!220, !37, i64 20}
!600 = !{!220, !37, i64 3}
!601 = !{!220, !49, i64 4}
!602 = !{!220, !49, i64 8}
!603 = !{!220, !49, i64 16}
!604 = !{!220, !49, i64 24}
!605 = !{!220, !49, i64 28}
!606 = !{!220, !49, i64 32}
!607 = !{!220, !49, i64 36}
!608 = distinct !{!608, !74, !75}
!609 = !{!610, !46, i64 244}
!610 = !{!"FreestyleLineStyle", !45, i64 0, !36, i64 120, !49, i64 128, !49, i64 132, !49, i64 136, !49, i64 140, !49, i64 144, !46, i64 148, !49, i64 152, !46, i64 156, !46, i64 160, !46, i64 164, !46, i64 168, !49, i64 172, !49, i64 176, !49, i64 180, !49, i64 184, !49, i64 188, !46, i64 192, !39, i64 196, !39, i64 198, !39, i64 200, !39, i64 202, !39, i64 204, !39, i64 206, !46, i64 208, !46, i64 212, !49, i64 216, !39, i64 220, !39, i64 222, !39, i64 224, !37, i64 226, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !39, i64 240, !39, i64 242, !46, i64 244, !37, i64 248, !36, i64 392, !41, i64 400, !41, i64 416, !41, i64 432, !41, i64 448}
!611 = !{!610, !46, i64 148}
!612 = !{!610, !49, i64 152}
!613 = !{!610, !46, i64 164}
!614 = !{!610, !46, i64 168}
!615 = distinct !{!615, !74, !75}
!616 = !{!513, !36, i64 272}
!617 = !{i64 0, i64 4, !347}
!618 = distinct !{!618, !74, !75}
!619 = distinct !{!619, !74, !75}
!620 = distinct !{!620, !74, !75}
!621 = !{!349, !46, i64 420}
!622 = !{!349, !46, i64 548}
!623 = distinct !{!623, !74, !75}
!624 = distinct !{!624, !74, !75}
!625 = !{!169, !46, i64 1976}
!626 = !{!169, !46, i64 1968}
!627 = !{!169, !46, i64 1972}
!628 = distinct !{!628, !74, !75}
!629 = distinct !{!629, !74, !75}
!630 = !{!631, !37, i64 14}
!631 = !{!"bShrinkwrapConstraint", !36, i64 0, !49, i64 8, !39, i64 12, !37, i64 14, !37, i64 15, !49, i64 16, !37, i64 20}
!632 = !{!631, !37, i64 15}
!633 = distinct !{!633, !74, !75}
!634 = distinct !{!634, !74, !75}
!635 = !{!449, !49, i64 88}
!636 = distinct !{!636, !74, !75}
!637 = distinct !{!637, !74, !75}
!638 = distinct !{!638, !74, !75}
!639 = !{!513, !49, i64 252}
!640 = distinct !{!640, !74, !75}
!641 = distinct !{!641, !74, !75}
!642 = !{!643, !39, i64 16}
!643 = !{!"bSensor", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !37, i64 32, !36, i64 96, !36, i64 104, !36, i64 112, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126}
!644 = !{!643, !36, i64 96}
!645 = !{!646, !36, i64 64}
!646 = !{!"bTouchSensor", !37, i64 0, !36, i64 64, !49, i64 72, !49, i64 76}
!647 = !{!85, !36, i64 24}
!648 = !{!649, !39, i64 132}
!649 = !{!"bCollisionSensor", !37, i64 0, !37, i64 64, !39, i64 128, !39, i64 130, !39, i64 132, !39, i64 134}
!650 = !{!643, !39, i64 18}
!651 = distinct !{!651, !74, !75}
!652 = distinct !{!652, !74, !75}
!653 = distinct !{!653, !74, !75}
!654 = distinct !{!654, !74, !75}
!655 = distinct !{!655, !74, !75}
!656 = distinct !{!656, !74, !75}
!657 = distinct !{!657, !74, !75}
!658 = distinct !{!658, !74, !75}
!659 = distinct !{!659, !74, !75}
!660 = !{!661, !39, i64 290}
!661 = !{!"SpaceOops", !36, i64 0, !36, i64 8, !41, i64 16, !46, i64 32, !49, i64 36, !37, i64 40, !307, i64 56, !41, i64 216, !36, i64 232, !37, i64 240, !662, i64 272, !39, i64 288, !39, i64 290, !39, i64 292, !39, i64 294, !36, i64 296}
!662 = !{!"TreeStoreElem", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !36, i64 8}
!663 = distinct !{!663, !74, !75}
!664 = !{!203, !36, i64 1216}
!665 = distinct !{!665, !74, !75}
!666 = distinct !{!666, !74, !75}
!667 = !{!141, !49, i64 200}
!668 = distinct !{!668, !74, !75}
!669 = distinct !{!669, !74, !75}
!670 = !{!671, !46, i64 112}
!671 = !{!"TriangulateModifierData", !240, i64 0, !46, i64 112, !46, i64 116, !46, i64 120, !46, i64 124}
!672 = !{!671, !46, i64 116}
!673 = !{!671, !46, i64 120}
!674 = distinct !{!674, !74, !75}
!675 = !{!215, !36, i64 16}
!676 = !{!677, !46, i64 40}
!677 = !{!"Sculpt", !217, i64 0, !46, i64 40, !37, i64 44, !49, i64 56, !46, i64 60, !49, i64 64, !49, i64 68, !36, i64 72, !36, i64 80}
!678 = !{!44, !39, i64 4558}
!679 = !{!215, !37, i64 432}
!680 = distinct !{!680, !74, !75}
!681 = !{!181, !49, i64 180}
!682 = distinct !{!682, !74, !75}
!683 = distinct !{!683, !74, !75}
!684 = !{!685, !49, i64 112}
!685 = !{!"EdgeSplitModifierData", !240, i64 0, !49, i64 112, !46, i64 116}
!686 = !{!687, !49, i64 140}
!687 = !{!"BevelModifierData", !240, i64 0, !49, i64 112, !46, i64 116, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !39, i64 128, !39, i64 130, !46, i64 132, !49, i64 136, !49, i64 140, !37, i64 144}
!688 = distinct !{!688, !74, !75}
!689 = !{!690, !49, i64 64}
!690 = !{!"bRadarSensor", !37, i64 0, !49, i64 64, !49, i64 68, !39, i64 72, !39, i64 74}
!691 = distinct !{!691, !74, !75}
!692 = !{!693, !39, i64 0}
!693 = !{!"bConstraintActuator", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !39, i64 8, !39, i64 10, !46, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !37, i64 52, !37, i64 64}
!694 = !{!695, !49, i64 56}
!695 = !{!"bSoundActuator", !39, i64 0, !39, i64 2, !46, i64 4, !46, i64 8, !37, i64 12, !49, i64 16, !49, i64 20, !36, i64 24, !696, i64 32, !39, i64 64, !39, i64 66, !39, i64 68, !37, i64 70}
!696 = !{!"Sound3D", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28}
!697 = distinct !{!697, !74, !75}
!698 = !{!403, !46, i64 100}
!699 = !{!403, !36, i64 304}
!700 = !{!701, !49, i64 4}
!701 = !{!"WipeVars", !49, i64 0, !49, i64 4, !39, i64 8, !39, i64 10}
!702 = distinct !{!702, !74, !75}
!703 = distinct !{!703, !74, !75}
!704 = distinct !{!704, !74, !75}
!705 = distinct !{!705, !74, !75}
!706 = distinct !{!706, !74, !75}
!707 = !{!708, !49, i64 120}
!708 = !{!"MovieTrackingPlaneTrack", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !46, i64 88, !46, i64 92, !36, i64 96, !46, i64 104, !46, i64 108, !36, i64 112, !49, i64 120, !46, i64 124}
!709 = distinct !{!709, !74, !75}
!710 = !{!677, !46, i64 36}
!711 = distinct !{!711, !74, !75}
!712 = !{!320, !36, i64 368}
!713 = !{!320, !46, i64 360}
!714 = distinct !{!714, !74, !75}
!715 = distinct !{!715, !74, !75}
!716 = !{!717, !39, i64 122}
!717 = !{!"BuildModifierData", !240, i64 0, !49, i64 112, !49, i64 116, !39, i64 120, !39, i64 122, !46, i64 124}
!718 = !{!717, !39, i64 120}
!719 = distinct !{!719, !74, !75}
!720 = distinct !{!720, !74, !75}
!721 = distinct !{!721, !74, !75}
!722 = !{!476, !36, i64 96}
!723 = distinct !{!723, !74, !75}
!724 = distinct !{!724, !74, !75}
!725 = !{!67, !36, i64 200}
!726 = !{!70, !36, i64 0}
!727 = !{!728, !49, i64 4}
!728 = !{!"bNodeSocketValueFloat", !46, i64 0, !49, i64 4, !49, i64 8, !49, i64 12}
!729 = !{!730, !49, i64 12}
!730 = !{!"NodeDBlurData", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !39, i64 24, !37, i64 26, !37, i64 27}
!731 = !{!730, !49, i64 16}
!732 = !{!369, !49, i64 24}
!733 = !{!734, !49, i64 0}
!734 = !{!"NodeChroma", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !37, i64 24, !39, i64 40, !39, i64 42}
!735 = !{!734, !49, i64 4}
!736 = !{!737, !49, i64 24}
!737 = !{!"NodeGlare", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28}
!738 = distinct !{!738, !74, !75}
!739 = distinct !{!739, !74, !75}
!740 = !{!70, !39, i64 170}
!741 = distinct !{!741, !74, !75}
!742 = distinct !{!742, !74, !75}
!743 = distinct !{!743, !74, !75}
!744 = distinct !{!744, !74, !75}
!745 = distinct !{!745, !74, !75}
!746 = !{i64 0, i64 1, !279, i64 1, i64 1, !279, i64 2, i64 1, !279, i64 3, i64 1, !279, i64 4, i64 1, !279, i64 5, i64 1, !279, i64 6, i64 1, !279, i64 7, i64 1, !279, i64 8, i64 2, !747, i64 10, i64 2, !747, i64 12, i64 4, !72, i64 16, i64 1, !279, i64 17, i64 1, !279, i64 18, i64 6, !279, i64 24, i64 4, !347, i64 28, i64 4, !347, i64 32, i64 64, !279, i64 96, i64 64, !279, i64 160, i64 4, !72, i64 164, i64 4, !72, i64 168, i64 8, !42, i64 176, i64 8, !42, i64 184, i64 64, !279}
!747 = !{!39, !39, i64 0}
!748 = !{!749, !37, i64 1024}
!749 = !{!"NodeImageFile", !37, i64 0, !48, i64 1024, !46, i64 1272, !46, i64 1276}
!750 = !{!751, !37, i64 1024}
!751 = !{!"NodeImageMultiFile", !37, i64 0, !48, i64 1024, !46, i64 1272, !46, i64 1276, !46, i64 1280, !46, i64 1284}
!752 = !{!70, !36, i64 296}
!753 = !{!754, !39, i64 0}
!754 = !{!"NodeImageMultiFileSocket", !39, i64 0, !39, i64 2, !46, i64 4, !37, i64 8, !48, i64 1032, !37, i64 1280, !37, i64 1310}
!755 = !{!754, !39, i64 2}
!756 = distinct !{!756, !74, !75}
!757 = distinct !{!757, !74, !75}
!758 = !{!141, !46, i64 120}
!759 = !{!141, !36, i64 128}
!760 = distinct !{!760, !74, !75}
!761 = !{!70, !39, i64 168}
!762 = !{!728, !46, i64 0}
!763 = !{!764, !46, i64 0}
!764 = !{!"bNodeSocketValueInt", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12}
!765 = !{!766, !46, i64 0}
!766 = !{!"bNodeSocketValueVector", !46, i64 0, !37, i64 4, !49, i64 16, !49, i64 20}
!767 = !{!768, !46, i64 0}
!768 = !{!"bNodeSocketValueString", !46, i64 0, !46, i64 4, !37, i64 8}
