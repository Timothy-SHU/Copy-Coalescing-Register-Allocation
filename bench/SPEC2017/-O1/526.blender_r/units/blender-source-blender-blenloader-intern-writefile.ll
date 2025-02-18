; ModuleID = 'blender/source/blender/blenloader/intern/writefile.c'
source_filename = "blender/source/blender/blenloader/intern/writefile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.IDProperty = type { ptr, ptr, i8, i8, i16, [64 x i8], i32, %struct.IDPropertyData, i32, i32 }
%struct.IDPropertyData = type { ptr, %struct.ListBase, i32, i32 }
%struct.WriteData = type { ptr, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i8 }
%struct.WriteWrap = type { ptr, ptr, ptr, %union.anon }
%union.anon = type { ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.NodeTreeIterStore = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.SeqIterator = type { ptr, i32, i32, ptr, i32 }
%struct.FileGlobal = type { [4 x i8], i16, i16, i16, i16, i16, i16, ptr, ptr, i32, i32, i64, [16 x i8], [1024 x i8] }
%struct.RenderInfo = type { i32, i32, [64 x i8] }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNodeLink = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.bNodeSocket = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], ptr, i16, i16, i16, i16, ptr, [64 x i8], float, float, ptr, i16, i16, i32, ptr, i32, i32, ptr, ptr, %struct.bNodeStack }
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
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
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.uiList = type { ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, [64 x i8], i32, i32, ptr, ptr }
%struct.SpaceLink = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16] }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.SpaceIpo = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.ListBase, i16, i16, i32, float, i32 }
%struct.SpaceFile = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i16 }
%struct.SpaceOops = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, %struct.ListBase, ptr, [32 x i8], %struct.TreeStoreElem, i16, i16, i16, i16, ptr }
%struct.TreeStoreElem = type { i16, i16, i16, i16, ptr }
%struct.TreeStore = type { i32, i32, ptr }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.CurveMapping = type { i32, i32, i32, i32, %struct.rctf, %struct.rctf, [4 x %struct.CurveMap], [3 x float], [3 x float], [3 x float], [3 x float] }
%struct.CurveMap = type { i16, i16, float, float, float, [2 x float], [2 x float], ptr, ptr, ptr, [2 x float], [2 x float] }
%struct.SpaceScript = type { ptr, ptr, %struct.ListBase, i32, float, ptr, i16, i16, i32, ptr }
%struct.SpaceNla = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], i16, i16, i32, ptr, %struct.View2D }
%struct.SpaceNode = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, ptr, i16, i16, float, float, float, float, float, [2 x float], %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, %struct.ListBase, ptr }
%struct.SpaceConsole = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], i32, i32, %struct.ListBase, %struct.ListBase, [256 x i8], [32 x i8], i32, i32 }
%struct.ConsoleLine = type { ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }
%struct.MovieTrackingPlaneTrack = type { ptr, ptr, [64 x i8], ptr, i32, i32, ptr, i32, i32, ptr, float, i32 }
%struct.MovieTrackingObject = type { ptr, ptr, [64 x i8], i32, float, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, i32, i32 }
%struct.Mask = type { %struct.ID, ptr, %struct.ListBase, i32, i32, i32, i32, i32, i32 }
%struct.MaskLayer = type { ptr, ptr, [64 x i8], %struct.ListBase, %struct.ListBase, ptr, ptr, float, i8, i8, i8, [7 x i8], i8, i8 }
%struct.MaskSpline = type { ptr, ptr, i16, i8, i8, i32, ptr, %struct.MaskParent, ptr }
%struct.MaskParent = type { i32, i32, ptr, [64 x i8], [64 x i8], [2 x float], [4 x [2 x float]] }
%struct.MaskSplinePoint = type { %struct.BezTriple, i32, i32, ptr, %struct.MaskParent }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.MaskLayerShape = type { ptr, ptr, ptr, i32, i32, i8, [7 x i8] }
%struct.KeyingSet = type { ptr, ptr, %struct.ListBase, [64 x i8], [64 x i8], [240 x i8], [64 x i8], i16, i16, i32 }
%struct.KS_Path = type { ptr, ptr, ptr, [64 x i8], i32, i16, i16, ptr, i32, i16, i16 }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.Sequence = type { ptr, ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, float, float, float, float, ptr, i32, i32, i32, float, i32, i8, [3 x i8], %struct.ListBase }
%struct.Strip = type { ptr, ptr, i32, i32, i32, i32, ptr, [768 x i8], ptr, ptr, ptr, ptr, %struct.ColorManagedColorspaceSettings }
%struct.SequenceModifierData = type { ptr, ptr, i32, i32, [64 x i8], i32, i32, ptr, ptr }
%struct.SequenceModifierTypeInfo = type { [64 x i8], [64 x i8], i32, ptr, ptr, ptr, ptr }
%struct.CurvesModifierData = type { %struct.SequenceModifierData, %struct.CurveMapping }
%struct.HueCorrectModifierData = type { %struct.SequenceModifierData, %struct.CurveMapping }
%struct.Editing = type { ptr, %struct.ListBase, %struct.ListBase, ptr, [1024 x i8], [1024 x i8], i32, i32, i32, i32, %struct.rctf }
%struct.AviCodecData = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [128 x i8] }
%struct.QuicktimeCodecData = type { ptr, ptr, i32, i32, [128 x i8] }
%struct.SceneRenderLayer = type { ptr, ptr, [64 x i8], ptr, ptr, i32, i32, i32, i32, i32, i32, i32, float, %struct.FreestyleConfig }
%struct.FreestyleConfig = type { %struct.ListBase, i32, i32, i32, float, float, float, %struct.ListBase }
%struct.RigidBodyWorld = type { ptr, ptr, ptr, ptr, i32, float, ptr, %struct.ListBase, i32, i16, i16, i32, float, ptr }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.MetaBall = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, i16, i16, [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Image = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, [8 x ptr], i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, ptr, ptr, ptr, float, i32, i16, i16, i32, i32, i8, i8, i16, [4 x float], float, float, %struct.ColorManagedColorspaceSettings, i8, [7 x i8], [8 x %struct.RenderSlot] }
%struct.RenderSlot = type { [64 x i8] }
%struct.PackedFile = type { i32, i32, ptr }
%struct.Camera = type { %struct.ID, ptr, i8, i8, i16, float, float, float, float, float, float, float, float, float, float, float, ptr, ptr, i8, [7 x i8] }
%struct.Lamp = type { %struct.ID, ptr, i16, i16, i32, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, ptr, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i8, i8, i16, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, [2 x i8], ptr, [18 x ptr], i16, i16, [4 x i8], ptr, ptr }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.VFont = type { %struct.ID, [1024 x i8], ptr, ptr, ptr }
%struct.Key = type { %struct.ID, ptr, ptr, [32 x i8], i32, i32, %struct.ListBase, ptr, ptr, i16, i16, i16, i16, float, i32 }
%struct.KeyBlock = type { ptr, ptr, float, float, i16, i16, i16, i16, i32, i32, ptr, [64 x i8], [64 x i8], float, float }
%struct.World = type { %struct.ID, ptr, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, float, float, float, float, i16, i16, i16, i16, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, [18 x ptr], i16, i16, [2 x i16], ptr, ptr }
%struct.Text = type { %struct.ID, ptr, i32, i32, %struct.ListBase, ptr, ptr, i32, i32, ptr, i32, i32, ptr, double }
%struct.TextLine = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.Speaker = type { %struct.ID, ptr, ptr, float, float, float, float, float, float, float, float, float, float, i16, [3 x i16] }
%struct.bSound = type { %struct.ID, [1024 x i8], ptr, ptr, ptr, ptr, float, float, float, float, float, float, i32, i32, ptr, ptr, ptr }
%struct.Group = type { %struct.ID, %struct.ListBase, i32, [3 x float] }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.bAction = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.bProperty = type { ptr, ptr, [64 x i8], i16, i16, i32, ptr }
%struct.bSensor = type { ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, [64 x i8], ptr, ptr, ptr, i16, i16, i16, i16 }
%struct.bController = type { ptr, ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, [64 x i8], ptr, ptr, ptr, i16, i16, i32 }
%struct.bActuator = type { ptr, ptr, ptr, i16, i16, i16, i16, [64 x i8], ptr, ptr }
%struct.bPose = type { %struct.ListBase, ptr, i16, i16, i32, i32, float, [3 x float], [3 x float], %struct.ListBase, i32, i32, ptr, ptr, %struct.bAnimVizSettings, [64 x i8] }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.bMotionPath = type { ptr, i32, i32, i32, i32 }
%struct.SoftBody = type { i32, i32, ptr, ptr, i8, i8, i16, float, [64 x i8], float, float, float, float, float, float, float, float, float, i16, [64 x i8], i16, float, float, [64 x i8], i32, i32, i32, i16, i16, ptr, i32, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, float, float, ptr, %struct.ListBase, ptr, [3 x float], [3 x [3 x float]], [3 x [3 x float]], i32 }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.ParticleData = type { %struct.ParticleKey, %struct.ParticleKey, ptr, ptr, ptr, i32, float, float, float, i32, i32, [4 x float], float, float, float, i32, i32, i16, i16 }
%struct.ParticleKey = type { [3 x float], [3 x float], [4 x float], [3 x float], float }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.SPHFluidSettings = type { float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i16, [3 x i16] }
%struct.ClothModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.HookModifierData = type { %struct.ModifierData, ptr, [64 x i8], [4 x [4 x float]], [3 x float], float, ptr, i32, float, [64 x i8] }
%struct.ClothSimSettings = type { ptr, float, float, float, [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i8], ptr }
%struct.SmokeModifierData = type { %struct.ModifierData, ptr, ptr, ptr, float, i32 }
%struct.SmokeDomainSettings = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x i32], [3 x float], [3 x float], [4 x [4 x float]], [4 x [4 x float]], [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, float, float, i32, i32, float, float, float, i32, i32, i32, i32, i16, i16, i32, float, [3 x i32], float, i32, i32, [2 x ptr], [2 x %struct.ListBase], ptr, i32, float, float, i32, [3 x float], i32, float, float, float, float, float, [3 x float] }
%struct.PointCache = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [64 x i8], [64 x i8], [64 x i8], [1024 x i8], ptr, %struct.ListBase, ptr, ptr }
%struct.FluidsimModifierData = type { %struct.ModifierData, ptr, ptr }
%struct.DynamicPaintModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32 }
%struct.DynamicPaintCanvasSettings = type { ptr, ptr, %struct.ListBase, i16, i16, i32, [64 x i8] }
%struct.DynamicPaintSurface = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, i32, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x float], ptr, [64 x i8], i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [64 x i8], [1024 x i8], [64 x i8], [64 x i8] }
%struct.DynamicPaintBrushSettings = type { ptr, ptr, ptr, ptr, i32, i32, float, float, float, float, float, float, float, float, ptr, ptr, i16, i16, i16, i16, float, float, float, float }
%struct.MeshDeformModifierData = type { %struct.ModifierData, ptr, [64 x i8], i16, i16, [2 x i16], ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32, [3 x float], float, [4 x [4 x float]], ptr, ptr, ptr }
%struct.WarpModifierData = type { %struct.ModifierData, ptr, ptr, [64 x i8], i32, i32, ptr, ptr, ptr, [64 x i8], float, float, i8, i8, [6 x i8] }
%struct.WeightVGEditModifierData = type { %struct.ModifierData, [64 x i8], i16, i16, float, ptr, float, float, float, [64 x i8], i32, ptr, ptr, i32, [64 x i8], i32 }
%struct.LaplacianDeformModifierData = type { %struct.ModifierData, [64 x i8], i32, i32, ptr, ptr, i16, [3 x i16] }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.PointDensity = type { i16, i16, float, float, i16, i16, i32, i32, ptr, i32, i16, i16, ptr, ptr, float, i16, i16, i16, [3 x i16], float, float, float, float, ptr, ptr }
%struct.ParticleDupliWeight = type { ptr, ptr, ptr, i16, i16, i16, i16 }
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }
%struct.BoidSettings = type { i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.ListBase }
%struct.BoidState = type { ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, [32 x i8], i32, i32, i32, float, i32, i32, float, float }
%struct.BoidRule = type { ptr, ptr, i32, i32, [32 x i8] }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.Palette = type { %struct.ID, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.PaintCurve = type { %struct.ID, ptr, i32, i32 }
%struct.bGPdata = type { %struct.ID, %struct.ListBase, i32, i16, i16, ptr }
%struct.bGPDlayer = type { ptr, ptr, %struct.ListBase, ptr, i32, i16, i16, [4 x float], [128 x i8] }
%struct.bGPDframe = type { ptr, ptr, %struct.ListBase, i32, i32 }
%struct.bGPDstroke = type { ptr, ptr, ptr, ptr, i32, i16, i16, double }
%struct.FreestyleLineStyle = type { %struct.ID, ptr, float, float, float, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, float, i32, i16, i16, i16, i16, i16, i16, i32, i32, float, i16, i16, i16, [3 x i16], i16, i16, i16, i16, i16, i16, i32, [18 x ptr], ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.LineStyleModifier = type { ptr, ptr, [64 x i8], i32, float, i32, i32 }
%struct.LineStyleColorModifier_AlongStroke = type { %struct.LineStyleModifier, ptr }
%struct.LineStyleColorModifier_DistanceFromCamera = type { %struct.LineStyleModifier, ptr, float, float }
%struct.LineStyleColorModifier_DistanceFromObject = type { %struct.LineStyleModifier, ptr, ptr, float, float }
%struct.LineStyleColorModifier_Material = type { %struct.LineStyleModifier, ptr, i32, i32 }
%struct.LineStyleAlphaModifier_AlongStroke = type { %struct.LineStyleModifier, ptr, i32, i32 }
%struct.LineStyleAlphaModifier_DistanceFromCamera = type { %struct.LineStyleModifier, ptr, i32, float, float, i32 }
%struct.LineStyleAlphaModifier_DistanceFromObject = type { %struct.LineStyleModifier, ptr, ptr, i32, float, float, i32 }
%struct.LineStyleAlphaModifier_Material = type { %struct.LineStyleModifier, ptr, i32, i32 }
%struct.LineStyleThicknessModifier_AlongStroke = type { %struct.LineStyleModifier, ptr, i32, float, float, i32 }
%struct.LineStyleThicknessModifier_DistanceFromCamera = type { %struct.LineStyleModifier, ptr, i32, float, float, float, float, i32 }
%struct.LineStyleThicknessModifier_DistanceFromObject = type { %struct.LineStyleModifier, ptr, ptr, i32, float, float, float, float, i32 }
%struct.LineStyleThicknessModifier_Material = type { %struct.LineStyleModifier, ptr, i32, float, float, i32 }
%struct.Library = type { %struct.ID, ptr, ptr, [1024 x i8], [1024 x i8], ptr, ptr }
%struct.wmKeyMap = type { ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, ptr, ptr }
%struct.wmKeyMapDiffItem = type { ptr, ptr, ptr, ptr }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.bAddon = type { ptr, ptr, [64 x i8], ptr }
%struct.SDNA = type { ptr, i32, i32, ptr, i32, i32, ptr, ptr, i32, ptr, ptr, i32 }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
%struct.AnimOverride = type { ptr, ptr, ptr, i32, float }
%struct.NlaTrack = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8] }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.DriverVar = type { ptr, ptr, [64 x i8], [8 x %struct.DriverTarget], i16, i16, float }
%struct.DriverTarget = type { ptr, ptr, [32 x i8], i16, i16, i32 }
%struct.FModifier = type { ptr, ptr, ptr, [64 x i8], i16, i16, float, float, float, float, float }
%struct.FModifierTypeInfo = type { i16, i16, i16, i16, [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.FMod_Generator = type { ptr, i32, i32, i32, i32 }
%struct.FMod_Envelope = type { ptr, i32, float, float, float }
%struct.FMod_Python = type { ptr, ptr }
%struct.NlaStrip = type { ptr, ptr, %struct.ListBase, ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, ptr, i32, i32 }
%struct.NodeShaderScript = type { i32, i32, [1024 x i8], [64 x i8], ptr }
%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.PTCacheMem = type { ptr, ptr, i32, i32, i32, i32, [8 x ptr], [8 x ptr], %struct.ListBase }
%struct.PTCacheExtra = type { ptr, ptr, i32, i32, ptr }
%struct.PreviewImage = type { [2 x i32], [2 x i32], [2 x i16], [2 x i16], [2 x ptr], [2 x ptr] }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.bConstraintTypeInfo = type { i16, i16, [32 x i8], [32 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bPythonConstraint = type { ptr, ptr, i32, i32, %struct.ListBase, ptr, [64 x i8] }
%struct.bSplineIKConstraint = type { ptr, ptr, i16, i16, i16, i16 }
%struct.CustomDataLayer = type { i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], ptr }
%struct.MDisps = type { i32, i32, ptr, ptr }
%struct.GridPaintMask = type { ptr, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"IDProperty\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s@\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Cannot open file %s for writing: %s\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"Version backup failed (file saved with @)\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Cannot change old file (file saved with @)\00", align 1
@MEM_allocN_len = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"error: can't find SDNA code <%s>\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"wb1\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"BLENDER%c%c%.3d\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c"writedata\00", align 1
@DNAstr = external constant [0 x i8], align 1
@DNAlen = external local_unnamed_addr constant i32, align 4
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"wd->buf\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"group node link\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%4d\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"FileGlobal\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"wmWindowManager\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"wmWindow\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"Screen\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"ScrVert\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"ScrEdge\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"ScrArea\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"Panel\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"PanelCategoryStack\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"uiPreview\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"View3D\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"BGpic\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"SpaceIpo\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"bDopeSheet\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"SpaceButs\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"SpaceFile\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"FileSelectParams\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"SpaceSeq\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"SpaceImage\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"SpaceText\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"SpaceScript\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"SpaceAction\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"SpaceNla\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"SpaceTime\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"SpaceNode\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"bNodeTreePath\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"SpaceLogic\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"ConsoleLine\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"SpaceConsole\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"SpaceUserPref\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"SpaceClip\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"ARegion\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"RegionView3D\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"BoundBox\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"uiList\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"TreeStoreElem\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"TreeStore\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"SpaceOops\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"CurveMapping\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"CurveMapPoint\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"MovieClip\00", align 1
@.str.55 = private unnamed_addr constant [20 x i8] c"MovieTrackingObject\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"AnimData\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"AnimOverride\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"FCurve\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"BezTriple\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"FPoint\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"ChannelDriver\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"DriverVar\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"FModifier\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"FCM_EnvelopeData\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"NlaTrack\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"NlaStrip\00", align 1
@.str.67 = private unnamed_addr constant [19 x i8] c"MovieTrackingTrack\00", align 1
@.str.68 = private unnamed_addr constant [20 x i8] c"MovieTrackingMarker\00", align 1
@.str.69 = private unnamed_addr constant [24 x i8] c"MovieTrackingPlaneTrack\00", align 1
@.str.70 = private unnamed_addr constant [25 x i8] c"MovieTrackingPlaneMarker\00", align 1
@.str.71 = private unnamed_addr constant [25 x i8] c"MovieReconstructedCamera\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"Mask\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"MaskLayer\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"MaskSpline\00", align 1
@.str.75 = private unnamed_addr constant [16 x i8] c"MaskSplinePoint\00", align 1
@.str.76 = private unnamed_addr constant [18 x i8] c"MaskSplinePointUW\00", align 1
@.str.77 = private unnamed_addr constant [15 x i8] c"MaskLayerShape\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"Scene\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"Base\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"ToolSettings\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"VPaint\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"Sculpt\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"UvSculpt\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"Editing\00", align 1
@.str.85 = private unnamed_addr constant [9 x i8] c"Sequence\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"SolidColorVars\00", align 1
@.str.87 = private unnamed_addr constant [17 x i8] c"SpeedControlVars\00", align 1
@.str.88 = private unnamed_addr constant [9 x i8] c"WipeVars\00", align 1
@.str.89 = private unnamed_addr constant [9 x i8] c"GlowVars\00", align 1
@.str.90 = private unnamed_addr constant [14 x i8] c"TransformVars\00", align 1
@.str.91 = private unnamed_addr constant [17 x i8] c"GaussianBlurVars\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"Strip\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"StripCrop\00", align 1
@.str.94 = private unnamed_addr constant [15 x i8] c"StripTransform\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"StripProxy\00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c"StripElem\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"MetaStack\00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"AviCodecData\00", align 1
@.str.99 = private unnamed_addr constant [19 x i8] c"QuicktimeCodecData\00", align 1
@.str.100 = private unnamed_addr constant [11 x i8] c"TimeMarker\00", align 1
@.str.101 = private unnamed_addr constant [21 x i8] c"TransformOrientation\00", align 1
@.str.102 = private unnamed_addr constant [17 x i8] c"SceneRenderLayer\00", align 1
@.str.103 = private unnamed_addr constant [22 x i8] c"FreestyleModuleConfig\00", align 1
@.str.104 = private unnamed_addr constant [17 x i8] c"FreestyleLineSet\00", align 1
@.str.105 = private unnamed_addr constant [10 x i8] c"bNodeTree\00", align 1
@.str.106 = private unnamed_addr constant [15 x i8] c"RigidBodyWorld\00", align 1
@.str.107 = private unnamed_addr constant [16 x i8] c"EffectorWeights\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"KeyingSet\00", align 1
@.str.109 = private unnamed_addr constant [8 x i8] c"KS_Path\00", align 1
@.str.110 = private unnamed_addr constant [21 x i8] c"SequenceModifierData\00", align 1
@.str.111 = private unnamed_addr constant [6 x i8] c"bNode\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"bNodeLink\00", align 1
@.str.113 = private unnamed_addr constant [25 x i8] c"NodeImageMultiFileSocket\00", align 1
@.str.114 = private unnamed_addr constant [15 x i8] c"NodeImageLayer\00", align 1
@.str.115 = private unnamed_addr constant [12 x i8] c"bNodeSocket\00", align 1
@.str.116 = private unnamed_addr constant [11 x i8] c"PointCache\00", align 1
@.str.117 = private unnamed_addr constant [11 x i8] c"PTCacheMem\00", align 1
@ptcache_data_struct = internal unnamed_addr constant [8 x ptr] [ptr @.str.119, ptr @.str.119, ptr @.str.119, ptr @.str.119, ptr @.str.119, ptr @.str.119, ptr @.str.119, ptr @.str.120], align 16
@ptcache_extra_struct = internal unnamed_addr constant [2 x ptr] [ptr @.str.119, ptr @.str.121], align 16
@.str.118 = private unnamed_addr constant [13 x i8] c"PTCacheExtra\00", align 1
@.str.119 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.120 = private unnamed_addr constant [9 x i8] c"BoidData\00", align 1
@.str.121 = private unnamed_addr constant [15 x i8] c"ParticleSpring\00", align 1
@.str.122 = private unnamed_addr constant [6 x i8] c"Curve\00", align 1
@.str.123 = private unnamed_addr constant [9 x i8] c"CharInfo\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"TextBox\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"Nurb\00", align 1
@.str.126 = private unnamed_addr constant [7 x i8] c"BPoint\00", align 1
@.str.127 = private unnamed_addr constant [9 x i8] c"MetaBall\00", align 1
@.str.128 = private unnamed_addr constant [9 x i8] c"MetaElem\00", align 1
@.str.129 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@.str.130 = private unnamed_addr constant [11 x i8] c"PackedFile\00", align 1
@U = external global %struct.UserDef, align 8
@.str.131 = private unnamed_addr constant [13 x i8] c"PreviewImage\00", align 1
@.str.132 = private unnamed_addr constant [7 x i8] c"Camera\00", align 1
@.str.133 = private unnamed_addr constant [5 x i8] c"Lamp\00", align 1
@.str.134 = private unnamed_addr constant [5 x i8] c"MTex\00", align 1
@.str.135 = private unnamed_addr constant [8 x i8] c"Lattice\00", align 1
@.str.136 = private unnamed_addr constant [12 x i8] c"MDeformVert\00", align 1
@.str.137 = private unnamed_addr constant [14 x i8] c"MDeformWeight\00", align 1
@.str.138 = private unnamed_addr constant [6 x i8] c"VFont\00", align 1
@.str.139 = private unnamed_addr constant [4 x i8] c"Key\00", align 1
@.str.140 = private unnamed_addr constant [9 x i8] c"KeyBlock\00", align 1
@.str.141 = private unnamed_addr constant [6 x i8] c"World\00", align 1
@.str.142 = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@.str.143 = private unnamed_addr constant [9 x i8] c"TextLine\00", align 1
@.str.144 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@.str.145 = private unnamed_addr constant [7 x i8] c"bSound\00", align 1
@.str.146 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@.str.147 = private unnamed_addr constant [12 x i8] c"GroupObject\00", align 1
@.str.148 = private unnamed_addr constant [10 x i8] c"bArmature\00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c"Bone\00", align 1
@.str.150 = private unnamed_addr constant [8 x i8] c"bAction\00", align 1
@.str.151 = private unnamed_addr constant [13 x i8] c"bActionGroup\00", align 1
@.str.152 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.153 = private unnamed_addr constant [12 x i8] c"PartDeflect\00", align 1
@.str.154 = private unnamed_addr constant [9 x i8] c"SoftBody\00", align 1
@.str.155 = private unnamed_addr constant [15 x i8] c"BulletSoftBody\00", align 1
@.str.156 = private unnamed_addr constant [12 x i8] c"RigidBodyOb\00", align 1
@.str.157 = private unnamed_addr constant [13 x i8] c"RigidBodyCon\00", align 1
@.str.158 = private unnamed_addr constant [10 x i8] c"ImageUser\00", align 1
@.str.159 = private unnamed_addr constant [9 x i8] c"LinkData\00", align 1
@.str.160 = private unnamed_addr constant [9 x i8] c"LodLevel\00", align 1
@.str.161 = private unnamed_addr constant [10 x i8] c"bProperty\00", align 1
@.str.162 = private unnamed_addr constant [8 x i8] c"bSensor\00", align 1
@.str.163 = private unnamed_addr constant [12 x i8] c"bNearSensor\00", align 1
@.str.164 = private unnamed_addr constant [13 x i8] c"bMouseSensor\00", align 1
@.str.165 = private unnamed_addr constant [16 x i8] c"bKeyboardSensor\00", align 1
@.str.166 = private unnamed_addr constant [16 x i8] c"bPropertySensor\00", align 1
@.str.167 = private unnamed_addr constant [16 x i8] c"bArmatureSensor\00", align 1
@.str.168 = private unnamed_addr constant [16 x i8] c"bActuatorSensor\00", align 1
@.str.169 = private unnamed_addr constant [13 x i8] c"bDelaySensor\00", align 1
@.str.170 = private unnamed_addr constant [17 x i8] c"bCollisionSensor\00", align 1
@.str.171 = private unnamed_addr constant [13 x i8] c"bRadarSensor\00", align 1
@.str.172 = private unnamed_addr constant [14 x i8] c"bRandomSensor\00", align 1
@.str.173 = private unnamed_addr constant [11 x i8] c"bRaySensor\00", align 1
@.str.174 = private unnamed_addr constant [15 x i8] c"bMessageSensor\00", align 1
@.str.175 = private unnamed_addr constant [16 x i8] c"bJoystickSensor\00", align 1
@.str.176 = private unnamed_addr constant [12 x i8] c"bController\00", align 1
@.str.177 = private unnamed_addr constant [16 x i8] c"bExpressionCont\00", align 1
@.str.178 = private unnamed_addr constant [12 x i8] c"bPythonCont\00", align 1
@.str.179 = private unnamed_addr constant [10 x i8] c"bActuator\00", align 1
@.str.180 = private unnamed_addr constant [16 x i8] c"bActionActuator\00", align 1
@.str.181 = private unnamed_addr constant [15 x i8] c"bSoundActuator\00", align 1
@.str.182 = private unnamed_addr constant [16 x i8] c"bObjectActuator\00", align 1
@.str.183 = private unnamed_addr constant [13 x i8] c"bIpoActuator\00", align 1
@.str.184 = private unnamed_addr constant [18 x i8] c"bPropertyActuator\00", align 1
@.str.185 = private unnamed_addr constant [16 x i8] c"bCameraActuator\00", align 1
@.str.186 = private unnamed_addr constant [20 x i8] c"bConstraintActuator\00", align 1
@.str.187 = private unnamed_addr constant [20 x i8] c"bEditObjectActuator\00", align 1
@.str.188 = private unnamed_addr constant [15 x i8] c"bSceneActuator\00", align 1
@.str.189 = private unnamed_addr constant [15 x i8] c"bGroupActuator\00", align 1
@.str.190 = private unnamed_addr constant [16 x i8] c"bRandomActuator\00", align 1
@.str.191 = private unnamed_addr constant [17 x i8] c"bMessageActuator\00", align 1
@.str.192 = private unnamed_addr constant [14 x i8] c"bGameActuator\00", align 1
@.str.193 = private unnamed_addr constant [20 x i8] c"bVisibilityActuator\00", align 1
@.str.194 = private unnamed_addr constant [20 x i8] c"bTwoDFilterActuator\00", align 1
@.str.195 = private unnamed_addr constant [16 x i8] c"bParentActuator\00", align 1
@.str.196 = private unnamed_addr constant [15 x i8] c"bStateActuator\00", align 1
@.str.197 = private unnamed_addr constant [18 x i8] c"bArmatureActuator\00", align 1
@.str.198 = private unnamed_addr constant [18 x i8] c"bSteeringActuator\00", align 1
@.str.199 = private unnamed_addr constant [15 x i8] c"bMouseActuator\00", align 1
@.str.200 = private unnamed_addr constant [13 x i8] c"bPoseChannel\00", align 1
@.str.201 = private unnamed_addr constant [6 x i8] c"bPose\00", align 1
@.str.202 = private unnamed_addr constant [13 x i8] c"bDeformGroup\00", align 1
@.str.203 = private unnamed_addr constant [18 x i8] c"bConstraintTarget\00", align 1
@.str.204 = private unnamed_addr constant [12 x i8] c"bConstraint\00", align 1
@.str.205 = private unnamed_addr constant [12 x i8] c"bMotionPath\00", align 1
@.str.206 = private unnamed_addr constant [16 x i8] c"bMotionPathVert\00", align 1
@.str.207 = private unnamed_addr constant [15 x i8] c"ParticleSystem\00", align 1
@.str.208 = private unnamed_addr constant [13 x i8] c"ParticleData\00", align 1
@.str.209 = private unnamed_addr constant [8 x i8] c"HairKey\00", align 1
@.str.210 = private unnamed_addr constant [13 x i8] c"BoidParticle\00", align 1
@.str.211 = private unnamed_addr constant [15 x i8] c"ParticleTarget\00", align 1
@.str.212 = private unnamed_addr constant [14 x i8] c"ChildParticle\00", align 1
@.str.213 = private unnamed_addr constant [18 x i8] c"ClothModifierData\00", align 1
@.str.214 = private unnamed_addr constant [17 x i8] c"ClothSimSettings\00", align 1
@.str.215 = private unnamed_addr constant [18 x i8] c"ClothCollSettings\00", align 1
@.str.216 = private unnamed_addr constant [20 x i8] c"SmokeDomainSettings\00", align 1
@.str.217 = private unnamed_addr constant [18 x i8] c"SmokeFlowSettings\00", align 1
@.str.218 = private unnamed_addr constant [18 x i8] c"SmokeCollSettings\00", align 1
@.str.219 = private unnamed_addr constant [17 x i8] c"FluidsimSettings\00", align 1
@.str.220 = private unnamed_addr constant [27 x i8] c"DynamicPaintCanvasSettings\00", align 1
@.str.221 = private unnamed_addr constant [20 x i8] c"DynamicPaintSurface\00", align 1
@.str.222 = private unnamed_addr constant [26 x i8] c"DynamicPaintBrushSettings\00", align 1
@.str.223 = private unnamed_addr constant [10 x i8] c"ColorBand\00", align 1
@.str.224 = private unnamed_addr constant [14 x i8] c"MDefInfluence\00", align 1
@.str.225 = private unnamed_addr constant [9 x i8] c"MDefCell\00", align 1
@.str.226 = private unnamed_addr constant [9 x i8] c"Material\00", align 1
@.str.227 = private unnamed_addr constant [4 x i8] c"Tex\00", align 1
@.str.228 = private unnamed_addr constant [7 x i8] c"EnvMap\00", align 1
@.str.229 = private unnamed_addr constant [13 x i8] c"PointDensity\00", align 1
@.str.230 = private unnamed_addr constant [10 x i8] c"VoxelData\00", align 1
@.str.231 = private unnamed_addr constant [9 x i8] c"OceanTex\00", align 1
@.str.232 = private unnamed_addr constant [5 x i8] c"Mesh\00", align 1
@CD_MASK_EVERYTHING = external local_unnamed_addr constant i64, align 8
@CD_MASK_MESH = external local_unnamed_addr constant i64, align 8
@.str.233 = private unnamed_addr constant [16 x i8] c"CustomDataLayer\00", align 1
@.str.234 = private unnamed_addr constant [52 x i8] c"%s error: layer '%s':%d - can't be written to file\0A\00", align 1
@__func__.write_customdata = private unnamed_addr constant [17 x i8] c"write_customdata\00", align 1
@.str.235 = private unnamed_addr constant [19 x i8] c"CustomDataExternal\00", align 1
@.str.236 = private unnamed_addr constant [7 x i8] c"MDisps\00", align 1
@.str.237 = private unnamed_addr constant [14 x i8] c"GridPaintMask\00", align 1
@.str.238 = private unnamed_addr constant [17 x i8] c"ParticleSettings\00", align 1
@.str.239 = private unnamed_addr constant [20 x i8] c"ParticleDupliWeight\00", align 1
@.str.240 = private unnamed_addr constant [13 x i8] c"BoidSettings\00", align 1
@.str.241 = private unnamed_addr constant [17 x i8] c"SPHFluidSettings\00", align 1
@.str.242 = private unnamed_addr constant [10 x i8] c"BoidState\00", align 1
@.str.243 = private unnamed_addr constant [18 x i8] c"BoidRuleGoalAvoid\00", align 1
@.str.244 = private unnamed_addr constant [23 x i8] c"BoidRuleAvoidCollision\00", align 1
@.str.245 = private unnamed_addr constant [21 x i8] c"BoidRuleFollowLeader\00", align 1
@.str.246 = private unnamed_addr constant [21 x i8] c"BoidRuleAverageSpeed\00", align 1
@.str.247 = private unnamed_addr constant [14 x i8] c"BoidRuleFight\00", align 1
@.str.248 = private unnamed_addr constant [9 x i8] c"BoidRule\00", align 1
@.str.249 = private unnamed_addr constant [6 x i8] c"Brush\00", align 1
@.str.250 = private unnamed_addr constant [8 x i8] c"Palette\00", align 1
@.str.251 = private unnamed_addr constant [13 x i8] c"PaletteColor\00", align 1
@.str.252 = private unnamed_addr constant [11 x i8] c"PaintCurve\00", align 1
@.str.253 = private unnamed_addr constant [16 x i8] c"PaintCurvePoint\00", align 1
@.str.254 = private unnamed_addr constant [7 x i8] c"Script\00", align 1
@.str.255 = private unnamed_addr constant [8 x i8] c"bGPdata\00", align 1
@.str.256 = private unnamed_addr constant [10 x i8] c"bGPDlayer\00", align 1
@.str.257 = private unnamed_addr constant [10 x i8] c"bGPDframe\00", align 1
@.str.258 = private unnamed_addr constant [11 x i8] c"bGPDstroke\00", align 1
@.str.259 = private unnamed_addr constant [11 x i8] c"bGPDspoint\00", align 1
@.str.260 = private unnamed_addr constant [19 x i8] c"FreestyleLineStyle\00", align 1
@.str.261 = private unnamed_addr constant [35 x i8] c"LineStyleColorModifier_AlongStroke\00", align 1
@.str.262 = private unnamed_addr constant [42 x i8] c"LineStyleColorModifier_DistanceFromCamera\00", align 1
@.str.263 = private unnamed_addr constant [42 x i8] c"LineStyleColorModifier_DistanceFromObject\00", align 1
@.str.264 = private unnamed_addr constant [32 x i8] c"LineStyleColorModifier_Material\00", align 1
@.str.265 = private unnamed_addr constant [23 x i8] c"LineStyleColorModifier\00", align 1
@.str.266 = private unnamed_addr constant [35 x i8] c"LineStyleAlphaModifier_AlongStroke\00", align 1
@.str.267 = private unnamed_addr constant [42 x i8] c"LineStyleAlphaModifier_DistanceFromCamera\00", align 1
@.str.268 = private unnamed_addr constant [42 x i8] c"LineStyleAlphaModifier_DistanceFromObject\00", align 1
@.str.269 = private unnamed_addr constant [32 x i8] c"LineStyleAlphaModifier_Material\00", align 1
@.str.270 = private unnamed_addr constant [23 x i8] c"LineStyleAlphaModifier\00", align 1
@.str.271 = private unnamed_addr constant [39 x i8] c"LineStyleThicknessModifier_AlongStroke\00", align 1
@.str.272 = private unnamed_addr constant [46 x i8] c"LineStyleThicknessModifier_DistanceFromCamera\00", align 1
@.str.273 = private unnamed_addr constant [46 x i8] c"LineStyleThicknessModifier_DistanceFromObject\00", align 1
@.str.274 = private unnamed_addr constant [36 x i8] c"LineStyleThicknessModifier_Material\00", align 1
@.str.275 = private unnamed_addr constant [39 x i8] c"LineStyleThicknessModifier_Calligraphy\00", align 1
@.str.276 = private unnamed_addr constant [27 x i8] c"LineStyleThicknessModifier\00", align 1
@.str.277 = private unnamed_addr constant [35 x i8] c"LineStyleGeometryModifier_Sampling\00", align 1
@.str.278 = private unnamed_addr constant [38 x i8] c"LineStyleGeometryModifier_BezierCurve\00", align 1
@.str.279 = private unnamed_addr constant [44 x i8] c"LineStyleGeometryModifier_SinusDisplacement\00", align 1
@.str.280 = private unnamed_addr constant [39 x i8] c"LineStyleGeometryModifier_SpatialNoise\00", align 1
@.str.281 = private unnamed_addr constant [40 x i8] c"LineStyleGeometryModifier_PerlinNoise1D\00", align 1
@.str.282 = private unnamed_addr constant [40 x i8] c"LineStyleGeometryModifier_PerlinNoise2D\00", align 1
@.str.283 = private unnamed_addr constant [44 x i8] c"LineStyleGeometryModifier_BackboneStretcher\00", align 1
@.str.284 = private unnamed_addr constant [37 x i8] c"LineStyleGeometryModifier_TipRemover\00", align 1
@.str.285 = private unnamed_addr constant [43 x i8] c"LineStyleGeometryModifier_Polygonalization\00", align 1
@.str.286 = private unnamed_addr constant [39 x i8] c"LineStyleGeometryModifier_GuidingLines\00", align 1
@.str.287 = private unnamed_addr constant [36 x i8] c"LineStyleGeometryModifier_Blueprint\00", align 1
@.str.288 = private unnamed_addr constant [35 x i8] c"LineStyleGeometryModifier_2DOffset\00", align 1
@.str.289 = private unnamed_addr constant [38 x i8] c"LineStyleGeometryModifier_2DTransform\00", align 1
@.str.290 = private unnamed_addr constant [26 x i8] c"LineStyleGeometryModifier\00", align 1
@.str.291 = private unnamed_addr constant [8 x i8] c"Library\00", align 1
@.str.292 = private unnamed_addr constant [25 x i8] c"write packed .blend: %s\0A\00", align 1
@.str.293 = private unnamed_addr constant [3 x i8] c"ID\00", align 1
@.str.294 = private unnamed_addr constant [8 x i8] c"UserDef\00", align 1
@.str.295 = private unnamed_addr constant [7 x i8] c"bTheme\00", align 1
@.str.296 = private unnamed_addr constant [9 x i8] c"wmKeyMap\00", align 1
@.str.297 = private unnamed_addr constant [17 x i8] c"wmKeyMapDiffItem\00", align 1
@.str.298 = private unnamed_addr constant [7 x i8] c"bAddon\00", align 1
@.str.299 = private unnamed_addr constant [13 x i8] c"bPathCompare\00", align 1
@.str.300 = private unnamed_addr constant [8 x i8] c"uiStyle\00", align 1
@.str.301 = private unnamed_addr constant [13 x i8] c"wmKeyMapItem\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.302 = private unnamed_addr constant [50 x i8] c"Unable to make version backup: filename too short\00", align 1
@.str.303 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.304 = private unnamed_addr constant [30 x i8] c"Unable to make version backup\00", align 1
@str.305 = private unnamed_addr constant [26 x i8] c"regiondata write missing!\00", align 1
@reltable.write_file_handle = private unnamed_addr constant [4 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.261 to i64), i64 ptrtoint (ptr @reltable.write_file_handle to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.262 to i64), i64 ptrtoint (ptr @reltable.write_file_handle to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.263 to i64), i64 ptrtoint (ptr @reltable.write_file_handle to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.264 to i64), i64 ptrtoint (ptr @reltable.write_file_handle to i64)) to i32)], align 4
@reltable.write_file_handle.309 = private unnamed_addr constant [4 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.266 to i64), i64 ptrtoint (ptr @reltable.write_file_handle.309 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.267 to i64), i64 ptrtoint (ptr @reltable.write_file_handle.309 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.268 to i64), i64 ptrtoint (ptr @reltable.write_file_handle.309 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.269 to i64), i64 ptrtoint (ptr @reltable.write_file_handle.309 to i64)) to i32)], align 4
@reltable.write_file_handle.310 = private unnamed_addr constant [14 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.277 to i64), i64 ptrtoint (ptr @reltable.write_file_handle.310 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.278 to i64), i64 ptrtoint (ptr @reltable.write_file_handle.310 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.279 to i64), i64 ptrtoint (ptr @reltable.write_file_handle.310 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.280 to i64), i64 ptrtoint (ptr @reltable.write_file_handle.310 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.281 to i64), i64 ptrtoint (ptr @reltable.write_file_handle.310 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.282 to i64), i64 ptrtoint (ptr @reltable.write_file_handle.310 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.283 to i64), i64 ptrtoint (ptr @reltable.write_file_handle.310 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.write_file_handle.310 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.290 to i64), i64 ptrtoint (ptr @reltable.write_file_handle.310 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.285 to i64), i64 ptrtoint (ptr @reltable.write_file_handle.310 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.286 to i64), i64 ptrtoint (ptr @reltable.write_file_handle.310 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.287 to i64), i64 ptrtoint (ptr @reltable.write_file_handle.310 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.288 to i64), i64 ptrtoint (ptr @reltable.write_file_handle.310 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.289 to i64), i64 ptrtoint (ptr @reltable.write_file_handle.310 to i64)) to i32)], align 4
@reltable.write_file_handle.311 = private unnamed_addr constant [8 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.243 to i64), i64 ptrtoint (ptr @reltable.write_file_handle.311 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.243 to i64), i64 ptrtoint (ptr @reltable.write_file_handle.311 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.244 to i64), i64 ptrtoint (ptr @reltable.write_file_handle.311 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.248 to i64), i64 ptrtoint (ptr @reltable.write_file_handle.311 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.248 to i64), i64 ptrtoint (ptr @reltable.write_file_handle.311 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.245 to i64), i64 ptrtoint (ptr @reltable.write_file_handle.311 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.246 to i64), i64 ptrtoint (ptr @reltable.write_file_handle.311 to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.247 to i64), i64 ptrtoint (ptr @reltable.write_file_handle.311 to i64)) to i32)], align 4

; Function Attrs: nounwind uwtable
define dso_local void @IDP_WriteProperty_OnlyData(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !34
  switch i8 %4, label %160 [
    i8 6, label %5
    i8 0, label %13
    i8 5, label %68
    i8 9, label %144
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = icmp eq ptr %7, null
  br i1 %8, label %160, label %9

9:                                                ; preds = %5, %9
  %10 = phi ptr [ %11, %9 ], [ %7, %5 ]
  tail call fastcc void @writestruct_at_address(ptr noundef %1, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %10, ptr noundef nonnull %10)
  tail call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %10, ptr noundef %1)
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = icmp eq ptr %11, null
  br i1 %12, label %160, label %9, !llvm.loop !44

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %15 = load i32, ptr %14, align 8, !tbaa !47
  %16 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !48
  %18 = icmp eq ptr %17, null
  %19 = icmp eq i32 %15, 0
  %20 = or i1 %19, %18
  br i1 %20, label %160, label %21

21:                                               ; preds = %13
  %22 = add nsw i32 %15, 3
  %23 = and i32 %22, -4
  %24 = getelementptr inbounds %struct.WriteData, ptr %1, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !49
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %67

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.WriteData, ptr %1, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !51
  %30 = add nsw i32 %29, 24
  store i32 %30, ptr %28, align 8, !tbaa !51
  %31 = getelementptr inbounds %struct.WriteData, ptr %1, i64 0, i32 6
  %32 = load i32, ptr %31, align 4, !tbaa !52
  %33 = icmp sgt i32 %32, 99975
  br i1 %33, label %34, label %55

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.WriteData, ptr %1, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !53
  %37 = icmp eq ptr %1, null
  %38 = icmp eq ptr %36, null
  %39 = select i1 %37, i1 true, i1 %38
  br i1 %39, label %54, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.WriteData, ptr %1, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !54
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %42, ptr noundef nonnull %36, i32 noundef %32) #14
  br label %54

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.WriteData, ptr %1, i64 0, i32 9
  %47 = load ptr, ptr %46, align 8, !tbaa !55
  %48 = getelementptr inbounds %struct.WriteWrap, ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !56
  %50 = zext nneg i32 %32 to i64
  %51 = tail call i64 %49(ptr noundef %47, ptr noundef nonnull %36, i64 noundef %50) #14
  %52 = icmp eq i64 %51, %50
  br i1 %52, label %54, label %53

53:                                               ; preds = %45
  store i32 1, ptr %24, align 8, !tbaa !49
  br label %54

54:                                               ; preds = %53, %45, %44, %34
  store i32 0, ptr %31, align 4, !tbaa !52
  br label %55

55:                                               ; preds = %54, %27
  %56 = getelementptr inbounds %struct.WriteData, ptr %1, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !53
  %58 = load i32, ptr %31, align 4, !tbaa !52
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, ptr %57, i64 %59
  store i32 1096040772, ptr %60, align 1
  %61 = getelementptr inbounds i8, ptr %60, i64 4
  store i32 %23, ptr %61, align 1
  %62 = getelementptr inbounds i8, ptr %60, i64 8
  store ptr %17, ptr %62, align 1
  %63 = getelementptr inbounds i8, ptr %60, i64 16
  store i32 0, ptr %63, align 1
  %64 = getelementptr inbounds i8, ptr %60, i64 20
  store i32 1, ptr %64, align 1
  %65 = load i32, ptr %31, align 4, !tbaa !52
  %66 = add nsw i32 %65, 24
  store i32 %66, ptr %31, align 4, !tbaa !52
  br label %67

67:                                               ; preds = %21, %55
  tail call fastcc void @mywrite(ptr noundef %1, ptr noundef nonnull %17, i32 noundef %23)
  br label %160

68:                                               ; preds = %2
  %69 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %70 = load ptr, ptr %69, align 8, !tbaa !48
  %71 = icmp eq ptr %70, null
  br i1 %71, label %160, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !43
  %74 = tail call i64 %73(ptr noundef nonnull %70) #14
  %75 = trunc i64 %74 to i32
  %76 = load ptr, ptr %69, align 8, !tbaa !48
  %77 = icmp eq ptr %76, null
  %78 = icmp eq i32 %75, 0
  %79 = or i1 %78, %77
  br i1 %79, label %127, label %80

80:                                               ; preds = %72
  %81 = add nsw i32 %75, 3
  %82 = and i32 %81, -4
  %83 = getelementptr inbounds %struct.WriteData, ptr %1, i64 0, i32 7
  %84 = load i32, ptr %83, align 8, !tbaa !49
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %126

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.WriteData, ptr %1, i64 0, i32 5
  %88 = load i32, ptr %87, align 8, !tbaa !51
  %89 = add nsw i32 %88, 24
  store i32 %89, ptr %87, align 8, !tbaa !51
  %90 = getelementptr inbounds %struct.WriteData, ptr %1, i64 0, i32 6
  %91 = load i32, ptr %90, align 4, !tbaa !52
  %92 = icmp sgt i32 %91, 99975
  br i1 %92, label %93, label %114

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.WriteData, ptr %1, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !53
  %96 = icmp eq ptr %1, null
  %97 = icmp eq ptr %95, null
  %98 = select i1 %96, i1 true, i1 %97
  br i1 %98, label %113, label %99

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.WriteData, ptr %1, i64 0, i32 4
  %101 = load ptr, ptr %100, align 8, !tbaa !54
  %102 = icmp eq ptr %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  tail call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %101, ptr noundef nonnull %95, i32 noundef %91) #14
  br label %113

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.WriteData, ptr %1, i64 0, i32 9
  %106 = load ptr, ptr %105, align 8, !tbaa !55
  %107 = getelementptr inbounds %struct.WriteWrap, ptr %106, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !56
  %109 = zext nneg i32 %91 to i64
  %110 = tail call i64 %108(ptr noundef %106, ptr noundef nonnull %95, i64 noundef %109) #14
  %111 = icmp eq i64 %110, %109
  br i1 %111, label %113, label %112

112:                                              ; preds = %104
  store i32 1, ptr %83, align 8, !tbaa !49
  br label %113

113:                                              ; preds = %112, %104, %103, %93
  store i32 0, ptr %90, align 4, !tbaa !52
  br label %114

114:                                              ; preds = %113, %86
  %115 = getelementptr inbounds %struct.WriteData, ptr %1, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !53
  %117 = load i32, ptr %90, align 4, !tbaa !52
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, ptr %116, i64 %118
  store i32 1096040772, ptr %119, align 1
  %120 = getelementptr inbounds i8, ptr %119, i64 4
  store i32 %82, ptr %120, align 1
  %121 = getelementptr inbounds i8, ptr %119, i64 8
  store ptr %76, ptr %121, align 1
  %122 = getelementptr inbounds i8, ptr %119, i64 16
  store i32 0, ptr %122, align 1
  %123 = getelementptr inbounds i8, ptr %119, i64 20
  store i32 1, ptr %123, align 1
  %124 = load i32, ptr %90, align 4, !tbaa !52
  %125 = add nsw i32 %124, 24
  store i32 %125, ptr %90, align 4, !tbaa !52
  br label %126

126:                                              ; preds = %80, %114
  tail call fastcc void @mywrite(ptr noundef %1, ptr noundef nonnull %76, i32 noundef %82)
  br label %127

127:                                              ; preds = %72, %126
  %128 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 3
  %129 = load i8, ptr %128, align 1, !tbaa !58
  %130 = icmp eq i8 %129, 6
  br i1 %130, label %131, label %160

131:                                              ; preds = %127
  %132 = load ptr, ptr %69, align 8, !tbaa !48
  %133 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %134 = load i32, ptr %133, align 8, !tbaa !47
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %160

136:                                              ; preds = %131, %136
  %137 = phi i64 [ %140, %136 ], [ 0, %131 ]
  %138 = getelementptr inbounds ptr, ptr %132, i64 %137
  %139 = load ptr, ptr %138, align 8, !tbaa !43
  tail call fastcc void @writestruct_at_address(ptr noundef %1, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef %139, ptr noundef %139)
  tail call void @IDP_WriteProperty_OnlyData(ptr noundef %139, ptr noundef %1)
  %140 = add nuw nsw i64 %137, 1
  %141 = load i32, ptr %133, align 8, !tbaa !47
  %142 = sext i32 %141 to i64
  %143 = icmp slt i64 %140, %142
  br i1 %143, label %136, label %160, !llvm.loop !59

144:                                              ; preds = %2
  %145 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %146 = load ptr, ptr %145, align 8, !tbaa !48
  %147 = icmp eq ptr %146, null
  br i1 %147, label %160, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %150 = load i32, ptr %149, align 8, !tbaa !47
  tail call fastcc void @writestruct_at_address(ptr noundef %1, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef %150, ptr noundef nonnull %146, ptr noundef nonnull %146)
  %151 = load i32, ptr %149, align 8, !tbaa !47
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %148, %153
  %154 = phi i64 [ %156, %153 ], [ 0, %148 ]
  %155 = getelementptr inbounds %struct.IDProperty, ptr %146, i64 %154
  tail call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %155, ptr noundef %1)
  %156 = add nuw nsw i64 %154, 1
  %157 = load i32, ptr %149, align 8, !tbaa !47
  %158 = sext i32 %157 to i64
  %159 = icmp slt i64 %156, %158
  br i1 %159, label %153, label %160, !llvm.loop !60

160:                                              ; preds = %153, %136, %9, %148, %131, %5, %67, %13, %144, %127, %68, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IDP_WriteProperty(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @writestruct_at_address(ptr noundef %1, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef %0, ptr noundef %0)
  tail call void @IDP_WriteProperty_OnlyData(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @BLO_write_file(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [1024 x i8], align 16
  %7 = alloca [1024 x i8], align 16
  %8 = alloca [1025 x i8], align 16
  %9 = alloca %struct.WriteWrap, align 8
  %10 = alloca [1024 x i8], align 16
  %11 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1025, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #14
  %12 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %8, i64 noundef 1025, ptr noundef nonnull @.str.1, ptr noundef %1) #14
  %13 = and i32 %2, 2
  %14 = icmp eq i32 %13, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  %15 = getelementptr inbounds %struct.WriteWrap, ptr %9, i64 0, i32 1
  %16 = getelementptr inbounds %struct.WriteWrap, ptr %9, i64 0, i32 2
  %17 = select i1 %14, ptr @ww_open_none, ptr @ww_open_zlib
  %18 = select i1 %14, ptr @ww_close_none, ptr @ww_close_zlib
  %19 = select i1 %14, ptr @ww_write_none, ptr @ww_write_zlib
  store ptr %17, ptr %9, align 8, !tbaa !61
  store ptr %18, ptr %15, align 8, !tbaa !62
  store ptr %19, ptr %16, align 8, !tbaa !56
  %20 = call zeroext i8 %17(ptr noundef nonnull %9, ptr noundef nonnull %8) #14
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = tail call ptr @__errno_location() #15
  %24 = load i32, ptr %23, align 4, !tbaa !63
  %25 = call ptr @strerror(i32 noundef %24) #14
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull %8, ptr noundef %25) #14
  br label %101

26:                                               ; preds = %5
  %27 = and i32 %2, 16777216
  %28 = icmp eq i32 %27, 0
  %29 = and i32 %2, 150994944
  %30 = icmp eq i32 %29, 150994944
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call ptr @BKE_bpath_list_backup(ptr noundef %0, i32 noundef 20) #14
  br label %33

33:                                               ; preds = %31, %26
  %34 = phi ptr [ %32, %31 ], [ null, %26 ]
  br i1 %28, label %50, label %35

35:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %11) #14
  call void @BLI_split_dir_part(ptr noundef %1, ptr noundef nonnull %10, i64 noundef 1024) #14
  %36 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 2
  call void @BLI_split_dir_part(ptr noundef nonnull %36, ptr noundef nonnull %11, i64 noundef 1024) #14
  call void @BLI_cleanup_dir(ptr noundef nonnull %36, ptr noundef nonnull %10) #14
  call void @BLI_cleanup_dir(ptr noundef nonnull %36, ptr noundef nonnull %11) #14
  %37 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !64
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %11) #16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = and i32 %2, -16777217
  br label %48

44:                                               ; preds = %39
  br i1 %38, label %48, label %45

45:                                               ; preds = %44
  %46 = load ptr, ptr @G, align 8, !tbaa !66
  %47 = getelementptr inbounds %struct.Main, ptr %46, i64 0, i32 2
  call void @BKE_bpath_absolute_convert(ptr noundef %0, ptr noundef nonnull %47, ptr noundef null) #14
  br label %48

48:                                               ; preds = %35, %44, %45, %42
  %49 = phi i32 [ %43, %42 ], [ %2, %45 ], [ %2, %44 ], [ %2, %35 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %10) #14
  br label %50

50:                                               ; preds = %48, %33
  %51 = phi i32 [ %49, %48 ], [ %2, %33 ]
  %52 = and i32 %51, 512
  %53 = and i32 %51, 16777216
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  call void @BKE_bpath_relative_convert(ptr noundef %0, ptr noundef %1, ptr noundef null) #14
  br label %56

56:                                               ; preds = %55, %50
  %57 = call fastcc i32 @write_file_handle(ptr noundef %0, ptr noundef nonnull %9, ptr noundef null, ptr noundef null, i32 noundef %52, i32 noundef %51, ptr noundef %4)
  %58 = getelementptr inbounds %struct.WriteWrap, ptr %9, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !62
  %60 = call zeroext i8 %59(ptr noundef nonnull %9) #14
  %61 = icmp eq ptr %34, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  call void @BKE_bpath_list_restore(ptr noundef %0, i32 noundef 20, ptr noundef nonnull %34) #14
  call void @BKE_bpath_list_free(ptr noundef nonnull %34) #14
  br label %63

63:                                               ; preds = %62, %56
  %64 = icmp eq i32 %57, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %63
  %66 = tail call ptr @__errno_location() #15
  %67 = load i32, ptr %66, align 4, !tbaa !63
  %68 = call ptr @strerror(i32 noundef %67) #14
  call void @BKE_report(ptr noundef %3, i32 noundef 32, ptr noundef %68) #14
  %69 = call i32 @remove(ptr noundef nonnull %8) #14
  br label %101

70:                                               ; preds = %63
  %71 = and i32 %51, 33554432
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %97, label %73

73:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #14
  %74 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 18), align 4, !tbaa !67
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %94, label %76

76:                                               ; preds = %73
  %77 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16
  %78 = icmp ult i64 %77, 2
  br i1 %78, label %95, label %79

79:                                               ; preds = %76
  %80 = sext i16 %74 to i32
  br label %81

81:                                               ; preds = %79, %84
  %82 = phi i32 [ %85, %84 ], [ %80, %79 ]
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = add nsw i32 %82, -1
  %86 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 1024, ptr noundef nonnull @.str.303, ptr noundef %1, i32 noundef %85) #14
  %87 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %7, i64 noundef 1024, ptr noundef nonnull @.str.303, ptr noundef %1, i32 noundef %82) #14
  %88 = call i32 @BLI_rename(ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %81, label %95, !llvm.loop !72

90:                                               ; preds = %81
  %91 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 1024, ptr noundef nonnull @.str.303, ptr noundef %1, i32 noundef %82) #14
  %92 = call i32 @BLI_rename(ptr noundef %1, ptr noundef nonnull %6) #14
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %73, %90
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #14
  br label %97

95:                                               ; preds = %84, %90, %76
  %96 = phi ptr [ @.str.302, %76 ], [ @.str.304, %90 ], [ @.str.304, %84 ]
  call void @BKE_report(ptr noundef %3, i32 noundef 32, ptr noundef nonnull %96) #14
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #14
  call void @BKE_report(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.3) #14
  br label %101

97:                                               ; preds = %94, %70
  %98 = call i32 @BLI_rename(ptr noundef nonnull %8, ptr noundef %1) #14
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  call void @BKE_report(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.4) #14
  br label %101

101:                                              ; preds = %95, %97, %100, %65, %22
  %102 = phi i32 [ 0, %22 ], [ 0, %65 ], [ 0, %100 ], [ 0, %95 ], [ 1, %97 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 1025, ptr nonnull %8) #14
  ret i32 %102
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

declare ptr @BKE_bpath_list_backup(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_split_dir_part(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BLI_cleanup_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

declare void @BKE_bpath_absolute_convert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @BKE_bpath_relative_convert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @write_file_handle(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #0 {
  %8 = alloca %struct.NodeTreeIterStore, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca [35 x ptr], align 16
  %12 = alloca %struct.Mesh, align 8
  %13 = alloca %struct.Mesh, align 8
  %14 = alloca %struct.SeqIterator, align 8
  %15 = alloca %struct.SeqIterator, align 8
  %16 = alloca ptr, align 8
  %17 = alloca %struct.ListBase, align 8
  %18 = alloca %struct.FileGlobal, align 8
  %19 = alloca [8 x i8], align 4
  %20 = alloca %struct.RenderInfo, align 4
  %21 = alloca %struct.NodeTreeIterStore, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca %struct.ListBase, align 8
  %25 = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %24) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %25) #14
  call void @blo_split_main(ptr noundef nonnull %24, ptr noundef %0) #14
  %26 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %27 = call ptr %26(i64 noundef 72, ptr noundef nonnull @.str.8) #14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %7
  %30 = load i32, ptr @DNAlen, align 4, !tbaa !63
  %31 = call ptr @DNA_sdna_from_data(ptr noundef nonnull @DNAstr, i32 noundef %30, i8 noundef zeroext 0) #14
  store ptr %31, ptr %27, align 8, !tbaa !73
  %32 = getelementptr inbounds %struct.WriteData, ptr %27, i64 0, i32 9
  store ptr %1, ptr %32, align 8, !tbaa !55
  %33 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %34 = call ptr %33(i64 noundef 100000, ptr noundef nonnull @.str.9) #14
  %35 = getelementptr inbounds %struct.WriteData, ptr %27, i64 0, i32 2
  store ptr %34, ptr %35, align 8, !tbaa !53
  br label %36

36:                                               ; preds = %29, %7
  %37 = phi ptr [ %27, %29 ], [ null, %7 ]
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.WriteData, ptr %37, i64 0, i32 3
  store ptr %2, ptr %40, align 8, !tbaa !74
  %41 = getelementptr inbounds %struct.WriteData, ptr %37, i64 0, i32 4
  store ptr %3, ptr %41, align 8, !tbaa !54
  call void @add_memfilechunk(ptr noundef %2, ptr noundef null, ptr noundef null, i32 noundef 0) #14
  br label %42

42:                                               ; preds = %36, %39
  %43 = phi ptr [ %37, %39 ], [ null, %36 ]
  %44 = lshr i32 %5, 26
  %45 = trunc i32 %44 to i8
  %46 = and i8 %45, 1
  %47 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 10
  store i8 %46, ptr %47, align 8, !tbaa !75
  %48 = icmp eq ptr %3, null
  br i1 %48, label %49, label %122

49:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %21) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #14
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %21, ptr noundef %0) #14
  %50 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23) #14
  %51 = icmp eq i8 %50, 1
  br i1 %51, label %52, label %121

52:                                               ; preds = %49, %118
  %53 = load ptr, ptr %22, align 8, !tbaa !43
  %54 = icmp eq ptr %53, null
  br i1 %54, label %118, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.bNodeTree, ptr %53, i64 0, i32 8, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !76
  %58 = load ptr, ptr %23, align 8, !tbaa !43
  %59 = icmp eq ptr %58, %53
  br i1 %59, label %60, label %118

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.bNodeTree, ptr %53, i64 0, i32 8
  br label %62

62:                                               ; preds = %116, %60
  %63 = phi ptr [ %61, %60 ], [ %64, %116 ]
  %64 = load ptr, ptr %63, align 8, !tbaa !43
  %65 = icmp eq ptr %64, null
  br i1 %65, label %118, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.bNodeLink, ptr %64, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !81
  %69 = getelementptr inbounds %struct.bNodeLink, ptr %64, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !83
  %71 = getelementptr inbounds %struct.bNodeLink, ptr %64, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !84
  %73 = getelementptr inbounds %struct.bNodeLink, ptr %64, i64 0, i32 5
  %74 = load ptr, ptr %73, align 8, !tbaa !85
  %75 = getelementptr inbounds %struct.bNode, ptr %68, i64 0, i32 8
  %76 = load i16, ptr %75, align 4, !tbaa !86
  %77 = icmp eq i16 %76, 7
  br i1 %77, label %78, label %82

78:                                               ; preds = %66
  %79 = load ptr, ptr %22, align 8, !tbaa !43
  %80 = getelementptr inbounds %struct.bNodeSocket, ptr %72, i64 0, i32 4
  %81 = call ptr @ntreeFindSocketInterface(ptr noundef %79, i32 noundef 1, ptr noundef nonnull %80) #14
  br label %82

82:                                               ; preds = %78, %66
  %83 = phi ptr [ null, %78 ], [ %68, %66 ]
  %84 = phi ptr [ %81, %78 ], [ %72, %66 ]
  %85 = getelementptr inbounds %struct.bNode, ptr %70, i64 0, i32 8
  %86 = load i16, ptr %85, align 4, !tbaa !86
  %87 = icmp eq i16 %86, 8
  br i1 %87, label %88, label %97

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.bNode, ptr %70, i64 0, i32 7
  %90 = load i32, ptr %89, align 8, !tbaa !88
  %91 = and i32 %90, 64
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %88
  %94 = load ptr, ptr %22, align 8, !tbaa !43
  %95 = getelementptr inbounds %struct.bNodeSocket, ptr %74, i64 0, i32 4
  %96 = call ptr @ntreeFindSocketInterface(ptr noundef %94, i32 noundef 2, ptr noundef nonnull %95) #14
  br label %97

97:                                               ; preds = %93, %88, %82
  %98 = phi ptr [ null, %93 ], [ %70, %88 ], [ %70, %82 ]
  %99 = phi ptr [ %96, %93 ], [ %74, %88 ], [ %74, %82 ]
  %100 = icmp ne ptr %83, null
  %101 = icmp ne ptr %98, null
  %102 = select i1 %100, i1 %101, i1 false
  br i1 %102, label %116, label %103

103:                                              ; preds = %97
  %104 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %105 = call ptr %104(i64 noundef 56, ptr noundef nonnull @.str.10) #14
  %106 = getelementptr inbounds %struct.bNodeLink, ptr %105, i64 0, i32 2
  store ptr %83, ptr %106, align 8, !tbaa !81
  %107 = getelementptr inbounds %struct.bNodeLink, ptr %105, i64 0, i32 4
  store ptr %84, ptr %107, align 8, !tbaa !84
  %108 = getelementptr inbounds %struct.bNodeLink, ptr %105, i64 0, i32 3
  store ptr %98, ptr %108, align 8, !tbaa !83
  %109 = getelementptr inbounds %struct.bNodeLink, ptr %105, i64 0, i32 5
  store ptr %99, ptr %109, align 8, !tbaa !85
  %110 = getelementptr inbounds %struct.bNodeSocket, ptr %99, i64 0, i32 23
  store ptr %105, ptr %110, align 8, !tbaa !89
  %111 = getelementptr inbounds %struct.bNodeLink, ptr %105, i64 0, i32 6
  %112 = load i32, ptr %111, align 8, !tbaa !92
  %113 = or i32 %112, 2
  store i32 %113, ptr %111, align 8, !tbaa !92
  %114 = load ptr, ptr %22, align 8, !tbaa !43
  %115 = getelementptr inbounds %struct.bNodeTree, ptr %114, i64 0, i32 8
  call void @BLI_addtail(ptr noundef nonnull %115, ptr noundef %105) #14
  br label %116

116:                                              ; preds = %103, %97
  %117 = icmp eq ptr %64, %57
  br i1 %117, label %118, label %62

118:                                              ; preds = %116, %62, %52, %55
  %119 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef nonnull %23) #14
  %120 = icmp eq i8 %119, 1
  br i1 %120, label %52, label %121, !llvm.loop !93

121:                                              ; preds = %118, %49
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %21) #14
  br label %122

122:                                              ; preds = %121, %42
  %123 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef 45, i32 noundef 118, i32 noundef 272) #14
  %124 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 7
  %125 = load i32, ptr %124, align 8, !tbaa !49
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %163

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %129 = load i32, ptr %128, align 8, !tbaa !51
  %130 = add nsw i32 %129, 12
  store i32 %130, ptr %128, align 8, !tbaa !51
  %131 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %132 = load i32, ptr %131, align 4, !tbaa !52
  %133 = icmp sgt i32 %132, 99987
  br i1 %133, label %134, label %155

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !53
  %137 = icmp eq ptr %43, null
  %138 = icmp eq ptr %136, null
  %139 = select i1 %137, i1 true, i1 %138
  br i1 %139, label %154, label %140

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %142 = load ptr, ptr %141, align 8, !tbaa !54
  %143 = icmp eq ptr %142, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %140
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %142, ptr noundef nonnull %136, i32 noundef %132) #14
  br label %154

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %147 = load ptr, ptr %146, align 8, !tbaa !55
  %148 = getelementptr inbounds %struct.WriteWrap, ptr %147, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !56
  %150 = zext nneg i32 %132 to i64
  %151 = call i64 %149(ptr noundef %147, ptr noundef nonnull %136, i64 noundef %150) #14
  %152 = icmp eq i64 %151, %150
  br i1 %152, label %154, label %153

153:                                              ; preds = %145
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %154

154:                                              ; preds = %153, %145, %144, %134
  store i32 0, ptr %131, align 4, !tbaa !52
  br label %155

155:                                              ; preds = %154, %127
  %156 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %157 = load ptr, ptr %156, align 8, !tbaa !53
  %158 = load i32, ptr %131, align 4, !tbaa !52
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, ptr %157, i64 %159
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %160, ptr noundef nonnull align 16 dereferenceable(12) %25, i64 12, i1 false)
  %161 = load i32, ptr %131, align 4, !tbaa !52
  %162 = add nsw i32 %161, 12
  store i32 %162, ptr %131, align 4, !tbaa !52
  br label %163

163:                                              ; preds = %122, %155
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %20) #14
  %164 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 40
  %165 = load ptr, ptr %164, align 8, !tbaa !94
  %166 = icmp eq ptr %165, null
  br i1 %166, label %170, label %167

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.wmWindowManager, ptr %165, i64 0, i32 3
  %169 = load ptr, ptr %168, align 8, !tbaa !97
  br label %170

170:                                              ; preds = %167, %163
  %171 = phi ptr [ %169, %167 ], [ null, %163 ]
  %172 = icmp eq ptr %171, null
  br i1 %172, label %176, label %173

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.wmWindow, ptr %171, i64 0, i32 3
  %175 = load ptr, ptr %174, align 8, !tbaa !100
  br label %176

176:                                              ; preds = %173, %170
  %177 = phi ptr [ %175, %173 ], [ null, %170 ]
  %178 = icmp eq ptr %177, null
  br i1 %178, label %182, label %179

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.bScreen, ptr %177, i64 0, i32 5
  %181 = load ptr, ptr %180, align 8, !tbaa !102
  br label %182

182:                                              ; preds = %179, %176
  %183 = phi ptr [ %181, %179 ], [ null, %176 ]
  %184 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  %185 = load ptr, ptr %184, align 8, !tbaa !43
  %186 = icmp eq ptr %185, null
  br i1 %186, label %293, label %187

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.RenderInfo, ptr %20, i64 0, i32 1
  %189 = getelementptr inbounds %struct.RenderInfo, ptr %20, i64 0, i32 2
  %190 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %191 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %192 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %193 = icmp eq ptr %43, null
  %194 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %195 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %196 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %197 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %198 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %199 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %200 = icmp eq ptr %43, null
  %201 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %202 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %203 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  br label %204

204:                                              ; preds = %187, %290
  %205 = phi ptr [ %185, %187 ], [ %291, %290 ]
  %206 = getelementptr inbounds %struct.ID, ptr %205, i64 0, i32 3
  %207 = load ptr, ptr %206, align 8, !tbaa !104
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %290

209:                                              ; preds = %204
  %210 = icmp eq ptr %205, %183
  br i1 %210, label %216, label %211

211:                                              ; preds = %209
  %212 = getelementptr inbounds %struct.Scene, ptr %205, i64 0, i32 22, i32 46
  %213 = load i32, ptr %212, align 4, !tbaa !122
  %214 = and i32 %213, 2
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %290, label %216

216:                                              ; preds = %211, %209
  %217 = getelementptr inbounds %struct.Scene, ptr %205, i64 0, i32 22, i32 6
  %218 = load i32, ptr %217, align 4, !tbaa !123
  store i32 %218, ptr %20, align 4, !tbaa !124
  %219 = getelementptr inbounds %struct.Scene, ptr %205, i64 0, i32 22, i32 7
  %220 = load i32, ptr %219, align 8, !tbaa !126
  store i32 %220, ptr %188, align 4, !tbaa !127
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %189, i8 0, i64 64, i1 false)
  %221 = getelementptr inbounds %struct.ID, ptr %205, i64 0, i32 4, i64 2
  %222 = call ptr @BLI_strncpy(ptr noundef nonnull %189, ptr noundef nonnull %221, i64 noundef 64) #14
  %223 = load i32, ptr %124, align 8, !tbaa !49
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %258

225:                                              ; preds = %216
  %226 = load i32, ptr %190, align 8, !tbaa !51
  %227 = add nsw i32 %226, 24
  store i32 %227, ptr %190, align 8, !tbaa !51
  %228 = load i32, ptr %191, align 4, !tbaa !52
  %229 = icmp sgt i32 %228, 99975
  br i1 %229, label %230, label %247

230:                                              ; preds = %225
  %231 = load ptr, ptr %192, align 8, !tbaa !53
  %232 = icmp eq ptr %231, null
  %233 = select i1 %193, i1 true, i1 %232
  br i1 %233, label %246, label %234

234:                                              ; preds = %230
  %235 = load ptr, ptr %194, align 8, !tbaa !54
  %236 = icmp eq ptr %235, null
  br i1 %236, label %238, label %237

237:                                              ; preds = %234
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %235, ptr noundef nonnull %231, i32 noundef %228) #14
  br label %246

238:                                              ; preds = %234
  %239 = load ptr, ptr %195, align 8, !tbaa !55
  %240 = getelementptr inbounds %struct.WriteWrap, ptr %239, i64 0, i32 2
  %241 = load ptr, ptr %240, align 8, !tbaa !56
  %242 = zext nneg i32 %228 to i64
  %243 = call i64 %241(ptr noundef %239, ptr noundef nonnull %231, i64 noundef %242) #14
  %244 = icmp eq i64 %243, %242
  br i1 %244, label %246, label %245

245:                                              ; preds = %238
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %246

246:                                              ; preds = %245, %238, %237, %230
  store i32 0, ptr %191, align 4, !tbaa !52
  br label %247

247:                                              ; preds = %246, %225
  %248 = load ptr, ptr %196, align 8, !tbaa !53
  %249 = load i32, ptr %191, align 4, !tbaa !52
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8, ptr %248, i64 %250
  store i32 1145980242, ptr %251, align 1
  %252 = getelementptr inbounds i8, ptr %251, i64 4
  store i32 72, ptr %252, align 1
  %253 = getelementptr inbounds i8, ptr %251, i64 8
  store ptr %20, ptr %253, align 1
  %254 = getelementptr inbounds i8, ptr %251, i64 16
  store i32 0, ptr %254, align 1
  %255 = getelementptr inbounds i8, ptr %251, i64 20
  store i32 1, ptr %255, align 1
  %256 = load i32, ptr %191, align 4, !tbaa !52
  %257 = add nsw i32 %256, 24
  store i32 %257, ptr %191, align 4, !tbaa !52
  br label %258

258:                                              ; preds = %216, %247
  %259 = load i32, ptr %124, align 8, !tbaa !49
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %290

261:                                              ; preds = %258
  %262 = load i32, ptr %197, align 8, !tbaa !51
  %263 = add nsw i32 %262, 72
  store i32 %263, ptr %197, align 8, !tbaa !51
  %264 = load i32, ptr %198, align 4, !tbaa !52
  %265 = icmp sgt i32 %264, 99927
  br i1 %265, label %266, label %283

266:                                              ; preds = %261
  %267 = load ptr, ptr %199, align 8, !tbaa !53
  %268 = icmp eq ptr %267, null
  %269 = select i1 %200, i1 true, i1 %268
  br i1 %269, label %282, label %270

270:                                              ; preds = %266
  %271 = load ptr, ptr %201, align 8, !tbaa !54
  %272 = icmp eq ptr %271, null
  br i1 %272, label %274, label %273

273:                                              ; preds = %270
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %271, ptr noundef nonnull %267, i32 noundef %264) #14
  br label %282

274:                                              ; preds = %270
  %275 = load ptr, ptr %202, align 8, !tbaa !55
  %276 = getelementptr inbounds %struct.WriteWrap, ptr %275, i64 0, i32 2
  %277 = load ptr, ptr %276, align 8, !tbaa !56
  %278 = zext nneg i32 %264 to i64
  %279 = call i64 %277(ptr noundef %275, ptr noundef nonnull %267, i64 noundef %278) #14
  %280 = icmp eq i64 %279, %278
  br i1 %280, label %282, label %281

281:                                              ; preds = %274
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %282

282:                                              ; preds = %281, %274, %273, %266
  store i32 0, ptr %198, align 4, !tbaa !52
  br label %283

283:                                              ; preds = %282, %261
  %284 = load ptr, ptr %203, align 8, !tbaa !53
  %285 = load i32, ptr %198, align 4, !tbaa !52
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i8, ptr %284, i64 %286
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %287, ptr noundef nonnull align 4 dereferenceable(72) %20, i64 72, i1 false)
  %288 = load i32, ptr %198, align 4, !tbaa !52
  %289 = add nsw i32 %288, 72
  store i32 %289, ptr %198, align 4, !tbaa !52
  br label %290

290:                                              ; preds = %283, %258, %211, %204
  %291 = load ptr, ptr %205, align 8, !tbaa !43
  %292 = icmp eq ptr %291, null
  br i1 %292, label %293, label %204, !llvm.loop !128

293:                                              ; preds = %290, %182
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %20) #14
  %294 = icmp eq ptr %6, null
  br i1 %294, label %348, label %295

295:                                              ; preds = %293
  %296 = load i32, ptr %6, align 4, !tbaa !63
  %297 = getelementptr inbounds i32, ptr %6, i64 1
  %298 = load i32, ptr %297, align 4, !tbaa !63
  %299 = shl i32 %296, 2
  %300 = mul i32 %299, %298
  %301 = icmp eq i32 %300, -8
  br i1 %301, label %348, label %302

302:                                              ; preds = %295
  %303 = add i32 %300, 11
  %304 = and i32 %303, -4
  %305 = load i32, ptr %124, align 8, !tbaa !49
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %347

307:                                              ; preds = %302
  %308 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %309 = load i32, ptr %308, align 8, !tbaa !51
  %310 = add nsw i32 %309, 24
  store i32 %310, ptr %308, align 8, !tbaa !51
  %311 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %312 = load i32, ptr %311, align 4, !tbaa !52
  %313 = icmp sgt i32 %312, 99975
  br i1 %313, label %314, label %335

314:                                              ; preds = %307
  %315 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %316 = load ptr, ptr %315, align 8, !tbaa !53
  %317 = icmp eq ptr %43, null
  %318 = icmp eq ptr %316, null
  %319 = select i1 %317, i1 true, i1 %318
  br i1 %319, label %334, label %320

320:                                              ; preds = %314
  %321 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %322 = load ptr, ptr %321, align 8, !tbaa !54
  %323 = icmp eq ptr %322, null
  br i1 %323, label %325, label %324

324:                                              ; preds = %320
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %322, ptr noundef nonnull %316, i32 noundef %312) #14
  br label %334

325:                                              ; preds = %320
  %326 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %327 = load ptr, ptr %326, align 8, !tbaa !55
  %328 = getelementptr inbounds %struct.WriteWrap, ptr %327, i64 0, i32 2
  %329 = load ptr, ptr %328, align 8, !tbaa !56
  %330 = zext nneg i32 %312 to i64
  %331 = call i64 %329(ptr noundef %327, ptr noundef nonnull %316, i64 noundef %330) #14
  %332 = icmp eq i64 %331, %330
  br i1 %332, label %334, label %333

333:                                              ; preds = %325
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %334

334:                                              ; preds = %333, %325, %324, %314
  store i32 0, ptr %311, align 4, !tbaa !52
  br label %335

335:                                              ; preds = %334, %307
  %336 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %337 = load ptr, ptr %336, align 8, !tbaa !53
  %338 = load i32, ptr %311, align 4, !tbaa !52
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i8, ptr %337, i64 %339
  store i32 1414743380, ptr %340, align 1
  %341 = getelementptr inbounds i8, ptr %340, i64 4
  store i32 %304, ptr %341, align 1
  %342 = getelementptr inbounds i8, ptr %340, i64 8
  store ptr %6, ptr %342, align 1
  %343 = getelementptr inbounds i8, ptr %340, i64 16
  store i32 0, ptr %343, align 1
  %344 = getelementptr inbounds i8, ptr %340, i64 20
  store i32 1, ptr %344, align 1
  %345 = load i32, ptr %311, align 4, !tbaa !52
  %346 = add nsw i32 %345, 24
  store i32 %346, ptr %311, align 4, !tbaa !52
  br label %347

347:                                              ; preds = %302, %335
  call fastcc void @mywrite(ptr noundef %43, ptr noundef nonnull %6, i32 noundef %304)
  br label %348

348:                                              ; preds = %347, %295, %293
  call void @llvm.lifetime.start.p0(i64 1088, ptr nonnull %18) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #14
  %349 = getelementptr inbounds %struct.FileGlobal, ptr %18, i64 0, i32 2
  store i16 0, ptr %349, align 2, !tbaa !129
  %350 = getelementptr inbounds %struct.FileGlobal, ptr %18, i64 0, i32 13
  %351 = getelementptr inbounds %struct.FileGlobal, ptr %18, i64 0, i32 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %351, i8 0, i64 1040, i1 false)
  %352 = load ptr, ptr %164, align 8, !tbaa !94
  %353 = icmp eq ptr %352, null
  br i1 %353, label %357, label %354

354:                                              ; preds = %348
  %355 = getelementptr inbounds %struct.wmWindowManager, ptr %352, i64 0, i32 3
  %356 = load ptr, ptr %355, align 8, !tbaa !97
  br label %357

357:                                              ; preds = %354, %348
  %358 = phi ptr [ %356, %354 ], [ null, %348 ]
  %359 = icmp eq ptr %358, null
  br i1 %359, label %363, label %360

360:                                              ; preds = %357
  %361 = getelementptr inbounds %struct.wmWindow, ptr %358, i64 0, i32 3
  %362 = load ptr, ptr %361, align 8, !tbaa !100
  br label %363

363:                                              ; preds = %360, %357
  %364 = phi ptr [ %362, %360 ], [ null, %357 ]
  %365 = getelementptr inbounds %struct.FileGlobal, ptr %18, i64 0, i32 7
  store ptr %364, ptr %365, align 8, !tbaa !131
  %366 = icmp eq ptr %364, null
  br i1 %366, label %370, label %367

367:                                              ; preds = %363
  %368 = getelementptr inbounds %struct.bScreen, ptr %364, i64 0, i32 5
  %369 = load ptr, ptr %368, align 8, !tbaa !102
  br label %370

370:                                              ; preds = %363, %367
  %371 = phi ptr [ %369, %367 ], [ null, %363 ]
  %372 = getelementptr inbounds %struct.FileGlobal, ptr %18, i64 0, i32 8
  store ptr %371, ptr %372, align 8, !tbaa !132
  %373 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 12), align 8, !tbaa !133
  %374 = getelementptr inbounds %struct.FileGlobal, ptr %18, i64 0, i32 5
  store i16 %373, ptr %374, align 4, !tbaa !134
  %375 = load i16, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 11), align 2, !tbaa !135
  %376 = getelementptr inbounds %struct.FileGlobal, ptr %18, i64 0, i32 6
  store i16 %375, ptr %376, align 2, !tbaa !136
  %377 = and i32 %5, -218104833
  %378 = getelementptr inbounds %struct.FileGlobal, ptr %18, i64 0, i32 9
  store i32 %377, ptr %378, align 8, !tbaa !137
  %379 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !138
  %380 = getelementptr inbounds %struct.FileGlobal, ptr %18, i64 0, i32 10
  store i32 %379, ptr %380, align 4, !tbaa !139
  %381 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 2
  %382 = call ptr @BLI_strncpy(ptr noundef nonnull %350, ptr noundef nonnull %381, i64 noundef 1024) #14
  %383 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef 1) #14
  %384 = load i32, ptr %19, align 4
  store i32 %384, ptr %18, align 8
  %385 = getelementptr inbounds %struct.FileGlobal, ptr %18, i64 0, i32 1
  store i16 1, ptr %385, align 4, !tbaa !140
  %386 = getelementptr inbounds %struct.FileGlobal, ptr %18, i64 0, i32 3
  store i16 270, ptr %386, align 8, !tbaa !141
  %387 = getelementptr inbounds %struct.FileGlobal, ptr %18, i64 0, i32 4
  store i16 5, ptr %387, align 2, !tbaa !142
  %388 = getelementptr inbounds %struct.FileGlobal, ptr %18, i64 0, i32 11
  store i64 0, ptr %388, align 8, !tbaa !143
  %389 = call ptr @BLI_strncpy(ptr noundef nonnull %351, ptr noundef nonnull @.str.12, i64 noundef 16) #14
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1112493127, ptr noundef nonnull @.str.13, i32 noundef 1, ptr noundef nonnull %18, ptr noundef nonnull %18)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #14
  call void @llvm.lifetime.end.p0(i64 1088, ptr nonnull %18) #14
  %390 = load ptr, ptr %164, align 8, !tbaa !43
  %391 = icmp eq ptr %390, null
  br i1 %391, label %404, label %395

392:                                              ; preds = %400, %395
  %393 = load ptr, ptr %396, align 8, !tbaa !43
  %394 = icmp eq ptr %393, null
  br i1 %394, label %404, label %395, !llvm.loop !144

395:                                              ; preds = %370, %392
  %396 = phi ptr [ %393, %392 ], [ %390, %370 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 19799, ptr noundef nonnull @.str.14, i32 noundef 1, ptr noundef nonnull %396, ptr noundef nonnull %396)
  %397 = getelementptr inbounds %struct.wmWindowManager, ptr %396, i64 0, i32 3
  %398 = load ptr, ptr %397, align 8, !tbaa !43
  %399 = icmp eq ptr %398, null
  br i1 %399, label %392, label %400

400:                                              ; preds = %395, %400
  %401 = phi ptr [ %402, %400 ], [ %398, %395 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.15, i32 noundef 1, ptr noundef nonnull %401, ptr noundef nonnull %401)
  %402 = load ptr, ptr %401, align 8, !tbaa !43
  %403 = icmp eq ptr %402, null
  br i1 %403, label %392, label %400, !llvm.loop !145

404:                                              ; preds = %392, %370
  %405 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #14
  store ptr null, ptr %16, align 8, !tbaa !43
  %406 = load ptr, ptr %405, align 8, !tbaa !43
  %407 = icmp eq ptr %406, null
  br i1 %407, label %658, label %408

408:                                              ; preds = %404
  %409 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %410 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %411 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %412 = icmp eq ptr %43, null
  %413 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %414 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %415 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  br label %419

416:                                              ; preds = %445, %441
  %417 = load ptr, ptr %420, align 8, !tbaa !43
  %418 = icmp eq ptr %417, null
  br i1 %418, label %658, label %419, !llvm.loop !146

419:                                              ; preds = %408, %416
  %420 = phi ptr [ %406, %408 ], [ %417, %416 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 20051, ptr noundef nonnull @.str.16, i32 noundef 1, ptr noundef nonnull %420, ptr noundef nonnull %420)
  %421 = getelementptr inbounds %struct.ID, ptr %420, i64 0, i32 9
  %422 = load ptr, ptr %421, align 8, !tbaa !147
  %423 = icmp eq ptr %422, null
  br i1 %423, label %425, label %424

424:                                              ; preds = %419
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %422, ptr noundef nonnull %422)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %422, ptr noundef %43)
  br label %425

425:                                              ; preds = %424, %419
  %426 = getelementptr inbounds %struct.bScreen, ptr %420, i64 0, i32 1
  %427 = load ptr, ptr %426, align 8, !tbaa !43
  %428 = icmp eq ptr %427, null
  br i1 %428, label %433, label %429

429:                                              ; preds = %425, %429
  %430 = phi ptr [ %431, %429 ], [ %427, %425 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.17, i32 noundef 1, ptr noundef nonnull %430, ptr noundef nonnull %430)
  %431 = load ptr, ptr %430, align 8, !tbaa !43
  %432 = icmp eq ptr %431, null
  br i1 %432, label %433, label %429, !llvm.loop !148

433:                                              ; preds = %429, %425
  %434 = getelementptr inbounds %struct.bScreen, ptr %420, i64 0, i32 2
  %435 = load ptr, ptr %434, align 8, !tbaa !43
  %436 = icmp eq ptr %435, null
  br i1 %436, label %441, label %437

437:                                              ; preds = %433, %437
  %438 = phi ptr [ %439, %437 ], [ %435, %433 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.18, i32 noundef 1, ptr noundef nonnull %438, ptr noundef nonnull %438)
  %439 = load ptr, ptr %438, align 8, !tbaa !43
  %440 = icmp eq ptr %439, null
  br i1 %440, label %441, label %437, !llvm.loop !149

441:                                              ; preds = %437, %433
  %442 = getelementptr inbounds %struct.bScreen, ptr %420, i64 0, i32 3
  %443 = load ptr, ptr %442, align 8, !tbaa !43
  %444 = icmp eq ptr %443, null
  br i1 %444, label %416, label %448

445:                                              ; preds = %655, %498
  %446 = load ptr, ptr %449, align 8, !tbaa !43
  %447 = icmp eq ptr %446, null
  br i1 %447, label %416, label %448, !llvm.loop !150

448:                                              ; preds = %441, %445
  %449 = phi ptr [ %446, %445 ], [ %443, %441 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.19, i32 noundef 1, ptr noundef nonnull %449, ptr noundef nonnull %449)
  %450 = getelementptr inbounds %struct.ScrArea, ptr %449, i64 0, i32 20
  %451 = load ptr, ptr %450, align 8, !tbaa !43
  %452 = icmp eq ptr %451, null
  br i1 %452, label %498, label %453

453:                                              ; preds = %448
  %454 = getelementptr inbounds %struct.ScrArea, ptr %449, i64 0, i32 8
  br label %458

455:                                              ; preds = %494, %490
  %456 = load ptr, ptr %459, align 8, !tbaa !43
  %457 = icmp eq ptr %456, null
  br i1 %457, label %498, label %458, !llvm.loop !151

458:                                              ; preds = %453, %455
  %459 = phi ptr [ %451, %453 ], [ %456, %455 ]
  %460 = load i8, ptr %454, align 8, !tbaa !152
  %461 = zext i8 %460 to i32
  call fastcc void @write_region(ptr noundef %43, ptr noundef nonnull %459, i32 noundef %461)
  %462 = getelementptr inbounds %struct.ARegion, ptr %459, i64 0, i32 22
  %463 = load ptr, ptr %462, align 8, !tbaa !43
  %464 = icmp eq ptr %463, null
  br i1 %464, label %469, label %465

465:                                              ; preds = %458, %465
  %466 = phi ptr [ %467, %465 ], [ %463, %458 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.20, i32 noundef 1, ptr noundef nonnull %466, ptr noundef nonnull %466)
  %467 = load ptr, ptr %466, align 8, !tbaa !43
  %468 = icmp eq ptr %467, null
  br i1 %468, label %469, label %465, !llvm.loop !154

469:                                              ; preds = %465, %458
  %470 = getelementptr inbounds %struct.ARegion, ptr %459, i64 0, i32 23
  %471 = load ptr, ptr %470, align 8, !tbaa !43
  %472 = icmp eq ptr %471, null
  br i1 %472, label %477, label %473

473:                                              ; preds = %469, %473
  %474 = phi ptr [ %475, %473 ], [ %471, %469 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.21, i32 noundef 1, ptr noundef nonnull %474, ptr noundef nonnull %474)
  %475 = load ptr, ptr %474, align 8, !tbaa !43
  %476 = icmp eq ptr %475, null
  br i1 %476, label %477, label %473, !llvm.loop !155

477:                                              ; preds = %473, %469
  %478 = getelementptr inbounds %struct.ARegion, ptr %459, i64 0, i32 24
  %479 = load ptr, ptr %478, align 8, !tbaa !43
  %480 = icmp eq ptr %479, null
  br i1 %480, label %490, label %481

481:                                              ; preds = %477, %487
  %482 = phi ptr [ %488, %487 ], [ %479, %477 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.48, i32 noundef 1, ptr noundef nonnull %482, ptr noundef nonnull %482)
  %483 = getelementptr inbounds %struct.uiList, ptr %482, i64 0, i32 13
  %484 = load ptr, ptr %483, align 8, !tbaa !156
  %485 = icmp eq ptr %484, null
  br i1 %485, label %487, label %486

486:                                              ; preds = %481
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %484, ptr noundef nonnull %484)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %484, ptr noundef %43)
  br label %487

487:                                              ; preds = %486, %481
  %488 = load ptr, ptr %482, align 8, !tbaa !43
  %489 = icmp eq ptr %488, null
  br i1 %489, label %490, label %481, !llvm.loop !158

490:                                              ; preds = %487, %477
  %491 = getelementptr inbounds %struct.ARegion, ptr %459, i64 0, i32 25
  %492 = load ptr, ptr %491, align 8, !tbaa !43
  %493 = icmp eq ptr %492, null
  br i1 %493, label %455, label %494

494:                                              ; preds = %490, %494
  %495 = phi ptr [ %496, %494 ], [ %492, %490 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.22, i32 noundef 1, ptr noundef nonnull %495, ptr noundef nonnull %495)
  %496 = load ptr, ptr %495, align 8, !tbaa !43
  %497 = icmp eq ptr %496, null
  br i1 %497, label %455, label %494, !llvm.loop !159

498:                                              ; preds = %455, %448
  %499 = getelementptr inbounds %struct.ScrArea, ptr %449, i64 0, i32 19
  %500 = load ptr, ptr %499, align 8, !tbaa !43
  %501 = icmp eq ptr %500, null
  br i1 %501, label %445, label %502

502:                                              ; preds = %498, %655
  %503 = phi ptr [ %656, %655 ], [ %500, %498 ]
  %504 = getelementptr inbounds %struct.SpaceLink, ptr %503, i64 0, i32 2
  %505 = load ptr, ptr %504, align 8, !tbaa !43
  %506 = icmp eq ptr %505, null
  br i1 %506, label %514, label %507

507:                                              ; preds = %502
  %508 = getelementptr inbounds %struct.SpaceLink, ptr %503, i64 0, i32 3
  br label %509

509:                                              ; preds = %507, %509
  %510 = phi ptr [ %505, %507 ], [ %512, %509 ]
  %511 = load i32, ptr %508, align 8, !tbaa !160
  call fastcc void @write_region(ptr noundef %43, ptr noundef nonnull %510, i32 noundef %511)
  %512 = load ptr, ptr %510, align 8, !tbaa !43
  %513 = icmp eq ptr %512, null
  br i1 %513, label %514, label %509, !llvm.loop !162

514:                                              ; preds = %509, %502
  %515 = getelementptr inbounds %struct.SpaceLink, ptr %503, i64 0, i32 3
  %516 = load i32, ptr %515, align 8, !tbaa !160
  switch i32 %516, label %655 [
    i32 1, label %517
    i32 2, label %530
    i32 4, label %537
    i32 5, label %538
    i32 8, label %543
    i32 3, label %544
    i32 6, label %564
    i32 9, label %578
    i32 14, label %579
    i32 12, label %581
    i32 13, label %582
    i32 15, label %587
    i32 16, label %588
    i32 17, label %596
    i32 18, label %597
    i32 19, label %653
    i32 20, label %654
  ]

517:                                              ; preds = %514
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.23, i32 noundef 1, ptr noundef nonnull %503, ptr noundef nonnull %503)
  %518 = getelementptr inbounds %struct.View3D, ptr %503, i64 0, i32 18
  %519 = load ptr, ptr %518, align 8, !tbaa !43
  %520 = icmp eq ptr %519, null
  br i1 %520, label %525, label %521

521:                                              ; preds = %517, %521
  %522 = phi ptr [ %523, %521 ], [ %519, %517 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.24, i32 noundef 1, ptr noundef nonnull %522, ptr noundef nonnull %522)
  %523 = load ptr, ptr %522, align 8, !tbaa !43
  %524 = icmp eq ptr %523, null
  br i1 %524, label %525, label %521, !llvm.loop !163

525:                                              ; preds = %521, %517
  %526 = getelementptr inbounds %struct.View3D, ptr %503, i64 0, i32 20
  %527 = load ptr, ptr %526, align 8, !tbaa !164
  %528 = icmp eq ptr %527, null
  br i1 %528, label %655, label %529

529:                                              ; preds = %525
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.23, i32 noundef 1, ptr noundef nonnull %527, ptr noundef nonnull %527)
  br label %655

530:                                              ; preds = %514
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17)
  %531 = getelementptr inbounds %struct.SpaceIpo, ptr %503, i64 0, i32 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %531, i64 16, i1 false), !tbaa.struct !166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %531, i8 0, i64 16, i1 false)
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.25, i32 noundef 1, ptr noundef nonnull %503, ptr noundef nonnull %503)
  %532 = getelementptr inbounds %struct.SpaceIpo, ptr %503, i64 0, i32 7
  %533 = load ptr, ptr %532, align 8, !tbaa !167
  %534 = icmp eq ptr %533, null
  br i1 %534, label %536, label %535

535:                                              ; preds = %530
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.26, i32 noundef 1, ptr noundef nonnull %533, ptr noundef nonnull %533)
  br label %536

536:                                              ; preds = %535, %530
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %531, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 16, i1 false), !tbaa.struct !166
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17)
  br label %655

537:                                              ; preds = %514
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.27, i32 noundef 1, ptr noundef nonnull %503, ptr noundef nonnull %503)
  br label %655

538:                                              ; preds = %514
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.28, i32 noundef 1, ptr noundef nonnull %503, ptr noundef nonnull %503)
  %539 = getelementptr inbounds %struct.SpaceFile, ptr %503, i64 0, i32 5
  %540 = load ptr, ptr %539, align 8, !tbaa !170
  %541 = icmp eq ptr %540, null
  br i1 %541, label %655, label %542

542:                                              ; preds = %538
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.29, i32 noundef 1, ptr noundef nonnull %540, ptr noundef nonnull %540)
  br label %655

543:                                              ; preds = %514
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.30, i32 noundef 1, ptr noundef nonnull %503, ptr noundef nonnull %503)
  br label %655

544:                                              ; preds = %514
  %545 = getelementptr inbounds %struct.SpaceOops, ptr %503, i64 0, i32 8
  %546 = load ptr, ptr %545, align 8, !tbaa !172
  %547 = icmp eq ptr %546, null
  br i1 %547, label %563, label %548

548:                                              ; preds = %544
  %549 = call i32 @BLI_mempool_count(ptr noundef nonnull %546) #14
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %553, label %551

551:                                              ; preds = %548
  %552 = call ptr @BLI_mempool_as_arrayN(ptr noundef nonnull %546, ptr noundef nonnull @.str.49) #14
  br label %553

553:                                              ; preds = %551, %548
  %554 = phi ptr [ %552, %551 ], [ null, %548 ]
  %555 = icmp eq ptr %554, null
  br i1 %555, label %561, label %556

556:                                              ; preds = %553
  %557 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %558 = call ptr %557(i64 noundef 16, ptr noundef nonnull @.str.50) #14
  %559 = getelementptr inbounds %struct.TreeStore, ptr %558, i64 0, i32 1
  store i32 %549, ptr %559, align 4, !tbaa !175
  store i32 %549, ptr %558, align 8, !tbaa !177
  %560 = getelementptr inbounds %struct.TreeStore, ptr %558, i64 0, i32 2
  store ptr %554, ptr %560, align 8, !tbaa !178
  store ptr %558, ptr %545, align 8, !tbaa !172
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.51, i32 noundef 1, ptr noundef nonnull %503, ptr noundef nonnull %503)
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.50, i32 noundef 1, ptr noundef nonnull %558, ptr noundef nonnull %558)
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.49, i32 noundef %549, ptr noundef nonnull %554, ptr noundef nonnull %554)
  call void @BLI_linklist_prepend(ptr noundef nonnull %16, ptr noundef nonnull %558) #14
  call void @BLI_linklist_prepend(ptr noundef nonnull %16, ptr noundef nonnull %554) #14
  br label %562

561:                                              ; preds = %553
  store ptr null, ptr %545, align 8, !tbaa !172
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.51, i32 noundef 1, ptr noundef nonnull %503, ptr noundef nonnull %503)
  br label %562

562:                                              ; preds = %561, %556
  store ptr %546, ptr %545, align 8, !tbaa !172
  br label %655

563:                                              ; preds = %544
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.51, i32 noundef 1, ptr noundef nonnull %503, ptr noundef nonnull %503)
  br label %655

564:                                              ; preds = %514
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.31, i32 noundef 1, ptr noundef nonnull %503, ptr noundef nonnull %503)
  %565 = getelementptr inbounds %struct.SpaceImage, ptr %503, i64 0, i32 7
  %566 = load ptr, ptr %565, align 8, !tbaa !179
  %567 = icmp eq ptr %566, null
  br i1 %567, label %655, label %568

568:                                              ; preds = %564
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.52, i32 noundef 1, ptr noundef nonnull %566, ptr noundef nonnull %566)
  br label %569

569:                                              ; preds = %569, %568
  %570 = phi i64 [ 0, %568 ], [ %576, %569 ]
  %571 = getelementptr inbounds %struct.CurveMapping, ptr %566, i64 0, i32 6, i64 %570
  %572 = load i16, ptr %571, align 8, !tbaa !185
  %573 = sext i16 %572 to i32
  %574 = getelementptr inbounds %struct.CurveMapping, ptr %566, i64 0, i32 6, i64 %570, i32 7
  %575 = load ptr, ptr %574, align 8, !tbaa !187
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.53, i32 noundef %573, ptr noundef %575, ptr noundef %575)
  %576 = add nuw nsw i64 %570, 1
  %577 = icmp eq i64 %576, 4
  br i1 %577, label %655, label %569, !llvm.loop !188

578:                                              ; preds = %514
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.32, i32 noundef 1, ptr noundef nonnull %503, ptr noundef nonnull %503)
  br label %655

579:                                              ; preds = %514
  %580 = getelementptr inbounds %struct.SpaceScript, ptr %503, i64 0, i32 9
  store ptr null, ptr %580, align 8, !tbaa !189
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.33, i32 noundef 1, ptr noundef nonnull %503, ptr noundef nonnull %503)
  br label %655

581:                                              ; preds = %514
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.34, i32 noundef 1, ptr noundef nonnull %503, ptr noundef nonnull %503)
  br label %655

582:                                              ; preds = %514
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.35, i32 noundef 1, ptr noundef nonnull %503, ptr noundef nonnull %503)
  %583 = getelementptr inbounds %struct.SpaceNla, ptr %503, i64 0, i32 9
  %584 = load ptr, ptr %583, align 8, !tbaa !191
  %585 = icmp eq ptr %584, null
  br i1 %585, label %655, label %586

586:                                              ; preds = %582
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.26, i32 noundef 1, ptr noundef nonnull %584, ptr noundef nonnull %584)
  br label %655

587:                                              ; preds = %514
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.36, i32 noundef 1, ptr noundef nonnull %503, ptr noundef nonnull %503)
  br label %655

588:                                              ; preds = %514
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.37, i32 noundef 1, ptr noundef nonnull %503, ptr noundef nonnull %503)
  %589 = getelementptr inbounds %struct.SpaceNode, ptr %503, i64 0, i32 17
  %590 = load ptr, ptr %589, align 8, !tbaa !43
  %591 = icmp eq ptr %590, null
  br i1 %591, label %655, label %592

592:                                              ; preds = %588, %592
  %593 = phi ptr [ %594, %592 ], [ %590, %588 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.38, i32 noundef 1, ptr noundef nonnull %593, ptr noundef nonnull %593)
  %594 = load ptr, ptr %593, align 8, !tbaa !43
  %595 = icmp eq ptr %594, null
  br i1 %595, label %655, label %592, !llvm.loop !193

596:                                              ; preds = %514
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.39, i32 noundef 1, ptr noundef nonnull %503, ptr noundef nonnull %503)
  br label %655

597:                                              ; preds = %514
  %598 = getelementptr inbounds %struct.SpaceConsole, ptr %503, i64 0, i32 9
  %599 = load ptr, ptr %598, align 8, !tbaa !43
  %600 = icmp eq ptr %599, null
  br i1 %600, label %652, label %601

601:                                              ; preds = %597, %649
  %602 = phi ptr [ %650, %649 ], [ %599, %597 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.40, i32 noundef 1, ptr noundef nonnull %602, ptr noundef nonnull %602)
  %603 = getelementptr inbounds %struct.ConsoleLine, ptr %602, i64 0, i32 3
  %604 = load i32, ptr %603, align 4, !tbaa !194
  %605 = getelementptr inbounds %struct.ConsoleLine, ptr %602, i64 0, i32 4
  %606 = load ptr, ptr %605, align 8, !tbaa !196
  %607 = icmp eq ptr %606, null
  %608 = icmp eq i32 %604, -1
  %609 = or i1 %608, %607
  br i1 %609, label %649, label %610

610:                                              ; preds = %601
  %611 = and i32 %604, -4
  %612 = add nsw i32 %611, 4
  %613 = load i32, ptr %124, align 8, !tbaa !49
  %614 = icmp eq i32 %613, 0
  br i1 %614, label %615, label %648

615:                                              ; preds = %610
  %616 = load i32, ptr %409, align 8, !tbaa !51
  %617 = add nsw i32 %616, 24
  store i32 %617, ptr %409, align 8, !tbaa !51
  %618 = load i32, ptr %410, align 4, !tbaa !52
  %619 = icmp sgt i32 %618, 99975
  br i1 %619, label %620, label %637

620:                                              ; preds = %615
  %621 = load ptr, ptr %411, align 8, !tbaa !53
  %622 = icmp eq ptr %621, null
  %623 = select i1 %412, i1 true, i1 %622
  br i1 %623, label %636, label %624

624:                                              ; preds = %620
  %625 = load ptr, ptr %413, align 8, !tbaa !54
  %626 = icmp eq ptr %625, null
  br i1 %626, label %628, label %627

627:                                              ; preds = %624
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %625, ptr noundef nonnull %621, i32 noundef %618) #14
  br label %636

628:                                              ; preds = %624
  %629 = load ptr, ptr %414, align 8, !tbaa !55
  %630 = getelementptr inbounds %struct.WriteWrap, ptr %629, i64 0, i32 2
  %631 = load ptr, ptr %630, align 8, !tbaa !56
  %632 = zext nneg i32 %618 to i64
  %633 = call i64 %631(ptr noundef %629, ptr noundef nonnull %621, i64 noundef %632) #14
  %634 = icmp eq i64 %633, %632
  br i1 %634, label %636, label %635

635:                                              ; preds = %628
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %636

636:                                              ; preds = %635, %628, %627, %620
  store i32 0, ptr %410, align 4, !tbaa !52
  br label %637

637:                                              ; preds = %636, %615
  %638 = load ptr, ptr %415, align 8, !tbaa !53
  %639 = load i32, ptr %410, align 4, !tbaa !52
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds i8, ptr %638, i64 %640
  store i32 1096040772, ptr %641, align 1
  %642 = getelementptr inbounds i8, ptr %641, i64 4
  store i32 %612, ptr %642, align 1
  %643 = getelementptr inbounds i8, ptr %641, i64 8
  store ptr %606, ptr %643, align 1
  %644 = getelementptr inbounds i8, ptr %641, i64 16
  store i32 0, ptr %644, align 1
  %645 = getelementptr inbounds i8, ptr %641, i64 20
  store i32 1, ptr %645, align 1
  %646 = load i32, ptr %410, align 4, !tbaa !52
  %647 = add nsw i32 %646, 24
  store i32 %647, ptr %410, align 4, !tbaa !52
  br label %648

648:                                              ; preds = %610, %637
  call fastcc void @mywrite(ptr noundef %43, ptr noundef nonnull %606, i32 noundef %612)
  br label %649

649:                                              ; preds = %601, %648
  %650 = load ptr, ptr %602, align 8, !tbaa !43
  %651 = icmp eq ptr %650, null
  br i1 %651, label %652, label %601, !llvm.loop !197

652:                                              ; preds = %649, %597
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.41, i32 noundef 1, ptr noundef nonnull %503, ptr noundef nonnull %503)
  br label %655

653:                                              ; preds = %514
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.42, i32 noundef 1, ptr noundef nonnull %503, ptr noundef nonnull %503)
  br label %655

654:                                              ; preds = %514
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.43, i32 noundef 1, ptr noundef nonnull %503, ptr noundef nonnull %503)
  br label %655

655:                                              ; preds = %592, %569, %588, %654, %653, %652, %596, %587, %586, %582, %581, %579, %578, %564, %563, %562, %543, %542, %538, %537, %536, %529, %525, %514
  %656 = load ptr, ptr %503, align 8, !tbaa !43
  %657 = icmp eq ptr %656, null
  br i1 %657, label %445, label %502, !llvm.loop !198

658:                                              ; preds = %416, %404
  %659 = load ptr, ptr %16, align 8, !tbaa !43
  call void @BLI_linklist_freeN(ptr noundef %659) #14
  %660 = load i32, ptr %124, align 8, !tbaa !49
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %662, label %689

662:                                              ; preds = %658
  %663 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %664 = load i32, ptr %663, align 4, !tbaa !52
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %689, label %666

666:                                              ; preds = %662
  %667 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %668 = load ptr, ptr %667, align 8, !tbaa !53
  %669 = icmp eq ptr %43, null
  br i1 %669, label %688, label %670

670:                                              ; preds = %666
  %671 = icmp eq ptr %668, null
  %672 = icmp slt i32 %664, 1
  %673 = or i1 %672, %671
  br i1 %673, label %688, label %674

674:                                              ; preds = %670
  %675 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %676 = load ptr, ptr %675, align 8, !tbaa !54
  %677 = icmp eq ptr %676, null
  br i1 %677, label %679, label %678

678:                                              ; preds = %674
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %676, ptr noundef %668, i32 noundef %664) #14
  br label %688

679:                                              ; preds = %674
  %680 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %681 = load ptr, ptr %680, align 8, !tbaa !55
  %682 = getelementptr inbounds %struct.WriteWrap, ptr %681, i64 0, i32 2
  %683 = load ptr, ptr %682, align 8, !tbaa !56
  %684 = zext nneg i32 %664 to i64
  %685 = call i64 %683(ptr noundef %681, ptr noundef %668, i64 noundef %684) #14
  %686 = icmp eq i64 %685, %684
  br i1 %686, label %688, label %687

687:                                              ; preds = %679
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %688

688:                                              ; preds = %666, %670, %678, %679, %687
  store i32 0, ptr %663, align 4, !tbaa !52
  br label %689

689:                                              ; preds = %658, %662, %688
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #14
  %690 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 42
  %691 = load ptr, ptr %690, align 8, !tbaa !43
  %692 = icmp eq ptr %691, null
  br i1 %692, label %898, label %693

693:                                              ; preds = %689
  %694 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %695 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %696 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %697 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %698 = icmp eq ptr %43, null
  %699 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %700 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %701 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %702 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %703 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %704 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %705 = icmp eq ptr %43, null
  %706 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %707 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %708 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  br label %709

709:                                              ; preds = %693, %895
  %710 = phi ptr [ %691, %693 ], [ %896, %895 ]
  %711 = getelementptr inbounds %struct.ID, ptr %710, i64 0, i32 6
  %712 = load i32, ptr %711, align 4, !tbaa !199
  %713 = icmp sgt i32 %712, 0
  br i1 %713, label %717, label %714

714:                                              ; preds = %709
  %715 = load ptr, ptr %694, align 8, !tbaa !54
  %716 = icmp eq ptr %715, null
  br i1 %716, label %895, label %717

717:                                              ; preds = %714, %709
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 17229, ptr noundef nonnull @.str.54, i32 noundef 1, ptr noundef nonnull %710, ptr noundef nonnull %710)
  %718 = getelementptr inbounds %struct.ID, ptr %710, i64 0, i32 9
  %719 = load ptr, ptr %718, align 8, !tbaa !208
  %720 = icmp eq ptr %719, null
  br i1 %720, label %722, label %721

721:                                              ; preds = %717
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %719, ptr noundef nonnull %719)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %719, ptr noundef %43)
  br label %722

722:                                              ; preds = %721, %717
  %723 = getelementptr inbounds %struct.MovieClip, ptr %710, i64 0, i32 1
  %724 = load ptr, ptr %723, align 8, !tbaa !209
  %725 = icmp eq ptr %724, null
  br i1 %725, label %727, label %726

726:                                              ; preds = %722
  call fastcc void @write_animdata(ptr noundef %43, ptr noundef nonnull %724)
  br label %727

727:                                              ; preds = %726, %722
  %728 = getelementptr inbounds %struct.MovieClip, ptr %710, i64 0, i32 11, i32 2
  %729 = load ptr, ptr %728, align 8, !tbaa !43
  %730 = icmp eq ptr %729, null
  br i1 %730, label %742, label %731

731:                                              ; preds = %727, %739
  %732 = phi ptr [ %740, %739 ], [ %729, %727 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.67, i32 noundef 1, ptr noundef nonnull %732, ptr noundef nonnull %732)
  %733 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %732, i64 0, i32 10
  %734 = load ptr, ptr %733, align 8, !tbaa !210
  %735 = icmp eq ptr %734, null
  br i1 %735, label %739, label %736

736:                                              ; preds = %731
  %737 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %732, i64 0, i32 8
  %738 = load i32, ptr %737, align 8, !tbaa !212
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.68, i32 noundef %738, ptr noundef nonnull %734, ptr noundef nonnull %734)
  br label %739

739:                                              ; preds = %736, %731
  %740 = load ptr, ptr %732, align 8, !tbaa !43
  %741 = icmp eq ptr %740, null
  br i1 %741, label %742, label %731, !llvm.loop !213

742:                                              ; preds = %739, %727
  %743 = getelementptr inbounds %struct.MovieClip, ptr %710, i64 0, i32 11, i32 3
  %744 = load ptr, ptr %743, align 8, !tbaa !43
  %745 = icmp eq ptr %744, null
  br i1 %745, label %800, label %746

746:                                              ; preds = %742, %793
  %747 = phi ptr [ %798, %793 ], [ %744, %742 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.69, i32 noundef 1, ptr noundef nonnull %747, ptr noundef nonnull %747)
  %748 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %747, i64 0, i32 4
  %749 = load i32, ptr %748, align 8, !tbaa !214
  %750 = shl i32 %749, 3
  %751 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %747, i64 0, i32 3
  %752 = load ptr, ptr %751, align 8, !tbaa !216
  %753 = icmp eq ptr %752, null
  %754 = icmp eq i32 %750, 0
  %755 = or i1 %754, %753
  br i1 %755, label %793, label %756

756:                                              ; preds = %746
  %757 = load i32, ptr %124, align 8, !tbaa !49
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %759, label %792

759:                                              ; preds = %756
  %760 = load i32, ptr %695, align 8, !tbaa !51
  %761 = add nsw i32 %760, 24
  store i32 %761, ptr %695, align 8, !tbaa !51
  %762 = load i32, ptr %696, align 4, !tbaa !52
  %763 = icmp sgt i32 %762, 99975
  br i1 %763, label %764, label %781

764:                                              ; preds = %759
  %765 = load ptr, ptr %697, align 8, !tbaa !53
  %766 = icmp eq ptr %765, null
  %767 = select i1 %698, i1 true, i1 %766
  br i1 %767, label %780, label %768

768:                                              ; preds = %764
  %769 = load ptr, ptr %699, align 8, !tbaa !54
  %770 = icmp eq ptr %769, null
  br i1 %770, label %772, label %771

771:                                              ; preds = %768
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %769, ptr noundef nonnull %765, i32 noundef %762) #14
  br label %780

772:                                              ; preds = %768
  %773 = load ptr, ptr %700, align 8, !tbaa !55
  %774 = getelementptr inbounds %struct.WriteWrap, ptr %773, i64 0, i32 2
  %775 = load ptr, ptr %774, align 8, !tbaa !56
  %776 = zext nneg i32 %762 to i64
  %777 = call i64 %775(ptr noundef %773, ptr noundef nonnull %765, i64 noundef %776) #14
  %778 = icmp eq i64 %777, %776
  br i1 %778, label %780, label %779

779:                                              ; preds = %772
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %780

780:                                              ; preds = %779, %772, %771, %764
  store i32 0, ptr %696, align 4, !tbaa !52
  br label %781

781:                                              ; preds = %780, %759
  %782 = load ptr, ptr %701, align 8, !tbaa !53
  %783 = load i32, ptr %696, align 4, !tbaa !52
  %784 = sext i32 %783 to i64
  %785 = getelementptr inbounds i8, ptr %782, i64 %784
  store i32 1096040772, ptr %785, align 1
  %786 = getelementptr inbounds i8, ptr %785, i64 4
  store i32 %750, ptr %786, align 1
  %787 = getelementptr inbounds i8, ptr %785, i64 8
  store ptr %752, ptr %787, align 1
  %788 = getelementptr inbounds i8, ptr %785, i64 16
  store i32 0, ptr %788, align 1
  %789 = getelementptr inbounds i8, ptr %785, i64 20
  store i32 1, ptr %789, align 1
  %790 = load i32, ptr %696, align 4, !tbaa !52
  %791 = add nsw i32 %790, 24
  store i32 %791, ptr %696, align 4, !tbaa !52
  br label %792

792:                                              ; preds = %756, %781
  call fastcc void @mywrite(ptr noundef %43, ptr noundef nonnull %752, i32 noundef %750)
  br label %793

793:                                              ; preds = %746, %792
  %794 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %747, i64 0, i32 7
  %795 = load i32, ptr %794, align 8, !tbaa !217
  %796 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %747, i64 0, i32 6
  %797 = load ptr, ptr %796, align 8, !tbaa !218
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.70, i32 noundef %795, ptr noundef %797, ptr noundef %797)
  %798 = load ptr, ptr %747, align 8, !tbaa !43
  %799 = icmp eq ptr %798, null
  br i1 %799, label %800, label %746, !llvm.loop !219

800:                                              ; preds = %793, %742
  %801 = getelementptr inbounds %struct.MovieClip, ptr %710, i64 0, i32 11, i32 4, i32 3
  %802 = load i32, ptr %801, align 4, !tbaa !220
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %807, label %804

804:                                              ; preds = %800
  %805 = getelementptr inbounds %struct.MovieClip, ptr %710, i64 0, i32 11, i32 4, i32 4
  %806 = load ptr, ptr %805, align 8, !tbaa !221
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.71, i32 noundef %802, ptr noundef %806, ptr noundef %806)
  br label %807

807:                                              ; preds = %804, %800
  %808 = getelementptr inbounds %struct.MovieClip, ptr %710, i64 0, i32 11, i32 8
  %809 = load ptr, ptr %808, align 8, !tbaa !43
  %810 = icmp eq ptr %809, null
  br i1 %810, label %895, label %811

811:                                              ; preds = %807, %892
  %812 = phi ptr [ %893, %892 ], [ %809, %807 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.55, i32 noundef 1, ptr noundef nonnull %812, ptr noundef nonnull %812)
  %813 = getelementptr inbounds %struct.MovieTrackingObject, ptr %812, i64 0, i32 5
  %814 = load ptr, ptr %813, align 8, !tbaa !43
  %815 = icmp eq ptr %814, null
  br i1 %815, label %827, label %816

816:                                              ; preds = %811, %824
  %817 = phi ptr [ %825, %824 ], [ %814, %811 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.67, i32 noundef 1, ptr noundef nonnull %817, ptr noundef nonnull %817)
  %818 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %817, i64 0, i32 10
  %819 = load ptr, ptr %818, align 8, !tbaa !210
  %820 = icmp eq ptr %819, null
  br i1 %820, label %824, label %821

821:                                              ; preds = %816
  %822 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %817, i64 0, i32 8
  %823 = load i32, ptr %822, align 8, !tbaa !212
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.68, i32 noundef %823, ptr noundef nonnull %819, ptr noundef nonnull %819)
  br label %824

824:                                              ; preds = %821, %816
  %825 = load ptr, ptr %817, align 8, !tbaa !43
  %826 = icmp eq ptr %825, null
  br i1 %826, label %827, label %816, !llvm.loop !213

827:                                              ; preds = %824, %811
  %828 = getelementptr inbounds %struct.MovieTrackingObject, ptr %812, i64 0, i32 6
  %829 = load ptr, ptr %828, align 8, !tbaa !43
  %830 = icmp eq ptr %829, null
  br i1 %830, label %885, label %831

831:                                              ; preds = %827, %878
  %832 = phi ptr [ %883, %878 ], [ %829, %827 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.69, i32 noundef 1, ptr noundef nonnull %832, ptr noundef nonnull %832)
  %833 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %832, i64 0, i32 4
  %834 = load i32, ptr %833, align 8, !tbaa !214
  %835 = shl i32 %834, 3
  %836 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %832, i64 0, i32 3
  %837 = load ptr, ptr %836, align 8, !tbaa !216
  %838 = icmp eq ptr %837, null
  %839 = icmp eq i32 %835, 0
  %840 = or i1 %839, %838
  br i1 %840, label %878, label %841

841:                                              ; preds = %831
  %842 = load i32, ptr %124, align 8, !tbaa !49
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %844, label %877

844:                                              ; preds = %841
  %845 = load i32, ptr %702, align 8, !tbaa !51
  %846 = add nsw i32 %845, 24
  store i32 %846, ptr %702, align 8, !tbaa !51
  %847 = load i32, ptr %703, align 4, !tbaa !52
  %848 = icmp sgt i32 %847, 99975
  br i1 %848, label %849, label %866

849:                                              ; preds = %844
  %850 = load ptr, ptr %704, align 8, !tbaa !53
  %851 = icmp eq ptr %850, null
  %852 = select i1 %705, i1 true, i1 %851
  br i1 %852, label %865, label %853

853:                                              ; preds = %849
  %854 = load ptr, ptr %706, align 8, !tbaa !54
  %855 = icmp eq ptr %854, null
  br i1 %855, label %857, label %856

856:                                              ; preds = %853
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %854, ptr noundef nonnull %850, i32 noundef %847) #14
  br label %865

857:                                              ; preds = %853
  %858 = load ptr, ptr %707, align 8, !tbaa !55
  %859 = getelementptr inbounds %struct.WriteWrap, ptr %858, i64 0, i32 2
  %860 = load ptr, ptr %859, align 8, !tbaa !56
  %861 = zext nneg i32 %847 to i64
  %862 = call i64 %860(ptr noundef %858, ptr noundef nonnull %850, i64 noundef %861) #14
  %863 = icmp eq i64 %862, %861
  br i1 %863, label %865, label %864

864:                                              ; preds = %857
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %865

865:                                              ; preds = %864, %857, %856, %849
  store i32 0, ptr %703, align 4, !tbaa !52
  br label %866

866:                                              ; preds = %865, %844
  %867 = load ptr, ptr %708, align 8, !tbaa !53
  %868 = load i32, ptr %703, align 4, !tbaa !52
  %869 = sext i32 %868 to i64
  %870 = getelementptr inbounds i8, ptr %867, i64 %869
  store i32 1096040772, ptr %870, align 1
  %871 = getelementptr inbounds i8, ptr %870, i64 4
  store i32 %835, ptr %871, align 1
  %872 = getelementptr inbounds i8, ptr %870, i64 8
  store ptr %837, ptr %872, align 1
  %873 = getelementptr inbounds i8, ptr %870, i64 16
  store i32 0, ptr %873, align 1
  %874 = getelementptr inbounds i8, ptr %870, i64 20
  store i32 1, ptr %874, align 1
  %875 = load i32, ptr %703, align 4, !tbaa !52
  %876 = add nsw i32 %875, 24
  store i32 %876, ptr %703, align 4, !tbaa !52
  br label %877

877:                                              ; preds = %841, %866
  call fastcc void @mywrite(ptr noundef %43, ptr noundef nonnull %837, i32 noundef %835)
  br label %878

878:                                              ; preds = %831, %877
  %879 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %832, i64 0, i32 7
  %880 = load i32, ptr %879, align 8, !tbaa !217
  %881 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %832, i64 0, i32 6
  %882 = load ptr, ptr %881, align 8, !tbaa !218
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.70, i32 noundef %880, ptr noundef %882, ptr noundef %882)
  %883 = load ptr, ptr %832, align 8, !tbaa !43
  %884 = icmp eq ptr %883, null
  br i1 %884, label %885, label %831, !llvm.loop !219

885:                                              ; preds = %878, %827
  %886 = getelementptr inbounds %struct.MovieTrackingObject, ptr %812, i64 0, i32 7, i32 3
  %887 = load i32, ptr %886, align 4, !tbaa !220
  %888 = icmp eq i32 %887, 0
  br i1 %888, label %892, label %889

889:                                              ; preds = %885
  %890 = getelementptr inbounds %struct.MovieTrackingObject, ptr %812, i64 0, i32 7, i32 4
  %891 = load ptr, ptr %890, align 8, !tbaa !221
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.71, i32 noundef %887, ptr noundef %891, ptr noundef %891)
  br label %892

892:                                              ; preds = %889, %885
  %893 = load ptr, ptr %812, align 8, !tbaa !43
  %894 = icmp eq ptr %893, null
  br i1 %894, label %895, label %811, !llvm.loop !222

895:                                              ; preds = %892, %807, %714
  %896 = load ptr, ptr %710, align 8, !tbaa !43
  %897 = icmp eq ptr %896, null
  br i1 %897, label %898, label %709, !llvm.loop !223

898:                                              ; preds = %895, %689
  %899 = load i32, ptr %124, align 8, !tbaa !49
  %900 = icmp eq i32 %899, 0
  br i1 %900, label %901, label %928

901:                                              ; preds = %898
  %902 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %903 = load i32, ptr %902, align 4, !tbaa !52
  %904 = icmp eq i32 %903, 0
  br i1 %904, label %928, label %905

905:                                              ; preds = %901
  %906 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %907 = load ptr, ptr %906, align 8, !tbaa !53
  %908 = icmp eq ptr %43, null
  br i1 %908, label %927, label %909

909:                                              ; preds = %905
  %910 = icmp eq ptr %907, null
  %911 = icmp slt i32 %903, 1
  %912 = or i1 %911, %910
  br i1 %912, label %927, label %913

913:                                              ; preds = %909
  %914 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %915 = load ptr, ptr %914, align 8, !tbaa !54
  %916 = icmp eq ptr %915, null
  br i1 %916, label %918, label %917

917:                                              ; preds = %913
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %915, ptr noundef %907, i32 noundef %903) #14
  br label %927

918:                                              ; preds = %913
  %919 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %920 = load ptr, ptr %919, align 8, !tbaa !55
  %921 = getelementptr inbounds %struct.WriteWrap, ptr %920, i64 0, i32 2
  %922 = load ptr, ptr %921, align 8, !tbaa !56
  %923 = zext nneg i32 %903 to i64
  %924 = call i64 %922(ptr noundef %920, ptr noundef %907, i64 noundef %923) #14
  %925 = icmp eq i64 %924, %923
  br i1 %925, label %927, label %926

926:                                              ; preds = %918
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %927

927:                                              ; preds = %905, %909, %917, %918, %926
  store i32 0, ptr %902, align 4, !tbaa !52
  br label %928

928:                                              ; preds = %898, %901, %927
  %929 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 43
  %930 = load ptr, ptr %929, align 8, !tbaa !43
  %931 = icmp eq ptr %930, null
  br i1 %931, label %1050, label %932

932:                                              ; preds = %928
  %933 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %934 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %935 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %936 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %937 = icmp eq ptr %43, null
  %938 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %939 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %940 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  br label %941

941:                                              ; preds = %932, %1047
  %942 = phi ptr [ %930, %932 ], [ %1048, %1047 ]
  %943 = getelementptr inbounds %struct.ID, ptr %942, i64 0, i32 6
  %944 = load i32, ptr %943, align 4, !tbaa !224
  %945 = icmp sgt i32 %944, 0
  br i1 %945, label %949, label %946

946:                                              ; preds = %941
  %947 = load ptr, ptr %933, align 8, !tbaa !54
  %948 = icmp eq ptr %947, null
  br i1 %948, label %1047, label %949

949:                                              ; preds = %946, %941
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 21325, ptr noundef nonnull @.str.72, i32 noundef 1, ptr noundef nonnull %942, ptr noundef nonnull %942)
  %950 = getelementptr inbounds %struct.Mask, ptr %942, i64 0, i32 1
  %951 = load ptr, ptr %950, align 8, !tbaa !226
  %952 = icmp eq ptr %951, null
  br i1 %952, label %954, label %953

953:                                              ; preds = %949
  call fastcc void @write_animdata(ptr noundef %43, ptr noundef nonnull %951)
  br label %954

954:                                              ; preds = %953, %949
  %955 = getelementptr inbounds %struct.Mask, ptr %942, i64 0, i32 2
  %956 = load ptr, ptr %955, align 8, !tbaa !43
  %957 = icmp eq ptr %956, null
  br i1 %957, label %1047, label %961

958:                                              ; preds = %1044, %993
  %959 = load ptr, ptr %962, align 8, !tbaa !43
  %960 = icmp eq ptr %959, null
  br i1 %960, label %1047, label %961, !llvm.loop !227

961:                                              ; preds = %954, %958
  %962 = phi ptr [ %959, %958 ], [ %956, %954 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.73, i32 noundef 1, ptr noundef nonnull %962, ptr noundef nonnull %962)
  %963 = getelementptr inbounds %struct.MaskLayer, ptr %962, i64 0, i32 3
  %964 = load ptr, ptr %963, align 8, !tbaa !43
  %965 = icmp eq ptr %964, null
  br i1 %965, label %993, label %969

966:                                              ; preds = %988, %969
  %967 = load ptr, ptr %970, align 8, !tbaa !43
  %968 = icmp eq ptr %967, null
  br i1 %968, label %993, label %969, !llvm.loop !228

969:                                              ; preds = %961, %966
  %970 = phi ptr [ %967, %966 ], [ %964, %961 ]
  %971 = getelementptr inbounds %struct.MaskSpline, ptr %970, i64 0, i32 8
  %972 = load ptr, ptr %971, align 8, !tbaa !229
  store ptr null, ptr %971, align 8, !tbaa !229
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.74, i32 noundef 1, ptr noundef nonnull %970, ptr noundef nonnull %970)
  %973 = getelementptr inbounds %struct.MaskSpline, ptr %970, i64 0, i32 5
  %974 = load i32, ptr %973, align 4, !tbaa !232
  %975 = getelementptr inbounds %struct.MaskSpline, ptr %970, i64 0, i32 6
  %976 = load ptr, ptr %975, align 8, !tbaa !233
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.75, i32 noundef %974, ptr noundef %976, ptr noundef %976)
  store ptr %972, ptr %971, align 8, !tbaa !229
  %977 = load i32, ptr %973, align 4, !tbaa !232
  %978 = icmp sgt i32 %977, 0
  br i1 %978, label %979, label %966

979:                                              ; preds = %969, %988
  %980 = phi i64 [ %989, %988 ], [ 0, %969 ]
  %981 = load ptr, ptr %975, align 8, !tbaa !233
  %982 = getelementptr inbounds %struct.MaskSplinePoint, ptr %981, i64 %980, i32 2
  %983 = load i32, ptr %982, align 4, !tbaa !234
  %984 = icmp eq i32 %983, 0
  br i1 %984, label %988, label %985

985:                                              ; preds = %979
  %986 = getelementptr inbounds %struct.MaskSplinePoint, ptr %981, i64 %980, i32 3
  %987 = load ptr, ptr %986, align 8, !tbaa !237
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.76, i32 noundef %983, ptr noundef %987, ptr noundef %987)
  br label %988

988:                                              ; preds = %985, %979
  %989 = add nuw nsw i64 %980, 1
  %990 = load i32, ptr %973, align 4, !tbaa !232
  %991 = sext i32 %990 to i64
  %992 = icmp slt i64 %989, %991
  br i1 %992, label %979, label %966, !llvm.loop !238

993:                                              ; preds = %966, %961
  %994 = getelementptr inbounds %struct.MaskLayer, ptr %962, i64 0, i32 4
  %995 = load ptr, ptr %994, align 8, !tbaa !43
  %996 = icmp eq ptr %995, null
  br i1 %996, label %958, label %997

997:                                              ; preds = %993, %1044
  %998 = phi ptr [ %1045, %1044 ], [ %995, %993 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.77, i32 noundef 1, ptr noundef nonnull %998, ptr noundef nonnull %998)
  %999 = getelementptr inbounds %struct.MaskLayerShape, ptr %998, i64 0, i32 3
  %1000 = load i32, ptr %999, align 8, !tbaa !239
  %1001 = shl i32 %1000, 5
  %1002 = getelementptr inbounds %struct.MaskLayerShape, ptr %998, i64 0, i32 2
  %1003 = load ptr, ptr %1002, align 8, !tbaa !241
  %1004 = icmp eq ptr %1003, null
  %1005 = icmp eq i32 %1001, 0
  %1006 = or i1 %1005, %1004
  br i1 %1006, label %1044, label %1007

1007:                                             ; preds = %997
  %1008 = load i32, ptr %124, align 8, !tbaa !49
  %1009 = icmp eq i32 %1008, 0
  br i1 %1009, label %1010, label %1043

1010:                                             ; preds = %1007
  %1011 = load i32, ptr %934, align 8, !tbaa !51
  %1012 = add nsw i32 %1011, 24
  store i32 %1012, ptr %934, align 8, !tbaa !51
  %1013 = load i32, ptr %935, align 4, !tbaa !52
  %1014 = icmp sgt i32 %1013, 99975
  br i1 %1014, label %1015, label %1032

1015:                                             ; preds = %1010
  %1016 = load ptr, ptr %936, align 8, !tbaa !53
  %1017 = icmp eq ptr %1016, null
  %1018 = select i1 %937, i1 true, i1 %1017
  br i1 %1018, label %1031, label %1019

1019:                                             ; preds = %1015
  %1020 = load ptr, ptr %938, align 8, !tbaa !54
  %1021 = icmp eq ptr %1020, null
  br i1 %1021, label %1023, label %1022

1022:                                             ; preds = %1019
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %1020, ptr noundef nonnull %1016, i32 noundef %1013) #14
  br label %1031

1023:                                             ; preds = %1019
  %1024 = load ptr, ptr %939, align 8, !tbaa !55
  %1025 = getelementptr inbounds %struct.WriteWrap, ptr %1024, i64 0, i32 2
  %1026 = load ptr, ptr %1025, align 8, !tbaa !56
  %1027 = zext nneg i32 %1013 to i64
  %1028 = call i64 %1026(ptr noundef %1024, ptr noundef nonnull %1016, i64 noundef %1027) #14
  %1029 = icmp eq i64 %1028, %1027
  br i1 %1029, label %1031, label %1030

1030:                                             ; preds = %1023
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %1031

1031:                                             ; preds = %1030, %1023, %1022, %1015
  store i32 0, ptr %935, align 4, !tbaa !52
  br label %1032

1032:                                             ; preds = %1031, %1010
  %1033 = load ptr, ptr %940, align 8, !tbaa !53
  %1034 = load i32, ptr %935, align 4, !tbaa !52
  %1035 = sext i32 %1034 to i64
  %1036 = getelementptr inbounds i8, ptr %1033, i64 %1035
  store i32 1096040772, ptr %1036, align 1
  %1037 = getelementptr inbounds i8, ptr %1036, i64 4
  store i32 %1001, ptr %1037, align 1
  %1038 = getelementptr inbounds i8, ptr %1036, i64 8
  store ptr %1003, ptr %1038, align 1
  %1039 = getelementptr inbounds i8, ptr %1036, i64 16
  store i32 0, ptr %1039, align 1
  %1040 = getelementptr inbounds i8, ptr %1036, i64 20
  store i32 1, ptr %1040, align 1
  %1041 = load i32, ptr %935, align 4, !tbaa !52
  %1042 = add nsw i32 %1041, 24
  store i32 %1042, ptr %935, align 4, !tbaa !52
  br label %1043

1043:                                             ; preds = %1007, %1032
  call fastcc void @mywrite(ptr noundef %43, ptr noundef nonnull %1003, i32 noundef %1001)
  br label %1044

1044:                                             ; preds = %997, %1043
  %1045 = load ptr, ptr %998, align 8, !tbaa !43
  %1046 = icmp eq ptr %1045, null
  br i1 %1046, label %958, label %997, !llvm.loop !242

1047:                                             ; preds = %958, %954, %946
  %1048 = load ptr, ptr %942, align 8, !tbaa !43
  %1049 = icmp eq ptr %1048, null
  br i1 %1049, label %1050, label %941, !llvm.loop !243

1050:                                             ; preds = %1047, %928
  %1051 = load i32, ptr %124, align 8, !tbaa !49
  %1052 = icmp eq i32 %1051, 0
  br i1 %1052, label %1053, label %1080

1053:                                             ; preds = %1050
  %1054 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %1055 = load i32, ptr %1054, align 4, !tbaa !52
  %1056 = icmp eq i32 %1055, 0
  br i1 %1056, label %1080, label %1057

1057:                                             ; preds = %1053
  %1058 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %1059 = load ptr, ptr %1058, align 8, !tbaa !53
  %1060 = icmp eq ptr %43, null
  br i1 %1060, label %1079, label %1061

1061:                                             ; preds = %1057
  %1062 = icmp eq ptr %1059, null
  %1063 = icmp slt i32 %1055, 1
  %1064 = or i1 %1063, %1062
  br i1 %1064, label %1079, label %1065

1065:                                             ; preds = %1061
  %1066 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %1067 = load ptr, ptr %1066, align 8, !tbaa !54
  %1068 = icmp eq ptr %1067, null
  br i1 %1068, label %1070, label %1069

1069:                                             ; preds = %1065
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %1067, ptr noundef %1059, i32 noundef %1055) #14
  br label %1079

1070:                                             ; preds = %1065
  %1071 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %1072 = load ptr, ptr %1071, align 8, !tbaa !55
  %1073 = getelementptr inbounds %struct.WriteWrap, ptr %1072, i64 0, i32 2
  %1074 = load ptr, ptr %1073, align 8, !tbaa !56
  %1075 = zext nneg i32 %1055 to i64
  %1076 = call i64 %1074(ptr noundef %1072, ptr noundef %1059, i64 noundef %1075) #14
  %1077 = icmp eq i64 %1076, %1075
  br i1 %1077, label %1079, label %1078

1078:                                             ; preds = %1070
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %1079

1079:                                             ; preds = %1057, %1061, %1069, %1070, %1078
  store i32 0, ptr %1054, align 4, !tbaa !52
  br label %1080

1080:                                             ; preds = %1050, %1053, %1079
  %1081 = load ptr, ptr %184, align 8, !tbaa !43
  %1082 = icmp eq ptr %1081, null
  br i1 %1082, label %1584, label %1083

1083:                                             ; preds = %1080
  %1084 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %1085 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %1086 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %1087 = icmp eq ptr %43, null
  %1088 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %1089 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %1090 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %1091 = getelementptr inbounds %struct.SeqIterator, ptr %14, i64 0, i32 4
  %1092 = getelementptr inbounds %struct.SeqIterator, ptr %14, i64 0, i32 3
  %1093 = getelementptr inbounds %struct.SeqIterator, ptr %15, i64 0, i32 4
  %1094 = getelementptr inbounds %struct.SeqIterator, ptr %15, i64 0, i32 3
  %1095 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %1096 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %1097 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %1098 = icmp eq ptr %43, null
  %1099 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %1100 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %1101 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %1102 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %1103 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %1104 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %1105 = icmp eq ptr %43, null
  %1106 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %1107 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %1108 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %1109 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %1110 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %1111 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %1112 = icmp eq ptr %43, null
  %1113 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %1114 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %1115 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  br label %1116

1116:                                             ; preds = %1083, %1581
  %1117 = phi ptr [ %1081, %1083 ], [ %1582, %1581 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 17235, ptr noundef nonnull @.str.78, i32 noundef 1, ptr noundef nonnull %1117, ptr noundef nonnull %1117)
  %1118 = getelementptr inbounds %struct.ID, ptr %1117, i64 0, i32 9
  %1119 = load ptr, ptr %1118, align 8, !tbaa !244
  %1120 = icmp eq ptr %1119, null
  br i1 %1120, label %1122, label %1121

1121:                                             ; preds = %1116
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %1119, ptr noundef nonnull %1119)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %1119, ptr noundef %43)
  br label %1122

1122:                                             ; preds = %1121, %1116
  %1123 = getelementptr inbounds %struct.Scene, ptr %1117, i64 0, i32 1
  %1124 = load ptr, ptr %1123, align 8, !tbaa !245
  %1125 = icmp eq ptr %1124, null
  br i1 %1125, label %1127, label %1126

1126:                                             ; preds = %1122
  call fastcc void @write_animdata(ptr noundef %43, ptr noundef nonnull %1124)
  br label %1127

1127:                                             ; preds = %1126, %1122
  %1128 = getelementptr inbounds %struct.Scene, ptr %1117, i64 0, i32 35
  %1129 = load ptr, ptr %1128, align 8, !tbaa !43
  %1130 = icmp eq ptr %1129, null
  br i1 %1130, label %1190, label %1134

1131:                                             ; preds = %1187, %1134
  %1132 = load ptr, ptr %1135, align 8, !tbaa !43
  %1133 = icmp eq ptr %1132, null
  br i1 %1133, label %1190, label %1134, !llvm.loop !246

1134:                                             ; preds = %1127, %1131
  %1135 = phi ptr [ %1132, %1131 ], [ %1129, %1127 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.108, i32 noundef 1, ptr noundef nonnull %1135, ptr noundef nonnull %1135)
  %1136 = getelementptr inbounds %struct.KeyingSet, ptr %1135, i64 0, i32 2
  %1137 = load ptr, ptr %1136, align 8, !tbaa !43
  %1138 = icmp eq ptr %1137, null
  br i1 %1138, label %1131, label %1139

1139:                                             ; preds = %1134, %1187
  %1140 = phi ptr [ %1188, %1187 ], [ %1137, %1134 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.109, i32 noundef 1, ptr noundef nonnull %1140, ptr noundef nonnull %1140)
  %1141 = getelementptr inbounds %struct.KS_Path, ptr %1140, i64 0, i32 7
  %1142 = load ptr, ptr %1141, align 8, !tbaa !247
  %1143 = icmp eq ptr %1142, null
  br i1 %1143, label %1187, label %1144

1144:                                             ; preds = %1139
  %1145 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1142) #16
  %1146 = trunc i64 %1145 to i32
  %1147 = icmp eq i32 %1146, -1
  br i1 %1147, label %1187, label %1148

1148:                                             ; preds = %1144
  %1149 = and i32 %1146, -4
  %1150 = add i32 %1149, 4
  %1151 = load i32, ptr %124, align 8, !tbaa !49
  %1152 = icmp eq i32 %1151, 0
  br i1 %1152, label %1153, label %1186

1153:                                             ; preds = %1148
  %1154 = load i32, ptr %1084, align 8, !tbaa !51
  %1155 = add nsw i32 %1154, 24
  store i32 %1155, ptr %1084, align 8, !tbaa !51
  %1156 = load i32, ptr %1085, align 4, !tbaa !52
  %1157 = icmp sgt i32 %1156, 99975
  br i1 %1157, label %1158, label %1175

1158:                                             ; preds = %1153
  %1159 = load ptr, ptr %1086, align 8, !tbaa !53
  %1160 = icmp eq ptr %1159, null
  %1161 = select i1 %1087, i1 true, i1 %1160
  br i1 %1161, label %1174, label %1162

1162:                                             ; preds = %1158
  %1163 = load ptr, ptr %1088, align 8, !tbaa !54
  %1164 = icmp eq ptr %1163, null
  br i1 %1164, label %1166, label %1165

1165:                                             ; preds = %1162
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %1163, ptr noundef nonnull %1159, i32 noundef %1156) #14
  br label %1174

1166:                                             ; preds = %1162
  %1167 = load ptr, ptr %1089, align 8, !tbaa !55
  %1168 = getelementptr inbounds %struct.WriteWrap, ptr %1167, i64 0, i32 2
  %1169 = load ptr, ptr %1168, align 8, !tbaa !56
  %1170 = zext nneg i32 %1156 to i64
  %1171 = call i64 %1169(ptr noundef %1167, ptr noundef nonnull %1159, i64 noundef %1170) #14
  %1172 = icmp eq i64 %1171, %1170
  br i1 %1172, label %1174, label %1173

1173:                                             ; preds = %1166
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %1174

1174:                                             ; preds = %1173, %1166, %1165, %1158
  store i32 0, ptr %1085, align 4, !tbaa !52
  br label %1175

1175:                                             ; preds = %1174, %1153
  %1176 = load ptr, ptr %1090, align 8, !tbaa !53
  %1177 = load i32, ptr %1085, align 4, !tbaa !52
  %1178 = sext i32 %1177 to i64
  %1179 = getelementptr inbounds i8, ptr %1176, i64 %1178
  store i32 1096040772, ptr %1179, align 1
  %1180 = getelementptr inbounds i8, ptr %1179, i64 4
  store i32 %1150, ptr %1180, align 1
  %1181 = getelementptr inbounds i8, ptr %1179, i64 8
  store ptr %1142, ptr %1181, align 1
  %1182 = getelementptr inbounds i8, ptr %1179, i64 16
  store i32 0, ptr %1182, align 1
  %1183 = getelementptr inbounds i8, ptr %1179, i64 20
  store i32 1, ptr %1183, align 1
  %1184 = load i32, ptr %1085, align 4, !tbaa !52
  %1185 = add nsw i32 %1184, 24
  store i32 %1185, ptr %1085, align 4, !tbaa !52
  br label %1186

1186:                                             ; preds = %1148, %1175
  call fastcc void @mywrite(ptr noundef %43, ptr noundef nonnull %1142, i32 noundef %1150)
  br label %1187

1187:                                             ; preds = %1186, %1144, %1139
  %1188 = load ptr, ptr %1140, align 8, !tbaa !43
  %1189 = icmp eq ptr %1188, null
  br i1 %1189, label %1131, label %1139, !llvm.loop !249

1190:                                             ; preds = %1131, %1127
  %1191 = getelementptr inbounds %struct.Scene, ptr %1117, i64 0, i32 5
  %1192 = load ptr, ptr %1191, align 8, !tbaa !43
  %1193 = icmp eq ptr %1192, null
  br i1 %1193, label %1198, label %1194

1194:                                             ; preds = %1190, %1194
  %1195 = phi ptr [ %1196, %1194 ], [ %1192, %1190 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.79, i32 noundef 1, ptr noundef nonnull %1195, ptr noundef nonnull %1195)
  %1196 = load ptr, ptr %1195, align 8, !tbaa !43
  %1197 = icmp eq ptr %1196, null
  br i1 %1197, label %1198, label %1194, !llvm.loop !250

1198:                                             ; preds = %1194, %1190
  %1199 = getelementptr inbounds %struct.Scene, ptr %1117, i64 0, i32 20
  %1200 = load ptr, ptr %1199, align 8, !tbaa !251
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.80, i32 noundef 1, ptr noundef %1200, ptr noundef %1200)
  %1201 = load ptr, ptr %1200, align 8, !tbaa !252
  %1202 = icmp eq ptr %1201, null
  br i1 %1202, label %1204, label %1203

1203:                                             ; preds = %1198
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.81, i32 noundef 1, ptr noundef nonnull %1201, ptr noundef nonnull %1201)
  br label %1204

1204:                                             ; preds = %1203, %1198
  %1205 = getelementptr inbounds %struct.ToolSettings, ptr %1200, i64 0, i32 1
  %1206 = load ptr, ptr %1205, align 8, !tbaa !259
  %1207 = icmp eq ptr %1206, null
  br i1 %1207, label %1209, label %1208

1208:                                             ; preds = %1204
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.81, i32 noundef 1, ptr noundef nonnull %1206, ptr noundef nonnull %1206)
  br label %1209

1209:                                             ; preds = %1208, %1204
  %1210 = getelementptr inbounds %struct.ToolSettings, ptr %1200, i64 0, i32 2
  %1211 = load ptr, ptr %1210, align 8, !tbaa !260
  %1212 = icmp eq ptr %1211, null
  br i1 %1212, label %1214, label %1213

1213:                                             ; preds = %1209
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.82, i32 noundef 1, ptr noundef nonnull %1211, ptr noundef nonnull %1211)
  br label %1214

1214:                                             ; preds = %1213, %1209
  %1215 = getelementptr inbounds %struct.ToolSettings, ptr %1200, i64 0, i32 3
  %1216 = load ptr, ptr %1215, align 8, !tbaa !261
  %1217 = icmp eq ptr %1216, null
  br i1 %1217, label %1219, label %1218

1218:                                             ; preds = %1214
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.83, i32 noundef 1, ptr noundef nonnull %1216, ptr noundef nonnull %1216)
  br label %1219

1219:                                             ; preds = %1218, %1214
  %1220 = getelementptr inbounds %struct.Scene, ptr %1117, i64 0, i32 19
  %1221 = load ptr, ptr %1220, align 8, !tbaa !262
  %1222 = icmp eq ptr %1221, null
  br i1 %1222, label %1357, label %1223

1223:                                             ; preds = %1219
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.84, i32 noundef 1, ptr noundef nonnull %1221, ptr noundef nonnull %1221)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #14
  call void @BKE_sequence_iterator_begin(ptr noundef nonnull %1221, ptr noundef nonnull %14, i8 noundef zeroext 0) #14
  %1224 = load i32, ptr %1091, align 8, !tbaa !263
  %1225 = icmp eq i32 %1224, 0
  br i1 %1225, label %1236, label %1226

1226:                                             ; preds = %1223, %1233
  %1227 = load ptr, ptr %1092, align 8, !tbaa !265
  %1228 = getelementptr inbounds %struct.Sequence, ptr %1227, i64 0, i32 24
  %1229 = load ptr, ptr %1228, align 8, !tbaa !266
  %1230 = icmp eq ptr %1229, null
  br i1 %1230, label %1233, label %1231

1231:                                             ; preds = %1226
  %1232 = getelementptr inbounds %struct.Strip, ptr %1229, i64 0, i32 3
  store i32 0, ptr %1232, align 4, !tbaa !268
  br label %1233

1233:                                             ; preds = %1231, %1226
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.85, i32 noundef 1, ptr noundef %1227, ptr noundef %1227)
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %14) #14
  %1234 = load i32, ptr %1091, align 8, !tbaa !263
  %1235 = icmp eq i32 %1234, 0
  br i1 %1235, label %1236, label %1226, !llvm.loop !270

1236:                                             ; preds = %1233, %1223
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %14) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #14
  call void @BKE_sequence_iterator_begin(ptr noundef nonnull %1221, ptr noundef nonnull %15, i8 noundef zeroext 0) #14
  %1237 = load i32, ptr %1093, align 8, !tbaa !263
  %1238 = icmp eq i32 %1237, 0
  br i1 %1238, label %1349, label %1239

1239:                                             ; preds = %1236, %1346
  %1240 = load ptr, ptr %1094, align 8, !tbaa !265
  %1241 = getelementptr inbounds %struct.Sequence, ptr %1240, i64 0, i32 24
  %1242 = load ptr, ptr %1241, align 8, !tbaa !266
  %1243 = icmp eq ptr %1242, null
  br i1 %1243, label %1307, label %1244

1244:                                             ; preds = %1239
  %1245 = getelementptr inbounds %struct.Strip, ptr %1242, i64 0, i32 3
  %1246 = load i32, ptr %1245, align 4, !tbaa !268
  %1247 = icmp eq i32 %1246, 0
  br i1 %1247, label %1248, label %1307

1248:                                             ; preds = %1244
  %1249 = getelementptr inbounds %struct.Sequence, ptr %1240, i64 0, i32 43
  %1250 = load ptr, ptr %1249, align 8, !tbaa !271
  %1251 = icmp eq ptr %1250, null
  br i1 %1251, label %1262, label %1252

1252:                                             ; preds = %1248
  %1253 = getelementptr inbounds %struct.Sequence, ptr %1240, i64 0, i32 6
  %1254 = load i32, ptr %1253, align 4, !tbaa !272
  switch i32 %1254, label %1262 [
    i32 28, label %1260
    i32 29, label %1255
    i32 25, label %1256
    i32 26, label %1257
    i32 27, label %1258
    i32 40, label %1259
  ]

1255:                                             ; preds = %1252
  br label %1260

1256:                                             ; preds = %1252
  br label %1260

1257:                                             ; preds = %1252
  br label %1260

1258:                                             ; preds = %1252
  br label %1260

1259:                                             ; preds = %1252
  br label %1260

1260:                                             ; preds = %1252, %1255, %1256, %1257, %1258, %1259
  %1261 = phi ptr [ @.str.91, %1259 ], [ @.str.90, %1258 ], [ @.str.89, %1257 ], [ @.str.88, %1256 ], [ @.str.87, %1255 ], [ @.str.86, %1252 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull %1261, i32 noundef 1, ptr noundef nonnull %1250, ptr noundef nonnull %1250)
  br label %1262

1262:                                             ; preds = %1260, %1252, %1248
  %1263 = load ptr, ptr %1241, align 8, !tbaa !266
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.92, i32 noundef 1, ptr noundef %1263, ptr noundef %1263)
  %1264 = getelementptr inbounds %struct.Sequence, ptr %1240, i64 0, i32 5
  %1265 = load i32, ptr %1264, align 8, !tbaa !273
  %1266 = and i32 %1265, 131072
  %1267 = icmp eq i32 %1266, 0
  br i1 %1267, label %1273, label %1268

1268:                                             ; preds = %1262
  %1269 = getelementptr inbounds %struct.Strip, ptr %1263, i64 0, i32 9
  %1270 = load ptr, ptr %1269, align 8, !tbaa !274
  %1271 = icmp eq ptr %1270, null
  br i1 %1271, label %1273, label %1272

1272:                                             ; preds = %1268
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.93, i32 noundef 1, ptr noundef nonnull %1270, ptr noundef nonnull %1270)
  br label %1273

1273:                                             ; preds = %1272, %1268, %1262
  %1274 = load i32, ptr %1264, align 8, !tbaa !273
  %1275 = and i32 %1274, 65536
  %1276 = icmp eq i32 %1275, 0
  br i1 %1276, label %1282, label %1277

1277:                                             ; preds = %1273
  %1278 = getelementptr inbounds %struct.Strip, ptr %1263, i64 0, i32 10
  %1279 = load ptr, ptr %1278, align 8, !tbaa !275
  %1280 = icmp eq ptr %1279, null
  br i1 %1280, label %1282, label %1281

1281:                                             ; preds = %1277
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.94, i32 noundef 1, ptr noundef nonnull %1279, ptr noundef nonnull %1279)
  br label %1282

1282:                                             ; preds = %1281, %1277, %1273
  %1283 = load i32, ptr %1264, align 8, !tbaa !273
  %1284 = and i32 %1283, 32768
  %1285 = icmp eq i32 %1284, 0
  br i1 %1285, label %1291, label %1286

1286:                                             ; preds = %1282
  %1287 = getelementptr inbounds %struct.Strip, ptr %1263, i64 0, i32 8
  %1288 = load ptr, ptr %1287, align 8, !tbaa !276
  %1289 = icmp eq ptr %1288, null
  br i1 %1289, label %1291, label %1290

1290:                                             ; preds = %1286
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.95, i32 noundef 1, ptr noundef nonnull %1288, ptr noundef nonnull %1288)
  br label %1291

1291:                                             ; preds = %1290, %1286, %1282
  %1292 = getelementptr inbounds %struct.Sequence, ptr %1240, i64 0, i32 6
  %1293 = load i32, ptr %1292, align 4, !tbaa !272
  switch i32 %1293, label %1305 [
    i32 0, label %1294
    i32 3, label %1302
    i32 4, label %1302
    i32 5, label %1302
  ]

1294:                                             ; preds = %1291
  %1295 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !43
  %1296 = getelementptr inbounds %struct.Strip, ptr %1263, i64 0, i32 6
  %1297 = load ptr, ptr %1296, align 8, !tbaa !277
  %1298 = call i64 %1295(ptr noundef %1297) #14
  %1299 = udiv i64 %1298, 264
  %1300 = trunc i64 %1299 to i32
  %1301 = load ptr, ptr %1296, align 8, !tbaa !277
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.96, i32 noundef %1300, ptr noundef %1301, ptr noundef %1301)
  br label %1305

1302:                                             ; preds = %1291, %1291, %1291
  %1303 = getelementptr inbounds %struct.Strip, ptr %1263, i64 0, i32 6
  %1304 = load ptr, ptr %1303, align 8, !tbaa !277
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.96, i32 noundef 1, ptr noundef %1304, ptr noundef %1304)
  br label %1305

1305:                                             ; preds = %1302, %1294, %1291
  %1306 = getelementptr inbounds %struct.Strip, ptr %1263, i64 0, i32 3
  store i32 1, ptr %1306, align 4, !tbaa !268
  br label %1307

1307:                                             ; preds = %1305, %1244, %1239
  %1308 = getelementptr inbounds %struct.Sequence, ptr %1240, i64 0, i32 51
  %1309 = load ptr, ptr %1308, align 8, !tbaa !43
  %1310 = icmp eq ptr %1309, null
  br i1 %1310, label %1346, label %1311

1311:                                             ; preds = %1307, %1343
  %1312 = phi ptr [ %1344, %1343 ], [ %1309, %1307 ]
  %1313 = getelementptr inbounds %struct.SequenceModifierData, ptr %1312, i64 0, i32 2
  %1314 = load i32, ptr %1313, align 8, !tbaa !278
  %1315 = call ptr @BKE_sequence_modifier_type_info_get(i32 noundef %1314) #14
  %1316 = icmp eq ptr %1315, null
  br i1 %1316, label %1342, label %1317

1317:                                             ; preds = %1311
  %1318 = getelementptr inbounds %struct.SequenceModifierTypeInfo, ptr %1315, i64 0, i32 1
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull %1318, i32 noundef 1, ptr noundef nonnull %1312, ptr noundef nonnull %1312)
  %1319 = load i32, ptr %1313, align 8, !tbaa !278
  switch i32 %1319, label %1343 [
    i32 2, label %1320
    i32 3, label %1331
  ]

1320:                                             ; preds = %1317
  %1321 = getelementptr inbounds %struct.CurvesModifierData, ptr %1312, i64 0, i32 1
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.52, i32 noundef 1, ptr noundef nonnull %1321, ptr noundef nonnull %1321)
  br label %1322

1322:                                             ; preds = %1322, %1320
  %1323 = phi i64 [ 0, %1320 ], [ %1329, %1322 ]
  %1324 = getelementptr inbounds %struct.CurvesModifierData, ptr %1312, i64 0, i32 1, i32 6, i64 %1323
  %1325 = load i16, ptr %1324, align 8, !tbaa !185
  %1326 = sext i16 %1325 to i32
  %1327 = getelementptr inbounds %struct.CurvesModifierData, ptr %1312, i64 0, i32 1, i32 6, i64 %1323, i32 7
  %1328 = load ptr, ptr %1327, align 8, !tbaa !187
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.53, i32 noundef %1326, ptr noundef %1328, ptr noundef %1328)
  %1329 = add nuw nsw i64 %1323, 1
  %1330 = icmp eq i64 %1329, 4
  br i1 %1330, label %1343, label %1322, !llvm.loop !188

1331:                                             ; preds = %1317
  %1332 = getelementptr inbounds %struct.HueCorrectModifierData, ptr %1312, i64 0, i32 1
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.52, i32 noundef 1, ptr noundef nonnull %1332, ptr noundef nonnull %1332)
  br label %1333

1333:                                             ; preds = %1333, %1331
  %1334 = phi i64 [ 0, %1331 ], [ %1340, %1333 ]
  %1335 = getelementptr inbounds %struct.HueCorrectModifierData, ptr %1312, i64 0, i32 1, i32 6, i64 %1334
  %1336 = load i16, ptr %1335, align 8, !tbaa !185
  %1337 = sext i16 %1336 to i32
  %1338 = getelementptr inbounds %struct.HueCorrectModifierData, ptr %1312, i64 0, i32 1, i32 6, i64 %1334, i32 7
  %1339 = load ptr, ptr %1338, align 8, !tbaa !187
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.53, i32 noundef %1337, ptr noundef %1339, ptr noundef %1339)
  %1340 = add nuw nsw i64 %1334, 1
  %1341 = icmp eq i64 %1340, 4
  br i1 %1341, label %1343, label %1333, !llvm.loop !188

1342:                                             ; preds = %1311
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.110, i32 noundef 1, ptr noundef nonnull %1312, ptr noundef nonnull %1312)
  br label %1343

1343:                                             ; preds = %1333, %1322, %1342, %1317
  %1344 = load ptr, ptr %1312, align 8, !tbaa !43
  %1345 = icmp eq ptr %1344, null
  br i1 %1345, label %1346, label %1311, !llvm.loop !280

1346:                                             ; preds = %1343, %1307
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %15) #14
  %1347 = load i32, ptr %1093, align 8, !tbaa !263
  %1348 = icmp eq i32 %1347, 0
  br i1 %1348, label %1349, label %1239, !llvm.loop !281

1349:                                             ; preds = %1346, %1236
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %15) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #14
  %1350 = getelementptr inbounds %struct.Editing, ptr %1221, i64 0, i32 2
  %1351 = load ptr, ptr %1350, align 8, !tbaa !43
  %1352 = icmp eq ptr %1351, null
  br i1 %1352, label %1357, label %1353

1353:                                             ; preds = %1349, %1353
  %1354 = phi ptr [ %1355, %1353 ], [ %1351, %1349 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.97, i32 noundef 1, ptr noundef nonnull %1354, ptr noundef nonnull %1354)
  %1355 = load ptr, ptr %1354, align 8, !tbaa !43
  %1356 = icmp eq ptr %1355, null
  br i1 %1356, label %1357, label %1353, !llvm.loop !282

1357:                                             ; preds = %1353, %1349, %1219
  %1358 = getelementptr inbounds %struct.Scene, ptr %1117, i64 0, i32 22, i32 1
  %1359 = load ptr, ptr %1358, align 8, !tbaa !283
  %1360 = icmp eq ptr %1359, null
  br i1 %1360, label %1456, label %1361

1361:                                             ; preds = %1357
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.98, i32 noundef 1, ptr noundef nonnull %1359, ptr noundef nonnull %1359)
  %1362 = load ptr, ptr %1358, align 8, !tbaa !283
  %1363 = load ptr, ptr %1362, align 8, !tbaa !284
  %1364 = icmp eq ptr %1363, null
  br i1 %1364, label %1408, label %1365

1365:                                             ; preds = %1361
  %1366 = getelementptr inbounds %struct.AviCodecData, ptr %1362, i64 0, i32 2
  %1367 = load i32, ptr %1366, align 8, !tbaa !286
  %1368 = icmp eq i32 %1367, 0
  br i1 %1368, label %1408, label %1369

1369:                                             ; preds = %1365
  %1370 = add nsw i32 %1367, 3
  %1371 = and i32 %1370, -4
  %1372 = load i32, ptr %124, align 8, !tbaa !49
  %1373 = icmp eq i32 %1372, 0
  br i1 %1373, label %1374, label %1407

1374:                                             ; preds = %1369
  %1375 = load i32, ptr %1095, align 8, !tbaa !51
  %1376 = add nsw i32 %1375, 24
  store i32 %1376, ptr %1095, align 8, !tbaa !51
  %1377 = load i32, ptr %1096, align 4, !tbaa !52
  %1378 = icmp sgt i32 %1377, 99975
  br i1 %1378, label %1379, label %1396

1379:                                             ; preds = %1374
  %1380 = load ptr, ptr %1097, align 8, !tbaa !53
  %1381 = icmp eq ptr %1380, null
  %1382 = select i1 %1098, i1 true, i1 %1381
  br i1 %1382, label %1395, label %1383

1383:                                             ; preds = %1379
  %1384 = load ptr, ptr %1099, align 8, !tbaa !54
  %1385 = icmp eq ptr %1384, null
  br i1 %1385, label %1387, label %1386

1386:                                             ; preds = %1383
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %1384, ptr noundef nonnull %1380, i32 noundef %1377) #14
  br label %1395

1387:                                             ; preds = %1383
  %1388 = load ptr, ptr %1100, align 8, !tbaa !55
  %1389 = getelementptr inbounds %struct.WriteWrap, ptr %1388, i64 0, i32 2
  %1390 = load ptr, ptr %1389, align 8, !tbaa !56
  %1391 = zext nneg i32 %1377 to i64
  %1392 = call i64 %1390(ptr noundef %1388, ptr noundef nonnull %1380, i64 noundef %1391) #14
  %1393 = icmp eq i64 %1392, %1391
  br i1 %1393, label %1395, label %1394

1394:                                             ; preds = %1387
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %1395

1395:                                             ; preds = %1394, %1387, %1386, %1379
  store i32 0, ptr %1096, align 4, !tbaa !52
  br label %1396

1396:                                             ; preds = %1395, %1374
  %1397 = load ptr, ptr %1101, align 8, !tbaa !53
  %1398 = load i32, ptr %1096, align 4, !tbaa !52
  %1399 = sext i32 %1398 to i64
  %1400 = getelementptr inbounds i8, ptr %1397, i64 %1399
  store i32 1096040772, ptr %1400, align 1
  %1401 = getelementptr inbounds i8, ptr %1400, i64 4
  store i32 %1371, ptr %1401, align 1
  %1402 = getelementptr inbounds i8, ptr %1400, i64 8
  store ptr %1363, ptr %1402, align 1
  %1403 = getelementptr inbounds i8, ptr %1400, i64 16
  store i32 0, ptr %1403, align 1
  %1404 = getelementptr inbounds i8, ptr %1400, i64 20
  store i32 1, ptr %1404, align 1
  %1405 = load i32, ptr %1096, align 4, !tbaa !52
  %1406 = add nsw i32 %1405, 24
  store i32 %1406, ptr %1096, align 4, !tbaa !52
  br label %1407

1407:                                             ; preds = %1369, %1396
  call fastcc void @mywrite(ptr noundef %43, ptr noundef nonnull %1363, i32 noundef %1371)
  br label %1408

1408:                                             ; preds = %1407, %1365, %1361
  %1409 = load ptr, ptr %1358, align 8, !tbaa !283
  %1410 = getelementptr inbounds %struct.AviCodecData, ptr %1409, i64 0, i32 1
  %1411 = load ptr, ptr %1410, align 8, !tbaa !287
  %1412 = icmp eq ptr %1411, null
  br i1 %1412, label %1456, label %1413

1413:                                             ; preds = %1408
  %1414 = getelementptr inbounds %struct.AviCodecData, ptr %1409, i64 0, i32 3
  %1415 = load i32, ptr %1414, align 4, !tbaa !288
  %1416 = icmp eq i32 %1415, 0
  br i1 %1416, label %1456, label %1417

1417:                                             ; preds = %1413
  %1418 = add nsw i32 %1415, 3
  %1419 = and i32 %1418, -4
  %1420 = load i32, ptr %124, align 8, !tbaa !49
  %1421 = icmp eq i32 %1420, 0
  br i1 %1421, label %1422, label %1455

1422:                                             ; preds = %1417
  %1423 = load i32, ptr %1102, align 8, !tbaa !51
  %1424 = add nsw i32 %1423, 24
  store i32 %1424, ptr %1102, align 8, !tbaa !51
  %1425 = load i32, ptr %1103, align 4, !tbaa !52
  %1426 = icmp sgt i32 %1425, 99975
  br i1 %1426, label %1427, label %1444

1427:                                             ; preds = %1422
  %1428 = load ptr, ptr %1104, align 8, !tbaa !53
  %1429 = icmp eq ptr %1428, null
  %1430 = select i1 %1105, i1 true, i1 %1429
  br i1 %1430, label %1443, label %1431

1431:                                             ; preds = %1427
  %1432 = load ptr, ptr %1106, align 8, !tbaa !54
  %1433 = icmp eq ptr %1432, null
  br i1 %1433, label %1435, label %1434

1434:                                             ; preds = %1431
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %1432, ptr noundef nonnull %1428, i32 noundef %1425) #14
  br label %1443

1435:                                             ; preds = %1431
  %1436 = load ptr, ptr %1107, align 8, !tbaa !55
  %1437 = getelementptr inbounds %struct.WriteWrap, ptr %1436, i64 0, i32 2
  %1438 = load ptr, ptr %1437, align 8, !tbaa !56
  %1439 = zext nneg i32 %1425 to i64
  %1440 = call i64 %1438(ptr noundef %1436, ptr noundef nonnull %1428, i64 noundef %1439) #14
  %1441 = icmp eq i64 %1440, %1439
  br i1 %1441, label %1443, label %1442

1442:                                             ; preds = %1435
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %1443

1443:                                             ; preds = %1442, %1435, %1434, %1427
  store i32 0, ptr %1103, align 4, !tbaa !52
  br label %1444

1444:                                             ; preds = %1443, %1422
  %1445 = load ptr, ptr %1108, align 8, !tbaa !53
  %1446 = load i32, ptr %1103, align 4, !tbaa !52
  %1447 = sext i32 %1446 to i64
  %1448 = getelementptr inbounds i8, ptr %1445, i64 %1447
  store i32 1096040772, ptr %1448, align 1
  %1449 = getelementptr inbounds i8, ptr %1448, i64 4
  store i32 %1419, ptr %1449, align 1
  %1450 = getelementptr inbounds i8, ptr %1448, i64 8
  store ptr %1411, ptr %1450, align 1
  %1451 = getelementptr inbounds i8, ptr %1448, i64 16
  store i32 0, ptr %1451, align 1
  %1452 = getelementptr inbounds i8, ptr %1448, i64 20
  store i32 1, ptr %1452, align 1
  %1453 = load i32, ptr %1103, align 4, !tbaa !52
  %1454 = add nsw i32 %1453, 24
  store i32 %1454, ptr %1103, align 4, !tbaa !52
  br label %1455

1455:                                             ; preds = %1417, %1444
  call fastcc void @mywrite(ptr noundef %43, ptr noundef nonnull %1411, i32 noundef %1419)
  br label %1456

1456:                                             ; preds = %1455, %1413, %1408, %1357
  %1457 = getelementptr inbounds %struct.Scene, ptr %1117, i64 0, i32 22, i32 2
  %1458 = load ptr, ptr %1457, align 8, !tbaa !289
  %1459 = icmp eq ptr %1458, null
  br i1 %1459, label %1507, label %1460

1460:                                             ; preds = %1456
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.99, i32 noundef 1, ptr noundef nonnull %1458, ptr noundef nonnull %1458)
  %1461 = load ptr, ptr %1457, align 8, !tbaa !289
  %1462 = load ptr, ptr %1461, align 8, !tbaa !290
  %1463 = icmp eq ptr %1462, null
  br i1 %1463, label %1507, label %1464

1464:                                             ; preds = %1460
  %1465 = getelementptr inbounds %struct.QuicktimeCodecData, ptr %1461, i64 0, i32 2
  %1466 = load i32, ptr %1465, align 8, !tbaa !292
  %1467 = icmp eq i32 %1466, 0
  br i1 %1467, label %1507, label %1468

1468:                                             ; preds = %1464
  %1469 = add nsw i32 %1466, 3
  %1470 = and i32 %1469, -4
  %1471 = load i32, ptr %124, align 8, !tbaa !49
  %1472 = icmp eq i32 %1471, 0
  br i1 %1472, label %1473, label %1506

1473:                                             ; preds = %1468
  %1474 = load i32, ptr %1109, align 8, !tbaa !51
  %1475 = add nsw i32 %1474, 24
  store i32 %1475, ptr %1109, align 8, !tbaa !51
  %1476 = load i32, ptr %1110, align 4, !tbaa !52
  %1477 = icmp sgt i32 %1476, 99975
  br i1 %1477, label %1478, label %1495

1478:                                             ; preds = %1473
  %1479 = load ptr, ptr %1111, align 8, !tbaa !53
  %1480 = icmp eq ptr %1479, null
  %1481 = select i1 %1112, i1 true, i1 %1480
  br i1 %1481, label %1494, label %1482

1482:                                             ; preds = %1478
  %1483 = load ptr, ptr %1113, align 8, !tbaa !54
  %1484 = icmp eq ptr %1483, null
  br i1 %1484, label %1486, label %1485

1485:                                             ; preds = %1482
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %1483, ptr noundef nonnull %1479, i32 noundef %1476) #14
  br label %1494

1486:                                             ; preds = %1482
  %1487 = load ptr, ptr %1114, align 8, !tbaa !55
  %1488 = getelementptr inbounds %struct.WriteWrap, ptr %1487, i64 0, i32 2
  %1489 = load ptr, ptr %1488, align 8, !tbaa !56
  %1490 = zext nneg i32 %1476 to i64
  %1491 = call i64 %1489(ptr noundef %1487, ptr noundef nonnull %1479, i64 noundef %1490) #14
  %1492 = icmp eq i64 %1491, %1490
  br i1 %1492, label %1494, label %1493

1493:                                             ; preds = %1486
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %1494

1494:                                             ; preds = %1493, %1486, %1485, %1478
  store i32 0, ptr %1110, align 4, !tbaa !52
  br label %1495

1495:                                             ; preds = %1494, %1473
  %1496 = load ptr, ptr %1115, align 8, !tbaa !53
  %1497 = load i32, ptr %1110, align 4, !tbaa !52
  %1498 = sext i32 %1497 to i64
  %1499 = getelementptr inbounds i8, ptr %1496, i64 %1498
  store i32 1096040772, ptr %1499, align 1
  %1500 = getelementptr inbounds i8, ptr %1499, i64 4
  store i32 %1470, ptr %1500, align 1
  %1501 = getelementptr inbounds i8, ptr %1499, i64 8
  store ptr %1462, ptr %1501, align 1
  %1502 = getelementptr inbounds i8, ptr %1499, i64 16
  store i32 0, ptr %1502, align 1
  %1503 = getelementptr inbounds i8, ptr %1499, i64 20
  store i32 1, ptr %1503, align 1
  %1504 = load i32, ptr %1110, align 4, !tbaa !52
  %1505 = add nsw i32 %1504, 24
  store i32 %1505, ptr %1110, align 4, !tbaa !52
  br label %1506

1506:                                             ; preds = %1468, %1495
  call fastcc void @mywrite(ptr noundef %43, ptr noundef nonnull %1462, i32 noundef %1470)
  br label %1507

1507:                                             ; preds = %1506, %1464, %1460, %1456
  %1508 = getelementptr inbounds %struct.Scene, ptr %1117, i64 0, i32 22, i32 4, i32 16
  %1509 = load ptr, ptr %1508, align 8, !tbaa !293
  %1510 = icmp eq ptr %1509, null
  br i1 %1510, label %1512, label %1511

1511:                                             ; preds = %1507
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %1509, ptr noundef nonnull %1509)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %1509, ptr noundef %43)
  br label %1512

1512:                                             ; preds = %1511, %1507
  %1513 = getelementptr inbounds %struct.Scene, ptr %1117, i64 0, i32 24
  %1514 = load ptr, ptr %1513, align 8, !tbaa !43
  %1515 = icmp eq ptr %1514, null
  br i1 %1515, label %1520, label %1516

1516:                                             ; preds = %1512, %1516
  %1517 = phi ptr [ %1518, %1516 ], [ %1514, %1512 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.100, i32 noundef 1, ptr noundef nonnull %1517, ptr noundef nonnull %1517)
  %1518 = load ptr, ptr %1517, align 8, !tbaa !43
  %1519 = icmp eq ptr %1518, null
  br i1 %1519, label %1520, label %1516, !llvm.loop !294

1520:                                             ; preds = %1516, %1512
  %1521 = getelementptr inbounds %struct.Scene, ptr %1117, i64 0, i32 25
  %1522 = load ptr, ptr %1521, align 8, !tbaa !43
  %1523 = icmp eq ptr %1522, null
  br i1 %1523, label %1528, label %1524

1524:                                             ; preds = %1520, %1524
  %1525 = phi ptr [ %1526, %1524 ], [ %1522, %1520 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.101, i32 noundef 1, ptr noundef nonnull %1525, ptr noundef nonnull %1525)
  %1526 = load ptr, ptr %1525, align 8, !tbaa !43
  %1527 = icmp eq ptr %1526, null
  br i1 %1527, label %1528, label %1524, !llvm.loop !295

1528:                                             ; preds = %1524, %1520
  %1529 = getelementptr inbounds %struct.Scene, ptr %1117, i64 0, i32 22, i32 60
  %1530 = load ptr, ptr %1529, align 8, !tbaa !43
  %1531 = icmp eq ptr %1530, null
  br i1 %1531, label %1552, label %1535

1532:                                             ; preds = %1548, %1544
  %1533 = load ptr, ptr %1536, align 8, !tbaa !43
  %1534 = icmp eq ptr %1533, null
  br i1 %1534, label %1552, label %1535, !llvm.loop !296

1535:                                             ; preds = %1528, %1532
  %1536 = phi ptr [ %1533, %1532 ], [ %1530, %1528 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.102, i32 noundef 1, ptr noundef nonnull %1536, ptr noundef nonnull %1536)
  %1537 = getelementptr inbounds %struct.SceneRenderLayer, ptr %1536, i64 0, i32 13
  %1538 = load ptr, ptr %1537, align 8, !tbaa !43
  %1539 = icmp eq ptr %1538, null
  br i1 %1539, label %1544, label %1540

1540:                                             ; preds = %1535, %1540
  %1541 = phi ptr [ %1542, %1540 ], [ %1538, %1535 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.103, i32 noundef 1, ptr noundef nonnull %1541, ptr noundef nonnull %1541)
  %1542 = load ptr, ptr %1541, align 8, !tbaa !43
  %1543 = icmp eq ptr %1542, null
  br i1 %1543, label %1544, label %1540, !llvm.loop !297

1544:                                             ; preds = %1540, %1535
  %1545 = getelementptr inbounds %struct.SceneRenderLayer, ptr %1536, i64 0, i32 13, i32 7
  %1546 = load ptr, ptr %1545, align 8, !tbaa !43
  %1547 = icmp eq ptr %1546, null
  br i1 %1547, label %1532, label %1548

1548:                                             ; preds = %1544, %1548
  %1549 = phi ptr [ %1550, %1548 ], [ %1546, %1544 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.104, i32 noundef 1, ptr noundef nonnull %1549, ptr noundef nonnull %1549)
  %1550 = load ptr, ptr %1549, align 8, !tbaa !43
  %1551 = icmp eq ptr %1550, null
  br i1 %1551, label %1532, label %1548, !llvm.loop !298

1552:                                             ; preds = %1532, %1528
  %1553 = getelementptr inbounds %struct.Scene, ptr %1117, i64 0, i32 18
  %1554 = load ptr, ptr %1553, align 8, !tbaa !299
  %1555 = icmp eq ptr %1554, null
  br i1 %1555, label %1558, label %1556

1556:                                             ; preds = %1552
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.105, i32 noundef 1, ptr noundef nonnull %1554, ptr noundef nonnull %1554)
  %1557 = load ptr, ptr %1553, align 8, !tbaa !299
  call fastcc void @write_nodetree(ptr noundef %43, ptr noundef %1557)
  br label %1558

1558:                                             ; preds = %1556, %1552
  %1559 = getelementptr inbounds %struct.Scene, ptr %1117, i64 0, i32 44, i32 6
  %1560 = load ptr, ptr %1559, align 8, !tbaa !300
  %1561 = icmp eq ptr %1560, null
  br i1 %1561, label %1572, label %1562

1562:                                             ; preds = %1558
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.52, i32 noundef 1, ptr noundef nonnull %1560, ptr noundef nonnull %1560)
  br label %1563

1563:                                             ; preds = %1563, %1562
  %1564 = phi i64 [ 0, %1562 ], [ %1570, %1563 ]
  %1565 = getelementptr inbounds %struct.CurveMapping, ptr %1560, i64 0, i32 6, i64 %1564
  %1566 = load i16, ptr %1565, align 8, !tbaa !185
  %1567 = sext i16 %1566 to i32
  %1568 = getelementptr inbounds %struct.CurveMapping, ptr %1560, i64 0, i32 6, i64 %1564, i32 7
  %1569 = load ptr, ptr %1568, align 8, !tbaa !187
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.53, i32 noundef %1567, ptr noundef %1569, ptr noundef %1569)
  %1570 = add nuw nsw i64 %1564, 1
  %1571 = icmp eq i64 %1570, 4
  br i1 %1571, label %1572, label %1563, !llvm.loop !188

1572:                                             ; preds = %1563, %1558
  %1573 = getelementptr inbounds %struct.Scene, ptr %1117, i64 0, i32 47
  %1574 = load ptr, ptr %1573, align 8, !tbaa !301
  %1575 = icmp eq ptr %1574, null
  br i1 %1575, label %1581, label %1576

1576:                                             ; preds = %1572
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.106, i32 noundef 1, ptr noundef nonnull %1574, ptr noundef nonnull %1574)
  %1577 = load ptr, ptr %1573, align 8, !tbaa !301
  %1578 = load ptr, ptr %1577, align 8, !tbaa !302
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.107, i32 noundef 1, ptr noundef %1578, ptr noundef %1578)
  %1579 = load ptr, ptr %1573, align 8, !tbaa !301
  %1580 = getelementptr inbounds %struct.RigidBodyWorld, ptr %1579, i64 0, i32 7
  call fastcc void @write_pointcaches(ptr noundef %43, ptr noundef nonnull %1580)
  br label %1581

1581:                                             ; preds = %1576, %1572
  %1582 = load ptr, ptr %1117, align 8, !tbaa !43
  %1583 = icmp eq ptr %1582, null
  br i1 %1583, label %1584, label %1116, !llvm.loop !304

1584:                                             ; preds = %1581, %1080
  %1585 = load i32, ptr %124, align 8, !tbaa !49
  %1586 = icmp eq i32 %1585, 0
  br i1 %1586, label %1587, label %1614

1587:                                             ; preds = %1584
  %1588 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %1589 = load i32, ptr %1588, align 4, !tbaa !52
  %1590 = icmp eq i32 %1589, 0
  br i1 %1590, label %1614, label %1591

1591:                                             ; preds = %1587
  %1592 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %1593 = load ptr, ptr %1592, align 8, !tbaa !53
  %1594 = icmp eq ptr %43, null
  br i1 %1594, label %1613, label %1595

1595:                                             ; preds = %1591
  %1596 = icmp eq ptr %1593, null
  %1597 = icmp slt i32 %1589, 1
  %1598 = or i1 %1597, %1596
  br i1 %1598, label %1613, label %1599

1599:                                             ; preds = %1595
  %1600 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %1601 = load ptr, ptr %1600, align 8, !tbaa !54
  %1602 = icmp eq ptr %1601, null
  br i1 %1602, label %1604, label %1603

1603:                                             ; preds = %1599
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %1601, ptr noundef %1593, i32 noundef %1589) #14
  br label %1613

1604:                                             ; preds = %1599
  %1605 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %1606 = load ptr, ptr %1605, align 8, !tbaa !55
  %1607 = getelementptr inbounds %struct.WriteWrap, ptr %1606, i64 0, i32 2
  %1608 = load ptr, ptr %1607, align 8, !tbaa !56
  %1609 = zext nneg i32 %1589 to i64
  %1610 = call i64 %1608(ptr noundef %1606, ptr noundef %1593, i64 noundef %1609) #14
  %1611 = icmp eq i64 %1610, %1609
  br i1 %1611, label %1613, label %1612

1612:                                             ; preds = %1604
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %1613

1613:                                             ; preds = %1591, %1595, %1603, %1604, %1612
  store i32 0, ptr %1588, align 4, !tbaa !52
  br label %1614

1614:                                             ; preds = %1584, %1587, %1613
  %1615 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 15
  %1616 = load ptr, ptr %1615, align 8, !tbaa !43
  %1617 = icmp eq ptr %1616, null
  br i1 %1617, label %1918, label %1618

1618:                                             ; preds = %1614
  %1619 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %1620 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %1621 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %1622 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %1623 = icmp eq ptr %43, null
  %1624 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %1625 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %1626 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %1627 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %1628 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %1629 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %1630 = icmp eq ptr %43, null
  %1631 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %1632 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %1633 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %1634 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %1635 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %1636 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %1637 = icmp eq ptr %43, null
  %1638 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %1639 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %1640 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %1641 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %1642 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %1643 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %1644 = icmp eq ptr %43, null
  %1645 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %1646 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %1647 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  br label %1648

1648:                                             ; preds = %1618, %1915
  %1649 = phi ptr [ %1616, %1618 ], [ %1916, %1915 ]
  %1650 = getelementptr inbounds %struct.ID, ptr %1649, i64 0, i32 6
  %1651 = load i32, ptr %1650, align 4, !tbaa !305
  %1652 = icmp sgt i32 %1651, 0
  br i1 %1652, label %1656, label %1653

1653:                                             ; preds = %1648
  %1654 = load ptr, ptr %1619, align 8, !tbaa !54
  %1655 = icmp eq ptr %1654, null
  br i1 %1655, label %1915, label %1656

1656:                                             ; preds = %1653, %1648
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 21827, ptr noundef nonnull @.str.122, i32 noundef 1, ptr noundef nonnull %1649, ptr noundef nonnull %1649)
  %1657 = getelementptr inbounds %struct.Curve, ptr %1649, i64 0, i32 22
  %1658 = load i16, ptr %1657, align 2, !tbaa !308
  %1659 = getelementptr inbounds %struct.Curve, ptr %1649, i64 0, i32 10
  %1660 = load ptr, ptr %1659, align 8, !tbaa !309
  %1661 = icmp eq ptr %1660, null
  %1662 = icmp eq i16 %1658, 0
  %1663 = or i1 %1662, %1661
  br i1 %1663, label %1703, label %1664

1664:                                             ; preds = %1656
  %1665 = sext i16 %1658 to i32
  %1666 = shl nsw i32 %1665, 3
  %1667 = load i32, ptr %124, align 8, !tbaa !49
  %1668 = icmp eq i32 %1667, 0
  br i1 %1668, label %1669, label %1702

1669:                                             ; preds = %1664
  %1670 = load i32, ptr %1620, align 8, !tbaa !51
  %1671 = add nsw i32 %1670, 24
  store i32 %1671, ptr %1620, align 8, !tbaa !51
  %1672 = load i32, ptr %1621, align 4, !tbaa !52
  %1673 = icmp sgt i32 %1672, 99975
  br i1 %1673, label %1674, label %1691

1674:                                             ; preds = %1669
  %1675 = load ptr, ptr %1622, align 8, !tbaa !53
  %1676 = icmp eq ptr %1675, null
  %1677 = select i1 %1623, i1 true, i1 %1676
  br i1 %1677, label %1690, label %1678

1678:                                             ; preds = %1674
  %1679 = load ptr, ptr %1624, align 8, !tbaa !54
  %1680 = icmp eq ptr %1679, null
  br i1 %1680, label %1682, label %1681

1681:                                             ; preds = %1678
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %1679, ptr noundef nonnull %1675, i32 noundef %1672) #14
  br label %1690

1682:                                             ; preds = %1678
  %1683 = load ptr, ptr %1625, align 8, !tbaa !55
  %1684 = getelementptr inbounds %struct.WriteWrap, ptr %1683, i64 0, i32 2
  %1685 = load ptr, ptr %1684, align 8, !tbaa !56
  %1686 = zext nneg i32 %1672 to i64
  %1687 = call i64 %1685(ptr noundef %1683, ptr noundef nonnull %1675, i64 noundef %1686) #14
  %1688 = icmp eq i64 %1687, %1686
  br i1 %1688, label %1690, label %1689

1689:                                             ; preds = %1682
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %1690

1690:                                             ; preds = %1689, %1682, %1681, %1674
  store i32 0, ptr %1621, align 4, !tbaa !52
  br label %1691

1691:                                             ; preds = %1690, %1669
  %1692 = load ptr, ptr %1626, align 8, !tbaa !53
  %1693 = load i32, ptr %1621, align 4, !tbaa !52
  %1694 = sext i32 %1693 to i64
  %1695 = getelementptr inbounds i8, ptr %1692, i64 %1694
  store i32 1096040772, ptr %1695, align 1
  %1696 = getelementptr inbounds i8, ptr %1695, i64 4
  store i32 %1666, ptr %1696, align 1
  %1697 = getelementptr inbounds i8, ptr %1695, i64 8
  store ptr %1660, ptr %1697, align 1
  %1698 = getelementptr inbounds i8, ptr %1695, i64 16
  store i32 0, ptr %1698, align 1
  %1699 = getelementptr inbounds i8, ptr %1695, i64 20
  store i32 1, ptr %1699, align 1
  %1700 = load i32, ptr %1621, align 4, !tbaa !52
  %1701 = add nsw i32 %1700, 24
  store i32 %1701, ptr %1621, align 4, !tbaa !52
  br label %1702

1702:                                             ; preds = %1664, %1691
  call fastcc void @mywrite(ptr noundef %43, ptr noundef nonnull %1660, i32 noundef %1666)
  br label %1703

1703:                                             ; preds = %1656, %1702
  %1704 = getelementptr inbounds %struct.ID, ptr %1649, i64 0, i32 9
  %1705 = load ptr, ptr %1704, align 8, !tbaa !310
  %1706 = icmp eq ptr %1705, null
  br i1 %1706, label %1708, label %1707

1707:                                             ; preds = %1703
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %1705, ptr noundef nonnull %1705)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %1705, ptr noundef %43)
  br label %1708

1708:                                             ; preds = %1707, %1703
  %1709 = getelementptr inbounds %struct.Curve, ptr %1649, i64 0, i32 1
  %1710 = load ptr, ptr %1709, align 8, !tbaa !311
  %1711 = icmp eq ptr %1710, null
  br i1 %1711, label %1713, label %1712

1712:                                             ; preds = %1708
  call fastcc void @write_animdata(ptr noundef %43, ptr noundef nonnull %1710)
  br label %1713

1713:                                             ; preds = %1712, %1708
  %1714 = getelementptr inbounds %struct.Curve, ptr %1649, i64 0, i32 55
  %1715 = load ptr, ptr %1714, align 8, !tbaa !312
  %1716 = icmp eq ptr %1715, null
  br i1 %1716, label %1774, label %1717

1717:                                             ; preds = %1713
  %1718 = getelementptr inbounds %struct.Curve, ptr %1649, i64 0, i32 51
  %1719 = load i32, ptr %1718, align 4, !tbaa !313
  %1720 = getelementptr inbounds %struct.Curve, ptr %1649, i64 0, i32 52
  %1721 = load ptr, ptr %1720, align 8, !tbaa !314
  %1722 = icmp eq ptr %1721, null
  %1723 = icmp eq i32 %1719, -1
  %1724 = or i1 %1723, %1722
  br i1 %1724, label %1764, label %1725

1725:                                             ; preds = %1717
  %1726 = and i32 %1719, -4
  %1727 = add nsw i32 %1726, 4
  %1728 = load i32, ptr %124, align 8, !tbaa !49
  %1729 = icmp eq i32 %1728, 0
  br i1 %1729, label %1730, label %1763

1730:                                             ; preds = %1725
  %1731 = load i32, ptr %1627, align 8, !tbaa !51
  %1732 = add nsw i32 %1731, 24
  store i32 %1732, ptr %1627, align 8, !tbaa !51
  %1733 = load i32, ptr %1628, align 4, !tbaa !52
  %1734 = icmp sgt i32 %1733, 99975
  br i1 %1734, label %1735, label %1752

1735:                                             ; preds = %1730
  %1736 = load ptr, ptr %1629, align 8, !tbaa !53
  %1737 = icmp eq ptr %1736, null
  %1738 = select i1 %1630, i1 true, i1 %1737
  br i1 %1738, label %1751, label %1739

1739:                                             ; preds = %1735
  %1740 = load ptr, ptr %1631, align 8, !tbaa !54
  %1741 = icmp eq ptr %1740, null
  br i1 %1741, label %1743, label %1742

1742:                                             ; preds = %1739
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %1740, ptr noundef nonnull %1736, i32 noundef %1733) #14
  br label %1751

1743:                                             ; preds = %1739
  %1744 = load ptr, ptr %1632, align 8, !tbaa !55
  %1745 = getelementptr inbounds %struct.WriteWrap, ptr %1744, i64 0, i32 2
  %1746 = load ptr, ptr %1745, align 8, !tbaa !56
  %1747 = zext nneg i32 %1733 to i64
  %1748 = call i64 %1746(ptr noundef %1744, ptr noundef nonnull %1736, i64 noundef %1747) #14
  %1749 = icmp eq i64 %1748, %1747
  br i1 %1749, label %1751, label %1750

1750:                                             ; preds = %1743
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %1751

1751:                                             ; preds = %1750, %1743, %1742, %1735
  store i32 0, ptr %1628, align 4, !tbaa !52
  br label %1752

1752:                                             ; preds = %1751, %1730
  %1753 = load ptr, ptr %1633, align 8, !tbaa !53
  %1754 = load i32, ptr %1628, align 4, !tbaa !52
  %1755 = sext i32 %1754 to i64
  %1756 = getelementptr inbounds i8, ptr %1753, i64 %1755
  store i32 1096040772, ptr %1756, align 1
  %1757 = getelementptr inbounds i8, ptr %1756, i64 4
  store i32 %1727, ptr %1757, align 1
  %1758 = getelementptr inbounds i8, ptr %1756, i64 8
  store ptr %1721, ptr %1758, align 1
  %1759 = getelementptr inbounds i8, ptr %1756, i64 16
  store i32 0, ptr %1759, align 1
  %1760 = getelementptr inbounds i8, ptr %1756, i64 20
  store i32 1, ptr %1760, align 1
  %1761 = load i32, ptr %1628, align 4, !tbaa !52
  %1762 = add nsw i32 %1761, 24
  store i32 %1762, ptr %1628, align 4, !tbaa !52
  br label %1763

1763:                                             ; preds = %1725, %1752
  call fastcc void @mywrite(ptr noundef %43, ptr noundef nonnull %1721, i32 noundef %1727)
  br label %1764

1764:                                             ; preds = %1717, %1763
  %1765 = getelementptr inbounds %struct.Curve, ptr %1649, i64 0, i32 50
  %1766 = load i32, ptr %1765, align 8, !tbaa !315
  %1767 = add nsw i32 %1766, 1
  %1768 = getelementptr inbounds %struct.Curve, ptr %1649, i64 0, i32 62
  %1769 = load ptr, ptr %1768, align 8, !tbaa !316
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.123, i32 noundef %1767, ptr noundef %1769, ptr noundef %1769)
  %1770 = getelementptr inbounds %struct.Curve, ptr %1649, i64 0, i32 60
  %1771 = load i32, ptr %1770, align 8, !tbaa !317
  %1772 = getelementptr inbounds %struct.Curve, ptr %1649, i64 0, i32 59
  %1773 = load ptr, ptr %1772, align 8, !tbaa !318
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.124, i32 noundef %1771, ptr noundef %1773, ptr noundef %1773)
  br label %1915

1774:                                             ; preds = %1713
  %1775 = getelementptr inbounds %struct.Curve, ptr %1649, i64 0, i32 3
  %1776 = load ptr, ptr %1775, align 8, !tbaa !43
  %1777 = icmp eq ptr %1776, null
  br i1 %1777, label %1778, label %1781

1778:                                             ; preds = %1781, %1774
  %1779 = load ptr, ptr %1775, align 8, !tbaa !43
  %1780 = icmp eq ptr %1779, null
  br i1 %1780, label %1915, label %1785

1781:                                             ; preds = %1774, %1781
  %1782 = phi ptr [ %1783, %1781 ], [ %1776, %1774 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.125, i32 noundef 1, ptr noundef nonnull %1782, ptr noundef nonnull %1782)
  %1783 = load ptr, ptr %1782, align 8, !tbaa !43
  %1784 = icmp eq ptr %1783, null
  br i1 %1784, label %1778, label %1781, !llvm.loop !319

1785:                                             ; preds = %1778, %1912
  %1786 = phi ptr [ %1913, %1912 ], [ %1779, %1778 ]
  %1787 = getelementptr inbounds %struct.Nurb, ptr %1786, i64 0, i32 2
  %1788 = load i16, ptr %1787, align 8, !tbaa !320
  %1789 = icmp eq i16 %1788, 1
  %1790 = getelementptr inbounds %struct.Nurb, ptr %1786, i64 0, i32 6
  %1791 = load i32, ptr %1790, align 8, !tbaa !322
  br i1 %1789, label %1792, label %1795

1792:                                             ; preds = %1785
  %1793 = getelementptr inbounds %struct.Nurb, ptr %1786, i64 0, i32 18
  %1794 = load ptr, ptr %1793, align 8, !tbaa !323
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.59, i32 noundef %1791, ptr noundef %1794, ptr noundef %1794)
  br label %1912

1795:                                             ; preds = %1785
  %1796 = getelementptr inbounds %struct.Nurb, ptr %1786, i64 0, i32 7
  %1797 = load i32, ptr %1796, align 4, !tbaa !324
  %1798 = mul nsw i32 %1797, %1791
  %1799 = getelementptr inbounds %struct.Nurb, ptr %1786, i64 0, i32 17
  %1800 = load ptr, ptr %1799, align 8, !tbaa !325
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.126, i32 noundef %1798, ptr noundef %1800, ptr noundef %1800)
  %1801 = getelementptr inbounds %struct.Nurb, ptr %1786, i64 0, i32 15
  %1802 = load ptr, ptr %1801, align 8, !tbaa !326
  %1803 = icmp eq ptr %1802, null
  br i1 %1803, label %1856, label %1804

1804:                                             ; preds = %1795
  %1805 = getelementptr inbounds %struct.Nurb, ptr %1786, i64 0, i32 11
  %1806 = load i16, ptr %1805, align 8, !tbaa !327
  %1807 = sext i16 %1806 to i32
  %1808 = load i32, ptr %1790, align 8, !tbaa !322
  %1809 = add nsw i32 %1808, %1807
  %1810 = getelementptr inbounds %struct.Nurb, ptr %1786, i64 0, i32 13
  %1811 = load i16, ptr %1810, align 4, !tbaa !328
  %1812 = and i16 %1811, 1
  %1813 = icmp eq i16 %1812, 0
  %1814 = add nsw i32 %1807, 1073741823
  %1815 = select i1 %1813, i32 0, i32 %1814
  %1816 = add i32 %1809, %1815
  %1817 = shl i32 %1816, 2
  %1818 = icmp eq i32 %1817, 0
  br i1 %1818, label %1856, label %1819

1819:                                             ; preds = %1804
  %1820 = load i32, ptr %124, align 8, !tbaa !49
  %1821 = icmp eq i32 %1820, 0
  br i1 %1821, label %1822, label %1855

1822:                                             ; preds = %1819
  %1823 = load i32, ptr %1634, align 8, !tbaa !51
  %1824 = add nsw i32 %1823, 24
  store i32 %1824, ptr %1634, align 8, !tbaa !51
  %1825 = load i32, ptr %1635, align 4, !tbaa !52
  %1826 = icmp sgt i32 %1825, 99975
  br i1 %1826, label %1827, label %1844

1827:                                             ; preds = %1822
  %1828 = load ptr, ptr %1636, align 8, !tbaa !53
  %1829 = icmp eq ptr %1828, null
  %1830 = select i1 %1637, i1 true, i1 %1829
  br i1 %1830, label %1843, label %1831

1831:                                             ; preds = %1827
  %1832 = load ptr, ptr %1638, align 8, !tbaa !54
  %1833 = icmp eq ptr %1832, null
  br i1 %1833, label %1835, label %1834

1834:                                             ; preds = %1831
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %1832, ptr noundef nonnull %1828, i32 noundef %1825) #14
  br label %1843

1835:                                             ; preds = %1831
  %1836 = load ptr, ptr %1639, align 8, !tbaa !55
  %1837 = getelementptr inbounds %struct.WriteWrap, ptr %1836, i64 0, i32 2
  %1838 = load ptr, ptr %1837, align 8, !tbaa !56
  %1839 = zext nneg i32 %1825 to i64
  %1840 = call i64 %1838(ptr noundef %1836, ptr noundef nonnull %1828, i64 noundef %1839) #14
  %1841 = icmp eq i64 %1840, %1839
  br i1 %1841, label %1843, label %1842

1842:                                             ; preds = %1835
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %1843

1843:                                             ; preds = %1842, %1835, %1834, %1827
  store i32 0, ptr %1635, align 4, !tbaa !52
  br label %1844

1844:                                             ; preds = %1843, %1822
  %1845 = load ptr, ptr %1640, align 8, !tbaa !53
  %1846 = load i32, ptr %1635, align 4, !tbaa !52
  %1847 = sext i32 %1846 to i64
  %1848 = getelementptr inbounds i8, ptr %1845, i64 %1847
  store i32 1096040772, ptr %1848, align 1
  %1849 = getelementptr inbounds i8, ptr %1848, i64 4
  store i32 %1817, ptr %1849, align 1
  %1850 = getelementptr inbounds i8, ptr %1848, i64 8
  store ptr %1802, ptr %1850, align 1
  %1851 = getelementptr inbounds i8, ptr %1848, i64 16
  store i32 0, ptr %1851, align 1
  %1852 = getelementptr inbounds i8, ptr %1848, i64 20
  store i32 1, ptr %1852, align 1
  %1853 = load i32, ptr %1635, align 4, !tbaa !52
  %1854 = add nsw i32 %1853, 24
  store i32 %1854, ptr %1635, align 4, !tbaa !52
  br label %1855

1855:                                             ; preds = %1819, %1844
  call fastcc void @mywrite(ptr noundef %43, ptr noundef nonnull %1802, i32 noundef %1817)
  br label %1856

1856:                                             ; preds = %1855, %1804, %1795
  %1857 = getelementptr inbounds %struct.Nurb, ptr %1786, i64 0, i32 16
  %1858 = load ptr, ptr %1857, align 8, !tbaa !329
  %1859 = icmp eq ptr %1858, null
  br i1 %1859, label %1912, label %1860

1860:                                             ; preds = %1856
  %1861 = getelementptr inbounds %struct.Nurb, ptr %1786, i64 0, i32 12
  %1862 = load i16, ptr %1861, align 2, !tbaa !330
  %1863 = sext i16 %1862 to i32
  %1864 = load i32, ptr %1796, align 4, !tbaa !324
  %1865 = add nsw i32 %1864, %1863
  %1866 = getelementptr inbounds %struct.Nurb, ptr %1786, i64 0, i32 14
  %1867 = load i16, ptr %1866, align 2, !tbaa !331
  %1868 = and i16 %1867, 1
  %1869 = icmp eq i16 %1868, 0
  %1870 = add nsw i32 %1863, 1073741823
  %1871 = select i1 %1869, i32 0, i32 %1870
  %1872 = add i32 %1865, %1871
  %1873 = shl i32 %1872, 2
  %1874 = icmp eq i32 %1873, 0
  br i1 %1874, label %1912, label %1875

1875:                                             ; preds = %1860
  %1876 = load i32, ptr %124, align 8, !tbaa !49
  %1877 = icmp eq i32 %1876, 0
  br i1 %1877, label %1878, label %1911

1878:                                             ; preds = %1875
  %1879 = load i32, ptr %1641, align 8, !tbaa !51
  %1880 = add nsw i32 %1879, 24
  store i32 %1880, ptr %1641, align 8, !tbaa !51
  %1881 = load i32, ptr %1642, align 4, !tbaa !52
  %1882 = icmp sgt i32 %1881, 99975
  br i1 %1882, label %1883, label %1900

1883:                                             ; preds = %1878
  %1884 = load ptr, ptr %1643, align 8, !tbaa !53
  %1885 = icmp eq ptr %1884, null
  %1886 = select i1 %1644, i1 true, i1 %1885
  br i1 %1886, label %1899, label %1887

1887:                                             ; preds = %1883
  %1888 = load ptr, ptr %1645, align 8, !tbaa !54
  %1889 = icmp eq ptr %1888, null
  br i1 %1889, label %1891, label %1890

1890:                                             ; preds = %1887
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %1888, ptr noundef nonnull %1884, i32 noundef %1881) #14
  br label %1899

1891:                                             ; preds = %1887
  %1892 = load ptr, ptr %1646, align 8, !tbaa !55
  %1893 = getelementptr inbounds %struct.WriteWrap, ptr %1892, i64 0, i32 2
  %1894 = load ptr, ptr %1893, align 8, !tbaa !56
  %1895 = zext nneg i32 %1881 to i64
  %1896 = call i64 %1894(ptr noundef %1892, ptr noundef nonnull %1884, i64 noundef %1895) #14
  %1897 = icmp eq i64 %1896, %1895
  br i1 %1897, label %1899, label %1898

1898:                                             ; preds = %1891
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %1899

1899:                                             ; preds = %1898, %1891, %1890, %1883
  store i32 0, ptr %1642, align 4, !tbaa !52
  br label %1900

1900:                                             ; preds = %1899, %1878
  %1901 = load ptr, ptr %1647, align 8, !tbaa !53
  %1902 = load i32, ptr %1642, align 4, !tbaa !52
  %1903 = sext i32 %1902 to i64
  %1904 = getelementptr inbounds i8, ptr %1901, i64 %1903
  store i32 1096040772, ptr %1904, align 1
  %1905 = getelementptr inbounds i8, ptr %1904, i64 4
  store i32 %1873, ptr %1905, align 1
  %1906 = getelementptr inbounds i8, ptr %1904, i64 8
  store ptr %1858, ptr %1906, align 1
  %1907 = getelementptr inbounds i8, ptr %1904, i64 16
  store i32 0, ptr %1907, align 1
  %1908 = getelementptr inbounds i8, ptr %1904, i64 20
  store i32 1, ptr %1908, align 1
  %1909 = load i32, ptr %1642, align 4, !tbaa !52
  %1910 = add nsw i32 %1909, 24
  store i32 %1910, ptr %1642, align 4, !tbaa !52
  br label %1911

1911:                                             ; preds = %1875, %1900
  call fastcc void @mywrite(ptr noundef %43, ptr noundef nonnull %1858, i32 noundef %1873)
  br label %1912

1912:                                             ; preds = %1911, %1860, %1856, %1792
  %1913 = load ptr, ptr %1786, align 8, !tbaa !43
  %1914 = icmp eq ptr %1913, null
  br i1 %1914, label %1915, label %1785, !llvm.loop !332

1915:                                             ; preds = %1912, %1778, %1764, %1653
  %1916 = load ptr, ptr %1649, align 8, !tbaa !43
  %1917 = icmp eq ptr %1916, null
  br i1 %1917, label %1918, label %1648, !llvm.loop !333

1918:                                             ; preds = %1915, %1614
  %1919 = load i32, ptr %124, align 8, !tbaa !49
  %1920 = icmp eq i32 %1919, 0
  br i1 %1920, label %1921, label %1948

1921:                                             ; preds = %1918
  %1922 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %1923 = load i32, ptr %1922, align 4, !tbaa !52
  %1924 = icmp eq i32 %1923, 0
  br i1 %1924, label %1948, label %1925

1925:                                             ; preds = %1921
  %1926 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %1927 = load ptr, ptr %1926, align 8, !tbaa !53
  %1928 = icmp eq ptr %43, null
  br i1 %1928, label %1947, label %1929

1929:                                             ; preds = %1925
  %1930 = icmp eq ptr %1927, null
  %1931 = icmp slt i32 %1923, 1
  %1932 = or i1 %1931, %1930
  br i1 %1932, label %1947, label %1933

1933:                                             ; preds = %1929
  %1934 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %1935 = load ptr, ptr %1934, align 8, !tbaa !54
  %1936 = icmp eq ptr %1935, null
  br i1 %1936, label %1938, label %1937

1937:                                             ; preds = %1933
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %1935, ptr noundef %1927, i32 noundef %1923) #14
  br label %1947

1938:                                             ; preds = %1933
  %1939 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %1940 = load ptr, ptr %1939, align 8, !tbaa !55
  %1941 = getelementptr inbounds %struct.WriteWrap, ptr %1940, i64 0, i32 2
  %1942 = load ptr, ptr %1941, align 8, !tbaa !56
  %1943 = zext nneg i32 %1923 to i64
  %1944 = call i64 %1942(ptr noundef %1940, ptr noundef %1927, i64 noundef %1943) #14
  %1945 = icmp eq i64 %1944, %1943
  br i1 %1945, label %1947, label %1946

1946:                                             ; preds = %1938
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %1947

1947:                                             ; preds = %1925, %1929, %1937, %1938, %1946
  store i32 0, ptr %1922, align 4, !tbaa !52
  br label %1948

1948:                                             ; preds = %1918, %1921, %1947
  %1949 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 16
  %1950 = load ptr, ptr %1949, align 8, !tbaa !43
  %1951 = icmp eq ptr %1950, null
  br i1 %1951, label %2037, label %1952

1952:                                             ; preds = %1948
  %1953 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %1954 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %1955 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %1956 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %1957 = icmp eq ptr %43, null
  %1958 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %1959 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %1960 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  br label %1961

1961:                                             ; preds = %1952, %2034
  %1962 = phi ptr [ %1950, %1952 ], [ %2035, %2034 ]
  %1963 = getelementptr inbounds %struct.ID, ptr %1962, i64 0, i32 6
  %1964 = load i32, ptr %1963, align 4, !tbaa !334
  %1965 = icmp sgt i32 %1964, 0
  br i1 %1965, label %1969, label %1966

1966:                                             ; preds = %1961
  %1967 = load ptr, ptr %1953, align 8, !tbaa !54
  %1968 = icmp eq ptr %1967, null
  br i1 %1968, label %2034, label %1969

1969:                                             ; preds = %1966, %1961
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 16973, ptr noundef nonnull @.str.127, i32 noundef 1, ptr noundef nonnull %1962, ptr noundef nonnull %1962)
  %1970 = getelementptr inbounds %struct.ID, ptr %1962, i64 0, i32 9
  %1971 = load ptr, ptr %1970, align 8, !tbaa !336
  %1972 = icmp eq ptr %1971, null
  br i1 %1972, label %1974, label %1973

1973:                                             ; preds = %1969
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %1971, ptr noundef nonnull %1971)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %1971, ptr noundef %43)
  br label %1974

1974:                                             ; preds = %1973, %1969
  %1975 = getelementptr inbounds %struct.MetaBall, ptr %1962, i64 0, i32 9
  %1976 = load i16, ptr %1975, align 2, !tbaa !337
  %1977 = getelementptr inbounds %struct.MetaBall, ptr %1962, i64 0, i32 6
  %1978 = load ptr, ptr %1977, align 8, !tbaa !338
  %1979 = icmp eq ptr %1978, null
  %1980 = icmp eq i16 %1976, 0
  %1981 = or i1 %1980, %1979
  br i1 %1981, label %2021, label %1982

1982:                                             ; preds = %1974
  %1983 = sext i16 %1976 to i32
  %1984 = shl nsw i32 %1983, 3
  %1985 = load i32, ptr %124, align 8, !tbaa !49
  %1986 = icmp eq i32 %1985, 0
  br i1 %1986, label %1987, label %2020

1987:                                             ; preds = %1982
  %1988 = load i32, ptr %1954, align 8, !tbaa !51
  %1989 = add nsw i32 %1988, 24
  store i32 %1989, ptr %1954, align 8, !tbaa !51
  %1990 = load i32, ptr %1955, align 4, !tbaa !52
  %1991 = icmp sgt i32 %1990, 99975
  br i1 %1991, label %1992, label %2009

1992:                                             ; preds = %1987
  %1993 = load ptr, ptr %1956, align 8, !tbaa !53
  %1994 = icmp eq ptr %1993, null
  %1995 = select i1 %1957, i1 true, i1 %1994
  br i1 %1995, label %2008, label %1996

1996:                                             ; preds = %1992
  %1997 = load ptr, ptr %1958, align 8, !tbaa !54
  %1998 = icmp eq ptr %1997, null
  br i1 %1998, label %2000, label %1999

1999:                                             ; preds = %1996
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %1997, ptr noundef nonnull %1993, i32 noundef %1990) #14
  br label %2008

2000:                                             ; preds = %1996
  %2001 = load ptr, ptr %1959, align 8, !tbaa !55
  %2002 = getelementptr inbounds %struct.WriteWrap, ptr %2001, i64 0, i32 2
  %2003 = load ptr, ptr %2002, align 8, !tbaa !56
  %2004 = zext nneg i32 %1990 to i64
  %2005 = call i64 %2003(ptr noundef %2001, ptr noundef nonnull %1993, i64 noundef %2004) #14
  %2006 = icmp eq i64 %2005, %2004
  br i1 %2006, label %2008, label %2007

2007:                                             ; preds = %2000
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %2008

2008:                                             ; preds = %2007, %2000, %1999, %1992
  store i32 0, ptr %1955, align 4, !tbaa !52
  br label %2009

2009:                                             ; preds = %2008, %1987
  %2010 = load ptr, ptr %1960, align 8, !tbaa !53
  %2011 = load i32, ptr %1955, align 4, !tbaa !52
  %2012 = sext i32 %2011 to i64
  %2013 = getelementptr inbounds i8, ptr %2010, i64 %2012
  store i32 1096040772, ptr %2013, align 1
  %2014 = getelementptr inbounds i8, ptr %2013, i64 4
  store i32 %1984, ptr %2014, align 1
  %2015 = getelementptr inbounds i8, ptr %2013, i64 8
  store ptr %1978, ptr %2015, align 1
  %2016 = getelementptr inbounds i8, ptr %2013, i64 16
  store i32 0, ptr %2016, align 1
  %2017 = getelementptr inbounds i8, ptr %2013, i64 20
  store i32 1, ptr %2017, align 1
  %2018 = load i32, ptr %1955, align 4, !tbaa !52
  %2019 = add nsw i32 %2018, 24
  store i32 %2019, ptr %1955, align 4, !tbaa !52
  br label %2020

2020:                                             ; preds = %1982, %2009
  call fastcc void @mywrite(ptr noundef %43, ptr noundef nonnull %1978, i32 noundef %1984)
  br label %2021

2021:                                             ; preds = %1974, %2020
  %2022 = getelementptr inbounds %struct.MetaBall, ptr %1962, i64 0, i32 1
  %2023 = load ptr, ptr %2022, align 8, !tbaa !339
  %2024 = icmp eq ptr %2023, null
  br i1 %2024, label %2026, label %2025

2025:                                             ; preds = %2021
  call fastcc void @write_animdata(ptr noundef %43, ptr noundef nonnull %2023)
  br label %2026

2026:                                             ; preds = %2025, %2021
  %2027 = getelementptr inbounds %struct.MetaBall, ptr %1962, i64 0, i32 2
  %2028 = load ptr, ptr %2027, align 8, !tbaa !43
  %2029 = icmp eq ptr %2028, null
  br i1 %2029, label %2034, label %2030

2030:                                             ; preds = %2026, %2030
  %2031 = phi ptr [ %2032, %2030 ], [ %2028, %2026 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.128, i32 noundef 1, ptr noundef nonnull %2031, ptr noundef nonnull %2031)
  %2032 = load ptr, ptr %2031, align 8, !tbaa !43
  %2033 = icmp eq ptr %2032, null
  br i1 %2033, label %2034, label %2030, !llvm.loop !340

2034:                                             ; preds = %2030, %2026, %1966
  %2035 = load ptr, ptr %1962, align 8, !tbaa !43
  %2036 = icmp eq ptr %2035, null
  br i1 %2036, label %2037, label %1961, !llvm.loop !341

2037:                                             ; preds = %2034, %1948
  %2038 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 19
  %2039 = load ptr, ptr %2038, align 8, !tbaa !43
  %2040 = icmp eq ptr %2039, null
  br i1 %2040, label %2119, label %2041

2041:                                             ; preds = %2037
  %2042 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %2043 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %2044 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %2045 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %2046 = icmp eq ptr %43, null
  %2047 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %2048 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %2049 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  br label %2050

2050:                                             ; preds = %2041, %2116
  %2051 = phi ptr [ %2039, %2041 ], [ %2117, %2116 ]
  %2052 = getelementptr inbounds %struct.ID, ptr %2051, i64 0, i32 6
  %2053 = load i32, ptr %2052, align 4, !tbaa !342
  %2054 = icmp sgt i32 %2053, 0
  br i1 %2054, label %2058, label %2055

2055:                                             ; preds = %2050
  %2056 = load ptr, ptr %2042, align 8, !tbaa !54
  %2057 = icmp eq ptr %2056, null
  br i1 %2057, label %2116, label %2058

2058:                                             ; preds = %2055, %2050
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 19785, ptr noundef nonnull @.str.129, i32 noundef 1, ptr noundef nonnull %2051, ptr noundef nonnull %2051)
  %2059 = getelementptr inbounds %struct.ID, ptr %2051, i64 0, i32 9
  %2060 = load ptr, ptr %2059, align 8, !tbaa !344
  %2061 = icmp eq ptr %2060, null
  br i1 %2061, label %2063, label %2062

2062:                                             ; preds = %2058
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %2060, ptr noundef nonnull %2060)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %2060, ptr noundef %43)
  br label %2063

2063:                                             ; preds = %2062, %2058
  %2064 = getelementptr inbounds %struct.Image, ptr %2051, i64 0, i32 22
  %2065 = load ptr, ptr %2064, align 8, !tbaa !345
  %2066 = icmp eq ptr %2065, null
  br i1 %2066, label %2113, label %2067

2067:                                             ; preds = %2063
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.130, i32 noundef 1, ptr noundef nonnull %2065, ptr noundef nonnull %2065)
  %2068 = load i32, ptr %2065, align 8, !tbaa !346
  %2069 = getelementptr inbounds %struct.PackedFile, ptr %2065, i64 0, i32 2
  %2070 = load ptr, ptr %2069, align 8, !tbaa !348
  %2071 = icmp eq ptr %2070, null
  %2072 = icmp eq i32 %2068, 0
  %2073 = or i1 %2072, %2071
  br i1 %2073, label %2113, label %2074

2074:                                             ; preds = %2067
  %2075 = add nsw i32 %2068, 3
  %2076 = and i32 %2075, -4
  %2077 = load i32, ptr %124, align 8, !tbaa !49
  %2078 = icmp eq i32 %2077, 0
  br i1 %2078, label %2079, label %2112

2079:                                             ; preds = %2074
  %2080 = load i32, ptr %2043, align 8, !tbaa !51
  %2081 = add nsw i32 %2080, 24
  store i32 %2081, ptr %2043, align 8, !tbaa !51
  %2082 = load i32, ptr %2044, align 4, !tbaa !52
  %2083 = icmp sgt i32 %2082, 99975
  br i1 %2083, label %2084, label %2101

2084:                                             ; preds = %2079
  %2085 = load ptr, ptr %2045, align 8, !tbaa !53
  %2086 = icmp eq ptr %2085, null
  %2087 = select i1 %2046, i1 true, i1 %2086
  br i1 %2087, label %2100, label %2088

2088:                                             ; preds = %2084
  %2089 = load ptr, ptr %2047, align 8, !tbaa !54
  %2090 = icmp eq ptr %2089, null
  br i1 %2090, label %2092, label %2091

2091:                                             ; preds = %2088
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %2089, ptr noundef nonnull %2085, i32 noundef %2082) #14
  br label %2100

2092:                                             ; preds = %2088
  %2093 = load ptr, ptr %2048, align 8, !tbaa !55
  %2094 = getelementptr inbounds %struct.WriteWrap, ptr %2093, i64 0, i32 2
  %2095 = load ptr, ptr %2094, align 8, !tbaa !56
  %2096 = zext nneg i32 %2082 to i64
  %2097 = call i64 %2095(ptr noundef %2093, ptr noundef nonnull %2085, i64 noundef %2096) #14
  %2098 = icmp eq i64 %2097, %2096
  br i1 %2098, label %2100, label %2099

2099:                                             ; preds = %2092
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %2100

2100:                                             ; preds = %2099, %2092, %2091, %2084
  store i32 0, ptr %2044, align 4, !tbaa !52
  br label %2101

2101:                                             ; preds = %2100, %2079
  %2102 = load ptr, ptr %2049, align 8, !tbaa !53
  %2103 = load i32, ptr %2044, align 4, !tbaa !52
  %2104 = sext i32 %2103 to i64
  %2105 = getelementptr inbounds i8, ptr %2102, i64 %2104
  store i32 1096040772, ptr %2105, align 1
  %2106 = getelementptr inbounds i8, ptr %2105, i64 4
  store i32 %2076, ptr %2106, align 1
  %2107 = getelementptr inbounds i8, ptr %2105, i64 8
  store ptr %2070, ptr %2107, align 1
  %2108 = getelementptr inbounds i8, ptr %2105, i64 16
  store i32 0, ptr %2108, align 1
  %2109 = getelementptr inbounds i8, ptr %2105, i64 20
  store i32 1, ptr %2109, align 1
  %2110 = load i32, ptr %2044, align 4, !tbaa !52
  %2111 = add nsw i32 %2110, 24
  store i32 %2111, ptr %2044, align 4, !tbaa !52
  br label %2112

2112:                                             ; preds = %2074, %2101
  call fastcc void @mywrite(ptr noundef %43, ptr noundef nonnull %2070, i32 noundef %2076)
  br label %2113

2113:                                             ; preds = %2112, %2067, %2063
  %2114 = getelementptr inbounds %struct.Image, ptr %2051, i64 0, i32 23
  %2115 = load ptr, ptr %2114, align 8, !tbaa !349
  call fastcc void @write_previews(ptr noundef %43, ptr noundef %2115)
  br label %2116

2116:                                             ; preds = %2113, %2055
  %2117 = load ptr, ptr %2051, align 8, !tbaa !43
  %2118 = icmp eq ptr %2117, null
  br i1 %2118, label %2119, label %2050, !llvm.loop !350

2119:                                             ; preds = %2116, %2037
  %2120 = load i32, ptr %124, align 8, !tbaa !49
  %2121 = icmp eq i32 %2120, 0
  br i1 %2121, label %2122, label %2149

2122:                                             ; preds = %2119
  %2123 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %2124 = load i32, ptr %2123, align 4, !tbaa !52
  %2125 = icmp eq i32 %2124, 0
  br i1 %2125, label %2149, label %2126

2126:                                             ; preds = %2122
  %2127 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %2128 = load ptr, ptr %2127, align 8, !tbaa !53
  %2129 = icmp eq ptr %43, null
  br i1 %2129, label %2148, label %2130

2130:                                             ; preds = %2126
  %2131 = icmp eq ptr %2128, null
  %2132 = icmp slt i32 %2124, 1
  %2133 = or i1 %2132, %2131
  br i1 %2133, label %2148, label %2134

2134:                                             ; preds = %2130
  %2135 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %2136 = load ptr, ptr %2135, align 8, !tbaa !54
  %2137 = icmp eq ptr %2136, null
  br i1 %2137, label %2139, label %2138

2138:                                             ; preds = %2134
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %2136, ptr noundef %2128, i32 noundef %2124) #14
  br label %2148

2139:                                             ; preds = %2134
  %2140 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %2141 = load ptr, ptr %2140, align 8, !tbaa !55
  %2142 = getelementptr inbounds %struct.WriteWrap, ptr %2141, i64 0, i32 2
  %2143 = load ptr, ptr %2142, align 8, !tbaa !56
  %2144 = zext nneg i32 %2124 to i64
  %2145 = call i64 %2143(ptr noundef %2141, ptr noundef %2128, i64 noundef %2144) #14
  %2146 = icmp eq i64 %2145, %2144
  br i1 %2146, label %2148, label %2147

2147:                                             ; preds = %2139
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %2148

2148:                                             ; preds = %2126, %2130, %2138, %2139, %2147
  store i32 0, ptr %2123, align 4, !tbaa !52
  br label %2149

2149:                                             ; preds = %2119, %2122, %2148
  %2150 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 22
  %2151 = load ptr, ptr %2150, align 8, !tbaa !43
  %2152 = icmp eq ptr %2151, null
  br i1 %2152, label %2176, label %2153

2153:                                             ; preds = %2149
  %2154 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  br label %2155

2155:                                             ; preds = %2153, %2173
  %2156 = phi ptr [ %2151, %2153 ], [ %2174, %2173 ]
  %2157 = getelementptr inbounds %struct.ID, ptr %2156, i64 0, i32 6
  %2158 = load i32, ptr %2157, align 4, !tbaa !351
  %2159 = icmp sgt i32 %2158, 0
  br i1 %2159, label %2163, label %2160

2160:                                             ; preds = %2155
  %2161 = load ptr, ptr %2154, align 8, !tbaa !54
  %2162 = icmp eq ptr %2161, null
  br i1 %2162, label %2173, label %2163

2163:                                             ; preds = %2160, %2155
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 16707, ptr noundef nonnull @.str.132, i32 noundef 1, ptr noundef nonnull %2156, ptr noundef nonnull %2156)
  %2164 = getelementptr inbounds %struct.ID, ptr %2156, i64 0, i32 9
  %2165 = load ptr, ptr %2164, align 8, !tbaa !353
  %2166 = icmp eq ptr %2165, null
  br i1 %2166, label %2168, label %2167

2167:                                             ; preds = %2163
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %2165, ptr noundef nonnull %2165)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %2165, ptr noundef %43)
  br label %2168

2168:                                             ; preds = %2167, %2163
  %2169 = getelementptr inbounds %struct.Camera, ptr %2156, i64 0, i32 1
  %2170 = load ptr, ptr %2169, align 8, !tbaa !354
  %2171 = icmp eq ptr %2170, null
  br i1 %2171, label %2173, label %2172

2172:                                             ; preds = %2168
  call fastcc void @write_animdata(ptr noundef %43, ptr noundef nonnull %2170)
  br label %2173

2173:                                             ; preds = %2172, %2168, %2160
  %2174 = load ptr, ptr %2156, align 8, !tbaa !43
  %2175 = icmp eq ptr %2174, null
  br i1 %2175, label %2176, label %2155, !llvm.loop !355

2176:                                             ; preds = %2173, %2149
  %2177 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 21
  %2178 = load ptr, ptr %2177, align 8, !tbaa !43
  %2179 = icmp eq ptr %2178, null
  br i1 %2179, label %2236, label %2180

2180:                                             ; preds = %2176
  %2181 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  br label %2182

2182:                                             ; preds = %2180, %2233
  %2183 = phi ptr [ %2178, %2180 ], [ %2234, %2233 ]
  %2184 = getelementptr inbounds %struct.ID, ptr %2183, i64 0, i32 6
  %2185 = load i32, ptr %2184, align 4, !tbaa !356
  %2186 = icmp sgt i32 %2185, 0
  br i1 %2186, label %2190, label %2187

2187:                                             ; preds = %2182
  %2188 = load ptr, ptr %2181, align 8, !tbaa !54
  %2189 = icmp eq ptr %2188, null
  br i1 %2189, label %2233, label %2190

2190:                                             ; preds = %2187, %2182
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 16716, ptr noundef nonnull @.str.133, i32 noundef 1, ptr noundef nonnull %2183, ptr noundef nonnull %2183)
  %2191 = getelementptr inbounds %struct.ID, ptr %2183, i64 0, i32 9
  %2192 = load ptr, ptr %2191, align 8, !tbaa !358
  %2193 = icmp eq ptr %2192, null
  br i1 %2193, label %2195, label %2194

2194:                                             ; preds = %2190
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %2192, ptr noundef nonnull %2192)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %2192, ptr noundef %43)
  br label %2195

2195:                                             ; preds = %2194, %2190
  %2196 = getelementptr inbounds %struct.Lamp, ptr %2183, i64 0, i32 1
  %2197 = load ptr, ptr %2196, align 8, !tbaa !359
  %2198 = icmp eq ptr %2197, null
  br i1 %2198, label %2200, label %2199

2199:                                             ; preds = %2195
  call fastcc void @write_animdata(ptr noundef %43, ptr noundef nonnull %2197)
  br label %2200

2200:                                             ; preds = %2199, %2195
  br label %2201

2201:                                             ; preds = %2200, %2207
  %2202 = phi i64 [ %2208, %2207 ], [ 0, %2200 ]
  %2203 = getelementptr inbounds %struct.Lamp, ptr %2183, i64 0, i32 69, i64 %2202
  %2204 = load ptr, ptr %2203, align 8, !tbaa !43
  %2205 = icmp eq ptr %2204, null
  br i1 %2205, label %2207, label %2206

2206:                                             ; preds = %2201
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.134, i32 noundef 1, ptr noundef nonnull %2204, ptr noundef nonnull %2204)
  br label %2207

2207:                                             ; preds = %2206, %2201
  %2208 = add nuw nsw i64 %2202, 1
  %2209 = icmp eq i64 %2208, 18
  br i1 %2209, label %2210, label %2201, !llvm.loop !360

2210:                                             ; preds = %2207
  %2211 = getelementptr inbounds %struct.Lamp, ptr %2183, i64 0, i32 22
  %2212 = load ptr, ptr %2211, align 8, !tbaa !361
  %2213 = icmp eq ptr %2212, null
  br i1 %2213, label %2224, label %2214

2214:                                             ; preds = %2210
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.52, i32 noundef 1, ptr noundef nonnull %2212, ptr noundef nonnull %2212)
  br label %2215

2215:                                             ; preds = %2215, %2214
  %2216 = phi i64 [ 0, %2214 ], [ %2222, %2215 ]
  %2217 = getelementptr inbounds %struct.CurveMapping, ptr %2212, i64 0, i32 6, i64 %2216
  %2218 = load i16, ptr %2217, align 8, !tbaa !185
  %2219 = sext i16 %2218 to i32
  %2220 = getelementptr inbounds %struct.CurveMapping, ptr %2212, i64 0, i32 6, i64 %2216, i32 7
  %2221 = load ptr, ptr %2220, align 8, !tbaa !187
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.53, i32 noundef %2219, ptr noundef %2221, ptr noundef %2221)
  %2222 = add nuw nsw i64 %2216, 1
  %2223 = icmp eq i64 %2222, 4
  br i1 %2223, label %2224, label %2215, !llvm.loop !188

2224:                                             ; preds = %2215, %2210
  %2225 = getelementptr inbounds %struct.Lamp, ptr %2183, i64 0, i32 74
  %2226 = load ptr, ptr %2225, align 8, !tbaa !362
  %2227 = icmp eq ptr %2226, null
  br i1 %2227, label %2230, label %2228

2228:                                             ; preds = %2224
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.105, i32 noundef 1, ptr noundef nonnull %2226, ptr noundef nonnull %2226)
  %2229 = load ptr, ptr %2225, align 8, !tbaa !362
  call fastcc void @write_nodetree(ptr noundef %43, ptr noundef %2229)
  br label %2230

2230:                                             ; preds = %2228, %2224
  %2231 = getelementptr inbounds %struct.Lamp, ptr %2183, i64 0, i32 73
  %2232 = load ptr, ptr %2231, align 8, !tbaa !363
  call fastcc void @write_previews(ptr noundef %43, ptr noundef %2232)
  br label %2233

2233:                                             ; preds = %2230, %2187
  %2234 = load ptr, ptr %2183, align 8, !tbaa !43
  %2235 = icmp eq ptr %2234, null
  br i1 %2235, label %2236, label %2182, !llvm.loop !364

2236:                                             ; preds = %2233, %2176
  %2237 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 20
  %2238 = load ptr, ptr %2237, align 8, !tbaa !43
  %2239 = icmp eq ptr %2238, null
  br i1 %2239, label %2303, label %2240

2240:                                             ; preds = %2236
  %2241 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  br label %2242

2242:                                             ; preds = %2240, %2300
  %2243 = phi ptr [ %2238, %2240 ], [ %2301, %2300 ]
  %2244 = getelementptr inbounds %struct.ID, ptr %2243, i64 0, i32 6
  %2245 = load i32, ptr %2244, align 4, !tbaa !365
  %2246 = icmp sgt i32 %2245, 0
  br i1 %2246, label %2250, label %2247

2247:                                             ; preds = %2242
  %2248 = load ptr, ptr %2241, align 8, !tbaa !54
  %2249 = icmp eq ptr %2248, null
  br i1 %2249, label %2300, label %2250

2250:                                             ; preds = %2247, %2242
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 21580, ptr noundef nonnull @.str.135, i32 noundef 1, ptr noundef nonnull %2243, ptr noundef nonnull %2243)
  %2251 = getelementptr inbounds %struct.ID, ptr %2243, i64 0, i32 9
  %2252 = load ptr, ptr %2251, align 8, !tbaa !367
  %2253 = icmp eq ptr %2252, null
  br i1 %2253, label %2255, label %2254

2254:                                             ; preds = %2250
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %2252, ptr noundef nonnull %2252)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %2252, ptr noundef %43)
  br label %2255

2255:                                             ; preds = %2254, %2250
  %2256 = getelementptr inbounds %struct.Lattice, ptr %2243, i64 0, i32 1
  %2257 = load ptr, ptr %2256, align 8, !tbaa !368
  %2258 = icmp eq ptr %2257, null
  br i1 %2258, label %2260, label %2259

2259:                                             ; preds = %2255
  call fastcc void @write_animdata(ptr noundef %43, ptr noundef nonnull %2257)
  br label %2260

2260:                                             ; preds = %2259, %2255
  %2261 = getelementptr inbounds %struct.Lattice, ptr %2243, i64 0, i32 2
  %2262 = load i16, ptr %2261, align 8, !tbaa !369
  %2263 = sext i16 %2262 to i32
  %2264 = getelementptr inbounds %struct.Lattice, ptr %2243, i64 0, i32 3
  %2265 = load i16, ptr %2264, align 2, !tbaa !370
  %2266 = sext i16 %2265 to i32
  %2267 = mul nsw i32 %2266, %2263
  %2268 = getelementptr inbounds %struct.Lattice, ptr %2243, i64 0, i32 4
  %2269 = load i16, ptr %2268, align 4, !tbaa !371
  %2270 = sext i16 %2269 to i32
  %2271 = mul nsw i32 %2267, %2270
  %2272 = getelementptr inbounds %struct.Lattice, ptr %2243, i64 0, i32 21
  %2273 = load ptr, ptr %2272, align 8, !tbaa !372
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.126, i32 noundef %2271, ptr noundef %2273, ptr noundef %2273)
  %2274 = load i16, ptr %2261, align 8, !tbaa !369
  %2275 = sext i16 %2274 to i32
  %2276 = load i16, ptr %2264, align 2, !tbaa !370
  %2277 = sext i16 %2276 to i32
  %2278 = mul nsw i32 %2277, %2275
  %2279 = load i16, ptr %2268, align 4, !tbaa !371
  %2280 = sext i16 %2279 to i32
  %2281 = mul nsw i32 %2278, %2280
  %2282 = getelementptr inbounds %struct.Lattice, ptr %2243, i64 0, i32 24
  %2283 = load ptr, ptr %2282, align 8, !tbaa !373
  %2284 = icmp eq ptr %2283, null
  br i1 %2284, label %2300, label %2285

2285:                                             ; preds = %2260
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.136, i32 noundef %2281, ptr noundef nonnull %2283, ptr noundef nonnull %2283)
  %2286 = icmp sgt i32 %2281, 0
  br i1 %2286, label %2287, label %2300

2287:                                             ; preds = %2285
  %2288 = zext nneg i32 %2281 to i64
  br label %2289

2289:                                             ; preds = %2297, %2287
  %2290 = phi i64 [ 0, %2287 ], [ %2298, %2297 ]
  %2291 = getelementptr inbounds %struct.MDeformVert, ptr %2283, i64 %2290
  %2292 = load ptr, ptr %2291, align 8, !tbaa !374
  %2293 = icmp eq ptr %2292, null
  br i1 %2293, label %2297, label %2294

2294:                                             ; preds = %2289
  %2295 = getelementptr inbounds %struct.MDeformVert, ptr %2283, i64 %2290, i32 1
  %2296 = load i32, ptr %2295, align 8, !tbaa !376
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.137, i32 noundef %2296, ptr noundef nonnull %2292, ptr noundef nonnull %2292)
  br label %2297

2297:                                             ; preds = %2294, %2289
  %2298 = add nuw nsw i64 %2290, 1
  %2299 = icmp eq i64 %2298, %2288
  br i1 %2299, label %2300, label %2289, !llvm.loop !377

2300:                                             ; preds = %2297, %2285, %2260, %2247
  %2301 = load ptr, ptr %2243, align 8, !tbaa !43
  %2302 = icmp eq ptr %2301, null
  br i1 %2302, label %2303, label %2242, !llvm.loop !378

2303:                                             ; preds = %2300, %2236
  %2304 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 28
  %2305 = load ptr, ptr %2304, align 8, !tbaa !43
  %2306 = icmp eq ptr %2305, null
  br i1 %2306, label %2382, label %2307

2307:                                             ; preds = %2303
  %2308 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %2309 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %2310 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %2311 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %2312 = icmp eq ptr %43, null
  %2313 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %2314 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %2315 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  br label %2316

2316:                                             ; preds = %2307, %2379
  %2317 = phi ptr [ %2305, %2307 ], [ %2380, %2379 ]
  %2318 = getelementptr inbounds %struct.ID, ptr %2317, i64 0, i32 6
  %2319 = load i32, ptr %2318, align 4, !tbaa !379
  %2320 = icmp sgt i32 %2319, 0
  br i1 %2320, label %2324, label %2321

2321:                                             ; preds = %2316
  %2322 = load ptr, ptr %2308, align 8, !tbaa !54
  %2323 = icmp eq ptr %2322, null
  br i1 %2323, label %2379, label %2324

2324:                                             ; preds = %2321, %2316
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 18006, ptr noundef nonnull @.str.138, i32 noundef 1, ptr noundef nonnull %2317, ptr noundef nonnull %2317)
  %2325 = getelementptr inbounds %struct.ID, ptr %2317, i64 0, i32 9
  %2326 = load ptr, ptr %2325, align 8, !tbaa !381
  %2327 = icmp eq ptr %2326, null
  br i1 %2327, label %2329, label %2328

2328:                                             ; preds = %2324
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %2326, ptr noundef nonnull %2326)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %2326, ptr noundef %43)
  br label %2329

2329:                                             ; preds = %2328, %2324
  %2330 = getelementptr inbounds %struct.VFont, ptr %2317, i64 0, i32 3
  %2331 = load ptr, ptr %2330, align 8, !tbaa !382
  %2332 = icmp eq ptr %2331, null
  br i1 %2332, label %2379, label %2333

2333:                                             ; preds = %2329
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.130, i32 noundef 1, ptr noundef nonnull %2331, ptr noundef nonnull %2331)
  %2334 = load i32, ptr %2331, align 8, !tbaa !346
  %2335 = getelementptr inbounds %struct.PackedFile, ptr %2331, i64 0, i32 2
  %2336 = load ptr, ptr %2335, align 8, !tbaa !348
  %2337 = icmp eq ptr %2336, null
  %2338 = icmp eq i32 %2334, 0
  %2339 = or i1 %2338, %2337
  br i1 %2339, label %2379, label %2340

2340:                                             ; preds = %2333
  %2341 = add nsw i32 %2334, 3
  %2342 = and i32 %2341, -4
  %2343 = load i32, ptr %124, align 8, !tbaa !49
  %2344 = icmp eq i32 %2343, 0
  br i1 %2344, label %2345, label %2378

2345:                                             ; preds = %2340
  %2346 = load i32, ptr %2309, align 8, !tbaa !51
  %2347 = add nsw i32 %2346, 24
  store i32 %2347, ptr %2309, align 8, !tbaa !51
  %2348 = load i32, ptr %2310, align 4, !tbaa !52
  %2349 = icmp sgt i32 %2348, 99975
  br i1 %2349, label %2350, label %2367

2350:                                             ; preds = %2345
  %2351 = load ptr, ptr %2311, align 8, !tbaa !53
  %2352 = icmp eq ptr %2351, null
  %2353 = select i1 %2312, i1 true, i1 %2352
  br i1 %2353, label %2366, label %2354

2354:                                             ; preds = %2350
  %2355 = load ptr, ptr %2313, align 8, !tbaa !54
  %2356 = icmp eq ptr %2355, null
  br i1 %2356, label %2358, label %2357

2357:                                             ; preds = %2354
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %2355, ptr noundef nonnull %2351, i32 noundef %2348) #14
  br label %2366

2358:                                             ; preds = %2354
  %2359 = load ptr, ptr %2314, align 8, !tbaa !55
  %2360 = getelementptr inbounds %struct.WriteWrap, ptr %2359, i64 0, i32 2
  %2361 = load ptr, ptr %2360, align 8, !tbaa !56
  %2362 = zext nneg i32 %2348 to i64
  %2363 = call i64 %2361(ptr noundef %2359, ptr noundef nonnull %2351, i64 noundef %2362) #14
  %2364 = icmp eq i64 %2363, %2362
  br i1 %2364, label %2366, label %2365

2365:                                             ; preds = %2358
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %2366

2366:                                             ; preds = %2365, %2358, %2357, %2350
  store i32 0, ptr %2310, align 4, !tbaa !52
  br label %2367

2367:                                             ; preds = %2366, %2345
  %2368 = load ptr, ptr %2315, align 8, !tbaa !53
  %2369 = load i32, ptr %2310, align 4, !tbaa !52
  %2370 = sext i32 %2369 to i64
  %2371 = getelementptr inbounds i8, ptr %2368, i64 %2370
  store i32 1096040772, ptr %2371, align 1
  %2372 = getelementptr inbounds i8, ptr %2371, i64 4
  store i32 %2342, ptr %2372, align 1
  %2373 = getelementptr inbounds i8, ptr %2371, i64 8
  store ptr %2336, ptr %2373, align 1
  %2374 = getelementptr inbounds i8, ptr %2371, i64 16
  store i32 0, ptr %2374, align 1
  %2375 = getelementptr inbounds i8, ptr %2371, i64 20
  store i32 1, ptr %2375, align 1
  %2376 = load i32, ptr %2310, align 4, !tbaa !52
  %2377 = add nsw i32 %2376, 24
  store i32 %2377, ptr %2310, align 4, !tbaa !52
  br label %2378

2378:                                             ; preds = %2340, %2367
  call fastcc void @mywrite(ptr noundef %43, ptr noundef nonnull %2336, i32 noundef %2342)
  br label %2379

2379:                                             ; preds = %2378, %2333, %2329, %2321
  %2380 = load ptr, ptr %2317, align 8, !tbaa !43
  %2381 = icmp eq ptr %2380, null
  br i1 %2381, label %2382, label %2316, !llvm.loop !383

2382:                                             ; preds = %2379, %2303
  %2383 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 24
  %2384 = load ptr, ptr %2383, align 8, !tbaa !43
  %2385 = icmp eq ptr %2384, null
  br i1 %2385, label %2475, label %2386

2386:                                             ; preds = %2382
  %2387 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %2388 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %2389 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %2390 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %2391 = icmp eq ptr %43, null
  %2392 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %2393 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %2394 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  br label %2395

2395:                                             ; preds = %2386, %2472
  %2396 = phi ptr [ %2384, %2386 ], [ %2473, %2472 ]
  %2397 = getelementptr inbounds %struct.ID, ptr %2396, i64 0, i32 6
  %2398 = load i32, ptr %2397, align 4, !tbaa !384
  %2399 = icmp sgt i32 %2398, 0
  br i1 %2399, label %2403, label %2400

2400:                                             ; preds = %2395
  %2401 = load ptr, ptr %2387, align 8, !tbaa !54
  %2402 = icmp eq ptr %2401, null
  br i1 %2402, label %2472, label %2403

2403:                                             ; preds = %2400, %2395
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 17739, ptr noundef nonnull @.str.139, i32 noundef 1, ptr noundef nonnull %2396, ptr noundef nonnull %2396)
  %2404 = getelementptr inbounds %struct.ID, ptr %2396, i64 0, i32 9
  %2405 = load ptr, ptr %2404, align 8, !tbaa !386
  %2406 = icmp eq ptr %2405, null
  br i1 %2406, label %2408, label %2407

2407:                                             ; preds = %2403
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %2405, ptr noundef nonnull %2405)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %2405, ptr noundef %43)
  br label %2408

2408:                                             ; preds = %2407, %2403
  %2409 = getelementptr inbounds %struct.Key, ptr %2396, i64 0, i32 1
  %2410 = load ptr, ptr %2409, align 8, !tbaa !387
  %2411 = icmp eq ptr %2410, null
  br i1 %2411, label %2413, label %2412

2412:                                             ; preds = %2408
  call fastcc void @write_animdata(ptr noundef %43, ptr noundef nonnull %2410)
  br label %2413

2413:                                             ; preds = %2412, %2408
  %2414 = getelementptr inbounds %struct.Key, ptr %2396, i64 0, i32 6
  %2415 = load ptr, ptr %2414, align 8, !tbaa !43
  %2416 = icmp eq ptr %2415, null
  br i1 %2416, label %2472, label %2417

2417:                                             ; preds = %2413
  %2418 = getelementptr inbounds %struct.Key, ptr %2396, i64 0, i32 4
  br label %2419

2419:                                             ; preds = %2417, %2469
  %2420 = phi ptr [ %2415, %2417 ], [ %2470, %2469 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.140, i32 noundef 1, ptr noundef nonnull %2420, ptr noundef nonnull %2420)
  %2421 = getelementptr inbounds %struct.KeyBlock, ptr %2420, i64 0, i32 10
  %2422 = load ptr, ptr %2421, align 8, !tbaa !388
  %2423 = icmp eq ptr %2422, null
  br i1 %2423, label %2469, label %2424

2424:                                             ; preds = %2419
  %2425 = getelementptr inbounds %struct.KeyBlock, ptr %2420, i64 0, i32 8
  %2426 = load i32, ptr %2425, align 8, !tbaa !390
  %2427 = load i32, ptr %2418, align 8, !tbaa !391
  %2428 = mul nsw i32 %2427, %2426
  %2429 = icmp eq i32 %2428, 0
  br i1 %2429, label %2469, label %2430

2430:                                             ; preds = %2424
  %2431 = add nsw i32 %2428, 3
  %2432 = and i32 %2431, -4
  %2433 = load i32, ptr %124, align 8, !tbaa !49
  %2434 = icmp eq i32 %2433, 0
  br i1 %2434, label %2435, label %2468

2435:                                             ; preds = %2430
  %2436 = load i32, ptr %2388, align 8, !tbaa !51
  %2437 = add nsw i32 %2436, 24
  store i32 %2437, ptr %2388, align 8, !tbaa !51
  %2438 = load i32, ptr %2389, align 4, !tbaa !52
  %2439 = icmp sgt i32 %2438, 99975
  br i1 %2439, label %2440, label %2457

2440:                                             ; preds = %2435
  %2441 = load ptr, ptr %2390, align 8, !tbaa !53
  %2442 = icmp eq ptr %2441, null
  %2443 = select i1 %2391, i1 true, i1 %2442
  br i1 %2443, label %2456, label %2444

2444:                                             ; preds = %2440
  %2445 = load ptr, ptr %2392, align 8, !tbaa !54
  %2446 = icmp eq ptr %2445, null
  br i1 %2446, label %2448, label %2447

2447:                                             ; preds = %2444
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %2445, ptr noundef nonnull %2441, i32 noundef %2438) #14
  br label %2456

2448:                                             ; preds = %2444
  %2449 = load ptr, ptr %2393, align 8, !tbaa !55
  %2450 = getelementptr inbounds %struct.WriteWrap, ptr %2449, i64 0, i32 2
  %2451 = load ptr, ptr %2450, align 8, !tbaa !56
  %2452 = zext nneg i32 %2438 to i64
  %2453 = call i64 %2451(ptr noundef %2449, ptr noundef nonnull %2441, i64 noundef %2452) #14
  %2454 = icmp eq i64 %2453, %2452
  br i1 %2454, label %2456, label %2455

2455:                                             ; preds = %2448
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %2456

2456:                                             ; preds = %2455, %2448, %2447, %2440
  store i32 0, ptr %2389, align 4, !tbaa !52
  br label %2457

2457:                                             ; preds = %2456, %2435
  %2458 = load ptr, ptr %2394, align 8, !tbaa !53
  %2459 = load i32, ptr %2389, align 4, !tbaa !52
  %2460 = sext i32 %2459 to i64
  %2461 = getelementptr inbounds i8, ptr %2458, i64 %2460
  store i32 1096040772, ptr %2461, align 1
  %2462 = getelementptr inbounds i8, ptr %2461, i64 4
  store i32 %2432, ptr %2462, align 1
  %2463 = getelementptr inbounds i8, ptr %2461, i64 8
  store ptr %2422, ptr %2463, align 1
  %2464 = getelementptr inbounds i8, ptr %2461, i64 16
  store i32 0, ptr %2464, align 1
  %2465 = getelementptr inbounds i8, ptr %2461, i64 20
  store i32 1, ptr %2465, align 1
  %2466 = load i32, ptr %2389, align 4, !tbaa !52
  %2467 = add nsw i32 %2466, 24
  store i32 %2467, ptr %2389, align 4, !tbaa !52
  br label %2468

2468:                                             ; preds = %2430, %2457
  call fastcc void @mywrite(ptr noundef %43, ptr noundef nonnull %2422, i32 noundef %2432)
  br label %2469

2469:                                             ; preds = %2468, %2424, %2419
  %2470 = load ptr, ptr %2420, align 8, !tbaa !43
  %2471 = icmp eq ptr %2470, null
  br i1 %2471, label %2472, label %2419, !llvm.loop !392

2472:                                             ; preds = %2469, %2413, %2400
  %2473 = load ptr, ptr %2396, align 8, !tbaa !43
  %2474 = icmp eq ptr %2473, null
  br i1 %2474, label %2475, label %2395, !llvm.loop !393

2475:                                             ; preds = %2472, %2382
  %2476 = load i32, ptr %124, align 8, !tbaa !49
  %2477 = icmp eq i32 %2476, 0
  br i1 %2477, label %2478, label %2505

2478:                                             ; preds = %2475
  %2479 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %2480 = load i32, ptr %2479, align 4, !tbaa !52
  %2481 = icmp eq i32 %2480, 0
  br i1 %2481, label %2505, label %2482

2482:                                             ; preds = %2478
  %2483 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %2484 = load ptr, ptr %2483, align 8, !tbaa !53
  %2485 = icmp eq ptr %43, null
  br i1 %2485, label %2504, label %2486

2486:                                             ; preds = %2482
  %2487 = icmp eq ptr %2484, null
  %2488 = icmp slt i32 %2480, 1
  %2489 = or i1 %2488, %2487
  br i1 %2489, label %2504, label %2490

2490:                                             ; preds = %2486
  %2491 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %2492 = load ptr, ptr %2491, align 8, !tbaa !54
  %2493 = icmp eq ptr %2492, null
  br i1 %2493, label %2495, label %2494

2494:                                             ; preds = %2490
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %2492, ptr noundef %2484, i32 noundef %2480) #14
  br label %2504

2495:                                             ; preds = %2490
  %2496 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %2497 = load ptr, ptr %2496, align 8, !tbaa !55
  %2498 = getelementptr inbounds %struct.WriteWrap, ptr %2497, i64 0, i32 2
  %2499 = load ptr, ptr %2498, align 8, !tbaa !56
  %2500 = zext nneg i32 %2480 to i64
  %2501 = call i64 %2499(ptr noundef %2497, ptr noundef %2484, i64 noundef %2500) #14
  %2502 = icmp eq i64 %2501, %2500
  br i1 %2502, label %2504, label %2503

2503:                                             ; preds = %2495
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %2504

2504:                                             ; preds = %2482, %2486, %2494, %2495, %2503
  store i32 0, ptr %2479, align 4, !tbaa !52
  br label %2505

2505:                                             ; preds = %2475, %2478, %2504
  %2506 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 25
  %2507 = load ptr, ptr %2506, align 8, !tbaa !43
  %2508 = icmp eq ptr %2507, null
  br i1 %2508, label %2551, label %2509

2509:                                             ; preds = %2505
  %2510 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  br label %2511

2511:                                             ; preds = %2509, %2548
  %2512 = phi ptr [ %2507, %2509 ], [ %2549, %2548 ]
  %2513 = getelementptr inbounds %struct.ID, ptr %2512, i64 0, i32 6
  %2514 = load i32, ptr %2513, align 4, !tbaa !394
  %2515 = icmp sgt i32 %2514, 0
  br i1 %2515, label %2519, label %2516

2516:                                             ; preds = %2511
  %2517 = load ptr, ptr %2510, align 8, !tbaa !54
  %2518 = icmp eq ptr %2517, null
  br i1 %2518, label %2548, label %2519

2519:                                             ; preds = %2516, %2511
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 20311, ptr noundef nonnull @.str.141, i32 noundef 1, ptr noundef nonnull %2512, ptr noundef nonnull %2512)
  %2520 = getelementptr inbounds %struct.ID, ptr %2512, i64 0, i32 9
  %2521 = load ptr, ptr %2520, align 8, !tbaa !396
  %2522 = icmp eq ptr %2521, null
  br i1 %2522, label %2524, label %2523

2523:                                             ; preds = %2519
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %2521, ptr noundef nonnull %2521)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %2521, ptr noundef %43)
  br label %2524

2524:                                             ; preds = %2523, %2519
  %2525 = getelementptr inbounds %struct.World, ptr %2512, i64 0, i32 1
  %2526 = load ptr, ptr %2525, align 8, !tbaa !397
  %2527 = icmp eq ptr %2526, null
  br i1 %2527, label %2529, label %2528

2528:                                             ; preds = %2524
  call fastcc void @write_animdata(ptr noundef %43, ptr noundef nonnull %2526)
  br label %2529

2529:                                             ; preds = %2528, %2524
  br label %2530

2530:                                             ; preds = %2529, %2536
  %2531 = phi i64 [ %2537, %2536 ], [ 0, %2529 ]
  %2532 = getelementptr inbounds %struct.World, ptr %2512, i64 0, i32 70, i64 %2531
  %2533 = load ptr, ptr %2532, align 8, !tbaa !43
  %2534 = icmp eq ptr %2533, null
  br i1 %2534, label %2536, label %2535

2535:                                             ; preds = %2530
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.134, i32 noundef 1, ptr noundef nonnull %2533, ptr noundef nonnull %2533)
  br label %2536

2536:                                             ; preds = %2535, %2530
  %2537 = add nuw nsw i64 %2531, 1
  %2538 = icmp eq i64 %2537, 18
  br i1 %2538, label %2539, label %2530, !llvm.loop !398

2539:                                             ; preds = %2536
  %2540 = getelementptr inbounds %struct.World, ptr %2512, i64 0, i32 75
  %2541 = load ptr, ptr %2540, align 8, !tbaa !399
  %2542 = icmp eq ptr %2541, null
  br i1 %2542, label %2545, label %2543

2543:                                             ; preds = %2539
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.105, i32 noundef 1, ptr noundef nonnull %2541, ptr noundef nonnull %2541)
  %2544 = load ptr, ptr %2540, align 8, !tbaa !399
  call fastcc void @write_nodetree(ptr noundef %43, ptr noundef %2544)
  br label %2545

2545:                                             ; preds = %2543, %2539
  %2546 = getelementptr inbounds %struct.World, ptr %2512, i64 0, i32 74
  %2547 = load ptr, ptr %2546, align 8, !tbaa !400
  call fastcc void @write_previews(ptr noundef %43, ptr noundef %2547)
  br label %2548

2548:                                             ; preds = %2545, %2516
  %2549 = load ptr, ptr %2512, align 8, !tbaa !43
  %2550 = icmp eq ptr %2549, null
  br i1 %2550, label %2551, label %2511, !llvm.loop !401

2551:                                             ; preds = %2548, %2505
  %2552 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 29
  %2553 = load ptr, ptr %2552, align 8, !tbaa !43
  %2554 = icmp eq ptr %2553, null
  br i1 %2554, label %2699, label %2555

2555:                                             ; preds = %2551
  %2556 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %2557 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %2558 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %2559 = icmp eq ptr %43, null
  %2560 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %2561 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %2562 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %2563 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %2564 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %2565 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %2566 = icmp eq ptr %43, null
  %2567 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %2568 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %2569 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  br label %2570

2570:                                             ; preds = %2555, %2696
  %2571 = phi ptr [ %2553, %2555 ], [ %2697, %2696 ]
  %2572 = getelementptr inbounds %struct.Text, ptr %2571, i64 0, i32 2
  %2573 = load i32, ptr %2572, align 8, !tbaa !402
  %2574 = and i32 %2573, 12
  %2575 = icmp eq i32 %2574, 12
  br i1 %2575, label %2576, label %2578

2576:                                             ; preds = %2570
  %2577 = and i32 %2573, -9
  store i32 %2577, ptr %2572, align 8, !tbaa !402
  br label %2578

2578:                                             ; preds = %2576, %2570
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 22612, ptr noundef nonnull @.str.142, i32 noundef 1, ptr noundef nonnull %2571, ptr noundef nonnull %2571)
  %2579 = getelementptr inbounds %struct.Text, ptr %2571, i64 0, i32 1
  %2580 = load ptr, ptr %2579, align 8, !tbaa !405
  %2581 = icmp eq ptr %2580, null
  br i1 %2581, label %2625, label %2582

2582:                                             ; preds = %2578
  %2583 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2580) #16
  %2584 = trunc i64 %2583 to i32
  %2585 = icmp eq i32 %2584, -1
  br i1 %2585, label %2625, label %2586

2586:                                             ; preds = %2582
  %2587 = and i32 %2584, -4
  %2588 = add i32 %2587, 4
  %2589 = load i32, ptr %124, align 8, !tbaa !49
  %2590 = icmp eq i32 %2589, 0
  br i1 %2590, label %2591, label %2624

2591:                                             ; preds = %2586
  %2592 = load i32, ptr %2556, align 8, !tbaa !51
  %2593 = add nsw i32 %2592, 24
  store i32 %2593, ptr %2556, align 8, !tbaa !51
  %2594 = load i32, ptr %2557, align 4, !tbaa !52
  %2595 = icmp sgt i32 %2594, 99975
  br i1 %2595, label %2596, label %2613

2596:                                             ; preds = %2591
  %2597 = load ptr, ptr %2558, align 8, !tbaa !53
  %2598 = icmp eq ptr %2597, null
  %2599 = select i1 %2559, i1 true, i1 %2598
  br i1 %2599, label %2612, label %2600

2600:                                             ; preds = %2596
  %2601 = load ptr, ptr %2560, align 8, !tbaa !54
  %2602 = icmp eq ptr %2601, null
  br i1 %2602, label %2604, label %2603

2603:                                             ; preds = %2600
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %2601, ptr noundef nonnull %2597, i32 noundef %2594) #14
  br label %2612

2604:                                             ; preds = %2600
  %2605 = load ptr, ptr %2561, align 8, !tbaa !55
  %2606 = getelementptr inbounds %struct.WriteWrap, ptr %2605, i64 0, i32 2
  %2607 = load ptr, ptr %2606, align 8, !tbaa !56
  %2608 = zext nneg i32 %2594 to i64
  %2609 = call i64 %2607(ptr noundef %2605, ptr noundef nonnull %2597, i64 noundef %2608) #14
  %2610 = icmp eq i64 %2609, %2608
  br i1 %2610, label %2612, label %2611

2611:                                             ; preds = %2604
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %2612

2612:                                             ; preds = %2611, %2604, %2603, %2596
  store i32 0, ptr %2557, align 4, !tbaa !52
  br label %2613

2613:                                             ; preds = %2612, %2591
  %2614 = load ptr, ptr %2562, align 8, !tbaa !53
  %2615 = load i32, ptr %2557, align 4, !tbaa !52
  %2616 = sext i32 %2615 to i64
  %2617 = getelementptr inbounds i8, ptr %2614, i64 %2616
  store i32 1096040772, ptr %2617, align 1
  %2618 = getelementptr inbounds i8, ptr %2617, i64 4
  store i32 %2588, ptr %2618, align 1
  %2619 = getelementptr inbounds i8, ptr %2617, i64 8
  store ptr %2580, ptr %2619, align 1
  %2620 = getelementptr inbounds i8, ptr %2617, i64 16
  store i32 0, ptr %2620, align 1
  %2621 = getelementptr inbounds i8, ptr %2617, i64 20
  store i32 1, ptr %2621, align 1
  %2622 = load i32, ptr %2557, align 4, !tbaa !52
  %2623 = add nsw i32 %2622, 24
  store i32 %2623, ptr %2557, align 4, !tbaa !52
  br label %2624

2624:                                             ; preds = %2586, %2613
  call fastcc void @mywrite(ptr noundef %43, ptr noundef nonnull %2580, i32 noundef %2588)
  br label %2625

2625:                                             ; preds = %2624, %2582, %2578
  %2626 = getelementptr inbounds %struct.ID, ptr %2571, i64 0, i32 9
  %2627 = load ptr, ptr %2626, align 8, !tbaa !406
  %2628 = icmp eq ptr %2627, null
  br i1 %2628, label %2630, label %2629

2629:                                             ; preds = %2625
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %2627, ptr noundef nonnull %2627)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %2627, ptr noundef %43)
  br label %2630

2630:                                             ; preds = %2629, %2625
  %2631 = load i32, ptr %2572, align 8, !tbaa !402
  %2632 = and i32 %2631, 8
  %2633 = icmp eq i32 %2632, 0
  br i1 %2633, label %2634, label %2696

2634:                                             ; preds = %2630
  %2635 = getelementptr inbounds %struct.Text, ptr %2571, i64 0, i32 4
  %2636 = load ptr, ptr %2635, align 8, !tbaa !43
  %2637 = icmp eq ptr %2636, null
  br i1 %2637, label %2638, label %2641

2638:                                             ; preds = %2641, %2634
  %2639 = load ptr, ptr %2635, align 8, !tbaa !43
  %2640 = icmp eq ptr %2639, null
  br i1 %2640, label %2696, label %2645

2641:                                             ; preds = %2634, %2641
  %2642 = phi ptr [ %2643, %2641 ], [ %2636, %2634 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.143, i32 noundef 1, ptr noundef nonnull %2642, ptr noundef nonnull %2642)
  %2643 = load ptr, ptr %2642, align 8, !tbaa !43
  %2644 = icmp eq ptr %2643, null
  br i1 %2644, label %2638, label %2641, !llvm.loop !407

2645:                                             ; preds = %2638, %2693
  %2646 = phi ptr [ %2694, %2693 ], [ %2639, %2638 ]
  %2647 = getelementptr inbounds %struct.TextLine, ptr %2646, i64 0, i32 4
  %2648 = load i32, ptr %2647, align 8, !tbaa !408
  %2649 = getelementptr inbounds %struct.TextLine, ptr %2646, i64 0, i32 2
  %2650 = load ptr, ptr %2649, align 8, !tbaa !410
  %2651 = icmp eq ptr %2650, null
  %2652 = icmp eq i32 %2648, -1
  %2653 = or i1 %2652, %2651
  br i1 %2653, label %2693, label %2654

2654:                                             ; preds = %2645
  %2655 = and i32 %2648, -4
  %2656 = add nsw i32 %2655, 4
  %2657 = load i32, ptr %124, align 8, !tbaa !49
  %2658 = icmp eq i32 %2657, 0
  br i1 %2658, label %2659, label %2692

2659:                                             ; preds = %2654
  %2660 = load i32, ptr %2563, align 8, !tbaa !51
  %2661 = add nsw i32 %2660, 24
  store i32 %2661, ptr %2563, align 8, !tbaa !51
  %2662 = load i32, ptr %2564, align 4, !tbaa !52
  %2663 = icmp sgt i32 %2662, 99975
  br i1 %2663, label %2664, label %2681

2664:                                             ; preds = %2659
  %2665 = load ptr, ptr %2565, align 8, !tbaa !53
  %2666 = icmp eq ptr %2665, null
  %2667 = select i1 %2566, i1 true, i1 %2666
  br i1 %2667, label %2680, label %2668

2668:                                             ; preds = %2664
  %2669 = load ptr, ptr %2567, align 8, !tbaa !54
  %2670 = icmp eq ptr %2669, null
  br i1 %2670, label %2672, label %2671

2671:                                             ; preds = %2668
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %2669, ptr noundef nonnull %2665, i32 noundef %2662) #14
  br label %2680

2672:                                             ; preds = %2668
  %2673 = load ptr, ptr %2568, align 8, !tbaa !55
  %2674 = getelementptr inbounds %struct.WriteWrap, ptr %2673, i64 0, i32 2
  %2675 = load ptr, ptr %2674, align 8, !tbaa !56
  %2676 = zext nneg i32 %2662 to i64
  %2677 = call i64 %2675(ptr noundef %2673, ptr noundef nonnull %2665, i64 noundef %2676) #14
  %2678 = icmp eq i64 %2677, %2676
  br i1 %2678, label %2680, label %2679

2679:                                             ; preds = %2672
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %2680

2680:                                             ; preds = %2679, %2672, %2671, %2664
  store i32 0, ptr %2564, align 4, !tbaa !52
  br label %2681

2681:                                             ; preds = %2680, %2659
  %2682 = load ptr, ptr %2569, align 8, !tbaa !53
  %2683 = load i32, ptr %2564, align 4, !tbaa !52
  %2684 = sext i32 %2683 to i64
  %2685 = getelementptr inbounds i8, ptr %2682, i64 %2684
  store i32 1096040772, ptr %2685, align 1
  %2686 = getelementptr inbounds i8, ptr %2685, i64 4
  store i32 %2656, ptr %2686, align 1
  %2687 = getelementptr inbounds i8, ptr %2685, i64 8
  store ptr %2650, ptr %2687, align 1
  %2688 = getelementptr inbounds i8, ptr %2685, i64 16
  store i32 0, ptr %2688, align 1
  %2689 = getelementptr inbounds i8, ptr %2685, i64 20
  store i32 1, ptr %2689, align 1
  %2690 = load i32, ptr %2564, align 4, !tbaa !52
  %2691 = add nsw i32 %2690, 24
  store i32 %2691, ptr %2564, align 4, !tbaa !52
  br label %2692

2692:                                             ; preds = %2654, %2681
  call fastcc void @mywrite(ptr noundef %43, ptr noundef nonnull %2650, i32 noundef %2656)
  br label %2693

2693:                                             ; preds = %2645, %2692
  %2694 = load ptr, ptr %2646, align 8, !tbaa !43
  %2695 = icmp eq ptr %2694, null
  br i1 %2695, label %2696, label %2645, !llvm.loop !411

2696:                                             ; preds = %2693, %2638, %2630
  %2697 = load ptr, ptr %2571, align 8, !tbaa !43
  %2698 = icmp eq ptr %2697, null
  br i1 %2698, label %2699, label %2570, !llvm.loop !412

2699:                                             ; preds = %2696, %2551
  %2700 = load i32, ptr %124, align 8, !tbaa !49
  %2701 = icmp eq i32 %2700, 0
  br i1 %2701, label %2702, label %2729

2702:                                             ; preds = %2699
  %2703 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %2704 = load i32, ptr %2703, align 4, !tbaa !52
  %2705 = icmp eq i32 %2704, 0
  br i1 %2705, label %2729, label %2706

2706:                                             ; preds = %2702
  %2707 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %2708 = load ptr, ptr %2707, align 8, !tbaa !53
  %2709 = icmp eq ptr %43, null
  br i1 %2709, label %2728, label %2710

2710:                                             ; preds = %2706
  %2711 = icmp eq ptr %2708, null
  %2712 = icmp slt i32 %2704, 1
  %2713 = or i1 %2712, %2711
  br i1 %2713, label %2728, label %2714

2714:                                             ; preds = %2710
  %2715 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %2716 = load ptr, ptr %2715, align 8, !tbaa !54
  %2717 = icmp eq ptr %2716, null
  br i1 %2717, label %2719, label %2718

2718:                                             ; preds = %2714
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %2716, ptr noundef %2708, i32 noundef %2704) #14
  br label %2728

2719:                                             ; preds = %2714
  %2720 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %2721 = load ptr, ptr %2720, align 8, !tbaa !55
  %2722 = getelementptr inbounds %struct.WriteWrap, ptr %2721, i64 0, i32 2
  %2723 = load ptr, ptr %2722, align 8, !tbaa !56
  %2724 = zext nneg i32 %2704 to i64
  %2725 = call i64 %2723(ptr noundef %2721, ptr noundef %2708, i64 noundef %2724) #14
  %2726 = icmp eq i64 %2725, %2724
  br i1 %2726, label %2728, label %2727

2727:                                             ; preds = %2719
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %2728

2728:                                             ; preds = %2706, %2710, %2718, %2719, %2727
  store i32 0, ptr %2703, align 4, !tbaa !52
  br label %2729

2729:                                             ; preds = %2699, %2702, %2728
  %2730 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 30
  %2731 = load ptr, ptr %2730, align 8, !tbaa !43
  %2732 = icmp eq ptr %2731, null
  br i1 %2732, label %2756, label %2733

2733:                                             ; preds = %2729
  %2734 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  br label %2735

2735:                                             ; preds = %2733, %2753
  %2736 = phi ptr [ %2731, %2733 ], [ %2754, %2753 ]
  %2737 = getelementptr inbounds %struct.ID, ptr %2736, i64 0, i32 6
  %2738 = load i32, ptr %2737, align 4, !tbaa !413
  %2739 = icmp sgt i32 %2738, 0
  br i1 %2739, label %2743, label %2740

2740:                                             ; preds = %2735
  %2741 = load ptr, ptr %2734, align 8, !tbaa !54
  %2742 = icmp eq ptr %2741, null
  br i1 %2742, label %2753, label %2743

2743:                                             ; preds = %2740, %2735
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 19283, ptr noundef nonnull @.str.144, i32 noundef 1, ptr noundef nonnull %2736, ptr noundef nonnull %2736)
  %2744 = getelementptr inbounds %struct.ID, ptr %2736, i64 0, i32 9
  %2745 = load ptr, ptr %2744, align 8, !tbaa !415
  %2746 = icmp eq ptr %2745, null
  br i1 %2746, label %2748, label %2747

2747:                                             ; preds = %2743
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %2745, ptr noundef nonnull %2745)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %2745, ptr noundef %43)
  br label %2748

2748:                                             ; preds = %2747, %2743
  %2749 = getelementptr inbounds %struct.Speaker, ptr %2736, i64 0, i32 1
  %2750 = load ptr, ptr %2749, align 8, !tbaa !416
  %2751 = icmp eq ptr %2750, null
  br i1 %2751, label %2753, label %2752

2752:                                             ; preds = %2748
  call fastcc void @write_animdata(ptr noundef %43, ptr noundef nonnull %2750)
  br label %2753

2753:                                             ; preds = %2752, %2748, %2740
  %2754 = load ptr, ptr %2736, align 8, !tbaa !43
  %2755 = icmp eq ptr %2754, null
  br i1 %2755, label %2756, label %2735, !llvm.loop !417

2756:                                             ; preds = %2753, %2729
  %2757 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 31
  %2758 = load ptr, ptr %2757, align 8, !tbaa !43
  %2759 = icmp eq ptr %2758, null
  br i1 %2759, label %2835, label %2760

2760:                                             ; preds = %2756
  %2761 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %2762 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %2763 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %2764 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %2765 = icmp eq ptr %43, null
  %2766 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %2767 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %2768 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  br label %2769

2769:                                             ; preds = %2760, %2832
  %2770 = phi ptr [ %2758, %2760 ], [ %2833, %2832 ]
  %2771 = getelementptr inbounds %struct.ID, ptr %2770, i64 0, i32 6
  %2772 = load i32, ptr %2771, align 4, !tbaa !418
  %2773 = icmp sgt i32 %2772, 0
  br i1 %2773, label %2777, label %2774

2774:                                             ; preds = %2769
  %2775 = load ptr, ptr %2761, align 8, !tbaa !54
  %2776 = icmp eq ptr %2775, null
  br i1 %2776, label %2832, label %2777

2777:                                             ; preds = %2774, %2769
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 20307, ptr noundef nonnull @.str.145, i32 noundef 1, ptr noundef nonnull %2770, ptr noundef nonnull %2770)
  %2778 = getelementptr inbounds %struct.ID, ptr %2770, i64 0, i32 9
  %2779 = load ptr, ptr %2778, align 8, !tbaa !420
  %2780 = icmp eq ptr %2779, null
  br i1 %2780, label %2782, label %2781

2781:                                             ; preds = %2777
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %2779, ptr noundef nonnull %2779)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %2779, ptr noundef %43)
  br label %2782

2782:                                             ; preds = %2781, %2777
  %2783 = getelementptr inbounds %struct.bSound, ptr %2770, i64 0, i32 2
  %2784 = load ptr, ptr %2783, align 8, !tbaa !421
  %2785 = icmp eq ptr %2784, null
  br i1 %2785, label %2832, label %2786

2786:                                             ; preds = %2782
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.130, i32 noundef 1, ptr noundef nonnull %2784, ptr noundef nonnull %2784)
  %2787 = load i32, ptr %2784, align 8, !tbaa !346
  %2788 = getelementptr inbounds %struct.PackedFile, ptr %2784, i64 0, i32 2
  %2789 = load ptr, ptr %2788, align 8, !tbaa !348
  %2790 = icmp eq ptr %2789, null
  %2791 = icmp eq i32 %2787, 0
  %2792 = or i1 %2791, %2790
  br i1 %2792, label %2832, label %2793

2793:                                             ; preds = %2786
  %2794 = add nsw i32 %2787, 3
  %2795 = and i32 %2794, -4
  %2796 = load i32, ptr %124, align 8, !tbaa !49
  %2797 = icmp eq i32 %2796, 0
  br i1 %2797, label %2798, label %2831

2798:                                             ; preds = %2793
  %2799 = load i32, ptr %2762, align 8, !tbaa !51
  %2800 = add nsw i32 %2799, 24
  store i32 %2800, ptr %2762, align 8, !tbaa !51
  %2801 = load i32, ptr %2763, align 4, !tbaa !52
  %2802 = icmp sgt i32 %2801, 99975
  br i1 %2802, label %2803, label %2820

2803:                                             ; preds = %2798
  %2804 = load ptr, ptr %2764, align 8, !tbaa !53
  %2805 = icmp eq ptr %2804, null
  %2806 = select i1 %2765, i1 true, i1 %2805
  br i1 %2806, label %2819, label %2807

2807:                                             ; preds = %2803
  %2808 = load ptr, ptr %2766, align 8, !tbaa !54
  %2809 = icmp eq ptr %2808, null
  br i1 %2809, label %2811, label %2810

2810:                                             ; preds = %2807
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %2808, ptr noundef nonnull %2804, i32 noundef %2801) #14
  br label %2819

2811:                                             ; preds = %2807
  %2812 = load ptr, ptr %2767, align 8, !tbaa !55
  %2813 = getelementptr inbounds %struct.WriteWrap, ptr %2812, i64 0, i32 2
  %2814 = load ptr, ptr %2813, align 8, !tbaa !56
  %2815 = zext nneg i32 %2801 to i64
  %2816 = call i64 %2814(ptr noundef %2812, ptr noundef nonnull %2804, i64 noundef %2815) #14
  %2817 = icmp eq i64 %2816, %2815
  br i1 %2817, label %2819, label %2818

2818:                                             ; preds = %2811
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %2819

2819:                                             ; preds = %2818, %2811, %2810, %2803
  store i32 0, ptr %2763, align 4, !tbaa !52
  br label %2820

2820:                                             ; preds = %2819, %2798
  %2821 = load ptr, ptr %2768, align 8, !tbaa !53
  %2822 = load i32, ptr %2763, align 4, !tbaa !52
  %2823 = sext i32 %2822 to i64
  %2824 = getelementptr inbounds i8, ptr %2821, i64 %2823
  store i32 1096040772, ptr %2824, align 1
  %2825 = getelementptr inbounds i8, ptr %2824, i64 4
  store i32 %2795, ptr %2825, align 1
  %2826 = getelementptr inbounds i8, ptr %2824, i64 8
  store ptr %2789, ptr %2826, align 1
  %2827 = getelementptr inbounds i8, ptr %2824, i64 16
  store i32 0, ptr %2827, align 1
  %2828 = getelementptr inbounds i8, ptr %2824, i64 20
  store i32 1, ptr %2828, align 1
  %2829 = load i32, ptr %2763, align 4, !tbaa !52
  %2830 = add nsw i32 %2829, 24
  store i32 %2830, ptr %2763, align 4, !tbaa !52
  br label %2831

2831:                                             ; preds = %2793, %2820
  call fastcc void @mywrite(ptr noundef %43, ptr noundef nonnull %2789, i32 noundef %2795)
  br label %2832

2832:                                             ; preds = %2831, %2786, %2782, %2774
  %2833 = load ptr, ptr %2770, align 8, !tbaa !43
  %2834 = icmp eq ptr %2833, null
  br i1 %2834, label %2835, label %2769, !llvm.loop !422

2835:                                             ; preds = %2832, %2756
  %2836 = load i32, ptr %124, align 8, !tbaa !49
  %2837 = icmp eq i32 %2836, 0
  br i1 %2837, label %2838, label %2865

2838:                                             ; preds = %2835
  %2839 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %2840 = load i32, ptr %2839, align 4, !tbaa !52
  %2841 = icmp eq i32 %2840, 0
  br i1 %2841, label %2865, label %2842

2842:                                             ; preds = %2838
  %2843 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %2844 = load ptr, ptr %2843, align 8, !tbaa !53
  %2845 = icmp eq ptr %43, null
  br i1 %2845, label %2864, label %2846

2846:                                             ; preds = %2842
  %2847 = icmp eq ptr %2844, null
  %2848 = icmp slt i32 %2840, 1
  %2849 = or i1 %2848, %2847
  br i1 %2849, label %2864, label %2850

2850:                                             ; preds = %2846
  %2851 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %2852 = load ptr, ptr %2851, align 8, !tbaa !54
  %2853 = icmp eq ptr %2852, null
  br i1 %2853, label %2855, label %2854

2854:                                             ; preds = %2850
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %2852, ptr noundef %2844, i32 noundef %2840) #14
  br label %2864

2855:                                             ; preds = %2850
  %2856 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %2857 = load ptr, ptr %2856, align 8, !tbaa !55
  %2858 = getelementptr inbounds %struct.WriteWrap, ptr %2857, i64 0, i32 2
  %2859 = load ptr, ptr %2858, align 8, !tbaa !56
  %2860 = zext nneg i32 %2840 to i64
  %2861 = call i64 %2859(ptr noundef %2857, ptr noundef %2844, i64 noundef %2860) #14
  %2862 = icmp eq i64 %2861, %2860
  br i1 %2862, label %2864, label %2863

2863:                                             ; preds = %2855
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %2864

2864:                                             ; preds = %2842, %2846, %2854, %2855, %2863
  store i32 0, ptr %2839, align 4, !tbaa !52
  br label %2865

2865:                                             ; preds = %2835, %2838, %2864
  %2866 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 32
  %2867 = load ptr, ptr %2866, align 8, !tbaa !43
  %2868 = icmp eq ptr %2867, null
  br i1 %2868, label %2895, label %2869

2869:                                             ; preds = %2865
  %2870 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  br label %2871

2871:                                             ; preds = %2869, %2892
  %2872 = phi ptr [ %2867, %2869 ], [ %2893, %2892 ]
  %2873 = getelementptr inbounds %struct.ID, ptr %2872, i64 0, i32 6
  %2874 = load i32, ptr %2873, align 4, !tbaa !423
  %2875 = icmp sgt i32 %2874, 0
  br i1 %2875, label %2879, label %2876

2876:                                             ; preds = %2871
  %2877 = load ptr, ptr %2870, align 8, !tbaa !54
  %2878 = icmp eq ptr %2877, null
  br i1 %2878, label %2892, label %2879

2879:                                             ; preds = %2876, %2871
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 21063, ptr noundef nonnull @.str.146, i32 noundef 1, ptr noundef nonnull %2872, ptr noundef nonnull %2872)
  %2880 = getelementptr inbounds %struct.ID, ptr %2872, i64 0, i32 9
  %2881 = load ptr, ptr %2880, align 8, !tbaa !425
  %2882 = icmp eq ptr %2881, null
  br i1 %2882, label %2884, label %2883

2883:                                             ; preds = %2879
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %2881, ptr noundef nonnull %2881)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %2881, ptr noundef %43)
  br label %2884

2884:                                             ; preds = %2883, %2879
  %2885 = getelementptr inbounds %struct.Group, ptr %2872, i64 0, i32 1
  %2886 = load ptr, ptr %2885, align 8, !tbaa !43
  %2887 = icmp eq ptr %2886, null
  br i1 %2887, label %2892, label %2888

2888:                                             ; preds = %2884, %2888
  %2889 = phi ptr [ %2890, %2888 ], [ %2886, %2884 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.147, i32 noundef 1, ptr noundef nonnull %2889, ptr noundef nonnull %2889)
  %2890 = load ptr, ptr %2889, align 8, !tbaa !43
  %2891 = icmp eq ptr %2890, null
  br i1 %2891, label %2892, label %2888, !llvm.loop !426

2892:                                             ; preds = %2888, %2884, %2876
  %2893 = load ptr, ptr %2872, align 8, !tbaa !43
  %2894 = icmp eq ptr %2893, null
  br i1 %2894, label %2895, label %2871, !llvm.loop !427

2895:                                             ; preds = %2892, %2865
  %2896 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 33
  %2897 = load ptr, ptr %2896, align 8, !tbaa !43
  %2898 = icmp eq ptr %2897, null
  br i1 %2898, label %2930, label %2899

2899:                                             ; preds = %2895
  %2900 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  br label %2901

2901:                                             ; preds = %2899, %2927
  %2902 = phi ptr [ %2897, %2899 ], [ %2928, %2927 ]
  %2903 = getelementptr inbounds %struct.ID, ptr %2902, i64 0, i32 6
  %2904 = load i32, ptr %2903, align 4, !tbaa !428
  %2905 = icmp sgt i32 %2904, 0
  br i1 %2905, label %2909, label %2906

2906:                                             ; preds = %2901
  %2907 = load ptr, ptr %2900, align 8, !tbaa !54
  %2908 = icmp eq ptr %2907, null
  br i1 %2908, label %2927, label %2909

2909:                                             ; preds = %2906, %2901
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 21057, ptr noundef nonnull @.str.148, i32 noundef 1, ptr noundef nonnull %2902, ptr noundef nonnull %2902)
  %2910 = getelementptr inbounds %struct.ID, ptr %2902, i64 0, i32 9
  %2911 = load ptr, ptr %2910, align 8, !tbaa !430
  %2912 = icmp eq ptr %2911, null
  br i1 %2912, label %2914, label %2913

2913:                                             ; preds = %2909
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %2911, ptr noundef nonnull %2911)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %2911, ptr noundef %43)
  br label %2914

2914:                                             ; preds = %2913, %2909
  %2915 = getelementptr inbounds %struct.bArmature, ptr %2902, i64 0, i32 1
  %2916 = load ptr, ptr %2915, align 8, !tbaa !431
  %2917 = icmp eq ptr %2916, null
  br i1 %2917, label %2919, label %2918

2918:                                             ; preds = %2914
  call fastcc void @write_animdata(ptr noundef %43, ptr noundef nonnull %2916)
  br label %2919

2919:                                             ; preds = %2918, %2914
  %2920 = getelementptr inbounds %struct.bArmature, ptr %2902, i64 0, i32 2
  %2921 = load ptr, ptr %2920, align 8, !tbaa !43
  %2922 = icmp eq ptr %2921, null
  br i1 %2922, label %2927, label %2923

2923:                                             ; preds = %2919, %2923
  %2924 = phi ptr [ %2925, %2923 ], [ %2921, %2919 ]
  call fastcc void @write_bone(ptr noundef %43, ptr noundef nonnull %2924)
  %2925 = load ptr, ptr %2924, align 8, !tbaa !43
  %2926 = icmp eq ptr %2925, null
  br i1 %2926, label %2927, label %2923, !llvm.loop !432

2927:                                             ; preds = %2923, %2919, %2906
  %2928 = load ptr, ptr %2902, align 8, !tbaa !43
  %2929 = icmp eq ptr %2928, null
  br i1 %2929, label %2930, label %2901, !llvm.loop !433

2930:                                             ; preds = %2927, %2895
  %2931 = load i32, ptr %124, align 8, !tbaa !49
  %2932 = icmp eq i32 %2931, 0
  br i1 %2932, label %2933, label %2960

2933:                                             ; preds = %2930
  %2934 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %2935 = load i32, ptr %2934, align 4, !tbaa !52
  %2936 = icmp eq i32 %2935, 0
  br i1 %2936, label %2960, label %2937

2937:                                             ; preds = %2933
  %2938 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %2939 = load ptr, ptr %2938, align 8, !tbaa !53
  %2940 = icmp eq ptr %43, null
  br i1 %2940, label %2959, label %2941

2941:                                             ; preds = %2937
  %2942 = icmp eq ptr %2939, null
  %2943 = icmp slt i32 %2935, 1
  %2944 = or i1 %2943, %2942
  br i1 %2944, label %2959, label %2945

2945:                                             ; preds = %2941
  %2946 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %2947 = load ptr, ptr %2946, align 8, !tbaa !54
  %2948 = icmp eq ptr %2947, null
  br i1 %2948, label %2950, label %2949

2949:                                             ; preds = %2945
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %2947, ptr noundef %2939, i32 noundef %2935) #14
  br label %2959

2950:                                             ; preds = %2945
  %2951 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %2952 = load ptr, ptr %2951, align 8, !tbaa !55
  %2953 = getelementptr inbounds %struct.WriteWrap, ptr %2952, i64 0, i32 2
  %2954 = load ptr, ptr %2953, align 8, !tbaa !56
  %2955 = zext nneg i32 %2935 to i64
  %2956 = call i64 %2954(ptr noundef %2952, ptr noundef %2939, i64 noundef %2955) #14
  %2957 = icmp eq i64 %2956, %2955
  br i1 %2957, label %2959, label %2958

2958:                                             ; preds = %2950
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %2959

2959:                                             ; preds = %2937, %2941, %2949, %2950, %2958
  store i32 0, ptr %2934, align 4, !tbaa !52
  br label %2960

2960:                                             ; preds = %2930, %2933, %2959
  %2961 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 34
  %2962 = load ptr, ptr %2961, align 8, !tbaa !43
  %2963 = icmp eq ptr %2962, null
  br i1 %2963, label %2999, label %2964

2964:                                             ; preds = %2960
  %2965 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  br label %2966

2966:                                             ; preds = %2964, %2996
  %2967 = phi ptr [ %2962, %2964 ], [ %2997, %2996 ]
  %2968 = getelementptr inbounds %struct.ID, ptr %2967, i64 0, i32 6
  %2969 = load i32, ptr %2968, align 4, !tbaa !434
  %2970 = icmp sgt i32 %2969, 0
  br i1 %2970, label %2974, label %2971

2971:                                             ; preds = %2966
  %2972 = load ptr, ptr %2965, align 8, !tbaa !54
  %2973 = icmp eq ptr %2972, null
  br i1 %2973, label %2996, label %2974

2974:                                             ; preds = %2971, %2966
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 17217, ptr noundef nonnull @.str.150, i32 noundef 1, ptr noundef nonnull %2967, ptr noundef nonnull %2967)
  %2975 = getelementptr inbounds %struct.ID, ptr %2967, i64 0, i32 9
  %2976 = load ptr, ptr %2975, align 8, !tbaa !436
  %2977 = icmp eq ptr %2976, null
  br i1 %2977, label %2979, label %2978

2978:                                             ; preds = %2974
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %2976, ptr noundef nonnull %2976)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %2976, ptr noundef %43)
  br label %2979

2979:                                             ; preds = %2978, %2974
  %2980 = getelementptr inbounds %struct.bAction, ptr %2967, i64 0, i32 1
  call fastcc void @write_fcurves(ptr noundef %43, ptr noundef nonnull %2980)
  %2981 = getelementptr inbounds %struct.bAction, ptr %2967, i64 0, i32 3
  %2982 = load ptr, ptr %2981, align 8, !tbaa !43
  %2983 = icmp eq ptr %2982, null
  br i1 %2983, label %2988, label %2984

2984:                                             ; preds = %2979, %2984
  %2985 = phi ptr [ %2986, %2984 ], [ %2982, %2979 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.151, i32 noundef 1, ptr noundef nonnull %2985, ptr noundef nonnull %2985)
  %2986 = load ptr, ptr %2985, align 8, !tbaa !43
  %2987 = icmp eq ptr %2986, null
  br i1 %2987, label %2988, label %2984, !llvm.loop !437

2988:                                             ; preds = %2984, %2979
  %2989 = getelementptr inbounds %struct.bAction, ptr %2967, i64 0, i32 4
  %2990 = load ptr, ptr %2989, align 8, !tbaa !43
  %2991 = icmp eq ptr %2990, null
  br i1 %2991, label %2996, label %2992

2992:                                             ; preds = %2988, %2992
  %2993 = phi ptr [ %2994, %2992 ], [ %2990, %2988 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.100, i32 noundef 1, ptr noundef nonnull %2993, ptr noundef nonnull %2993)
  %2994 = load ptr, ptr %2993, align 8, !tbaa !43
  %2995 = icmp eq ptr %2994, null
  br i1 %2995, label %2996, label %2992, !llvm.loop !438

2996:                                             ; preds = %2992, %2988, %2971
  %2997 = load ptr, ptr %2967, align 8, !tbaa !43
  %2998 = icmp eq ptr %2997, null
  br i1 %2998, label %2999, label %2966, !llvm.loop !439

2999:                                             ; preds = %2996, %2960
  %3000 = load i32, ptr %124, align 8, !tbaa !49
  %3001 = icmp eq i32 %3000, 0
  br i1 %3001, label %3002, label %3029

3002:                                             ; preds = %2999
  %3003 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %3004 = load i32, ptr %3003, align 4, !tbaa !52
  %3005 = icmp eq i32 %3004, 0
  br i1 %3005, label %3029, label %3006

3006:                                             ; preds = %3002
  %3007 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %3008 = load ptr, ptr %3007, align 8, !tbaa !53
  %3009 = icmp eq ptr %43, null
  br i1 %3009, label %3028, label %3010

3010:                                             ; preds = %3006
  %3011 = icmp eq ptr %3008, null
  %3012 = icmp slt i32 %3004, 1
  %3013 = or i1 %3012, %3011
  br i1 %3013, label %3028, label %3014

3014:                                             ; preds = %3010
  %3015 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %3016 = load ptr, ptr %3015, align 8, !tbaa !54
  %3017 = icmp eq ptr %3016, null
  br i1 %3017, label %3019, label %3018

3018:                                             ; preds = %3014
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %3016, ptr noundef %3008, i32 noundef %3004) #14
  br label %3028

3019:                                             ; preds = %3014
  %3020 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %3021 = load ptr, ptr %3020, align 8, !tbaa !55
  %3022 = getelementptr inbounds %struct.WriteWrap, ptr %3021, i64 0, i32 2
  %3023 = load ptr, ptr %3022, align 8, !tbaa !56
  %3024 = zext nneg i32 %3004 to i64
  %3025 = call i64 %3023(ptr noundef %3021, ptr noundef %3008, i64 noundef %3024) #14
  %3026 = icmp eq i64 %3025, %3024
  br i1 %3026, label %3028, label %3027

3027:                                             ; preds = %3019
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %3028

3028:                                             ; preds = %3006, %3010, %3018, %3019, %3027
  store i32 0, ptr %3003, align 4, !tbaa !52
  br label %3029

3029:                                             ; preds = %2999, %3002, %3028
  %3030 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  %3031 = load ptr, ptr %3030, align 8, !tbaa !43
  %3032 = icmp eq ptr %3031, null
  br i1 %3032, label %4128, label %3033

3033:                                             ; preds = %3029
  %3034 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %3035 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %3036 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %3037 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %3038 = icmp eq ptr %43, null
  %3039 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %3040 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %3041 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %3042 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %3043 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %3044 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %3045 = icmp eq ptr %43, null
  %3046 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %3047 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %3048 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %3049 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %3050 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %3051 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %3052 = icmp eq ptr %43, null
  %3053 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %3054 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %3055 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %3056 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %3057 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %3058 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %3059 = icmp eq ptr %43, null
  %3060 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %3061 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %3062 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %3063 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %3064 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %3065 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %3066 = icmp eq ptr %43, null
  %3067 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %3068 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %3069 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %3070 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %3071 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %3072 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %3073 = icmp eq ptr %43, null
  %3074 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %3075 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %3076 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %3077 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %3078 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %3079 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %3080 = icmp eq ptr %43, null
  %3081 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %3082 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %3083 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %3084 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %3085 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %3086 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %3087 = icmp eq ptr %43, null
  %3088 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %3089 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %3090 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %3091 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %3092 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %3093 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %3094 = icmp eq ptr %43, null
  %3095 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %3096 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %3097 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %3098 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %3099 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %3100 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %3101 = icmp eq ptr %43, null
  %3102 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %3103 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %3104 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  br label %3105

3105:                                             ; preds = %3033, %4125
  %3106 = phi ptr [ %3031, %3033 ], [ %4126, %4125 ]
  %3107 = getelementptr inbounds %struct.ID, ptr %3106, i64 0, i32 6
  %3108 = load i32, ptr %3107, align 4, !tbaa !440
  %3109 = icmp sgt i32 %3108, 0
  br i1 %3109, label %3113, label %3110

3110:                                             ; preds = %3105
  %3111 = load ptr, ptr %3034, align 8, !tbaa !54
  %3112 = icmp eq ptr %3111, null
  br i1 %3112, label %4125, label %3113

3113:                                             ; preds = %3110, %3105
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 16975, ptr noundef nonnull @.str.152, i32 noundef 1, ptr noundef nonnull %3106, ptr noundef nonnull %3106)
  %3114 = getelementptr inbounds %struct.ID, ptr %3106, i64 0, i32 9
  %3115 = load ptr, ptr %3114, align 8, !tbaa !443
  %3116 = icmp eq ptr %3115, null
  br i1 %3116, label %3118, label %3117

3117:                                             ; preds = %3113
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %3115, ptr noundef nonnull %3115)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %3115, ptr noundef %43)
  br label %3118

3118:                                             ; preds = %3117, %3113
  %3119 = getelementptr inbounds %struct.Object, ptr %3106, i64 0, i32 1
  %3120 = load ptr, ptr %3119, align 8, !tbaa !444
  %3121 = icmp eq ptr %3120, null
  br i1 %3121, label %3123, label %3122

3122:                                             ; preds = %3118
  call fastcc void @write_animdata(ptr noundef %43, ptr noundef nonnull %3120)
  br label %3123

3123:                                             ; preds = %3122, %3118
  %3124 = getelementptr inbounds %struct.Object, ptr %3106, i64 0, i32 31
  %3125 = load i32, ptr %3124, align 8, !tbaa !445
  %3126 = shl i32 %3125, 3
  %3127 = getelementptr inbounds %struct.Object, ptr %3106, i64 0, i32 29
  %3128 = load ptr, ptr %3127, align 8, !tbaa !446
  %3129 = icmp eq ptr %3128, null
  %3130 = icmp eq i32 %3126, 0
  %3131 = or i1 %3130, %3129
  br i1 %3131, label %3169, label %3132

3132:                                             ; preds = %3123
  %3133 = load i32, ptr %124, align 8, !tbaa !49
  %3134 = icmp eq i32 %3133, 0
  br i1 %3134, label %3135, label %3168

3135:                                             ; preds = %3132
  %3136 = load i32, ptr %3035, align 8, !tbaa !51
  %3137 = add nsw i32 %3136, 24
  store i32 %3137, ptr %3035, align 8, !tbaa !51
  %3138 = load i32, ptr %3036, align 4, !tbaa !52
  %3139 = icmp sgt i32 %3138, 99975
  br i1 %3139, label %3140, label %3157

3140:                                             ; preds = %3135
  %3141 = load ptr, ptr %3037, align 8, !tbaa !53
  %3142 = icmp eq ptr %3141, null
  %3143 = select i1 %3038, i1 true, i1 %3142
  br i1 %3143, label %3156, label %3144

3144:                                             ; preds = %3140
  %3145 = load ptr, ptr %3039, align 8, !tbaa !54
  %3146 = icmp eq ptr %3145, null
  br i1 %3146, label %3148, label %3147

3147:                                             ; preds = %3144
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %3145, ptr noundef nonnull %3141, i32 noundef %3138) #14
  br label %3156

3148:                                             ; preds = %3144
  %3149 = load ptr, ptr %3040, align 8, !tbaa !55
  %3150 = getelementptr inbounds %struct.WriteWrap, ptr %3149, i64 0, i32 2
  %3151 = load ptr, ptr %3150, align 8, !tbaa !56
  %3152 = zext nneg i32 %3138 to i64
  %3153 = call i64 %3151(ptr noundef %3149, ptr noundef nonnull %3141, i64 noundef %3152) #14
  %3154 = icmp eq i64 %3153, %3152
  br i1 %3154, label %3156, label %3155

3155:                                             ; preds = %3148
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %3156

3156:                                             ; preds = %3155, %3148, %3147, %3140
  store i32 0, ptr %3036, align 4, !tbaa !52
  br label %3157

3157:                                             ; preds = %3156, %3135
  %3158 = load ptr, ptr %3041, align 8, !tbaa !53
  %3159 = load i32, ptr %3036, align 4, !tbaa !52
  %3160 = sext i32 %3159 to i64
  %3161 = getelementptr inbounds i8, ptr %3158, i64 %3160
  store i32 1096040772, ptr %3161, align 1
  %3162 = getelementptr inbounds i8, ptr %3161, i64 4
  store i32 %3126, ptr %3162, align 1
  %3163 = getelementptr inbounds i8, ptr %3161, i64 8
  store ptr %3128, ptr %3163, align 1
  %3164 = getelementptr inbounds i8, ptr %3161, i64 16
  store i32 0, ptr %3164, align 1
  %3165 = getelementptr inbounds i8, ptr %3161, i64 20
  store i32 1, ptr %3165, align 1
  %3166 = load i32, ptr %3036, align 4, !tbaa !52
  %3167 = add nsw i32 %3166, 24
  store i32 %3167, ptr %3036, align 4, !tbaa !52
  br label %3168

3168:                                             ; preds = %3132, %3157
  call fastcc void @mywrite(ptr noundef %43, ptr noundef nonnull %3128, i32 noundef %3126)
  br label %3169

3169:                                             ; preds = %3123, %3168
  %3170 = load i32, ptr %3124, align 8, !tbaa !445
  %3171 = getelementptr inbounds %struct.Object, ptr %3106, i64 0, i32 30
  %3172 = load ptr, ptr %3171, align 8, !tbaa !447
  %3173 = icmp eq ptr %3172, null
  %3174 = icmp eq i32 %3170, 0
  %3175 = or i1 %3174, %3173
  br i1 %3175, label %3215, label %3176

3176:                                             ; preds = %3169
  %3177 = add nsw i32 %3170, 3
  %3178 = and i32 %3177, -4
  %3179 = load i32, ptr %124, align 8, !tbaa !49
  %3180 = icmp eq i32 %3179, 0
  br i1 %3180, label %3181, label %3214

3181:                                             ; preds = %3176
  %3182 = load i32, ptr %3042, align 8, !tbaa !51
  %3183 = add nsw i32 %3182, 24
  store i32 %3183, ptr %3042, align 8, !tbaa !51
  %3184 = load i32, ptr %3043, align 4, !tbaa !52
  %3185 = icmp sgt i32 %3184, 99975
  br i1 %3185, label %3186, label %3203

3186:                                             ; preds = %3181
  %3187 = load ptr, ptr %3044, align 8, !tbaa !53
  %3188 = icmp eq ptr %3187, null
  %3189 = select i1 %3045, i1 true, i1 %3188
  br i1 %3189, label %3202, label %3190

3190:                                             ; preds = %3186
  %3191 = load ptr, ptr %3046, align 8, !tbaa !54
  %3192 = icmp eq ptr %3191, null
  br i1 %3192, label %3194, label %3193

3193:                                             ; preds = %3190
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %3191, ptr noundef nonnull %3187, i32 noundef %3184) #14
  br label %3202

3194:                                             ; preds = %3190
  %3195 = load ptr, ptr %3047, align 8, !tbaa !55
  %3196 = getelementptr inbounds %struct.WriteWrap, ptr %3195, i64 0, i32 2
  %3197 = load ptr, ptr %3196, align 8, !tbaa !56
  %3198 = zext nneg i32 %3184 to i64
  %3199 = call i64 %3197(ptr noundef %3195, ptr noundef nonnull %3187, i64 noundef %3198) #14
  %3200 = icmp eq i64 %3199, %3198
  br i1 %3200, label %3202, label %3201

3201:                                             ; preds = %3194
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %3202

3202:                                             ; preds = %3201, %3194, %3193, %3186
  store i32 0, ptr %3043, align 4, !tbaa !52
  br label %3203

3203:                                             ; preds = %3202, %3181
  %3204 = load ptr, ptr %3048, align 8, !tbaa !53
  %3205 = load i32, ptr %3043, align 4, !tbaa !52
  %3206 = sext i32 %3205 to i64
  %3207 = getelementptr inbounds i8, ptr %3204, i64 %3206
  store i32 1096040772, ptr %3207, align 1
  %3208 = getelementptr inbounds i8, ptr %3207, i64 4
  store i32 %3178, ptr %3208, align 1
  %3209 = getelementptr inbounds i8, ptr %3207, i64 8
  store ptr %3172, ptr %3209, align 1
  %3210 = getelementptr inbounds i8, ptr %3207, i64 16
  store i32 0, ptr %3210, align 1
  %3211 = getelementptr inbounds i8, ptr %3207, i64 20
  store i32 1, ptr %3211, align 1
  %3212 = load i32, ptr %3043, align 4, !tbaa !52
  %3213 = add nsw i32 %3212, 24
  store i32 %3213, ptr %3043, align 4, !tbaa !52
  br label %3214

3214:                                             ; preds = %3176, %3203
  call fastcc void @mywrite(ptr noundef %43, ptr noundef nonnull %3172, i32 noundef %3178)
  br label %3215

3215:                                             ; preds = %3169, %3214
  %3216 = getelementptr inbounds %struct.Object, ptr %3106, i64 0, i32 91
  %3217 = load ptr, ptr %3216, align 8, !tbaa !43
  %3218 = icmp eq ptr %3217, null
  br i1 %3218, label %3277, label %3219

3219:                                             ; preds = %3215, %3274
  %3220 = phi ptr [ %3275, %3274 ], [ %3217, %3215 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.161, i32 noundef 1, ptr noundef nonnull %3220, ptr noundef nonnull %3220)
  %3221 = getelementptr inbounds %struct.bProperty, ptr %3220, i64 0, i32 6
  %3222 = load ptr, ptr %3221, align 8, !tbaa !448
  %3223 = icmp eq ptr %3222, null
  %3224 = getelementptr inbounds %struct.bProperty, ptr %3220, i64 0, i32 5
  %3225 = icmp eq ptr %3222, %3224
  %3226 = select i1 %3223, i1 true, i1 %3225
  br i1 %3226, label %3274, label %3227

3227:                                             ; preds = %3219
  %3228 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !43
  %3229 = call i64 %3228(ptr noundef nonnull %3222) #14
  %3230 = trunc i64 %3229 to i32
  %3231 = load ptr, ptr %3221, align 8, !tbaa !448
  %3232 = icmp eq ptr %3231, null
  %3233 = icmp eq i32 %3230, 0
  %3234 = or i1 %3233, %3232
  br i1 %3234, label %3274, label %3235

3235:                                             ; preds = %3227
  %3236 = add nsw i32 %3230, 3
  %3237 = and i32 %3236, -4
  %3238 = load i32, ptr %124, align 8, !tbaa !49
  %3239 = icmp eq i32 %3238, 0
  br i1 %3239, label %3240, label %3273

3240:                                             ; preds = %3235
  %3241 = load i32, ptr %3049, align 8, !tbaa !51
  %3242 = add nsw i32 %3241, 24
  store i32 %3242, ptr %3049, align 8, !tbaa !51
  %3243 = load i32, ptr %3050, align 4, !tbaa !52
  %3244 = icmp sgt i32 %3243, 99975
  br i1 %3244, label %3245, label %3262

3245:                                             ; preds = %3240
  %3246 = load ptr, ptr %3051, align 8, !tbaa !53
  %3247 = icmp eq ptr %3246, null
  %3248 = select i1 %3052, i1 true, i1 %3247
  br i1 %3248, label %3261, label %3249

3249:                                             ; preds = %3245
  %3250 = load ptr, ptr %3053, align 8, !tbaa !54
  %3251 = icmp eq ptr %3250, null
  br i1 %3251, label %3253, label %3252

3252:                                             ; preds = %3249
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %3250, ptr noundef nonnull %3246, i32 noundef %3243) #14
  br label %3261

3253:                                             ; preds = %3249
  %3254 = load ptr, ptr %3054, align 8, !tbaa !55
  %3255 = getelementptr inbounds %struct.WriteWrap, ptr %3254, i64 0, i32 2
  %3256 = load ptr, ptr %3255, align 8, !tbaa !56
  %3257 = zext nneg i32 %3243 to i64
  %3258 = call i64 %3256(ptr noundef %3254, ptr noundef nonnull %3246, i64 noundef %3257) #14
  %3259 = icmp eq i64 %3258, %3257
  br i1 %3259, label %3261, label %3260

3260:                                             ; preds = %3253
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %3261

3261:                                             ; preds = %3260, %3253, %3252, %3245
  store i32 0, ptr %3050, align 4, !tbaa !52
  br label %3262

3262:                                             ; preds = %3261, %3240
  %3263 = load ptr, ptr %3055, align 8, !tbaa !53
  %3264 = load i32, ptr %3050, align 4, !tbaa !52
  %3265 = sext i32 %3264 to i64
  %3266 = getelementptr inbounds i8, ptr %3263, i64 %3265
  store i32 1096040772, ptr %3266, align 1
  %3267 = getelementptr inbounds i8, ptr %3266, i64 4
  store i32 %3237, ptr %3267, align 1
  %3268 = getelementptr inbounds i8, ptr %3266, i64 8
  store ptr %3231, ptr %3268, align 1
  %3269 = getelementptr inbounds i8, ptr %3266, i64 16
  store i32 0, ptr %3269, align 1
  %3270 = getelementptr inbounds i8, ptr %3266, i64 20
  store i32 1, ptr %3270, align 1
  %3271 = load i32, ptr %3050, align 4, !tbaa !52
  %3272 = add nsw i32 %3271, 24
  store i32 %3272, ptr %3050, align 4, !tbaa !52
  br label %3273

3273:                                             ; preds = %3235, %3262
  call fastcc void @mywrite(ptr noundef %43, ptr noundef nonnull %3231, i32 noundef %3237)
  br label %3274

3274:                                             ; preds = %3273, %3227, %3219
  %3275 = load ptr, ptr %3220, align 8, !tbaa !43
  %3276 = icmp eq ptr %3275, null
  br i1 %3276, label %3277, label %3219, !llvm.loop !450

3277:                                             ; preds = %3274, %3215
  %3278 = getelementptr inbounds %struct.Object, ptr %3106, i64 0, i32 92
  %3279 = load ptr, ptr %3278, align 8, !tbaa !43
  %3280 = icmp eq ptr %3279, null
  br i1 %3280, label %3374, label %3281

3281:                                             ; preds = %3277, %3371
  %3282 = phi ptr [ %3372, %3371 ], [ %3279, %3277 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.162, i32 noundef 1, ptr noundef nonnull %3282, ptr noundef nonnull %3282)
  %3283 = getelementptr inbounds %struct.bSensor, ptr %3282, i64 0, i32 7
  %3284 = load i16, ptr %3283, align 2, !tbaa !451
  %3285 = getelementptr inbounds %struct.bSensor, ptr %3282, i64 0, i32 12
  %3286 = load ptr, ptr %3285, align 8, !tbaa !453
  %3287 = icmp eq ptr %3286, null
  %3288 = icmp eq i16 %3284, 0
  %3289 = or i1 %3288, %3287
  br i1 %3289, label %3329, label %3290

3290:                                             ; preds = %3281
  %3291 = sext i16 %3284 to i32
  %3292 = shl nsw i32 %3291, 3
  %3293 = load i32, ptr %124, align 8, !tbaa !49
  %3294 = icmp eq i32 %3293, 0
  br i1 %3294, label %3295, label %3328

3295:                                             ; preds = %3290
  %3296 = load i32, ptr %3056, align 8, !tbaa !51
  %3297 = add nsw i32 %3296, 24
  store i32 %3297, ptr %3056, align 8, !tbaa !51
  %3298 = load i32, ptr %3057, align 4, !tbaa !52
  %3299 = icmp sgt i32 %3298, 99975
  br i1 %3299, label %3300, label %3317

3300:                                             ; preds = %3295
  %3301 = load ptr, ptr %3058, align 8, !tbaa !53
  %3302 = icmp eq ptr %3301, null
  %3303 = select i1 %3059, i1 true, i1 %3302
  br i1 %3303, label %3316, label %3304

3304:                                             ; preds = %3300
  %3305 = load ptr, ptr %3060, align 8, !tbaa !54
  %3306 = icmp eq ptr %3305, null
  br i1 %3306, label %3308, label %3307

3307:                                             ; preds = %3304
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %3305, ptr noundef nonnull %3301, i32 noundef %3298) #14
  br label %3316

3308:                                             ; preds = %3304
  %3309 = load ptr, ptr %3061, align 8, !tbaa !55
  %3310 = getelementptr inbounds %struct.WriteWrap, ptr %3309, i64 0, i32 2
  %3311 = load ptr, ptr %3310, align 8, !tbaa !56
  %3312 = zext nneg i32 %3298 to i64
  %3313 = call i64 %3311(ptr noundef %3309, ptr noundef nonnull %3301, i64 noundef %3312) #14
  %3314 = icmp eq i64 %3313, %3312
  br i1 %3314, label %3316, label %3315

3315:                                             ; preds = %3308
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %3316

3316:                                             ; preds = %3315, %3308, %3307, %3300
  store i32 0, ptr %3057, align 4, !tbaa !52
  br label %3317

3317:                                             ; preds = %3316, %3295
  %3318 = load ptr, ptr %3062, align 8, !tbaa !53
  %3319 = load i32, ptr %3057, align 4, !tbaa !52
  %3320 = sext i32 %3319 to i64
  %3321 = getelementptr inbounds i8, ptr %3318, i64 %3320
  store i32 1096040772, ptr %3321, align 1
  %3322 = getelementptr inbounds i8, ptr %3321, i64 4
  store i32 %3292, ptr %3322, align 1
  %3323 = getelementptr inbounds i8, ptr %3321, i64 8
  store ptr %3286, ptr %3323, align 1
  %3324 = getelementptr inbounds i8, ptr %3321, i64 16
  store i32 0, ptr %3324, align 1
  %3325 = getelementptr inbounds i8, ptr %3321, i64 20
  store i32 1, ptr %3325, align 1
  %3326 = load i32, ptr %3057, align 4, !tbaa !52
  %3327 = add nsw i32 %3326, 24
  store i32 %3327, ptr %3057, align 4, !tbaa !52
  br label %3328

3328:                                             ; preds = %3290, %3317
  call fastcc void @mywrite(ptr noundef %43, ptr noundef nonnull %3286, i32 noundef %3292)
  br label %3329

3329:                                             ; preds = %3281, %3328
  %3330 = getelementptr inbounds %struct.bSensor, ptr %3282, i64 0, i32 2
  %3331 = load i16, ptr %3330, align 8, !tbaa !454
  switch i16 %3331, label %3371 [
    i16 2, label %3332
    i16 5, label %3335
    i16 3, label %3338
    i16 4, label %3341
    i16 14, label %3344
    i16 12, label %3347
    i16 13, label %3350
    i16 6, label %3353
    i16 7, label %3356
    i16 8, label %3359
    i16 9, label %3362
    i16 10, label %3365
    i16 11, label %3368
  ]

3332:                                             ; preds = %3329
  %3333 = getelementptr inbounds %struct.bSensor, ptr %3282, i64 0, i32 11
  %3334 = load ptr, ptr %3333, align 8, !tbaa !455
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.163, i32 noundef 1, ptr noundef %3334, ptr noundef %3334)
  br label %3371

3335:                                             ; preds = %3329
  %3336 = getelementptr inbounds %struct.bSensor, ptr %3282, i64 0, i32 11
  %3337 = load ptr, ptr %3336, align 8, !tbaa !455
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.164, i32 noundef 1, ptr noundef %3337, ptr noundef %3337)
  br label %3371

3338:                                             ; preds = %3329
  %3339 = getelementptr inbounds %struct.bSensor, ptr %3282, i64 0, i32 11
  %3340 = load ptr, ptr %3339, align 8, !tbaa !455
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.165, i32 noundef 1, ptr noundef %3340, ptr noundef %3340)
  br label %3371

3341:                                             ; preds = %3329
  %3342 = getelementptr inbounds %struct.bSensor, ptr %3282, i64 0, i32 11
  %3343 = load ptr, ptr %3342, align 8, !tbaa !455
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.166, i32 noundef 1, ptr noundef %3343, ptr noundef %3343)
  br label %3371

3344:                                             ; preds = %3329
  %3345 = getelementptr inbounds %struct.bSensor, ptr %3282, i64 0, i32 11
  %3346 = load ptr, ptr %3345, align 8, !tbaa !455
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.167, i32 noundef 1, ptr noundef %3346, ptr noundef %3346)
  br label %3371

3347:                                             ; preds = %3329
  %3348 = getelementptr inbounds %struct.bSensor, ptr %3282, i64 0, i32 11
  %3349 = load ptr, ptr %3348, align 8, !tbaa !455
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.168, i32 noundef 1, ptr noundef %3349, ptr noundef %3349)
  br label %3371

3350:                                             ; preds = %3329
  %3351 = getelementptr inbounds %struct.bSensor, ptr %3282, i64 0, i32 11
  %3352 = load ptr, ptr %3351, align 8, !tbaa !455
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.169, i32 noundef 1, ptr noundef %3352, ptr noundef %3352)
  br label %3371

3353:                                             ; preds = %3329
  %3354 = getelementptr inbounds %struct.bSensor, ptr %3282, i64 0, i32 11
  %3355 = load ptr, ptr %3354, align 8, !tbaa !455
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.170, i32 noundef 1, ptr noundef %3355, ptr noundef %3355)
  br label %3371

3356:                                             ; preds = %3329
  %3357 = getelementptr inbounds %struct.bSensor, ptr %3282, i64 0, i32 11
  %3358 = load ptr, ptr %3357, align 8, !tbaa !455
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.171, i32 noundef 1, ptr noundef %3358, ptr noundef %3358)
  br label %3371

3359:                                             ; preds = %3329
  %3360 = getelementptr inbounds %struct.bSensor, ptr %3282, i64 0, i32 11
  %3361 = load ptr, ptr %3360, align 8, !tbaa !455
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.172, i32 noundef 1, ptr noundef %3361, ptr noundef %3361)
  br label %3371

3362:                                             ; preds = %3329
  %3363 = getelementptr inbounds %struct.bSensor, ptr %3282, i64 0, i32 11
  %3364 = load ptr, ptr %3363, align 8, !tbaa !455
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.173, i32 noundef 1, ptr noundef %3364, ptr noundef %3364)
  br label %3371

3365:                                             ; preds = %3329
  %3366 = getelementptr inbounds %struct.bSensor, ptr %3282, i64 0, i32 11
  %3367 = load ptr, ptr %3366, align 8, !tbaa !455
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.174, i32 noundef 1, ptr noundef %3367, ptr noundef %3367)
  br label %3371

3368:                                             ; preds = %3329
  %3369 = getelementptr inbounds %struct.bSensor, ptr %3282, i64 0, i32 11
  %3370 = load ptr, ptr %3369, align 8, !tbaa !455
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.175, i32 noundef 1, ptr noundef %3370, ptr noundef %3370)
  br label %3371

3371:                                             ; preds = %3368, %3365, %3362, %3359, %3356, %3353, %3350, %3347, %3344, %3341, %3338, %3335, %3332, %3329
  %3372 = load ptr, ptr %3282, align 8, !tbaa !43
  %3373 = icmp eq ptr %3372, null
  br i1 %3373, label %3374, label %3281, !llvm.loop !456

3374:                                             ; preds = %3371, %3277
  %3375 = getelementptr inbounds %struct.Object, ptr %3106, i64 0, i32 93
  %3376 = load ptr, ptr %3375, align 8, !tbaa !43
  %3377 = icmp eq ptr %3376, null
  br i1 %3377, label %3438, label %3378

3378:                                             ; preds = %3374, %3435
  %3379 = phi ptr [ %3436, %3435 ], [ %3376, %3374 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.176, i32 noundef 1, ptr noundef nonnull %3379, ptr noundef nonnull %3379)
  %3380 = getelementptr inbounds %struct.bController, ptr %3379, i64 0, i32 6
  %3381 = load i16, ptr %3380, align 2, !tbaa !457
  %3382 = getelementptr inbounds %struct.bController, ptr %3379, i64 0, i32 13
  %3383 = load ptr, ptr %3382, align 8, !tbaa !459
  %3384 = icmp eq ptr %3383, null
  %3385 = icmp eq i16 %3381, 0
  %3386 = or i1 %3385, %3384
  br i1 %3386, label %3426, label %3387

3387:                                             ; preds = %3378
  %3388 = sext i16 %3381 to i32
  %3389 = shl nsw i32 %3388, 3
  %3390 = load i32, ptr %124, align 8, !tbaa !49
  %3391 = icmp eq i32 %3390, 0
  br i1 %3391, label %3392, label %3425

3392:                                             ; preds = %3387
  %3393 = load i32, ptr %3063, align 8, !tbaa !51
  %3394 = add nsw i32 %3393, 24
  store i32 %3394, ptr %3063, align 8, !tbaa !51
  %3395 = load i32, ptr %3064, align 4, !tbaa !52
  %3396 = icmp sgt i32 %3395, 99975
  br i1 %3396, label %3397, label %3414

3397:                                             ; preds = %3392
  %3398 = load ptr, ptr %3065, align 8, !tbaa !53
  %3399 = icmp eq ptr %3398, null
  %3400 = select i1 %3066, i1 true, i1 %3399
  br i1 %3400, label %3413, label %3401

3401:                                             ; preds = %3397
  %3402 = load ptr, ptr %3067, align 8, !tbaa !54
  %3403 = icmp eq ptr %3402, null
  br i1 %3403, label %3405, label %3404

3404:                                             ; preds = %3401
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %3402, ptr noundef nonnull %3398, i32 noundef %3395) #14
  br label %3413

3405:                                             ; preds = %3401
  %3406 = load ptr, ptr %3068, align 8, !tbaa !55
  %3407 = getelementptr inbounds %struct.WriteWrap, ptr %3406, i64 0, i32 2
  %3408 = load ptr, ptr %3407, align 8, !tbaa !56
  %3409 = zext nneg i32 %3395 to i64
  %3410 = call i64 %3408(ptr noundef %3406, ptr noundef nonnull %3398, i64 noundef %3409) #14
  %3411 = icmp eq i64 %3410, %3409
  br i1 %3411, label %3413, label %3412

3412:                                             ; preds = %3405
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %3413

3413:                                             ; preds = %3412, %3405, %3404, %3397
  store i32 0, ptr %3064, align 4, !tbaa !52
  br label %3414

3414:                                             ; preds = %3413, %3392
  %3415 = load ptr, ptr %3069, align 8, !tbaa !53
  %3416 = load i32, ptr %3064, align 4, !tbaa !52
  %3417 = sext i32 %3416 to i64
  %3418 = getelementptr inbounds i8, ptr %3415, i64 %3417
  store i32 1096040772, ptr %3418, align 1
  %3419 = getelementptr inbounds i8, ptr %3418, i64 4
  store i32 %3389, ptr %3419, align 1
  %3420 = getelementptr inbounds i8, ptr %3418, i64 8
  store ptr %3383, ptr %3420, align 1
  %3421 = getelementptr inbounds i8, ptr %3418, i64 16
  store i32 0, ptr %3421, align 1
  %3422 = getelementptr inbounds i8, ptr %3418, i64 20
  store i32 1, ptr %3422, align 1
  %3423 = load i32, ptr %3064, align 4, !tbaa !52
  %3424 = add nsw i32 %3423, 24
  store i32 %3424, ptr %3064, align 4, !tbaa !52
  br label %3425

3425:                                             ; preds = %3387, %3414
  call fastcc void @mywrite(ptr noundef %43, ptr noundef nonnull %3383, i32 noundef %3389)
  br label %3426

3426:                                             ; preds = %3378, %3425
  %3427 = getelementptr inbounds %struct.bController, ptr %3379, i64 0, i32 3
  %3428 = load i16, ptr %3427, align 8, !tbaa !460
  switch i16 %3428, label %3435 [
    i16 2, label %3429
    i16 3, label %3432
  ]

3429:                                             ; preds = %3426
  %3430 = getelementptr inbounds %struct.bController, ptr %3379, i64 0, i32 12
  %3431 = load ptr, ptr %3430, align 8, !tbaa !461
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.177, i32 noundef 1, ptr noundef %3431, ptr noundef %3431)
  br label %3435

3432:                                             ; preds = %3426
  %3433 = getelementptr inbounds %struct.bController, ptr %3379, i64 0, i32 12
  %3434 = load ptr, ptr %3433, align 8, !tbaa !461
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.178, i32 noundef 1, ptr noundef %3434, ptr noundef %3434)
  br label %3435

3435:                                             ; preds = %3432, %3429, %3426
  %3436 = load ptr, ptr %3379, align 8, !tbaa !43
  %3437 = icmp eq ptr %3436, null
  br i1 %3437, label %3438, label %3378, !llvm.loop !462

3438:                                             ; preds = %3435, %3374
  %3439 = getelementptr inbounds %struct.Object, ptr %3106, i64 0, i32 94
  %3440 = load ptr, ptr %3439, align 8, !tbaa !43
  %3441 = icmp eq ptr %3440, null
  br i1 %3441, label %3509, label %3442

3442:                                             ; preds = %3438, %3506
  %3443 = phi ptr [ %3507, %3506 ], [ %3440, %3438 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.179, i32 noundef 1, ptr noundef nonnull %3443, ptr noundef nonnull %3443)
  %3444 = getelementptr inbounds %struct.bActuator, ptr %3443, i64 0, i32 3
  %3445 = load i16, ptr %3444, align 8, !tbaa !463
  switch i16 %3445, label %3506 [
    i16 15, label %3446
    i16 21, label %3446
    i16 5, label %3449
    i16 0, label %3452
    i16 1, label %3455
    i16 6, label %3458
    i16 3, label %3461
    i16 9, label %3464
    i16 10, label %3467
    i16 11, label %3470
    i16 12, label %3473
    i16 13, label %3476
    i16 14, label %3479
    i16 17, label %3482
    i16 18, label %3485
    i16 19, label %3488
    i16 20, label %3491
    i16 22, label %3494
    i16 23, label %3497
    i16 24, label %3500
    i16 25, label %3503
  ]

3446:                                             ; preds = %3442, %3442
  %3447 = getelementptr inbounds %struct.bActuator, ptr %3443, i64 0, i32 8
  %3448 = load ptr, ptr %3447, align 8, !tbaa !465
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.180, i32 noundef 1, ptr noundef %3448, ptr noundef %3448)
  br label %3506

3449:                                             ; preds = %3442
  %3450 = getelementptr inbounds %struct.bActuator, ptr %3443, i64 0, i32 8
  %3451 = load ptr, ptr %3450, align 8, !tbaa !465
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.181, i32 noundef 1, ptr noundef %3451, ptr noundef %3451)
  br label %3506

3452:                                             ; preds = %3442
  %3453 = getelementptr inbounds %struct.bActuator, ptr %3443, i64 0, i32 8
  %3454 = load ptr, ptr %3453, align 8, !tbaa !465
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.182, i32 noundef 1, ptr noundef %3454, ptr noundef %3454)
  br label %3506

3455:                                             ; preds = %3442
  %3456 = getelementptr inbounds %struct.bActuator, ptr %3443, i64 0, i32 8
  %3457 = load ptr, ptr %3456, align 8, !tbaa !465
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.183, i32 noundef 1, ptr noundef %3457, ptr noundef %3457)
  br label %3506

3458:                                             ; preds = %3442
  %3459 = getelementptr inbounds %struct.bActuator, ptr %3443, i64 0, i32 8
  %3460 = load ptr, ptr %3459, align 8, !tbaa !465
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.184, i32 noundef 1, ptr noundef %3460, ptr noundef %3460)
  br label %3506

3461:                                             ; preds = %3442
  %3462 = getelementptr inbounds %struct.bActuator, ptr %3443, i64 0, i32 8
  %3463 = load ptr, ptr %3462, align 8, !tbaa !465
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.185, i32 noundef 1, ptr noundef %3463, ptr noundef %3463)
  br label %3506

3464:                                             ; preds = %3442
  %3465 = getelementptr inbounds %struct.bActuator, ptr %3443, i64 0, i32 8
  %3466 = load ptr, ptr %3465, align 8, !tbaa !465
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.186, i32 noundef 1, ptr noundef %3466, ptr noundef %3466)
  br label %3506

3467:                                             ; preds = %3442
  %3468 = getelementptr inbounds %struct.bActuator, ptr %3443, i64 0, i32 8
  %3469 = load ptr, ptr %3468, align 8, !tbaa !465
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.187, i32 noundef 1, ptr noundef %3469, ptr noundef %3469)
  br label %3506

3470:                                             ; preds = %3442
  %3471 = getelementptr inbounds %struct.bActuator, ptr %3443, i64 0, i32 8
  %3472 = load ptr, ptr %3471, align 8, !tbaa !465
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.188, i32 noundef 1, ptr noundef %3472, ptr noundef %3472)
  br label %3506

3473:                                             ; preds = %3442
  %3474 = getelementptr inbounds %struct.bActuator, ptr %3443, i64 0, i32 8
  %3475 = load ptr, ptr %3474, align 8, !tbaa !465
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.189, i32 noundef 1, ptr noundef %3475, ptr noundef %3475)
  br label %3506

3476:                                             ; preds = %3442
  %3477 = getelementptr inbounds %struct.bActuator, ptr %3443, i64 0, i32 8
  %3478 = load ptr, ptr %3477, align 8, !tbaa !465
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.190, i32 noundef 1, ptr noundef %3478, ptr noundef %3478)
  br label %3506

3479:                                             ; preds = %3442
  %3480 = getelementptr inbounds %struct.bActuator, ptr %3443, i64 0, i32 8
  %3481 = load ptr, ptr %3480, align 8, !tbaa !465
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.191, i32 noundef 1, ptr noundef %3481, ptr noundef %3481)
  br label %3506

3482:                                             ; preds = %3442
  %3483 = getelementptr inbounds %struct.bActuator, ptr %3443, i64 0, i32 8
  %3484 = load ptr, ptr %3483, align 8, !tbaa !465
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.192, i32 noundef 1, ptr noundef %3484, ptr noundef %3484)
  br label %3506

3485:                                             ; preds = %3442
  %3486 = getelementptr inbounds %struct.bActuator, ptr %3443, i64 0, i32 8
  %3487 = load ptr, ptr %3486, align 8, !tbaa !465
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.193, i32 noundef 1, ptr noundef %3487, ptr noundef %3487)
  br label %3506

3488:                                             ; preds = %3442
  %3489 = getelementptr inbounds %struct.bActuator, ptr %3443, i64 0, i32 8
  %3490 = load ptr, ptr %3489, align 8, !tbaa !465
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.194, i32 noundef 1, ptr noundef %3490, ptr noundef %3490)
  br label %3506

3491:                                             ; preds = %3442
  %3492 = getelementptr inbounds %struct.bActuator, ptr %3443, i64 0, i32 8
  %3493 = load ptr, ptr %3492, align 8, !tbaa !465
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.195, i32 noundef 1, ptr noundef %3493, ptr noundef %3493)
  br label %3506

3494:                                             ; preds = %3442
  %3495 = getelementptr inbounds %struct.bActuator, ptr %3443, i64 0, i32 8
  %3496 = load ptr, ptr %3495, align 8, !tbaa !465
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.196, i32 noundef 1, ptr noundef %3496, ptr noundef %3496)
  br label %3506

3497:                                             ; preds = %3442
  %3498 = getelementptr inbounds %struct.bActuator, ptr %3443, i64 0, i32 8
  %3499 = load ptr, ptr %3498, align 8, !tbaa !465
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.197, i32 noundef 1, ptr noundef %3499, ptr noundef %3499)
  br label %3506

3500:                                             ; preds = %3442
  %3501 = getelementptr inbounds %struct.bActuator, ptr %3443, i64 0, i32 8
  %3502 = load ptr, ptr %3501, align 8, !tbaa !465
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.198, i32 noundef 1, ptr noundef %3502, ptr noundef %3502)
  br label %3506

3503:                                             ; preds = %3442
  %3504 = getelementptr inbounds %struct.bActuator, ptr %3443, i64 0, i32 8
  %3505 = load ptr, ptr %3504, align 8, !tbaa !465
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.199, i32 noundef 1, ptr noundef %3505, ptr noundef %3505)
  br label %3506

3506:                                             ; preds = %3503, %3500, %3497, %3494, %3491, %3488, %3485, %3482, %3479, %3476, %3473, %3470, %3467, %3464, %3461, %3458, %3455, %3452, %3449, %3446, %3442
  %3507 = load ptr, ptr %3443, align 8, !tbaa !43
  %3508 = icmp eq ptr %3507, null
  br i1 %3508, label %3509, label %3442, !llvm.loop !466

3509:                                             ; preds = %3506, %3438
  %3510 = getelementptr inbounds %struct.Object, ptr %3106, i64 0, i32 3
  %3511 = load i16, ptr %3510, align 8, !tbaa !467
  %3512 = icmp eq i16 %3511, 25
  br i1 %3512, label %3513, label %3529

3513:                                             ; preds = %3509
  %3514 = getelementptr inbounds %struct.Object, ptr %3106, i64 0, i32 19
  %3515 = load ptr, ptr %3514, align 8, !tbaa !468
  %3516 = icmp eq ptr %3515, null
  br i1 %3516, label %3529, label %3517

3517:                                             ; preds = %3513
  %3518 = getelementptr inbounds %struct.Object, ptr %3106, i64 0, i32 18
  %3519 = load ptr, ptr %3518, align 8, !tbaa !469
  %3520 = icmp eq ptr %3519, null
  br i1 %3520, label %3529, label %3521

3521:                                             ; preds = %3517
  %3522 = getelementptr inbounds %struct.bArmature, ptr %3515, i64 0, i32 5
  %3523 = load ptr, ptr %3522, align 8, !tbaa !470
  %3524 = icmp eq ptr %3523, null
  br i1 %3524, label %3529, label %3525

3525:                                             ; preds = %3521
  %3526 = getelementptr inbounds %struct.bPose, ptr %3519, i64 0, i32 15
  %3527 = getelementptr inbounds %struct.Bone, ptr %3523, i64 0, i32 5
  %3528 = call ptr @BLI_strncpy(ptr noundef nonnull %3526, ptr noundef nonnull %3527, i64 noundef 64) #14
  br label %3529

3529:                                             ; preds = %3525, %3521, %3517, %3513, %3509
  %3530 = getelementptr inbounds %struct.Object, ptr %3106, i64 0, i32 18
  %3531 = load ptr, ptr %3530, align 8, !tbaa !469
  %3532 = icmp eq ptr %3531, null
  br i1 %3532, label %3582, label %3533

3533:                                             ; preds = %3529
  %3534 = load ptr, ptr %3531, align 8, !tbaa !43
  %3535 = icmp eq ptr %3534, null
  br i1 %3535, label %3564, label %3536

3536:                                             ; preds = %3533, %3561
  %3537 = phi ptr [ %3562, %3561 ], [ %3534, %3533 ]
  %3538 = getelementptr inbounds %struct.bPoseChannel, ptr %3537, i64 0, i32 2
  %3539 = load ptr, ptr %3538, align 8, !tbaa !471
  %3540 = icmp eq ptr %3539, null
  br i1 %3540, label %3542, label %3541

3541:                                             ; preds = %3536
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %3539, ptr noundef nonnull %3539)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %3539, ptr noundef %43)
  br label %3542

3542:                                             ; preds = %3541, %3536
  %3543 = getelementptr inbounds %struct.bPoseChannel, ptr %3537, i64 0, i32 3
  call fastcc void @write_constraints(ptr noundef %43, ptr noundef nonnull %3543)
  %3544 = getelementptr inbounds %struct.bPoseChannel, ptr %3537, i64 0, i32 17
  %3545 = load ptr, ptr %3544, align 8, !tbaa !473
  %3546 = icmp eq ptr %3545, null
  br i1 %3546, label %3551, label %3547

3547:                                             ; preds = %3542
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.205, i32 noundef 1, ptr noundef nonnull %3545, ptr noundef nonnull %3545)
  %3548 = getelementptr inbounds %struct.bMotionPath, ptr %3545, i64 0, i32 1
  %3549 = load i32, ptr %3548, align 8, !tbaa !474
  %3550 = load ptr, ptr %3545, align 8, !tbaa !476
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.206, i32 noundef %3549, ptr noundef %3550, ptr noundef %3550)
  br label %3551

3551:                                             ; preds = %3542, %3547
  %3552 = getelementptr inbounds %struct.bPoseChannel, ptr %3537, i64 0, i32 12
  %3553 = load ptr, ptr %3552, align 8, !tbaa !477
  %3554 = icmp eq ptr %3553, null
  br i1 %3554, label %3561, label %3555

3555:                                             ; preds = %3551
  %3556 = getelementptr inbounds %struct.Bone, ptr %3553, i64 0, i32 10
  %3557 = load i32, ptr %3556, align 8, !tbaa !478
  %3558 = trunc i32 %3557 to i8
  %3559 = and i8 %3558, 1
  %3560 = getelementptr inbounds %struct.bPoseChannel, ptr %3537, i64 0, i32 10
  store i8 %3559, ptr %3560, align 1, !tbaa !480
  br label %3561

3561:                                             ; preds = %3555, %3551
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.200, i32 noundef 1, ptr noundef nonnull %3537, ptr noundef nonnull %3537)
  %3562 = load ptr, ptr %3537, align 8, !tbaa !43
  %3563 = icmp eq ptr %3562, null
  br i1 %3563, label %3564, label %3536, !llvm.loop !481

3564:                                             ; preds = %3561, %3533
  %3565 = getelementptr inbounds %struct.bPose, ptr %3531, i64 0, i32 9
  %3566 = load ptr, ptr %3565, align 8, !tbaa !43
  %3567 = icmp eq ptr %3566, null
  br i1 %3567, label %3572, label %3568

3568:                                             ; preds = %3564, %3568
  %3569 = phi ptr [ %3570, %3568 ], [ %3566, %3564 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.151, i32 noundef 1, ptr noundef nonnull %3569, ptr noundef nonnull %3569)
  %3570 = load ptr, ptr %3569, align 8, !tbaa !43
  %3571 = icmp eq ptr %3570, null
  br i1 %3571, label %3572, label %3568, !llvm.loop !482

3572:                                             ; preds = %3568, %3564
  %3573 = getelementptr inbounds %struct.bPose, ptr %3531, i64 0, i32 13
  %3574 = load ptr, ptr %3573, align 8, !tbaa !483
  %3575 = icmp eq ptr %3574, null
  br i1 %3575, label %3581, label %3576

3576:                                             ; preds = %3572
  %3577 = call ptr @BKE_pose_ikparam_get_name(ptr noundef nonnull %3531) #14
  %3578 = icmp eq ptr %3577, null
  br i1 %3578, label %3581, label %3579

3579:                                             ; preds = %3576
  %3580 = load ptr, ptr %3573, align 8, !tbaa !483
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull %3577, i32 noundef 1, ptr noundef %3580, ptr noundef %3580)
  br label %3581

3581:                                             ; preds = %3579, %3576, %3572
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.201, i32 noundef 1, ptr noundef nonnull %3531, ptr noundef nonnull %3531)
  br label %3582

3582:                                             ; preds = %3581, %3529
  %3583 = getelementptr inbounds %struct.Object, ptr %3106, i64 0, i32 25
  %3584 = load ptr, ptr %3583, align 8, !tbaa !43
  %3585 = icmp eq ptr %3584, null
  br i1 %3585, label %3590, label %3586

3586:                                             ; preds = %3582, %3586
  %3587 = phi ptr [ %3588, %3586 ], [ %3584, %3582 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.202, i32 noundef 1, ptr noundef nonnull %3587, ptr noundef nonnull %3587)
  %3588 = load ptr, ptr %3587, align 8, !tbaa !43
  %3589 = icmp eq ptr %3588, null
  br i1 %3589, label %3590, label %3586, !llvm.loop !485

3590:                                             ; preds = %3586, %3582
  %3591 = getelementptr inbounds %struct.Object, ptr %3106, i64 0, i32 106
  call fastcc void @write_constraints(ptr noundef %43, ptr noundef nonnull %3591)
  %3592 = getelementptr inbounds %struct.Object, ptr %3106, i64 0, i32 22
  %3593 = load ptr, ptr %3592, align 8, !tbaa !486
  %3594 = icmp eq ptr %3593, null
  br i1 %3594, label %3599, label %3595

3595:                                             ; preds = %3590
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.205, i32 noundef 1, ptr noundef nonnull %3593, ptr noundef nonnull %3593)
  %3596 = getelementptr inbounds %struct.bMotionPath, ptr %3593, i64 0, i32 1
  %3597 = load i32, ptr %3596, align 8, !tbaa !474
  %3598 = load ptr, ptr %3593, align 8, !tbaa !476
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.206, i32 noundef %3597, ptr noundef %3598, ptr noundef %3598)
  br label %3599

3599:                                             ; preds = %3590, %3595
  %3600 = getelementptr inbounds %struct.Object, ptr %3106, i64 0, i32 110
  %3601 = load ptr, ptr %3600, align 8, !tbaa !487
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.153, i32 noundef 1, ptr noundef %3601, ptr noundef %3601)
  %3602 = getelementptr inbounds %struct.Object, ptr %3106, i64 0, i32 111
  %3603 = load ptr, ptr %3602, align 8, !tbaa !488
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.154, i32 noundef 1, ptr noundef %3603, ptr noundef %3603)
  %3604 = load ptr, ptr %3602, align 8, !tbaa !488
  %3605 = icmp eq ptr %3604, null
  br i1 %3605, label %3611, label %3606

3606:                                             ; preds = %3599
  %3607 = getelementptr inbounds %struct.SoftBody, ptr %3604, i64 0, i32 48
  call fastcc void @write_pointcaches(ptr noundef %43, ptr noundef nonnull %3607)
  %3608 = load ptr, ptr %3602, align 8, !tbaa !488
  %3609 = getelementptr inbounds %struct.SoftBody, ptr %3608, i64 0, i32 49
  %3610 = load ptr, ptr %3609, align 8, !tbaa !489
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.107, i32 noundef 1, ptr noundef %3610, ptr noundef %3610)
  br label %3611

3611:                                             ; preds = %3606, %3599
  %3612 = getelementptr inbounds %struct.Object, ptr %3106, i64 0, i32 101
  %3613 = load ptr, ptr %3612, align 8, !tbaa !491
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.155, i32 noundef 1, ptr noundef %3613, ptr noundef %3613)
  %3614 = getelementptr inbounds %struct.Object, ptr %3106, i64 0, i32 128
  %3615 = load ptr, ptr %3614, align 8, !tbaa !492
  %3616 = icmp eq ptr %3615, null
  br i1 %3616, label %3618, label %3617

3617:                                             ; preds = %3611
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.156, i32 noundef 1, ptr noundef nonnull %3615, ptr noundef nonnull %3615)
  br label %3618

3618:                                             ; preds = %3617, %3611
  %3619 = getelementptr inbounds %struct.Object, ptr %3106, i64 0, i32 129
  %3620 = load ptr, ptr %3619, align 8, !tbaa !493
  %3621 = icmp eq ptr %3620, null
  br i1 %3621, label %3623, label %3622

3622:                                             ; preds = %3618
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.157, i32 noundef 1, ptr noundef nonnull %3620, ptr noundef nonnull %3620)
  br label %3623

3623:                                             ; preds = %3622, %3618
  %3624 = load i16, ptr %3510, align 8, !tbaa !467
  %3625 = icmp eq i16 %3624, 0
  br i1 %3625, label %3626, label %3633

3626:                                             ; preds = %3623
  %3627 = getelementptr inbounds %struct.Object, ptr %3106, i64 0, i32 88
  %3628 = load i8, ptr %3627, align 1, !tbaa !494
  %3629 = icmp eq i8 %3628, 8
  br i1 %3629, label %3630, label %3633

3630:                                             ; preds = %3626
  %3631 = getelementptr inbounds %struct.Object, ptr %3106, i64 0, i32 131
  %3632 = load ptr, ptr %3631, align 8, !tbaa !495
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.158, i32 noundef 1, ptr noundef %3632, ptr noundef %3632)
  br label %3633

3633:                                             ; preds = %3630, %3626, %3623
  %3634 = getelementptr inbounds %struct.Object, ptr %3106, i64 0, i32 109
  %3635 = load ptr, ptr %3634, align 8, !tbaa !43
  %3636 = icmp eq ptr %3635, null
  br i1 %3636, label %3726, label %3637

3637:                                             ; preds = %3633, %3722
  %3638 = phi ptr [ %3724, %3722 ], [ %3635, %3633 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.207, i32 noundef 1, ptr noundef nonnull %3638, ptr noundef nonnull %3638)
  %3639 = getelementptr inbounds %struct.ParticleSystem, ptr %3638, i64 0, i32 3
  %3640 = load ptr, ptr %3639, align 8, !tbaa !496
  %3641 = icmp eq ptr %3640, null
  br i1 %3641, label %3696, label %3642

3642:                                             ; preds = %3637
  %3643 = getelementptr inbounds %struct.ParticleSystem, ptr %3638, i64 0, i32 26
  %3644 = load i32, ptr %3643, align 8, !tbaa !498
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.208, i32 noundef %3644, ptr noundef nonnull %3640, ptr noundef nonnull %3640)
  %3645 = load ptr, ptr %3639, align 8, !tbaa !496
  %3646 = getelementptr inbounds %struct.ParticleData, ptr %3645, i64 0, i32 2
  %3647 = load ptr, ptr %3646, align 8, !tbaa !499
  %3648 = icmp eq ptr %3647, null
  br i1 %3648, label %3663, label %3649

3649:                                             ; preds = %3642
  %3650 = load i32, ptr %3643, align 8, !tbaa !498
  %3651 = icmp sgt i32 %3650, 0
  br i1 %3651, label %3652, label %3663

3652:                                             ; preds = %3649, %3652
  %3653 = phi ptr [ %3660, %3652 ], [ %3645, %3649 ]
  %3654 = phi i32 [ %3659, %3652 ], [ 0, %3649 ]
  %3655 = getelementptr inbounds %struct.ParticleData, ptr %3653, i64 0, i32 5
  %3656 = load i32, ptr %3655, align 8, !tbaa !502
  %3657 = getelementptr inbounds %struct.ParticleData, ptr %3653, i64 0, i32 2
  %3658 = load ptr, ptr %3657, align 8, !tbaa !499
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.209, i32 noundef %3656, ptr noundef %3658, ptr noundef %3658)
  %3659 = add nuw nsw i32 %3654, 1
  %3660 = getelementptr inbounds %struct.ParticleData, ptr %3653, i64 1
  %3661 = load i32, ptr %3643, align 8, !tbaa !498
  %3662 = icmp slt i32 %3659, %3661
  br i1 %3662, label %3652, label %3663, !llvm.loop !503

3663:                                             ; preds = %3652, %3649, %3642
  %3664 = load ptr, ptr %3639, align 8, !tbaa !496
  %3665 = getelementptr inbounds %struct.ParticleData, ptr %3664, i64 0, i32 4
  %3666 = load ptr, ptr %3665, align 8, !tbaa !504
  %3667 = icmp eq ptr %3666, null
  br i1 %3667, label %3676, label %3668

3668:                                             ; preds = %3663
  %3669 = getelementptr inbounds %struct.ParticleSystem, ptr %3638, i64 0, i32 2
  %3670 = load ptr, ptr %3669, align 8, !tbaa !505
  %3671 = getelementptr inbounds %struct.ParticleSettings, ptr %3670, i64 0, i32 11
  %3672 = load i16, ptr %3671, align 8, !tbaa !506
  %3673 = icmp eq i16 %3672, 3
  br i1 %3673, label %3674, label %3676

3674:                                             ; preds = %3668
  %3675 = load i32, ptr %3643, align 8, !tbaa !498
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.210, i32 noundef %3675, ptr noundef nonnull %3666, ptr noundef nonnull %3666)
  br label %3676

3676:                                             ; preds = %3674, %3668, %3663
  %3677 = getelementptr inbounds %struct.ParticleSystem, ptr %3638, i64 0, i32 2
  %3678 = load ptr, ptr %3677, align 8, !tbaa !505
  %3679 = getelementptr inbounds %struct.ParticleSettings, ptr %3678, i64 0, i32 3
  %3680 = load ptr, ptr %3679, align 8, !tbaa !508
  %3681 = icmp eq ptr %3680, null
  br i1 %3681, label %3696, label %3682

3682:                                             ; preds = %3676
  %3683 = getelementptr inbounds %struct.ParticleSettings, ptr %3678, i64 0, i32 11
  %3684 = load i16, ptr %3683, align 8, !tbaa !506
  %3685 = icmp eq i16 %3684, 4
  br i1 %3685, label %3686, label %3696

3686:                                             ; preds = %3682
  %3687 = getelementptr inbounds %struct.SPHFluidSettings, ptr %3680, i64 0, i32 13
  %3688 = load i32, ptr %3687, align 4, !tbaa !509
  %3689 = and i32 %3688, 1
  %3690 = icmp eq i32 %3689, 0
  br i1 %3690, label %3696, label %3691

3691:                                             ; preds = %3686
  %3692 = getelementptr inbounds %struct.ParticleSystem, ptr %3638, i64 0, i32 44
  %3693 = load i32, ptr %3692, align 8, !tbaa !511
  %3694 = getelementptr inbounds %struct.ParticleSystem, ptr %3638, i64 0, i32 43
  %3695 = load ptr, ptr %3694, align 8, !tbaa !512
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.121, i32 noundef %3693, ptr noundef %3695, ptr noundef %3695)
  br label %3696

3696:                                             ; preds = %3691, %3686, %3682, %3676, %3637
  %3697 = getelementptr inbounds %struct.ParticleSystem, ptr %3638, i64 0, i32 17
  %3698 = load ptr, ptr %3697, align 8, !tbaa !43
  %3699 = icmp eq ptr %3698, null
  br i1 %3699, label %3704, label %3700

3700:                                             ; preds = %3696, %3700
  %3701 = phi ptr [ %3702, %3700 ], [ %3698, %3696 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.211, i32 noundef 1, ptr noundef nonnull %3701, ptr noundef nonnull %3701)
  %3702 = load ptr, ptr %3701, align 8, !tbaa !43
  %3703 = icmp eq ptr %3702, null
  br i1 %3703, label %3704, label %3700, !llvm.loop !513

3704:                                             ; preds = %3700, %3696
  %3705 = getelementptr inbounds %struct.ParticleSystem, ptr %3638, i64 0, i32 4
  %3706 = load ptr, ptr %3705, align 8, !tbaa !514
  %3707 = icmp eq ptr %3706, null
  br i1 %3707, label %3711, label %3708

3708:                                             ; preds = %3704
  %3709 = getelementptr inbounds %struct.ParticleSystem, ptr %3638, i64 0, i32 28
  %3710 = load i32, ptr %3709, align 8, !tbaa !515
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.212, i32 noundef %3710, ptr noundef nonnull %3706, ptr noundef nonnull %3706)
  br label %3711

3711:                                             ; preds = %3708, %3704
  %3712 = getelementptr inbounds %struct.ParticleSystem, ptr %3638, i64 0, i32 11
  %3713 = load ptr, ptr %3712, align 8, !tbaa !516
  %3714 = icmp eq ptr %3713, null
  br i1 %3714, label %3722, label %3715

3715:                                             ; preds = %3711
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.213, i32 noundef 1, ptr noundef nonnull %3713, ptr noundef nonnull %3713)
  %3716 = load ptr, ptr %3712, align 8, !tbaa !516
  %3717 = getelementptr inbounds %struct.ClothModifierData, ptr %3716, i64 0, i32 3
  %3718 = load ptr, ptr %3717, align 8, !tbaa !517
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.214, i32 noundef 1, ptr noundef %3718, ptr noundef %3718)
  %3719 = load ptr, ptr %3712, align 8, !tbaa !516
  %3720 = getelementptr inbounds %struct.ClothModifierData, ptr %3719, i64 0, i32 4
  %3721 = load ptr, ptr %3720, align 8, !tbaa !520
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.215, i32 noundef 1, ptr noundef %3721, ptr noundef %3721)
  br label %3722

3722:                                             ; preds = %3715, %3711
  %3723 = getelementptr inbounds %struct.ParticleSystem, ptr %3638, i64 0, i32 41
  call fastcc void @write_pointcaches(ptr noundef %43, ptr noundef nonnull %3723)
  %3724 = load ptr, ptr %3638, align 8, !tbaa !43
  %3725 = icmp eq ptr %3724, null
  br i1 %3725, label %3726, label %3637, !llvm.loop !521

3726:                                             ; preds = %3722, %3633
  %3727 = getelementptr inbounds %struct.Object, ptr %3106, i64 0, i32 26
  %3728 = load ptr, ptr %3727, align 8, !tbaa !43
  %3729 = icmp eq ptr %3728, null
  br i1 %3729, label %4109, label %3730

3730:                                             ; preds = %3726, %4106
  %3731 = phi ptr [ %4107, %4106 ], [ %3728, %3726 ]
  %3732 = getelementptr inbounds %struct.ModifierData, ptr %3731, i64 0, i32 2
  %3733 = load i32, ptr %3732, align 8, !tbaa !522
  %3734 = call ptr @modifierType_getInfo(i32 noundef %3733) #14
  %3735 = icmp eq ptr %3734, null
  br i1 %3735, label %4109, label %3736

3736:                                             ; preds = %3730
  %3737 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %3734, i64 0, i32 1
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull %3737, i32 noundef 1, ptr noundef nonnull %3731, ptr noundef nonnull %3731)
  %3738 = load i32, ptr %3732, align 8, !tbaa !522
  switch i32 %3738, label %4106 [
    i32 9, label %3739
    i32 22, label %3785
    i32 31, label %3794
    i32 26, label %3841
    i32 40, label %3844
    i32 47, label %4060
    i32 18, label %3880
    i32 35, label %4032
    i32 36, label %4046
  ]

3739:                                             ; preds = %3736
  %3740 = getelementptr inbounds %struct.HookModifierData, ptr %3731, i64 0, i32 7
  %3741 = load i32, ptr %3740, align 8, !tbaa !523
  %3742 = shl i32 %3741, 2
  %3743 = getelementptr inbounds %struct.HookModifierData, ptr %3731, i64 0, i32 6
  %3744 = load ptr, ptr %3743, align 8, !tbaa !525
  %3745 = icmp eq ptr %3744, null
  %3746 = icmp eq i32 %3742, 0
  %3747 = or i1 %3746, %3745
  br i1 %3747, label %4106, label %3748

3748:                                             ; preds = %3739
  %3749 = load i32, ptr %124, align 8, !tbaa !49
  %3750 = icmp eq i32 %3749, 0
  br i1 %3750, label %3751, label %3784

3751:                                             ; preds = %3748
  %3752 = load i32, ptr %3098, align 8, !tbaa !51
  %3753 = add nsw i32 %3752, 24
  store i32 %3753, ptr %3098, align 8, !tbaa !51
  %3754 = load i32, ptr %3099, align 4, !tbaa !52
  %3755 = icmp sgt i32 %3754, 99975
  br i1 %3755, label %3756, label %3773

3756:                                             ; preds = %3751
  %3757 = load ptr, ptr %3100, align 8, !tbaa !53
  %3758 = icmp eq ptr %3757, null
  %3759 = select i1 %3101, i1 true, i1 %3758
  br i1 %3759, label %3772, label %3760

3760:                                             ; preds = %3756
  %3761 = load ptr, ptr %3102, align 8, !tbaa !54
  %3762 = icmp eq ptr %3761, null
  br i1 %3762, label %3764, label %3763

3763:                                             ; preds = %3760
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %3761, ptr noundef nonnull %3757, i32 noundef %3754) #14
  br label %3772

3764:                                             ; preds = %3760
  %3765 = load ptr, ptr %3103, align 8, !tbaa !55
  %3766 = getelementptr inbounds %struct.WriteWrap, ptr %3765, i64 0, i32 2
  %3767 = load ptr, ptr %3766, align 8, !tbaa !56
  %3768 = zext nneg i32 %3754 to i64
  %3769 = call i64 %3767(ptr noundef %3765, ptr noundef nonnull %3757, i64 noundef %3768) #14
  %3770 = icmp eq i64 %3769, %3768
  br i1 %3770, label %3772, label %3771

3771:                                             ; preds = %3764
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %3772

3772:                                             ; preds = %3771, %3764, %3763, %3756
  store i32 0, ptr %3099, align 4, !tbaa !52
  br label %3773

3773:                                             ; preds = %3772, %3751
  %3774 = load ptr, ptr %3104, align 8, !tbaa !53
  %3775 = load i32, ptr %3099, align 4, !tbaa !52
  %3776 = sext i32 %3775 to i64
  %3777 = getelementptr inbounds i8, ptr %3774, i64 %3776
  store i32 1096040772, ptr %3777, align 1
  %3778 = getelementptr inbounds i8, ptr %3777, i64 4
  store i32 %3742, ptr %3778, align 1
  %3779 = getelementptr inbounds i8, ptr %3777, i64 8
  store ptr %3744, ptr %3779, align 1
  %3780 = getelementptr inbounds i8, ptr %3777, i64 16
  store i32 0, ptr %3780, align 1
  %3781 = getelementptr inbounds i8, ptr %3777, i64 20
  store i32 1, ptr %3781, align 1
  %3782 = load i32, ptr %3099, align 4, !tbaa !52
  %3783 = add nsw i32 %3782, 24
  store i32 %3783, ptr %3099, align 4, !tbaa !52
  br label %3784

3784:                                             ; preds = %3748, %3773
  call fastcc void @mywrite(ptr noundef %43, ptr noundef nonnull %3744, i32 noundef %3742)
  br label %4106

3785:                                             ; preds = %3736
  %3786 = getelementptr inbounds %struct.ClothModifierData, ptr %3731, i64 0, i32 3
  %3787 = load ptr, ptr %3786, align 8, !tbaa !517
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.214, i32 noundef 1, ptr noundef %3787, ptr noundef %3787)
  %3788 = getelementptr inbounds %struct.ClothModifierData, ptr %3731, i64 0, i32 4
  %3789 = load ptr, ptr %3788, align 8, !tbaa !520
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.215, i32 noundef 1, ptr noundef %3789, ptr noundef %3789)
  %3790 = load ptr, ptr %3786, align 8, !tbaa !517
  %3791 = getelementptr inbounds %struct.ClothSimSettings, ptr %3790, i64 0, i32 41
  %3792 = load ptr, ptr %3791, align 8, !tbaa !526
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.107, i32 noundef 1, ptr noundef %3792, ptr noundef %3792)
  %3793 = getelementptr inbounds %struct.ClothModifierData, ptr %3731, i64 0, i32 6
  call fastcc void @write_pointcaches(ptr noundef %43, ptr noundef nonnull %3793)
  br label %4106

3794:                                             ; preds = %3736
  %3795 = getelementptr inbounds %struct.SmokeModifierData, ptr %3731, i64 0, i32 5
  %3796 = load i32, ptr %3795, align 4, !tbaa !528
  %3797 = and i32 %3796, 1
  %3798 = icmp eq i32 %3797, 0
  br i1 %3798, label %3829, label %3799

3799:                                             ; preds = %3794
  %3800 = getelementptr inbounds %struct.SmokeModifierData, ptr %3731, i64 0, i32 1
  %3801 = load ptr, ptr %3800, align 8, !tbaa !530
  %3802 = icmp eq ptr %3801, null
  br i1 %3802, label %3818, label %3803

3803:                                             ; preds = %3799
  %3804 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3801, i64 0, i32 48
  call fastcc void @write_pointcaches(ptr noundef %43, ptr noundef nonnull %3804)
  %3805 = load ptr, ptr %3800, align 8, !tbaa !530
  %3806 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3805, i64 0, i32 48, i64 1
  %3807 = call ptr @BKE_ptcache_add(ptr noundef nonnull %3806) #14
  %3808 = load ptr, ptr %3800, align 8, !tbaa !530
  %3809 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3808, i64 0, i32 47, i64 1
  store ptr %3807, ptr %3809, align 8, !tbaa !43
  %3810 = load ptr, ptr %3800, align 8, !tbaa !530
  %3811 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3810, i64 0, i32 47, i64 1
  %3812 = load ptr, ptr %3811, align 8, !tbaa !43
  %3813 = getelementptr inbounds %struct.PointCache, ptr %3812, i64 0, i32 2
  %3814 = load i32, ptr %3813, align 8, !tbaa !531
  %3815 = or i32 %3814, 4160
  store i32 %3815, ptr %3813, align 8, !tbaa !531
  %3816 = getelementptr inbounds %struct.PointCache, ptr %3812, i64 0, i32 3
  store i32 1, ptr %3816, align 4, !tbaa !533
  %3817 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3810, i64 0, i32 48, i64 1
  call fastcc void @write_pointcaches(ptr noundef %43, ptr noundef nonnull %3817)
  br label %3818

3818:                                             ; preds = %3803, %3799
  %3819 = load ptr, ptr %3800, align 8, !tbaa !530
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.216, i32 noundef 1, ptr noundef %3819, ptr noundef %3819)
  %3820 = load ptr, ptr %3800, align 8, !tbaa !530
  %3821 = icmp eq ptr %3820, null
  br i1 %3821, label %4106, label %3822

3822:                                             ; preds = %3818
  %3823 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3820, i64 0, i32 48, i64 1
  call void @BKE_ptcache_free_list(ptr noundef nonnull %3823) #14
  %3824 = load ptr, ptr %3800, align 8, !tbaa !530
  %3825 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3824, i64 0, i32 47, i64 1
  store ptr null, ptr %3825, align 8, !tbaa !43
  %3826 = load ptr, ptr %3800, align 8, !tbaa !530
  %3827 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %3826, i64 0, i32 49
  %3828 = load ptr, ptr %3827, align 8, !tbaa !534
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.107, i32 noundef 1, ptr noundef %3828, ptr noundef %3828)
  br label %4106

3829:                                             ; preds = %3794
  %3830 = and i32 %3796, 2
  %3831 = icmp eq i32 %3830, 0
  br i1 %3831, label %3835, label %3832

3832:                                             ; preds = %3829
  %3833 = getelementptr inbounds %struct.SmokeModifierData, ptr %3731, i64 0, i32 2
  %3834 = load ptr, ptr %3833, align 8, !tbaa !536
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.217, i32 noundef 1, ptr noundef %3834, ptr noundef %3834)
  br label %4106

3835:                                             ; preds = %3829
  %3836 = and i32 %3796, 4
  %3837 = icmp eq i32 %3836, 0
  br i1 %3837, label %4106, label %3838

3838:                                             ; preds = %3835
  %3839 = getelementptr inbounds %struct.SmokeModifierData, ptr %3731, i64 0, i32 3
  %3840 = load ptr, ptr %3839, align 8, !tbaa !537
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.218, i32 noundef 1, ptr noundef %3840, ptr noundef %3840)
  br label %4106

3841:                                             ; preds = %3736
  %3842 = getelementptr inbounds %struct.FluidsimModifierData, ptr %3731, i64 0, i32 1
  %3843 = load ptr, ptr %3842, align 8, !tbaa !538
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.219, i32 noundef 1, ptr noundef %3843, ptr noundef %3843)
  br label %4106

3844:                                             ; preds = %3736
  %3845 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %3731, i64 0, i32 1
  %3846 = load ptr, ptr %3845, align 8, !tbaa !540
  %3847 = icmp eq ptr %3846, null
  br i1 %3847, label %3869, label %3848

3848:                                             ; preds = %3844
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.220, i32 noundef 1, ptr noundef nonnull %3846, ptr noundef nonnull %3846)
  %3849 = load ptr, ptr %3845, align 8, !tbaa !540
  %3850 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %3849, i64 0, i32 2
  %3851 = load ptr, ptr %3850, align 8, !tbaa !43
  %3852 = icmp eq ptr %3851, null
  br i1 %3852, label %3857, label %3853

3853:                                             ; preds = %3848, %3853
  %3854 = phi ptr [ %3855, %3853 ], [ %3851, %3848 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.221, i32 noundef 1, ptr noundef nonnull %3854, ptr noundef nonnull %3854)
  %3855 = load ptr, ptr %3854, align 8, !tbaa !43
  %3856 = icmp eq ptr %3855, null
  br i1 %3856, label %3857, label %3853, !llvm.loop !542

3857:                                             ; preds = %3853, %3848
  %3858 = load ptr, ptr %3845, align 8, !tbaa !540
  %3859 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %3858, i64 0, i32 2
  %3860 = load ptr, ptr %3859, align 8, !tbaa !43
  %3861 = icmp eq ptr %3860, null
  br i1 %3861, label %3869, label %3862

3862:                                             ; preds = %3857, %3862
  %3863 = phi ptr [ %3867, %3862 ], [ %3860, %3857 ]
  %3864 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3863, i64 0, i32 7
  call fastcc void @write_pointcaches(ptr noundef %43, ptr noundef nonnull %3864)
  %3865 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %3863, i64 0, i32 5
  %3866 = load ptr, ptr %3865, align 8, !tbaa !543
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.107, i32 noundef 1, ptr noundef %3866, ptr noundef %3866)
  %3867 = load ptr, ptr %3863, align 8, !tbaa !43
  %3868 = icmp eq ptr %3867, null
  br i1 %3868, label %3869, label %3862, !llvm.loop !545

3869:                                             ; preds = %3862, %3857, %3844
  %3870 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %3731, i64 0, i32 2
  %3871 = load ptr, ptr %3870, align 8, !tbaa !546
  %3872 = icmp eq ptr %3871, null
  br i1 %3872, label %4106, label %3873

3873:                                             ; preds = %3869
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.222, i32 noundef 1, ptr noundef nonnull %3871, ptr noundef nonnull %3871)
  %3874 = load ptr, ptr %3870, align 8, !tbaa !546
  %3875 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %3874, i64 0, i32 14
  %3876 = load ptr, ptr %3875, align 8, !tbaa !547
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.223, i32 noundef 1, ptr noundef %3876, ptr noundef %3876)
  %3877 = load ptr, ptr %3870, align 8, !tbaa !546
  %3878 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %3877, i64 0, i32 15
  %3879 = load ptr, ptr %3878, align 8, !tbaa !549
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.223, i32 noundef 1, ptr noundef %3879, ptr noundef %3879)
  br label %4106

3880:                                             ; preds = %3736
  %3881 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %3731, i64 0, i32 14
  %3882 = load i32, ptr %3881, align 8, !tbaa !550
  %3883 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %3731, i64 0, i32 15
  %3884 = load i32, ptr %3883, align 4, !tbaa !552
  %3885 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %3731, i64 0, i32 6
  %3886 = load ptr, ptr %3885, align 8, !tbaa !553
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.224, i32 noundef %3884, ptr noundef %3886, ptr noundef %3886)
  %3887 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %3731, i64 0, i32 9
  %3888 = load i32, ptr %3887, align 8, !tbaa !554
  %3889 = shl i32 %3888, 2
  %3890 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %3731, i64 0, i32 7
  %3891 = load ptr, ptr %3890, align 8, !tbaa !555
  %3892 = icmp eq ptr %3891, null
  %3893 = icmp eq i32 %3889, -4
  %3894 = or i1 %3893, %3892
  br i1 %3894, label %3934, label %3895

3895:                                             ; preds = %3880
  %3896 = add i32 %3889, 7
  %3897 = and i32 %3896, -4
  %3898 = load i32, ptr %124, align 8, !tbaa !49
  %3899 = icmp eq i32 %3898, 0
  br i1 %3899, label %3900, label %3933

3900:                                             ; preds = %3895
  %3901 = load i32, ptr %3070, align 8, !tbaa !51
  %3902 = add nsw i32 %3901, 24
  store i32 %3902, ptr %3070, align 8, !tbaa !51
  %3903 = load i32, ptr %3071, align 4, !tbaa !52
  %3904 = icmp sgt i32 %3903, 99975
  br i1 %3904, label %3905, label %3922

3905:                                             ; preds = %3900
  %3906 = load ptr, ptr %3072, align 8, !tbaa !53
  %3907 = icmp eq ptr %3906, null
  %3908 = select i1 %3073, i1 true, i1 %3907
  br i1 %3908, label %3921, label %3909

3909:                                             ; preds = %3905
  %3910 = load ptr, ptr %3074, align 8, !tbaa !54
  %3911 = icmp eq ptr %3910, null
  br i1 %3911, label %3913, label %3912

3912:                                             ; preds = %3909
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %3910, ptr noundef nonnull %3906, i32 noundef %3903) #14
  br label %3921

3913:                                             ; preds = %3909
  %3914 = load ptr, ptr %3075, align 8, !tbaa !55
  %3915 = getelementptr inbounds %struct.WriteWrap, ptr %3914, i64 0, i32 2
  %3916 = load ptr, ptr %3915, align 8, !tbaa !56
  %3917 = zext nneg i32 %3903 to i64
  %3918 = call i64 %3916(ptr noundef %3914, ptr noundef nonnull %3906, i64 noundef %3917) #14
  %3919 = icmp eq i64 %3918, %3917
  br i1 %3919, label %3921, label %3920

3920:                                             ; preds = %3913
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %3921

3921:                                             ; preds = %3920, %3913, %3912, %3905
  store i32 0, ptr %3071, align 4, !tbaa !52
  br label %3922

3922:                                             ; preds = %3921, %3900
  %3923 = load ptr, ptr %3076, align 8, !tbaa !53
  %3924 = load i32, ptr %3071, align 4, !tbaa !52
  %3925 = sext i32 %3924 to i64
  %3926 = getelementptr inbounds i8, ptr %3923, i64 %3925
  store i32 1096040772, ptr %3926, align 1
  %3927 = getelementptr inbounds i8, ptr %3926, i64 4
  store i32 %3897, ptr %3927, align 1
  %3928 = getelementptr inbounds i8, ptr %3926, i64 8
  store ptr %3891, ptr %3928, align 1
  %3929 = getelementptr inbounds i8, ptr %3926, i64 16
  store i32 0, ptr %3929, align 1
  %3930 = getelementptr inbounds i8, ptr %3926, i64 20
  store i32 1, ptr %3930, align 1
  %3931 = load i32, ptr %3071, align 4, !tbaa !52
  %3932 = add nsw i32 %3931, 24
  store i32 %3932, ptr %3071, align 4, !tbaa !52
  br label %3933

3933:                                             ; preds = %3895, %3922
  call fastcc void @mywrite(ptr noundef %43, ptr noundef nonnull %3891, i32 noundef %3897)
  br label %3934

3934:                                             ; preds = %3880, %3933
  %3935 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %3731, i64 0, i32 10
  %3936 = load i32, ptr %3935, align 4, !tbaa !556
  %3937 = mul i32 %3936, 12
  %3938 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %3731, i64 0, i32 8
  %3939 = load ptr, ptr %3938, align 8, !tbaa !557
  %3940 = icmp eq ptr %3939, null
  %3941 = icmp eq i32 %3937, 0
  %3942 = or i1 %3941, %3940
  br i1 %3942, label %3980, label %3943

3943:                                             ; preds = %3934
  %3944 = load i32, ptr %124, align 8, !tbaa !49
  %3945 = icmp eq i32 %3944, 0
  br i1 %3945, label %3946, label %3979

3946:                                             ; preds = %3943
  %3947 = load i32, ptr %3077, align 8, !tbaa !51
  %3948 = add nsw i32 %3947, 24
  store i32 %3948, ptr %3077, align 8, !tbaa !51
  %3949 = load i32, ptr %3078, align 4, !tbaa !52
  %3950 = icmp sgt i32 %3949, 99975
  br i1 %3950, label %3951, label %3968

3951:                                             ; preds = %3946
  %3952 = load ptr, ptr %3079, align 8, !tbaa !53
  %3953 = icmp eq ptr %3952, null
  %3954 = select i1 %3080, i1 true, i1 %3953
  br i1 %3954, label %3967, label %3955

3955:                                             ; preds = %3951
  %3956 = load ptr, ptr %3081, align 8, !tbaa !54
  %3957 = icmp eq ptr %3956, null
  br i1 %3957, label %3959, label %3958

3958:                                             ; preds = %3955
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %3956, ptr noundef nonnull %3952, i32 noundef %3949) #14
  br label %3967

3959:                                             ; preds = %3955
  %3960 = load ptr, ptr %3082, align 8, !tbaa !55
  %3961 = getelementptr inbounds %struct.WriteWrap, ptr %3960, i64 0, i32 2
  %3962 = load ptr, ptr %3961, align 8, !tbaa !56
  %3963 = zext nneg i32 %3949 to i64
  %3964 = call i64 %3962(ptr noundef %3960, ptr noundef nonnull %3952, i64 noundef %3963) #14
  %3965 = icmp eq i64 %3964, %3963
  br i1 %3965, label %3967, label %3966

3966:                                             ; preds = %3959
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %3967

3967:                                             ; preds = %3966, %3959, %3958, %3951
  store i32 0, ptr %3078, align 4, !tbaa !52
  br label %3968

3968:                                             ; preds = %3967, %3946
  %3969 = load ptr, ptr %3083, align 8, !tbaa !53
  %3970 = load i32, ptr %3078, align 4, !tbaa !52
  %3971 = sext i32 %3970 to i64
  %3972 = getelementptr inbounds i8, ptr %3969, i64 %3971
  store i32 1096040772, ptr %3972, align 1
  %3973 = getelementptr inbounds i8, ptr %3972, i64 4
  store i32 %3937, ptr %3973, align 1
  %3974 = getelementptr inbounds i8, ptr %3972, i64 8
  store ptr %3939, ptr %3974, align 1
  %3975 = getelementptr inbounds i8, ptr %3972, i64 16
  store i32 0, ptr %3975, align 1
  %3976 = getelementptr inbounds i8, ptr %3972, i64 20
  store i32 1, ptr %3976, align 1
  %3977 = load i32, ptr %3078, align 4, !tbaa !52
  %3978 = add nsw i32 %3977, 24
  store i32 %3978, ptr %3078, align 4, !tbaa !52
  br label %3979

3979:                                             ; preds = %3943, %3968
  call fastcc void @mywrite(ptr noundef %43, ptr noundef nonnull %3939, i32 noundef %3937)
  br label %3980

3980:                                             ; preds = %3934, %3979
  %3981 = mul nsw i32 %3882, %3882
  %3982 = mul nsw i32 %3981, %3882
  %3983 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %3731, i64 0, i32 11
  %3984 = load ptr, ptr %3983, align 8, !tbaa !558
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.225, i32 noundef %3982, ptr noundef %3984, ptr noundef %3984)
  %3985 = load i32, ptr %3883, align 4, !tbaa !552
  %3986 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %3731, i64 0, i32 12
  %3987 = load ptr, ptr %3986, align 8, !tbaa !559
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.224, i32 noundef %3985, ptr noundef %3987, ptr noundef %3987)
  %3988 = load i32, ptr %3887, align 8, !tbaa !554
  %3989 = shl i32 %3988, 2
  %3990 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %3731, i64 0, i32 13
  %3991 = load ptr, ptr %3990, align 8, !tbaa !560
  %3992 = icmp eq ptr %3991, null
  %3993 = icmp eq i32 %3989, 0
  %3994 = or i1 %3993, %3992
  br i1 %3994, label %4106, label %3995

3995:                                             ; preds = %3980
  %3996 = load i32, ptr %124, align 8, !tbaa !49
  %3997 = icmp eq i32 %3996, 0
  br i1 %3997, label %3998, label %4031

3998:                                             ; preds = %3995
  %3999 = load i32, ptr %3084, align 8, !tbaa !51
  %4000 = add nsw i32 %3999, 24
  store i32 %4000, ptr %3084, align 8, !tbaa !51
  %4001 = load i32, ptr %3085, align 4, !tbaa !52
  %4002 = icmp sgt i32 %4001, 99975
  br i1 %4002, label %4003, label %4020

4003:                                             ; preds = %3998
  %4004 = load ptr, ptr %3086, align 8, !tbaa !53
  %4005 = icmp eq ptr %4004, null
  %4006 = select i1 %3087, i1 true, i1 %4005
  br i1 %4006, label %4019, label %4007

4007:                                             ; preds = %4003
  %4008 = load ptr, ptr %3088, align 8, !tbaa !54
  %4009 = icmp eq ptr %4008, null
  br i1 %4009, label %4011, label %4010

4010:                                             ; preds = %4007
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %4008, ptr noundef nonnull %4004, i32 noundef %4001) #14
  br label %4019

4011:                                             ; preds = %4007
  %4012 = load ptr, ptr %3089, align 8, !tbaa !55
  %4013 = getelementptr inbounds %struct.WriteWrap, ptr %4012, i64 0, i32 2
  %4014 = load ptr, ptr %4013, align 8, !tbaa !56
  %4015 = zext nneg i32 %4001 to i64
  %4016 = call i64 %4014(ptr noundef %4012, ptr noundef nonnull %4004, i64 noundef %4015) #14
  %4017 = icmp eq i64 %4016, %4015
  br i1 %4017, label %4019, label %4018

4018:                                             ; preds = %4011
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %4019

4019:                                             ; preds = %4018, %4011, %4010, %4003
  store i32 0, ptr %3085, align 4, !tbaa !52
  br label %4020

4020:                                             ; preds = %4019, %3998
  %4021 = load ptr, ptr %3090, align 8, !tbaa !53
  %4022 = load i32, ptr %3085, align 4, !tbaa !52
  %4023 = sext i32 %4022 to i64
  %4024 = getelementptr inbounds i8, ptr %4021, i64 %4023
  store i32 1096040772, ptr %4024, align 1
  %4025 = getelementptr inbounds i8, ptr %4024, i64 4
  store i32 %3989, ptr %4025, align 1
  %4026 = getelementptr inbounds i8, ptr %4024, i64 8
  store ptr %3991, ptr %4026, align 1
  %4027 = getelementptr inbounds i8, ptr %4024, i64 16
  store i32 0, ptr %4027, align 1
  %4028 = getelementptr inbounds i8, ptr %4024, i64 20
  store i32 1, ptr %4028, align 1
  %4029 = load i32, ptr %3085, align 4, !tbaa !52
  %4030 = add nsw i32 %4029, 24
  store i32 %4030, ptr %3085, align 4, !tbaa !52
  br label %4031

4031:                                             ; preds = %3995, %4020
  call fastcc void @mywrite(ptr noundef %43, ptr noundef nonnull %3991, i32 noundef %3989)
  br label %4106

4032:                                             ; preds = %3736
  %4033 = getelementptr inbounds %struct.WarpModifierData, ptr %3731, i64 0, i32 8
  %4034 = load ptr, ptr %4033, align 8, !tbaa !561
  %4035 = icmp eq ptr %4034, null
  br i1 %4035, label %4106, label %4036

4036:                                             ; preds = %4032
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.52, i32 noundef 1, ptr noundef nonnull %4034, ptr noundef nonnull %4034)
  br label %4037

4037:                                             ; preds = %4037, %4036
  %4038 = phi i64 [ 0, %4036 ], [ %4044, %4037 ]
  %4039 = getelementptr inbounds %struct.CurveMapping, ptr %4034, i64 0, i32 6, i64 %4038
  %4040 = load i16, ptr %4039, align 8, !tbaa !185
  %4041 = sext i16 %4040 to i32
  %4042 = getelementptr inbounds %struct.CurveMapping, ptr %4034, i64 0, i32 6, i64 %4038, i32 7
  %4043 = load ptr, ptr %4042, align 8, !tbaa !187
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.53, i32 noundef %4041, ptr noundef %4043, ptr noundef %4043)
  %4044 = add nuw nsw i64 %4038, 1
  %4045 = icmp eq i64 %4044, 4
  br i1 %4045, label %4106, label %4037, !llvm.loop !188

4046:                                             ; preds = %3736
  %4047 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %3731, i64 0, i32 5
  %4048 = load ptr, ptr %4047, align 8, !tbaa !563
  %4049 = icmp eq ptr %4048, null
  br i1 %4049, label %4106, label %4050

4050:                                             ; preds = %4046
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.52, i32 noundef 1, ptr noundef nonnull %4048, ptr noundef nonnull %4048)
  br label %4051

4051:                                             ; preds = %4051, %4050
  %4052 = phi i64 [ 0, %4050 ], [ %4058, %4051 ]
  %4053 = getelementptr inbounds %struct.CurveMapping, ptr %4048, i64 0, i32 6, i64 %4052
  %4054 = load i16, ptr %4053, align 8, !tbaa !185
  %4055 = sext i16 %4054 to i32
  %4056 = getelementptr inbounds %struct.CurveMapping, ptr %4048, i64 0, i32 6, i64 %4052, i32 7
  %4057 = load ptr, ptr %4056, align 8, !tbaa !187
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.53, i32 noundef %4055, ptr noundef %4057, ptr noundef %4057)
  %4058 = add nuw nsw i64 %4052, 1
  %4059 = icmp eq i64 %4058, 4
  br i1 %4059, label %4106, label %4051, !llvm.loop !188

4060:                                             ; preds = %3736
  %4061 = getelementptr inbounds %struct.LaplacianDeformModifierData, ptr %3731, i64 0, i32 2
  %4062 = load i32, ptr %4061, align 8, !tbaa !565
  %4063 = mul i32 %4062, 12
  %4064 = getelementptr inbounds %struct.LaplacianDeformModifierData, ptr %3731, i64 0, i32 4
  %4065 = load ptr, ptr %4064, align 8, !tbaa !567
  %4066 = icmp eq ptr %4065, null
  %4067 = icmp eq i32 %4063, 0
  %4068 = or i1 %4067, %4066
  br i1 %4068, label %4106, label %4069

4069:                                             ; preds = %4060
  %4070 = load i32, ptr %124, align 8, !tbaa !49
  %4071 = icmp eq i32 %4070, 0
  br i1 %4071, label %4072, label %4105

4072:                                             ; preds = %4069
  %4073 = load i32, ptr %3091, align 8, !tbaa !51
  %4074 = add nsw i32 %4073, 24
  store i32 %4074, ptr %3091, align 8, !tbaa !51
  %4075 = load i32, ptr %3092, align 4, !tbaa !52
  %4076 = icmp sgt i32 %4075, 99975
  br i1 %4076, label %4077, label %4094

4077:                                             ; preds = %4072
  %4078 = load ptr, ptr %3093, align 8, !tbaa !53
  %4079 = icmp eq ptr %4078, null
  %4080 = select i1 %3094, i1 true, i1 %4079
  br i1 %4080, label %4093, label %4081

4081:                                             ; preds = %4077
  %4082 = load ptr, ptr %3095, align 8, !tbaa !54
  %4083 = icmp eq ptr %4082, null
  br i1 %4083, label %4085, label %4084

4084:                                             ; preds = %4081
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %4082, ptr noundef nonnull %4078, i32 noundef %4075) #14
  br label %4093

4085:                                             ; preds = %4081
  %4086 = load ptr, ptr %3096, align 8, !tbaa !55
  %4087 = getelementptr inbounds %struct.WriteWrap, ptr %4086, i64 0, i32 2
  %4088 = load ptr, ptr %4087, align 8, !tbaa !56
  %4089 = zext nneg i32 %4075 to i64
  %4090 = call i64 %4088(ptr noundef %4086, ptr noundef nonnull %4078, i64 noundef %4089) #14
  %4091 = icmp eq i64 %4090, %4089
  br i1 %4091, label %4093, label %4092

4092:                                             ; preds = %4085
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %4093

4093:                                             ; preds = %4092, %4085, %4084, %4077
  store i32 0, ptr %3092, align 4, !tbaa !52
  br label %4094

4094:                                             ; preds = %4093, %4072
  %4095 = load ptr, ptr %3097, align 8, !tbaa !53
  %4096 = load i32, ptr %3092, align 4, !tbaa !52
  %4097 = sext i32 %4096 to i64
  %4098 = getelementptr inbounds i8, ptr %4095, i64 %4097
  store i32 1096040772, ptr %4098, align 1
  %4099 = getelementptr inbounds i8, ptr %4098, i64 4
  store i32 %4063, ptr %4099, align 1
  %4100 = getelementptr inbounds i8, ptr %4098, i64 8
  store ptr %4065, ptr %4100, align 1
  %4101 = getelementptr inbounds i8, ptr %4098, i64 16
  store i32 0, ptr %4101, align 1
  %4102 = getelementptr inbounds i8, ptr %4098, i64 20
  store i32 1, ptr %4102, align 1
  %4103 = load i32, ptr %3092, align 4, !tbaa !52
  %4104 = add nsw i32 %4103, 24
  store i32 %4104, ptr %3092, align 4, !tbaa !52
  br label %4105

4105:                                             ; preds = %4069, %4094
  call fastcc void @mywrite(ptr noundef %43, ptr noundef nonnull %4065, i32 noundef %4063)
  br label %4106

4106:                                             ; preds = %4051, %4037, %4105, %4060, %4031, %3980, %3784, %3739, %4046, %4032, %3873, %3869, %3841, %3838, %3835, %3832, %3822, %3818, %3785, %3736
  %4107 = load ptr, ptr %3731, align 8, !tbaa !43
  %4108 = icmp eq ptr %4107, null
  br i1 %4108, label %4109, label %3730, !llvm.loop !568

4109:                                             ; preds = %4106, %3730, %3726
  %4110 = getelementptr inbounds %struct.Object, ptr %3106, i64 0, i32 126
  %4111 = load ptr, ptr %4110, align 8, !tbaa !43
  %4112 = icmp eq ptr %4111, null
  br i1 %4112, label %4117, label %4113

4113:                                             ; preds = %4109, %4113
  %4114 = phi ptr [ %4115, %4113 ], [ %4111, %4109 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.159, i32 noundef 1, ptr noundef nonnull %4114, ptr noundef nonnull %4114)
  %4115 = load ptr, ptr %4114, align 8, !tbaa !43
  %4116 = icmp eq ptr %4115, null
  br i1 %4116, label %4117, label %4113, !llvm.loop !569

4117:                                             ; preds = %4113, %4109
  %4118 = getelementptr inbounds %struct.Object, ptr %3106, i64 0, i32 132
  %4119 = load ptr, ptr %4118, align 8, !tbaa !43
  %4120 = icmp eq ptr %4119, null
  br i1 %4120, label %4125, label %4121

4121:                                             ; preds = %4117, %4121
  %4122 = phi ptr [ %4123, %4121 ], [ %4119, %4117 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.160, i32 noundef 1, ptr noundef nonnull %4122, ptr noundef nonnull %4122)
  %4123 = load ptr, ptr %4122, align 8, !tbaa !43
  %4124 = icmp eq ptr %4123, null
  br i1 %4124, label %4125, label %4121, !llvm.loop !569

4125:                                             ; preds = %4121, %4117, %3110
  %4126 = load ptr, ptr %3106, align 8, !tbaa !43
  %4127 = icmp eq ptr %4126, null
  br i1 %4127, label %4128, label %3105, !llvm.loop !570

4128:                                             ; preds = %4125, %3029
  %4129 = load i32, ptr %124, align 8, !tbaa !49
  %4130 = icmp eq i32 %4129, 0
  br i1 %4130, label %4131, label %4158

4131:                                             ; preds = %4128
  %4132 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %4133 = load i32, ptr %4132, align 4, !tbaa !52
  %4134 = icmp eq i32 %4133, 0
  br i1 %4134, label %4158, label %4135

4135:                                             ; preds = %4131
  %4136 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %4137 = load ptr, ptr %4136, align 8, !tbaa !53
  %4138 = icmp eq ptr %43, null
  br i1 %4138, label %4157, label %4139

4139:                                             ; preds = %4135
  %4140 = icmp eq ptr %4137, null
  %4141 = icmp slt i32 %4133, 1
  %4142 = or i1 %4141, %4140
  br i1 %4142, label %4157, label %4143

4143:                                             ; preds = %4139
  %4144 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %4145 = load ptr, ptr %4144, align 8, !tbaa !54
  %4146 = icmp eq ptr %4145, null
  br i1 %4146, label %4148, label %4147

4147:                                             ; preds = %4143
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %4145, ptr noundef %4137, i32 noundef %4133) #14
  br label %4157

4148:                                             ; preds = %4143
  %4149 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %4150 = load ptr, ptr %4149, align 8, !tbaa !55
  %4151 = getelementptr inbounds %struct.WriteWrap, ptr %4150, i64 0, i32 2
  %4152 = load ptr, ptr %4151, align 8, !tbaa !56
  %4153 = zext nneg i32 %4133 to i64
  %4154 = call i64 %4152(ptr noundef %4150, ptr noundef %4137, i64 noundef %4153) #14
  %4155 = icmp eq i64 %4154, %4153
  br i1 %4155, label %4157, label %4156

4156:                                             ; preds = %4148
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %4157

4157:                                             ; preds = %4135, %4139, %4147, %4148, %4156
  store i32 0, ptr %4132, align 4, !tbaa !52
  br label %4158

4158:                                             ; preds = %4128, %4131, %4157
  %4159 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  %4160 = load ptr, ptr %4159, align 8, !tbaa !43
  %4161 = icmp eq ptr %4160, null
  br i1 %4161, label %4214, label %4162

4162:                                             ; preds = %4158
  %4163 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  br label %4164

4164:                                             ; preds = %4162, %4211
  %4165 = phi ptr [ %4160, %4162 ], [ %4212, %4211 ]
  %4166 = getelementptr inbounds %struct.ID, ptr %4165, i64 0, i32 6
  %4167 = load i32, ptr %4166, align 4, !tbaa !571
  %4168 = icmp sgt i32 %4167, 0
  br i1 %4168, label %4172, label %4169

4169:                                             ; preds = %4164
  %4170 = load ptr, ptr %4163, align 8, !tbaa !54
  %4171 = icmp eq ptr %4170, null
  br i1 %4171, label %4211, label %4172

4172:                                             ; preds = %4169, %4164
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 16717, ptr noundef nonnull @.str.226, i32 noundef 1, ptr noundef nonnull %4165, ptr noundef nonnull %4165)
  %4173 = getelementptr inbounds %struct.ID, ptr %4165, i64 0, i32 9
  %4174 = load ptr, ptr %4173, align 8, !tbaa !575
  %4175 = icmp eq ptr %4174, null
  br i1 %4175, label %4177, label %4176

4176:                                             ; preds = %4172
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %4174, ptr noundef nonnull %4174)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %4174, ptr noundef %43)
  br label %4177

4177:                                             ; preds = %4176, %4172
  %4178 = getelementptr inbounds %struct.Material, ptr %4165, i64 0, i32 1
  %4179 = load ptr, ptr %4178, align 8, !tbaa !576
  %4180 = icmp eq ptr %4179, null
  br i1 %4180, label %4182, label %4181

4181:                                             ; preds = %4177
  call fastcc void @write_animdata(ptr noundef %43, ptr noundef nonnull %4179)
  br label %4182

4182:                                             ; preds = %4181, %4177
  br label %4183

4183:                                             ; preds = %4182, %4189
  %4184 = phi i64 [ %4190, %4189 ], [ 0, %4182 ]
  %4185 = getelementptr inbounds %struct.Material, ptr %4165, i64 0, i32 102, i64 %4184
  %4186 = load ptr, ptr %4185, align 8, !tbaa !43
  %4187 = icmp eq ptr %4186, null
  br i1 %4187, label %4189, label %4188

4188:                                             ; preds = %4183
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.134, i32 noundef 1, ptr noundef nonnull %4186, ptr noundef nonnull %4186)
  br label %4189

4189:                                             ; preds = %4188, %4183
  %4190 = add nuw nsw i64 %4184, 1
  %4191 = icmp eq i64 %4190, 18
  br i1 %4191, label %4192, label %4183, !llvm.loop !577

4192:                                             ; preds = %4189
  %4193 = getelementptr inbounds %struct.Material, ptr %4165, i64 0, i32 92
  %4194 = load ptr, ptr %4193, align 8, !tbaa !578
  %4195 = icmp eq ptr %4194, null
  br i1 %4195, label %4197, label %4196

4196:                                             ; preds = %4192
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.223, i32 noundef 1, ptr noundef nonnull %4194, ptr noundef nonnull %4194)
  br label %4197

4197:                                             ; preds = %4196, %4192
  %4198 = getelementptr inbounds %struct.Material, ptr %4165, i64 0, i32 93
  %4199 = load ptr, ptr %4198, align 8, !tbaa !579
  %4200 = icmp eq ptr %4199, null
  br i1 %4200, label %4202, label %4201

4201:                                             ; preds = %4197
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.223, i32 noundef 1, ptr noundef nonnull %4199, ptr noundef nonnull %4199)
  br label %4202

4202:                                             ; preds = %4201, %4197
  %4203 = getelementptr inbounds %struct.Material, ptr %4165, i64 0, i32 103
  %4204 = load ptr, ptr %4203, align 8, !tbaa !580
  %4205 = icmp eq ptr %4204, null
  br i1 %4205, label %4208, label %4206

4206:                                             ; preds = %4202
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.105, i32 noundef 1, ptr noundef nonnull %4204, ptr noundef nonnull %4204)
  %4207 = load ptr, ptr %4203, align 8, !tbaa !580
  call fastcc void @write_nodetree(ptr noundef %43, ptr noundef %4207)
  br label %4208

4208:                                             ; preds = %4206, %4202
  %4209 = getelementptr inbounds %struct.Material, ptr %4165, i64 0, i32 106
  %4210 = load ptr, ptr %4209, align 8, !tbaa !581
  call fastcc void @write_previews(ptr noundef %43, ptr noundef %4210)
  br label %4211

4211:                                             ; preds = %4208, %4169
  %4212 = load ptr, ptr %4165, align 8, !tbaa !43
  %4213 = icmp eq ptr %4212, null
  br i1 %4213, label %4214, label %4164, !llvm.loop !582

4214:                                             ; preds = %4211, %4158
  %4215 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 18
  %4216 = load ptr, ptr %4215, align 8, !tbaa !43
  %4217 = icmp eq ptr %4216, null
  br i1 %4217, label %4306, label %4218

4218:                                             ; preds = %4214
  %4219 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  br label %4220

4220:                                             ; preds = %4218, %4303
  %4221 = phi ptr [ %4216, %4218 ], [ %4304, %4303 ]
  %4222 = getelementptr inbounds %struct.ID, ptr %4221, i64 0, i32 6
  %4223 = load i32, ptr %4222, align 4, !tbaa !583
  %4224 = icmp sgt i32 %4223, 0
  br i1 %4224, label %4228, label %4225

4225:                                             ; preds = %4220
  %4226 = load ptr, ptr %4219, align 8, !tbaa !54
  %4227 = icmp eq ptr %4226, null
  br i1 %4227, label %4303, label %4228

4228:                                             ; preds = %4225, %4220
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 17748, ptr noundef nonnull @.str.227, i32 noundef 1, ptr noundef nonnull %4221, ptr noundef nonnull %4221)
  %4229 = getelementptr inbounds %struct.ID, ptr %4221, i64 0, i32 9
  %4230 = load ptr, ptr %4229, align 8, !tbaa !585
  %4231 = icmp eq ptr %4230, null
  br i1 %4231, label %4233, label %4232

4232:                                             ; preds = %4228
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %4230, ptr noundef nonnull %4230)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %4230, ptr noundef %43)
  br label %4233

4233:                                             ; preds = %4232, %4228
  %4234 = getelementptr inbounds %struct.Tex, ptr %4221, i64 0, i32 1
  %4235 = load ptr, ptr %4234, align 8, !tbaa !586
  %4236 = icmp eq ptr %4235, null
  br i1 %4236, label %4238, label %4237

4237:                                             ; preds = %4233
  call fastcc void @write_animdata(ptr noundef %43, ptr noundef nonnull %4235)
  br label %4238

4238:                                             ; preds = %4237, %4233
  %4239 = getelementptr inbounds %struct.Tex, ptr %4221, i64 0, i32 55
  %4240 = load ptr, ptr %4239, align 8, !tbaa !587
  %4241 = icmp eq ptr %4240, null
  br i1 %4241, label %4243, label %4242

4242:                                             ; preds = %4238
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.223, i32 noundef 1, ptr noundef nonnull %4240, ptr noundef nonnull %4240)
  br label %4243

4243:                                             ; preds = %4242, %4238
  %4244 = getelementptr inbounds %struct.Tex, ptr %4221, i64 0, i32 32
  %4245 = load i16, ptr %4244, align 8, !tbaa !588
  %4246 = icmp eq i16 %4245, 10
  br i1 %4246, label %4247, label %4252

4247:                                             ; preds = %4243
  %4248 = getelementptr inbounds %struct.Tex, ptr %4221, i64 0, i32 56
  %4249 = load ptr, ptr %4248, align 8, !tbaa !589
  %4250 = icmp eq ptr %4249, null
  br i1 %4250, label %4252, label %4251

4251:                                             ; preds = %4247
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.228, i32 noundef 1, ptr noundef nonnull %4249, ptr noundef nonnull %4249)
  br label %4252

4252:                                             ; preds = %4251, %4247, %4243
  %4253 = load i16, ptr %4244, align 8, !tbaa !588
  %4254 = icmp eq i16 %4253, 14
  br i1 %4254, label %4255, label %4280

4255:                                             ; preds = %4252
  %4256 = getelementptr inbounds %struct.Tex, ptr %4221, i64 0, i32 58
  %4257 = load ptr, ptr %4256, align 8, !tbaa !590
  %4258 = icmp eq ptr %4257, null
  br i1 %4258, label %4280, label %4259

4259:                                             ; preds = %4255
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.229, i32 noundef 1, ptr noundef nonnull %4257, ptr noundef nonnull %4257)
  %4260 = load ptr, ptr %4256, align 8, !tbaa !590
  %4261 = getelementptr inbounds %struct.PointDensity, ptr %4260, i64 0, i32 23
  %4262 = load ptr, ptr %4261, align 8, !tbaa !591
  %4263 = icmp eq ptr %4262, null
  br i1 %4263, label %4265, label %4264

4264:                                             ; preds = %4259
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.223, i32 noundef 1, ptr noundef nonnull %4262, ptr noundef nonnull %4262)
  br label %4265

4265:                                             ; preds = %4264, %4259
  %4266 = load ptr, ptr %4256, align 8, !tbaa !590
  %4267 = getelementptr inbounds %struct.PointDensity, ptr %4266, i64 0, i32 24
  %4268 = load ptr, ptr %4267, align 8, !tbaa !593
  %4269 = icmp eq ptr %4268, null
  br i1 %4269, label %4280, label %4270

4270:                                             ; preds = %4265
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.52, i32 noundef 1, ptr noundef nonnull %4268, ptr noundef nonnull %4268)
  br label %4271

4271:                                             ; preds = %4271, %4270
  %4272 = phi i64 [ 0, %4270 ], [ %4278, %4271 ]
  %4273 = getelementptr inbounds %struct.CurveMapping, ptr %4268, i64 0, i32 6, i64 %4272
  %4274 = load i16, ptr %4273, align 8, !tbaa !185
  %4275 = sext i16 %4274 to i32
  %4276 = getelementptr inbounds %struct.CurveMapping, ptr %4268, i64 0, i32 6, i64 %4272, i32 7
  %4277 = load ptr, ptr %4276, align 8, !tbaa !187
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.53, i32 noundef %4275, ptr noundef %4277, ptr noundef %4277)
  %4278 = add nuw nsw i64 %4272, 1
  %4279 = icmp eq i64 %4278, 4
  br i1 %4279, label %4280, label %4271, !llvm.loop !188

4280:                                             ; preds = %4271, %4265, %4255, %4252
  %4281 = load i16, ptr %4244, align 8, !tbaa !588
  %4282 = icmp eq i16 %4281, 15
  br i1 %4282, label %4283, label %4286

4283:                                             ; preds = %4280
  %4284 = getelementptr inbounds %struct.Tex, ptr %4221, i64 0, i32 59
  %4285 = load ptr, ptr %4284, align 8, !tbaa !594
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.230, i32 noundef 1, ptr noundef %4285, ptr noundef %4285)
  br label %4286

4286:                                             ; preds = %4283, %4280
  %4287 = load i16, ptr %4244, align 8, !tbaa !588
  %4288 = icmp eq i16 %4287, 16
  br i1 %4288, label %4289, label %4294

4289:                                             ; preds = %4286
  %4290 = getelementptr inbounds %struct.Tex, ptr %4221, i64 0, i32 60
  %4291 = load ptr, ptr %4290, align 8, !tbaa !595
  %4292 = icmp eq ptr %4291, null
  br i1 %4292, label %4294, label %4293

4293:                                             ; preds = %4289
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.231, i32 noundef 1, ptr noundef nonnull %4291, ptr noundef nonnull %4291)
  br label %4294

4294:                                             ; preds = %4293, %4289, %4286
  %4295 = getelementptr inbounds %struct.Tex, ptr %4221, i64 0, i32 52
  %4296 = load ptr, ptr %4295, align 8, !tbaa !596
  %4297 = icmp eq ptr %4296, null
  br i1 %4297, label %4300, label %4298

4298:                                             ; preds = %4294
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.105, i32 noundef 1, ptr noundef nonnull %4296, ptr noundef nonnull %4296)
  %4299 = load ptr, ptr %4295, align 8, !tbaa !596
  call fastcc void @write_nodetree(ptr noundef %43, ptr noundef %4299)
  br label %4300

4300:                                             ; preds = %4298, %4294
  %4301 = getelementptr inbounds %struct.Tex, ptr %4221, i64 0, i32 57
  %4302 = load ptr, ptr %4301, align 8, !tbaa !597
  call fastcc void @write_previews(ptr noundef %43, ptr noundef %4302)
  br label %4303

4303:                                             ; preds = %4300, %4225
  %4304 = load ptr, ptr %4221, align 8, !tbaa !43
  %4305 = icmp eq ptr %4304, null
  br i1 %4305, label %4306, label %4220, !llvm.loop !598

4306:                                             ; preds = %4303, %4214
  %4307 = load i32, ptr %124, align 8, !tbaa !49
  %4308 = icmp eq i32 %4307, 0
  br i1 %4308, label %4309, label %4336

4309:                                             ; preds = %4306
  %4310 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %4311 = load i32, ptr %4310, align 4, !tbaa !52
  %4312 = icmp eq i32 %4311, 0
  br i1 %4312, label %4336, label %4313

4313:                                             ; preds = %4309
  %4314 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %4315 = load ptr, ptr %4314, align 8, !tbaa !53
  %4316 = icmp eq ptr %43, null
  br i1 %4316, label %4335, label %4317

4317:                                             ; preds = %4313
  %4318 = icmp eq ptr %4315, null
  %4319 = icmp slt i32 %4311, 1
  %4320 = or i1 %4319, %4318
  br i1 %4320, label %4335, label %4321

4321:                                             ; preds = %4317
  %4322 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %4323 = load ptr, ptr %4322, align 8, !tbaa !54
  %4324 = icmp eq ptr %4323, null
  br i1 %4324, label %4326, label %4325

4325:                                             ; preds = %4321
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %4323, ptr noundef %4315, i32 noundef %4311) #14
  br label %4335

4326:                                             ; preds = %4321
  %4327 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %4328 = load ptr, ptr %4327, align 8, !tbaa !55
  %4329 = getelementptr inbounds %struct.WriteWrap, ptr %4328, i64 0, i32 2
  %4330 = load ptr, ptr %4329, align 8, !tbaa !56
  %4331 = zext nneg i32 %4311 to i64
  %4332 = call i64 %4330(ptr noundef %4328, ptr noundef %4315, i64 noundef %4331) #14
  %4333 = icmp eq i64 %4332, %4331
  br i1 %4333, label %4335, label %4334

4334:                                             ; preds = %4326
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %4335

4335:                                             ; preds = %4313, %4317, %4325, %4326, %4334
  store i32 0, ptr %4310, align 4, !tbaa !52
  br label %4336

4336:                                             ; preds = %4306, %4309, %4335
  %4337 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 14
  %4338 = load ptr, ptr %4337, align 8, !tbaa !43
  %4339 = icmp eq ptr %4338, null
  br i1 %4339, label %4580, label %4340

4340:                                             ; preds = %4336
  %4341 = load i8, ptr %47, align 8, !tbaa !75
  %4342 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %4343 = icmp eq i8 %4341, 0
  %4344 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 7
  %4345 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 12
  %4346 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 28
  %4347 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 30
  %4348 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 31
  %4349 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 23
  %4350 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 24
  %4351 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 25
  %4352 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 20
  %4353 = getelementptr inbounds %struct.ID, ptr %13, i64 0, i32 9
  %4354 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 1
  %4355 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 47
  %4356 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 5
  %4357 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %4358 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %4359 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %4360 = icmp eq ptr %43, null
  %4361 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %4362 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %4363 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %4364 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 26
  %4365 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 21
  %4366 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 27
  %4367 = getelementptr inbounds %struct.Mesh, ptr %13, i64 0, i32 22
  %4368 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 12
  %4369 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 28
  %4370 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 23
  %4371 = getelementptr inbounds %struct.ID, ptr %12, i64 0, i32 9
  %4372 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 1
  %4373 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 47
  %4374 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 5
  %4375 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %4376 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %4377 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %4378 = icmp eq ptr %43, null
  %4379 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %4380 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %4381 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %4382 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 29
  %4383 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 6
  %4384 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %4385 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %4386 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %4387 = icmp eq ptr %43, null
  %4388 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %4389 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %4390 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %4391 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 26
  %4392 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 21
  %4393 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 27
  %4394 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 22
  %4395 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 31
  %4396 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 25
  %4397 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 30
  %4398 = getelementptr inbounds %struct.Mesh, ptr %12, i64 0, i32 24
  br label %4399

4399:                                             ; preds = %4340, %4577
  %4400 = phi ptr [ %4338, %4340 ], [ %4578, %4577 ]
  %4401 = getelementptr inbounds %struct.ID, ptr %4400, i64 0, i32 6
  %4402 = load i32, ptr %4401, align 4, !tbaa !599
  %4403 = icmp sgt i32 %4402, 0
  br i1 %4403, label %4407, label %4404

4404:                                             ; preds = %4399
  %4405 = load ptr, ptr %4342, align 8, !tbaa !54
  %4406 = icmp eq ptr %4405, null
  br i1 %4406, label %4577, label %4407

4407:                                             ; preds = %4404, %4399
  br i1 %4343, label %4408, label %4511

4408:                                             ; preds = %4407
  call void @llvm.lifetime.start.p0(i64 1376, ptr nonnull %12) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1376) %12, ptr noundef nonnull align 8 dereferenceable(1376) %4400, i64 1376, i1 false), !tbaa.struct !602
  store ptr null, ptr %4368, align 8, !tbaa !606
  store i32 0, ptr %4369, align 8, !tbaa !607
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %4370, i8 0, i64 200, i1 false)
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 17741, ptr noundef nonnull @.str.232, i32 noundef 1, ptr noundef nonnull %4400, ptr noundef nonnull %12)
  %4409 = load ptr, ptr %4371, align 8, !tbaa !608
  %4410 = icmp eq ptr %4409, null
  br i1 %4410, label %4412, label %4411

4411:                                             ; preds = %4408
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %4409, ptr noundef nonnull %4409)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %4409, ptr noundef %43)
  br label %4412

4412:                                             ; preds = %4411, %4408
  %4413 = load ptr, ptr %4372, align 8, !tbaa !609
  %4414 = icmp eq ptr %4413, null
  br i1 %4414, label %4416, label %4415

4415:                                             ; preds = %4412
  call fastcc void @write_animdata(ptr noundef %43, ptr noundef nonnull %4413)
  br label %4416

4416:                                             ; preds = %4415, %4412
  %4417 = load i16, ptr %4373, align 2, !tbaa !610
  %4418 = load ptr, ptr %4374, align 8, !tbaa !611
  %4419 = icmp eq ptr %4418, null
  %4420 = icmp eq i16 %4417, 0
  %4421 = or i1 %4420, %4419
  br i1 %4421, label %4461, label %4422

4422:                                             ; preds = %4416
  %4423 = sext i16 %4417 to i32
  %4424 = shl nsw i32 %4423, 3
  %4425 = load i32, ptr %124, align 8, !tbaa !49
  %4426 = icmp eq i32 %4425, 0
  br i1 %4426, label %4427, label %4460

4427:                                             ; preds = %4422
  %4428 = load i32, ptr %4375, align 8, !tbaa !51
  %4429 = add nsw i32 %4428, 24
  store i32 %4429, ptr %4375, align 8, !tbaa !51
  %4430 = load i32, ptr %4376, align 4, !tbaa !52
  %4431 = icmp sgt i32 %4430, 99975
  br i1 %4431, label %4432, label %4449

4432:                                             ; preds = %4427
  %4433 = load ptr, ptr %4377, align 8, !tbaa !53
  %4434 = icmp eq ptr %4433, null
  %4435 = select i1 %4378, i1 true, i1 %4434
  br i1 %4435, label %4448, label %4436

4436:                                             ; preds = %4432
  %4437 = load ptr, ptr %4379, align 8, !tbaa !54
  %4438 = icmp eq ptr %4437, null
  br i1 %4438, label %4440, label %4439

4439:                                             ; preds = %4436
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %4437, ptr noundef nonnull %4433, i32 noundef %4430) #14
  br label %4448

4440:                                             ; preds = %4436
  %4441 = load ptr, ptr %4380, align 8, !tbaa !55
  %4442 = getelementptr inbounds %struct.WriteWrap, ptr %4441, i64 0, i32 2
  %4443 = load ptr, ptr %4442, align 8, !tbaa !56
  %4444 = zext nneg i32 %4430 to i64
  %4445 = call i64 %4443(ptr noundef %4441, ptr noundef nonnull %4433, i64 noundef %4444) #14
  %4446 = icmp eq i64 %4445, %4444
  br i1 %4446, label %4448, label %4447

4447:                                             ; preds = %4440
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %4448

4448:                                             ; preds = %4447, %4440, %4439, %4432
  store i32 0, ptr %4376, align 4, !tbaa !52
  br label %4449

4449:                                             ; preds = %4448, %4427
  %4450 = load ptr, ptr %4381, align 8, !tbaa !53
  %4451 = load i32, ptr %4376, align 4, !tbaa !52
  %4452 = sext i32 %4451 to i64
  %4453 = getelementptr inbounds i8, ptr %4450, i64 %4452
  store i32 1096040772, ptr %4453, align 1
  %4454 = getelementptr inbounds i8, ptr %4453, i64 4
  store i32 %4424, ptr %4454, align 1
  %4455 = getelementptr inbounds i8, ptr %4453, i64 8
  store ptr %4418, ptr %4455, align 1
  %4456 = getelementptr inbounds i8, ptr %4453, i64 16
  store i32 0, ptr %4456, align 1
  %4457 = getelementptr inbounds i8, ptr %4453, i64 20
  store i32 1, ptr %4457, align 1
  %4458 = load i32, ptr %4376, align 4, !tbaa !52
  %4459 = add nsw i32 %4458, 24
  store i32 %4459, ptr %4376, align 4, !tbaa !52
  br label %4460

4460:                                             ; preds = %4422, %4449
  call fastcc void @mywrite(ptr noundef %43, ptr noundef nonnull %4418, i32 noundef %4424)
  br label %4461

4461:                                             ; preds = %4416, %4460
  %4462 = load i32, ptr %4382, align 4, !tbaa !612
  %4463 = shl i32 %4462, 3
  %4464 = load ptr, ptr %4383, align 8, !tbaa !613
  %4465 = icmp eq ptr %4464, null
  %4466 = icmp eq i32 %4463, 0
  %4467 = or i1 %4466, %4465
  br i1 %4467, label %4505, label %4468

4468:                                             ; preds = %4461
  %4469 = load i32, ptr %124, align 8, !tbaa !49
  %4470 = icmp eq i32 %4469, 0
  br i1 %4470, label %4471, label %4504

4471:                                             ; preds = %4468
  %4472 = load i32, ptr %4384, align 8, !tbaa !51
  %4473 = add nsw i32 %4472, 24
  store i32 %4473, ptr %4384, align 8, !tbaa !51
  %4474 = load i32, ptr %4385, align 4, !tbaa !52
  %4475 = icmp sgt i32 %4474, 99975
  br i1 %4475, label %4476, label %4493

4476:                                             ; preds = %4471
  %4477 = load ptr, ptr %4386, align 8, !tbaa !53
  %4478 = icmp eq ptr %4477, null
  %4479 = select i1 %4387, i1 true, i1 %4478
  br i1 %4479, label %4492, label %4480

4480:                                             ; preds = %4476
  %4481 = load ptr, ptr %4388, align 8, !tbaa !54
  %4482 = icmp eq ptr %4481, null
  br i1 %4482, label %4484, label %4483

4483:                                             ; preds = %4480
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %4481, ptr noundef nonnull %4477, i32 noundef %4474) #14
  br label %4492

4484:                                             ; preds = %4480
  %4485 = load ptr, ptr %4389, align 8, !tbaa !55
  %4486 = getelementptr inbounds %struct.WriteWrap, ptr %4485, i64 0, i32 2
  %4487 = load ptr, ptr %4486, align 8, !tbaa !56
  %4488 = zext nneg i32 %4474 to i64
  %4489 = call i64 %4487(ptr noundef %4485, ptr noundef nonnull %4477, i64 noundef %4488) #14
  %4490 = icmp eq i64 %4489, %4488
  br i1 %4490, label %4492, label %4491

4491:                                             ; preds = %4484
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %4492

4492:                                             ; preds = %4491, %4484, %4483, %4476
  store i32 0, ptr %4385, align 4, !tbaa !52
  br label %4493

4493:                                             ; preds = %4492, %4471
  %4494 = load ptr, ptr %4390, align 8, !tbaa !53
  %4495 = load i32, ptr %4385, align 4, !tbaa !52
  %4496 = sext i32 %4495 to i64
  %4497 = getelementptr inbounds i8, ptr %4494, i64 %4496
  store i32 1096040772, ptr %4497, align 1
  %4498 = getelementptr inbounds i8, ptr %4497, i64 4
  store i32 %4463, ptr %4498, align 1
  %4499 = getelementptr inbounds i8, ptr %4497, i64 8
  store ptr %4464, ptr %4499, align 1
  %4500 = getelementptr inbounds i8, ptr %4497, i64 16
  store i32 0, ptr %4500, align 1
  %4501 = getelementptr inbounds i8, ptr %4497, i64 20
  store i32 1, ptr %4501, align 1
  %4502 = load i32, ptr %4385, align 4, !tbaa !52
  %4503 = add nsw i32 %4502, 24
  store i32 %4503, ptr %4385, align 4, !tbaa !52
  br label %4504

4504:                                             ; preds = %4468, %4493
  call fastcc void @mywrite(ptr noundef %43, ptr noundef nonnull %4464, i32 noundef %4463)
  br label %4505

4505:                                             ; preds = %4461, %4504
  %4506 = load i32, ptr %4391, align 8, !tbaa !614
  call fastcc void @write_customdata(ptr noundef %43, ptr noundef nonnull %12, i32 noundef %4506, ptr noundef nonnull %4392)
  %4507 = load i32, ptr %4393, align 4, !tbaa !615
  call fastcc void @write_customdata(ptr noundef %43, ptr noundef nonnull %12, i32 noundef %4507, ptr noundef nonnull %4394)
  %4508 = load i32, ptr %4369, align 8, !tbaa !607
  call fastcc void @write_customdata(ptr noundef %43, ptr noundef nonnull %12, i32 noundef %4508, ptr noundef nonnull %4370)
  %4509 = load i32, ptr %4395, align 4, !tbaa !616
  call fastcc void @write_customdata(ptr noundef %43, ptr noundef nonnull %12, i32 noundef %4509, ptr noundef nonnull %4396)
  %4510 = load i32, ptr %4397, align 8, !tbaa !617
  call fastcc void @write_customdata(ptr noundef %43, ptr noundef nonnull %12, i32 noundef %4510, ptr noundef nonnull %4398)
  call void @llvm.lifetime.end.p0(i64 1376, ptr nonnull %12) #14
  br label %4577

4511:                                             ; preds = %4407
  call void @llvm.lifetime.start.p0(i64 1376, ptr nonnull %13) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1376) %13, ptr noundef nonnull align 8 dereferenceable(1376) %4400, i64 1376, i1 false), !tbaa.struct !602
  store ptr null, ptr %4344, align 8, !tbaa !618
  store ptr null, ptr %4345, align 8, !tbaa !606
  store i32 0, ptr %4346, align 8, !tbaa !607
  store i32 0, ptr %4347, align 8, !tbaa !617
  store i32 0, ptr %4348, align 4, !tbaa !616
  call void @CustomData_reset(ptr noundef nonnull %4349) #14
  call void @CustomData_reset(ptr noundef nonnull %4350) #14
  call void @CustomData_reset(ptr noundef nonnull %4351) #14
  store ptr null, ptr %4352, align 8, !tbaa !619
  %4512 = getelementptr inbounds %struct.Mesh, ptr %4400, i64 0, i32 25
  %4513 = getelementptr inbounds %struct.Mesh, ptr %4400, i64 0, i32 24
  %4514 = load i32, ptr %4346, align 8, !tbaa !607
  %4515 = getelementptr inbounds %struct.Mesh, ptr %4400, i64 0, i32 31
  %4516 = load i32, ptr %4515, align 4, !tbaa !616
  %4517 = getelementptr inbounds %struct.Mesh, ptr %4400, i64 0, i32 30
  %4518 = load i32, ptr %4517, align 8, !tbaa !617
  %4519 = call i32 @BKE_mesh_mpoly_to_mface(ptr noundef nonnull %4349, ptr noundef nonnull %4512, ptr noundef nonnull %4513, i32 noundef %4514, i32 noundef %4516, i32 noundef %4518) #14
  store i32 %4519, ptr %4346, align 8, !tbaa !607
  call void @BKE_mesh_update_customdata_pointers(ptr noundef nonnull %13, i8 noundef zeroext 0) #14
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 17741, ptr noundef nonnull @.str.232, i32 noundef 1, ptr noundef nonnull %4400, ptr noundef nonnull %13)
  %4520 = load ptr, ptr %4353, align 8, !tbaa !608
  %4521 = icmp eq ptr %4520, null
  br i1 %4521, label %4523, label %4522

4522:                                             ; preds = %4511
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %4520, ptr noundef nonnull %4520)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %4520, ptr noundef %43)
  br label %4523

4523:                                             ; preds = %4522, %4511
  %4524 = load ptr, ptr %4354, align 8, !tbaa !609
  %4525 = icmp eq ptr %4524, null
  br i1 %4525, label %4527, label %4526

4526:                                             ; preds = %4523
  call fastcc void @write_animdata(ptr noundef %43, ptr noundef nonnull %4524)
  br label %4527

4527:                                             ; preds = %4526, %4523
  %4528 = load i16, ptr %4355, align 2, !tbaa !610
  %4529 = load ptr, ptr %4356, align 8, !tbaa !611
  %4530 = icmp eq ptr %4529, null
  %4531 = icmp eq i16 %4528, 0
  %4532 = or i1 %4531, %4530
  br i1 %4532, label %4572, label %4533

4533:                                             ; preds = %4527
  %4534 = sext i16 %4528 to i32
  %4535 = shl nsw i32 %4534, 3
  %4536 = load i32, ptr %124, align 8, !tbaa !49
  %4537 = icmp eq i32 %4536, 0
  br i1 %4537, label %4538, label %4571

4538:                                             ; preds = %4533
  %4539 = load i32, ptr %4357, align 8, !tbaa !51
  %4540 = add nsw i32 %4539, 24
  store i32 %4540, ptr %4357, align 8, !tbaa !51
  %4541 = load i32, ptr %4358, align 4, !tbaa !52
  %4542 = icmp sgt i32 %4541, 99975
  br i1 %4542, label %4543, label %4560

4543:                                             ; preds = %4538
  %4544 = load ptr, ptr %4359, align 8, !tbaa !53
  %4545 = icmp eq ptr %4544, null
  %4546 = select i1 %4360, i1 true, i1 %4545
  br i1 %4546, label %4559, label %4547

4547:                                             ; preds = %4543
  %4548 = load ptr, ptr %4361, align 8, !tbaa !54
  %4549 = icmp eq ptr %4548, null
  br i1 %4549, label %4551, label %4550

4550:                                             ; preds = %4547
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %4548, ptr noundef nonnull %4544, i32 noundef %4541) #14
  br label %4559

4551:                                             ; preds = %4547
  %4552 = load ptr, ptr %4362, align 8, !tbaa !55
  %4553 = getelementptr inbounds %struct.WriteWrap, ptr %4552, i64 0, i32 2
  %4554 = load ptr, ptr %4553, align 8, !tbaa !56
  %4555 = zext nneg i32 %4541 to i64
  %4556 = call i64 %4554(ptr noundef %4552, ptr noundef nonnull %4544, i64 noundef %4555) #14
  %4557 = icmp eq i64 %4556, %4555
  br i1 %4557, label %4559, label %4558

4558:                                             ; preds = %4551
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %4559

4559:                                             ; preds = %4558, %4551, %4550, %4543
  store i32 0, ptr %4358, align 4, !tbaa !52
  br label %4560

4560:                                             ; preds = %4559, %4538
  %4561 = load ptr, ptr %4363, align 8, !tbaa !53
  %4562 = load i32, ptr %4358, align 4, !tbaa !52
  %4563 = sext i32 %4562 to i64
  %4564 = getelementptr inbounds i8, ptr %4561, i64 %4563
  store i32 1096040772, ptr %4564, align 1
  %4565 = getelementptr inbounds i8, ptr %4564, i64 4
  store i32 %4535, ptr %4565, align 1
  %4566 = getelementptr inbounds i8, ptr %4564, i64 8
  store ptr %4529, ptr %4566, align 1
  %4567 = getelementptr inbounds i8, ptr %4564, i64 16
  store i32 0, ptr %4567, align 1
  %4568 = getelementptr inbounds i8, ptr %4564, i64 20
  store i32 1, ptr %4568, align 1
  %4569 = load i32, ptr %4358, align 4, !tbaa !52
  %4570 = add nsw i32 %4569, 24
  store i32 %4570, ptr %4358, align 4, !tbaa !52
  br label %4571

4571:                                             ; preds = %4533, %4560
  call fastcc void @mywrite(ptr noundef %43, ptr noundef nonnull %4529, i32 noundef %4535)
  br label %4572

4572:                                             ; preds = %4527, %4571
  %4573 = load i32, ptr %4364, align 8, !tbaa !614
  call fastcc void @write_customdata(ptr noundef %43, ptr noundef nonnull %13, i32 noundef %4573, ptr noundef nonnull %4365)
  %4574 = load i32, ptr %4366, align 4, !tbaa !615
  call fastcc void @write_customdata(ptr noundef %43, ptr noundef nonnull %13, i32 noundef %4574, ptr noundef nonnull %4367)
  %4575 = load i32, ptr %4346, align 8, !tbaa !607
  call fastcc void @write_customdata(ptr noundef %43, ptr noundef nonnull %13, i32 noundef %4575, ptr noundef nonnull %4349)
  %4576 = load i32, ptr %4346, align 8, !tbaa !607
  call void @CustomData_free(ptr noundef nonnull %4349, i32 noundef %4576) #14
  call void @llvm.lifetime.end.p0(i64 1376, ptr nonnull %13) #14
  br label %4577

4577:                                             ; preds = %4572, %4505, %4404
  %4578 = load ptr, ptr %4400, align 8, !tbaa !43
  %4579 = icmp eq ptr %4578, null
  br i1 %4579, label %4580, label %4399, !llvm.loop !620

4580:                                             ; preds = %4577, %4336
  %4581 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 37
  %4582 = load ptr, ptr %4581, align 8, !tbaa !43
  %4583 = icmp eq ptr %4582, null
  br i1 %4583, label %4697, label %4584

4584:                                             ; preds = %4580
  %4585 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  br label %4586

4586:                                             ; preds = %4584, %4694
  %4587 = phi ptr [ %4582, %4584 ], [ %4695, %4694 ]
  %4588 = getelementptr inbounds %struct.ID, ptr %4587, i64 0, i32 6
  %4589 = load i32, ptr %4588, align 4, !tbaa !621
  %4590 = icmp sgt i32 %4589, 0
  br i1 %4590, label %4594, label %4591

4591:                                             ; preds = %4586
  %4592 = load ptr, ptr %4585, align 8, !tbaa !54
  %4593 = icmp eq ptr %4592, null
  br i1 %4593, label %4694, label %4594

4594:                                             ; preds = %4591, %4586
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 16720, ptr noundef nonnull @.str.238, i32 noundef 1, ptr noundef nonnull %4587, ptr noundef nonnull %4587)
  %4595 = getelementptr inbounds %struct.ID, ptr %4587, i64 0, i32 9
  %4596 = load ptr, ptr %4595, align 8, !tbaa !622
  %4597 = icmp eq ptr %4596, null
  br i1 %4597, label %4599, label %4598

4598:                                             ; preds = %4594
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %4596, ptr noundef nonnull %4596)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %4596, ptr noundef %43)
  br label %4599

4599:                                             ; preds = %4598, %4594
  %4600 = getelementptr inbounds %struct.ParticleSettings, ptr %4587, i64 0, i32 1
  %4601 = load ptr, ptr %4600, align 8, !tbaa !623
  %4602 = icmp eq ptr %4601, null
  br i1 %4602, label %4604, label %4603

4603:                                             ; preds = %4599
  call fastcc void @write_animdata(ptr noundef %43, ptr noundef nonnull %4601)
  br label %4604

4604:                                             ; preds = %4603, %4599
  %4605 = getelementptr inbounds %struct.ParticleSettings, ptr %4587, i64 0, i32 128
  %4606 = load ptr, ptr %4605, align 8, !tbaa !624
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.153, i32 noundef 1, ptr noundef %4606, ptr noundef %4606)
  %4607 = getelementptr inbounds %struct.ParticleSettings, ptr %4587, i64 0, i32 129
  %4608 = load ptr, ptr %4607, align 8, !tbaa !625
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.153, i32 noundef 1, ptr noundef %4608, ptr noundef %4608)
  %4609 = getelementptr inbounds %struct.ParticleSettings, ptr %4587, i64 0, i32 4
  %4610 = load ptr, ptr %4609, align 8, !tbaa !626
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.107, i32 noundef 1, ptr noundef %4610, ptr noundef %4610)
  %4611 = getelementptr inbounds %struct.ParticleSettings, ptr %4587, i64 0, i32 123
  %4612 = load ptr, ptr %4611, align 8, !tbaa !43
  %4613 = icmp eq ptr %4612, null
  br i1 %4613, label %4641, label %4614

4614:                                             ; preds = %4604
  %4615 = getelementptr inbounds %struct.ParticleSettings, ptr %4587, i64 0, i32 122
  br label %4616

4616:                                             ; preds = %4614, %4638
  %4617 = phi ptr [ %4612, %4614 ], [ %4639, %4638 ]
  %4618 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %4617, i64 0, i32 5
  store i16 0, ptr %4618, align 4, !tbaa !627
  %4619 = load ptr, ptr %4615, align 8, !tbaa !629
  %4620 = icmp eq ptr %4619, null
  br i1 %4620, label %4638, label %4621

4621:                                             ; preds = %4616
  %4622 = getelementptr inbounds %struct.Group, ptr %4619, i64 0, i32 1
  %4623 = load ptr, ptr %4622, align 8, !tbaa !630
  %4624 = icmp eq ptr %4623, null
  br i1 %4624, label %4638, label %4625

4625:                                             ; preds = %4621
  %4626 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %4617, i64 0, i32 2
  %4627 = load ptr, ptr %4626, align 8, !tbaa !631
  br label %4628

4628:                                             ; preds = %4625, %4633
  %4629 = phi ptr [ %4623, %4625 ], [ %4634, %4633 ]
  %4630 = getelementptr inbounds %struct.GroupObject, ptr %4629, i64 0, i32 2
  %4631 = load ptr, ptr %4630, align 8, !tbaa !632
  %4632 = icmp eq ptr %4631, %4627
  br i1 %4632, label %4638, label %4633

4633:                                             ; preds = %4628
  %4634 = load ptr, ptr %4629, align 8, !tbaa !634
  %4635 = load i16, ptr %4618, align 4, !tbaa !627
  %4636 = add i16 %4635, 1
  store i16 %4636, ptr %4618, align 4, !tbaa !627
  %4637 = icmp eq ptr %4634, null
  br i1 %4637, label %4638, label %4628, !llvm.loop !635

4638:                                             ; preds = %4633, %4628, %4621, %4616
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.239, i32 noundef 1, ptr noundef nonnull %4617, ptr noundef nonnull %4617)
  %4639 = load ptr, ptr %4617, align 8, !tbaa !43
  %4640 = icmp eq ptr %4639, null
  br i1 %4640, label %4641, label %4616, !llvm.loop !636

4641:                                             ; preds = %4638, %4604
  %4642 = getelementptr inbounds %struct.ParticleSettings, ptr %4587, i64 0, i32 2
  %4643 = load ptr, ptr %4642, align 8, !tbaa !637
  %4644 = icmp eq ptr %4643, null
  br i1 %4644, label %4675, label %4645

4645:                                             ; preds = %4641
  %4646 = getelementptr inbounds %struct.ParticleSettings, ptr %4587, i64 0, i32 11
  %4647 = load i16, ptr %4646, align 8, !tbaa !506
  %4648 = icmp eq i16 %4647, 3
  br i1 %4648, label %4649, label %4675

4649:                                             ; preds = %4645
  %4650 = getelementptr inbounds %struct.BoidSettings, ptr %4643, i64 0, i32 22
  %4651 = load ptr, ptr %4650, align 8, !tbaa !638
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.240, i32 noundef 1, ptr noundef nonnull %4643, ptr noundef nonnull %4643)
  %4652 = icmp eq ptr %4651, null
  br i1 %4652, label %4675, label %4653

4653:                                             ; preds = %4649, %4672
  %4654 = phi ptr [ %4673, %4672 ], [ %4651, %4649 ]
  %4655 = getelementptr inbounds %struct.BoidState, ptr %4654, i64 0, i32 2
  %4656 = load ptr, ptr %4655, align 8, !tbaa !640
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.242, i32 noundef 1, ptr noundef nonnull %4654, ptr noundef nonnull %4654)
  %4657 = icmp eq ptr %4656, null
  br i1 %4657, label %4672, label %4658

4658:                                             ; preds = %4653, %4668
  %4659 = phi ptr [ %4670, %4668 ], [ %4656, %4653 ]
  %4660 = getelementptr inbounds %struct.BoidRule, ptr %4659, i64 0, i32 2
  %4661 = load i32, ptr %4660, align 8, !tbaa !642
  %4662 = add i32 %4661, -1
  %4663 = icmp ult i32 %4662, 8
  br i1 %4663, label %4664, label %4668

4664:                                             ; preds = %4658
  %4665 = zext nneg i32 %4662 to i64
  %4666 = shl i64 %4665, 2
  %4667 = call ptr @llvm.load.relative.i64(ptr @reltable.write_file_handle.311, i64 %4666)
  br label %4668

4668:                                             ; preds = %4658, %4664
  %4669 = phi ptr [ %4667, %4664 ], [ @.str.248, %4658 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull %4669, i32 noundef 1, ptr noundef nonnull %4659, ptr noundef nonnull %4659)
  %4670 = load ptr, ptr %4659, align 8, !tbaa !644
  %4671 = icmp eq ptr %4670, null
  br i1 %4671, label %4672, label %4658, !llvm.loop !645

4672:                                             ; preds = %4668, %4653
  %4673 = load ptr, ptr %4654, align 8, !tbaa !646
  %4674 = icmp eq ptr %4673, null
  br i1 %4674, label %4675, label %4653, !llvm.loop !647

4675:                                             ; preds = %4672, %4649, %4645, %4641
  %4676 = getelementptr inbounds %struct.ParticleSettings, ptr %4587, i64 0, i32 3
  %4677 = load ptr, ptr %4676, align 8, !tbaa !508
  %4678 = icmp eq ptr %4677, null
  br i1 %4678, label %4684, label %4679

4679:                                             ; preds = %4675
  %4680 = getelementptr inbounds %struct.ParticleSettings, ptr %4587, i64 0, i32 11
  %4681 = load i16, ptr %4680, align 8, !tbaa !506
  %4682 = icmp eq i16 %4681, 4
  br i1 %4682, label %4683, label %4684

4683:                                             ; preds = %4679
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.241, i32 noundef 1, ptr noundef nonnull %4677, ptr noundef nonnull %4677)
  br label %4684

4684:                                             ; preds = %4683, %4679, %4675
  br label %4685

4685:                                             ; preds = %4684, %4691
  %4686 = phi i64 [ %4692, %4691 ], [ 0, %4684 ]
  %4687 = getelementptr inbounds %struct.ParticleSettings, ptr %4587, i64 0, i32 121, i64 %4686
  %4688 = load ptr, ptr %4687, align 8, !tbaa !43
  %4689 = icmp eq ptr %4688, null
  br i1 %4689, label %4691, label %4690

4690:                                             ; preds = %4685
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.134, i32 noundef 1, ptr noundef nonnull %4688, ptr noundef nonnull %4688)
  br label %4691

4691:                                             ; preds = %4690, %4685
  %4692 = add nuw nsw i64 %4686, 1
  %4693 = icmp eq i64 %4692, 18
  br i1 %4693, label %4694, label %4685, !llvm.loop !648

4694:                                             ; preds = %4691, %4591
  %4695 = load ptr, ptr %4587, align 8, !tbaa !43
  %4696 = icmp eq ptr %4695, null
  br i1 %4696, label %4697, label %4586, !llvm.loop !649

4697:                                             ; preds = %4694, %4580
  %4698 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 35
  %4699 = load ptr, ptr %4698, align 8, !tbaa !43
  %4700 = icmp eq ptr %4699, null
  br i1 %4700, label %4724, label %4701

4701:                                             ; preds = %4697
  %4702 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  br label %4703

4703:                                             ; preds = %4701, %4721
  %4704 = phi ptr [ %4699, %4701 ], [ %4722, %4721 ]
  %4705 = getelementptr inbounds %struct.ID, ptr %4704, i64 0, i32 6
  %4706 = load i32, ptr %4705, align 4, !tbaa !650
  %4707 = icmp sgt i32 %4706, 0
  br i1 %4707, label %4711, label %4708

4708:                                             ; preds = %4703
  %4709 = load ptr, ptr %4702, align 8, !tbaa !54
  %4710 = icmp eq ptr %4709, null
  br i1 %4710, label %4721, label %4711

4711:                                             ; preds = %4708, %4703
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 21582, ptr noundef nonnull @.str.105, i32 noundef 1, ptr noundef nonnull %4704, ptr noundef nonnull %4704)
  call fastcc void @write_nodetree(ptr noundef %43, ptr noundef nonnull %4704)
  %4712 = getelementptr inbounds %struct.ID, ptr %4704, i64 0, i32 9
  %4713 = load ptr, ptr %4712, align 8, !tbaa !651
  %4714 = icmp eq ptr %4713, null
  br i1 %4714, label %4716, label %4715

4715:                                             ; preds = %4711
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %4713, ptr noundef nonnull %4713)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %4713, ptr noundef %43)
  br label %4716

4716:                                             ; preds = %4715, %4711
  %4717 = getelementptr inbounds %struct.bNodeTree, ptr %4704, i64 0, i32 1
  %4718 = load ptr, ptr %4717, align 8, !tbaa !652
  %4719 = icmp eq ptr %4718, null
  br i1 %4719, label %4721, label %4720

4720:                                             ; preds = %4716
  call fastcc void @write_animdata(ptr noundef %43, ptr noundef nonnull %4718)
  br label %4721

4721:                                             ; preds = %4720, %4716, %4708
  %4722 = load ptr, ptr %4704, align 8, !tbaa !43
  %4723 = icmp eq ptr %4722, null
  br i1 %4723, label %4724, label %4703, !llvm.loop !653

4724:                                             ; preds = %4721, %4697
  %4725 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 36
  %4726 = load ptr, ptr %4725, align 8, !tbaa !43
  %4727 = icmp eq ptr %4726, null
  br i1 %4727, label %4766, label %4728

4728:                                             ; preds = %4724
  %4729 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  br label %4730

4730:                                             ; preds = %4728, %4763
  %4731 = phi ptr [ %4726, %4728 ], [ %4764, %4763 ]
  %4732 = getelementptr inbounds %struct.ID, ptr %4731, i64 0, i32 6
  %4733 = load i32, ptr %4732, align 4, !tbaa !654
  %4734 = icmp sgt i32 %4733, 0
  br i1 %4734, label %4738, label %4735

4735:                                             ; preds = %4730
  %4736 = load ptr, ptr %4729, align 8, !tbaa !54
  %4737 = icmp eq ptr %4736, null
  br i1 %4737, label %4763, label %4738

4738:                                             ; preds = %4735, %4730
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 21058, ptr noundef nonnull @.str.249, i32 noundef 1, ptr noundef nonnull %4731, ptr noundef nonnull %4731)
  %4739 = getelementptr inbounds %struct.ID, ptr %4731, i64 0, i32 9
  %4740 = load ptr, ptr %4739, align 8, !tbaa !658
  %4741 = icmp eq ptr %4740, null
  br i1 %4741, label %4743, label %4742

4742:                                             ; preds = %4738
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %4740, ptr noundef nonnull %4740)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %4740, ptr noundef %43)
  br label %4743

4743:                                             ; preds = %4742, %4738
  %4744 = getelementptr inbounds %struct.Brush, ptr %4731, i64 0, i32 2
  %4745 = load ptr, ptr %4744, align 8, !tbaa !659
  %4746 = icmp eq ptr %4745, null
  br i1 %4746, label %4757, label %4747

4747:                                             ; preds = %4743
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.52, i32 noundef 1, ptr noundef nonnull %4745, ptr noundef nonnull %4745)
  br label %4748

4748:                                             ; preds = %4748, %4747
  %4749 = phi i64 [ 0, %4747 ], [ %4755, %4748 ]
  %4750 = getelementptr inbounds %struct.CurveMapping, ptr %4745, i64 0, i32 6, i64 %4749
  %4751 = load i16, ptr %4750, align 8, !tbaa !185
  %4752 = sext i16 %4751 to i32
  %4753 = getelementptr inbounds %struct.CurveMapping, ptr %4745, i64 0, i32 6, i64 %4749, i32 7
  %4754 = load ptr, ptr %4753, align 8, !tbaa !187
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.53, i32 noundef %4752, ptr noundef %4754, ptr noundef %4754)
  %4755 = add nuw nsw i64 %4749, 1
  %4756 = icmp eq i64 %4755, 4
  br i1 %4756, label %4757, label %4748, !llvm.loop !188

4757:                                             ; preds = %4748, %4743
  %4758 = load ptr, ptr %4744, align 8, !tbaa !659
  %4759 = icmp eq ptr %4758, null
  br i1 %4759, label %4763, label %4760

4760:                                             ; preds = %4757
  %4761 = getelementptr inbounds %struct.Brush, ptr %4731, i64 0, i32 8
  %4762 = load ptr, ptr %4761, align 8, !tbaa !660
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.223, i32 noundef 1, ptr noundef %4762, ptr noundef %4762)
  br label %4763

4763:                                             ; preds = %4760, %4757, %4735
  %4764 = load ptr, ptr %4731, align 8, !tbaa !43
  %4765 = icmp eq ptr %4764, null
  br i1 %4765, label %4766, label %4730, !llvm.loop !661

4766:                                             ; preds = %4763, %4724
  %4767 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 38
  %4768 = load ptr, ptr %4767, align 8, !tbaa !43
  %4769 = icmp eq ptr %4768, null
  br i1 %4769, label %4796, label %4770

4770:                                             ; preds = %4766
  %4771 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  br label %4772

4772:                                             ; preds = %4770, %4793
  %4773 = phi ptr [ %4768, %4770 ], [ %4794, %4793 ]
  %4774 = getelementptr inbounds %struct.ID, ptr %4773, i64 0, i32 6
  %4775 = load i32, ptr %4774, align 4, !tbaa !662
  %4776 = icmp sgt i32 %4775, 0
  br i1 %4776, label %4780, label %4777

4777:                                             ; preds = %4772
  %4778 = load ptr, ptr %4771, align 8, !tbaa !54
  %4779 = icmp eq ptr %4778, null
  br i1 %4779, label %4793, label %4780

4780:                                             ; preds = %4777, %4772
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 19536, ptr noundef nonnull @.str.250, i32 noundef 1, ptr noundef nonnull %4773, ptr noundef nonnull %4773)
  %4781 = getelementptr inbounds %struct.ID, ptr %4773, i64 0, i32 9
  %4782 = load ptr, ptr %4781, align 8, !tbaa !664
  %4783 = icmp eq ptr %4782, null
  br i1 %4783, label %4785, label %4784

4784:                                             ; preds = %4780
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %4782, ptr noundef nonnull %4782)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %4782, ptr noundef %43)
  br label %4785

4785:                                             ; preds = %4784, %4780
  %4786 = getelementptr inbounds %struct.Palette, ptr %4773, i64 0, i32 1
  %4787 = load ptr, ptr %4786, align 8, !tbaa !43
  %4788 = icmp eq ptr %4787, null
  br i1 %4788, label %4793, label %4789

4789:                                             ; preds = %4785, %4789
  %4790 = phi ptr [ %4791, %4789 ], [ %4787, %4785 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.251, i32 noundef 1, ptr noundef nonnull %4790, ptr noundef nonnull %4790)
  %4791 = load ptr, ptr %4790, align 8, !tbaa !43
  %4792 = icmp eq ptr %4791, null
  br i1 %4792, label %4793, label %4789, !llvm.loop !665

4793:                                             ; preds = %4789, %4785, %4777
  %4794 = load ptr, ptr %4773, align 8, !tbaa !43
  %4795 = icmp eq ptr %4794, null
  br i1 %4795, label %4796, label %4772, !llvm.loop !666

4796:                                             ; preds = %4793, %4766
  %4797 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 39
  %4798 = load ptr, ptr %4797, align 8, !tbaa !43
  %4799 = icmp eq ptr %4798, null
  br i1 %4799, label %4822, label %4800

4800:                                             ; preds = %4796
  %4801 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  br label %4802

4802:                                             ; preds = %4800, %4819
  %4803 = phi ptr [ %4798, %4800 ], [ %4820, %4819 ]
  %4804 = getelementptr inbounds %struct.ID, ptr %4803, i64 0, i32 6
  %4805 = load i32, ptr %4804, align 4, !tbaa !667
  %4806 = icmp sgt i32 %4805, 0
  br i1 %4806, label %4810, label %4807

4807:                                             ; preds = %4802
  %4808 = load ptr, ptr %4801, align 8, !tbaa !54
  %4809 = icmp eq ptr %4808, null
  br i1 %4809, label %4819, label %4810

4810:                                             ; preds = %4807, %4802
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 17232, ptr noundef nonnull @.str.252, i32 noundef 1, ptr noundef nonnull %4803, ptr noundef nonnull %4803)
  %4811 = getelementptr inbounds %struct.PaintCurve, ptr %4803, i64 0, i32 2
  %4812 = load i32, ptr %4811, align 8, !tbaa !669
  %4813 = getelementptr inbounds %struct.PaintCurve, ptr %4803, i64 0, i32 1
  %4814 = load ptr, ptr %4813, align 8, !tbaa !670
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.253, i32 noundef %4812, ptr noundef %4814, ptr noundef %4814)
  %4815 = getelementptr inbounds %struct.ID, ptr %4803, i64 0, i32 9
  %4816 = load ptr, ptr %4815, align 8, !tbaa !671
  %4817 = icmp eq ptr %4816, null
  br i1 %4817, label %4819, label %4818

4818:                                             ; preds = %4810
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %4816, ptr noundef nonnull %4816)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %4816, ptr noundef %43)
  br label %4819

4819:                                             ; preds = %4818, %4810, %4807
  %4820 = load ptr, ptr %4803, align 8, !tbaa !43
  %4821 = icmp eq ptr %4820, null
  br i1 %4821, label %4822, label %4802, !llvm.loop !672

4822:                                             ; preds = %4819, %4796
  %4823 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 27
  %4824 = load ptr, ptr %4823, align 8, !tbaa !43
  %4825 = icmp eq ptr %4824, null
  br i1 %4825, label %4844, label %4826

4826:                                             ; preds = %4822
  %4827 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  br label %4828

4828:                                             ; preds = %4826, %4841
  %4829 = phi ptr [ %4824, %4826 ], [ %4842, %4841 ]
  %4830 = getelementptr inbounds %struct.ID, ptr %4829, i64 0, i32 6
  %4831 = load i32, ptr %4830, align 4, !tbaa !673
  %4832 = icmp sgt i32 %4831, 0
  br i1 %4832, label %4836, label %4833

4833:                                             ; preds = %4828
  %4834 = load ptr, ptr %4827, align 8, !tbaa !54
  %4835 = icmp eq ptr %4834, null
  br i1 %4835, label %4841, label %4836

4836:                                             ; preds = %4833, %4828
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 22864, ptr noundef nonnull @.str.254, i32 noundef 1, ptr noundef nonnull %4829, ptr noundef nonnull %4829)
  %4837 = getelementptr inbounds %struct.ID, ptr %4829, i64 0, i32 9
  %4838 = load ptr, ptr %4837, align 8, !tbaa !675
  %4839 = icmp eq ptr %4838, null
  br i1 %4839, label %4841, label %4840

4840:                                             ; preds = %4836
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %4838, ptr noundef nonnull %4838)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %4838, ptr noundef %43)
  br label %4841

4841:                                             ; preds = %4840, %4836, %4833
  %4842 = load ptr, ptr %4829, align 8, !tbaa !43
  %4843 = icmp eq ptr %4842, null
  br i1 %4843, label %4844, label %4828, !llvm.loop !676

4844:                                             ; preds = %4841, %4822
  %4845 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 41
  %4846 = load ptr, ptr %4845, align 8, !tbaa !43
  %4847 = icmp eq ptr %4846, null
  br i1 %4847, label %4910, label %4848

4848:                                             ; preds = %4844
  %4849 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  br label %4850

4850:                                             ; preds = %4848, %4907
  %4851 = phi ptr [ %4846, %4848 ], [ %4908, %4907 ]
  %4852 = getelementptr inbounds %struct.ID, ptr %4851, i64 0, i32 6
  %4853 = load i32, ptr %4852, align 4, !tbaa !677
  %4854 = icmp sgt i32 %4853, 0
  br i1 %4854, label %4858, label %4855

4855:                                             ; preds = %4850
  %4856 = load ptr, ptr %4849, align 8, !tbaa !54
  %4857 = icmp eq ptr %4856, null
  br i1 %4857, label %4907, label %4858

4858:                                             ; preds = %4855, %4850
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 17479, ptr noundef nonnull @.str.255, i32 noundef 1, ptr noundef nonnull %4851, ptr noundef nonnull %4851)
  %4859 = getelementptr inbounds %struct.bGPdata, ptr %4851, i64 0, i32 1
  %4860 = load ptr, ptr %4859, align 8, !tbaa !43
  %4861 = icmp eq ptr %4860, null
  br i1 %4861, label %4862, label %4865

4862:                                             ; preds = %4865, %4858
  %4863 = load ptr, ptr %4859, align 8, !tbaa !43
  %4864 = icmp eq ptr %4863, null
  br i1 %4864, label %4907, label %4872

4865:                                             ; preds = %4858, %4865
  %4866 = phi ptr [ %4867, %4865 ], [ %4860, %4858 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.256, i32 noundef 1, ptr noundef nonnull %4866, ptr noundef nonnull %4866)
  %4867 = load ptr, ptr %4866, align 8, !tbaa !43
  %4868 = icmp eq ptr %4867, null
  br i1 %4868, label %4862, label %4865, !llvm.loop !569

4869:                                             ; preds = %4884, %4877
  %4870 = load ptr, ptr %4873, align 8, !tbaa !43
  %4871 = icmp eq ptr %4870, null
  br i1 %4871, label %4907, label %4872, !llvm.loop !679

4872:                                             ; preds = %4862, %4869
  %4873 = phi ptr [ %4870, %4869 ], [ %4863, %4862 ]
  %4874 = getelementptr inbounds %struct.bGPDlayer, ptr %4873, i64 0, i32 2
  %4875 = load ptr, ptr %4874, align 8, !tbaa !43
  %4876 = icmp eq ptr %4875, null
  br i1 %4876, label %4877, label %4880

4877:                                             ; preds = %4880, %4872
  %4878 = load ptr, ptr %4874, align 8, !tbaa !43
  %4879 = icmp eq ptr %4878, null
  br i1 %4879, label %4869, label %4887

4880:                                             ; preds = %4872, %4880
  %4881 = phi ptr [ %4882, %4880 ], [ %4875, %4872 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.257, i32 noundef 1, ptr noundef nonnull %4881, ptr noundef nonnull %4881)
  %4882 = load ptr, ptr %4881, align 8, !tbaa !43
  %4883 = icmp eq ptr %4882, null
  br i1 %4883, label %4877, label %4880, !llvm.loop !569

4884:                                             ; preds = %4899, %4892
  %4885 = load ptr, ptr %4888, align 8, !tbaa !43
  %4886 = icmp eq ptr %4885, null
  br i1 %4886, label %4869, label %4887, !llvm.loop !680

4887:                                             ; preds = %4877, %4884
  %4888 = phi ptr [ %4885, %4884 ], [ %4878, %4877 ]
  %4889 = getelementptr inbounds %struct.bGPDframe, ptr %4888, i64 0, i32 2
  %4890 = load ptr, ptr %4889, align 8, !tbaa !43
  %4891 = icmp eq ptr %4890, null
  br i1 %4891, label %4892, label %4895

4892:                                             ; preds = %4895, %4887
  %4893 = load ptr, ptr %4889, align 8, !tbaa !43
  %4894 = icmp eq ptr %4893, null
  br i1 %4894, label %4884, label %4899

4895:                                             ; preds = %4887, %4895
  %4896 = phi ptr [ %4897, %4895 ], [ %4890, %4887 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.258, i32 noundef 1, ptr noundef nonnull %4896, ptr noundef nonnull %4896)
  %4897 = load ptr, ptr %4896, align 8, !tbaa !43
  %4898 = icmp eq ptr %4897, null
  br i1 %4898, label %4892, label %4895, !llvm.loop !569

4899:                                             ; preds = %4892, %4899
  %4900 = phi ptr [ %4905, %4899 ], [ %4893, %4892 ]
  %4901 = getelementptr inbounds %struct.bGPDstroke, ptr %4900, i64 0, i32 4
  %4902 = load i32, ptr %4901, align 8, !tbaa !681
  %4903 = getelementptr inbounds %struct.bGPDstroke, ptr %4900, i64 0, i32 2
  %4904 = load ptr, ptr %4903, align 8, !tbaa !683
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.259, i32 noundef %4902, ptr noundef %4904, ptr noundef %4904)
  %4905 = load ptr, ptr %4900, align 8, !tbaa !43
  %4906 = icmp eq ptr %4905, null
  br i1 %4906, label %4884, label %4899, !llvm.loop !684

4907:                                             ; preds = %4869, %4862, %4855
  %4908 = load ptr, ptr %4851, align 8, !tbaa !43
  %4909 = icmp eq ptr %4908, null
  br i1 %4909, label %4910, label %4850, !llvm.loop !685

4910:                                             ; preds = %4907, %4844
  %4911 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 44
  %4912 = load ptr, ptr %4911, align 8, !tbaa !43
  %4913 = icmp eq ptr %4912, null
  br i1 %4913, label %5162, label %4914

4914:                                             ; preds = %4910
  %4915 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  br label %4916

4916:                                             ; preds = %4914, %5159
  %4917 = phi ptr [ %4912, %4914 ], [ %5160, %5159 ]
  %4918 = getelementptr inbounds %struct.ID, ptr %4917, i64 0, i32 6
  %4919 = load i32, ptr %4918, align 4, !tbaa !686
  %4920 = icmp sgt i32 %4919, 0
  br i1 %4920, label %4924, label %4921

4921:                                             ; preds = %4916
  %4922 = load ptr, ptr %4915, align 8, !tbaa !54
  %4923 = icmp eq ptr %4922, null
  br i1 %4923, label %5159, label %4924

4924:                                             ; preds = %4921, %4916
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 21324, ptr noundef nonnull @.str.260, i32 noundef 1, ptr noundef nonnull %4917, ptr noundef nonnull %4917)
  %4925 = getelementptr inbounds %struct.ID, ptr %4917, i64 0, i32 9
  %4926 = load ptr, ptr %4925, align 8, !tbaa !688
  %4927 = icmp eq ptr %4926, null
  br i1 %4927, label %4929, label %4928

4928:                                             ; preds = %4924
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %4926, ptr noundef nonnull %4926)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %4926, ptr noundef %43)
  br label %4929

4929:                                             ; preds = %4928, %4924
  %4930 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4917, i64 0, i32 1
  %4931 = load ptr, ptr %4930, align 8, !tbaa !689
  %4932 = icmp eq ptr %4931, null
  br i1 %4932, label %4934, label %4933

4933:                                             ; preds = %4929
  call fastcc void @write_animdata(ptr noundef %43, ptr noundef nonnull %4931)
  br label %4934

4934:                                             ; preds = %4933, %4929
  %4935 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4917, i64 0, i32 41
  %4936 = load ptr, ptr %4935, align 8, !tbaa !43
  %4937 = icmp eq ptr %4936, null
  br i1 %4937, label %4938, label %4941

4938:                                             ; preds = %4951, %4934
  %4939 = load ptr, ptr %4935, align 8, !tbaa !43
  %4940 = icmp eq ptr %4939, null
  br i1 %4940, label %4974, label %4955

4941:                                             ; preds = %4934, %4951
  %4942 = phi ptr [ %4953, %4951 ], [ %4936, %4934 ]
  %4943 = getelementptr inbounds %struct.LineStyleModifier, ptr %4942, i64 0, i32 3
  %4944 = load i32, ptr %4943, align 8, !tbaa !690
  %4945 = add i32 %4944, -1
  %4946 = icmp ult i32 %4945, 4
  br i1 %4946, label %4947, label %4951

4947:                                             ; preds = %4941
  %4948 = zext nneg i32 %4945 to i64
  %4949 = shl i64 %4948, 2
  %4950 = call ptr @llvm.load.relative.i64(ptr @reltable.write_file_handle, i64 %4949)
  br label %4951

4951:                                             ; preds = %4941, %4947
  %4952 = phi ptr [ %4950, %4947 ], [ @.str.265, %4941 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull %4952, i32 noundef 1, ptr noundef nonnull %4942, ptr noundef nonnull %4942)
  %4953 = load ptr, ptr %4942, align 8, !tbaa !43
  %4954 = icmp eq ptr %4953, null
  br i1 %4954, label %4938, label %4941, !llvm.loop !692

4955:                                             ; preds = %4938, %4971
  %4956 = phi ptr [ %4972, %4971 ], [ %4939, %4938 ]
  %4957 = getelementptr inbounds %struct.LineStyleModifier, ptr %4956, i64 0, i32 3
  %4958 = load i32, ptr %4957, align 8, !tbaa !690
  switch i32 %4958, label %4971 [
    i32 1, label %4959
    i32 2, label %4962
    i32 3, label %4965
    i32 4, label %4968
  ]

4959:                                             ; preds = %4955
  %4960 = getelementptr inbounds %struct.LineStyleColorModifier_AlongStroke, ptr %4956, i64 0, i32 1
  %4961 = load ptr, ptr %4960, align 8, !tbaa !693
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.223, i32 noundef 1, ptr noundef %4961, ptr noundef %4961)
  br label %4971

4962:                                             ; preds = %4955
  %4963 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromCamera, ptr %4956, i64 0, i32 1
  %4964 = load ptr, ptr %4963, align 8, !tbaa !695
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.223, i32 noundef 1, ptr noundef %4964, ptr noundef %4964)
  br label %4971

4965:                                             ; preds = %4955
  %4966 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromObject, ptr %4956, i64 0, i32 2
  %4967 = load ptr, ptr %4966, align 8, !tbaa !697
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.223, i32 noundef 1, ptr noundef %4967, ptr noundef %4967)
  br label %4971

4968:                                             ; preds = %4955
  %4969 = getelementptr inbounds %struct.LineStyleColorModifier_Material, ptr %4956, i64 0, i32 1
  %4970 = load ptr, ptr %4969, align 8, !tbaa !699
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.223, i32 noundef 1, ptr noundef %4970, ptr noundef %4970)
  br label %4971

4971:                                             ; preds = %4968, %4965, %4962, %4959, %4955
  %4972 = load ptr, ptr %4956, align 8, !tbaa !43
  %4973 = icmp eq ptr %4972, null
  br i1 %4973, label %4974, label %4955, !llvm.loop !701

4974:                                             ; preds = %4971, %4938
  %4975 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4917, i64 0, i32 42
  %4976 = load ptr, ptr %4975, align 8, !tbaa !43
  %4977 = icmp eq ptr %4976, null
  br i1 %4977, label %4978, label %4981

4978:                                             ; preds = %4991, %4974
  %4979 = load ptr, ptr %4975, align 8, !tbaa !43
  %4980 = icmp eq ptr %4979, null
  br i1 %4980, label %5050, label %4995

4981:                                             ; preds = %4974, %4991
  %4982 = phi ptr [ %4993, %4991 ], [ %4976, %4974 ]
  %4983 = getelementptr inbounds %struct.LineStyleModifier, ptr %4982, i64 0, i32 3
  %4984 = load i32, ptr %4983, align 8, !tbaa !690
  %4985 = add i32 %4984, -1
  %4986 = icmp ult i32 %4985, 4
  br i1 %4986, label %4987, label %4991

4987:                                             ; preds = %4981
  %4988 = zext nneg i32 %4985 to i64
  %4989 = shl i64 %4988, 2
  %4990 = call ptr @llvm.load.relative.i64(ptr @reltable.write_file_handle.309, i64 %4989)
  br label %4991

4991:                                             ; preds = %4981, %4987
  %4992 = phi ptr [ %4990, %4987 ], [ @.str.270, %4981 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull %4992, i32 noundef 1, ptr noundef nonnull %4982, ptr noundef nonnull %4982)
  %4993 = load ptr, ptr %4982, align 8, !tbaa !43
  %4994 = icmp eq ptr %4993, null
  br i1 %4994, label %4978, label %4981, !llvm.loop !702

4995:                                             ; preds = %4978, %5047
  %4996 = phi ptr [ %5048, %5047 ], [ %4979, %4978 ]
  %4997 = getelementptr inbounds %struct.LineStyleModifier, ptr %4996, i64 0, i32 3
  %4998 = load i32, ptr %4997, align 8, !tbaa !690
  switch i32 %4998, label %5047 [
    i32 1, label %4999
    i32 2, label %5011
    i32 3, label %5023
    i32 4, label %5035
  ]

4999:                                             ; preds = %4995
  %5000 = getelementptr inbounds %struct.LineStyleAlphaModifier_AlongStroke, ptr %4996, i64 0, i32 1
  %5001 = load ptr, ptr %5000, align 8, !tbaa !703
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.52, i32 noundef 1, ptr noundef %5001, ptr noundef %5001)
  br label %5002

5002:                                             ; preds = %5002, %4999
  %5003 = phi i64 [ 0, %4999 ], [ %5009, %5002 ]
  %5004 = getelementptr inbounds %struct.CurveMapping, ptr %5001, i64 0, i32 6, i64 %5003
  %5005 = load i16, ptr %5004, align 8, !tbaa !185
  %5006 = sext i16 %5005 to i32
  %5007 = getelementptr inbounds %struct.CurveMapping, ptr %5001, i64 0, i32 6, i64 %5003, i32 7
  %5008 = load ptr, ptr %5007, align 8, !tbaa !187
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.53, i32 noundef %5006, ptr noundef %5008, ptr noundef %5008)
  %5009 = add nuw nsw i64 %5003, 1
  %5010 = icmp eq i64 %5009, 4
  br i1 %5010, label %5047, label %5002, !llvm.loop !188

5011:                                             ; preds = %4995
  %5012 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromCamera, ptr %4996, i64 0, i32 1
  %5013 = load ptr, ptr %5012, align 8, !tbaa !705
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.52, i32 noundef 1, ptr noundef %5013, ptr noundef %5013)
  br label %5014

5014:                                             ; preds = %5014, %5011
  %5015 = phi i64 [ 0, %5011 ], [ %5021, %5014 ]
  %5016 = getelementptr inbounds %struct.CurveMapping, ptr %5013, i64 0, i32 6, i64 %5015
  %5017 = load i16, ptr %5016, align 8, !tbaa !185
  %5018 = sext i16 %5017 to i32
  %5019 = getelementptr inbounds %struct.CurveMapping, ptr %5013, i64 0, i32 6, i64 %5015, i32 7
  %5020 = load ptr, ptr %5019, align 8, !tbaa !187
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.53, i32 noundef %5018, ptr noundef %5020, ptr noundef %5020)
  %5021 = add nuw nsw i64 %5015, 1
  %5022 = icmp eq i64 %5021, 4
  br i1 %5022, label %5047, label %5014, !llvm.loop !188

5023:                                             ; preds = %4995
  %5024 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromObject, ptr %4996, i64 0, i32 2
  %5025 = load ptr, ptr %5024, align 8, !tbaa !707
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.52, i32 noundef 1, ptr noundef %5025, ptr noundef %5025)
  br label %5026

5026:                                             ; preds = %5026, %5023
  %5027 = phi i64 [ 0, %5023 ], [ %5033, %5026 ]
  %5028 = getelementptr inbounds %struct.CurveMapping, ptr %5025, i64 0, i32 6, i64 %5027
  %5029 = load i16, ptr %5028, align 8, !tbaa !185
  %5030 = sext i16 %5029 to i32
  %5031 = getelementptr inbounds %struct.CurveMapping, ptr %5025, i64 0, i32 6, i64 %5027, i32 7
  %5032 = load ptr, ptr %5031, align 8, !tbaa !187
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.53, i32 noundef %5030, ptr noundef %5032, ptr noundef %5032)
  %5033 = add nuw nsw i64 %5027, 1
  %5034 = icmp eq i64 %5033, 4
  br i1 %5034, label %5047, label %5026, !llvm.loop !188

5035:                                             ; preds = %4995
  %5036 = getelementptr inbounds %struct.LineStyleAlphaModifier_Material, ptr %4996, i64 0, i32 1
  %5037 = load ptr, ptr %5036, align 8, !tbaa !709
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.52, i32 noundef 1, ptr noundef %5037, ptr noundef %5037)
  br label %5038

5038:                                             ; preds = %5038, %5035
  %5039 = phi i64 [ 0, %5035 ], [ %5045, %5038 ]
  %5040 = getelementptr inbounds %struct.CurveMapping, ptr %5037, i64 0, i32 6, i64 %5039
  %5041 = load i16, ptr %5040, align 8, !tbaa !185
  %5042 = sext i16 %5041 to i32
  %5043 = getelementptr inbounds %struct.CurveMapping, ptr %5037, i64 0, i32 6, i64 %5039, i32 7
  %5044 = load ptr, ptr %5043, align 8, !tbaa !187
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.53, i32 noundef %5042, ptr noundef %5044, ptr noundef %5044)
  %5045 = add nuw nsw i64 %5039, 1
  %5046 = icmp eq i64 %5045, 4
  br i1 %5046, label %5047, label %5038, !llvm.loop !188

5047:                                             ; preds = %5038, %5026, %5014, %5002, %4995
  %5048 = load ptr, ptr %4996, align 8, !tbaa !43
  %5049 = icmp eq ptr %5048, null
  br i1 %5049, label %5050, label %4995, !llvm.loop !711

5050:                                             ; preds = %5047, %4978
  %5051 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4917, i64 0, i32 43
  %5052 = load ptr, ptr %5051, align 8, !tbaa !43
  %5053 = icmp eq ptr %5052, null
  br i1 %5053, label %5054, label %5057

5054:                                             ; preds = %5066, %5050
  %5055 = load ptr, ptr %5051, align 8, !tbaa !43
  %5056 = icmp eq ptr %5055, null
  br i1 %5056, label %5125, label %5070

5057:                                             ; preds = %5050, %5066
  %5058 = phi ptr [ %5068, %5066 ], [ %5052, %5050 ]
  %5059 = getelementptr inbounds %struct.LineStyleModifier, ptr %5058, i64 0, i32 3
  %5060 = load i32, ptr %5059, align 8, !tbaa !690
  switch i32 %5060, label %5065 [
    i32 1, label %5066
    i32 2, label %5061
    i32 3, label %5062
    i32 4, label %5063
    i32 13, label %5064
  ]

5061:                                             ; preds = %5057
  br label %5066

5062:                                             ; preds = %5057
  br label %5066

5063:                                             ; preds = %5057
  br label %5066

5064:                                             ; preds = %5057
  br label %5066

5065:                                             ; preds = %5057
  br label %5066

5066:                                             ; preds = %5065, %5064, %5063, %5062, %5061, %5057
  %5067 = phi ptr [ @.str.276, %5065 ], [ @.str.275, %5064 ], [ @.str.274, %5063 ], [ @.str.273, %5062 ], [ @.str.272, %5061 ], [ @.str.271, %5057 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull %5067, i32 noundef 1, ptr noundef nonnull %5058, ptr noundef nonnull %5058)
  %5068 = load ptr, ptr %5058, align 8, !tbaa !43
  %5069 = icmp eq ptr %5068, null
  br i1 %5069, label %5054, label %5057, !llvm.loop !712

5070:                                             ; preds = %5054, %5122
  %5071 = phi ptr [ %5123, %5122 ], [ %5055, %5054 ]
  %5072 = getelementptr inbounds %struct.LineStyleModifier, ptr %5071, i64 0, i32 3
  %5073 = load i32, ptr %5072, align 8, !tbaa !690
  switch i32 %5073, label %5122 [
    i32 1, label %5074
    i32 2, label %5086
    i32 3, label %5098
    i32 4, label %5110
  ]

5074:                                             ; preds = %5070
  %5075 = getelementptr inbounds %struct.LineStyleThicknessModifier_AlongStroke, ptr %5071, i64 0, i32 1
  %5076 = load ptr, ptr %5075, align 8, !tbaa !713
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.52, i32 noundef 1, ptr noundef %5076, ptr noundef %5076)
  br label %5077

5077:                                             ; preds = %5077, %5074
  %5078 = phi i64 [ 0, %5074 ], [ %5084, %5077 ]
  %5079 = getelementptr inbounds %struct.CurveMapping, ptr %5076, i64 0, i32 6, i64 %5078
  %5080 = load i16, ptr %5079, align 8, !tbaa !185
  %5081 = sext i16 %5080 to i32
  %5082 = getelementptr inbounds %struct.CurveMapping, ptr %5076, i64 0, i32 6, i64 %5078, i32 7
  %5083 = load ptr, ptr %5082, align 8, !tbaa !187
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.53, i32 noundef %5081, ptr noundef %5083, ptr noundef %5083)
  %5084 = add nuw nsw i64 %5078, 1
  %5085 = icmp eq i64 %5084, 4
  br i1 %5085, label %5122, label %5077, !llvm.loop !188

5086:                                             ; preds = %5070
  %5087 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromCamera, ptr %5071, i64 0, i32 1
  %5088 = load ptr, ptr %5087, align 8, !tbaa !715
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.52, i32 noundef 1, ptr noundef %5088, ptr noundef %5088)
  br label %5089

5089:                                             ; preds = %5089, %5086
  %5090 = phi i64 [ 0, %5086 ], [ %5096, %5089 ]
  %5091 = getelementptr inbounds %struct.CurveMapping, ptr %5088, i64 0, i32 6, i64 %5090
  %5092 = load i16, ptr %5091, align 8, !tbaa !185
  %5093 = sext i16 %5092 to i32
  %5094 = getelementptr inbounds %struct.CurveMapping, ptr %5088, i64 0, i32 6, i64 %5090, i32 7
  %5095 = load ptr, ptr %5094, align 8, !tbaa !187
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.53, i32 noundef %5093, ptr noundef %5095, ptr noundef %5095)
  %5096 = add nuw nsw i64 %5090, 1
  %5097 = icmp eq i64 %5096, 4
  br i1 %5097, label %5122, label %5089, !llvm.loop !188

5098:                                             ; preds = %5070
  %5099 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %5071, i64 0, i32 2
  %5100 = load ptr, ptr %5099, align 8, !tbaa !717
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.52, i32 noundef 1, ptr noundef %5100, ptr noundef %5100)
  br label %5101

5101:                                             ; preds = %5101, %5098
  %5102 = phi i64 [ 0, %5098 ], [ %5108, %5101 ]
  %5103 = getelementptr inbounds %struct.CurveMapping, ptr %5100, i64 0, i32 6, i64 %5102
  %5104 = load i16, ptr %5103, align 8, !tbaa !185
  %5105 = sext i16 %5104 to i32
  %5106 = getelementptr inbounds %struct.CurveMapping, ptr %5100, i64 0, i32 6, i64 %5102, i32 7
  %5107 = load ptr, ptr %5106, align 8, !tbaa !187
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.53, i32 noundef %5105, ptr noundef %5107, ptr noundef %5107)
  %5108 = add nuw nsw i64 %5102, 1
  %5109 = icmp eq i64 %5108, 4
  br i1 %5109, label %5122, label %5101, !llvm.loop !188

5110:                                             ; preds = %5070
  %5111 = getelementptr inbounds %struct.LineStyleThicknessModifier_Material, ptr %5071, i64 0, i32 1
  %5112 = load ptr, ptr %5111, align 8, !tbaa !719
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.52, i32 noundef 1, ptr noundef %5112, ptr noundef %5112)
  br label %5113

5113:                                             ; preds = %5113, %5110
  %5114 = phi i64 [ 0, %5110 ], [ %5120, %5113 ]
  %5115 = getelementptr inbounds %struct.CurveMapping, ptr %5112, i64 0, i32 6, i64 %5114
  %5116 = load i16, ptr %5115, align 8, !tbaa !185
  %5117 = sext i16 %5116 to i32
  %5118 = getelementptr inbounds %struct.CurveMapping, ptr %5112, i64 0, i32 6, i64 %5114, i32 7
  %5119 = load ptr, ptr %5118, align 8, !tbaa !187
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.53, i32 noundef %5117, ptr noundef %5119, ptr noundef %5119)
  %5120 = add nuw nsw i64 %5114, 1
  %5121 = icmp eq i64 %5120, 4
  br i1 %5121, label %5122, label %5113, !llvm.loop !188

5122:                                             ; preds = %5113, %5101, %5089, %5077, %5070
  %5123 = load ptr, ptr %5071, align 8, !tbaa !43
  %5124 = icmp eq ptr %5123, null
  br i1 %5124, label %5125, label %5070, !llvm.loop !721

5125:                                             ; preds = %5122, %5054
  %5126 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4917, i64 0, i32 44
  %5127 = load ptr, ptr %5126, align 8, !tbaa !43
  %5128 = icmp eq ptr %5127, null
  br i1 %5128, label %5143, label %5129

5129:                                             ; preds = %5125, %5139
  %5130 = phi ptr [ %5141, %5139 ], [ %5127, %5125 ]
  %5131 = getelementptr inbounds %struct.LineStyleModifier, ptr %5130, i64 0, i32 3
  %5132 = load i32, ptr %5131, align 8, !tbaa !690
  %5133 = add i32 %5132, -5
  %5134 = icmp ult i32 %5133, 14
  br i1 %5134, label %5135, label %5139

5135:                                             ; preds = %5129
  %5136 = zext nneg i32 %5133 to i64
  %5137 = shl i64 %5136, 2
  %5138 = call ptr @llvm.load.relative.i64(ptr @reltable.write_file_handle.310, i64 %5137)
  br label %5139

5139:                                             ; preds = %5129, %5135
  %5140 = phi ptr [ %5138, %5135 ], [ @.str.290, %5129 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull %5140, i32 noundef 1, ptr noundef nonnull %5130, ptr noundef nonnull %5130)
  %5141 = load ptr, ptr %5130, align 8, !tbaa !43
  %5142 = icmp eq ptr %5141, null
  br i1 %5142, label %5143, label %5129, !llvm.loop !722

5143:                                             ; preds = %5139, %5125
  br label %5144

5144:                                             ; preds = %5143, %5150
  %5145 = phi i64 [ %5151, %5150 ], [ 0, %5143 ]
  %5146 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4917, i64 0, i32 39, i64 %5145
  %5147 = load ptr, ptr %5146, align 8, !tbaa !43
  %5148 = icmp eq ptr %5147, null
  br i1 %5148, label %5150, label %5149

5149:                                             ; preds = %5144
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.134, i32 noundef 1, ptr noundef nonnull %5147, ptr noundef nonnull %5147)
  br label %5150

5150:                                             ; preds = %5149, %5144
  %5151 = add nuw nsw i64 %5145, 1
  %5152 = icmp eq i64 %5151, 18
  br i1 %5152, label %5153, label %5144, !llvm.loop !723

5153:                                             ; preds = %5150
  %5154 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %4917, i64 0, i32 40
  %5155 = load ptr, ptr %5154, align 8, !tbaa !724
  %5156 = icmp eq ptr %5155, null
  br i1 %5156, label %5159, label %5157

5157:                                             ; preds = %5153
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.105, i32 noundef 1, ptr noundef nonnull %5155, ptr noundef nonnull %5155)
  %5158 = load ptr, ptr %5154, align 8, !tbaa !724
  call fastcc void @write_nodetree(ptr noundef %43, ptr noundef %5158)
  br label %5159

5159:                                             ; preds = %5157, %5153, %4921
  %5160 = load ptr, ptr %4917, align 8, !tbaa !43
  %5161 = icmp eq ptr %5160, null
  br i1 %5161, label %5162, label %4916, !llvm.loop !725

5162:                                             ; preds = %5159, %4910
  %5163 = load ptr, ptr %0, align 8, !tbaa !726
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %11) #14
  %5164 = icmp eq ptr %5163, null
  br i1 %5164, label %5300, label %5165

5165:                                             ; preds = %5162
  %5166 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %5167 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %5168 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %5169 = icmp eq ptr %43, null
  %5170 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %5171 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %5172 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %5173 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  br label %5174

5174:                                             ; preds = %5165, %5297
  %5175 = phi ptr [ %5163, %5165 ], [ %5298, %5297 ]
  %5176 = call i32 @set_listbasepointers(ptr noundef nonnull %5175, ptr noundef nonnull %11) #14
  %5177 = getelementptr inbounds %struct.Main, ptr %5175, i64 0, i32 10
  %5178 = load ptr, ptr %5177, align 8, !tbaa !727
  %5179 = icmp eq ptr %5178, null
  br i1 %5179, label %5184, label %5180

5180:                                             ; preds = %5174
  %5181 = getelementptr inbounds %struct.Library, ptr %5178, i64 0, i32 6
  %5182 = load ptr, ptr %5181, align 8, !tbaa !728
  %5183 = icmp eq ptr %5182, null
  br i1 %5183, label %5184, label %5211

5184:                                             ; preds = %5180, %5174
  %5185 = icmp eq i32 %5176, 0
  br i1 %5185, label %5297, label %5186

5186:                                             ; preds = %5184
  %5187 = sext i32 %5176 to i64
  br label %5191

5188:                                             ; preds = %5208, %5191
  %5189 = and i64 %5193, 4294967295
  %5190 = icmp eq i64 %5189, 0
  br i1 %5190, label %5297, label %5191

5191:                                             ; preds = %5186, %5188
  %5192 = phi i64 [ %5187, %5186 ], [ %5193, %5188 ]
  %5193 = add nsw i64 %5192, -1
  %5194 = getelementptr inbounds [35 x ptr], ptr %11, i64 0, i64 %5193
  %5195 = load ptr, ptr %5194, align 8, !tbaa !43
  %5196 = load ptr, ptr %5195, align 8, !tbaa !43
  %5197 = icmp eq ptr %5196, null
  br i1 %5197, label %5188, label %5198

5198:                                             ; preds = %5191, %5208
  %5199 = phi ptr [ %5209, %5208 ], [ %5196, %5191 ]
  %5200 = getelementptr inbounds %struct.ID, ptr %5199, i64 0, i32 6
  %5201 = load i32, ptr %5200, align 4, !tbaa !730
  %5202 = icmp sgt i32 %5201, 0
  br i1 %5202, label %5203, label %5208

5203:                                             ; preds = %5198
  %5204 = getelementptr inbounds %struct.ID, ptr %5199, i64 0, i32 5
  %5205 = load i16, ptr %5204, align 2, !tbaa !731
  %5206 = and i16 %5205, 1
  %5207 = icmp eq i16 %5206, 0
  br i1 %5207, label %5208, label %5211, !llvm.loop !732

5208:                                             ; preds = %5203, %5198
  %5209 = load ptr, ptr %5199, align 8, !tbaa !43
  %5210 = icmp eq ptr %5209, null
  br i1 %5210, label %5188, label %5198, !llvm.loop !733

5211:                                             ; preds = %5203, %5180
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 18764, ptr noundef nonnull @.str.291, i32 noundef 1, ptr noundef %5178, ptr noundef %5178)
  %5212 = load ptr, ptr %5177, align 8, !tbaa !727
  %5213 = getelementptr inbounds %struct.Library, ptr %5212, i64 0, i32 6
  %5214 = load ptr, ptr %5213, align 8, !tbaa !728
  %5215 = icmp eq ptr %5214, null
  br i1 %5215, label %5269, label %5216

5216:                                             ; preds = %5211
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.130, i32 noundef 1, ptr noundef nonnull %5214, ptr noundef nonnull %5214)
  %5217 = load i32, ptr %5214, align 8, !tbaa !346
  %5218 = getelementptr inbounds %struct.PackedFile, ptr %5214, i64 0, i32 2
  %5219 = load ptr, ptr %5218, align 8, !tbaa !348
  %5220 = icmp eq ptr %5219, null
  %5221 = icmp eq i32 %5217, 0
  %5222 = or i1 %5221, %5220
  br i1 %5222, label %5262, label %5223

5223:                                             ; preds = %5216
  %5224 = add nsw i32 %5217, 3
  %5225 = and i32 %5224, -4
  %5226 = load i32, ptr %124, align 8, !tbaa !49
  %5227 = icmp eq i32 %5226, 0
  br i1 %5227, label %5228, label %5261

5228:                                             ; preds = %5223
  %5229 = load i32, ptr %5166, align 8, !tbaa !51
  %5230 = add nsw i32 %5229, 24
  store i32 %5230, ptr %5166, align 8, !tbaa !51
  %5231 = load i32, ptr %5167, align 4, !tbaa !52
  %5232 = icmp sgt i32 %5231, 99975
  br i1 %5232, label %5233, label %5250

5233:                                             ; preds = %5228
  %5234 = load ptr, ptr %5168, align 8, !tbaa !53
  %5235 = icmp eq ptr %5234, null
  %5236 = select i1 %5169, i1 true, i1 %5235
  br i1 %5236, label %5249, label %5237

5237:                                             ; preds = %5233
  %5238 = load ptr, ptr %5170, align 8, !tbaa !54
  %5239 = icmp eq ptr %5238, null
  br i1 %5239, label %5241, label %5240

5240:                                             ; preds = %5237
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %5238, ptr noundef nonnull %5234, i32 noundef %5231) #14
  br label %5249

5241:                                             ; preds = %5237
  %5242 = load ptr, ptr %5171, align 8, !tbaa !55
  %5243 = getelementptr inbounds %struct.WriteWrap, ptr %5242, i64 0, i32 2
  %5244 = load ptr, ptr %5243, align 8, !tbaa !56
  %5245 = zext nneg i32 %5231 to i64
  %5246 = call i64 %5244(ptr noundef %5242, ptr noundef nonnull %5234, i64 noundef %5245) #14
  %5247 = icmp eq i64 %5246, %5245
  br i1 %5247, label %5249, label %5248

5248:                                             ; preds = %5241
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %5249

5249:                                             ; preds = %5248, %5241, %5240, %5233
  store i32 0, ptr %5167, align 4, !tbaa !52
  br label %5250

5250:                                             ; preds = %5249, %5228
  %5251 = load ptr, ptr %5172, align 8, !tbaa !53
  %5252 = load i32, ptr %5167, align 4, !tbaa !52
  %5253 = sext i32 %5252 to i64
  %5254 = getelementptr inbounds i8, ptr %5251, i64 %5253
  store i32 1096040772, ptr %5254, align 1
  %5255 = getelementptr inbounds i8, ptr %5254, i64 4
  store i32 %5225, ptr %5255, align 1
  %5256 = getelementptr inbounds i8, ptr %5254, i64 8
  store ptr %5219, ptr %5256, align 1
  %5257 = getelementptr inbounds i8, ptr %5254, i64 16
  store i32 0, ptr %5257, align 1
  %5258 = getelementptr inbounds i8, ptr %5254, i64 20
  store i32 1, ptr %5258, align 1
  %5259 = load i32, ptr %5167, align 4, !tbaa !52
  %5260 = add nsw i32 %5259, 24
  store i32 %5260, ptr %5167, align 4, !tbaa !52
  br label %5261

5261:                                             ; preds = %5223, %5250
  call fastcc void @mywrite(ptr noundef %43, ptr noundef nonnull %5219, i32 noundef %5225)
  br label %5262

5262:                                             ; preds = %5216, %5261
  %5263 = load ptr, ptr %5173, align 8, !tbaa !54
  %5264 = icmp eq ptr %5263, null
  br i1 %5264, label %5265, label %5269

5265:                                             ; preds = %5262
  %5266 = load ptr, ptr %5177, align 8, !tbaa !727
  %5267 = getelementptr inbounds %struct.Library, ptr %5266, i64 0, i32 3
  %5268 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.292, ptr noundef nonnull %5267)
  br label %5269

5269:                                             ; preds = %5265, %5262, %5211
  %5270 = icmp eq i32 %5176, 0
  br i1 %5270, label %5297, label %5271

5271:                                             ; preds = %5269
  %5272 = sext i32 %5176 to i64
  br label %5276

5273:                                             ; preds = %5294, %5276
  %5274 = and i64 %5278, 4294967295
  %5275 = icmp eq i64 %5274, 0
  br i1 %5275, label %5297, label %5276, !llvm.loop !734

5276:                                             ; preds = %5271, %5273
  %5277 = phi i64 [ %5272, %5271 ], [ %5278, %5273 ]
  %5278 = add nsw i64 %5277, -1
  %5279 = getelementptr inbounds [35 x ptr], ptr %11, i64 0, i64 %5278
  %5280 = load ptr, ptr %5279, align 8, !tbaa !43
  %5281 = load ptr, ptr %5280, align 8, !tbaa !43
  %5282 = icmp eq ptr %5281, null
  br i1 %5282, label %5273, label %5283

5283:                                             ; preds = %5276, %5294
  %5284 = phi ptr [ %5295, %5294 ], [ %5281, %5276 ]
  %5285 = getelementptr inbounds %struct.ID, ptr %5284, i64 0, i32 6
  %5286 = load i32, ptr %5285, align 4, !tbaa !730
  %5287 = icmp sgt i32 %5286, 0
  br i1 %5287, label %5288, label %5294

5288:                                             ; preds = %5283
  %5289 = getelementptr inbounds %struct.ID, ptr %5284, i64 0, i32 5
  %5290 = load i16, ptr %5289, align 2, !tbaa !731
  %5291 = and i16 %5290, 1
  %5292 = icmp eq i16 %5291, 0
  br i1 %5292, label %5294, label %5293

5293:                                             ; preds = %5288
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 17481, ptr noundef nonnull @.str.293, i32 noundef 1, ptr noundef nonnull %5284, ptr noundef nonnull %5284)
  br label %5294

5294:                                             ; preds = %5293, %5288, %5283
  %5295 = load ptr, ptr %5284, align 8, !tbaa !43
  %5296 = icmp eq ptr %5295, null
  br i1 %5296, label %5273, label %5283, !llvm.loop !735

5297:                                             ; preds = %5188, %5273, %5184, %5269
  %5298 = load ptr, ptr %5175, align 8, !tbaa !726
  %5299 = icmp eq ptr %5298, null
  br i1 %5299, label %5300, label %5174, !llvm.loop !736

5300:                                             ; preds = %5297, %5162
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %11) #14
  %5301 = icmp eq i32 %4, 0
  br i1 %5301, label %5381, label %5302

5302:                                             ; preds = %5300
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1380275029, ptr noundef nonnull @.str.294, i32 noundef 1, ptr noundef nonnull @U, ptr noundef nonnull @U)
  %5303 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !43
  %5304 = icmp eq ptr %5303, null
  br i1 %5304, label %5305, label %5308

5305:                                             ; preds = %5308, %5302
  %5306 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 42), align 8, !tbaa !43
  %5307 = icmp eq ptr %5306, null
  br i1 %5307, label %5315, label %5318

5308:                                             ; preds = %5302, %5308
  %5309 = phi ptr [ %5310, %5308 ], [ %5303, %5302 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.295, i32 noundef 1, ptr noundef nonnull %5309, ptr noundef nonnull %5309)
  %5310 = load ptr, ptr %5309, align 8, !tbaa !43
  %5311 = icmp eq ptr %5310, null
  br i1 %5311, label %5305, label %5308, !llvm.loop !737

5312:                                             ; preds = %5355, %5345
  %5313 = load ptr, ptr %5319, align 8, !tbaa !43
  %5314 = icmp eq ptr %5313, null
  br i1 %5314, label %5315, label %5318, !llvm.loop !738

5315:                                             ; preds = %5312, %5305
  %5316 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 43), align 8, !tbaa !43
  %5317 = icmp eq ptr %5316, null
  br i1 %5317, label %5358, label %5361

5318:                                             ; preds = %5305, %5312
  %5319 = phi ptr [ %5313, %5312 ], [ %5306, %5305 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.296, i32 noundef 1, ptr noundef nonnull %5319, ptr noundef nonnull %5319)
  %5320 = getelementptr inbounds %struct.wmKeyMap, ptr %5319, i64 0, i32 3
  %5321 = load ptr, ptr %5320, align 8, !tbaa !43
  %5322 = icmp eq ptr %5321, null
  br i1 %5322, label %5345, label %5323

5323:                                             ; preds = %5318, %5342
  %5324 = phi ptr [ %5343, %5342 ], [ %5321, %5318 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.297, i32 noundef 1, ptr noundef nonnull %5324, ptr noundef nonnull %5324)
  %5325 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %5324, i64 0, i32 2
  %5326 = load ptr, ptr %5325, align 8, !tbaa !739
  %5327 = icmp eq ptr %5326, null
  br i1 %5327, label %5333, label %5328

5328:                                             ; preds = %5323
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.301, i32 noundef 1, ptr noundef nonnull %5326, ptr noundef nonnull %5326)
  %5329 = getelementptr inbounds %struct.wmKeyMapItem, ptr %5326, i64 0, i32 3
  %5330 = load ptr, ptr %5329, align 8, !tbaa !741
  %5331 = icmp eq ptr %5330, null
  br i1 %5331, label %5333, label %5332

5332:                                             ; preds = %5328
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %5330, ptr noundef nonnull %5330)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %5330, ptr noundef %43)
  br label %5333

5333:                                             ; preds = %5332, %5328, %5323
  %5334 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %5324, i64 0, i32 3
  %5335 = load ptr, ptr %5334, align 8, !tbaa !743
  %5336 = icmp eq ptr %5335, null
  br i1 %5336, label %5342, label %5337

5337:                                             ; preds = %5333
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.301, i32 noundef 1, ptr noundef nonnull %5335, ptr noundef nonnull %5335)
  %5338 = getelementptr inbounds %struct.wmKeyMapItem, ptr %5335, i64 0, i32 3
  %5339 = load ptr, ptr %5338, align 8, !tbaa !741
  %5340 = icmp eq ptr %5339, null
  br i1 %5340, label %5342, label %5341

5341:                                             ; preds = %5337
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %5339, ptr noundef nonnull %5339)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %5339, ptr noundef %43)
  br label %5342

5342:                                             ; preds = %5341, %5337, %5333
  %5343 = load ptr, ptr %5324, align 8, !tbaa !43
  %5344 = icmp eq ptr %5343, null
  br i1 %5344, label %5345, label %5323, !llvm.loop !744

5345:                                             ; preds = %5342, %5318
  %5346 = getelementptr inbounds %struct.wmKeyMap, ptr %5319, i64 0, i32 2
  %5347 = load ptr, ptr %5346, align 8, !tbaa !43
  %5348 = icmp eq ptr %5347, null
  br i1 %5348, label %5312, label %5349

5349:                                             ; preds = %5345, %5355
  %5350 = phi ptr [ %5356, %5355 ], [ %5347, %5345 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.301, i32 noundef 1, ptr noundef nonnull %5350, ptr noundef nonnull %5350)
  %5351 = getelementptr inbounds %struct.wmKeyMapItem, ptr %5350, i64 0, i32 3
  %5352 = load ptr, ptr %5351, align 8, !tbaa !741
  %5353 = icmp eq ptr %5352, null
  br i1 %5353, label %5355, label %5354

5354:                                             ; preds = %5349
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %5352, ptr noundef nonnull %5352)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %5352, ptr noundef %43)
  br label %5355

5355:                                             ; preds = %5349, %5354
  %5356 = load ptr, ptr %5350, align 8, !tbaa !43
  %5357 = icmp eq ptr %5356, null
  br i1 %5357, label %5312, label %5349, !llvm.loop !745

5358:                                             ; preds = %5367, %5315
  %5359 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 44), align 8, !tbaa !43
  %5360 = icmp eq ptr %5359, null
  br i1 %5360, label %5370, label %5373

5361:                                             ; preds = %5315, %5367
  %5362 = phi ptr [ %5368, %5367 ], [ %5316, %5315 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.298, i32 noundef 1, ptr noundef nonnull %5362, ptr noundef nonnull %5362)
  %5363 = getelementptr inbounds %struct.bAddon, ptr %5362, i64 0, i32 3
  %5364 = load ptr, ptr %5363, align 8, !tbaa !746
  %5365 = icmp eq ptr %5364, null
  br i1 %5365, label %5367, label %5366

5366:                                             ; preds = %5361
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %5364, ptr noundef nonnull %5364)
  call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %5364, ptr noundef %43)
  br label %5367

5367:                                             ; preds = %5366, %5361
  %5368 = load ptr, ptr %5362, align 8, !tbaa !43
  %5369 = icmp eq ptr %5368, null
  br i1 %5369, label %5358, label %5361, !llvm.loop !748

5370:                                             ; preds = %5373, %5358
  %5371 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 40), align 8, !tbaa !43
  %5372 = icmp eq ptr %5371, null
  br i1 %5372, label %5381, label %5377

5373:                                             ; preds = %5358, %5373
  %5374 = phi ptr [ %5375, %5373 ], [ %5359, %5358 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.299, i32 noundef 1, ptr noundef nonnull %5374, ptr noundef nonnull %5374)
  %5375 = load ptr, ptr %5374, align 8, !tbaa !43
  %5376 = icmp eq ptr %5375, null
  br i1 %5376, label %5370, label %5373, !llvm.loop !749

5377:                                             ; preds = %5370, %5377
  %5378 = phi ptr [ %5379, %5377 ], [ %5371, %5370 ]
  call fastcc void @writestruct_at_address(ptr noundef %43, i32 noundef 1096040772, ptr noundef nonnull @.str.300, i32 noundef 1, ptr noundef nonnull %5378, ptr noundef nonnull %5378)
  %5379 = load ptr, ptr %5378, align 8, !tbaa !43
  %5380 = icmp eq ptr %5379, null
  br i1 %5380, label %5381, label %5377, !llvm.loop !750

5381:                                             ; preds = %5377, %5370, %5300
  %5382 = load ptr, ptr %43, align 8, !tbaa !73
  %5383 = getelementptr inbounds %struct.SDNA, ptr %5382, i64 0, i32 1
  %5384 = load i32, ptr %5383, align 8, !tbaa !751
  %5385 = load ptr, ptr %5382, align 8, !tbaa !753
  %5386 = icmp eq ptr %5385, null
  %5387 = icmp eq i32 %5384, 0
  %5388 = or i1 %5387, %5386
  br i1 %5388, label %5435, label %5389

5389:                                             ; preds = %5381
  %5390 = add nsw i32 %5384, 3
  %5391 = and i32 %5390, -4
  %5392 = load i32, ptr %124, align 8, !tbaa !49
  %5393 = icmp eq i32 %5392, 0
  br i1 %5393, label %5394, label %5434

5394:                                             ; preds = %5389
  %5395 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %5396 = load i32, ptr %5395, align 8, !tbaa !51
  %5397 = add nsw i32 %5396, 24
  store i32 %5397, ptr %5395, align 8, !tbaa !51
  %5398 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %5399 = load i32, ptr %5398, align 4, !tbaa !52
  %5400 = icmp sgt i32 %5399, 99975
  br i1 %5400, label %5401, label %5422

5401:                                             ; preds = %5394
  %5402 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %5403 = load ptr, ptr %5402, align 8, !tbaa !53
  %5404 = icmp eq ptr %43, null
  %5405 = icmp eq ptr %5403, null
  %5406 = select i1 %5404, i1 true, i1 %5405
  br i1 %5406, label %5421, label %5407

5407:                                             ; preds = %5401
  %5408 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %5409 = load ptr, ptr %5408, align 8, !tbaa !54
  %5410 = icmp eq ptr %5409, null
  br i1 %5410, label %5412, label %5411

5411:                                             ; preds = %5407
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %5409, ptr noundef nonnull %5403, i32 noundef %5399) #14
  br label %5421

5412:                                             ; preds = %5407
  %5413 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %5414 = load ptr, ptr %5413, align 8, !tbaa !55
  %5415 = getelementptr inbounds %struct.WriteWrap, ptr %5414, i64 0, i32 2
  %5416 = load ptr, ptr %5415, align 8, !tbaa !56
  %5417 = zext nneg i32 %5399 to i64
  %5418 = call i64 %5416(ptr noundef %5414, ptr noundef nonnull %5403, i64 noundef %5417) #14
  %5419 = icmp eq i64 %5418, %5417
  br i1 %5419, label %5421, label %5420

5420:                                             ; preds = %5412
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %5421

5421:                                             ; preds = %5420, %5412, %5411, %5401
  store i32 0, ptr %5398, align 4, !tbaa !52
  br label %5422

5422:                                             ; preds = %5421, %5394
  %5423 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %5424 = load ptr, ptr %5423, align 8, !tbaa !53
  %5425 = load i32, ptr %5398, align 4, !tbaa !52
  %5426 = sext i32 %5425 to i64
  %5427 = getelementptr inbounds i8, ptr %5424, i64 %5426
  store i32 826363460, ptr %5427, align 1
  %5428 = getelementptr inbounds i8, ptr %5427, i64 4
  store i32 %5391, ptr %5428, align 1
  %5429 = getelementptr inbounds i8, ptr %5427, i64 8
  store ptr %5385, ptr %5429, align 1
  %5430 = getelementptr inbounds i8, ptr %5427, i64 16
  store i32 0, ptr %5430, align 1
  %5431 = getelementptr inbounds i8, ptr %5427, i64 20
  store i32 1, ptr %5431, align 1
  %5432 = load i32, ptr %5398, align 4, !tbaa !52
  %5433 = add nsw i32 %5432, 24
  store i32 %5433, ptr %5398, align 4, !tbaa !52
  br label %5434

5434:                                             ; preds = %5389, %5422
  call fastcc void @mywrite(ptr noundef %43, ptr noundef nonnull %5385, i32 noundef %5391)
  br label %5435

5435:                                             ; preds = %5381, %5434
  br i1 %48, label %5436, label %5464

5436:                                             ; preds = %5435
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #14
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %8, ptr noundef nonnull %0) #14
  %5437 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #14
  %5438 = icmp eq i8 %5437, 1
  br i1 %5438, label %5439, label %5463

5439:                                             ; preds = %5436, %5460
  %5440 = load ptr, ptr %9, align 8, !tbaa !43
  %5441 = icmp eq ptr %5440, null
  br i1 %5441, label %5460, label %5442

5442:                                             ; preds = %5439
  %5443 = getelementptr inbounds %struct.bNodeTree, ptr %5440, i64 0, i32 8
  %5444 = load ptr, ptr %5443, align 8, !tbaa !754
  %5445 = icmp eq ptr %5444, null
  br i1 %5445, label %5460, label %5446

5446:                                             ; preds = %5442, %5458
  %5447 = phi ptr [ %5448, %5458 ], [ %5444, %5442 ]
  %5448 = load ptr, ptr %5447, align 8, !tbaa !755
  %5449 = getelementptr inbounds %struct.bNodeLink, ptr %5447, i64 0, i32 2
  %5450 = load ptr, ptr %5449, align 8, !tbaa !81
  %5451 = icmp eq ptr %5450, null
  br i1 %5451, label %5456, label %5452

5452:                                             ; preds = %5446
  %5453 = getelementptr inbounds %struct.bNodeLink, ptr %5447, i64 0, i32 3
  %5454 = load ptr, ptr %5453, align 8, !tbaa !83
  %5455 = icmp eq ptr %5454, null
  br i1 %5455, label %5456, label %5458

5456:                                             ; preds = %5452, %5446
  %5457 = load ptr, ptr %9, align 8, !tbaa !43
  call void @nodeRemLink(ptr noundef %5457, ptr noundef nonnull %5447) #14
  br label %5458

5458:                                             ; preds = %5456, %5452
  %5459 = icmp eq ptr %5448, null
  br i1 %5459, label %5460, label %5446, !llvm.loop !756

5460:                                             ; preds = %5458, %5442, %5439
  %5461 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #14
  %5462 = icmp eq i8 %5461, 1
  br i1 %5462, label %5439, label %5463, !llvm.loop !757

5463:                                             ; preds = %5460, %5436
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #14
  br label %5464

5464:                                             ; preds = %5463, %5435
  %5465 = load i32, ptr %124, align 8, !tbaa !49
  %5466 = icmp eq i32 %5465, 0
  br i1 %5466, label %5467, label %5504

5467:                                             ; preds = %5464
  %5468 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 5
  %5469 = load i32, ptr %5468, align 8, !tbaa !51
  %5470 = add nsw i32 %5469, 24
  store i32 %5470, ptr %5468, align 8, !tbaa !51
  %5471 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %5472 = load i32, ptr %5471, align 4, !tbaa !52
  %5473 = icmp sgt i32 %5472, 99975
  br i1 %5473, label %5474, label %5495

5474:                                             ; preds = %5467
  %5475 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %5476 = load ptr, ptr %5475, align 8, !tbaa !53
  %5477 = icmp eq ptr %43, null
  %5478 = icmp eq ptr %5476, null
  %5479 = select i1 %5477, i1 true, i1 %5478
  br i1 %5479, label %5494, label %5480

5480:                                             ; preds = %5474
  %5481 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %5482 = load ptr, ptr %5481, align 8, !tbaa !54
  %5483 = icmp eq ptr %5482, null
  br i1 %5483, label %5485, label %5484

5484:                                             ; preds = %5480
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %5482, ptr noundef nonnull %5476, i32 noundef %5472) #14
  br label %5494

5485:                                             ; preds = %5480
  %5486 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %5487 = load ptr, ptr %5486, align 8, !tbaa !55
  %5488 = getelementptr inbounds %struct.WriteWrap, ptr %5487, i64 0, i32 2
  %5489 = load ptr, ptr %5488, align 8, !tbaa !56
  %5490 = zext nneg i32 %5472 to i64
  %5491 = call i64 %5489(ptr noundef %5487, ptr noundef nonnull %5476, i64 noundef %5490) #14
  %5492 = icmp eq i64 %5491, %5490
  br i1 %5492, label %5494, label %5493

5493:                                             ; preds = %5485
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %5494

5494:                                             ; preds = %5493, %5485, %5484, %5474
  store i32 0, ptr %5471, align 4, !tbaa !52
  br label %5495

5495:                                             ; preds = %5494, %5467
  %5496 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %5497 = load ptr, ptr %5496, align 8, !tbaa !53
  %5498 = load i32, ptr %5471, align 4, !tbaa !52
  %5499 = sext i32 %5498 to i64
  %5500 = getelementptr inbounds i8, ptr %5497, i64 %5499
  store i32 1111772741, ptr %5500, align 1
  %5501 = getelementptr inbounds i8, ptr %5500, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %5501, i8 0, i64 20, i1 false)
  %5502 = load i32, ptr %5471, align 4, !tbaa !52
  %5503 = add nsw i32 %5502, 24
  store i32 %5503, ptr %5471, align 4, !tbaa !52
  br label %5504

5504:                                             ; preds = %5464, %5495
  call void @blo_join_main(ptr noundef nonnull %24) #14
  %5505 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 6
  %5506 = load i32, ptr %5505, align 4, !tbaa !52
  %5507 = icmp eq i32 %5506, 0
  br i1 %5507, label %5534, label %5508

5508:                                             ; preds = %5504
  %5509 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %5510 = load ptr, ptr %5509, align 8, !tbaa !53
  %5511 = icmp eq ptr %43, null
  br i1 %5511, label %5533, label %5512

5512:                                             ; preds = %5508
  %5513 = load i32, ptr %124, align 8, !tbaa !49
  %5514 = icmp ne i32 %5513, 0
  %5515 = icmp eq ptr %5510, null
  %5516 = or i1 %5515, %5514
  %5517 = icmp slt i32 %5506, 1
  %5518 = or i1 %5517, %5516
  br i1 %5518, label %5533, label %5519

5519:                                             ; preds = %5512
  %5520 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 4
  %5521 = load ptr, ptr %5520, align 8, !tbaa !54
  %5522 = icmp eq ptr %5521, null
  br i1 %5522, label %5524, label %5523

5523:                                             ; preds = %5519
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %5521, ptr noundef %5510, i32 noundef %5506) #14
  br label %5533

5524:                                             ; preds = %5519
  %5525 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 9
  %5526 = load ptr, ptr %5525, align 8, !tbaa !55
  %5527 = getelementptr inbounds %struct.WriteWrap, ptr %5526, i64 0, i32 2
  %5528 = load ptr, ptr %5527, align 8, !tbaa !56
  %5529 = zext nneg i32 %5506 to i64
  %5530 = call i64 %5528(ptr noundef %5526, ptr noundef %5510, i64 noundef %5529) #14
  %5531 = icmp eq i64 %5530, %5529
  br i1 %5531, label %5533, label %5532

5532:                                             ; preds = %5524
  store i32 1, ptr %124, align 8, !tbaa !49
  br label %5533

5533:                                             ; preds = %5508, %5512, %5523, %5524, %5532
  store i32 0, ptr %5505, align 4, !tbaa !52
  br label %5534

5534:                                             ; preds = %5504, %5533
  %5535 = load i32, ptr %124, align 8, !tbaa !49
  %5536 = load ptr, ptr %43, align 8, !tbaa !73
  call void @DNA_sdna_free(ptr noundef %5536) #14
  %5537 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  %5538 = getelementptr inbounds %struct.WriteData, ptr %43, i64 0, i32 2
  %5539 = load ptr, ptr %5538, align 8, !tbaa !53
  call void %5537(ptr noundef %5539) #14
  %5540 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %5540(ptr noundef nonnull %43) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %25) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %24) #14
  ret i32 %5535
}

declare void @BKE_bpath_list_restore(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_bpath_list_free(ptr noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @remove(ptr nocapture noundef readonly) local_unnamed_addr #6

declare i32 @BLI_rename(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @BLO_write_file_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc i32 @write_file_handle(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef %3, ptr noundef null)
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mywrite(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !49
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %133

7:                                                ; preds = %3
  %8 = icmp eq ptr %1, null
  br i1 %8, label %9, label %36

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !52
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %133, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  %16 = icmp eq ptr %0, null
  br i1 %16, label %35, label %17

17:                                               ; preds = %13
  %18 = icmp eq ptr %15, null
  %19 = icmp slt i32 %11, 1
  %20 = or i1 %19, %18
  br i1 %20, label %35, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !54
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %23, ptr noundef %15, i32 noundef %11) #14
  br label %35

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !55
  %29 = getelementptr inbounds %struct.WriteWrap, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !56
  %31 = zext nneg i32 %11 to i64
  %32 = tail call i64 %30(ptr noundef %28, ptr noundef %15, i64 noundef %31) #14
  %33 = icmp eq i64 %32, %31
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  store i32 1, ptr %4, align 8, !tbaa !49
  br label %35

35:                                               ; preds = %13, %17, %25, %26, %34
  store i32 0, ptr %10, align 4, !tbaa !52
  br label %133

36:                                               ; preds = %7
  %37 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !51
  %39 = add nsw i32 %38, %2
  store i32 %39, ptr %37, align 8, !tbaa !51
  %40 = icmp sgt i32 %2, 32768
  %41 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 6
  %42 = load i32, ptr %41, align 4, !tbaa !52
  br i1 %40, label %43, label %98

43:                                               ; preds = %36
  %44 = icmp eq i32 %42, 0
  br i1 %44, label %68, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !53
  %48 = icmp eq ptr %0, null
  br i1 %48, label %67, label %49

49:                                               ; preds = %45
  %50 = icmp eq ptr %47, null
  %51 = icmp slt i32 %42, 1
  %52 = or i1 %51, %50
  br i1 %52, label %67, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !54
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  tail call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %55, ptr noundef %47, i32 noundef %42) #14
  br label %67

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 9
  %60 = load ptr, ptr %59, align 8, !tbaa !55
  %61 = getelementptr inbounds %struct.WriteWrap, ptr %60, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !56
  %63 = zext nneg i32 %42 to i64
  %64 = tail call i64 %62(ptr noundef %60, ptr noundef %47, i64 noundef %63) #14
  %65 = icmp eq i64 %64, %63
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  store i32 1, ptr %4, align 8, !tbaa !49
  br label %67

67:                                               ; preds = %45, %49, %57, %58, %66
  store i32 0, ptr %41, align 4, !tbaa !52
  br label %68

68:                                               ; preds = %67, %43
  %69 = icmp eq ptr %0, null
  %70 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  %71 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 9
  br label %72

72:                                               ; preds = %93, %68
  %73 = phi i32 [ %2, %68 ], [ %96, %93 ]
  %74 = phi ptr [ %1, %68 ], [ %95, %93 ]
  %75 = tail call i32 @llvm.smin.i32(i32 %73, i32 32768)
  br i1 %69, label %93, label %76

76:                                               ; preds = %72
  %77 = load i32, ptr %4, align 8, !tbaa !49
  %78 = icmp ne i32 %77, 0
  %79 = icmp slt i32 %73, 1
  %80 = or i1 %79, %78
  br i1 %80, label %93, label %81

81:                                               ; preds = %76
  %82 = load ptr, ptr %70, align 8, !tbaa !54
  %83 = icmp eq ptr %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  tail call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %82, ptr noundef %74, i32 noundef %75) #14
  br label %93

85:                                               ; preds = %81
  %86 = load ptr, ptr %71, align 8, !tbaa !55
  %87 = getelementptr inbounds %struct.WriteWrap, ptr %86, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !56
  %89 = zext nneg i32 %75 to i64
  %90 = tail call i64 %88(ptr noundef %86, ptr noundef %74, i64 noundef %89) #14
  %91 = icmp eq i64 %90, %89
  br i1 %91, label %93, label %92

92:                                               ; preds = %85
  store i32 1, ptr %4, align 8, !tbaa !49
  br label %93

93:                                               ; preds = %72, %76, %84, %85, %92
  %94 = sext i32 %75 to i64
  %95 = getelementptr inbounds i8, ptr %74, i64 %94
  %96 = sub nsw i32 %73, %75
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %72, label %133, !llvm.loop !758

98:                                               ; preds = %36
  %99 = add nsw i32 %42, %2
  %100 = icmp sgt i32 %99, 99999
  br i1 %100, label %101, label %124

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !53
  %104 = icmp eq ptr %0, null
  br i1 %104, label %123, label %105

105:                                              ; preds = %101
  %106 = icmp eq ptr %103, null
  %107 = icmp slt i32 %42, 1
  %108 = or i1 %107, %106
  br i1 %108, label %123, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  %111 = load ptr, ptr %110, align 8, !tbaa !54
  %112 = icmp eq ptr %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %109
  tail call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %111, ptr noundef %103, i32 noundef %42) #14
  br label %123

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 9
  %116 = load ptr, ptr %115, align 8, !tbaa !55
  %117 = getelementptr inbounds %struct.WriteWrap, ptr %116, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !56
  %119 = zext nneg i32 %42 to i64
  %120 = tail call i64 %118(ptr noundef %116, ptr noundef %103, i64 noundef %119) #14
  %121 = icmp eq i64 %120, %119
  br i1 %121, label %123, label %122

122:                                              ; preds = %114
  store i32 1, ptr %4, align 8, !tbaa !49
  br label %123

123:                                              ; preds = %101, %105, %113, %114, %122
  store i32 0, ptr %41, align 4, !tbaa !52
  br label %124

124:                                              ; preds = %123, %98
  %125 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !53
  %127 = load i32, ptr %41, align 4, !tbaa !52
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, ptr %126, i64 %128
  %130 = sext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %129, ptr nonnull align 1 %1, i64 %130, i1 false)
  %131 = load i32, ptr %41, align 4, !tbaa !52
  %132 = add nsw i32 %131, %2
  store i32 %132, ptr %41, align 4, !tbaa !52
  br label %133

133:                                              ; preds = %93, %9, %35, %3, %124
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

declare void @add_memfilechunk(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = icmp eq ptr %4, null
  %8 = icmp eq ptr %5, null
  %9 = or i1 %7, %8
  %10 = icmp eq i32 %3, 0
  %11 = or i1 %10, %9
  br i1 %11, label %77, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr %0, align 8, !tbaa !73
  %14 = tail call i32 @DNA_struct_find_nr(ptr noundef %13, ptr noundef %2) #14
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef %2)
  br label %77

18:                                               ; preds = %12
  %19 = load ptr, ptr %0, align 8, !tbaa !73
  %20 = getelementptr inbounds %struct.SDNA, ptr %19, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !759
  %22 = sext i32 %14 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !43
  %25 = getelementptr inbounds %struct.SDNA, ptr %19, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !760
  %27 = load i16, ptr %24, align 2, !tbaa !604
  %28 = sext i16 %27 to i64
  %29 = getelementptr inbounds i16, ptr %26, i64 %28
  %30 = load i16, ptr %29, align 2, !tbaa !604
  %31 = sext i16 %30 to i32
  %32 = mul nsw i32 %31, %3
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %77, label %34

34:                                               ; preds = %18
  %35 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !49
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %76

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 5
  %40 = load i32, ptr %39, align 8, !tbaa !51
  %41 = add nsw i32 %40, 24
  store i32 %41, ptr %39, align 8, !tbaa !51
  %42 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 6
  %43 = load i32, ptr %42, align 4, !tbaa !52
  %44 = icmp sgt i32 %43, 99975
  br i1 %44, label %45, label %64

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !53
  %48 = icmp eq ptr %47, null
  br i1 %48, label %63, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !54
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  tail call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %51, ptr noundef nonnull %47, i32 noundef %43) #14
  br label %63

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 9
  %56 = load ptr, ptr %55, align 8, !tbaa !55
  %57 = getelementptr inbounds %struct.WriteWrap, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !56
  %59 = zext nneg i32 %43 to i64
  %60 = tail call i64 %58(ptr noundef %56, ptr noundef nonnull %47, i64 noundef %59) #14
  %61 = icmp eq i64 %60, %59
  br i1 %61, label %63, label %62

62:                                               ; preds = %54
  store i32 1, ptr %35, align 8, !tbaa !49
  br label %63

63:                                               ; preds = %62, %54, %53, %45
  store i32 0, ptr %42, align 4, !tbaa !52
  br label %64

64:                                               ; preds = %63, %38
  %65 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !53
  %67 = load i32, ptr %42, align 4, !tbaa !52
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, ptr %66, i64 %68
  store i32 %1, ptr %69, align 1
  %70 = getelementptr inbounds i8, ptr %69, i64 4
  store i32 %32, ptr %70, align 1
  %71 = getelementptr inbounds i8, ptr %69, i64 8
  store ptr %4, ptr %71, align 1
  %72 = getelementptr inbounds i8, ptr %69, i64 16
  store i32 %14, ptr %72, align 1
  %73 = getelementptr inbounds i8, ptr %69, i64 20
  store i32 %3, ptr %73, align 1
  %74 = load i32, ptr %42, align 4, !tbaa !52
  %75 = add nsw i32 %74, 24
  store i32 %75, ptr %42, align 4, !tbaa !52
  br label %76

76:                                               ; preds = %34, %64
  tail call fastcc void @mywrite(ptr noundef nonnull %0, ptr noundef %5, i32 noundef %32)
  br label %77

77:                                               ; preds = %18, %6, %76, %16
  ret void
}

declare i32 @DNA_struct_find_nr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define internal noundef zeroext i8 @ww_open_zlib(ptr nocapture noundef writeonly %0, ptr noundef %1) #0 {
  %3 = tail call ptr @BLI_gzopen(ptr noundef %1, ptr noundef nonnull @.str.6) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.WriteWrap, ptr %0, i64 0, i32 3
  store ptr %3, ptr %6, align 8, !tbaa !603
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i8 [ 1, %5 ], [ 0, %2 ]
  ret i8 %8
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @ww_close_zlib(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.WriteWrap, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !603
  %4 = tail call i32 @gzclose(ptr noundef %3) #14
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: nounwind uwtable
define internal i64 @ww_write_zlib(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.WriteWrap, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !603
  %6 = trunc i64 %2 to i32
  %7 = tail call i32 @gzwrite(ptr noundef %5, ptr noundef %1, i32 noundef %6) #14
  %8 = sext i32 %7 to i64
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i8 @ww_open_none(ptr nocapture noundef writeonly %0, ptr noundef %1) #0 {
  %3 = tail call i32 @BLI_open(ptr noundef %1, i32 noundef 577, i32 noundef 438) #14
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.WriteWrap, ptr %0, i64 0, i32 3
  store i32 %3, ptr %6, align 8, !tbaa !603
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i8 [ 1, %5 ], [ 0, %2 ]
  ret i8 %8
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @ww_close_none(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.WriteWrap, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !603
  %4 = tail call i32 @close(i32 noundef %3) #14
  %5 = icmp ne i32 %4, -1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i64 @ww_write_none(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) #9 {
  %4 = getelementptr inbounds %struct.WriteWrap, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !603
  %6 = tail call i64 @write(i32 noundef %5, ptr noundef %1, i64 noundef %2) #14
  ret i64 %6
}

declare ptr @BLI_gzopen(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gzclose(ptr noundef) local_unnamed_addr #2

declare i32 @gzwrite(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BLI_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #10

declare void @blo_split_main(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

declare void @blo_join_main(ptr noundef) local_unnamed_addr #2

declare ptr @DNA_sdna_from_data(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_node_tree_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_node_tree_iter_step(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ntreeFindSocketInterface(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @write_region(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.44, i32 noundef 1, ptr noundef %1, ptr noundef %1)
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %5 = load ptr, ptr %4, align 8, !tbaa !761
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %3
  %8 = icmp eq i32 %2, 1
  br i1 %8, label %9, label %25

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 8
  %11 = load i16, ptr %10, align 2, !tbaa !763
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.45, i32 noundef 1, ptr noundef nonnull %5, ptr noundef nonnull %5)
  %14 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !764
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.45, i32 noundef 1, ptr noundef nonnull %15, ptr noundef nonnull %15)
  br label %18

18:                                               ; preds = %17, %13
  %19 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !766
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.46, i32 noundef 1, ptr noundef nonnull %20, ptr noundef nonnull %20)
  br label %27

23:                                               ; preds = %9
  %24 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.305)
  br label %27

25:                                               ; preds = %7
  %26 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.305)
  br label %27

27:                                               ; preds = %18, %22, %25, %23, %3
  ret void
}

declare void @BLI_linklist_freeN(ptr noundef) local_unnamed_addr #2

declare i32 @BLI_mempool_count(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_mempool_as_arrayN(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_linklist_prepend(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @write_animdata(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.56, i32 noundef 1, ptr noundef %1, ptr noundef %1)
  %3 = getelementptr inbounds %struct.AnimData, ptr %1, i64 0, i32 5
  tail call fastcc void @write_fcurves(ptr noundef %0, ptr noundef nonnull %3)
  %4 = getelementptr inbounds %struct.AnimData, ptr %1, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %67, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 7
  %9 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 5
  %10 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 6
  %11 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %0, null
  %13 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  %14 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 9
  %15 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  br label %16

16:                                               ; preds = %7, %64
  %17 = phi ptr [ %5, %7 ], [ %65, %64 ]
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.57, i32 noundef 1, ptr noundef nonnull %17, ptr noundef nonnull %17)
  %18 = getelementptr inbounds %struct.AnimOverride, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !767
  %20 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %19) #16
  %21 = trunc i64 %20 to i32
  %22 = icmp eq ptr %19, null
  %23 = icmp eq i32 %21, -1
  %24 = or i1 %22, %23
  br i1 %24, label %64, label %25

25:                                               ; preds = %16
  %26 = and i32 %21, -4
  %27 = add i32 %26, 4
  %28 = load i32, ptr %8, align 8, !tbaa !49
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %63

30:                                               ; preds = %25
  %31 = load i32, ptr %9, align 8, !tbaa !51
  %32 = add nsw i32 %31, 24
  store i32 %32, ptr %9, align 8, !tbaa !51
  %33 = load i32, ptr %10, align 4, !tbaa !52
  %34 = icmp sgt i32 %33, 99975
  br i1 %34, label %35, label %52

35:                                               ; preds = %30
  %36 = load ptr, ptr %11, align 8, !tbaa !53
  %37 = icmp eq ptr %36, null
  %38 = select i1 %12, i1 true, i1 %37
  br i1 %38, label %51, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %13, align 8, !tbaa !54
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  tail call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %40, ptr noundef nonnull %36, i32 noundef %33) #14
  br label %51

43:                                               ; preds = %39
  %44 = load ptr, ptr %14, align 8, !tbaa !55
  %45 = getelementptr inbounds %struct.WriteWrap, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !56
  %47 = zext nneg i32 %33 to i64
  %48 = tail call i64 %46(ptr noundef %44, ptr noundef nonnull %36, i64 noundef %47) #14
  %49 = icmp eq i64 %48, %47
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  store i32 1, ptr %8, align 8, !tbaa !49
  br label %51

51:                                               ; preds = %50, %43, %42, %35
  store i32 0, ptr %10, align 4, !tbaa !52
  br label %52

52:                                               ; preds = %51, %30
  %53 = load ptr, ptr %15, align 8, !tbaa !53
  %54 = load i32, ptr %10, align 4, !tbaa !52
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, ptr %53, i64 %55
  store i32 1096040772, ptr %56, align 1
  %57 = getelementptr inbounds i8, ptr %56, i64 4
  store i32 %27, ptr %57, align 1
  %58 = getelementptr inbounds i8, ptr %56, i64 8
  store ptr %19, ptr %58, align 1
  %59 = getelementptr inbounds i8, ptr %56, i64 16
  store i32 0, ptr %59, align 1
  %60 = getelementptr inbounds i8, ptr %56, i64 20
  store i32 1, ptr %60, align 1
  %61 = load i32, ptr %10, align 4, !tbaa !52
  %62 = add nsw i32 %61, 24
  store i32 %62, ptr %10, align 4, !tbaa !52
  br label %63

63:                                               ; preds = %25, %52
  tail call fastcc void @mywrite(ptr noundef %0, ptr noundef nonnull %19, i32 noundef %27)
  br label %64

64:                                               ; preds = %16, %63
  %65 = load ptr, ptr %17, align 8, !tbaa !43
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %16, !llvm.loop !769

67:                                               ; preds = %64, %2
  %68 = getelementptr inbounds %struct.AnimData, ptr %1, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !43
  %70 = icmp eq ptr %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %67, %71
  %72 = phi ptr [ %74, %71 ], [ %69, %67 ]
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.65, i32 noundef 1, ptr noundef nonnull %72, ptr noundef nonnull %72)
  %73 = getelementptr inbounds %struct.NlaTrack, ptr %72, i64 0, i32 2
  tail call fastcc void @write_nlastrips(ptr noundef %0, ptr noundef nonnull %73)
  %74 = load ptr, ptr %72, align 8, !tbaa !43
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %71, !llvm.loop !770

76:                                               ; preds = %71, %67
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @write_fcurves(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %25

5:                                                ; preds = %25, %2
  %6 = load ptr, ptr %1, align 8, !tbaa !43
  %7 = icmp eq ptr %6, null
  br i1 %7, label %174, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 7
  %10 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 6
  %12 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  %13 = icmp eq ptr %0, null
  %14 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  %15 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 9
  %16 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  %17 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 7
  %18 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 5
  %19 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 6
  %20 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  %21 = icmp eq ptr %0, null
  %22 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  %23 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 9
  %24 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  br label %29

25:                                               ; preds = %2, %25
  %26 = phi ptr [ %27, %25 ], [ %3, %2 ]
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.58, i32 noundef 1, ptr noundef nonnull %26, ptr noundef nonnull %26)
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  %28 = icmp eq ptr %27, null
  br i1 %28, label %5, label %25, !llvm.loop !569

29:                                               ; preds = %8, %170
  %30 = phi ptr [ %6, %8 ], [ %172, %170 ]
  %31 = getelementptr inbounds %struct.FCurve, ptr %30, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !771
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.FCurve, ptr %30, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !773
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.59, i32 noundef %36, ptr noundef nonnull %32, ptr noundef nonnull %32)
  br label %37

37:                                               ; preds = %34, %29
  %38 = getelementptr inbounds %struct.FCurve, ptr %30, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !774
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.FCurve, ptr %30, i64 0, i32 7
  %43 = load i32, ptr %42, align 8, !tbaa !773
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.60, i32 noundef %43, ptr noundef nonnull %39, ptr noundef nonnull %39)
  br label %44

44:                                               ; preds = %41, %37
  %45 = getelementptr inbounds %struct.FCurve, ptr %30, i64 0, i32 12
  %46 = load ptr, ptr %45, align 8, !tbaa !775
  %47 = icmp eq ptr %46, null
  br i1 %47, label %91, label %48

48:                                               ; preds = %44
  %49 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %46) #16
  %50 = trunc i64 %49 to i32
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %91, label %52

52:                                               ; preds = %48
  %53 = and i32 %50, -4
  %54 = add i32 %53, 4
  %55 = load i32, ptr %9, align 8, !tbaa !49
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %90

57:                                               ; preds = %52
  %58 = load i32, ptr %10, align 8, !tbaa !51
  %59 = add nsw i32 %58, 24
  store i32 %59, ptr %10, align 8, !tbaa !51
  %60 = load i32, ptr %11, align 4, !tbaa !52
  %61 = icmp sgt i32 %60, 99975
  br i1 %61, label %62, label %79

62:                                               ; preds = %57
  %63 = load ptr, ptr %12, align 8, !tbaa !53
  %64 = icmp eq ptr %63, null
  %65 = select i1 %13, i1 true, i1 %64
  br i1 %65, label %78, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %14, align 8, !tbaa !54
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  tail call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %67, ptr noundef nonnull %63, i32 noundef %60) #14
  br label %78

70:                                               ; preds = %66
  %71 = load ptr, ptr %15, align 8, !tbaa !55
  %72 = getelementptr inbounds %struct.WriteWrap, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !56
  %74 = zext nneg i32 %60 to i64
  %75 = tail call i64 %73(ptr noundef %71, ptr noundef nonnull %63, i64 noundef %74) #14
  %76 = icmp eq i64 %75, %74
  br i1 %76, label %78, label %77

77:                                               ; preds = %70
  store i32 1, ptr %9, align 8, !tbaa !49
  br label %78

78:                                               ; preds = %77, %70, %69, %62
  store i32 0, ptr %11, align 4, !tbaa !52
  br label %79

79:                                               ; preds = %78, %57
  %80 = load ptr, ptr %16, align 8, !tbaa !53
  %81 = load i32, ptr %11, align 4, !tbaa !52
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, ptr %80, i64 %82
  store i32 1096040772, ptr %83, align 1
  %84 = getelementptr inbounds i8, ptr %83, i64 4
  store i32 %54, ptr %84, align 1
  %85 = getelementptr inbounds i8, ptr %83, i64 8
  store ptr %46, ptr %85, align 1
  %86 = getelementptr inbounds i8, ptr %83, i64 16
  store i32 0, ptr %86, align 1
  %87 = getelementptr inbounds i8, ptr %83, i64 20
  store i32 1, ptr %87, align 1
  %88 = load i32, ptr %11, align 4, !tbaa !52
  %89 = add nsw i32 %88, 24
  store i32 %89, ptr %11, align 4, !tbaa !52
  br label %90

90:                                               ; preds = %52, %79
  tail call fastcc void @mywrite(ptr noundef %0, ptr noundef nonnull %46, i32 noundef %54)
  br label %91

91:                                               ; preds = %90, %48, %44
  %92 = getelementptr inbounds %struct.FCurve, ptr %30, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !776
  %94 = icmp eq ptr %93, null
  br i1 %94, label %170, label %95

95:                                               ; preds = %91
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.61, i32 noundef 1, ptr noundef nonnull %93, ptr noundef nonnull %93)
  %96 = load ptr, ptr %93, align 8, !tbaa !43
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %101, %95
  %99 = load ptr, ptr %93, align 8, !tbaa !43
  %100 = icmp eq ptr %99, null
  br i1 %100, label %170, label %108

101:                                              ; preds = %95, %101
  %102 = phi ptr [ %103, %101 ], [ %96, %95 ]
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.62, i32 noundef 1, ptr noundef nonnull %102, ptr noundef nonnull %102)
  %103 = load ptr, ptr %102, align 8, !tbaa !43
  %104 = icmp eq ptr %103, null
  br i1 %104, label %98, label %101, !llvm.loop !569

105:                                              ; preds = %164, %108
  %106 = load ptr, ptr %109, align 8, !tbaa !43
  %107 = icmp eq ptr %106, null
  br i1 %107, label %170, label %108, !llvm.loop !777

108:                                              ; preds = %98, %105
  %109 = phi ptr [ %106, %105 ], [ %99, %98 ]
  %110 = getelementptr inbounds %struct.DriverVar, ptr %109, i64 0, i32 4
  %111 = load i16, ptr %110, align 8, !tbaa !778
  %112 = icmp sgt i16 %111, 0
  br i1 %112, label %113, label %105

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.DriverVar, ptr %109, i64 0, i32 3
  br label %115

115:                                              ; preds = %113, %164
  %116 = phi i32 [ %165, %164 ], [ 0, %113 ]
  %117 = phi ptr [ %166, %164 ], [ %114, %113 ]
  %118 = getelementptr inbounds %struct.DriverTarget, ptr %117, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !780
  %120 = icmp eq ptr %119, null
  br i1 %120, label %164, label %121

121:                                              ; preds = %115
  %122 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %119) #16
  %123 = trunc i64 %122 to i32
  %124 = icmp eq i32 %123, -1
  br i1 %124, label %164, label %125

125:                                              ; preds = %121
  %126 = and i32 %123, -4
  %127 = add i32 %126, 4
  %128 = load i32, ptr %17, align 8, !tbaa !49
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %163

130:                                              ; preds = %125
  %131 = load i32, ptr %18, align 8, !tbaa !51
  %132 = add nsw i32 %131, 24
  store i32 %132, ptr %18, align 8, !tbaa !51
  %133 = load i32, ptr %19, align 4, !tbaa !52
  %134 = icmp sgt i32 %133, 99975
  br i1 %134, label %135, label %152

135:                                              ; preds = %130
  %136 = load ptr, ptr %20, align 8, !tbaa !53
  %137 = icmp eq ptr %136, null
  %138 = select i1 %21, i1 true, i1 %137
  br i1 %138, label %151, label %139

139:                                              ; preds = %135
  %140 = load ptr, ptr %22, align 8, !tbaa !54
  %141 = icmp eq ptr %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %139
  tail call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %140, ptr noundef nonnull %136, i32 noundef %133) #14
  br label %151

143:                                              ; preds = %139
  %144 = load ptr, ptr %23, align 8, !tbaa !55
  %145 = getelementptr inbounds %struct.WriteWrap, ptr %144, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !56
  %147 = zext nneg i32 %133 to i64
  %148 = tail call i64 %146(ptr noundef %144, ptr noundef nonnull %136, i64 noundef %147) #14
  %149 = icmp eq i64 %148, %147
  br i1 %149, label %151, label %150

150:                                              ; preds = %143
  store i32 1, ptr %17, align 8, !tbaa !49
  br label %151

151:                                              ; preds = %150, %143, %142, %135
  store i32 0, ptr %19, align 4, !tbaa !52
  br label %152

152:                                              ; preds = %151, %130
  %153 = load ptr, ptr %24, align 8, !tbaa !53
  %154 = load i32, ptr %19, align 4, !tbaa !52
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, ptr %153, i64 %155
  store i32 1096040772, ptr %156, align 1
  %157 = getelementptr inbounds i8, ptr %156, i64 4
  store i32 %127, ptr %157, align 1
  %158 = getelementptr inbounds i8, ptr %156, i64 8
  store ptr %119, ptr %158, align 1
  %159 = getelementptr inbounds i8, ptr %156, i64 16
  store i32 0, ptr %159, align 1
  %160 = getelementptr inbounds i8, ptr %156, i64 20
  store i32 1, ptr %160, align 1
  %161 = load i32, ptr %19, align 4, !tbaa !52
  %162 = add nsw i32 %161, 24
  store i32 %162, ptr %19, align 4, !tbaa !52
  br label %163

163:                                              ; preds = %125, %152
  tail call fastcc void @mywrite(ptr noundef %0, ptr noundef nonnull %119, i32 noundef %127)
  br label %164

164:                                              ; preds = %163, %121, %115
  %165 = add nuw nsw i32 %116, 1
  %166 = getelementptr inbounds %struct.DriverTarget, ptr %117, i64 1
  %167 = load i16, ptr %110, align 8, !tbaa !778
  %168 = sext i16 %167 to i32
  %169 = icmp slt i32 %165, %168
  br i1 %169, label %115, label %105, !llvm.loop !782

170:                                              ; preds = %105, %98, %91
  %171 = getelementptr inbounds %struct.FCurve, ptr %30, i64 0, i32 4
  tail call fastcc void @write_fmodifiers(ptr noundef %0, ptr noundef nonnull %171)
  %172 = load ptr, ptr %30, align 8, !tbaa !43
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %29, !llvm.loop !783

174:                                              ; preds = %170, %5
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @write_fmodifiers(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %17

5:                                                ; preds = %17, %2
  %6 = load ptr, ptr %1, align 8, !tbaa !43
  %7 = icmp eq ptr %6, null
  br i1 %7, label %93, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 7
  %10 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 6
  %12 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  %13 = icmp eq ptr %0, null
  %14 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  %15 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 9
  %16 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  br label %21

17:                                               ; preds = %2, %17
  %18 = phi ptr [ %19, %17 ], [ %3, %2 ]
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.63, i32 noundef 1, ptr noundef nonnull %18, ptr noundef nonnull %18)
  %19 = load ptr, ptr %18, align 8, !tbaa !43
  %20 = icmp eq ptr %19, null
  br i1 %20, label %5, label %17, !llvm.loop !569

21:                                               ; preds = %8, %90
  %22 = phi ptr [ %6, %8 ], [ %91, %90 ]
  %23 = tail call ptr @fmodifier_get_typeinfo(ptr noundef nonnull %22) #14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %90, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.FModifier, ptr %22, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !784
  %28 = icmp eq ptr %27, null
  br i1 %28, label %90, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %23, i64 0, i32 5
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull %30, i32 noundef 1, ptr noundef nonnull %27, ptr noundef nonnull %27)
  %31 = getelementptr inbounds %struct.FModifier, ptr %22, i64 0, i32 4
  %32 = load i16, ptr %31, align 8, !tbaa !786
  switch i16 %32, label %90 [
    i16 1, label %33
    i16 3, label %79
    i16 7, label %86
  ]

33:                                               ; preds = %29
  %34 = load ptr, ptr %26, align 8, !tbaa !784
  %35 = load ptr, ptr %34, align 8, !tbaa !787
  %36 = icmp eq ptr %35, null
  br i1 %36, label %90, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.FMod_Generator, ptr %34, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !789
  %40 = shl i32 %39, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %90, label %42

42:                                               ; preds = %37
  %43 = load i32, ptr %9, align 8, !tbaa !49
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %78

45:                                               ; preds = %42
  %46 = load i32, ptr %10, align 8, !tbaa !51
  %47 = add nsw i32 %46, 24
  store i32 %47, ptr %10, align 8, !tbaa !51
  %48 = load i32, ptr %11, align 4, !tbaa !52
  %49 = icmp sgt i32 %48, 99975
  br i1 %49, label %50, label %67

50:                                               ; preds = %45
  %51 = load ptr, ptr %12, align 8, !tbaa !53
  %52 = icmp eq ptr %51, null
  %53 = select i1 %13, i1 true, i1 %52
  br i1 %53, label %66, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %14, align 8, !tbaa !54
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  tail call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %55, ptr noundef nonnull %51, i32 noundef %48) #14
  br label %66

58:                                               ; preds = %54
  %59 = load ptr, ptr %15, align 8, !tbaa !55
  %60 = getelementptr inbounds %struct.WriteWrap, ptr %59, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !56
  %62 = zext nneg i32 %48 to i64
  %63 = tail call i64 %61(ptr noundef %59, ptr noundef nonnull %51, i64 noundef %62) #14
  %64 = icmp eq i64 %63, %62
  br i1 %64, label %66, label %65

65:                                               ; preds = %58
  store i32 1, ptr %9, align 8, !tbaa !49
  br label %66

66:                                               ; preds = %65, %58, %57, %50
  store i32 0, ptr %11, align 4, !tbaa !52
  br label %67

67:                                               ; preds = %66, %45
  %68 = load ptr, ptr %16, align 8, !tbaa !53
  %69 = load i32, ptr %11, align 4, !tbaa !52
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, ptr %68, i64 %70
  store i32 1096040772, ptr %71, align 1
  %72 = getelementptr inbounds i8, ptr %71, i64 4
  store i32 %40, ptr %72, align 1
  %73 = getelementptr inbounds i8, ptr %71, i64 8
  store ptr %35, ptr %73, align 1
  %74 = getelementptr inbounds i8, ptr %71, i64 16
  store i32 0, ptr %74, align 1
  %75 = getelementptr inbounds i8, ptr %71, i64 20
  store i32 1, ptr %75, align 1
  %76 = load i32, ptr %11, align 4, !tbaa !52
  %77 = add nsw i32 %76, 24
  store i32 %77, ptr %11, align 4, !tbaa !52
  br label %78

78:                                               ; preds = %42, %67
  tail call fastcc void @mywrite(ptr noundef %0, ptr noundef nonnull %35, i32 noundef %40)
  br label %90

79:                                               ; preds = %29
  %80 = load ptr, ptr %26, align 8, !tbaa !784
  %81 = load ptr, ptr %80, align 8, !tbaa !790
  %82 = icmp eq ptr %81, null
  br i1 %82, label %90, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.FMod_Envelope, ptr %80, i64 0, i32 1
  %85 = load i32, ptr %84, align 8, !tbaa !792
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.64, i32 noundef %85, ptr noundef nonnull %81, ptr noundef nonnull %81)
  br label %90

86:                                               ; preds = %29
  %87 = load ptr, ptr %26, align 8, !tbaa !784
  %88 = getelementptr inbounds %struct.FMod_Python, ptr %87, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !793
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef %89, ptr noundef %89)
  tail call void @IDP_WriteProperty_OnlyData(ptr noundef %89, ptr noundef %0)
  br label %90

90:                                               ; preds = %78, %37, %79, %83, %33, %86, %29, %25, %21
  %91 = load ptr, ptr %22, align 8, !tbaa !43
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %21, !llvm.loop !795

93:                                               ; preds = %90, %5
  ret void
}

declare ptr @fmodifier_get_typeinfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @write_nlastrips(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %8, %2
  %6 = load ptr, ptr %1, align 8, !tbaa !43
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %12

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %10, %8 ], [ %3, %2 ]
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.66, i32 noundef 1, ptr noundef nonnull %9, ptr noundef nonnull %9)
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = icmp eq ptr %10, null
  br i1 %11, label %5, label %8, !llvm.loop !569

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %17, %12 ], [ %6, %5 ]
  %14 = getelementptr inbounds %struct.NlaStrip, ptr %13, i64 0, i32 5
  tail call fastcc void @write_fcurves(ptr noundef %0, ptr noundef nonnull %14)
  %15 = getelementptr inbounds %struct.NlaStrip, ptr %13, i64 0, i32 6
  tail call fastcc void @write_fmodifiers(ptr noundef %0, ptr noundef nonnull %15)
  %16 = getelementptr inbounds %struct.NlaStrip, ptr %13, i64 0, i32 2
  tail call fastcc void @write_nlastrips(ptr noundef %0, ptr noundef nonnull %16)
  %17 = load ptr, ptr %13, align 8, !tbaa !43
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %12, !llvm.loop !796

19:                                               ; preds = %12, %5
  ret void
}

declare void @BKE_sequence_iterator_begin(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_sequence_iterator_next(ptr noundef) local_unnamed_addr #2

declare void @BKE_sequence_iterator_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @write_nodetree(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !652
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call fastcc void @write_animdata(ptr noundef %0, ptr noundef nonnull %4)
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = icmp eq ptr %9, null
  br i1 %10, label %197, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 9
  %13 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 7
  %14 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 5
  %15 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 6
  %16 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  %17 = icmp eq ptr %0, null
  %18 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  %19 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 9
  %20 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  br label %21

21:                                               ; preds = %11, %194
  %22 = phi ptr [ %9, %11 ], [ %195, %194 ]
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.111, i32 noundef 1, ptr noundef nonnull %22, ptr noundef nonnull %22)
  %23 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !797
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %24, ptr noundef nonnull %24)
  tail call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %24, ptr noundef %0)
  br label %27

27:                                               ; preds = %26, %21
  %28 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 17
  %29 = load ptr, ptr %28, align 8, !tbaa !43
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27, %31
  %32 = phi ptr [ %33, %31 ], [ %29, %27 ]
  tail call fastcc void @write_node_socket(ptr noundef %0, ptr noundef nonnull %22, ptr noundef nonnull %32)
  %33 = load ptr, ptr %32, align 8, !tbaa !43
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %31, !llvm.loop !798

35:                                               ; preds = %31, %27
  %36 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 18
  %37 = load ptr, ptr %36, align 8, !tbaa !43
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %35, %39
  %40 = phi ptr [ %41, %39 ], [ %37, %35 ]
  tail call fastcc void @write_node_socket(ptr noundef %0, ptr noundef nonnull %22, ptr noundef nonnull %40)
  %41 = load ptr, ptr %40, align 8, !tbaa !43
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %39, !llvm.loop !799

43:                                               ; preds = %39, %35
  %44 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 23
  %45 = load ptr, ptr %44, align 8, !tbaa !43
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %43, %47
  %48 = phi ptr [ %49, %47 ], [ %45, %43 ]
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.112, i32 noundef 1, ptr noundef nonnull %48, ptr noundef nonnull %48)
  %49 = load ptr, ptr %48, align 8, !tbaa !43
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %47, !llvm.loop !800

51:                                               ; preds = %47, %43
  %52 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 21
  %53 = load ptr, ptr %52, align 8, !tbaa !801
  %54 = icmp eq ptr %53, null
  br i1 %54, label %169, label %55

55:                                               ; preds = %51
  %56 = load i32, ptr %12, align 8, !tbaa !802
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %130

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 8
  %60 = load i16, ptr %59, align 4, !tbaa !86
  %61 = and i16 %60, -2
  %62 = icmp eq i16 %61, 110
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.52, i32 noundef 1, ptr noundef nonnull %53, ptr noundef nonnull %53)
  br label %64

64:                                               ; preds = %64, %63
  %65 = phi i64 [ 0, %63 ], [ %71, %64 ]
  %66 = getelementptr inbounds %struct.CurveMapping, ptr %53, i64 0, i32 6, i64 %65
  %67 = load i16, ptr %66, align 8, !tbaa !185
  %68 = sext i16 %67 to i32
  %69 = getelementptr inbounds %struct.CurveMapping, ptr %53, i64 0, i32 6, i64 %65, i32 7
  %70 = load ptr, ptr %69, align 8, !tbaa !187
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.53, i32 noundef %68, ptr noundef %70, ptr noundef %70)
  %71 = add nuw nsw i64 %65, 1
  %72 = icmp eq i64 %71, 4
  br i1 %72, label %169, label %64, !llvm.loop !188

73:                                               ; preds = %58
  br i1 %57, label %74, label %130

74:                                               ; preds = %73
  %75 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 8
  %76 = load i16, ptr %75, align 4, !tbaa !86
  %77 = icmp eq i16 %76, 171
  br i1 %77, label %78, label %130

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.NodeShaderScript, ptr %53, i64 0, i32 4
  %80 = load ptr, ptr %79, align 8, !tbaa !803
  %81 = icmp eq ptr %80, null
  br i1 %81, label %125, label %82

82:                                               ; preds = %78
  %83 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %80) #16
  %84 = trunc i64 %83 to i32
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %125, label %86

86:                                               ; preds = %82
  %87 = and i32 %84, -4
  %88 = add i32 %87, 4
  %89 = load i32, ptr %13, align 8, !tbaa !49
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %124

91:                                               ; preds = %86
  %92 = load i32, ptr %14, align 8, !tbaa !51
  %93 = add nsw i32 %92, 24
  store i32 %93, ptr %14, align 8, !tbaa !51
  %94 = load i32, ptr %15, align 4, !tbaa !52
  %95 = icmp sgt i32 %94, 99975
  br i1 %95, label %96, label %113

96:                                               ; preds = %91
  %97 = load ptr, ptr %16, align 8, !tbaa !53
  %98 = icmp eq ptr %97, null
  %99 = select i1 %17, i1 true, i1 %98
  br i1 %99, label %112, label %100

100:                                              ; preds = %96
  %101 = load ptr, ptr %18, align 8, !tbaa !54
  %102 = icmp eq ptr %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  tail call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %101, ptr noundef nonnull %97, i32 noundef %94) #14
  br label %112

104:                                              ; preds = %100
  %105 = load ptr, ptr %19, align 8, !tbaa !55
  %106 = getelementptr inbounds %struct.WriteWrap, ptr %105, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !56
  %108 = zext nneg i32 %94 to i64
  %109 = tail call i64 %107(ptr noundef %105, ptr noundef nonnull %97, i64 noundef %108) #14
  %110 = icmp eq i64 %109, %108
  br i1 %110, label %112, label %111

111:                                              ; preds = %104
  store i32 1, ptr %13, align 8, !tbaa !49
  br label %112

112:                                              ; preds = %111, %104, %103, %96
  store i32 0, ptr %15, align 4, !tbaa !52
  br label %113

113:                                              ; preds = %112, %91
  %114 = load ptr, ptr %20, align 8, !tbaa !53
  %115 = load i32, ptr %15, align 4, !tbaa !52
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, ptr %114, i64 %116
  store i32 1096040772, ptr %117, align 1
  %118 = getelementptr inbounds i8, ptr %117, i64 4
  store i32 %88, ptr %118, align 1
  %119 = getelementptr inbounds i8, ptr %117, i64 8
  store ptr %80, ptr %119, align 1
  %120 = getelementptr inbounds i8, ptr %117, i64 16
  store i32 0, ptr %120, align 1
  %121 = getelementptr inbounds i8, ptr %117, i64 20
  store i32 1, ptr %121, align 1
  %122 = load i32, ptr %15, align 4, !tbaa !52
  %123 = add nsw i32 %122, 24
  store i32 %123, ptr %15, align 4, !tbaa !52
  br label %124

124:                                              ; preds = %86, %113
  tail call fastcc void @mywrite(ptr noundef %0, ptr noundef nonnull %80, i32 noundef %88)
  br label %125

125:                                              ; preds = %124, %82, %78
  %126 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 4
  %127 = load ptr, ptr %126, align 8, !tbaa !805
  %128 = getelementptr inbounds %struct.bNodeType, ptr %127, i64 0, i32 19
  %129 = load ptr, ptr %52, align 8, !tbaa !801
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull %128, i32 noundef 1, ptr noundef %129, ptr noundef %129)
  br label %169

130:                                              ; preds = %55, %74, %73
  %131 = icmp eq i32 %56, 1
  br i1 %131, label %132, label %145

132:                                              ; preds = %130
  %133 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 8
  %134 = load i16, ptr %133, align 4, !tbaa !86
  switch i16 %134, label %145 [
    i16 214, label %135
    i16 208, label %135
    i16 209, label %135
    i16 261, label %135
  ]

135:                                              ; preds = %132, %132, %132, %132
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.52, i32 noundef 1, ptr noundef nonnull %53, ptr noundef nonnull %53)
  br label %136

136:                                              ; preds = %136, %135
  %137 = phi i64 [ 0, %135 ], [ %143, %136 ]
  %138 = getelementptr inbounds %struct.CurveMapping, ptr %53, i64 0, i32 6, i64 %137
  %139 = load i16, ptr %138, align 8, !tbaa !185
  %140 = sext i16 %139 to i32
  %141 = getelementptr inbounds %struct.CurveMapping, ptr %53, i64 0, i32 6, i64 %137, i32 7
  %142 = load ptr, ptr %141, align 8, !tbaa !187
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.53, i32 noundef %140, ptr noundef %142, ptr noundef %142)
  %143 = add nuw nsw i64 %137, 1
  %144 = icmp eq i64 %143, 4
  br i1 %144, label %169, label %136, !llvm.loop !188

145:                                              ; preds = %132, %130
  %146 = icmp eq i32 %56, 2
  br i1 %146, label %147, label %160

147:                                              ; preds = %145
  %148 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 8
  %149 = load i16, ptr %148, align 4, !tbaa !86
  switch i16 %149, label %160 [
    i16 410, label %150
    i16 413, label %150
  ]

150:                                              ; preds = %147, %147
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.52, i32 noundef 1, ptr noundef nonnull %53, ptr noundef nonnull %53)
  br label %151

151:                                              ; preds = %151, %150
  %152 = phi i64 [ 0, %150 ], [ %158, %151 ]
  %153 = getelementptr inbounds %struct.CurveMapping, ptr %53, i64 0, i32 6, i64 %152
  %154 = load i16, ptr %153, align 8, !tbaa !185
  %155 = sext i16 %154 to i32
  %156 = getelementptr inbounds %struct.CurveMapping, ptr %53, i64 0, i32 6, i64 %152, i32 7
  %157 = load ptr, ptr %156, align 8, !tbaa !187
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.53, i32 noundef %155, ptr noundef %157, ptr noundef %157)
  %158 = add nuw nsw i64 %152, 1
  %159 = icmp eq i64 %158, 4
  br i1 %159, label %169, label %151, !llvm.loop !188

160:                                              ; preds = %147, %145
  br i1 %131, label %161, label %165

161:                                              ; preds = %160
  %162 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 8
  %163 = load i16, ptr %162, align 4, !tbaa !86
  %164 = icmp eq i16 %163, 265
  br i1 %164, label %169, label %165

165:                                              ; preds = %161, %160
  %166 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 4
  %167 = load ptr, ptr %166, align 8, !tbaa !805
  %168 = getelementptr inbounds %struct.bNodeType, ptr %167, i64 0, i32 19
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull %168, i32 noundef 1, ptr noundef nonnull %53, ptr noundef nonnull %53)
  br label %169

169:                                              ; preds = %136, %151, %64, %165, %161, %125, %51
  %170 = getelementptr inbounds %struct.bNode, ptr %22, i64 0, i32 8
  %171 = load i16, ptr %170, align 4, !tbaa !86
  %172 = icmp eq i16 %171, 223
  br i1 %172, label %173, label %182

173:                                              ; preds = %169
  %174 = load ptr, ptr %28, align 8, !tbaa !43
  %175 = icmp eq ptr %174, null
  br i1 %175, label %182, label %176

176:                                              ; preds = %173, %176
  %177 = phi ptr [ %180, %176 ], [ %174, %173 ]
  %178 = getelementptr inbounds %struct.bNodeSocket, ptr %177, i64 0, i32 6
  %179 = load ptr, ptr %178, align 8, !tbaa !806
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.113, i32 noundef 1, ptr noundef %179, ptr noundef %179)
  %180 = load ptr, ptr %177, align 8, !tbaa !43
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %176, !llvm.loop !807

182:                                              ; preds = %176, %173, %169
  %183 = load i16, ptr %170, align 4, !tbaa !86
  %184 = icmp eq i16 %183, 220
  br i1 %184, label %185, label %194

185:                                              ; preds = %182
  %186 = load ptr, ptr %36, align 8, !tbaa !43
  %187 = icmp eq ptr %186, null
  br i1 %187, label %194, label %188

188:                                              ; preds = %185, %188
  %189 = phi ptr [ %192, %188 ], [ %186, %185 ]
  %190 = getelementptr inbounds %struct.bNodeSocket, ptr %189, i64 0, i32 6
  %191 = load ptr, ptr %190, align 8, !tbaa !806
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.114, i32 noundef 1, ptr noundef %191, ptr noundef %191)
  %192 = load ptr, ptr %189, align 8, !tbaa !43
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %188, !llvm.loop !808

194:                                              ; preds = %188, %185, %182
  %195 = load ptr, ptr %22, align 8, !tbaa !43
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %21, !llvm.loop !809

197:                                              ; preds = %194, %7
  %198 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 8
  %199 = load ptr, ptr %198, align 8, !tbaa !43
  %200 = icmp eq ptr %199, null
  br i1 %200, label %205, label %201

201:                                              ; preds = %197, %201
  %202 = phi ptr [ %203, %201 ], [ %199, %197 ]
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.112, i32 noundef 1, ptr noundef nonnull %202, ptr noundef nonnull %202)
  %203 = load ptr, ptr %202, align 8, !tbaa !43
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %201, !llvm.loop !810

205:                                              ; preds = %201, %197
  %206 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 22
  %207 = load ptr, ptr %206, align 8, !tbaa !43
  %208 = icmp eq ptr %207, null
  br i1 %208, label %213, label %209

209:                                              ; preds = %205, %209
  %210 = phi ptr [ %211, %209 ], [ %207, %205 ]
  tail call fastcc void @write_node_socket_interface(ptr noundef %0, ptr noundef nonnull %210)
  %211 = load ptr, ptr %210, align 8, !tbaa !43
  %212 = icmp eq ptr %211, null
  br i1 %212, label %213, label %209, !llvm.loop !811

213:                                              ; preds = %209, %205
  %214 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 23
  %215 = load ptr, ptr %214, align 8, !tbaa !43
  %216 = icmp eq ptr %215, null
  br i1 %216, label %221, label %217

217:                                              ; preds = %213, %217
  %218 = phi ptr [ %219, %217 ], [ %215, %213 ]
  tail call fastcc void @write_node_socket_interface(ptr noundef %0, ptr noundef nonnull %218)
  %219 = load ptr, ptr %218, align 8, !tbaa !43
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %217, !llvm.loop !812

221:                                              ; preds = %217, %213
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @write_pointcaches(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %127, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 7
  %7 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 5
  %8 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 6
  %9 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  %10 = icmp eq ptr %0, null
  %11 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  %12 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 9
  %13 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  br label %14

14:                                               ; preds = %5, %124
  %15 = phi ptr [ %3, %5 ], [ %125, %124 ]
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.116, i32 noundef 1, ptr noundef nonnull %15, ptr noundef nonnull %15)
  %16 = getelementptr inbounds %struct.PointCache, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !531
  %18 = and i32 %17, 64
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %124

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.PointCache, ptr %15, i64 0, i32 20
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  %23 = icmp eq ptr %22, null
  br i1 %23, label %124, label %27

24:                                               ; preds = %121, %33
  %25 = load ptr, ptr %28, align 8, !tbaa !43
  %26 = icmp eq ptr %25, null
  br i1 %26, label %124, label %27, !llvm.loop !813

27:                                               ; preds = %20, %24
  %28 = phi ptr [ %25, %24 ], [ %22, %20 ]
  %29 = getelementptr inbounds %struct.PTCacheMem, ptr %28, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !814
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.117, i32 noundef 1, ptr noundef nonnull %28, ptr noundef nonnull %28)
  %31 = getelementptr inbounds %struct.PTCacheMem, ptr %28, i64 0, i32 4
  %32 = getelementptr inbounds %struct.PTCacheMem, ptr %28, i64 0, i32 3
  br label %35

33:                                               ; preds = %100
  %34 = icmp eq ptr %30, null
  br i1 %34, label %24, label %103

35:                                               ; preds = %27, %100
  %36 = phi i64 [ 0, %27 ], [ %101, %100 ]
  %37 = getelementptr inbounds %struct.PTCacheMem, ptr %28, i64 0, i32 6, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !43
  %39 = icmp eq ptr %38, null
  br i1 %39, label %100, label %40

40:                                               ; preds = %35
  %41 = load i32, ptr %31, align 8, !tbaa !816
  %42 = trunc i64 %36 to i32
  %43 = shl nuw nsw i32 1, %42
  %44 = and i32 %41, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %100, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds [8 x ptr], ptr @ptcache_data_struct, i64 0, i64 %36
  %48 = load ptr, ptr %47, align 8, !tbaa !43
  %49 = load i8, ptr %48, align 1, !tbaa !603
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %98

51:                                               ; preds = %46
  %52 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !43
  %53 = tail call i64 %52(ptr noundef nonnull %38) #14
  %54 = trunc i64 %53 to i32
  %55 = load ptr, ptr %37, align 8, !tbaa !43
  %56 = icmp eq ptr %55, null
  %57 = icmp eq i32 %54, 0
  %58 = or i1 %57, %56
  br i1 %58, label %100, label %59

59:                                               ; preds = %51
  %60 = add nsw i32 %54, 3
  %61 = and i32 %60, -4
  %62 = load i32, ptr %6, align 8, !tbaa !49
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %97

64:                                               ; preds = %59
  %65 = load i32, ptr %7, align 8, !tbaa !51
  %66 = add nsw i32 %65, 24
  store i32 %66, ptr %7, align 8, !tbaa !51
  %67 = load i32, ptr %8, align 4, !tbaa !52
  %68 = icmp sgt i32 %67, 99975
  br i1 %68, label %69, label %86

69:                                               ; preds = %64
  %70 = load ptr, ptr %9, align 8, !tbaa !53
  %71 = icmp eq ptr %70, null
  %72 = select i1 %10, i1 true, i1 %71
  br i1 %72, label %85, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr %11, align 8, !tbaa !54
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  tail call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %74, ptr noundef nonnull %70, i32 noundef %67) #14
  br label %85

77:                                               ; preds = %73
  %78 = load ptr, ptr %12, align 8, !tbaa !55
  %79 = getelementptr inbounds %struct.WriteWrap, ptr %78, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !56
  %81 = zext nneg i32 %67 to i64
  %82 = tail call i64 %80(ptr noundef %78, ptr noundef nonnull %70, i64 noundef %81) #14
  %83 = icmp eq i64 %82, %81
  br i1 %83, label %85, label %84

84:                                               ; preds = %77
  store i32 1, ptr %6, align 8, !tbaa !49
  br label %85

85:                                               ; preds = %84, %77, %76, %69
  store i32 0, ptr %8, align 4, !tbaa !52
  br label %86

86:                                               ; preds = %85, %64
  %87 = load ptr, ptr %13, align 8, !tbaa !53
  %88 = load i32, ptr %8, align 4, !tbaa !52
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, ptr %87, i64 %89
  store i32 1096040772, ptr %90, align 1
  %91 = getelementptr inbounds i8, ptr %90, i64 4
  store i32 %61, ptr %91, align 1
  %92 = getelementptr inbounds i8, ptr %90, i64 8
  store ptr %55, ptr %92, align 1
  %93 = getelementptr inbounds i8, ptr %90, i64 16
  store i32 0, ptr %93, align 1
  %94 = getelementptr inbounds i8, ptr %90, i64 20
  store i32 1, ptr %94, align 1
  %95 = load i32, ptr %8, align 4, !tbaa !52
  %96 = add nsw i32 %95, 24
  store i32 %96, ptr %8, align 4, !tbaa !52
  br label %97

97:                                               ; preds = %59, %86
  tail call fastcc void @mywrite(ptr noundef %0, ptr noundef nonnull %55, i32 noundef %61)
  br label %100

98:                                               ; preds = %46
  %99 = load i32, ptr %32, align 4, !tbaa !817
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull %48, i32 noundef %99, ptr noundef nonnull %38, ptr noundef nonnull %38)
  br label %100

100:                                              ; preds = %97, %51, %35, %40, %98
  %101 = add nuw nsw i64 %36, 1
  %102 = icmp eq i64 %101, 8
  br i1 %102, label %33, label %35, !llvm.loop !818

103:                                              ; preds = %33, %121
  %104 = phi ptr [ %122, %121 ], [ %30, %33 ]
  %105 = getelementptr inbounds %struct.PTCacheExtra, ptr %104, i64 0, i32 2
  %106 = load i32, ptr %105, align 8, !tbaa !819
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds [2 x ptr], ptr @ptcache_extra_struct, i64 0, i64 %107
  %109 = load ptr, ptr %108, align 8, !tbaa !43
  %110 = load i8, ptr %109, align 1, !tbaa !603
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %121, label %112

112:                                              ; preds = %103
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.118, i32 noundef 1, ptr noundef nonnull %104, ptr noundef nonnull %104)
  %113 = load i32, ptr %105, align 8, !tbaa !819
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds [2 x ptr], ptr @ptcache_extra_struct, i64 0, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !43
  %117 = getelementptr inbounds %struct.PTCacheExtra, ptr %104, i64 0, i32 3
  %118 = load i32, ptr %117, align 4, !tbaa !821
  %119 = getelementptr inbounds %struct.PTCacheExtra, ptr %104, i64 0, i32 4
  %120 = load ptr, ptr %119, align 8, !tbaa !822
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef %116, i32 noundef %118, ptr noundef %120, ptr noundef %120)
  br label %121

121:                                              ; preds = %103, %112
  %122 = load ptr, ptr %104, align 8, !tbaa !823
  %123 = icmp eq ptr %122, null
  br i1 %123, label %24, label %103, !llvm.loop !824

124:                                              ; preds = %24, %20, %14
  %125 = load ptr, ptr %15, align 8, !tbaa !43
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %14, !llvm.loop !825

127:                                              ; preds = %124, %2
  ret void
}

declare ptr @BKE_sequence_modifier_type_info_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @write_node_socket(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.bNodeSocket, ptr %2, i64 0, i32 17
  store i16 1, ptr %4, align 2, !tbaa !826
  %5 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 8
  %6 = load i16, ptr %5, align 4, !tbaa !86
  %7 = icmp eq i16 %6, 2
  br i1 %7, label %8, label %22

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !827
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.bNodeSocket, ptr %2, i64 0, i32 10
  %14 = load i16, ptr %13, align 2, !tbaa !828
  %15 = sext i16 %14 to i32
  %16 = getelementptr inbounds %struct.bNodeSocket, ptr %2, i64 0, i32 4
  %17 = tail call ptr @ntreeFindSocketInterface(ptr noundef nonnull %10, i32 noundef %15, ptr noundef nonnull %16) #14
  %18 = getelementptr inbounds %struct.bNodeSocket, ptr %2, i64 0, i32 22
  store ptr %17, ptr %18, align 8, !tbaa !829
  %19 = getelementptr inbounds %struct.bNodeSocket, ptr %17, i64 0, i32 20
  %20 = load i32, ptr %19, align 8, !tbaa !830
  %21 = getelementptr inbounds %struct.bNodeSocket, ptr %2, i64 0, i32 20
  store i32 %20, ptr %21, align 8, !tbaa !830
  br label %22

22:                                               ; preds = %8, %12, %3
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.115, i32 noundef 1, ptr noundef %2, ptr noundef %2)
  %23 = getelementptr inbounds %struct.bNodeSocket, ptr %2, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !831
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %24, ptr noundef nonnull %24)
  tail call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %24, ptr noundef %0)
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr inbounds %struct.bNodeSocket, ptr %2, i64 0, i32 15
  %29 = load ptr, ptr %28, align 8, !tbaa !832
  %30 = icmp eq ptr %29, null
  br i1 %30, label %86, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !43
  %33 = tail call i64 %32(ptr noundef nonnull %29) #14
  %34 = trunc i64 %33 to i32
  %35 = load ptr, ptr %28, align 8, !tbaa !832
  %36 = icmp eq ptr %35, null
  %37 = icmp eq i32 %34, 0
  %38 = or i1 %37, %36
  br i1 %38, label %86, label %39

39:                                               ; preds = %31
  %40 = add nsw i32 %34, 3
  %41 = and i32 %40, -4
  %42 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 7
  %43 = load i32, ptr %42, align 8, !tbaa !49
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %85

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 5
  %47 = load i32, ptr %46, align 8, !tbaa !51
  %48 = add nsw i32 %47, 24
  store i32 %48, ptr %46, align 8, !tbaa !51
  %49 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 6
  %50 = load i32, ptr %49, align 4, !tbaa !52
  %51 = icmp sgt i32 %50, 99975
  br i1 %51, label %52, label %73

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !53
  %55 = icmp eq ptr %0, null
  %56 = icmp eq ptr %54, null
  %57 = select i1 %55, i1 true, i1 %56
  br i1 %57, label %72, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !54
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  tail call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %60, ptr noundef nonnull %54, i32 noundef %50) #14
  br label %72

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 9
  %65 = load ptr, ptr %64, align 8, !tbaa !55
  %66 = getelementptr inbounds %struct.WriteWrap, ptr %65, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !56
  %68 = zext nneg i32 %50 to i64
  %69 = tail call i64 %67(ptr noundef %65, ptr noundef nonnull %54, i64 noundef %68) #14
  %70 = icmp eq i64 %69, %68
  br i1 %70, label %72, label %71

71:                                               ; preds = %63
  store i32 1, ptr %42, align 8, !tbaa !49
  br label %72

72:                                               ; preds = %71, %63, %62, %52
  store i32 0, ptr %49, align 4, !tbaa !52
  br label %73

73:                                               ; preds = %72, %45
  %74 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !53
  %76 = load i32, ptr %49, align 4, !tbaa !52
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, ptr %75, i64 %77
  store i32 1096040772, ptr %78, align 1
  %79 = getelementptr inbounds i8, ptr %78, i64 4
  store i32 %41, ptr %79, align 1
  %80 = getelementptr inbounds i8, ptr %78, i64 8
  store ptr %35, ptr %80, align 1
  %81 = getelementptr inbounds i8, ptr %78, i64 16
  store i32 0, ptr %81, align 1
  %82 = getelementptr inbounds i8, ptr %78, i64 20
  store i32 1, ptr %82, align 1
  %83 = load i32, ptr %49, align 4, !tbaa !52
  %84 = add nsw i32 %83, 24
  store i32 %84, ptr %49, align 4, !tbaa !52
  br label %85

85:                                               ; preds = %39, %73
  tail call fastcc void @mywrite(ptr noundef %0, ptr noundef nonnull %35, i32 noundef %41)
  br label %86

86:                                               ; preds = %85, %31, %27
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @write_node_socket_interface(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 17
  store i16 1, ptr %3, align 2, !tbaa !826
  %4 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 15
  %5 = load ptr, ptr %4, align 8, !tbaa !832
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !833
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @node_socket_init_default_value(ptr noundef %1) #14
  br label %12

12:                                               ; preds = %11, %7, %2
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.115, i32 noundef 1, ptr noundef %1, ptr noundef %1)
  %13 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !831
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %14, ptr noundef nonnull %14)
  tail call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %14, ptr noundef %0)
  br label %17

17:                                               ; preds = %16, %12
  %18 = load ptr, ptr %4, align 8, !tbaa !832
  %19 = icmp eq ptr %18, null
  br i1 %19, label %75, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !43
  %22 = tail call i64 %21(ptr noundef nonnull %18) #14
  %23 = trunc i64 %22 to i32
  %24 = load ptr, ptr %4, align 8, !tbaa !832
  %25 = icmp eq ptr %24, null
  %26 = icmp eq i32 %23, 0
  %27 = or i1 %26, %25
  br i1 %27, label %75, label %28

28:                                               ; preds = %20
  %29 = add nsw i32 %23, 3
  %30 = and i32 %29, -4
  %31 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 7
  %32 = load i32, ptr %31, align 8, !tbaa !49
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %74

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !51
  %37 = add nsw i32 %36, 24
  store i32 %37, ptr %35, align 8, !tbaa !51
  %38 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 6
  %39 = load i32, ptr %38, align 4, !tbaa !52
  %40 = icmp sgt i32 %39, 99975
  br i1 %40, label %41, label %62

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !53
  %44 = icmp eq ptr %0, null
  %45 = icmp eq ptr %43, null
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %61, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !54
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  tail call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %49, ptr noundef nonnull %43, i32 noundef %39) #14
  br label %61

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 9
  %54 = load ptr, ptr %53, align 8, !tbaa !55
  %55 = getelementptr inbounds %struct.WriteWrap, ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !56
  %57 = zext nneg i32 %39 to i64
  %58 = tail call i64 %56(ptr noundef %54, ptr noundef nonnull %43, i64 noundef %57) #14
  %59 = icmp eq i64 %58, %57
  br i1 %59, label %61, label %60

60:                                               ; preds = %52
  store i32 1, ptr %31, align 8, !tbaa !49
  br label %61

61:                                               ; preds = %60, %52, %51, %41
  store i32 0, ptr %38, align 4, !tbaa !52
  br label %62

62:                                               ; preds = %61, %34
  %63 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !53
  %65 = load i32, ptr %38, align 4, !tbaa !52
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, ptr %64, i64 %66
  store i32 1096040772, ptr %67, align 1
  %68 = getelementptr inbounds i8, ptr %67, i64 4
  store i32 %30, ptr %68, align 1
  %69 = getelementptr inbounds i8, ptr %67, i64 8
  store ptr %24, ptr %69, align 1
  %70 = getelementptr inbounds i8, ptr %67, i64 16
  store i32 0, ptr %70, align 1
  %71 = getelementptr inbounds i8, ptr %67, i64 20
  store i32 1, ptr %71, align 1
  %72 = load i32, ptr %38, align 4, !tbaa !52
  %73 = add nsw i32 %72, 24
  store i32 %73, ptr %38, align 4, !tbaa !52
  br label %74

74:                                               ; preds = %28, %62
  tail call fastcc void @mywrite(ptr noundef %0, ptr noundef nonnull %24, i32 noundef %30)
  br label %75

75:                                               ; preds = %74, %20, %17
  ret void
}

declare void @node_socket_init_default_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @write_previews(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %134, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x i32], ptr %1, i64 0, i64 1
  %6 = load i32, ptr %5, align 4, !tbaa !63
  %7 = getelementptr inbounds %struct.PreviewImage, ptr %1, i64 0, i32 1
  %8 = getelementptr inbounds %struct.PreviewImage, ptr %1, i64 0, i32 1, i64 1
  %9 = load i32, ptr %8, align 4, !tbaa !63
  %10 = getelementptr inbounds %struct.PreviewImage, ptr %1, i64 0, i32 4
  %11 = getelementptr inbounds %struct.PreviewImage, ptr %1, i64 0, i32 4, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !834
  %14 = and i32 %13, 65536
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, ptr %5, align 4, !tbaa !63
  store i32 0, ptr %8, align 4, !tbaa !63
  store ptr null, ptr %11, align 8, !tbaa !43
  br label %17

17:                                               ; preds = %16, %4
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.131, i32 noundef 1, ptr noundef nonnull %1, ptr noundef nonnull %1)
  %18 = load ptr, ptr %10, align 8, !tbaa !43
  %19 = icmp eq ptr %18, null
  br i1 %19, label %71, label %20

20:                                               ; preds = %17
  %21 = load i32, ptr %1, align 8, !tbaa !63
  %22 = load i32, ptr %7, align 8, !tbaa !63
  %23 = shl i32 %21, 2
  %24 = mul i32 %23, %22
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %71, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 7
  %28 = load i32, ptr %27, align 8, !tbaa !49
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %70

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !51
  %33 = add nsw i32 %32, 24
  store i32 %33, ptr %31, align 8, !tbaa !51
  %34 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 6
  %35 = load i32, ptr %34, align 4, !tbaa !52
  %36 = icmp sgt i32 %35, 99975
  br i1 %36, label %37, label %58

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !53
  %40 = icmp eq ptr %0, null
  %41 = icmp eq ptr %39, null
  %42 = select i1 %40, i1 true, i1 %41
  br i1 %42, label %57, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !54
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %45, ptr noundef nonnull %39, i32 noundef %35) #14
  br label %57

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 9
  %50 = load ptr, ptr %49, align 8, !tbaa !55
  %51 = getelementptr inbounds %struct.WriteWrap, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !56
  %53 = zext nneg i32 %35 to i64
  %54 = tail call i64 %52(ptr noundef %50, ptr noundef nonnull %39, i64 noundef %53) #14
  %55 = icmp eq i64 %54, %53
  br i1 %55, label %57, label %56

56:                                               ; preds = %48
  store i32 1, ptr %27, align 8, !tbaa !49
  br label %57

57:                                               ; preds = %56, %48, %47, %37
  store i32 0, ptr %34, align 4, !tbaa !52
  br label %58

58:                                               ; preds = %57, %30
  %59 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !53
  %61 = load i32, ptr %34, align 4, !tbaa !52
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, ptr %60, i64 %62
  store i32 1096040772, ptr %63, align 1
  %64 = getelementptr inbounds i8, ptr %63, i64 4
  store i32 %24, ptr %64, align 1
  %65 = getelementptr inbounds i8, ptr %63, i64 8
  store ptr %18, ptr %65, align 1
  %66 = getelementptr inbounds i8, ptr %63, i64 16
  store i32 0, ptr %66, align 1
  %67 = getelementptr inbounds i8, ptr %63, i64 20
  store i32 1, ptr %67, align 1
  %68 = load i32, ptr %34, align 4, !tbaa !52
  %69 = add nsw i32 %68, 24
  store i32 %69, ptr %34, align 4, !tbaa !52
  br label %70

70:                                               ; preds = %26, %58
  tail call fastcc void @mywrite(ptr noundef %0, ptr noundef nonnull %18, i32 noundef %24)
  br label %71

71:                                               ; preds = %70, %20, %17
  %72 = load ptr, ptr %11, align 8, !tbaa !43
  %73 = icmp eq ptr %72, null
  br i1 %73, label %125, label %74

74:                                               ; preds = %71
  %75 = load i32, ptr %5, align 4, !tbaa !63
  %76 = load i32, ptr %8, align 4, !tbaa !63
  %77 = shl i32 %75, 2
  %78 = mul i32 %77, %76
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %125, label %80

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 7
  %82 = load i32, ptr %81, align 8, !tbaa !49
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %124

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 5
  %86 = load i32, ptr %85, align 8, !tbaa !51
  %87 = add nsw i32 %86, 24
  store i32 %87, ptr %85, align 8, !tbaa !51
  %88 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 6
  %89 = load i32, ptr %88, align 4, !tbaa !52
  %90 = icmp sgt i32 %89, 99975
  br i1 %90, label %91, label %112

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !53
  %94 = icmp eq ptr %0, null
  %95 = icmp eq ptr %93, null
  %96 = select i1 %94, i1 true, i1 %95
  br i1 %96, label %111, label %97

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  %99 = load ptr, ptr %98, align 8, !tbaa !54
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  tail call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %99, ptr noundef nonnull %93, i32 noundef %89) #14
  br label %111

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 9
  %104 = load ptr, ptr %103, align 8, !tbaa !55
  %105 = getelementptr inbounds %struct.WriteWrap, ptr %104, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !56
  %107 = zext nneg i32 %89 to i64
  %108 = tail call i64 %106(ptr noundef %104, ptr noundef nonnull %93, i64 noundef %107) #14
  %109 = icmp eq i64 %108, %107
  br i1 %109, label %111, label %110

110:                                              ; preds = %102
  store i32 1, ptr %81, align 8, !tbaa !49
  br label %111

111:                                              ; preds = %110, %102, %101, %91
  store i32 0, ptr %88, align 4, !tbaa !52
  br label %112

112:                                              ; preds = %111, %84
  %113 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !53
  %115 = load i32, ptr %88, align 4, !tbaa !52
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, ptr %114, i64 %116
  store i32 1096040772, ptr %117, align 1
  %118 = getelementptr inbounds i8, ptr %117, i64 4
  store i32 %78, ptr %118, align 1
  %119 = getelementptr inbounds i8, ptr %117, i64 8
  store ptr %72, ptr %119, align 1
  %120 = getelementptr inbounds i8, ptr %117, i64 16
  store i32 0, ptr %120, align 1
  %121 = getelementptr inbounds i8, ptr %117, i64 20
  store i32 1, ptr %121, align 1
  %122 = load i32, ptr %88, align 4, !tbaa !52
  %123 = add nsw i32 %122, 24
  store i32 %123, ptr %88, align 4, !tbaa !52
  br label %124

124:                                              ; preds = %80, %112
  tail call fastcc void @mywrite(ptr noundef %0, ptr noundef nonnull %72, i32 noundef %78)
  br label %125

125:                                              ; preds = %124, %74, %71
  %126 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !834
  %127 = and i32 %126, 65536
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = shl i32 %6, 16
  %131 = ashr exact i32 %130, 16
  store i32 %131, ptr %5, align 4, !tbaa !63
  %132 = shl i32 %9, 16
  %133 = ashr exact i32 %132, 16
  store i32 %133, ptr %8, align 4, !tbaa !63
  store ptr %12, ptr %11, align 8, !tbaa !43
  br label %134

134:                                              ; preds = %125, %129, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @write_bone(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 24
  %4 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 24, i64 2
  store float 1.000000e+00, ptr %4, align 4, !tbaa !605
  %5 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 24, i64 1
  store float 1.000000e+00, ptr %5, align 4, !tbaa !605
  store float 1.000000e+00, ptr %3, align 4, !tbaa !605
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.149, i32 noundef 1, ptr noundef %1, ptr noundef %1)
  %6 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !835
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef nonnull %7, ptr noundef nonnull %7)
  tail call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %7, ptr noundef %0)
  br label %10

10:                                               ; preds = %9, %2
  %11 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10, %14
  %15 = phi ptr [ %16, %14 ], [ %12, %10 ]
  tail call fastcc void @write_bone(ptr noundef %0, ptr noundef nonnull %15)
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %14, !llvm.loop !836

18:                                               ; preds = %14, %10
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @write_constraints(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %89, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 7
  %7 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 5
  %8 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 6
  %9 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  %10 = icmp eq ptr %0, null
  %11 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  %12 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 9
  %13 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  br label %14

14:                                               ; preds = %5, %86
  %15 = phi ptr [ %3, %5 ], [ %87, %86 ]
  %16 = tail call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %15) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %86, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.bConstraint, ptr %15, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !837
  %21 = icmp eq ptr %20, null
  br i1 %21, label %86, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %16, i64 0, i32 3
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull %23, i32 noundef 1, ptr noundef nonnull %20, ptr noundef nonnull %20)
  %24 = getelementptr inbounds %struct.bConstraint, ptr %15, i64 0, i32 3
  %25 = load i16, ptr %24, align 8, !tbaa !839
  switch i16 %25, label %86 [
    i16 11, label %26
    i16 22, label %38
  ]

26:                                               ; preds = %22
  %27 = load ptr, ptr %19, align 8, !tbaa !837
  %28 = getelementptr inbounds %struct.bPythonConstraint, ptr %27, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !43
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %26, %31
  %32 = phi ptr [ %33, %31 ], [ %29, %26 ]
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.203, i32 noundef 1, ptr noundef nonnull %32, ptr noundef nonnull %32)
  %33 = load ptr, ptr %32, align 8, !tbaa !43
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %31, !llvm.loop !840

35:                                               ; preds = %31, %26
  %36 = getelementptr inbounds %struct.bPythonConstraint, ptr %27, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !841
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef %37, ptr noundef %37)
  tail call void @IDP_WriteProperty_OnlyData(ptr noundef %37, ptr noundef %0)
  br label %86

38:                                               ; preds = %22
  %39 = load ptr, ptr %19, align 8, !tbaa !837
  %40 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %39, i64 0, i32 2
  %41 = load i16, ptr %40, align 8, !tbaa !843
  %42 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %39, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !845
  %44 = icmp eq ptr %43, null
  %45 = icmp eq i16 %41, 0
  %46 = or i1 %45, %44
  br i1 %46, label %86, label %47

47:                                               ; preds = %38
  %48 = sext i16 %41 to i32
  %49 = shl nsw i32 %48, 2
  %50 = load i32, ptr %6, align 8, !tbaa !49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %85

52:                                               ; preds = %47
  %53 = load i32, ptr %7, align 8, !tbaa !51
  %54 = add nsw i32 %53, 24
  store i32 %54, ptr %7, align 8, !tbaa !51
  %55 = load i32, ptr %8, align 4, !tbaa !52
  %56 = icmp sgt i32 %55, 99975
  br i1 %56, label %57, label %74

57:                                               ; preds = %52
  %58 = load ptr, ptr %9, align 8, !tbaa !53
  %59 = icmp eq ptr %58, null
  %60 = select i1 %10, i1 true, i1 %59
  br i1 %60, label %73, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr %11, align 8, !tbaa !54
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  tail call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %62, ptr noundef nonnull %58, i32 noundef %55) #14
  br label %73

65:                                               ; preds = %61
  %66 = load ptr, ptr %12, align 8, !tbaa !55
  %67 = getelementptr inbounds %struct.WriteWrap, ptr %66, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !56
  %69 = zext nneg i32 %55 to i64
  %70 = tail call i64 %68(ptr noundef %66, ptr noundef nonnull %58, i64 noundef %69) #14
  %71 = icmp eq i64 %70, %69
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  store i32 1, ptr %6, align 8, !tbaa !49
  br label %73

73:                                               ; preds = %72, %65, %64, %57
  store i32 0, ptr %8, align 4, !tbaa !52
  br label %74

74:                                               ; preds = %73, %52
  %75 = load ptr, ptr %13, align 8, !tbaa !53
  %76 = load i32, ptr %8, align 4, !tbaa !52
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, ptr %75, i64 %77
  store i32 1096040772, ptr %78, align 1
  %79 = getelementptr inbounds i8, ptr %78, i64 4
  store i32 %49, ptr %79, align 1
  %80 = getelementptr inbounds i8, ptr %78, i64 8
  store ptr %43, ptr %80, align 1
  %81 = getelementptr inbounds i8, ptr %78, i64 16
  store i32 0, ptr %81, align 1
  %82 = getelementptr inbounds i8, ptr %78, i64 20
  store i32 1, ptr %82, align 1
  %83 = load i32, ptr %8, align 4, !tbaa !52
  %84 = add nsw i32 %83, 24
  store i32 %84, ptr %8, align 4, !tbaa !52
  br label %85

85:                                               ; preds = %47, %74
  tail call fastcc void @mywrite(ptr noundef %0, ptr noundef nonnull %43, i32 noundef %49)
  br label %86

86:                                               ; preds = %85, %38, %35, %22, %18, %14
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.204, i32 noundef 1, ptr noundef nonnull %15, ptr noundef nonnull %15)
  %87 = load ptr, ptr %15, align 8, !tbaa !43
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %14, !llvm.loop !846

89:                                               ; preds = %86, %2
  ret void
}

declare ptr @BKE_pose_ikparam_get_name(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_constraint_typeinfo_get(ptr noundef) local_unnamed_addr #2

declare ptr @modifierType_getInfo(i32 noundef) local_unnamed_addr #2

declare ptr @BKE_ptcache_add(ptr noundef) local_unnamed_addr #2

declare void @BKE_ptcache_free_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @write_customdata(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.CustomData, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %5) #14
  %8 = load i64, ptr @CD_MASK_EVERYTHING, align 8, !tbaa !847
  call void @CustomData_copy(ptr noundef %3, ptr noundef nonnull %5, i64 noundef %8, i32 noundef 3, i32 noundef %2) #14
  %9 = getelementptr inbounds %struct.CustomData, ptr %5, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !848
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i64, ptr @CD_MASK_MESH, align 8, !tbaa !847
  call void @CustomData_external_write(ptr noundef nonnull %5, ptr noundef %1, i64 noundef %17, i32 noundef %2, i32 noundef 0) #14
  br label %18

18:                                               ; preds = %16, %12, %4
  %19 = getelementptr inbounds %struct.CustomData, ptr %5, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !849
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load ptr, ptr %5, align 8, !tbaa !850
  %24 = zext nneg i32 %20 to i64
  br label %25

25:                                               ; preds = %22, %25
  %26 = phi i64 [ 0, %22 ], [ %30, %25 ]
  %27 = getelementptr inbounds %struct.CustomDataLayer, ptr %23, i64 %26, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !851
  %29 = and i32 %28, -3
  store i32 %29, ptr %27, align 8, !tbaa !851
  %30 = add nuw nsw i64 %26, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %32, label %25, !llvm.loop !853

32:                                               ; preds = %25, %18
  %33 = getelementptr inbounds %struct.CustomData, ptr %5, i64 0, i32 2
  %34 = getelementptr inbounds %struct.CustomData, ptr %5, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !854
  %36 = load ptr, ptr %3, align 8, !tbaa !850
  %37 = load ptr, ptr %5, align 8, !tbaa !850
  call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.233, i32 noundef %35, ptr noundef %36, ptr noundef %37)
  %38 = load i32, ptr %33, align 4, !tbaa !849
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load ptr, ptr %5, align 8, !tbaa !850
  %42 = zext nneg i32 %38 to i64
  br label %87

43:                                               ; preds = %87, %32
  %44 = load i32, ptr %33, align 4, !tbaa !849
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %346

46:                                               ; preds = %43
  %47 = icmp sgt i32 %2, 0
  %48 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 7
  %49 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 5
  %50 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 6
  %51 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  %52 = icmp eq ptr %0, null
  %53 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  %54 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 9
  %55 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  %56 = shl i32 %2, 2
  %57 = icmp eq i32 %56, 0
  %58 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 7
  %59 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 5
  %60 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 6
  %61 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  %62 = icmp eq ptr %0, null
  %63 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  %64 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 9
  %65 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  %66 = icmp sgt i32 %2, 0
  %67 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 7
  %68 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 5
  %69 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 6
  %70 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  %71 = icmp eq ptr %0, null
  %72 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  %73 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 9
  %74 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  %75 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 7
  %76 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 5
  %77 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 6
  %78 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  %79 = icmp eq ptr %0, null
  %80 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  %81 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 9
  %82 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  %83 = icmp sgt i32 %2, 0
  %84 = zext nneg i32 %2 to i64
  %85 = zext nneg i32 %2 to i64
  %86 = zext nneg i32 %2 to i64
  br label %94

87:                                               ; preds = %40, %87
  %88 = phi i64 [ 0, %40 ], [ %92, %87 ]
  %89 = getelementptr inbounds %struct.CustomDataLayer, ptr %41, i64 %88, i32 2
  %90 = load i32, ptr %89, align 8, !tbaa !851
  %91 = or i32 %90, 2
  store i32 %91, ptr %89, align 8, !tbaa !851
  %92 = add nuw nsw i64 %88, 1
  %93 = icmp eq i64 %92, %42
  br i1 %93, label %43, label %87, !llvm.loop !855

94:                                               ; preds = %46, %341
  %95 = phi i64 [ 0, %46 ], [ %342, %341 ]
  %96 = load ptr, ptr %5, align 8, !tbaa !850
  %97 = getelementptr inbounds %struct.CustomDataLayer, ptr %96, i64 %95
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  %98 = load i32, ptr %97, align 8, !tbaa !856
  switch i32 %98, label %326 [
    i32 2, label %99
    i32 19, label %115
    i32 34, label %224
    i32 35, label %266
  ]

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.CustomDataLayer, ptr %96, i64 %95, i32 9
  %101 = load ptr, ptr %100, align 8, !tbaa !857
  %102 = icmp eq ptr %101, null
  br i1 %102, label %341, label %103

103:                                              ; preds = %99
  call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.136, i32 noundef %2, ptr noundef nonnull %101, ptr noundef nonnull %101)
  br i1 %83, label %104, label %341

104:                                              ; preds = %103, %112
  %105 = phi i64 [ %113, %112 ], [ 0, %103 ]
  %106 = getelementptr inbounds %struct.MDeformVert, ptr %101, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !374
  %108 = icmp eq ptr %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.MDeformVert, ptr %101, i64 %105, i32 1
  %111 = load i32, ptr %110, align 8, !tbaa !376
  call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.137, i32 noundef %111, ptr noundef nonnull %107, ptr noundef nonnull %107)
  br label %112

112:                                              ; preds = %109, %104
  %113 = add nuw nsw i64 %105, 1
  %114 = icmp eq i64 %113, %84
  br i1 %114, label %341, label %104, !llvm.loop !377

115:                                              ; preds = %94
  %116 = getelementptr inbounds %struct.CustomDataLayer, ptr %96, i64 %95, i32 9
  %117 = load ptr, ptr %116, align 8, !tbaa !857
  %118 = getelementptr inbounds %struct.CustomDataLayer, ptr %96, i64 %95, i32 2
  %119 = load i32, ptr %118, align 8, !tbaa !851
  %120 = and i32 %119, 8
  %121 = icmp eq ptr %117, null
  br i1 %121, label %341, label %122

122:                                              ; preds = %115
  call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.236, i32 noundef %2, ptr noundef nonnull %117, ptr noundef nonnull %117)
  br i1 %66, label %123, label %341

123:                                              ; preds = %122
  %124 = icmp ne i32 %120, 0
  br label %125

125:                                              ; preds = %123, %221
  %126 = phi i64 [ 0, %123 ], [ %222, %221 ]
  %127 = getelementptr inbounds %struct.MDisps, ptr %117, i64 %126
  %128 = getelementptr inbounds %struct.MDisps, ptr %117, i64 %126, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !858
  %130 = icmp eq ptr %129, null
  %131 = or i1 %124, %130
  br i1 %131, label %173, label %132

132:                                              ; preds = %125
  %133 = load i32, ptr %127, align 8, !tbaa !860
  %134 = mul i32 %133, 12
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %173, label %136

136:                                              ; preds = %132
  %137 = load i32, ptr %67, align 8, !tbaa !49
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %172

139:                                              ; preds = %136
  %140 = load i32, ptr %68, align 8, !tbaa !51
  %141 = add nsw i32 %140, 24
  store i32 %141, ptr %68, align 8, !tbaa !51
  %142 = load i32, ptr %69, align 4, !tbaa !52
  %143 = icmp sgt i32 %142, 99975
  br i1 %143, label %144, label %161

144:                                              ; preds = %139
  %145 = load ptr, ptr %70, align 8, !tbaa !53
  %146 = icmp eq ptr %145, null
  %147 = select i1 %71, i1 true, i1 %146
  br i1 %147, label %160, label %148

148:                                              ; preds = %144
  %149 = load ptr, ptr %72, align 8, !tbaa !54
  %150 = icmp eq ptr %149, null
  br i1 %150, label %152, label %151

151:                                              ; preds = %148
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %149, ptr noundef nonnull %145, i32 noundef %142) #14
  br label %160

152:                                              ; preds = %148
  %153 = load ptr, ptr %73, align 8, !tbaa !55
  %154 = getelementptr inbounds %struct.WriteWrap, ptr %153, i64 0, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !56
  %156 = zext nneg i32 %142 to i64
  %157 = call i64 %155(ptr noundef %153, ptr noundef nonnull %145, i64 noundef %156) #14
  %158 = icmp eq i64 %157, %156
  br i1 %158, label %160, label %159

159:                                              ; preds = %152
  store i32 1, ptr %67, align 8, !tbaa !49
  br label %160

160:                                              ; preds = %159, %152, %151, %144
  store i32 0, ptr %69, align 4, !tbaa !52
  br label %161

161:                                              ; preds = %160, %139
  %162 = load ptr, ptr %74, align 8, !tbaa !53
  %163 = load i32, ptr %69, align 4, !tbaa !52
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, ptr %162, i64 %164
  store i32 1096040772, ptr %165, align 1
  %166 = getelementptr inbounds i8, ptr %165, i64 4
  store i32 %134, ptr %166, align 1
  %167 = getelementptr inbounds i8, ptr %165, i64 8
  store ptr %129, ptr %167, align 1
  %168 = getelementptr inbounds i8, ptr %165, i64 16
  store i32 0, ptr %168, align 1
  %169 = getelementptr inbounds i8, ptr %165, i64 20
  store i32 1, ptr %169, align 1
  %170 = load i32, ptr %69, align 4, !tbaa !52
  %171 = add nsw i32 %170, 24
  store i32 %171, ptr %69, align 4, !tbaa !52
  br label %172

172:                                              ; preds = %136, %161
  call fastcc void @mywrite(ptr noundef %0, ptr noundef nonnull %129, i32 noundef %134)
  br label %173

173:                                              ; preds = %172, %132, %125
  %174 = getelementptr inbounds %struct.MDisps, ptr %117, i64 %126, i32 3
  %175 = load ptr, ptr %174, align 8, !tbaa !861
  %176 = icmp eq ptr %175, null
  br i1 %176, label %221, label %177

177:                                              ; preds = %173
  %178 = load i32, ptr %127, align 8, !tbaa !860
  %179 = ashr i32 %178, 3
  %180 = icmp ugt i32 %179, -5
  br i1 %180, label %221, label %181

181:                                              ; preds = %177
  %182 = and i32 %179, -4
  %183 = add nsw i32 %182, 7
  %184 = and i32 %183, -4
  %185 = load i32, ptr %75, align 8, !tbaa !49
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %220

187:                                              ; preds = %181
  %188 = load i32, ptr %76, align 8, !tbaa !51
  %189 = add nsw i32 %188, 24
  store i32 %189, ptr %76, align 8, !tbaa !51
  %190 = load i32, ptr %77, align 4, !tbaa !52
  %191 = icmp sgt i32 %190, 99975
  br i1 %191, label %192, label %209

192:                                              ; preds = %187
  %193 = load ptr, ptr %78, align 8, !tbaa !53
  %194 = icmp eq ptr %193, null
  %195 = select i1 %79, i1 true, i1 %194
  br i1 %195, label %208, label %196

196:                                              ; preds = %192
  %197 = load ptr, ptr %80, align 8, !tbaa !54
  %198 = icmp eq ptr %197, null
  br i1 %198, label %200, label %199

199:                                              ; preds = %196
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %197, ptr noundef nonnull %193, i32 noundef %190) #14
  br label %208

200:                                              ; preds = %196
  %201 = load ptr, ptr %81, align 8, !tbaa !55
  %202 = getelementptr inbounds %struct.WriteWrap, ptr %201, i64 0, i32 2
  %203 = load ptr, ptr %202, align 8, !tbaa !56
  %204 = zext nneg i32 %190 to i64
  %205 = call i64 %203(ptr noundef %201, ptr noundef nonnull %193, i64 noundef %204) #14
  %206 = icmp eq i64 %205, %204
  br i1 %206, label %208, label %207

207:                                              ; preds = %200
  store i32 1, ptr %75, align 8, !tbaa !49
  br label %208

208:                                              ; preds = %207, %200, %199, %192
  store i32 0, ptr %77, align 4, !tbaa !52
  br label %209

209:                                              ; preds = %208, %187
  %210 = load ptr, ptr %82, align 8, !tbaa !53
  %211 = load i32, ptr %77, align 4, !tbaa !52
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8, ptr %210, i64 %212
  store i32 1096040772, ptr %213, align 1
  %214 = getelementptr inbounds i8, ptr %213, i64 4
  store i32 %184, ptr %214, align 1
  %215 = getelementptr inbounds i8, ptr %213, i64 8
  store ptr %175, ptr %215, align 1
  %216 = getelementptr inbounds i8, ptr %213, i64 16
  store i32 0, ptr %216, align 1
  %217 = getelementptr inbounds i8, ptr %213, i64 20
  store i32 1, ptr %217, align 1
  %218 = load i32, ptr %77, align 4, !tbaa !52
  %219 = add nsw i32 %218, 24
  store i32 %219, ptr %77, align 4, !tbaa !52
  br label %220

220:                                              ; preds = %181, %209
  call fastcc void @mywrite(ptr noundef %0, ptr noundef nonnull %175, i32 noundef %184)
  br label %221

221:                                              ; preds = %220, %177, %173
  %222 = add nuw nsw i64 %126, 1
  %223 = icmp eq i64 %222, %86
  br i1 %223, label %341, label %125, !llvm.loop !862

224:                                              ; preds = %94
  %225 = getelementptr inbounds %struct.CustomDataLayer, ptr %96, i64 %95, i32 9
  %226 = load ptr, ptr %225, align 8, !tbaa !857
  %227 = icmp eq ptr %226, null
  %228 = or i1 %57, %227
  br i1 %228, label %341, label %229

229:                                              ; preds = %224
  %230 = load i32, ptr %58, align 8, !tbaa !49
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %265

232:                                              ; preds = %229
  %233 = load i32, ptr %59, align 8, !tbaa !51
  %234 = add nsw i32 %233, 24
  store i32 %234, ptr %59, align 8, !tbaa !51
  %235 = load i32, ptr %60, align 4, !tbaa !52
  %236 = icmp sgt i32 %235, 99975
  br i1 %236, label %237, label %254

237:                                              ; preds = %232
  %238 = load ptr, ptr %61, align 8, !tbaa !53
  %239 = icmp eq ptr %238, null
  %240 = select i1 %62, i1 true, i1 %239
  br i1 %240, label %253, label %241

241:                                              ; preds = %237
  %242 = load ptr, ptr %63, align 8, !tbaa !54
  %243 = icmp eq ptr %242, null
  br i1 %243, label %245, label %244

244:                                              ; preds = %241
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %242, ptr noundef nonnull %238, i32 noundef %235) #14
  br label %253

245:                                              ; preds = %241
  %246 = load ptr, ptr %64, align 8, !tbaa !55
  %247 = getelementptr inbounds %struct.WriteWrap, ptr %246, i64 0, i32 2
  %248 = load ptr, ptr %247, align 8, !tbaa !56
  %249 = zext nneg i32 %235 to i64
  %250 = call i64 %248(ptr noundef %246, ptr noundef nonnull %238, i64 noundef %249) #14
  %251 = icmp eq i64 %250, %249
  br i1 %251, label %253, label %252

252:                                              ; preds = %245
  store i32 1, ptr %58, align 8, !tbaa !49
  br label %253

253:                                              ; preds = %252, %245, %244, %237
  store i32 0, ptr %60, align 4, !tbaa !52
  br label %254

254:                                              ; preds = %253, %232
  %255 = load ptr, ptr %65, align 8, !tbaa !53
  %256 = load i32, ptr %60, align 4, !tbaa !52
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, ptr %255, i64 %257
  store i32 1096040772, ptr %258, align 1
  %259 = getelementptr inbounds i8, ptr %258, i64 4
  store i32 %56, ptr %259, align 1
  %260 = getelementptr inbounds i8, ptr %258, i64 8
  store ptr %226, ptr %260, align 1
  %261 = getelementptr inbounds i8, ptr %258, i64 16
  store i32 0, ptr %261, align 1
  %262 = getelementptr inbounds i8, ptr %258, i64 20
  store i32 1, ptr %262, align 1
  %263 = load i32, ptr %60, align 4, !tbaa !52
  %264 = add nsw i32 %263, 24
  store i32 %264, ptr %60, align 4, !tbaa !52
  br label %265

265:                                              ; preds = %229, %254
  call fastcc void @mywrite(ptr noundef %0, ptr noundef nonnull %226, i32 noundef %56)
  br label %341

266:                                              ; preds = %94
  %267 = getelementptr inbounds %struct.CustomDataLayer, ptr %96, i64 %95, i32 9
  %268 = load ptr, ptr %267, align 8, !tbaa !857
  %269 = icmp eq ptr %268, null
  br i1 %269, label %341, label %270

270:                                              ; preds = %266
  call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.237, i32 noundef %2, ptr noundef nonnull %268, ptr noundef nonnull %268)
  br i1 %47, label %271, label %341

271:                                              ; preds = %270, %323
  %272 = phi i64 [ %324, %323 ], [ 0, %270 ]
  %273 = getelementptr inbounds %struct.GridPaintMask, ptr %268, i64 %272
  %274 = load ptr, ptr %273, align 8, !tbaa !863
  %275 = icmp eq ptr %274, null
  br i1 %275, label %323, label %276

276:                                              ; preds = %271
  %277 = getelementptr inbounds %struct.GridPaintMask, ptr %268, i64 %272, i32 1
  %278 = load i32, ptr %277, align 8, !tbaa !865
  %279 = call i32 @BKE_ccg_gridsize(i32 noundef %278) #14
  %280 = shl i32 %279, 2
  %281 = mul i32 %280, %279
  %282 = load ptr, ptr %273, align 8, !tbaa !863
  %283 = icmp eq ptr %282, null
  %284 = icmp eq i32 %281, 0
  %285 = or i1 %283, %284
  br i1 %285, label %323, label %286

286:                                              ; preds = %276
  %287 = load i32, ptr %48, align 8, !tbaa !49
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %322

289:                                              ; preds = %286
  %290 = load i32, ptr %49, align 8, !tbaa !51
  %291 = add nsw i32 %290, 24
  store i32 %291, ptr %49, align 8, !tbaa !51
  %292 = load i32, ptr %50, align 4, !tbaa !52
  %293 = icmp sgt i32 %292, 99975
  br i1 %293, label %294, label %311

294:                                              ; preds = %289
  %295 = load ptr, ptr %51, align 8, !tbaa !53
  %296 = icmp eq ptr %295, null
  %297 = select i1 %52, i1 true, i1 %296
  br i1 %297, label %310, label %298

298:                                              ; preds = %294
  %299 = load ptr, ptr %53, align 8, !tbaa !54
  %300 = icmp eq ptr %299, null
  br i1 %300, label %302, label %301

301:                                              ; preds = %298
  call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %299, ptr noundef nonnull %295, i32 noundef %292) #14
  br label %310

302:                                              ; preds = %298
  %303 = load ptr, ptr %54, align 8, !tbaa !55
  %304 = getelementptr inbounds %struct.WriteWrap, ptr %303, i64 0, i32 2
  %305 = load ptr, ptr %304, align 8, !tbaa !56
  %306 = zext nneg i32 %292 to i64
  %307 = call i64 %305(ptr noundef %303, ptr noundef nonnull %295, i64 noundef %306) #14
  %308 = icmp eq i64 %307, %306
  br i1 %308, label %310, label %309

309:                                              ; preds = %302
  store i32 1, ptr %48, align 8, !tbaa !49
  br label %310

310:                                              ; preds = %309, %302, %301, %294
  store i32 0, ptr %50, align 4, !tbaa !52
  br label %311

311:                                              ; preds = %310, %289
  %312 = load ptr, ptr %55, align 8, !tbaa !53
  %313 = load i32, ptr %50, align 4, !tbaa !52
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i8, ptr %312, i64 %314
  store i32 1096040772, ptr %315, align 1
  %316 = getelementptr inbounds i8, ptr %315, i64 4
  store i32 %281, ptr %316, align 1
  %317 = getelementptr inbounds i8, ptr %315, i64 8
  store ptr %282, ptr %317, align 1
  %318 = getelementptr inbounds i8, ptr %315, i64 16
  store i32 0, ptr %318, align 1
  %319 = getelementptr inbounds i8, ptr %315, i64 20
  store i32 1, ptr %319, align 1
  %320 = load i32, ptr %50, align 4, !tbaa !52
  %321 = add nsw i32 %320, 24
  store i32 %321, ptr %50, align 4, !tbaa !52
  br label %322

322:                                              ; preds = %286, %311
  call fastcc void @mywrite(ptr noundef %0, ptr noundef nonnull %282, i32 noundef %281)
  br label %323

323:                                              ; preds = %322, %276, %271
  %324 = add nuw nsw i64 %272, 1
  %325 = icmp eq i64 %324, %85
  br i1 %325, label %341, label %271, !llvm.loop !866

326:                                              ; preds = %94
  call void @CustomData_file_write_info(i32 noundef %98, ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  %327 = load i32, ptr %7, align 4, !tbaa !63
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %337, label %329

329:                                              ; preds = %326
  %330 = load i32, ptr %97, align 8, !tbaa !856
  %331 = icmp eq i32 %330, -1
  %332 = mul nsw i32 %327, %2
  %333 = select i1 %331, i32 0, i32 %332
  %334 = load ptr, ptr %6, align 8, !tbaa !43
  %335 = getelementptr inbounds %struct.CustomDataLayer, ptr %96, i64 %95, i32 9
  %336 = load ptr, ptr %335, align 8, !tbaa !857
  call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef %334, i32 noundef %333, ptr noundef %336, ptr noundef %336)
  br label %341

337:                                              ; preds = %326
  %338 = load ptr, ptr %6, align 8, !tbaa !43
  %339 = load i32, ptr %97, align 8, !tbaa !856
  %340 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @__func__.write_customdata, ptr noundef %338, i32 noundef %339)
  br label %341

341:                                              ; preds = %323, %221, %112, %270, %122, %265, %224, %103, %99, %266, %115, %337, %329
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  %342 = add nuw nsw i64 %95, 1
  %343 = load i32, ptr %33, align 4, !tbaa !849
  %344 = sext i32 %343 to i64
  %345 = icmp slt i64 %342, %344
  br i1 %345, label %94, label %346, !llvm.loop !867

346:                                              ; preds = %341, %43
  %347 = load ptr, ptr %9, align 8, !tbaa !848
  %348 = icmp eq ptr %347, null
  br i1 %348, label %352, label %349

349:                                              ; preds = %346
  %350 = getelementptr inbounds %struct.CustomData, ptr %3, i64 0, i32 6
  %351 = load ptr, ptr %350, align 8, !tbaa !848
  call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.235, i32 noundef 1, ptr noundef %351, ptr noundef nonnull %347)
  br label %352

352:                                              ; preds = %349, %346
  call void @CustomData_free(ptr noundef nonnull %5, i32 noundef %2) #14
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %5) #14
  ret void
}

declare void @CustomData_reset(ptr noundef) local_unnamed_addr #2

declare i32 @BKE_mesh_mpoly_to_mface(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_mesh_update_customdata_pointers(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @CustomData_free(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @CustomData_copy(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @CustomData_external_write(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @CustomData_file_write_info(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BKE_ccg_gridsize(i32 noundef) local_unnamed_addr #2

declare i32 @set_listbasepointers(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @nodeRemLink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @DNA_sdna_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(none) }
attributes #16 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !37, i64 16}
!35 = !{!"IDProperty", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 17, !39, i64 18, !37, i64 20, !40, i64 84, !41, i64 88, !40, i64 120, !40, i64 124}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = !{!"IDPropertyData", !36, i64 0, !42, i64 8, !40, i64 24, !40, i64 28}
!42 = !{!"ListBase", !36, i64 0, !36, i64 8}
!43 = !{!36, !36, i64 0}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!35, !40, i64 120}
!48 = !{!35, !36, i64 88}
!49 = !{!50, !40, i64 48}
!50 = !{!"", !36, i64 0, !40, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !36, i64 56, !37, i64 64}
!51 = !{!50, !40, i64 40}
!52 = !{!50, !40, i64 44}
!53 = !{!50, !36, i64 16}
!54 = !{!50, !36, i64 32}
!55 = !{!50, !36, i64 56}
!56 = !{!57, !36, i64 16}
!57 = !{!"WriteWrap", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24}
!58 = !{!35, !37, i64 17}
!59 = distinct !{!59, !45, !46}
!60 = distinct !{!60, !45, !46}
!61 = !{!57, !36, i64 0}
!62 = !{!57, !36, i64 8}
!63 = !{!40, !40, i64 0}
!64 = !{!65, !37, i64 2056}
!65 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !42, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !39, i64 2084, !39, i64 2086, !39, i64 2088, !37, i64 2090, !39, i64 2092, !40, i64 2096, !40, i64 2100, !37, i64 2104, !40, i64 2108, !40, i64 2112, !37, i64 2116}
!66 = !{!65, !36, i64 0}
!67 = !{!68, !39, i64 8476}
!68 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !40, i64 8468, !39, i64 8472, !39, i64 8474, !39, i64 8476, !39, i64 8478, !39, i64 8480, !39, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !39, i64 8496, !39, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !39, i64 8528, !39, i64 8530, !39, i64 8532, !39, i64 8534, !42, i64 8536, !42, i64 8552, !42, i64 8568, !42, i64 8584, !42, i64 8600, !42, i64 8616, !42, i64 8632, !37, i64 8648, !39, i64 8712, !39, i64 8714, !39, i64 8716, !39, i64 8718, !39, i64 8720, !39, i64 8722, !39, i64 8724, !39, i64 8726, !37, i64 8728, !39, i64 8896, !39, i64 8898, !39, i64 8900, !39, i64 8902, !39, i64 8904, !39, i64 8906, !39, i64 8908, !39, i64 8910, !40, i64 8912, !40, i64 8916, !39, i64 8920, !39, i64 8922, !39, i64 8924, !39, i64 8926, !39, i64 8928, !39, i64 8930, !39, i64 8932, !39, i64 8934, !39, i64 8936, !39, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !39, i64 8944, !39, i64 8946, !39, i64 8948, !39, i64 8950, !39, i64 8952, !39, i64 8954, !69, i64 8956, !69, i64 8960, !40, i64 8964, !39, i64 8968, !39, i64 8970, !69, i64 8972, !39, i64 8976, !39, i64 8978, !39, i64 8980, !39, i64 8982, !70, i64 8984, !37, i64 9760, !37, i64 9772, !39, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !40, i64 10896, !40, i64 10900, !69, i64 10904, !69, i64 10908, !40, i64 10912, !39, i64 10916, !39, i64 10918, !39, i64 10920, !39, i64 10922, !39, i64 10924, !39, i64 10926, !71, i64 10928}
!69 = !{!"float", !37, i64 0}
!70 = !{!"ColorBand", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!71 = !{!"WalkNavigation", !69, i64 0, !69, i64 4, !69, i64 8, !69, i64 12, !69, i64 16, !69, i64 20, !39, i64 24, !37, i64 26}
!72 = distinct !{!72, !45, !46}
!73 = !{!50, !36, i64 0}
!74 = !{!50, !36, i64 24}
!75 = !{!50, !37, i64 64}
!76 = !{!77, !36, i64 248}
!77 = !{!"bNodeTree", !78, i64 0, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 200, !36, i64 208, !37, i64 216, !42, i64 224, !42, i64 240, !40, i64 256, !40, i64 260, !40, i64 264, !40, i64 268, !40, i64 272, !39, i64 276, !39, i64 278, !40, i64 280, !40, i64 284, !39, i64 288, !39, i64 290, !40, i64 292, !79, i64 296, !42, i64 312, !42, i64 328, !36, i64 344, !80, i64 352, !40, i64 356, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !36, i64 408, !36, i64 416, !36, i64 424}
!78 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !39, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!79 = !{!"rctf", !69, i64 0, !69, i64 4, !69, i64 8, !69, i64 12}
!80 = !{!"bNodeInstanceKey", !40, i64 0}
!81 = !{!82, !36, i64 16}
!82 = !{!"bNodeLink", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !40, i64 48, !40, i64 52}
!83 = !{!82, !36, i64 24}
!84 = !{!82, !36, i64 32}
!85 = !{!82, !36, i64 40}
!86 = !{!87, !39, i64 172}
!87 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !40, i64 168, !39, i64 172, !39, i64 174, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !39, i64 184, !39, i64 186, !37, i64 188, !42, i64 200, !42, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !42, i64 264, !69, i64 280, !69, i64 284, !69, i64 288, !69, i64 292, !69, i64 296, !69, i64 300, !69, i64 304, !40, i64 308, !37, i64 312, !39, i64 376, !39, i64 378, !69, i64 380, !69, i64 384, !39, i64 388, !39, i64 390, !36, i64 392, !79, i64 400, !79, i64 416, !79, i64 432, !39, i64 448, !39, i64 450, !40, i64 452, !36, i64 456}
!88 = !{!87, !40, i64 168}
!89 = !{!90, !36, i64 296}
!90 = !{!"bNodeSocket", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !37, i64 96, !36, i64 160, !39, i64 168, !39, i64 170, !39, i64 172, !39, i64 174, !36, i64 176, !37, i64 184, !69, i64 248, !69, i64 252, !36, i64 256, !39, i64 264, !39, i64 266, !40, i64 268, !36, i64 272, !40, i64 280, !40, i64 284, !36, i64 288, !36, i64 296, !91, i64 304}
!91 = !{!"bNodeStack", !37, i64 0, !69, i64 16, !69, i64 20, !36, i64 24, !39, i64 32, !39, i64 34, !39, i64 36, !39, i64 38, !39, i64 40, !39, i64 42, !37, i64 44}
!92 = !{!82, !40, i64 48}
!93 = distinct !{!93, !45, !46}
!94 = !{!95, !36, i64 1552}
!95 = !{!"Main", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 1040, !39, i64 1042, !39, i64 1044, !39, i64 1046, !96, i64 1048, !37, i64 1056, !39, i64 1072, !36, i64 1080, !42, i64 1088, !42, i64 1104, !42, i64 1120, !42, i64 1136, !42, i64 1152, !42, i64 1168, !42, i64 1184, !42, i64 1200, !42, i64 1216, !42, i64 1232, !42, i64 1248, !42, i64 1264, !42, i64 1280, !42, i64 1296, !42, i64 1312, !42, i64 1328, !42, i64 1344, !42, i64 1360, !42, i64 1376, !42, i64 1392, !42, i64 1408, !42, i64 1424, !42, i64 1440, !42, i64 1456, !42, i64 1472, !42, i64 1488, !42, i64 1504, !42, i64 1520, !42, i64 1536, !42, i64 1552, !42, i64 1568, !42, i64 1584, !42, i64 1600, !42, i64 1616, !37, i64 1632, !36, i64 1888, !36, i64 1896}
!96 = !{!"long", !37, i64 0}
!97 = !{!98, !36, i64 136}
!98 = !{!"wmWindowManager", !78, i64 0, !36, i64 120, !36, i64 128, !42, i64 136, !40, i64 152, !39, i64 156, !39, i64 158, !42, i64 160, !42, i64 176, !99, i64 192, !42, i64 232, !42, i64 248, !42, i64 264, !42, i64 280, !36, i64 296, !36, i64 304, !36, i64 312, !42, i64 320, !36, i64 336, !37, i64 344, !37, i64 345}
!99 = !{!"ReportList", !42, i64 0, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !36, i64 32}
!100 = !{!101, !36, i64 24}
!101 = !{!"wmWindow", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !40, i64 128, !39, i64 132, !39, i64 134, !36, i64 136, !36, i64 144, !36, i64 152, !40, i64 160, !40, i64 164, !36, i64 168, !42, i64 176, !42, i64 192, !42, i64 208, !42, i64 224, !42, i64 240}
!102 = !{!103, !36, i64 184}
!103 = !{!"bScreen", !78, i64 0, !42, i64 120, !42, i64 136, !42, i64 152, !42, i64 168, !36, i64 184, !36, i64 192, !40, i64 200, !40, i64 204, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !39, i64 220, !39, i64 222, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !36, i64 232, !36, i64 240}
!104 = !{!105, !36, i64 24}
!105 = !{!"Scene", !78, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !42, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !39, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !106, i64 280, !114, i64 4264, !42, i64 4296, !42, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !39, i64 4376, !39, i64 4378, !40, i64 4380, !42, i64 4384, !115, i64 4400, !116, i64 4416, !119, i64 4600, !36, i64 4608, !120, i64 4616, !36, i64 4640, !96, i64 4648, !96, i64 4656, !108, i64 4664, !109, i64 4824, !121, i64 4888, !36, i64 4952}
!106 = !{!"RenderData", !107, i64 0, !36, i64 248, !36, i64 256, !110, i64 264, !111, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !69, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !39, i64 432, !39, i64 434, !69, i64 436, !69, i64 440, !69, i64 444, !69, i64 448, !69, i64 452, !39, i64 456, !39, i64 458, !39, i64 460, !39, i64 462, !39, i64 464, !39, i64 466, !40, i64 468, !39, i64 472, !39, i64 474, !39, i64 476, !39, i64 478, !39, i64 480, !39, i64 482, !40, i64 484, !40, i64 488, !39, i64 492, !39, i64 494, !40, i64 496, !40, i64 500, !39, i64 504, !39, i64 506, !39, i64 508, !39, i64 510, !39, i64 512, !37, i64 514, !37, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !39, i64 528, !39, i64 530, !39, i64 532, !39, i64 534, !39, i64 536, !39, i64 538, !39, i64 540, !39, i64 542, !79, i64 544, !79, i64 560, !112, i64 576, !42, i64 592, !39, i64 608, !39, i64 610, !69, i64 612, !69, i64 616, !69, i64 620, !69, i64 624, !40, i64 628, !69, i64 632, !69, i64 636, !69, i64 640, !69, i64 644, !39, i64 648, !39, i64 650, !39, i64 652, !39, i64 654, !39, i64 656, !39, i64 658, !69, i64 660, !69, i64 664, !39, i64 668, !39, i64 670, !69, i64 672, !69, i64 676, !37, i64 680, !40, i64 1704, !39, i64 1708, !39, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !40, i64 2520, !39, i64 2524, !39, i64 2526, !69, i64 2528, !69, i64 2532, !39, i64 2536, !39, i64 2538, !69, i64 2540, !39, i64 2544, !39, i64 2546, !40, i64 2548, !39, i64 2552, !39, i64 2554, !39, i64 2556, !39, i64 2558, !69, i64 2560, !69, i64 2564, !36, i64 2568, !40, i64 2576, !69, i64 2580, !37, i64 2584, !113, i64 2616, !40, i64 3976, !40, i64 3980}
!107 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !39, i64 8, !39, i64 10, !69, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !108, i64 24, !109, i64 184}
!108 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 72, !69, i64 136, !69, i64 140, !36, i64 144, !36, i64 152}
!109 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!110 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !39, i64 48, !39, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!111 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !69, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !36, i64 64}
!112 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!113 = !{!"BakeData", !107, i64 0, !37, i64 248, !39, i64 1272, !39, i64 1274, !39, i64 1276, !39, i64 1278, !69, i64 1280, !69, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!114 = !{!"AudioData", !40, i64 0, !69, i64 4, !69, i64 8, !69, i64 12, !40, i64 16, !39, i64 20, !39, i64 22, !69, i64 24, !69, i64 28}
!115 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!116 = !{!"GameData", !115, i64 0, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !37, i64 34, !117, i64 40, !39, i64 64, !39, i64 66, !69, i64 68, !118, i64 72, !69, i64 128, !69, i64 132, !40, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !69, i64 164, !69, i64 168, !69, i64 172, !69, i64 176, !69, i64 180}
!117 = !{!"GameDome", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !69, i64 8, !69, i64 12, !36, i64 16}
!118 = !{!"RecastData", !69, i64 0, !69, i64 4, !69, i64 8, !69, i64 12, !69, i64 16, !69, i64 20, !69, i64 24, !69, i64 28, !69, i64 32, !69, i64 36, !40, i64 40, !69, i64 44, !69, i64 48, !39, i64 52, !39, i64 54}
!119 = !{!"UnitSettings", !69, i64 0, !37, i64 4, !37, i64 5, !39, i64 6}
!120 = !{!"PhysicsSettings", !37, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!121 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!122 = !{!105, !40, i64 796}
!123 = !{!105, !40, i64 684}
!124 = !{!125, !40, i64 0}
!125 = !{!"RenderInfo", !40, i64 0, !40, i64 4, !37, i64 8}
!126 = !{!105, !40, i64 688}
!127 = !{!125, !40, i64 4}
!128 = distinct !{!128, !45, !46}
!129 = !{!130, !39, i64 6}
!130 = !{!"FileGlobal", !37, i64 0, !39, i64 4, !39, i64 6, !39, i64 8, !39, i64 10, !39, i64 12, !39, i64 14, !36, i64 16, !36, i64 24, !40, i64 32, !40, i64 36, !96, i64 40, !37, i64 48, !37, i64 64}
!131 = !{!130, !36, i64 16}
!132 = !{!130, !36, i64 24}
!133 = !{!65, !39, i64 2088}
!134 = !{!130, !39, i64 12}
!135 = !{!65, !39, i64 2086}
!136 = !{!130, !39, i64 14}
!137 = !{!130, !40, i64 32}
!138 = !{!65, !40, i64 2096}
!139 = !{!130, !40, i64 36}
!140 = !{!130, !39, i64 4}
!141 = !{!130, !39, i64 8}
!142 = !{!130, !39, i64 10}
!143 = !{!130, !96, i64 40}
!144 = distinct !{!144, !45, !46}
!145 = distinct !{!145, !45, !46}
!146 = distinct !{!146, !45, !46}
!147 = !{!103, !36, i64 112}
!148 = distinct !{!148, !45, !46}
!149 = distinct !{!149, !45, !46}
!150 = distinct !{!150, !45, !46}
!151 = distinct !{!151, !45, !46}
!152 = !{!153, !37, i64 72}
!153 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !112, i64 56, !37, i64 72, !37, i64 73, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !39, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !42, i64 96, !42, i64 112, !42, i64 128, !42, i64 144}
!154 = distinct !{!154, !45, !46}
!155 = distinct !{!155, !45, !46}
!156 = !{!157, !36, i64 184}
!157 = !{!"uiList", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !40, i64 88, !40, i64 92, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !37, i64 112, !40, i64 176, !40, i64 180, !36, i64 184, !36, i64 192}
!158 = distinct !{!158, !45, !46}
!159 = distinct !{!159, !45, !46}
!160 = !{!161, !40, i64 32}
!161 = !{!"SpaceLink", !36, i64 0, !36, i64 8, !42, i64 16, !40, i64 32, !69, i64 36, !37, i64 40}
!162 = distinct !{!162, !45, !46}
!163 = distinct !{!163, !45, !46}
!164 = !{!165, !36, i64 152}
!165 = !{!"View3D", !36, i64 0, !36, i64 8, !42, i64 16, !40, i64 32, !69, i64 36, !37, i64 40, !37, i64 56, !69, i64 72, !69, i64 76, !37, i64 80, !37, i64 81, !40, i64 84, !40, i64 88, !39, i64 92, !39, i64 94, !36, i64 96, !36, i64 104, !79, i64 112, !42, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !40, i64 224, !40, i64 228, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !39, i64 240, !39, i64 242, !69, i64 244, !69, i64 248, !69, i64 252, !69, i64 256, !37, i64 260, !37, i64 272, !39, i64 284, !39, i64 286, !39, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !42, i64 296, !42, i64 312, !42, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!166 = !{i64 0, i64 8, !43, i64 8, i64 8, !43}
!167 = !{!168, !36, i64 216}
!168 = !{!"SpaceIpo", !36, i64 0, !36, i64 8, !42, i64 16, !40, i64 32, !69, i64 36, !37, i64 40, !169, i64 56, !36, i64 216, !42, i64 224, !39, i64 240, !39, i64 242, !40, i64 244, !69, i64 248, !40, i64 252}
!169 = !{!"View2D", !79, i64 0, !79, i64 16, !112, i64 32, !112, i64 48, !112, i64 64, !37, i64 80, !37, i64 88, !69, i64 96, !69, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !36, i64 128, !40, i64 136, !40, i64 140, !36, i64 144, !36, i64 152}
!170 = !{!171, !36, i64 40}
!171 = !{!"SpaceFile", !36, i64 0, !36, i64 8, !42, i64 16, !40, i64 32, !40, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !39, i64 96, !39, i64 98, !39, i64 100, !39, i64 102}
!172 = !{!173, !36, i64 232}
!173 = !{!"SpaceOops", !36, i64 0, !36, i64 8, !42, i64 16, !40, i64 32, !69, i64 36, !37, i64 40, !169, i64 56, !42, i64 216, !36, i64 232, !37, i64 240, !174, i64 272, !39, i64 288, !39, i64 290, !39, i64 292, !39, i64 294, !36, i64 296}
!174 = !{!"TreeStoreElem", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !36, i64 8}
!175 = !{!176, !40, i64 4}
!176 = !{!"TreeStore", !40, i64 0, !40, i64 4, !36, i64 8}
!177 = !{!176, !40, i64 0}
!178 = !{!176, !36, i64 8}
!179 = !{!180, !36, i64 88}
!180 = !{!"SpaceImage", !36, i64 0, !36, i64 8, !42, i64 16, !40, i64 32, !40, i64 36, !36, i64 40, !181, i64 48, !36, i64 88, !182, i64 96, !183, i64 5360, !36, i64 10520, !37, i64 10528, !69, i64 10536, !69, i64 10540, !69, i64 10544, !69, i64 10548, !69, i64 10552, !37, i64 10556, !37, i64 10557, !39, i64 10558, !39, i64 10560, !39, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !184, i64 10568}
!181 = !{!"ImageUser", !36, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !39, i64 28, !39, i64 30, !39, i64 32, !39, i64 34, !40, i64 36}
!182 = !{!"Scopes", !40, i64 0, !40, i64 4, !40, i64 8, !69, i64 12, !40, i64 16, !69, i64 20, !69, i64 24, !40, i64 28, !69, i64 32, !40, i64 36, !37, i64 40, !183, i64 64, !36, i64 5224, !36, i64 5232, !36, i64 5240, !36, i64 5248, !40, i64 5256, !40, i64 5260}
!183 = !{!"Histogram", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !69, i64 5128, !69, i64 5132, !39, i64 5136, !39, i64 5138, !40, i64 5140, !37, i64 5144}
!184 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!185 = !{!186, !39, i64 0}
!186 = !{!"CurveMap", !39, i64 0, !39, i64 2, !69, i64 4, !69, i64 8, !69, i64 12, !37, i64 16, !37, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !37, i64 56, !37, i64 64}
!187 = !{!186, !36, i64 32}
!188 = distinct !{!188, !45, !46}
!189 = !{!190, !36, i64 56}
!190 = !{!"SpaceScript", !36, i64 0, !36, i64 8, !42, i64 16, !40, i64 32, !69, i64 36, !36, i64 40, !39, i64 48, !39, i64 50, !40, i64 52, !36, i64 56}
!191 = !{!192, !36, i64 64}
!192 = !{!"SpaceNla", !36, i64 0, !36, i64 8, !42, i64 16, !40, i64 32, !69, i64 36, !37, i64 40, !39, i64 56, !39, i64 58, !40, i64 60, !36, i64 64, !169, i64 72}
!193 = distinct !{!193, !45, !46}
!194 = !{!195, !40, i64 20}
!195 = !{!"ConsoleLine", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !36, i64 24, !40, i64 32, !40, i64 36}
!196 = !{!195, !36, i64 24}
!197 = distinct !{!197, !45, !46}
!198 = distinct !{!198, !45, !46}
!199 = !{!200, !40, i64 100}
!200 = !{!"MovieClip", !78, i64 0, !36, i64 120, !37, i64 128, !40, i64 1152, !40, i64 1156, !37, i64 1160, !69, i64 1168, !69, i64 1172, !36, i64 1176, !36, i64 1184, !36, i64 1192, !201, i64 1200, !36, i64 1528, !207, i64 1536, !40, i64 2312, !40, i64 2316, !40, i64 2320, !40, i64 2324, !121, i64 2328}
!201 = !{!"MovieTracking", !202, i64 0, !203, i64 72, !42, i64 128, !42, i64 144, !204, i64 160, !205, i64 184, !36, i64 232, !36, i64 240, !42, i64 248, !40, i64 264, !40, i64 268, !36, i64 272, !206, i64 280}
!202 = !{!"MovieTrackingSettings", !40, i64 0, !39, i64 4, !39, i64 6, !69, i64 8, !39, i64 12, !39, i64 14, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !69, i64 24, !39, i64 28, !39, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !39, i64 44, !39, i64 46, !69, i64 48, !40, i64 52, !40, i64 56, !69, i64 60, !69, i64 64, !40, i64 68}
!203 = !{!"MovieTrackingCamera", !36, i64 0, !39, i64 8, !39, i64 10, !69, i64 12, !69, i64 16, !69, i64 20, !39, i64 24, !39, i64 26, !37, i64 28, !69, i64 36, !69, i64 40, !69, i64 44, !69, i64 48, !69, i64 52}
!204 = !{!"MovieTrackingReconstruction", !40, i64 0, !69, i64 4, !40, i64 8, !40, i64 12, !36, i64 16}
!205 = !{!"MovieTrackingStabilization", !40, i64 0, !40, i64 4, !40, i64 8, !69, i64 12, !36, i64 16, !69, i64 24, !69, i64 28, !69, i64 32, !40, i64 36, !40, i64 40, !69, i64 44}
!206 = !{!"MovieTrackingDopesheet", !40, i64 0, !39, i64 4, !39, i64 6, !42, i64 8, !42, i64 24, !40, i64 40, !40, i64 44}
!207 = !{!"MovieClipProxy", !37, i64 0, !39, i64 768, !39, i64 770, !39, i64 772, !39, i64 774}
!208 = !{!200, !36, i64 112}
!209 = !{!200, !36, i64 120}
!210 = !{!211, !36, i64 128}
!211 = !{!"MovieTrackingTrack", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !40, i64 120, !40, i64 124, !36, i64 128, !37, i64 136, !69, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !37, i64 164, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !40, i64 184, !69, i64 188, !36, i64 192, !69, i64 200, !69, i64 204}
!212 = !{!211, !40, i64 120}
!213 = distinct !{!213, !45, !46}
!214 = !{!215, !40, i64 88}
!215 = !{!"MovieTrackingPlaneTrack", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !40, i64 88, !40, i64 92, !36, i64 96, !40, i64 104, !40, i64 108, !36, i64 112, !69, i64 120, !40, i64 124}
!216 = !{!215, !36, i64 80}
!217 = !{!215, !40, i64 104}
!218 = !{!215, !36, i64 96}
!219 = distinct !{!219, !45, !46}
!220 = !{!204, !40, i64 12}
!221 = !{!204, !36, i64 16}
!222 = distinct !{!222, !45, !46}
!223 = distinct !{!223, !45, !46}
!224 = !{!225, !40, i64 100}
!225 = !{!"Mask", !78, i64 0, !36, i64 120, !42, i64 128, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164}
!226 = !{!225, !36, i64 120}
!227 = distinct !{!227, !45, !46}
!228 = distinct !{!228, !45, !46}
!229 = !{!230, !36, i64 216}
!230 = !{!"MaskSpline", !36, i64 0, !36, i64 8, !39, i64 16, !37, i64 18, !37, i64 19, !40, i64 20, !36, i64 24, !231, i64 32, !36, i64 216}
!231 = !{!"MaskParent", !40, i64 0, !40, i64 4, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 144, !37, i64 152}
!232 = !{!230, !40, i64 20}
!233 = !{!230, !36, i64 24}
!234 = !{!235, !40, i64 76}
!235 = !{!"MaskSplinePoint", !236, i64 0, !40, i64 72, !40, i64 76, !36, i64 80, !231, i64 88}
!236 = !{!"BezTriple", !37, i64 0, !69, i64 36, !69, i64 40, !69, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !69, i64 56, !69, i64 60, !69, i64 64, !37, i64 68}
!237 = !{!235, !36, i64 80}
!238 = distinct !{!238, !45, !46}
!239 = !{!240, !40, i64 24}
!240 = !{!"MaskLayerShape", !36, i64 0, !36, i64 8, !36, i64 16, !40, i64 24, !40, i64 28, !37, i64 32, !37, i64 33}
!241 = !{!240, !36, i64 16}
!242 = distinct !{!242, !45, !46}
!243 = distinct !{!243, !45, !46}
!244 = !{!105, !36, i64 112}
!245 = !{!105, !36, i64 120}
!246 = distinct !{!246, !45, !46}
!247 = !{!248, !36, i64 96}
!248 = !{!"KS_Path", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !40, i64 88, !39, i64 92, !39, i64 94, !36, i64 96, !40, i64 104, !39, i64 108, !39, i64 110}
!249 = distinct !{!249, !45, !46}
!250 = distinct !{!250, !45, !46}
!251 = !{!105, !36, i64 264}
!252 = !{!253, !36, i64 0}
!253 = !{!"ToolSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !69, i64 32, !69, i64 36, !69, i64 40, !39, i64 44, !39, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !69, i64 52, !39, i64 56, !37, i64 58, !37, i64 59, !254, i64 64, !256, i64 168, !69, i64 336, !69, i64 340, !39, i64 344, !39, i64 346, !37, i64 348, !37, i64 349, !39, i64 350, !69, i64 352, !69, i64 356, !69, i64 360, !69, i64 364, !69, i64 368, !69, i64 372, !69, i64 376, !69, i64 380, !69, i64 384, !69, i64 388, !39, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !36, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !39, i64 434, !39, i64 436, !39, i64 438, !39, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !40, i64 448, !40, i64 452, !40, i64 456, !40, i64 460, !39, i64 464, !39, i64 466, !40, i64 468, !69, i64 472, !69, i64 476, !257, i64 480, !258, i64 608}
!254 = !{!"ImagePaintSettings", !255, i64 0, !39, i64 40, !39, i64 42, !39, i64 44, !39, i64 46, !37, i64 48, !40, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !69, i64 100}
!255 = !{!"Paint", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !40, i64 28, !40, i64 32, !40, i64 36}
!256 = !{!"ParticleEditSettings", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !37, i64 8, !36, i64 120, !69, i64 128, !69, i64 132, !40, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !36, i64 152, !36, i64 160}
!257 = !{!"UnifiedPaintSettings", !40, i64 0, !69, i64 4, !69, i64 8, !69, i64 12, !37, i64 16, !37, i64 28, !40, i64 40, !37, i64 44, !69, i64 52, !40, i64 56, !40, i64 60, !37, i64 64, !37, i64 65, !69, i64 72, !37, i64 76, !40, i64 84, !69, i64 88, !37, i64 92, !37, i64 100, !40, i64 108, !36, i64 112, !69, i64 120, !40, i64 124}
!258 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !69, i64 4, !69, i64 8, !69, i64 12, !69, i64 16, !37, i64 20, !37, i64 21, !69, i64 24, !69, i64 28, !69, i64 32, !69, i64 36}
!259 = !{!253, !36, i64 8}
!260 = !{!253, !36, i64 16}
!261 = !{!253, !36, i64 24}
!262 = !{!105, !36, i64 256}
!263 = !{!264, !40, i64 24}
!264 = !{!"SeqIterator", !36, i64 0, !40, i64 8, !40, i64 12, !36, i64 16, !40, i64 24}
!265 = !{!264, !36, i64 16}
!266 = !{!267, !36, i64 168}
!267 = !{!"Sequence", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !40, i64 116, !40, i64 120, !40, i64 124, !40, i64 128, !40, i64 132, !40, i64 136, !40, i64 140, !69, i64 144, !69, i64 148, !69, i64 152, !39, i64 156, !39, i64 158, !40, i64 160, !40, i64 164, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !69, i64 224, !69, i64 228, !36, i64 232, !36, i64 240, !36, i64 248, !42, i64 256, !36, i64 272, !36, i64 280, !69, i64 288, !69, i64 292, !69, i64 296, !69, i64 300, !36, i64 304, !40, i64 312, !40, i64 316, !40, i64 320, !69, i64 324, !40, i64 328, !37, i64 332, !37, i64 333, !42, i64 336}
!268 = !{!269, !40, i64 20}
!269 = !{!"Strip", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !36, i64 32, !37, i64 40, !36, i64 808, !36, i64 816, !36, i64 824, !36, i64 832, !121, i64 840}
!270 = distinct !{!270, !45, !46}
!271 = !{!267, !36, i64 304}
!272 = !{!267, !40, i64 100}
!273 = !{!267, !40, i64 96}
!274 = !{!269, !36, i64 816}
!275 = !{!269, !36, i64 824}
!276 = !{!269, !36, i64 808}
!277 = !{!269, !36, i64 32}
!278 = !{!279, !40, i64 16}
!279 = !{!"SequenceModifierData", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !37, i64 24, !40, i64 88, !40, i64 92, !36, i64 96, !36, i64 104}
!280 = distinct !{!280, !45, !46}
!281 = distinct !{!281, !45, !46}
!282 = distinct !{!282, !45, !46}
!283 = !{!105, !36, i64 528}
!284 = !{!285, !36, i64 0}
!285 = !{!"AviCodecData", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !37, i64 56}
!286 = !{!285, !40, i64 16}
!287 = !{!285, !36, i64 8}
!288 = !{!285, !40, i64 20}
!289 = !{!105, !36, i64 536}
!290 = !{!291, !36, i64 0}
!291 = !{!"QuicktimeCodecData", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !37, i64 24}
!292 = !{!291, !40, i64 16}
!293 = !{!105, !36, i64 672}
!294 = distinct !{!294, !45, !46}
!295 = distinct !{!295, !45, !46}
!296 = distinct !{!296, !45, !46}
!297 = distinct !{!297, !45, !46}
!298 = distinct !{!298, !45, !46}
!299 = !{!105, !36, i64 248}
!300 = !{!108, !36, i64 144}
!301 = !{!105, !36, i64 4952}
!302 = !{!303, !36, i64 0}
!303 = !{!"RigidBodyWorld", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !40, i64 32, !69, i64 36, !36, i64 40, !42, i64 48, !40, i64 64, !39, i64 68, !39, i64 70, !40, i64 72, !69, i64 76, !36, i64 80}
!304 = distinct !{!304, !45, !46}
!305 = !{!306, !40, i64 100}
!306 = !{!"Curve", !78, i64 0, !36, i64 120, !36, i64 128, !42, i64 136, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !39, i64 244, !39, i64 246, !39, i64 248, !39, i64 250, !69, i64 252, !69, i64 256, !40, i64 260, !39, i64 264, !39, i64 266, !40, i64 268, !69, i64 272, !69, i64 276, !69, i64 280, !39, i64 284, !39, i64 286, !39, i64 288, !39, i64 290, !40, i64 292, !40, i64 296, !37, i64 300, !39, i64 304, !37, i64 306, !37, i64 307, !69, i64 308, !69, i64 312, !69, i64 316, !69, i64 320, !69, i64 324, !69, i64 328, !69, i64 332, !69, i64 336, !69, i64 340, !69, i64 344, !40, i64 348, !40, i64 352, !40, i64 356, !40, i64 360, !40, i64 364, !36, i64 368, !36, i64 376, !37, i64 384, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !36, i64 480, !40, i64 488, !40, i64 492, !36, i64 496, !307, i64 504, !69, i64 512, !69, i64 516, !69, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!307 = !{!"CharInfo", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !39, i64 6}
!308 = !{!306, !39, i64 266}
!309 = !{!306, !36, i64 200}
!310 = !{!306, !36, i64 112}
!311 = !{!306, !36, i64 120}
!312 = !{!306, !36, i64 448}
!313 = !{!306, !40, i64 364}
!314 = !{!306, !36, i64 368}
!315 = !{!306, !40, i64 360}
!316 = !{!306, !36, i64 496}
!317 = !{!306, !40, i64 488}
!318 = !{!306, !36, i64 480}
!319 = distinct !{!319, !45, !46}
!320 = !{!321, !39, i64 16}
!321 = !{!"Nurb", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !40, i64 24, !40, i64 28, !37, i64 32, !39, i64 36, !39, i64 38, !39, i64 40, !39, i64 42, !39, i64 44, !39, i64 46, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !39, i64 80, !39, i64 82, !40, i64 84}
!322 = !{!321, !40, i64 24}
!323 = !{!321, !36, i64 72}
!324 = !{!321, !40, i64 28}
!325 = !{!321, !36, i64 64}
!326 = !{!321, !36, i64 48}
!327 = !{!321, !39, i64 40}
!328 = !{!321, !39, i64 44}
!329 = !{!321, !36, i64 56}
!330 = !{!321, !39, i64 42}
!331 = !{!321, !39, i64 46}
!332 = distinct !{!332, !45, !46}
!333 = distinct !{!333, !45, !46}
!334 = !{!335, !40, i64 100}
!335 = !{!"MetaBall", !78, i64 0, !36, i64 120, !42, i64 128, !42, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 185, !39, i64 186, !39, i64 188, !39, i64 190, !37, i64 192, !37, i64 204, !37, i64 216, !69, i64 228, !69, i64 232, !69, i64 236, !36, i64 240}
!336 = !{!335, !36, i64 112}
!337 = !{!335, !39, i64 186}
!338 = !{!335, !36, i64 176}
!339 = !{!335, !36, i64 120}
!340 = distinct !{!340, !45, !46}
!341 = distinct !{!341, !45, !46}
!342 = !{!343, !40, i64 100}
!343 = !{!"Image", !78, i64 0, !37, i64 120, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !37, i64 1176, !39, i64 1240, !39, i64 1242, !39, i64 1244, !39, i64 1246, !39, i64 1248, !39, i64 1250, !40, i64 1252, !39, i64 1256, !39, i64 1258, !39, i64 1260, !39, i64 1262, !39, i64 1264, !39, i64 1266, !40, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !69, i64 1296, !40, i64 1300, !39, i64 1304, !39, i64 1306, !40, i64 1308, !40, i64 1312, !37, i64 1316, !37, i64 1317, !39, i64 1318, !37, i64 1320, !69, i64 1336, !69, i64 1340, !121, i64 1344, !37, i64 1408, !37, i64 1409, !37, i64 1416}
!344 = !{!343, !36, i64 112}
!345 = !{!343, !36, i64 1280}
!346 = !{!347, !40, i64 0}
!347 = !{!"PackedFile", !40, i64 0, !40, i64 4, !36, i64 8}
!348 = !{!347, !36, i64 8}
!349 = !{!343, !36, i64 1288}
!350 = distinct !{!350, !45, !46}
!351 = !{!352, !40, i64 100}
!352 = !{!"Camera", !78, i64 0, !36, i64 120, !37, i64 128, !37, i64 129, !39, i64 130, !69, i64 132, !69, i64 136, !69, i64 140, !69, i64 144, !69, i64 148, !69, i64 152, !69, i64 156, !69, i64 160, !69, i64 164, !69, i64 168, !69, i64 172, !36, i64 176, !36, i64 184, !37, i64 192, !37, i64 193}
!353 = !{!352, !36, i64 112}
!354 = !{!352, !36, i64 120}
!355 = distinct !{!355, !45, !46}
!356 = !{!357, !40, i64 100}
!357 = !{!"Lamp", !78, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !40, i64 132, !39, i64 136, !39, i64 138, !69, i64 140, !69, i64 144, !69, i64 148, !69, i64 152, !69, i64 156, !69, i64 160, !69, i64 164, !69, i64 168, !69, i64 172, !69, i64 176, !69, i64 180, !69, i64 184, !69, i64 188, !69, i64 192, !69, i64 196, !36, i64 200, !39, i64 208, !39, i64 210, !69, i64 212, !69, i64 216, !69, i64 220, !69, i64 224, !69, i64 228, !69, i64 232, !69, i64 236, !39, i64 240, !39, i64 242, !39, i64 244, !39, i64 246, !37, i64 248, !37, i64 249, !39, i64 250, !39, i64 252, !39, i64 254, !39, i64 256, !39, i64 258, !69, i64 260, !69, i64 264, !69, i64 268, !69, i64 272, !39, i64 276, !39, i64 278, !39, i64 280, !39, i64 282, !39, i64 284, !39, i64 286, !69, i64 288, !69, i64 292, !69, i64 296, !69, i64 300, !69, i64 304, !69, i64 308, !69, i64 312, !69, i64 316, !69, i64 320, !69, i64 324, !69, i64 328, !69, i64 332, !69, i64 336, !39, i64 340, !37, i64 342, !36, i64 344, !37, i64 352, !39, i64 496, !39, i64 498, !37, i64 500, !36, i64 504, !36, i64 512}
!358 = !{!357, !36, i64 112}
!359 = !{!357, !36, i64 120}
!360 = distinct !{!360, !45, !46}
!361 = !{!357, !36, i64 200}
!362 = !{!357, !36, i64 512}
!363 = !{!357, !36, i64 504}
!364 = distinct !{!364, !45, !46}
!365 = !{!366, !40, i64 100}
!366 = !{!"Lattice", !78, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !39, i64 132, !39, i64 134, !39, i64 136, !39, i64 138, !39, i64 140, !39, i64 142, !37, i64 144, !37, i64 145, !37, i64 146, !37, i64 147, !40, i64 148, !69, i64 152, !69, i64 156, !69, i64 160, !69, i64 164, !69, i64 168, !69, i64 172, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !36, i64 272}
!367 = !{!366, !36, i64 112}
!368 = !{!366, !36, i64 120}
!369 = !{!366, !39, i64 128}
!370 = !{!366, !39, i64 130}
!371 = !{!366, !39, i64 132}
!372 = !{!366, !36, i64 176}
!373 = !{!366, !36, i64 200}
!374 = !{!375, !36, i64 0}
!375 = !{!"MDeformVert", !36, i64 0, !40, i64 8, !40, i64 12}
!376 = !{!375, !40, i64 8}
!377 = distinct !{!377, !45, !46}
!378 = distinct !{!378, !45, !46}
!379 = !{!380, !40, i64 100}
!380 = !{!"VFont", !78, i64 0, !37, i64 120, !36, i64 1144, !36, i64 1152, !36, i64 1160}
!381 = !{!380, !36, i64 112}
!382 = !{!380, !36, i64 1152}
!383 = distinct !{!383, !45, !46}
!384 = !{!385, !40, i64 100}
!385 = !{!"Key", !78, i64 0, !36, i64 120, !36, i64 128, !37, i64 136, !40, i64 168, !40, i64 172, !42, i64 176, !36, i64 192, !36, i64 200, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !69, i64 216, !40, i64 220}
!386 = !{!385, !36, i64 112}
!387 = !{!385, !36, i64 120}
!388 = !{!389, !36, i64 40}
!389 = !{!"KeyBlock", !36, i64 0, !36, i64 8, !69, i64 16, !69, i64 20, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !40, i64 32, !40, i64 36, !36, i64 40, !37, i64 48, !37, i64 112, !69, i64 176, !69, i64 180}
!390 = !{!389, !40, i64 32}
!391 = !{!385, !40, i64 168}
!392 = distinct !{!392, !45, !46}
!393 = distinct !{!393, !45, !46}
!394 = !{!395, !40, i64 100}
!395 = !{!"World", !78, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !39, i64 132, !39, i64 134, !69, i64 136, !69, i64 140, !69, i64 144, !69, i64 148, !69, i64 152, !69, i64 156, !69, i64 160, !69, i64 164, !69, i64 168, !69, i64 172, !69, i64 176, !69, i64 180, !69, i64 184, !69, i64 188, !69, i64 192, !69, i64 196, !39, i64 200, !39, i64 202, !39, i64 204, !39, i64 206, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !69, i64 216, !69, i64 220, !69, i64 224, !69, i64 228, !69, i64 232, !69, i64 236, !69, i64 240, !69, i64 244, !69, i64 248, !69, i64 252, !69, i64 256, !69, i64 260, !39, i64 264, !39, i64 266, !39, i64 268, !39, i64 270, !69, i64 272, !69, i64 276, !69, i64 280, !69, i64 284, !39, i64 288, !39, i64 290, !39, i64 292, !39, i64 294, !69, i64 296, !69, i64 300, !69, i64 304, !69, i64 308, !69, i64 312, !69, i64 316, !69, i64 320, !39, i64 324, !39, i64 326, !39, i64 328, !39, i64 330, !39, i64 332, !39, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !39, i64 504, !39, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!396 = !{!395, !36, i64 112}
!397 = !{!395, !36, i64 120}
!398 = distinct !{!398, !45, !46}
!399 = !{!395, !36, i64 520}
!400 = !{!395, !36, i64 512}
!401 = distinct !{!401, !45, !46}
!402 = !{!403, !40, i64 128}
!403 = !{!"Text", !78, i64 0, !36, i64 120, !40, i64 128, !40, i64 132, !42, i64 136, !36, i64 152, !36, i64 160, !40, i64 168, !40, i64 172, !36, i64 176, !40, i64 184, !40, i64 188, !36, i64 192, !404, i64 200}
!404 = !{!"double", !37, i64 0}
!405 = !{!403, !36, i64 120}
!406 = !{!403, !36, i64 112}
!407 = distinct !{!407, !45, !46}
!408 = !{!409, !40, i64 32}
!409 = !{!"TextLine", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !40, i64 32, !40, i64 36}
!410 = !{!409, !36, i64 16}
!411 = distinct !{!411, !45, !46}
!412 = distinct !{!412, !45, !46}
!413 = !{!414, !40, i64 100}
!414 = !{!"Speaker", !78, i64 0, !36, i64 120, !36, i64 128, !69, i64 136, !69, i64 140, !69, i64 144, !69, i64 148, !69, i64 152, !69, i64 156, !69, i64 160, !69, i64 164, !69, i64 168, !69, i64 172, !39, i64 176, !37, i64 178}
!415 = !{!414, !36, i64 112}
!416 = !{!414, !36, i64 120}
!417 = distinct !{!417, !45, !46}
!418 = !{!419, !40, i64 100}
!419 = !{!"bSound", !78, i64 0, !37, i64 120, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !69, i64 1176, !69, i64 1180, !69, i64 1184, !69, i64 1188, !69, i64 1192, !69, i64 1196, !40, i64 1200, !40, i64 1204, !36, i64 1208, !36, i64 1216, !36, i64 1224}
!420 = !{!419, !36, i64 112}
!421 = !{!419, !36, i64 1144}
!422 = distinct !{!422, !45, !46}
!423 = !{!424, !40, i64 100}
!424 = !{!"Group", !78, i64 0, !42, i64 120, !40, i64 136, !37, i64 140}
!425 = !{!424, !36, i64 112}
!426 = distinct !{!426, !45, !46}
!427 = distinct !{!427, !45, !46}
!428 = !{!429, !40, i64 100}
!429 = !{!"bArmature", !78, i64 0, !36, i64 120, !42, i64 128, !42, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !39, i64 208, !39, i64 210, !40, i64 212, !40, i64 216, !40, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252}
!430 = !{!429, !36, i64 112}
!431 = !{!429, !36, i64 120}
!432 = distinct !{!432, !45, !46}
!433 = distinct !{!433, !45, !46}
!434 = !{!435, !40, i64 100}
!435 = !{!"bAction", !78, i64 0, !42, i64 120, !42, i64 136, !42, i64 152, !42, i64 168, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196}
!436 = !{!435, !36, i64 112}
!437 = distinct !{!437, !45, !46}
!438 = distinct !{!438, !45, !46}
!439 = distinct !{!439, !45, !46}
!440 = !{!441, !40, i64 100}
!441 = !{!"Object", !78, i64 0, !36, i64 120, !36, i64 128, !39, i64 136, !39, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !442, i64 312, !36, i64 360, !42, i64 368, !42, i64 384, !42, i64 400, !42, i64 416, !40, i64 432, !40, i64 436, !36, i64 440, !36, i64 448, !40, i64 456, !40, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !69, i64 616, !69, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !40, i64 944, !39, i64 948, !39, i64 950, !39, i64 952, !39, i64 954, !39, i64 956, !39, i64 958, !39, i64 960, !39, i64 962, !39, i64 964, !37, i64 966, !37, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !69, i64 988, !69, i64 992, !69, i64 996, !69, i64 1000, !69, i64 1004, !69, i64 1008, !69, i64 1012, !69, i64 1016, !69, i64 1020, !69, i64 1024, !69, i64 1028, !69, i64 1032, !39, i64 1036, !39, i64 1038, !39, i64 1040, !37, i64 1042, !37, i64 1043, !39, i64 1044, !37, i64 1046, !37, i64 1047, !69, i64 1048, !69, i64 1052, !42, i64 1056, !42, i64 1072, !42, i64 1088, !42, i64 1104, !69, i64 1120, !39, i64 1124, !39, i64 1126, !37, i64 1128, !40, i64 1144, !40, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !39, i64 1162, !37, i64 1164, !42, i64 1176, !42, i64 1192, !42, i64 1208, !42, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !39, i64 1266, !69, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !96, i64 1304, !96, i64 1312, !40, i64 1320, !40, i64 1324, !42, i64 1328, !42, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !42, i64 1400, !36, i64 1416}
!442 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!443 = !{!441, !36, i64 112}
!444 = !{!441, !36, i64 120}
!445 = !{!441, !40, i64 456}
!446 = !{!441, !36, i64 440}
!447 = !{!441, !36, i64 448}
!448 = !{!449, !36, i64 88}
!449 = !{!"bProperty", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 80, !39, i64 82, !40, i64 84, !36, i64 88}
!450 = distinct !{!450, !45, !46}
!451 = !{!452, !39, i64 26}
!452 = !{!"bSensor", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !37, i64 32, !36, i64 96, !36, i64 104, !36, i64 112, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126}
!453 = !{!452, !36, i64 104}
!454 = !{!452, !39, i64 16}
!455 = !{!452, !36, i64 96}
!456 = distinct !{!456, !45, !46}
!457 = !{!458, !39, i64 30}
!458 = !{!"bController", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !39, i64 34, !39, i64 36, !39, i64 38, !37, i64 40, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !39, i64 130, !40, i64 132}
!459 = !{!458, !36, i64 112}
!460 = !{!458, !39, i64 24}
!461 = !{!458, !36, i64 104}
!462 = distinct !{!462, !45, !46}
!463 = !{!464, !39, i64 24}
!464 = !{!"bActuator", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !37, i64 32, !36, i64 96, !36, i64 104}
!465 = !{!464, !36, i64 96}
!466 = distinct !{!466, !45, !46}
!467 = !{!441, !39, i64 136}
!468 = !{!441, !36, i64 296}
!469 = !{!441, !36, i64 288}
!470 = !{!429, !36, i64 168}
!471 = !{!472, !36, i64 16}
!472 = !{!"bPoseChannel", !36, i64 0, !36, i64 8, !36, i64 16, !42, i64 24, !37, i64 40, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !42, i64 144, !42, i64 160, !36, i64 176, !36, i64 184, !36, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !69, i64 264, !39, i64 268, !39, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !69, i64 524, !69, i64 528, !69, i64 532, !36, i64 536}
!473 = !{!472, !36, i64 176}
!474 = !{!475, !40, i64 8}
!475 = !{!"bMotionPath", !36, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20}
!476 = !{!475, !36, i64 0}
!477 = !{!472, !36, i64 120}
!478 = !{!479, !40, i64 176}
!479 = !{!"Bone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !42, i64 32, !37, i64 48, !69, i64 112, !37, i64 116, !37, i64 128, !37, i64 140, !40, i64 176, !37, i64 180, !37, i64 192, !37, i64 204, !69, i64 268, !69, i64 272, !69, i64 276, !69, i64 280, !69, i64 284, !69, i64 288, !69, i64 292, !69, i64 296, !69, i64 300, !69, i64 304, !37, i64 308, !40, i64 320, !39, i64 324, !37, i64 326}
!480 = !{!472, !37, i64 113}
!481 = distinct !{!481, !45, !46}
!482 = distinct !{!482, !45, !46}
!483 = !{!484, !36, i64 96}
!484 = !{!"bPose", !42, i64 0, !36, i64 16, !39, i64 24, !39, i64 26, !40, i64 28, !40, i64 32, !69, i64 36, !37, i64 40, !37, i64 52, !42, i64 64, !40, i64 80, !40, i64 84, !36, i64 88, !36, i64 96, !442, i64 104, !37, i64 152}
!485 = distinct !{!485, !45, !46}
!486 = !{!441, !36, i64 360}
!487 = !{!441, !36, i64 1240}
!488 = !{!441, !36, i64 1248}
!489 = !{!490, !36, i64 376}
!490 = !{!"SoftBody", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 25, !39, i64 26, !69, i64 28, !37, i64 32, !69, i64 96, !69, i64 100, !69, i64 104, !69, i64 108, !69, i64 112, !69, i64 116, !69, i64 120, !69, i64 124, !69, i64 128, !39, i64 132, !37, i64 134, !39, i64 198, !69, i64 200, !69, i64 204, !37, i64 208, !40, i64 272, !40, i64 276, !40, i64 280, !39, i64 284, !39, i64 286, !36, i64 288, !40, i64 296, !40, i64 300, !69, i64 304, !69, i64 308, !69, i64 312, !69, i64 316, !39, i64 320, !39, i64 322, !39, i64 324, !39, i64 326, !39, i64 328, !39, i64 330, !39, i64 332, !39, i64 334, !36, i64 336, !69, i64 344, !69, i64 348, !36, i64 352, !42, i64 360, !36, i64 376, !37, i64 384, !37, i64 396, !37, i64 432, !40, i64 468}
!491 = !{!441, !36, i64 1152}
!492 = !{!441, !36, i64 1368}
!493 = !{!441, !36, i64 1376}
!494 = !{!441, !37, i64 1047}
!495 = !{!441, !36, i64 1392}
!496 = !{!497, !36, i64 24}
!497 = !{!"ParticleSystem", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !42, i64 72, !42, i64 88, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !42, i64 152, !37, i64 168, !37, i64 232, !69, i64 296, !69, i64 300, !69, i64 304, !40, i64 308, !40, i64 312, !40, i64 316, !40, i64 320, !40, i64 324, !40, i64 328, !40, i64 332, !40, i64 336, !39, i64 340, !39, i64 342, !39, i64 344, !39, i64 346, !37, i64 348, !37, i64 540, !39, i64 564, !39, i64 566, !36, i64 568, !36, i64 576, !42, i64 584, !36, i64 600, !36, i64 608, !40, i64 616, !40, i64 620, !36, i64 624, !36, i64 632, !36, i64 640, !69, i64 648, !69, i64 652}
!498 = !{!497, !40, i64 320}
!499 = !{!500, !36, i64 112}
!500 = !{!"ParticleData", !501, i64 0, !501, i64 56, !36, i64 112, !36, i64 120, !36, i64 128, !40, i64 136, !69, i64 140, !69, i64 144, !69, i64 148, !40, i64 152, !40, i64 156, !37, i64 160, !69, i64 176, !69, i64 180, !69, i64 184, !40, i64 188, !40, i64 192, !39, i64 196, !39, i64 198}
!501 = !{!"ParticleKey", !37, i64 0, !37, i64 12, !37, i64 24, !37, i64 40, !69, i64 52}
!502 = !{!500, !40, i64 136}
!503 = distinct !{!503, !45, !46}
!504 = !{!500, !36, i64 128}
!505 = !{!497, !36, i64 16}
!506 = !{!507, !39, i64 168}
!507 = !{!"ParticleSettings", !78, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !40, i64 156, !39, i64 160, !39, i64 162, !39, i64 164, !39, i64 166, !39, i64 168, !39, i64 170, !39, i64 172, !39, i64 174, !40, i64 176, !40, i64 180, !39, i64 184, !39, i64 186, !39, i64 188, !39, i64 190, !39, i64 192, !39, i64 194, !39, i64 196, !39, i64 198, !39, i64 200, !39, i64 202, !39, i64 204, !39, i64 206, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !39, i64 220, !39, i64 222, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !69, i64 232, !69, i64 236, !37, i64 240, !37, i64 248, !69, i64 256, !69, i64 260, !69, i64 264, !39, i64 268, !39, i64 270, !69, i64 272, !69, i64 276, !69, i64 280, !69, i64 284, !69, i64 288, !69, i64 292, !69, i64 296, !69, i64 300, !69, i64 304, !69, i64 308, !69, i64 312, !69, i64 316, !37, i64 320, !40, i64 324, !40, i64 328, !40, i64 332, !40, i64 336, !39, i64 340, !37, i64 342, !69, i64 348, !69, i64 352, !69, i64 356, !69, i64 360, !69, i64 364, !69, i64 368, !69, i64 372, !37, i64 376, !69, i64 388, !69, i64 392, !69, i64 396, !69, i64 400, !69, i64 404, !69, i64 408, !69, i64 412, !37, i64 416, !69, i64 428, !69, i64 432, !69, i64 436, !69, i64 440, !40, i64 444, !40, i64 448, !69, i64 452, !69, i64 456, !69, i64 460, !69, i64 464, !69, i64 468, !69, i64 472, !69, i64 476, !69, i64 480, !69, i64 484, !69, i64 488, !69, i64 492, !69, i64 496, !69, i64 500, !69, i64 504, !69, i64 508, !69, i64 512, !69, i64 516, !69, i64 520, !69, i64 524, !69, i64 528, !69, i64 532, !69, i64 536, !69, i64 540, !69, i64 544, !69, i64 548, !37, i64 552, !69, i64 560, !69, i64 564, !40, i64 568, !40, i64 572, !37, i64 576, !36, i64 720, !42, i64 728, !36, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !39, i64 792, !37, i64 794}
!508 = !{!507, !36, i64 136}
!509 = !{!510, !40, i64 52}
!510 = !{!"SPHFluidSettings", !69, i64 0, !69, i64 4, !69, i64 8, !69, i64 12, !69, i64 16, !69, i64 20, !69, i64 24, !69, i64 28, !69, i64 32, !69, i64 36, !69, i64 40, !69, i64 44, !69, i64 48, !40, i64 52, !40, i64 56, !39, i64 60, !37, i64 62}
!511 = !{!497, !40, i64 616}
!512 = !{!497, !36, i64 608}
!513 = distinct !{!513, !45, !46}
!514 = !{!497, !36, i64 32}
!515 = !{!497, !40, i64 328}
!516 = !{!497, !36, i64 104}
!517 = !{!518, !36, i64 128}
!518 = !{!"ClothModifierData", !519, i64 0, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !42, i64 152}
!519 = !{!"ModifierData", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!520 = !{!518, !36, i64 136}
!521 = distinct !{!521, !45, !46}
!522 = !{!519, !40, i64 16}
!523 = !{!524, !40, i64 272}
!524 = !{!"HookModifierData", !519, i64 0, !36, i64 112, !37, i64 120, !37, i64 184, !37, i64 248, !69, i64 260, !36, i64 264, !40, i64 272, !69, i64 276, !37, i64 280}
!525 = !{!524, !36, i64 264}
!526 = !{!527, !36, i64 160}
!527 = !{!"ClothSimSettings", !36, i64 0, !69, i64 8, !69, i64 12, !69, i64 16, !37, i64 20, !69, i64 32, !69, i64 36, !69, i64 40, !69, i64 44, !69, i64 48, !69, i64 52, !69, i64 56, !69, i64 60, !69, i64 64, !69, i64 68, !69, i64 72, !69, i64 76, !69, i64 80, !69, i64 84, !69, i64 88, !69, i64 92, !69, i64 96, !69, i64 100, !69, i64 104, !69, i64 108, !69, i64 112, !69, i64 116, !69, i64 120, !40, i64 124, !40, i64 128, !40, i64 132, !40, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !37, i64 156, !36, i64 160}
!528 = !{!529, !40, i64 140}
!529 = !{!"SmokeModifierData", !519, i64 0, !36, i64 112, !36, i64 120, !36, i64 128, !69, i64 136, !40, i64 140}
!530 = !{!529, !36, i64 112}
!531 = !{!532, !40, i64 16}
!532 = !{!"PointCache", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !39, i64 60, !39, i64 62, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !36, i64 1280, !42, i64 1288, !36, i64 1304, !36, i64 1312}
!533 = !{!532, !40, i64 20}
!534 = !{!535, !36, i64 512}
!535 = !{!"SmokeDomainSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !37, i64 96, !37, i64 108, !37, i64 120, !37, i64 132, !37, i64 144, !37, i64 156, !37, i64 168, !37, i64 180, !37, i64 192, !37, i64 204, !37, i64 268, !37, i64 332, !37, i64 344, !37, i64 356, !37, i64 368, !40, i64 380, !69, i64 384, !69, i64 388, !40, i64 392, !40, i64 396, !69, i64 400, !69, i64 404, !69, i64 408, !40, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !39, i64 428, !39, i64 430, !40, i64 432, !69, i64 436, !37, i64 440, !69, i64 452, !40, i64 456, !40, i64 460, !37, i64 464, !37, i64 480, !36, i64 512, !40, i64 520, !69, i64 524, !69, i64 528, !40, i64 532, !37, i64 536, !40, i64 548, !69, i64 552, !69, i64 556, !69, i64 560, !69, i64 564, !69, i64 568, !37, i64 572}
!536 = !{!529, !36, i64 120}
!537 = !{!529, !36, i64 128}
!538 = !{!539, !36, i64 112}
!539 = !{!"FluidsimModifierData", !519, i64 0, !36, i64 112, !36, i64 120}
!540 = !{!541, !36, i64 112}
!541 = !{!"DynamicPaintModifierData", !519, i64 0, !36, i64 112, !36, i64 120, !40, i64 128, !40, i64 132}
!542 = distinct !{!542, !45, !46}
!543 = !{!544, !36, i64 40}
!544 = !{!"DynamicPaintSurface", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !42, i64 56, !40, i64 72, !37, i64 76, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !36, i64 200, !37, i64 208, !40, i64 272, !40, i64 276, !69, i64 280, !69, i64 284, !69, i64 288, !69, i64 292, !69, i64 296, !69, i64 300, !69, i64 304, !69, i64 308, !69, i64 312, !69, i64 316, !69, i64 320, !69, i64 324, !69, i64 328, !69, i64 332, !69, i64 336, !40, i64 340, !37, i64 344, !37, i64 408, !37, i64 1432, !37, i64 1496}
!545 = distinct !{!545, !45, !46}
!546 = !{!541, !36, i64 120}
!547 = !{!548, !36, i64 72}
!548 = !{!"DynamicPaintBrushSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !40, i64 32, !40, i64 36, !69, i64 40, !69, i64 44, !69, i64 48, !69, i64 52, !69, i64 56, !69, i64 60, !69, i64 64, !69, i64 68, !36, i64 72, !36, i64 80, !39, i64 88, !39, i64 90, !39, i64 92, !39, i64 94, !69, i64 96, !69, i64 100, !69, i64 104, !69, i64 108}
!549 = !{!548, !36, i64 80}
!550 = !{!551, !40, i64 248}
!551 = !{!"MeshDeformModifierData", !519, i64 0, !36, i64 112, !37, i64 120, !39, i64 184, !39, i64 186, !37, i64 188, !36, i64 192, !36, i64 200, !36, i64 208, !40, i64 216, !40, i64 220, !36, i64 224, !36, i64 232, !36, i64 240, !40, i64 248, !40, i64 252, !37, i64 256, !69, i64 268, !37, i64 272, !36, i64 336, !36, i64 344, !36, i64 352}
!552 = !{!551, !40, i64 252}
!553 = !{!551, !36, i64 192}
!554 = !{!551, !40, i64 216}
!555 = !{!551, !36, i64 200}
!556 = !{!551, !40, i64 220}
!557 = !{!551, !36, i64 208}
!558 = !{!551, !36, i64 224}
!559 = !{!551, !36, i64 232}
!560 = !{!551, !36, i64 240}
!561 = !{!562, !36, i64 216}
!562 = !{!"WarpModifierData", !519, i64 0, !36, i64 112, !36, i64 120, !37, i64 128, !40, i64 192, !40, i64 196, !36, i64 200, !36, i64 208, !36, i64 216, !37, i64 224, !69, i64 288, !69, i64 292, !37, i64 296, !37, i64 297, !37, i64 298}
!563 = !{!564, !36, i64 184}
!564 = !{!"WeightVGEditModifierData", !519, i64 0, !37, i64 112, !39, i64 176, !39, i64 178, !69, i64 180, !36, i64 184, !69, i64 192, !69, i64 196, !69, i64 200, !37, i64 204, !40, i64 268, !36, i64 272, !36, i64 280, !40, i64 288, !37, i64 292, !40, i64 356}
!565 = !{!566, !40, i64 176}
!566 = !{!"LaplacianDeformModifierData", !519, i64 0, !37, i64 112, !40, i64 176, !40, i64 180, !36, i64 184, !36, i64 192, !39, i64 200, !37, i64 202}
!567 = !{!566, !36, i64 184}
!568 = distinct !{!568, !45, !46}
!569 = distinct !{!569, !45, !46}
!570 = distinct !{!570, !45, !46}
!571 = !{!572, !40, i64 100}
!572 = !{!"Material", !78, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !69, i64 132, !69, i64 136, !69, i64 140, !69, i64 144, !69, i64 148, !69, i64 152, !69, i64 156, !69, i64 160, !69, i64 164, !69, i64 168, !69, i64 172, !69, i64 176, !69, i64 180, !69, i64 184, !69, i64 188, !69, i64 192, !69, i64 196, !69, i64 200, !69, i64 204, !69, i64 208, !69, i64 212, !69, i64 216, !69, i64 220, !573, i64 224, !574, i64 312, !69, i64 328, !69, i64 332, !69, i64 336, !69, i64 340, !69, i64 344, !69, i64 348, !69, i64 352, !39, i64 356, !39, i64 358, !39, i64 360, !37, i64 362, !37, i64 363, !69, i64 364, !69, i64 368, !39, i64 372, !39, i64 374, !69, i64 376, !69, i64 380, !69, i64 384, !69, i64 388, !39, i64 392, !39, i64 394, !40, i64 396, !40, i64 400, !40, i64 404, !40, i64 408, !39, i64 412, !39, i64 414, !39, i64 416, !39, i64 418, !69, i64 420, !69, i64 424, !69, i64 428, !69, i64 432, !69, i64 436, !69, i64 440, !69, i64 444, !69, i64 448, !69, i64 452, !69, i64 456, !37, i64 460, !69, i64 524, !69, i64 528, !69, i64 532, !40, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !39, i64 544, !39, i64 546, !39, i64 548, !37, i64 550, !37, i64 551, !39, i64 552, !39, i64 554, !69, i64 556, !69, i64 560, !37, i64 564, !69, i64 580, !69, i64 584, !39, i64 588, !39, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !39, i64 612, !39, i64 614, !69, i64 616, !69, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !69, i64 800, !69, i64 804, !69, i64 808, !69, i64 812, !69, i64 816, !39, i64 820, !39, i64 822, !37, i64 824, !37, i64 836, !69, i64 848, !69, i64 852, !69, i64 856, !69, i64 860, !69, i64 864, !69, i64 868, !69, i64 872, !39, i64 876, !39, i64 878, !40, i64 880, !39, i64 884, !39, i64 886, !37, i64 888, !39, i64 904, !39, i64 906, !39, i64 908, !39, i64 910, !39, i64 912, !37, i64 914, !36, i64 920, !42, i64 928}
!573 = !{!"VolumeSettings", !69, i64 0, !69, i64 4, !69, i64 8, !69, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !69, i64 52, !69, i64 56, !69, i64 60, !39, i64 64, !39, i64 66, !39, i64 68, !39, i64 70, !69, i64 72, !69, i64 76, !69, i64 80, !69, i64 84}
!574 = !{!"GameSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!575 = !{!572, !36, i64 112}
!576 = !{!572, !36, i64 120}
!577 = distinct !{!577, !45, !46}
!578 = !{!572, !36, i64 592}
!579 = !{!572, !36, i64 600}
!580 = !{!572, !36, i64 768}
!581 = !{!572, !36, i64 792}
!582 = distinct !{!582, !45, !46}
!583 = !{!584, !40, i64 100}
!584 = !{!"Tex", !78, i64 0, !36, i64 120, !69, i64 128, !69, i64 132, !69, i64 136, !69, i64 140, !69, i64 144, !69, i64 148, !69, i64 152, !69, i64 156, !69, i64 160, !69, i64 164, !69, i64 168, !69, i64 172, !69, i64 176, !69, i64 180, !69, i64 184, !69, i64 188, !69, i64 192, !69, i64 196, !69, i64 200, !69, i64 204, !69, i64 208, !69, i64 212, !39, i64 216, !39, i64 218, !39, i64 220, !39, i64 222, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !69, i64 236, !69, i64 240, !69, i64 244, !69, i64 248, !40, i64 252, !40, i64 256, !39, i64 260, !39, i64 262, !39, i64 264, !39, i64 266, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !69, i64 284, !69, i64 288, !69, i64 292, !181, i64 296, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !37, i64 408, !37, i64 409}
!585 = !{!584, !36, i64 112}
!586 = !{!584, !36, i64 120}
!587 = !{!584, !36, i64 360}
!588 = !{!584, !39, i64 232}
!589 = !{!584, !36, i64 368}
!590 = !{!584, !36, i64 384}
!591 = !{!592, !36, i64 88}
!592 = !{!"PointDensity", !39, i64 0, !39, i64 2, !69, i64 4, !69, i64 8, !39, i64 12, !39, i64 14, !40, i64 16, !40, i64 20, !36, i64 24, !40, i64 32, !39, i64 36, !39, i64 38, !36, i64 40, !36, i64 48, !69, i64 56, !39, i64 60, !39, i64 62, !39, i64 64, !37, i64 66, !69, i64 72, !69, i64 76, !69, i64 80, !69, i64 84, !36, i64 88, !36, i64 96}
!593 = !{!592, !36, i64 96}
!594 = !{!584, !36, i64 392}
!595 = !{!584, !36, i64 400}
!596 = !{!584, !36, i64 336}
!597 = !{!584, !36, i64 376}
!598 = distinct !{!598, !45, !46}
!599 = !{!600, !40, i64 100}
!600 = !{!"Mesh", !78, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !601, i64 280, !601, i64 480, !601, i64 680, !601, i64 880, !601, i64 1080, !40, i64 1280, !40, i64 1284, !40, i64 1288, !40, i64 1292, !40, i64 1296, !40, i64 1300, !40, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !40, i64 1344, !39, i64 1348, !39, i64 1350, !69, i64 1352, !40, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !39, i64 1366, !36, i64 1368}
!601 = !{!"CustomData", !36, i64 0, !37, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !36, i64 184, !36, i64 192}
!602 = !{i64 0, i64 8, !43, i64 8, i64 8, !43, i64 16, i64 8, !43, i64 24, i64 8, !43, i64 32, i64 66, !603, i64 98, i64 2, !604, i64 100, i64 4, !63, i64 104, i64 4, !63, i64 108, i64 4, !63, i64 112, i64 8, !43, i64 120, i64 8, !43, i64 128, i64 8, !43, i64 136, i64 8, !43, i64 144, i64 8, !43, i64 152, i64 8, !43, i64 160, i64 8, !43, i64 168, i64 8, !43, i64 176, i64 8, !43, i64 184, i64 8, !43, i64 192, i64 8, !43, i64 200, i64 8, !43, i64 208, i64 8, !43, i64 216, i64 8, !43, i64 224, i64 8, !43, i64 232, i64 8, !43, i64 240, i64 8, !43, i64 248, i64 8, !43, i64 256, i64 8, !43, i64 264, i64 8, !43, i64 272, i64 8, !43, i64 280, i64 8, !43, i64 288, i64 164, !603, i64 452, i64 4, !63, i64 456, i64 4, !63, i64 460, i64 4, !63, i64 464, i64 8, !43, i64 472, i64 8, !43, i64 480, i64 8, !43, i64 488, i64 164, !603, i64 652, i64 4, !63, i64 656, i64 4, !63, i64 660, i64 4, !63, i64 664, i64 8, !43, i64 672, i64 8, !43, i64 680, i64 8, !43, i64 688, i64 164, !603, i64 852, i64 4, !63, i64 856, i64 4, !63, i64 860, i64 4, !63, i64 864, i64 8, !43, i64 872, i64 8, !43, i64 880, i64 8, !43, i64 888, i64 164, !603, i64 1052, i64 4, !63, i64 1056, i64 4, !63, i64 1060, i64 4, !63, i64 1064, i64 8, !43, i64 1072, i64 8, !43, i64 1080, i64 8, !43, i64 1088, i64 164, !603, i64 1252, i64 4, !63, i64 1256, i64 4, !63, i64 1260, i64 4, !63, i64 1264, i64 8, !43, i64 1272, i64 8, !43, i64 1280, i64 4, !63, i64 1284, i64 4, !63, i64 1288, i64 4, !63, i64 1292, i64 4, !63, i64 1296, i64 4, !63, i64 1300, i64 4, !63, i64 1304, i64 4, !63, i64 1308, i64 12, !603, i64 1320, i64 12, !603, i64 1332, i64 12, !603, i64 1344, i64 4, !63, i64 1348, i64 2, !604, i64 1350, i64 2, !604, i64 1352, i64 4, !605, i64 1356, i64 4, !63, i64 1360, i64 1, !603, i64 1361, i64 1, !603, i64 1362, i64 1, !603, i64 1363, i64 1, !603, i64 1364, i64 1, !603, i64 1365, i64 1, !603, i64 1366, i64 2, !604, i64 1368, i64 8, !43}
!603 = !{!37, !37, i64 0}
!604 = !{!39, !39, i64 0}
!605 = !{!69, !69, i64 0}
!606 = !{!600, !36, i64 208}
!607 = !{!600, !40, i64 1288}
!608 = !{!600, !36, i64 112}
!609 = !{!600, !36, i64 120}
!610 = !{!600, !39, i64 1366}
!611 = !{!600, !36, i64 152}
!612 = !{!600, !40, i64 1292}
!613 = !{!600, !36, i64 160}
!614 = !{!600, !40, i64 1280}
!615 = !{!600, !40, i64 1284}
!616 = !{!600, !40, i64 1300}
!617 = !{!600, !40, i64 1296}
!618 = !{!600, !36, i64 168}
!619 = !{!600, !36, i64 272}
!620 = distinct !{!620, !45, !46}
!621 = !{!507, !40, i64 100}
!622 = !{!507, !36, i64 112}
!623 = !{!507, !36, i64 120}
!624 = !{!507, !36, i64 776}
!625 = !{!507, !36, i64 784}
!626 = !{!507, !36, i64 144}
!627 = !{!628, !39, i64 28}
!628 = !{!"ParticleDupliWeight", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30}
!629 = !{!507, !36, i64 720}
!630 = !{!424, !36, i64 120}
!631 = !{!628, !36, i64 16}
!632 = !{!633, !36, i64 16}
!633 = !{!"GroupObject", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !37, i64 34}
!634 = !{!633, !36, i64 0}
!635 = distinct !{!635, !45, !46}
!636 = distinct !{!636, !45, !46}
!637 = !{!507, !36, i64 128}
!638 = !{!639, !36, i64 88}
!639 = !{!"BoidSettings", !40, i64 0, !40, i64 4, !69, i64 8, !69, i64 12, !69, i64 16, !69, i64 20, !69, i64 24, !69, i64 28, !69, i64 32, !69, i64 36, !69, i64 40, !69, i64 44, !69, i64 48, !69, i64 52, !69, i64 56, !69, i64 60, !69, i64 64, !69, i64 68, !69, i64 72, !69, i64 76, !69, i64 80, !69, i64 84, !42, i64 88}
!640 = !{!641, !36, i64 16}
!641 = !{!"BoidState", !36, i64 0, !36, i64 8, !42, i64 16, !42, i64 32, !42, i64 48, !37, i64 64, !40, i64 96, !40, i64 100, !40, i64 104, !69, i64 108, !40, i64 112, !40, i64 116, !69, i64 120, !69, i64 124}
!642 = !{!643, !40, i64 16}
!643 = !{!"BoidRule", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !37, i64 24}
!644 = !{!643, !36, i64 0}
!645 = distinct !{!645, !45, !46}
!646 = !{!641, !36, i64 0}
!647 = distinct !{!647, !45, !46}
!648 = distinct !{!648, !45, !46}
!649 = distinct !{!649, !45, !46}
!650 = !{!77, !40, i64 100}
!651 = !{!77, !36, i64 112}
!652 = !{!77, !36, i64 120}
!653 = distinct !{!653, !45, !46}
!654 = !{!655, !40, i64 100}
!655 = !{!"Brush", !78, i64 0, !656, i64 120, !36, i64 144, !657, i64 152, !657, i64 464, !36, i64 776, !36, i64 784, !36, i64 792, !36, i64 800, !36, i64 808, !37, i64 816, !69, i64 1840, !39, i64 1844, !39, i64 1846, !69, i64 1848, !40, i64 1852, !40, i64 1856, !40, i64 1860, !69, i64 1864, !40, i64 1868, !40, i64 1872, !40, i64 1876, !40, i64 1880, !69, i64 1884, !69, i64 1888, !37, i64 1892, !69, i64 1904, !37, i64 1908, !40, i64 1920, !69, i64 1924, !69, i64 1928, !40, i64 1932, !40, i64 1936, !40, i64 1940, !37, i64 1944, !37, i64 1945, !37, i64 1946, !37, i64 1947, !69, i64 1948, !69, i64 1952, !69, i64 1956, !69, i64 1960, !69, i64 1964, !40, i64 1968, !40, i64 1972, !40, i64 1976, !69, i64 1980, !69, i64 1984, !40, i64 1988, !40, i64 1992, !69, i64 1996, !37, i64 2000, !37, i64 2012, !37, i64 2024, !37, i64 2032, !37, i64 2040, !37, i64 2048}
!656 = !{!"BrushClone", !36, i64 0, !37, i64 8, !69, i64 16, !69, i64 20}
!657 = !{!"MTex", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !69, i64 116, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !39, i64 128, !39, i64 130, !37, i64 132, !37, i64 133, !69, i64 140, !69, i64 144, !69, i64 148, !69, i64 152, !69, i64 156, !69, i64 160, !69, i64 164, !69, i64 168, !69, i64 172, !69, i64 176, !69, i64 180, !69, i64 184, !69, i64 188, !69, i64 192, !69, i64 196, !69, i64 200, !69, i64 204, !69, i64 208, !69, i64 212, !69, i64 216, !69, i64 220, !69, i64 224, !69, i64 228, !69, i64 232, !69, i64 236, !69, i64 240, !69, i64 244, !69, i64 248, !69, i64 252, !69, i64 256, !69, i64 260, !69, i64 264, !69, i64 268, !69, i64 272, !69, i64 276, !69, i64 280, !69, i64 284, !69, i64 288, !69, i64 292, !69, i64 296, !69, i64 300, !69, i64 304, !69, i64 308}
!658 = !{!655, !36, i64 112}
!659 = !{!655, !36, i64 144}
!660 = !{!655, !36, i64 800}
!661 = distinct !{!661, !45, !46}
!662 = !{!663, !40, i64 100}
!663 = !{!"Palette", !78, i64 0, !42, i64 120, !42, i64 136, !40, i64 152, !40, i64 156}
!664 = !{!663, !36, i64 112}
!665 = distinct !{!665, !45, !46}
!666 = distinct !{!666, !45, !46}
!667 = !{!668, !40, i64 100}
!668 = !{!"PaintCurve", !78, i64 0, !36, i64 120, !40, i64 128, !40, i64 132}
!669 = !{!668, !40, i64 128}
!670 = !{!668, !36, i64 120}
!671 = !{!668, !36, i64 112}
!672 = distinct !{!672, !45, !46}
!673 = !{!674, !40, i64 100}
!674 = !{!"Script", !78, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !40, i64 160, !40, i64 164, !37, i64 168, !37, i64 1192}
!675 = !{!674, !36, i64 112}
!676 = distinct !{!676, !45, !46}
!677 = !{!678, !40, i64 100}
!678 = !{!"bGPdata", !78, i64 0, !42, i64 120, !40, i64 136, !39, i64 140, !39, i64 142, !36, i64 144}
!679 = distinct !{!679, !45, !46}
!680 = distinct !{!680, !45, !46}
!681 = !{!682, !40, i64 32}
!682 = !{!"bGPDstroke", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !40, i64 32, !39, i64 36, !39, i64 38, !404, i64 40}
!683 = !{!682, !36, i64 16}
!684 = distinct !{!684, !45, !46}
!685 = distinct !{!685, !45, !46}
!686 = !{!687, !40, i64 100}
!687 = !{!"FreestyleLineStyle", !78, i64 0, !36, i64 120, !69, i64 128, !69, i64 132, !69, i64 136, !69, i64 140, !69, i64 144, !40, i64 148, !69, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !69, i64 172, !69, i64 176, !69, i64 180, !69, i64 184, !69, i64 188, !40, i64 192, !39, i64 196, !39, i64 198, !39, i64 200, !39, i64 202, !39, i64 204, !39, i64 206, !40, i64 208, !40, i64 212, !69, i64 216, !39, i64 220, !39, i64 222, !39, i64 224, !37, i64 226, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !39, i64 240, !39, i64 242, !40, i64 244, !37, i64 248, !36, i64 392, !42, i64 400, !42, i64 416, !42, i64 432, !42, i64 448}
!688 = !{!687, !36, i64 112}
!689 = !{!687, !36, i64 120}
!690 = !{!691, !40, i64 80}
!691 = !{!"LineStyleModifier", !36, i64 0, !36, i64 8, !37, i64 16, !40, i64 80, !69, i64 84, !40, i64 88, !40, i64 92}
!692 = distinct !{!692, !45, !46}
!693 = !{!694, !36, i64 96}
!694 = !{!"LineStyleColorModifier_AlongStroke", !691, i64 0, !36, i64 96}
!695 = !{!696, !36, i64 96}
!696 = !{!"LineStyleColorModifier_DistanceFromCamera", !691, i64 0, !36, i64 96, !69, i64 104, !69, i64 108}
!697 = !{!698, !36, i64 104}
!698 = !{!"LineStyleColorModifier_DistanceFromObject", !691, i64 0, !36, i64 96, !36, i64 104, !69, i64 112, !69, i64 116}
!699 = !{!700, !36, i64 96}
!700 = !{!"LineStyleColorModifier_Material", !691, i64 0, !36, i64 96, !40, i64 104, !40, i64 108}
!701 = distinct !{!701, !45, !46}
!702 = distinct !{!702, !45, !46}
!703 = !{!704, !36, i64 96}
!704 = !{!"LineStyleAlphaModifier_AlongStroke", !691, i64 0, !36, i64 96, !40, i64 104, !40, i64 108}
!705 = !{!706, !36, i64 96}
!706 = !{!"LineStyleAlphaModifier_DistanceFromCamera", !691, i64 0, !36, i64 96, !40, i64 104, !69, i64 108, !69, i64 112, !40, i64 116}
!707 = !{!708, !36, i64 104}
!708 = !{!"LineStyleAlphaModifier_DistanceFromObject", !691, i64 0, !36, i64 96, !36, i64 104, !40, i64 112, !69, i64 116, !69, i64 120, !40, i64 124}
!709 = !{!710, !36, i64 96}
!710 = !{!"LineStyleAlphaModifier_Material", !691, i64 0, !36, i64 96, !40, i64 104, !40, i64 108}
!711 = distinct !{!711, !45, !46}
!712 = distinct !{!712, !45, !46}
!713 = !{!714, !36, i64 96}
!714 = !{!"LineStyleThicknessModifier_AlongStroke", !691, i64 0, !36, i64 96, !40, i64 104, !69, i64 108, !69, i64 112, !40, i64 116}
!715 = !{!716, !36, i64 96}
!716 = !{!"LineStyleThicknessModifier_DistanceFromCamera", !691, i64 0, !36, i64 96, !40, i64 104, !69, i64 108, !69, i64 112, !69, i64 116, !69, i64 120, !40, i64 124}
!717 = !{!718, !36, i64 104}
!718 = !{!"LineStyleThicknessModifier_DistanceFromObject", !691, i64 0, !36, i64 96, !36, i64 104, !40, i64 112, !69, i64 116, !69, i64 120, !69, i64 124, !69, i64 128, !40, i64 132}
!719 = !{!720, !36, i64 96}
!720 = !{!"LineStyleThicknessModifier_Material", !691, i64 0, !36, i64 96, !40, i64 104, !69, i64 108, !69, i64 112, !40, i64 116}
!721 = distinct !{!721, !45, !46}
!722 = distinct !{!722, !45, !46}
!723 = distinct !{!723, !45, !46}
!724 = !{!687, !36, i64 392}
!725 = distinct !{!725, !45, !46}
!726 = !{!95, !36, i64 0}
!727 = !{!95, !36, i64 1080}
!728 = !{!729, !36, i64 2192}
!729 = !{!"Library", !78, i64 0, !36, i64 120, !36, i64 128, !37, i64 136, !37, i64 1160, !36, i64 2184, !36, i64 2192}
!730 = !{!78, !40, i64 100}
!731 = !{!78, !39, i64 98}
!732 = distinct !{!732, !45, !46}
!733 = distinct !{!733, !45, !46}
!734 = distinct !{!734, !45, !46}
!735 = distinct !{!735, !45, !46}
!736 = distinct !{!736, !45, !46}
!737 = distinct !{!737, !45, !46}
!738 = distinct !{!738, !45, !46}
!739 = !{!740, !36, i64 16}
!740 = !{!"wmKeyMapDiffItem", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!741 = !{!742, !36, i64 80}
!742 = !{!"wmKeyMapItem", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !37, i64 88, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !39, i64 164, !39, i64 166, !39, i64 168, !39, i64 170, !39, i64 172, !39, i64 174, !36, i64 176}
!743 = !{!740, !36, i64 24}
!744 = distinct !{!744, !45, !46}
!745 = distinct !{!745, !45, !46}
!746 = !{!747, !36, i64 80}
!747 = !{!"bAddon", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80}
!748 = distinct !{!748, !45, !46}
!749 = distinct !{!749, !45, !46}
!750 = distinct !{!750, !45, !46}
!751 = !{!752, !40, i64 8}
!752 = !{!"SDNA", !36, i64 0, !40, i64 8, !40, i64 12, !36, i64 16, !40, i64 24, !40, i64 28, !36, i64 32, !36, i64 40, !40, i64 48, !36, i64 56, !36, i64 64, !40, i64 72}
!753 = !{!752, !36, i64 0}
!754 = !{!77, !36, i64 240}
!755 = !{!82, !36, i64 0}
!756 = distinct !{!756, !45, !46}
!757 = distinct !{!757, !45, !46}
!758 = distinct !{!758, !45, !46}
!759 = !{!752, !36, i64 56}
!760 = !{!752, !36, i64 40}
!761 = !{!762, !36, i64 376}
!762 = !{!"ARegion", !36, i64 0, !36, i64 8, !169, i64 16, !112, i64 176, !112, i64 192, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !69, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !36, i64 240, !42, i64 248, !42, i64 264, !42, i64 280, !42, i64 296, !42, i64 312, !42, i64 328, !42, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!763 = !{!762, !39, i64 214}
!764 = !{!765, !36, i64 648}
!765 = !{!"RegionView3D", !37, i64 0, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !37, i64 320, !37, i64 384, !37, i64 448, !37, i64 544, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !37, i64 696, !37, i64 760, !69, i64 776, !69, i64 780, !69, i64 784, !69, i64 788, !37, i64 792, !69, i64 804, !37, i64 808, !37, i64 809, !37, i64 810, !37, i64 811, !37, i64 812, !37, i64 813, !37, i64 816, !39, i64 824, !39, i64 826, !37, i64 828, !39, i64 844, !39, i64 846, !69, i64 848, !37, i64 852, !69, i64 864, !37, i64 868}
!766 = !{!765, !36, i64 640}
!767 = !{!768, !36, i64 16}
!768 = !{!"AnimOverride", !36, i64 0, !36, i64 8, !36, i64 16, !40, i64 24, !69, i64 28}
!769 = distinct !{!769, !45, !46}
!770 = distinct !{!770, !45, !46}
!771 = !{!772, !36, i64 48}
!772 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !42, i64 32, !36, i64 48, !36, i64 56, !40, i64 64, !69, i64 68, !39, i64 72, !39, i64 74, !40, i64 76, !36, i64 80, !40, i64 88, !37, i64 92, !69, i64 104, !69, i64 108}
!773 = !{!772, !40, i64 64}
!774 = !{!772, !36, i64 56}
!775 = !{!772, !36, i64 80}
!776 = !{!772, !36, i64 24}
!777 = distinct !{!777, !45, !46}
!778 = !{!779, !39, i64 528}
!779 = !{!"DriverVar", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !39, i64 528, !39, i64 530, !69, i64 532}
!780 = !{!781, !36, i64 8}
!781 = !{!"DriverTarget", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 48, !39, i64 50, !40, i64 52}
!782 = distinct !{!782, !45, !46}
!783 = distinct !{!783, !45, !46}
!784 = !{!785, !36, i64 16}
!785 = !{!"FModifier", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !39, i64 88, !39, i64 90, !69, i64 92, !69, i64 96, !69, i64 100, !69, i64 104, !69, i64 108}
!786 = !{!785, !39, i64 88}
!787 = !{!788, !36, i64 0}
!788 = !{!"FMod_Generator", !36, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20}
!789 = !{!788, !40, i64 8}
!790 = !{!791, !36, i64 0}
!791 = !{!"FMod_Envelope", !36, i64 0, !40, i64 8, !69, i64 12, !69, i64 16, !69, i64 20}
!792 = !{!791, !40, i64 8}
!793 = !{!794, !36, i64 8}
!794 = !{!"FMod_Python", !36, i64 0, !36, i64 8}
!795 = distinct !{!795, !45, !46}
!796 = distinct !{!796, !45, !46}
!797 = !{!87, !36, i64 24}
!798 = distinct !{!798, !45, !46}
!799 = distinct !{!799, !45, !46}
!800 = distinct !{!800, !45, !46}
!801 = !{!87, !36, i64 248}
!802 = !{!77, !40, i64 256}
!803 = !{!804, !36, i64 1096}
!804 = !{!"NodeShaderScript", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 1032, !36, i64 1096}
!805 = !{!87, !36, i64 32}
!806 = !{!90, !36, i64 160}
!807 = distinct !{!807, !45, !46}
!808 = distinct !{!808, !45, !46}
!809 = distinct !{!809, !45, !46}
!810 = distinct !{!810, !45, !46}
!811 = distinct !{!811, !45, !46}
!812 = distinct !{!812, !45, !46}
!813 = distinct !{!813, !45, !46}
!814 = !{!815, !36, i64 160}
!815 = !{!"PTCacheMem", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !37, i64 32, !37, i64 96, !42, i64 160}
!816 = !{!815, !40, i64 24}
!817 = !{!815, !40, i64 20}
!818 = distinct !{!818, !45, !46}
!819 = !{!820, !40, i64 16}
!820 = !{!"PTCacheExtra", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !36, i64 24}
!821 = !{!820, !40, i64 20}
!822 = !{!820, !36, i64 24}
!823 = !{!820, !36, i64 0}
!824 = distinct !{!824, !45, !46}
!825 = distinct !{!825, !45, !46}
!826 = !{!90, !39, i64 266}
!827 = !{!87, !36, i64 240}
!828 = !{!90, !39, i64 174}
!829 = !{!90, !36, i64 288}
!830 = !{!90, !40, i64 280}
!831 = !{!90, !36, i64 24}
!832 = !{!90, !36, i64 256}
!833 = !{!90, !36, i64 176}
!834 = !{!68, !40, i64 8}
!835 = !{!479, !36, i64 16}
!836 = distinct !{!836, !45, !46}
!837 = !{!838, !36, i64 16}
!838 = !{!"bConstraint", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 26, !37, i64 28, !37, i64 29, !37, i64 30, !39, i64 94, !69, i64 96, !69, i64 100, !36, i64 104, !69, i64 112, !69, i64 116}
!839 = !{!838, !39, i64 24}
!840 = distinct !{!840, !45, !46}
!841 = !{!842, !36, i64 8}
!842 = !{!"bPythonConstraint", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !42, i64 24, !36, i64 40, !37, i64 48}
!843 = !{!844, !39, i64 16}
!844 = !{!"bSplineIKConstraint", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22}
!845 = !{!844, !36, i64 8}
!846 = distinct !{!846, !45, !46}
!847 = !{!96, !96, i64 0}
!848 = !{!601, !36, i64 192}
!849 = !{!601, !40, i64 172}
!850 = !{!601, !36, i64 0}
!851 = !{!852, !40, i64 8}
!852 = !{!"CustomDataLayer", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !37, i64 32, !36, i64 96}
!853 = distinct !{!853, !45, !46}
!854 = !{!601, !40, i64 176}
!855 = distinct !{!855, !45, !46}
!856 = !{!852, !40, i64 0}
!857 = !{!852, !36, i64 96}
!858 = !{!859, !36, i64 8}
!859 = !{!"MDisps", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 16}
!860 = !{!859, !40, i64 0}
!861 = !{!859, !36, i64 16}
!862 = distinct !{!862, !45, !46}
!863 = !{!864, !36, i64 0}
!864 = !{!"GridPaintMask", !36, i64 0, !40, i64 8, !40, i64 12}
!865 = !{!864, !40, i64 8}
!866 = distinct !{!866, !45, !46}
!867 = distinct !{!867, !45, !46}
