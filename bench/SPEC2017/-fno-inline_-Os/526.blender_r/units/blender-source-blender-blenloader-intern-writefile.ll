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
%struct.WriteWrap = type { ptr, ptr, ptr, %union.anon }
%union.anon = type { ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.BHead = type { i32, i32, ptr, i32, i32 }
%struct.WriteData = type { ptr, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i8 }
%struct.SDNA = type { ptr, i32, i32, ptr, i32, i32, ptr, ptr, i32, ptr, ptr, i32 }
%struct.NodeTreeIterStore = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bNodeTree = type { %struct.ID, ptr, ptr, [64 x i8], ptr, ptr, [2 x float], %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i32, %struct.rctf, %struct.ListBase, %struct.ListBase, ptr, %struct.bNodeInstanceKey, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.bNodeInstanceKey = type { i32 }
%struct.bNodeLink = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.bNode = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], i32, i16, i16, i16, i16, i16, i16, i16, i16, [3 x float], %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, %struct.ListBase, float, float, float, float, float, float, float, i32, [64 x i8], i16, i16, float, float, i16, i16, ptr, %struct.rctf, %struct.rctf, %struct.rctf, i16, i16, i32, ptr }
%struct.bNodeSocket = type { ptr, ptr, ptr, ptr, [64 x i8], [64 x i8], ptr, i16, i16, i16, i16, ptr, [64 x i8], float, float, ptr, i16, i16, i32, ptr, i32, i32, ptr, ptr, %struct.bNodeStack }
%struct.bNodeStack = type { [4 x float], float, float, ptr, i16, i16, i16, i16, i16, i16, [2 x i16] }
%struct.RenderInfo = type { i32, i32, [64 x i8] }
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
%struct.FileGlobal = type { [4 x i8], i16, i16, i16, i16, i16, i16, ptr, ptr, i32, i32, i64, [16 x i8], [1024 x i8] }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.SpaceLink = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16] }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.SpaceIpo = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.ListBase, i16, i16, i32, float, i32 }
%struct.SpaceFile = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i16 }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
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
%struct.MovieTrackingObject = type { ptr, ptr, [64 x i8], i32, float, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, i32, i32 }
%struct.Mask = type { %struct.ID, ptr, %struct.ListBase, i32, i32, i32, i32, i32, i32 }
%struct.MaskLayer = type { ptr, ptr, [64 x i8], %struct.ListBase, %struct.ListBase, ptr, ptr, float, i8, i8, i8, [7 x i8], i8, i8 }
%struct.MaskSpline = type { ptr, ptr, i16, i8, i8, i32, ptr, %struct.MaskParent, ptr }
%struct.MaskParent = type { i32, i32, ptr, [64 x i8], [64 x i8], [2 x float], [4 x [2 x float]] }
%struct.MaskSplinePoint = type { %struct.BezTriple, i32, i32, ptr, %struct.MaskParent }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.MaskLayerShape = type { ptr, ptr, ptr, i32, i32, i8, [7 x i8] }
%struct.SeqIterator = type { ptr, i32, i32, ptr, i32 }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.Sequence = type { ptr, ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, float, float, float, float, ptr, i32, i32, i32, float, i32, i8, [3 x i8], %struct.ListBase }
%struct.Strip = type { ptr, ptr, i32, i32, i32, i32, ptr, [768 x i8], ptr, ptr, ptr, ptr, %struct.ColorManagedColorspaceSettings }
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
%struct.bPose = type { %struct.ListBase, ptr, i16, i16, i32, i32, float, [3 x float], [3 x float], %struct.ListBase, i32, i32, ptr, ptr, %struct.bAnimVizSettings, [64 x i8] }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.SoftBody = type { i32, i32, ptr, ptr, i8, i8, i16, float, [64 x i8], float, float, float, float, float, float, float, float, float, i16, [64 x i8], i16, float, float, [64 x i8], i32, i32, i32, i16, i16, ptr, i32, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, float, float, ptr, %struct.ListBase, ptr, [3 x float], [3 x [3 x float]], [3 x [3 x float]], i32 }
%struct.Material = type { %struct.ID, ptr, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.VolumeSettings, %struct.GameSettings, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, float, float, i16, i16, float, float, float, float, i16, i16, i32, i32, i32, i32, i16, i16, i16, i16, float, float, float, float, float, float, float, float, float, float, [64 x i8], float, float, float, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, float, float, [4 x float], float, float, i16, i16, ptr, ptr, i8, i8, i8, i8, i16, i16, float, float, [18 x ptr], ptr, ptr, ptr, ptr, float, float, float, float, float, i16, i16, [3 x float], [3 x float], float, float, float, float, float, float, float, i16, i16, i32, i16, i16, [4 x float], i16, i16, i16, i16, i16, [3 x i16], ptr, %struct.ListBase }
%struct.VolumeSettings = type { float, float, float, float, [3 x float], [3 x float], [3 x float], float, float, float, i16, i16, i16, i16, float, float, float, float }
%struct.GameSettings = type { i32, i32, i32, i32 }
%struct.Tex = type { %struct.ID, ptr, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, float, float, float, %struct.ImageUser, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, [7 x i8] }
%struct.PointDensity = type { i16, i16, float, float, i16, i16, i32, i32, ptr, i32, i16, i16, ptr, ptr, float, i16, i16, i16, [3 x i16], float, float, float, float, ptr, ptr }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ParticleSettings = type { %struct.ID, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, [2 x float], [2 x float], float, float, float, i16, i16, float, float, float, float, float, float, float, float, float, float, float, float, [1 x float], i32, i32, i32, i32, i16, [3 x i16], float, float, float, float, float, float, float, [3 x float], float, float, float, float, float, float, float, [3 x float], float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, [2 x float], float, float, i32, i32, [18 x ptr], ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, [3 x i16] }
%struct.ParticleDupliWeight = type { ptr, ptr, ptr, i16, i16, i16, i16 }
%struct.GroupObject = type { ptr, ptr, ptr, ptr, i16, [6 x i8] }
%struct.BoidSettings = type { i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, %struct.ListBase }
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
%struct.Library = type { %struct.ID, ptr, ptr, [1024 x i8], [1024 x i8], ptr, ptr }
%struct.wmKeyMap = type { ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, ptr, ptr }
%struct.wmKeyMapDiffItem = type { ptr, ptr, ptr, ptr }
%struct.bAddon = type { ptr, ptr, [64 x i8], ptr }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.uiList = type { ptr, ptr, ptr, [64 x i8], i32, i32, i32, i32, i32, i32, [64 x i8], i32, i32, ptr, ptr }
%struct.SpaceOops = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, %struct.ListBase, ptr, [32 x i8], %struct.TreeStoreElem, i16, i16, i16, i16, ptr }
%struct.TreeStoreElem = type { i16, i16, i16, i16, ptr }
%struct.TreeStore = type { i32, i32, ptr }
%struct.CurveMapping = type { i32, i32, i32, i32, %struct.rctf, %struct.rctf, [4 x %struct.CurveMap], [3 x float], [3 x float], [3 x float], [3 x float] }
%struct.CurveMap = type { i16, i16, float, float, float, [2 x float], [2 x float], ptr, ptr, ptr, [2 x float], [2 x float] }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
%struct.AnimOverride = type { ptr, ptr, ptr, i32, float }
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }
%struct.MovieTrackingPlaneTrack = type { ptr, ptr, [64 x i8], ptr, i32, i32, ptr, i32, i32, ptr, float, i32 }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.DriverVar = type { ptr, ptr, [64 x i8], [8 x %struct.DriverTarget], i16, i16, float }
%struct.DriverTarget = type { ptr, ptr, [32 x i8], i16, i16, i32 }
%struct.NlaTrack = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8] }
%struct.FModifier = type { ptr, ptr, ptr, [64 x i8], i16, i16, float, float, float, float, float }
%struct.FModifierTypeInfo = type { i16, i16, i16, i16, [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.FMod_Generator = type { ptr, i32, i32, i32, i32 }
%struct.FMod_Envelope = type { ptr, i32, float, float, float }
%struct.FMod_Python = type { ptr, ptr }
%struct.NlaStrip = type { ptr, ptr, %struct.ListBase, ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, ptr, i32, i32 }
%struct.KeyingSet = type { ptr, ptr, %struct.ListBase, [64 x i8], [64 x i8], [240 x i8], [64 x i8], i16, i16, i32 }
%struct.KS_Path = type { ptr, ptr, ptr, [64 x i8], i32, i16, i16, ptr, i32, i16, i16 }
%struct.SequenceModifierData = type { ptr, ptr, i32, i32, [64 x i8], i32, i32, ptr, ptr }
%struct.SequenceModifierTypeInfo = type { [64 x i8], [64 x i8], i32, ptr, ptr, ptr, ptr }
%struct.CurvesModifierData = type { %struct.SequenceModifierData, %struct.CurveMapping }
%struct.HueCorrectModifierData = type { %struct.SequenceModifierData, %struct.CurveMapping }
%struct.NodeShaderScript = type { i32, i32, [1024 x i8], [64 x i8], ptr }
%struct.bNodeType = type { ptr, ptr, i16, [64 x i8], i32, [64 x i8], [256 x i8], i32, float, float, float, float, float, float, i16, i16, i16, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.PointCache = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [64 x i8], [64 x i8], [64 x i8], [1024 x i8], ptr, %struct.ListBase, ptr, ptr }
%struct.PTCacheMem = type { ptr, ptr, i32, i32, i32, i32, [8 x ptr], [8 x ptr], %struct.ListBase }
%struct.PTCacheExtra = type { ptr, ptr, i32, i32, ptr }
%struct.PreviewImage = type { [2 x i32], [2 x i32], [2 x i16], [2 x i16], [2 x ptr], [2 x ptr] }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.bProperty = type { ptr, ptr, [64 x i8], i16, i16, i32, ptr }
%struct.bSensor = type { ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, [64 x i8], ptr, ptr, ptr, i16, i16, i16, i16 }
%struct.bController = type { ptr, ptr, ptr, i16, i16, i16, i16, i16, i16, i16, i16, [64 x i8], ptr, ptr, ptr, i16, i16, i32 }
%struct.bActuator = type { ptr, ptr, ptr, i16, i16, i16, i16, [64 x i8], ptr, ptr }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.bConstraint = type { ptr, ptr, ptr, i16, i16, i8, i8, [64 x i8], i16, float, float, ptr, float, float }
%struct.bConstraintTypeInfo = type { i16, i16, [32 x i8], [32 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bPythonConstraint = type { ptr, ptr, i32, i32, %struct.ListBase, ptr, [64 x i8] }
%struct.bSplineIKConstraint = type { ptr, ptr, i16, i16, i16, i16 }
%struct.bMotionPath = type { ptr, i32, i32, i32, i32 }
%struct.ParticleSystem = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], [4 x [4 x float]], float, float, float, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [3 x [64 x i8]], [12 x i16], i16, i16, ptr, ptr, %struct.ListBase, ptr, ptr, i32, i32, ptr, ptr, ptr, float, float }
%struct.ParticleData = type { %struct.ParticleKey, %struct.ParticleKey, ptr, ptr, ptr, i32, float, float, float, i32, i32, [4 x float], float, float, float, i32, i32, i16, i16 }
%struct.ParticleKey = type { [3 x float], [3 x float], [4 x float], [3 x float], float }
%struct.SPHFluidSettings = type { float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i16, [3 x i16] }
%struct.ClothModifierData = type { %struct.ModifierData, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.ModifierTypeInfo = type { [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.HookModifierData = type { %struct.ModifierData, ptr, [64 x i8], [4 x [4 x float]], [3 x float], float, ptr, i32, float, [64 x i8] }
%struct.ClothSimSettings = type { ptr, float, float, float, [3 x float], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i8], ptr }
%struct.SmokeModifierData = type { %struct.ModifierData, ptr, ptr, ptr, float, i32 }
%struct.SmokeDomainSettings = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x i32], [3 x float], [3 x float], [4 x [4 x float]], [4 x [4 x float]], [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, float, float, i32, i32, float, float, float, i32, i32, i32, i32, i16, i16, i32, float, [3 x i32], float, i32, i32, [2 x ptr], [2 x %struct.ListBase], ptr, i32, float, float, i32, [3 x float], i32, float, float, float, float, float, [3 x float] }
%struct.FluidsimModifierData = type { %struct.ModifierData, ptr, ptr }
%struct.DynamicPaintModifierData = type { %struct.ModifierData, ptr, ptr, i32, i32 }
%struct.DynamicPaintCanvasSettings = type { ptr, ptr, %struct.ListBase, i16, i16, i32, [64 x i8] }
%struct.DynamicPaintSurface = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, i32, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x float], ptr, [64 x i8], i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, [64 x i8], [1024 x i8], [64 x i8], [64 x i8] }
%struct.DynamicPaintBrushSettings = type { ptr, ptr, ptr, ptr, i32, i32, float, float, float, float, float, float, float, float, ptr, ptr, i16, i16, i16, i16, float, float, float, float }
%struct.MeshDeformModifierData = type { %struct.ModifierData, ptr, [64 x i8], i16, i16, [2 x i16], ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32, [3 x float], float, [4 x [4 x float]], ptr, ptr, ptr }
%struct.WarpModifierData = type { %struct.ModifierData, ptr, ptr, [64 x i8], i32, i32, ptr, ptr, ptr, [64 x i8], float, float, i8, i8, [6 x i8] }
%struct.WeightVGEditModifierData = type { %struct.ModifierData, [64 x i8], i16, i16, float, ptr, float, float, float, [64 x i8], i32, ptr, ptr, i32, [64 x i8], i32 }
%struct.LaplacianDeformModifierData = type { %struct.ModifierData, [64 x i8], i32, i32, ptr, ptr, i16, [3 x i16] }
%struct.CustomDataLayer = type { i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], ptr }
%struct.MDisps = type { i32, i32, ptr, ptr }
%struct.GridPaintMask = type { ptr, i32, i32 }
%struct.BoidState = type { ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, [32 x i8], i32, i32, i32, float, i32, i32, float, float }
%struct.BoidRule = type { ptr, ptr, i32, i32, [32 x i8] }
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
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }

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
@reltable.write_sensors = private unnamed_addr constant [13 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.163 to i64), i64 ptrtoint (ptr @reltable.write_sensors to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.165 to i64), i64 ptrtoint (ptr @reltable.write_sensors to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.166 to i64), i64 ptrtoint (ptr @reltable.write_sensors to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.164 to i64), i64 ptrtoint (ptr @reltable.write_sensors to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.170 to i64), i64 ptrtoint (ptr @reltable.write_sensors to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.171 to i64), i64 ptrtoint (ptr @reltable.write_sensors to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.172 to i64), i64 ptrtoint (ptr @reltable.write_sensors to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.173 to i64), i64 ptrtoint (ptr @reltable.write_sensors to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.174 to i64), i64 ptrtoint (ptr @reltable.write_sensors to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.175 to i64), i64 ptrtoint (ptr @reltable.write_sensors to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.168 to i64), i64 ptrtoint (ptr @reltable.write_sensors to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.169 to i64), i64 ptrtoint (ptr @reltable.write_sensors to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.167 to i64), i64 ptrtoint (ptr @reltable.write_sensors to i64)) to i32)], align 4
@reltable.write_actuators = private unnamed_addr constant [26 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.182 to i64), i64 ptrtoint (ptr @reltable.write_actuators to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.183 to i64), i64 ptrtoint (ptr @reltable.write_actuators to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.180 to i64), i64 ptrtoint (ptr @reltable.write_actuators to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.185 to i64), i64 ptrtoint (ptr @reltable.write_actuators to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.180 to i64), i64 ptrtoint (ptr @reltable.write_actuators to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.181 to i64), i64 ptrtoint (ptr @reltable.write_actuators to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.184 to i64), i64 ptrtoint (ptr @reltable.write_actuators to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.180 to i64), i64 ptrtoint (ptr @reltable.write_actuators to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.180 to i64), i64 ptrtoint (ptr @reltable.write_actuators to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.186 to i64), i64 ptrtoint (ptr @reltable.write_actuators to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.187 to i64), i64 ptrtoint (ptr @reltable.write_actuators to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.188 to i64), i64 ptrtoint (ptr @reltable.write_actuators to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.189 to i64), i64 ptrtoint (ptr @reltable.write_actuators to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.190 to i64), i64 ptrtoint (ptr @reltable.write_actuators to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.191 to i64), i64 ptrtoint (ptr @reltable.write_actuators to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.180 to i64), i64 ptrtoint (ptr @reltable.write_actuators to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.180 to i64), i64 ptrtoint (ptr @reltable.write_actuators to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.192 to i64), i64 ptrtoint (ptr @reltable.write_actuators to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.193 to i64), i64 ptrtoint (ptr @reltable.write_actuators to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.194 to i64), i64 ptrtoint (ptr @reltable.write_actuators to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.195 to i64), i64 ptrtoint (ptr @reltable.write_actuators to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.180 to i64), i64 ptrtoint (ptr @reltable.write_actuators to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.196 to i64), i64 ptrtoint (ptr @reltable.write_actuators to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.197 to i64), i64 ptrtoint (ptr @reltable.write_actuators to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.198 to i64), i64 ptrtoint (ptr @reltable.write_actuators to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.199 to i64), i64 ptrtoint (ptr @reltable.write_actuators to i64)) to i32)], align 4
@reltable.write_boid_state = private unnamed_addr constant [8 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.243 to i64), i64 ptrtoint (ptr @reltable.write_boid_state to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.243 to i64), i64 ptrtoint (ptr @reltable.write_boid_state to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.244 to i64), i64 ptrtoint (ptr @reltable.write_boid_state to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.248 to i64), i64 ptrtoint (ptr @reltable.write_boid_state to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.248 to i64), i64 ptrtoint (ptr @reltable.write_boid_state to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.245 to i64), i64 ptrtoint (ptr @reltable.write_boid_state to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.246 to i64), i64 ptrtoint (ptr @reltable.write_boid_state to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.247 to i64), i64 ptrtoint (ptr @reltable.write_boid_state to i64)) to i32)], align 4
@reltable.write_linestyle_color_modifiers = private unnamed_addr constant [4 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.261 to i64), i64 ptrtoint (ptr @reltable.write_linestyle_color_modifiers to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.262 to i64), i64 ptrtoint (ptr @reltable.write_linestyle_color_modifiers to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.263 to i64), i64 ptrtoint (ptr @reltable.write_linestyle_color_modifiers to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.264 to i64), i64 ptrtoint (ptr @reltable.write_linestyle_color_modifiers to i64)) to i32)], align 4
@reltable.write_linestyle_alpha_modifiers = private unnamed_addr constant [4 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.266 to i64), i64 ptrtoint (ptr @reltable.write_linestyle_alpha_modifiers to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.267 to i64), i64 ptrtoint (ptr @reltable.write_linestyle_alpha_modifiers to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.268 to i64), i64 ptrtoint (ptr @reltable.write_linestyle_alpha_modifiers to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.269 to i64), i64 ptrtoint (ptr @reltable.write_linestyle_alpha_modifiers to i64)) to i32)], align 4
@reltable.write_linestyle_geometry_modifiers = private unnamed_addr constant [14 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.277 to i64), i64 ptrtoint (ptr @reltable.write_linestyle_geometry_modifiers to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.278 to i64), i64 ptrtoint (ptr @reltable.write_linestyle_geometry_modifiers to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.279 to i64), i64 ptrtoint (ptr @reltable.write_linestyle_geometry_modifiers to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.280 to i64), i64 ptrtoint (ptr @reltable.write_linestyle_geometry_modifiers to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.281 to i64), i64 ptrtoint (ptr @reltable.write_linestyle_geometry_modifiers to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.282 to i64), i64 ptrtoint (ptr @reltable.write_linestyle_geometry_modifiers to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.283 to i64), i64 ptrtoint (ptr @reltable.write_linestyle_geometry_modifiers to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.write_linestyle_geometry_modifiers to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.290 to i64), i64 ptrtoint (ptr @reltable.write_linestyle_geometry_modifiers to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.285 to i64), i64 ptrtoint (ptr @reltable.write_linestyle_geometry_modifiers to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.286 to i64), i64 ptrtoint (ptr @reltable.write_linestyle_geometry_modifiers to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.287 to i64), i64 ptrtoint (ptr @reltable.write_linestyle_geometry_modifiers to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.288 to i64), i64 ptrtoint (ptr @reltable.write_linestyle_geometry_modifiers to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.289 to i64), i64 ptrtoint (ptr @reltable.write_linestyle_geometry_modifiers to i64)) to i32)], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IDP_WriteProperty_OnlyData(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !34
  switch i8 %4, label %9 [
    i8 6, label %5
    i8 0, label %6
    i8 5, label %7
    i8 9, label %8
  ]

5:                                                ; preds = %2
  tail call fastcc void @IDP_WriteGroup(ptr noundef nonnull %0, ptr noundef %1) #16
  br label %9

6:                                                ; preds = %2
  tail call fastcc void @IDP_WriteString(ptr noundef nonnull %0, ptr noundef %1) #16
  br label %9

7:                                                ; preds = %2
  tail call fastcc void @IDP_WriteArray(ptr noundef nonnull %0, ptr noundef %1) #16
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @IDP_WriteIDPArray(ptr noundef nonnull %0, ptr noundef %1) #16
  br label %9

9:                                                ; preds = %2, %8, %7, %6, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @IDP_WriteGroup(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !43 {
  %3 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %8, %6 ], [ %4, %2 ]
  tail call void @IDP_WriteProperty(ptr noundef nonnull %7, ptr noundef %1) #16
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %6, !llvm.loop !45

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @IDP_WriteString(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !47 {
  %3 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  tail call fastcc void @writedata(ptr noundef %1, i32 noundef 1096040772, i32 noundef %4, ptr noundef %6) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @IDP_WriteArray(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !50 {
  %3 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !44
  %8 = tail call i64 %7(ptr noundef nonnull %4) #17
  %9 = trunc i64 %8 to i32
  %10 = load ptr, ptr %3, align 8, !tbaa !49
  tail call fastcc void @writedata(ptr noundef %1, i32 noundef 1096040772, i32 noundef %9, ptr noundef %10) #16
  %11 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 3
  %12 = load i8, ptr %11, align 1, !tbaa !51
  %13 = icmp eq i8 %12, 6
  br i1 %13, label %14, label %27

14:                                               ; preds = %6
  %15 = load ptr, ptr %3, align 8, !tbaa !49
  %16 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %17 = load i32, ptr %16, align 8, !tbaa !48
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %14 ]
  %21 = getelementptr inbounds ptr, ptr %15, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  tail call void @IDP_WriteProperty(ptr noundef %22, ptr noundef %1) #16
  %23 = add nuw nsw i64 %20, 1
  %24 = load i32, ptr %16, align 8, !tbaa !48
  %25 = sext i32 %24 to i64
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %19, label %27, !llvm.loop !52

27:                                               ; preds = %19, %14, %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @IDP_WriteIDPArray(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !53 {
  %3 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !48
  tail call fastcc void @writestruct(ptr noundef %1, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef %8, ptr noundef nonnull %4) #16
  %9 = load i32, ptr %7, align 8, !tbaa !48
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %6, %11
  %12 = phi i64 [ %14, %11 ], [ 0, %6 ]
  %13 = getelementptr inbounds %struct.IDProperty, ptr %4, i64 %12
  tail call void @IDP_WriteProperty_OnlyData(ptr noundef nonnull %13, ptr noundef %1) #16
  %14 = add nuw nsw i64 %12, 1
  %15 = load i32, ptr %7, align 8, !tbaa !48
  %16 = sext i32 %15 to i64
  %17 = icmp slt i64 %14, %16
  br i1 %17, label %11, label %18, !llvm.loop !54

18:                                               ; preds = %11, %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IDP_WriteProperty(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @writestruct(ptr noundef %1, i32 noundef 1096040772, ptr noundef nonnull @.str, i32 noundef 1, ptr noundef %0) #16
  tail call void @IDP_WriteProperty_OnlyData(ptr noundef %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @writestruct(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !55 {
  tail call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @BLO_write_file(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [1025 x i8], align 16
  %7 = alloca %struct.WriteWrap, align 8
  %8 = alloca [1024 x i8], align 16
  %9 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1025, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #18
  %10 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 1025, ptr noundef nonnull @.str.1, ptr noundef %1) #17
  %11 = and i32 %2, 2
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 1, i32 2
  call fastcc void @ww_handle_init(i32 noundef %13, ptr noundef nonnull %7) #16
  %14 = load ptr, ptr %7, align 8, !tbaa !56
  %15 = call zeroext i8 %14(ptr noundef nonnull %7, ptr noundef nonnull %6) #17
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = tail call ptr @__errno_location() #19
  %19 = load i32, ptr %18, align 4, !tbaa !58
  %20 = call ptr @strerror(i32 noundef %19) #17
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull %6, ptr noundef %20) #17
  br label %75

21:                                               ; preds = %5
  %22 = and i32 %2, 150994944
  %23 = icmp eq i32 %22, 150994944
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call ptr @BKE_bpath_list_backup(ptr noundef %0, i32 noundef 20) #17
  br label %29

26:                                               ; preds = %21
  %27 = and i32 %2, 16777216
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %47, label %29

29:                                               ; preds = %24, %26
  %30 = phi ptr [ %25, %24 ], [ null, %26 ]
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %9) #18
  call void @BLI_split_dir_part(ptr noundef %1, ptr noundef nonnull %8, i64 noundef 1024) #17
  %31 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 2
  call void @BLI_split_dir_part(ptr noundef nonnull %31, ptr noundef nonnull %9, i64 noundef 1024) #17
  call void @BLI_cleanup_dir(ptr noundef nonnull %31, ptr noundef nonnull %8) #17
  call void @BLI_cleanup_dir(ptr noundef nonnull %31, ptr noundef nonnull %9) #17
  %32 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !59
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %9) #20
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = and i32 %2, -16777217
  br label %42

39:                                               ; preds = %34
  %40 = load ptr, ptr @G, align 8, !tbaa !61
  %41 = getelementptr inbounds %struct.Main, ptr %40, i64 0, i32 2
  call void @BKE_bpath_absolute_convert(ptr noundef %0, ptr noundef nonnull %41, ptr noundef null) #17
  br label %42

42:                                               ; preds = %37, %39, %29
  %43 = phi i32 [ %38, %37 ], [ %2, %39 ], [ %2, %29 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %8) #18
  %44 = and i32 %43, 16777216
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  call void @BKE_bpath_relative_convert(ptr noundef %0, ptr noundef %1, ptr noundef null) #17
  br label %47

47:                                               ; preds = %26, %46, %42
  %48 = phi i32 [ %43, %46 ], [ %43, %42 ], [ %2, %26 ]
  %49 = phi ptr [ %30, %46 ], [ %30, %42 ], [ null, %26 ]
  %50 = and i32 %48, 512
  %51 = call fastcc i32 @write_file_handle(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null, ptr noundef null, i32 noundef %50, i32 noundef %48, ptr noundef %4) #16
  %52 = getelementptr inbounds %struct.WriteWrap, ptr %7, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !62
  %54 = call zeroext i8 %53(ptr noundef nonnull %7) #17
  %55 = icmp eq ptr %49, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %47
  call void @BKE_bpath_list_restore(ptr noundef %0, i32 noundef 20, ptr noundef nonnull %49) #17
  call void @BKE_bpath_list_free(ptr noundef nonnull %49) #17
  br label %57

57:                                               ; preds = %56, %47
  %58 = icmp eq i32 %51, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %57
  %60 = tail call ptr @__errno_location() #19
  %61 = load i32, ptr %60, align 4, !tbaa !58
  %62 = call ptr @strerror(i32 noundef %61) #17
  call void @BKE_report(ptr noundef %3, i32 noundef 32, ptr noundef %62) #17
  %63 = call i32 @remove(ptr noundef nonnull %6) #17
  br label %75

64:                                               ; preds = %57
  %65 = and i32 %48, 33554432
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = call fastcc zeroext i8 @do_history(ptr noundef %1, ptr noundef %3) #16, !range !63
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  call void @BKE_report(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.3) #17
  br label %75

71:                                               ; preds = %67, %64
  %72 = call i32 @BLI_rename(ptr noundef nonnull %6, ptr noundef %1) #17
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  call void @BKE_report(ptr noundef %3, i32 noundef 32, ptr noundef nonnull @.str.4) #17
  br label %75

75:                                               ; preds = %70, %71, %74, %59, %17
  %76 = phi i32 [ 0, %17 ], [ 0, %59 ], [ 0, %74 ], [ 0, %70 ], [ 1, %71 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 1025, ptr nonnull %6) #18
  ret i32 %76
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @ww_handle_init(i32 noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #3 !PGOFuncName !64 {
  %3 = getelementptr inbounds i8, ptr %1, i64 24
  store i64 0, ptr %3, align 8
  %4 = icmp eq i32 %0, 2
  %5 = select i1 %4, ptr @ww_open_zlib, ptr @ww_open_none
  %6 = select i1 %4, ptr @ww_close_zlib, ptr @ww_close_none
  %7 = select i1 %4, ptr @ww_write_zlib, ptr @ww_write_none
  store ptr %5, ptr %1, align 8
  %8 = getelementptr inbounds %struct.WriteWrap, ptr %1, i64 0, i32 1
  store ptr %6, ptr %8, align 8
  %9 = getelementptr inbounds %struct.WriteWrap, ptr %1, i64 0, i32 2
  store ptr %7, ptr %9, align 8
  ret void
}

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare ptr @strerror(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @BKE_bpath_list_backup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_split_dir_part(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_cleanup_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @BKE_bpath_absolute_convert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BKE_bpath_relative_convert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @write_file_handle(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #0 !PGOFuncName !65 {
  %8 = alloca %struct.BHead, align 8
  %9 = alloca %struct.ListBase, align 8
  %10 = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #18
  call void @blo_split_main(ptr noundef nonnull %9, ptr noundef %0) #17
  %11 = call fastcc ptr @bgnwrite(ptr noundef %1, ptr noundef %2, ptr noundef %3) #16
  %12 = lshr i32 %5, 26
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = getelementptr inbounds %struct.WriteData, ptr %11, i64 0, i32 10
  store i8 %14, ptr %15, align 8, !tbaa !66
  %16 = icmp eq ptr %3, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %7
  call fastcc void @customnodes_add_deprecated_data(ptr noundef %0) #16
  br label %18

18:                                               ; preds = %17, %7
  %19 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef 45, i32 noundef 118, i32 noundef 272) #17
  call fastcc void @mywrite(ptr noundef nonnull %11, ptr noundef nonnull %10, i32 noundef 12) #16
  call fastcc void @write_renderinfo(ptr noundef nonnull %11, ptr noundef %0) #16
  call fastcc void @write_thumb(ptr noundef nonnull %11, ptr noundef %6) #16
  call fastcc void @write_global(ptr noundef nonnull %11, i32 noundef %5, ptr noundef %0) #16
  %20 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 40
  call fastcc void @write_windowmanagers(ptr noundef nonnull %11, ptr noundef nonnull %20) #16
  %21 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 26
  call fastcc void @write_screens(ptr noundef nonnull %11, ptr noundef nonnull %21) #16
  %22 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 42
  call fastcc void @write_movieclips(ptr noundef nonnull %11, ptr noundef nonnull %22) #16
  %23 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 43
  call fastcc void @write_masks(ptr noundef nonnull %11, ptr noundef nonnull %23) #16
  %24 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 11
  call fastcc void @write_scenes(ptr noundef nonnull %11, ptr noundef nonnull %24) #16
  %25 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 15
  call fastcc void @write_curves(ptr noundef nonnull %11, ptr noundef nonnull %25) #16
  %26 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 16
  call fastcc void @write_mballs(ptr noundef nonnull %11, ptr noundef nonnull %26) #16
  %27 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 19
  call fastcc void @write_images(ptr noundef nonnull %11, ptr noundef nonnull %27) #16
  %28 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 22
  call fastcc void @write_cameras(ptr noundef nonnull %11, ptr noundef nonnull %28) #16
  %29 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 21
  call fastcc void @write_lamps(ptr noundef nonnull %11, ptr noundef nonnull %29) #16
  %30 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 20
  call fastcc void @write_lattices(ptr noundef nonnull %11, ptr noundef nonnull %30) #16
  %31 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 28
  call fastcc void @write_vfonts(ptr noundef nonnull %11, ptr noundef nonnull %31) #16
  %32 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 24
  call fastcc void @write_keys(ptr noundef nonnull %11, ptr noundef nonnull %32) #16
  %33 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 25
  call fastcc void @write_worlds(ptr noundef nonnull %11, ptr noundef nonnull %33) #16
  %34 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 29
  call fastcc void @write_texts(ptr noundef nonnull %11, ptr noundef nonnull %34) #16
  %35 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 30
  call fastcc void @write_speakers(ptr noundef nonnull %11, ptr noundef nonnull %35) #16
  %36 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 31
  call fastcc void @write_sounds(ptr noundef nonnull %11, ptr noundef nonnull %36) #16
  %37 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 32
  call fastcc void @write_groups(ptr noundef nonnull %11, ptr noundef nonnull %37) #16
  %38 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 33
  call fastcc void @write_armatures(ptr noundef nonnull %11, ptr noundef nonnull %38) #16
  %39 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 34
  call fastcc void @write_actions(ptr noundef nonnull %11, ptr noundef nonnull %39) #16
  %40 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 13
  call fastcc void @write_objects(ptr noundef nonnull %11, ptr noundef nonnull %40) #16
  %41 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 17
  call fastcc void @write_materials(ptr noundef nonnull %11, ptr noundef nonnull %41) #16
  %42 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 18
  call fastcc void @write_textures(ptr noundef nonnull %11, ptr noundef nonnull %42) #16
  %43 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 14
  call fastcc void @write_meshes(ptr noundef nonnull %11, ptr noundef nonnull %43) #16
  %44 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 37
  call fastcc void @write_particlesettings(ptr noundef nonnull %11, ptr noundef nonnull %44) #16
  %45 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 35
  call fastcc void @write_nodetrees(ptr noundef nonnull %11, ptr noundef nonnull %45) #16
  %46 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 36
  call fastcc void @write_brushes(ptr noundef nonnull %11, ptr noundef nonnull %46) #16
  %47 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 38
  call fastcc void @write_palettes(ptr noundef nonnull %11, ptr noundef nonnull %47) #16
  %48 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 39
  call fastcc void @write_paintcurves(ptr noundef nonnull %11, ptr noundef nonnull %48) #16
  %49 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 27
  call fastcc void @write_scripts(ptr noundef nonnull %11, ptr noundef nonnull %49) #16
  %50 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 41
  call fastcc void @write_gpencils(ptr noundef nonnull %11, ptr noundef nonnull %50) #16
  %51 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 44
  call fastcc void @write_linestyles(ptr noundef nonnull %11, ptr noundef nonnull %51) #16
  %52 = load ptr, ptr %0, align 8, !tbaa !68
  call fastcc void @write_libraries(ptr noundef nonnull %11, ptr noundef %52) #16
  %53 = icmp eq i32 %4, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %18
  call fastcc void @write_userdef(ptr noundef nonnull %11) #16
  br label %55

55:                                               ; preds = %54, %18
  %56 = load ptr, ptr %11, align 8, !tbaa !71
  %57 = getelementptr inbounds %struct.SDNA, ptr %56, i64 0, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !72
  %59 = load ptr, ptr %56, align 8, !tbaa !74
  call fastcc void @writedata(ptr noundef nonnull %11, i32 noundef 826363460, i32 noundef %58, ptr noundef %59) #16
  br i1 %16, label %60, label %61

60:                                               ; preds = %55
  call fastcc void @customnodes_free_deprecated_data(ptr noundef nonnull %0) #16
  br label %61

61:                                               ; preds = %60, %55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  store i32 1111772741, ptr %8, align 8, !tbaa !75
  call fastcc void @mywrite(ptr noundef nonnull %11, ptr noundef nonnull %8, i32 noundef 24) #16
  call void @blo_join_main(ptr noundef nonnull %9) #17
  %62 = call fastcc i32 @endwrite(ptr noundef nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #18
  ret i32 %62
}

; Function Attrs: optsize
declare void @BKE_bpath_list_restore(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_bpath_list_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @remove(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @do_history(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !77 {
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #18
  %5 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 18), align 4, !tbaa !78
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %2
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #20
  %9 = icmp ult i64 %8, 2
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = sext i16 %5 to i32
  br label %13

12:                                               ; preds = %7
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.302) #17
  br label %28

13:                                               ; preds = %10, %16
  %14 = phi i32 [ %17, %16 ], [ %11, %10 ]
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = add nsw i32 %14, -1
  %18 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 1024, ptr noundef nonnull @.str.303, ptr noundef %0, i32 noundef %17) #17
  %19 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 1024, ptr noundef nonnull @.str.303, ptr noundef %0, i32 noundef %14) #17
  %20 = call i32 @BLI_rename(ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %13, label %22, !llvm.loop !83

22:                                               ; preds = %16
  call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.304) #17
  br label %28

23:                                               ; preds = %13
  %24 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %3, i64 noundef 1024, ptr noundef nonnull @.str.303, ptr noundef %0, i32 noundef %14) #17
  %25 = call i32 @BLI_rename(ptr noundef %0, ptr noundef nonnull %3) #17
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.304) #17
  br label %28

28:                                               ; preds = %23, %2, %27, %22, %12
  %29 = phi i8 [ 1, %12 ], [ 1, %22 ], [ 1, %27 ], [ 0, %2 ], [ 0, %23 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #18
  ret i8 %29
}

; Function Attrs: optsize
declare i32 @BLI_rename(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BLO_write_file_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc i32 @write_file_handle(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef %3, ptr noundef null) #16
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @writedata(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !84 {
  %5 = alloca %struct.BHead, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  %6 = icmp eq ptr %3, null
  %7 = icmp eq i32 %2, 0
  %8 = or i1 %7, %6
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = add nsw i32 %2, 3
  %11 = and i32 %10, -4
  store i32 %1, ptr %5, align 8, !tbaa !75
  %12 = getelementptr inbounds %struct.BHead, ptr %5, i64 0, i32 2
  store ptr %3, ptr %12, align 8, !tbaa !85
  %13 = getelementptr inbounds %struct.BHead, ptr %5, i64 0, i32 4
  store i32 1, ptr %13, align 4, !tbaa !86
  %14 = getelementptr inbounds %struct.BHead, ptr %5, i64 0, i32 3
  store i32 0, ptr %14, align 8, !tbaa !87
  %15 = getelementptr inbounds %struct.BHead, ptr %5, i64 0, i32 1
  store i32 %11, ptr %15, align 4, !tbaa !88
  call fastcc void @mywrite(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 24) #16
  call fastcc void @mywrite(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %11) #16
  br label %16

16:                                               ; preds = %4, %9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mywrite(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !89 {
  %4 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !90
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %52

7:                                                ; preds = %3
  %8 = icmp eq ptr %1, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !91
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %52, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !92
  tail call fastcc void @writedata_do_write(ptr noundef nonnull %0, ptr noundef %15, i32 noundef %11) #16
  store i32 0, ptr %10, align 4, !tbaa !91
  br label %52

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !93
  %19 = add nsw i32 %18, %2
  store i32 %19, ptr %17, align 8, !tbaa !93
  %20 = icmp sgt i32 %2, 32768
  %21 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 6
  %22 = load i32, ptr %21, align 4, !tbaa !91
  br i1 %20, label %23, label %37

23:                                               ; preds = %16
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !92
  tail call fastcc void @writedata_do_write(ptr noundef nonnull %0, ptr noundef %27, i32 noundef %22) #16
  store i32 0, ptr %21, align 4, !tbaa !91
  br label %28

28:                                               ; preds = %25, %23
  br label %29

29:                                               ; preds = %28, %29
  %30 = phi i32 [ %35, %29 ], [ %2, %28 ]
  %31 = phi ptr [ %34, %29 ], [ %1, %28 ]
  %32 = tail call i32 @llvm.smin.i32(i32 %30, i32 32768)
  tail call fastcc void @writedata_do_write(ptr noundef %0, ptr noundef %31, i32 noundef %32) #16
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds i8, ptr %31, i64 %33
  %35 = sub nsw i32 %30, %32
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %29, label %52, !llvm.loop !94

37:                                               ; preds = %16
  %38 = add nsw i32 %22, %2
  %39 = icmp sgt i32 %38, 99999
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !92
  tail call fastcc void @writedata_do_write(ptr noundef nonnull %0, ptr noundef %42, i32 noundef %22) #16
  store i32 0, ptr %21, align 4, !tbaa !91
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi i32 [ 0, %40 ], [ %22, %37 ]
  %45 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !92
  %47 = sext i32 %44 to i64
  %48 = getelementptr inbounds i8, ptr %46, i64 %47
  %49 = sext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %48, ptr nonnull align 1 %1, i64 %49, i1 false)
  %50 = load i32, ptr %21, align 4, !tbaa !91
  %51 = add nsw i32 %50, %2
  store i32 %51, ptr %21, align 4, !tbaa !91
  br label %52

52:                                               ; preds = %29, %9, %13, %3, %43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @writedata_do_write(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !95 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !90
  %8 = icmp ne i32 %7, 0
  %9 = icmp eq ptr %1, null
  %10 = or i1 %9, %8
  %11 = icmp slt i32 %2, 1
  %12 = or i1 %11, %10
  br i1 %12, label %27, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !96
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @add_memfilechunk(ptr noundef null, ptr noundef nonnull %15, ptr noundef nonnull %1, i32 noundef %2) #17
  br label %27

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !97
  %21 = getelementptr inbounds %struct.WriteWrap, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !98
  %23 = zext nneg i32 %2 to i64
  %24 = tail call i64 %22(ptr noundef %20, ptr noundef nonnull %1, i64 noundef %23) #17
  %25 = icmp eq i64 %24, %23
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  store i32 1, ptr %6, align 8, !tbaa !90
  br label %27

27:                                               ; preds = %18, %26, %3, %5, %17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: optsize
declare void @add_memfilechunk(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 !PGOFuncName !99 {
  %7 = alloca %struct.BHead, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #18
  %8 = icmp eq ptr %4, null
  %9 = icmp eq ptr %5, null
  %10 = or i1 %8, %9
  %11 = icmp eq i32 %3, 0
  %12 = or i1 %11, %10
  br i1 %12, label %41, label %13

13:                                               ; preds = %6
  store i32 %1, ptr %7, align 8, !tbaa !75
  %14 = getelementptr inbounds %struct.BHead, ptr %7, i64 0, i32 2
  store ptr %4, ptr %14, align 8, !tbaa !85
  %15 = getelementptr inbounds %struct.BHead, ptr %7, i64 0, i32 4
  store i32 %3, ptr %15, align 4, !tbaa !86
  %16 = load ptr, ptr %0, align 8, !tbaa !71
  %17 = tail call i32 @DNA_struct_find_nr(ptr noundef %16, ptr noundef %2) #17
  %18 = getelementptr inbounds %struct.BHead, ptr %7, i64 0, i32 3
  store i32 %17, ptr %18, align 8, !tbaa !87
  %19 = icmp eq i32 %17, -1
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef %2) #16
  br label %41

22:                                               ; preds = %13
  %23 = load ptr, ptr %0, align 8, !tbaa !71
  %24 = getelementptr inbounds %struct.SDNA, ptr %23, i64 0, i32 9
  %25 = load ptr, ptr %24, align 8, !tbaa !100
  %26 = sext i32 %17 to i64
  %27 = getelementptr inbounds ptr, ptr %25, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !44
  %29 = getelementptr inbounds %struct.SDNA, ptr %23, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !101
  %31 = load i16, ptr %28, align 2, !tbaa !102
  %32 = sext i16 %31 to i64
  %33 = getelementptr inbounds i16, ptr %30, i64 %32
  %34 = load i16, ptr %33, align 2, !tbaa !102
  %35 = sext i16 %34 to i32
  %36 = mul nsw i32 %35, %3
  %37 = getelementptr inbounds %struct.BHead, ptr %7, i64 0, i32 1
  store i32 %36, ptr %37, align 4, !tbaa !88
  %38 = icmp eq i32 %36, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %22
  call fastcc void @mywrite(ptr noundef nonnull %0, ptr noundef nonnull %7, i32 noundef 24) #16
  %40 = load i32, ptr %37, align 4, !tbaa !88
  call fastcc void @mywrite(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef %40) #16
  br label %41

41:                                               ; preds = %22, %6, %39, %20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #18
  ret void
}

; Function Attrs: optsize
declare i32 @DNA_struct_find_nr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @ww_open_zlib(ptr nocapture noundef writeonly %0, ptr noundef %1) #0 !PGOFuncName !103 {
  %3 = tail call ptr @BLI_gzopen(ptr noundef %1, ptr noundef nonnull @.str.6) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.WriteWrap, ptr %0, i64 0, i32 3
  store ptr %3, ptr %6, align 8, !tbaa !104
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i8 [ 1, %5 ], [ 0, %2 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @ww_close_zlib(ptr nocapture noundef readonly %0) #0 !PGOFuncName !105 {
  %2 = getelementptr inbounds %struct.WriteWrap, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !104
  %4 = tail call i32 @gzclose(ptr noundef %3) #17
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i64 @ww_write_zlib(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2) #0 !PGOFuncName !106 {
  %4 = getelementptr inbounds %struct.WriteWrap, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !104
  %6 = trunc i64 %2 to i32
  %7 = tail call i32 @gzwrite(ptr noundef %5, ptr noundef %1, i32 noundef %6) #17
  %8 = sext i32 %7 to i64
  ret i64 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @ww_open_none(ptr nocapture noundef writeonly %0, ptr noundef %1) #0 !PGOFuncName !107 {
  %3 = tail call i32 @BLI_open(ptr noundef %1, i32 noundef 577, i32 noundef 438) #17
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.WriteWrap, ptr %0, i64 0, i32 3
  store i32 %3, ptr %6, align 8, !tbaa !104
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i8 [ 1, %5 ], [ 0, %2 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @ww_close_none(ptr nocapture noundef readonly %0) #0 !PGOFuncName !108 {
  %2 = getelementptr inbounds %struct.WriteWrap, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !104
  %4 = tail call i32 @close(i32 noundef %3) #17
  %5 = icmp ne i32 %4, -1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal noundef i64 @ww_write_none(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) #10 !PGOFuncName !109 {
  %4 = getelementptr inbounds %struct.WriteWrap, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !104
  %6 = tail call i64 @write(i32 noundef %5, ptr noundef %1, i64 noundef %2) #17
  ret i64 %6
}

; Function Attrs: optsize
declare ptr @BLI_gzopen(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @gzclose(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @gzwrite(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree optsize
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare void @blo_split_main(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bgnwrite(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !110 {
  %4 = tail call fastcc ptr @writedata_new(ptr noundef %0) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.WriteData, ptr %4, i64 0, i32 3
  store ptr %1, ptr %7, align 8, !tbaa !111
  %8 = getelementptr inbounds %struct.WriteData, ptr %4, i64 0, i32 4
  store ptr %2, ptr %8, align 8, !tbaa !96
  tail call void @add_memfilechunk(ptr noundef %1, ptr noundef null, ptr noundef null, i32 noundef 0) #17
  br label %9

9:                                                ; preds = %3, %6
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @customnodes_add_deprecated_data(ptr noundef %0) unnamed_addr #0 !PGOFuncName !112 {
  %2 = alloca %struct.NodeTreeIterStore, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %2, ptr noundef %0) #17
  %5 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %6 = icmp eq i8 %5, 1
  br i1 %6, label %7, label %74

7:                                                ; preds = %1, %71
  %8 = load ptr, ptr %3, align 8, !tbaa !44
  %9 = icmp eq ptr %8, null
  br i1 %9, label %71, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.bNodeTree, ptr %8, i64 0, i32 8, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !113
  %13 = load ptr, ptr %4, align 8, !tbaa !44
  %14 = icmp eq ptr %13, %8
  br i1 %14, label %15, label %71

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.bNodeTree, ptr %8, i64 0, i32 8
  br label %17

17:                                               ; preds = %69, %15
  %18 = phi ptr [ %16, %15 ], [ %19, %69 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = icmp eq ptr %19, null
  br i1 %20, label %71, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.bNodeLink, ptr %19, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !118
  %24 = getelementptr inbounds %struct.bNodeLink, ptr %19, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !120
  %26 = getelementptr inbounds %struct.bNodeLink, ptr %19, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !121
  %28 = getelementptr inbounds %struct.bNodeLink, ptr %19, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !122
  %30 = getelementptr inbounds %struct.bNode, ptr %23, i64 0, i32 8
  %31 = load i16, ptr %30, align 4, !tbaa !123
  %32 = icmp eq i16 %31, 7
  br i1 %32, label %33, label %37

33:                                               ; preds = %21
  %34 = load ptr, ptr %3, align 8, !tbaa !44
  %35 = getelementptr inbounds %struct.bNodeSocket, ptr %27, i64 0, i32 4
  %36 = call ptr @ntreeFindSocketInterface(ptr noundef %34, i32 noundef 1, ptr noundef nonnull %35) #17
  br label %37

37:                                               ; preds = %33, %21
  %38 = phi ptr [ null, %33 ], [ %23, %21 ]
  %39 = phi ptr [ %36, %33 ], [ %27, %21 ]
  %40 = getelementptr inbounds %struct.bNode, ptr %25, i64 0, i32 8
  %41 = load i16, ptr %40, align 4, !tbaa !123
  %42 = icmp eq i16 %41, 8
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.bNode, ptr %25, i64 0, i32 7
  %45 = load i32, ptr %44, align 8, !tbaa !125
  %46 = and i32 %45, 64
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr %3, align 8, !tbaa !44
  %50 = getelementptr inbounds %struct.bNodeSocket, ptr %29, i64 0, i32 4
  %51 = call ptr @ntreeFindSocketInterface(ptr noundef %49, i32 noundef 2, ptr noundef nonnull %50) #17
  br label %54

52:                                               ; preds = %43, %37
  %53 = icmp eq ptr %38, null
  br i1 %53, label %54, label %69

54:                                               ; preds = %48, %52
  %55 = phi ptr [ %51, %48 ], [ %29, %52 ]
  %56 = phi ptr [ null, %48 ], [ %25, %52 ]
  %57 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %58 = call ptr %57(i64 noundef 56, ptr noundef nonnull @.str.10) #17
  %59 = getelementptr inbounds %struct.bNodeLink, ptr %58, i64 0, i32 2
  store ptr %38, ptr %59, align 8, !tbaa !118
  %60 = getelementptr inbounds %struct.bNodeLink, ptr %58, i64 0, i32 4
  store ptr %39, ptr %60, align 8, !tbaa !121
  %61 = getelementptr inbounds %struct.bNodeLink, ptr %58, i64 0, i32 3
  store ptr %56, ptr %61, align 8, !tbaa !120
  %62 = getelementptr inbounds %struct.bNodeLink, ptr %58, i64 0, i32 5
  store ptr %55, ptr %62, align 8, !tbaa !122
  %63 = getelementptr inbounds %struct.bNodeSocket, ptr %55, i64 0, i32 23
  store ptr %58, ptr %63, align 8, !tbaa !126
  %64 = getelementptr inbounds %struct.bNodeLink, ptr %58, i64 0, i32 6
  %65 = load i32, ptr %64, align 8, !tbaa !129
  %66 = or i32 %65, 2
  store i32 %66, ptr %64, align 8, !tbaa !129
  %67 = load ptr, ptr %3, align 8, !tbaa !44
  %68 = getelementptr inbounds %struct.bNodeTree, ptr %67, i64 0, i32 8
  call void @BLI_addtail(ptr noundef nonnull %68, ptr noundef %58) #17
  br label %69

69:                                               ; preds = %52, %54
  %70 = icmp eq ptr %19, %12
  br i1 %70, label %71, label %17

71:                                               ; preds = %69, %17, %7, %10
  %72 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %73 = icmp eq i8 %72, 1
  br i1 %73, label %7, label %74, !llvm.loop !130

74:                                               ; preds = %71, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #18
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_renderinfo(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !131 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.RenderInfo, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #18
  call fastcc void @current_screen_compat(ptr noundef %1, ptr noundef nonnull %3) #16
  %5 = load ptr, ptr %3, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bScreen, ptr %5, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !132
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi ptr [ %9, %7 ], [ null, %2 ]
  %12 = getelementptr inbounds %struct.Main, ptr %1, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  %14 = icmp eq ptr %13, null
  br i1 %14, label %37, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.RenderInfo, ptr %4, i64 0, i32 2
  br label %17

17:                                               ; preds = %15, %34
  %18 = phi ptr [ %13, %15 ], [ %35, %34 ]
  %19 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !134
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = icmp eq ptr %18, %11
  br i1 %23, label %29, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.Scene, ptr %18, i64 0, i32 22, i32 46
  %26 = load i32, ptr %25, align 4, !tbaa !152
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24, %22
  %30 = getelementptr inbounds %struct.Scene, ptr %18, i64 0, i32 22, i32 6
  %31 = load <2 x i32>, ptr %30, align 4, !tbaa !58
  store <2 x i32> %31, ptr %4, align 8, !tbaa !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %16, i8 0, i64 64, i1 false)
  %32 = getelementptr inbounds %struct.ID, ptr %18, i64 0, i32 4, i64 2
  %33 = call ptr @BLI_strncpy(ptr noundef nonnull %16, ptr noundef nonnull %32, i64 noundef 64) #17
  call fastcc void @writedata(ptr noundef %0, i32 noundef 1145980242, i32 noundef 72, ptr noundef nonnull %4) #16
  br label %34

34:                                               ; preds = %17, %24, %29
  %35 = load ptr, ptr %18, align 8, !tbaa !44
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %17, !llvm.loop !153

37:                                               ; preds = %34, %10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_thumb(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !154 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 4, !tbaa !58
  %6 = getelementptr inbounds i32, ptr %1, i64 1
  %7 = load i32, ptr %6, align 4, !tbaa !58
  %8 = shl i32 %5, 2
  %9 = mul i32 %8, %7
  %10 = add i32 %9, 8
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1414743380, i32 noundef %10, ptr noundef nonnull %1) #16
  br label %11

11:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_global(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !155 {
  %4 = alloca %struct.FileGlobal, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [8 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 1088, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %7 = getelementptr inbounds %struct.FileGlobal, ptr %4, i64 0, i32 2
  store i16 0, ptr %7, align 2, !tbaa !156
  %8 = getelementptr inbounds %struct.FileGlobal, ptr %4, i64 0, i32 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %8, i8 0, i64 1040, i1 false)
  call fastcc void @current_screen_compat(ptr noundef %2, ptr noundef nonnull %5) #16
  %9 = load ptr, ptr %5, align 8, !tbaa !44
  %10 = getelementptr inbounds %struct.FileGlobal, ptr %4, i64 0, i32 7
  store ptr %9, ptr %10, align 8, !tbaa !158
  %11 = icmp eq ptr %9, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.bScreen, ptr %9, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !132
  br label %15

15:                                               ; preds = %3, %12
  %16 = phi ptr [ %14, %12 ], [ null, %3 ]
  %17 = getelementptr inbounds %struct.FileGlobal, ptr %4, i64 0, i32 13
  %18 = getelementptr inbounds %struct.FileGlobal, ptr %4, i64 0, i32 8
  store ptr %16, ptr %18, align 8, !tbaa !159
  %19 = getelementptr inbounds %struct.FileGlobal, ptr %4, i64 0, i32 5
  %20 = load <2 x i16>, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 11), align 2, !tbaa !102
  %21 = shufflevector <2 x i16> %20, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i16> %21, ptr %19, align 4, !tbaa !102
  %22 = and i32 %1, -218104833
  %23 = getelementptr inbounds %struct.FileGlobal, ptr %4, i64 0, i32 9
  store i32 %22, ptr %23, align 8, !tbaa !160
  %24 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 15), align 8, !tbaa !161
  %25 = getelementptr inbounds %struct.FileGlobal, ptr %4, i64 0, i32 10
  store i32 %24, ptr %25, align 4, !tbaa !162
  %26 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 2
  %27 = call ptr @BLI_strncpy(ptr noundef nonnull %17, ptr noundef nonnull %26, i64 noundef 1024) #17
  %28 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef 1) #17
  %29 = load i32, ptr %6, align 4
  store i32 %29, ptr %4, align 8
  %30 = getelementptr inbounds %struct.FileGlobal, ptr %4, i64 0, i32 1
  store i16 1, ptr %30, align 4, !tbaa !163
  %31 = getelementptr inbounds %struct.FileGlobal, ptr %4, i64 0, i32 3
  store i16 270, ptr %31, align 8, !tbaa !164
  %32 = getelementptr inbounds %struct.FileGlobal, ptr %4, i64 0, i32 4
  store i16 5, ptr %32, align 2, !tbaa !165
  %33 = getelementptr inbounds %struct.FileGlobal, ptr %4, i64 0, i32 11
  store i64 0, ptr %33, align 8, !tbaa !166
  %34 = call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef nonnull @.str.12, i64 noundef 16) #17
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1112493127, ptr noundef nonnull @.str.13, i32 noundef 1, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 1088, ptr nonnull %4) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_windowmanagers(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !167 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %8

5:                                                ; preds = %13, %8
  %6 = load ptr, ptr %9, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8, !llvm.loop !168

8:                                                ; preds = %2, %5
  %9 = phi ptr [ %6, %5 ], [ %3, %2 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 19799, ptr noundef nonnull @.str.14, i32 noundef 1, ptr noundef nonnull %9) #16
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = icmp eq ptr %11, null
  br i1 %12, label %5, label %13

13:                                               ; preds = %8, %13
  %14 = phi ptr [ %15, %13 ], [ %11, %8 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.15, i32 noundef 1, ptr noundef nonnull %14) #16
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = icmp eq ptr %15, null
  br i1 %16, label %5, label %13, !llvm.loop !169

17:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_screens(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !170 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  store ptr null, ptr %3, align 8, !tbaa !44
  %5 = load ptr, ptr %1, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %176, label %10

7:                                                ; preds = %36, %32
  %8 = load ptr, ptr %11, align 8, !tbaa !44
  %9 = icmp eq ptr %8, null
  br i1 %9, label %174, label %10, !llvm.loop !171

10:                                               ; preds = %2, %7
  %11 = phi ptr [ %8, %7 ], [ %5, %2 ]
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 20051, ptr noundef nonnull @.str.16, i32 noundef 1, ptr noundef nonnull %11) #16
  %12 = getelementptr inbounds %struct.ID, ptr %11, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !172
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  call void @IDP_WriteProperty(ptr noundef nonnull %13, ptr noundef %0) #16
  br label %16

16:                                               ; preds = %15, %10
  %17 = getelementptr inbounds %struct.bScreen, ptr %11, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16, %20
  %21 = phi ptr [ %22, %20 ], [ %18, %16 ]
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.17, i32 noundef 1, ptr noundef nonnull %21) #16
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %20, !llvm.loop !173

24:                                               ; preds = %20, %16
  %25 = getelementptr inbounds %struct.bScreen, ptr %11, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !44
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24, %28
  %29 = phi ptr [ %30, %28 ], [ %26, %24 ]
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.18, i32 noundef 1, ptr noundef nonnull %29) #16
  %30 = load ptr, ptr %29, align 8, !tbaa !44
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %28, !llvm.loop !174

32:                                               ; preds = %28, %24
  %33 = getelementptr inbounds %struct.bScreen, ptr %11, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !44
  %35 = icmp eq ptr %34, null
  br i1 %35, label %7, label %39

36:                                               ; preds = %171, %84
  %37 = load ptr, ptr %40, align 8, !tbaa !44
  %38 = icmp eq ptr %37, null
  br i1 %38, label %7, label %39, !llvm.loop !175

39:                                               ; preds = %32, %36
  %40 = phi ptr [ %37, %36 ], [ %34, %32 ]
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.19, i32 noundef 1, ptr noundef nonnull %40) #16
  %41 = getelementptr inbounds %struct.ScrArea, ptr %40, i64 0, i32 20
  %42 = load ptr, ptr %41, align 8, !tbaa !44
  %43 = icmp eq ptr %42, null
  br i1 %43, label %84, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.ScrArea, ptr %40, i64 0, i32 8
  br label %49

46:                                               ; preds = %80, %76
  %47 = load ptr, ptr %50, align 8, !tbaa !44
  %48 = icmp eq ptr %47, null
  br i1 %48, label %84, label %49, !llvm.loop !176

49:                                               ; preds = %44, %46
  %50 = phi ptr [ %42, %44 ], [ %47, %46 ]
  %51 = load i8, ptr %45, align 8, !tbaa !177
  %52 = zext i8 %51 to i32
  call fastcc void @write_region(ptr noundef %0, ptr noundef nonnull %50, i32 noundef %52) #16
  %53 = getelementptr inbounds %struct.ARegion, ptr %50, i64 0, i32 22
  %54 = load ptr, ptr %53, align 8, !tbaa !44
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %49, %56
  %57 = phi ptr [ %58, %56 ], [ %54, %49 ]
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.20, i32 noundef 1, ptr noundef nonnull %57) #16
  %58 = load ptr, ptr %57, align 8, !tbaa !44
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %56, !llvm.loop !179

60:                                               ; preds = %56, %49
  %61 = getelementptr inbounds %struct.ARegion, ptr %50, i64 0, i32 23
  %62 = load ptr, ptr %61, align 8, !tbaa !44
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %60, %64
  %65 = phi ptr [ %66, %64 ], [ %62, %60 ]
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.21, i32 noundef 1, ptr noundef nonnull %65) #16
  %66 = load ptr, ptr %65, align 8, !tbaa !44
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %64, !llvm.loop !180

68:                                               ; preds = %64, %60
  %69 = getelementptr inbounds %struct.ARegion, ptr %50, i64 0, i32 24
  %70 = load ptr, ptr %69, align 8, !tbaa !44
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %68, %72
  %73 = phi ptr [ %74, %72 ], [ %70, %68 ]
  call fastcc void @write_uilist(ptr noundef %0, ptr noundef nonnull %73) #16
  %74 = load ptr, ptr %73, align 8, !tbaa !44
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %72, !llvm.loop !181

76:                                               ; preds = %72, %68
  %77 = getelementptr inbounds %struct.ARegion, ptr %50, i64 0, i32 25
  %78 = load ptr, ptr %77, align 8, !tbaa !44
  %79 = icmp eq ptr %78, null
  br i1 %79, label %46, label %80

80:                                               ; preds = %76, %80
  %81 = phi ptr [ %82, %80 ], [ %78, %76 ]
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.22, i32 noundef 1, ptr noundef nonnull %81) #16
  %82 = load ptr, ptr %81, align 8, !tbaa !44
  %83 = icmp eq ptr %82, null
  br i1 %83, label %46, label %80, !llvm.loop !182

84:                                               ; preds = %46, %39
  %85 = getelementptr inbounds %struct.ScrArea, ptr %40, i64 0, i32 19
  %86 = load ptr, ptr %85, align 8, !tbaa !44
  %87 = icmp eq ptr %86, null
  br i1 %87, label %36, label %88

88:                                               ; preds = %84, %171
  %89 = phi ptr [ %172, %171 ], [ %86, %84 ]
  %90 = getelementptr inbounds %struct.SpaceLink, ptr %89, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !44
  %92 = icmp eq ptr %91, null
  br i1 %92, label %100, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.SpaceLink, ptr %89, i64 0, i32 3
  br label %95

95:                                               ; preds = %93, %95
  %96 = phi ptr [ %91, %93 ], [ %98, %95 ]
  %97 = load i32, ptr %94, align 8, !tbaa !183
  call fastcc void @write_region(ptr noundef %0, ptr noundef nonnull %96, i32 noundef %97) #16
  %98 = load ptr, ptr %96, align 8, !tbaa !44
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %95, !llvm.loop !185

100:                                              ; preds = %95, %88
  %101 = getelementptr inbounds %struct.SpaceLink, ptr %89, i64 0, i32 3
  %102 = load i32, ptr %101, align 8, !tbaa !183
  switch i32 %102, label %171 [
    i32 1, label %103
    i32 2, label %116
    i32 4, label %123
    i32 5, label %124
    i32 8, label %129
    i32 3, label %130
    i32 6, label %131
    i32 9, label %136
    i32 14, label %137
    i32 12, label %139
    i32 13, label %140
    i32 15, label %145
    i32 16, label %146
    i32 17, label %154
    i32 18, label %155
    i32 19, label %169
    i32 20, label %170
  ]

103:                                              ; preds = %100
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.23, i32 noundef 1, ptr noundef nonnull %89) #16
  %104 = getelementptr inbounds %struct.View3D, ptr %89, i64 0, i32 18
  %105 = load ptr, ptr %104, align 8, !tbaa !44
  %106 = icmp eq ptr %105, null
  br i1 %106, label %111, label %107

107:                                              ; preds = %103, %107
  %108 = phi ptr [ %109, %107 ], [ %105, %103 ]
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.24, i32 noundef 1, ptr noundef nonnull %108) #16
  %109 = load ptr, ptr %108, align 8, !tbaa !44
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %107, !llvm.loop !186

111:                                              ; preds = %107, %103
  %112 = getelementptr inbounds %struct.View3D, ptr %89, i64 0, i32 20
  %113 = load ptr, ptr %112, align 8, !tbaa !187
  %114 = icmp eq ptr %113, null
  br i1 %114, label %171, label %115

115:                                              ; preds = %111
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.23, i32 noundef 1, ptr noundef nonnull %113) #16
  br label %171

116:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  %117 = getelementptr inbounds %struct.SpaceIpo, ptr %89, i64 0, i32 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %117, i64 16, i1 false), !tbaa.struct !189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %117, i8 0, i64 16, i1 false)
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.25, i32 noundef 1, ptr noundef nonnull %89) #16
  %118 = getelementptr inbounds %struct.SpaceIpo, ptr %89, i64 0, i32 7
  %119 = load ptr, ptr %118, align 8, !tbaa !190
  %120 = icmp eq ptr %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %116
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.26, i32 noundef 1, ptr noundef nonnull %119) #16
  br label %122

122:                                              ; preds = %121, %116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %117, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !189
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  br label %171

123:                                              ; preds = %100
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.27, i32 noundef 1, ptr noundef nonnull %89) #16
  br label %171

124:                                              ; preds = %100
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.28, i32 noundef 1, ptr noundef nonnull %89) #16
  %125 = getelementptr inbounds %struct.SpaceFile, ptr %89, i64 0, i32 5
  %126 = load ptr, ptr %125, align 8, !tbaa !193
  %127 = icmp eq ptr %126, null
  br i1 %127, label %171, label %128

128:                                              ; preds = %124
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.29, i32 noundef 1, ptr noundef nonnull %126) #16
  br label %171

129:                                              ; preds = %100
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.30, i32 noundef 1, ptr noundef nonnull %89) #16
  br label %171

130:                                              ; preds = %100
  call fastcc void @write_soops(ptr noundef %0, ptr noundef nonnull %89, ptr noundef nonnull %3) #16
  br label %171

131:                                              ; preds = %100
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.31, i32 noundef 1, ptr noundef nonnull %89) #16
  %132 = getelementptr inbounds %struct.SpaceImage, ptr %89, i64 0, i32 7
  %133 = load ptr, ptr %132, align 8, !tbaa !195
  %134 = icmp eq ptr %133, null
  br i1 %134, label %171, label %135

135:                                              ; preds = %131
  call fastcc void @write_curvemapping(ptr noundef %0, ptr noundef nonnull %133) #16
  br label %171

136:                                              ; preds = %100
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.32, i32 noundef 1, ptr noundef nonnull %89) #16
  br label %171

137:                                              ; preds = %100
  %138 = getelementptr inbounds %struct.SpaceScript, ptr %89, i64 0, i32 9
  store ptr null, ptr %138, align 8, !tbaa !201
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.33, i32 noundef 1, ptr noundef nonnull %89) #16
  br label %171

139:                                              ; preds = %100
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.34, i32 noundef 1, ptr noundef nonnull %89) #16
  br label %171

140:                                              ; preds = %100
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.35, i32 noundef 1, ptr noundef nonnull %89) #16
  %141 = getelementptr inbounds %struct.SpaceNla, ptr %89, i64 0, i32 9
  %142 = load ptr, ptr %141, align 8, !tbaa !203
  %143 = icmp eq ptr %142, null
  br i1 %143, label %171, label %144

144:                                              ; preds = %140
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.26, i32 noundef 1, ptr noundef nonnull %142) #16
  br label %171

145:                                              ; preds = %100
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.36, i32 noundef 1, ptr noundef nonnull %89) #16
  br label %171

146:                                              ; preds = %100
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.37, i32 noundef 1, ptr noundef nonnull %89) #16
  %147 = getelementptr inbounds %struct.SpaceNode, ptr %89, i64 0, i32 17
  %148 = load ptr, ptr %147, align 8, !tbaa !44
  %149 = icmp eq ptr %148, null
  br i1 %149, label %171, label %150

150:                                              ; preds = %146, %150
  %151 = phi ptr [ %152, %150 ], [ %148, %146 ]
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.38, i32 noundef 1, ptr noundef nonnull %151) #16
  %152 = load ptr, ptr %151, align 8, !tbaa !44
  %153 = icmp eq ptr %152, null
  br i1 %153, label %171, label %150, !llvm.loop !205

154:                                              ; preds = %100
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.39, i32 noundef 1, ptr noundef nonnull %89) #16
  br label %171

155:                                              ; preds = %100
  %156 = getelementptr inbounds %struct.SpaceConsole, ptr %89, i64 0, i32 9
  %157 = load ptr, ptr %156, align 8, !tbaa !44
  %158 = icmp eq ptr %157, null
  br i1 %158, label %168, label %159

159:                                              ; preds = %155, %159
  %160 = phi ptr [ %166, %159 ], [ %157, %155 ]
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.40, i32 noundef 1, ptr noundef nonnull %160) #16
  %161 = getelementptr inbounds %struct.ConsoleLine, ptr %160, i64 0, i32 3
  %162 = load i32, ptr %161, align 4, !tbaa !206
  %163 = add nsw i32 %162, 1
  %164 = getelementptr inbounds %struct.ConsoleLine, ptr %160, i64 0, i32 4
  %165 = load ptr, ptr %164, align 8, !tbaa !208
  call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %163, ptr noundef %165) #16
  %166 = load ptr, ptr %160, align 8, !tbaa !44
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %159, !llvm.loop !209

168:                                              ; preds = %159, %155
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.41, i32 noundef 1, ptr noundef nonnull %89) #16
  br label %171

169:                                              ; preds = %100
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.42, i32 noundef 1, ptr noundef nonnull %89) #16
  br label %171

170:                                              ; preds = %100
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.43, i32 noundef 1, ptr noundef nonnull %89) #16
  br label %171

171:                                              ; preds = %150, %146, %100, %140, %144, %131, %135, %124, %128, %111, %115, %122, %130, %136, %139, %145, %154, %169, %170, %168, %137, %129, %123
  %172 = load ptr, ptr %89, align 8, !tbaa !44
  %173 = icmp eq ptr %172, null
  br i1 %173, label %36, label %88, !llvm.loop !210

174:                                              ; preds = %7
  %175 = load ptr, ptr %3, align 8, !tbaa !44
  br label %176

176:                                              ; preds = %174, %2
  %177 = phi ptr [ %175, %174 ], [ null, %2 ]
  call void @BLI_linklist_freeN(ptr noundef %177) #17
  call fastcc void @mywrite(ptr noundef %0, ptr noundef null, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_movieclips(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !211 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %42, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  br label %7

7:                                                ; preds = %5, %39
  %8 = phi ptr [ %3, %5 ], [ %40, %39 ]
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !212
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %6, align 8, !tbaa !96
  %14 = icmp eq ptr %13, null
  br i1 %14, label %39, label %15

15:                                               ; preds = %12, %7
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 17229, ptr noundef nonnull @.str.54, i32 noundef 1, ptr noundef nonnull %8) #16
  %16 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !221
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @IDP_WriteProperty(ptr noundef nonnull %17, ptr noundef %0) #16
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.MovieClip, ptr %8, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !222
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call fastcc void @write_animdata(ptr noundef %0, ptr noundef nonnull %22) #16
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %struct.MovieClip, ptr %8, i64 0, i32 11, i32 2
  tail call fastcc void @write_movieTracks(ptr noundef %0, ptr noundef nonnull %26) #16
  %27 = getelementptr inbounds %struct.MovieClip, ptr %8, i64 0, i32 11, i32 3
  tail call fastcc void @write_moviePlaneTracks(ptr noundef %0, ptr noundef nonnull %27) #16
  %28 = getelementptr inbounds %struct.MovieClip, ptr %8, i64 0, i32 11, i32 4
  tail call fastcc void @write_movieReconstruction(ptr noundef %0, ptr noundef nonnull %28) #16
  %29 = getelementptr inbounds %struct.MovieClip, ptr %8, i64 0, i32 11, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !44
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %25, %32
  %33 = phi ptr [ %37, %32 ], [ %30, %25 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.55, i32 noundef 1, ptr noundef nonnull %33) #16
  %34 = getelementptr inbounds %struct.MovieTrackingObject, ptr %33, i64 0, i32 5
  tail call fastcc void @write_movieTracks(ptr noundef %0, ptr noundef nonnull %34) #16
  %35 = getelementptr inbounds %struct.MovieTrackingObject, ptr %33, i64 0, i32 6
  tail call fastcc void @write_moviePlaneTracks(ptr noundef %0, ptr noundef nonnull %35) #16
  %36 = getelementptr inbounds %struct.MovieTrackingObject, ptr %33, i64 0, i32 7
  tail call fastcc void @write_movieReconstruction(ptr noundef %0, ptr noundef nonnull %36) #16
  %37 = load ptr, ptr %33, align 8, !tbaa !44
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %32, !llvm.loop !223

39:                                               ; preds = %32, %25, %12
  %40 = load ptr, ptr %8, align 8, !tbaa !44
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %7, !llvm.loop !224

42:                                               ; preds = %39, %2
  tail call fastcc void @mywrite(ptr noundef %0, ptr noundef null, i32 noundef 0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_masks(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !225 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %77, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  br label %7

7:                                                ; preds = %5, %74
  %8 = phi ptr [ %3, %5 ], [ %75, %74 ]
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !226
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %6, align 8, !tbaa !96
  %14 = icmp eq ptr %13, null
  br i1 %14, label %74, label %15

15:                                               ; preds = %12, %7
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 21325, ptr noundef nonnull @.str.72, i32 noundef 1, ptr noundef nonnull %8) #16
  %16 = getelementptr inbounds %struct.Mask, ptr %8, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !228
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call fastcc void @write_animdata(ptr noundef %0, ptr noundef nonnull %17) #16
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.Mask, ptr %8, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  %23 = icmp eq ptr %22, null
  br i1 %23, label %74, label %27

24:                                               ; preds = %65, %61
  %25 = load ptr, ptr %28, align 8, !tbaa !44
  %26 = icmp eq ptr %25, null
  br i1 %26, label %74, label %27, !llvm.loop !229

27:                                               ; preds = %20, %24
  %28 = phi ptr [ %25, %24 ], [ %22, %20 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.73, i32 noundef 1, ptr noundef nonnull %28) #16
  %29 = getelementptr inbounds %struct.MaskLayer, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !44
  %31 = icmp eq ptr %30, null
  br i1 %31, label %61, label %35

32:                                               ; preds = %56, %35
  %33 = load ptr, ptr %36, align 8, !tbaa !44
  %34 = icmp eq ptr %33, null
  br i1 %34, label %61, label %35, !llvm.loop !230

35:                                               ; preds = %27, %32
  %36 = phi ptr [ %33, %32 ], [ %30, %27 ]
  %37 = getelementptr inbounds %struct.MaskSpline, ptr %36, i64 0, i32 8
  %38 = load ptr, ptr %37, align 8, !tbaa !231
  store ptr null, ptr %37, align 8, !tbaa !231
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.74, i32 noundef 1, ptr noundef nonnull %36) #16
  %39 = getelementptr inbounds %struct.MaskSpline, ptr %36, i64 0, i32 5
  %40 = load i32, ptr %39, align 4, !tbaa !234
  %41 = getelementptr inbounds %struct.MaskSpline, ptr %36, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !235
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.75, i32 noundef %40, ptr noundef %42) #16
  store ptr %38, ptr %37, align 8, !tbaa !231
  %43 = load i32, ptr %39, align 4, !tbaa !234
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %32

45:                                               ; preds = %35, %56
  %46 = phi i32 [ %57, %56 ], [ %43, %35 ]
  %47 = phi i64 [ %58, %56 ], [ 0, %35 ]
  %48 = load ptr, ptr %41, align 8, !tbaa !235
  %49 = getelementptr inbounds %struct.MaskSplinePoint, ptr %48, i64 %47, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !236
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.MaskSplinePoint, ptr %48, i64 %47, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !239
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.76, i32 noundef %50, ptr noundef %54) #16
  %55 = load i32, ptr %39, align 4, !tbaa !234
  br label %56

56:                                               ; preds = %52, %45
  %57 = phi i32 [ %55, %52 ], [ %46, %45 ]
  %58 = add nuw nsw i64 %47, 1
  %59 = sext i32 %57 to i64
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %45, label %32, !llvm.loop !240

61:                                               ; preds = %32, %27
  %62 = getelementptr inbounds %struct.MaskLayer, ptr %28, i64 0, i32 4
  %63 = load ptr, ptr %62, align 8, !tbaa !44
  %64 = icmp eq ptr %63, null
  br i1 %64, label %24, label %65

65:                                               ; preds = %61, %65
  %66 = phi ptr [ %72, %65 ], [ %63, %61 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.77, i32 noundef 1, ptr noundef nonnull %66) #16
  %67 = getelementptr inbounds %struct.MaskLayerShape, ptr %66, i64 0, i32 3
  %68 = load i32, ptr %67, align 8, !tbaa !241
  %69 = shl i32 %68, 5
  %70 = getelementptr inbounds %struct.MaskLayerShape, ptr %66, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !243
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %69, ptr noundef %71) #16
  %72 = load ptr, ptr %66, align 8, !tbaa !44
  %73 = icmp eq ptr %72, null
  br i1 %73, label %24, label %65, !llvm.loop !244

74:                                               ; preds = %24, %20, %12
  %75 = load ptr, ptr %8, align 8, !tbaa !44
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %7, !llvm.loop !245

77:                                               ; preds = %74, %2
  tail call fastcc void @mywrite(ptr noundef %0, ptr noundef null, i32 noundef 0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_scenes(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !246 {
  %3 = alloca %struct.SeqIterator, align 8
  %4 = alloca %struct.SeqIterator, align 8
  %5 = load ptr, ptr %1, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %252, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 4
  %9 = getelementptr inbounds %struct.SeqIterator, ptr %3, i64 0, i32 3
  %10 = getelementptr inbounds %struct.SeqIterator, ptr %4, i64 0, i32 4
  %11 = getelementptr inbounds %struct.SeqIterator, ptr %4, i64 0, i32 3
  br label %12

12:                                               ; preds = %7, %249
  %13 = phi ptr [ %5, %7 ], [ %250, %249 ]
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 17235, ptr noundef nonnull @.str.78, i32 noundef 1, ptr noundef nonnull %13) #16
  %14 = getelementptr inbounds %struct.ID, ptr %13, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !247
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  call void @IDP_WriteProperty(ptr noundef nonnull %15, ptr noundef %0) #16
  br label %18

18:                                               ; preds = %17, %12
  %19 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !248
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  call fastcc void @write_animdata(ptr noundef %0, ptr noundef nonnull %20) #16
  br label %23

23:                                               ; preds = %22, %18
  %24 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 35
  call fastcc void @write_keyingsets(ptr noundef %0, ptr noundef nonnull %24) #16
  %25 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !44
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %23, %28
  %29 = phi ptr [ %30, %28 ], [ %26, %23 ]
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.79, i32 noundef 1, ptr noundef nonnull %29) #16
  %30 = load ptr, ptr %29, align 8, !tbaa !44
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %28, !llvm.loop !249

32:                                               ; preds = %28, %23
  %33 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 20
  %34 = load ptr, ptr %33, align 8, !tbaa !250
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.80, i32 noundef 1, ptr noundef %34) #16
  %35 = load ptr, ptr %34, align 8, !tbaa !251
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.81, i32 noundef 1, ptr noundef nonnull %35) #16
  br label %38

38:                                               ; preds = %37, %32
  %39 = getelementptr inbounds %struct.ToolSettings, ptr %34, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !258
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.81, i32 noundef 1, ptr noundef nonnull %40) #16
  br label %43

43:                                               ; preds = %42, %38
  %44 = getelementptr inbounds %struct.ToolSettings, ptr %34, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !259
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.82, i32 noundef 1, ptr noundef nonnull %45) #16
  br label %48

48:                                               ; preds = %47, %43
  %49 = getelementptr inbounds %struct.ToolSettings, ptr %34, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !260
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.83, i32 noundef 1, ptr noundef nonnull %50) #16
  br label %53

53:                                               ; preds = %52, %48
  %54 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 19
  %55 = load ptr, ptr %54, align 8, !tbaa !261
  %56 = icmp eq ptr %55, null
  br i1 %56, label %157, label %57

57:                                               ; preds = %53
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.84, i32 noundef 1, ptr noundef nonnull %55) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  call void @BKE_sequence_iterator_begin(ptr noundef nonnull %55, ptr noundef nonnull %3, i8 noundef zeroext 0) #17
  %58 = load i32, ptr %8, align 8, !tbaa !262
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %57, %67
  %61 = load ptr, ptr %9, align 8, !tbaa !264
  %62 = getelementptr inbounds %struct.Sequence, ptr %61, i64 0, i32 24
  %63 = load ptr, ptr %62, align 8, !tbaa !265
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.Strip, ptr %63, i64 0, i32 3
  store i32 0, ptr %66, align 4, !tbaa !267
  br label %67

67:                                               ; preds = %65, %60
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.85, i32 noundef 1, ptr noundef nonnull %61) #16
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %3) #17
  %68 = load i32, ptr %8, align 8, !tbaa !262
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %60, !llvm.loop !269

70:                                               ; preds = %67, %57
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #18
  call void @BKE_sequence_iterator_begin(ptr noundef nonnull %55, ptr noundef nonnull %4, i8 noundef zeroext 0) #17
  %71 = load i32, ptr %10, align 8, !tbaa !262
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %149, label %73

73:                                               ; preds = %70, %145
  %74 = load ptr, ptr %11, align 8, !tbaa !264
  %75 = getelementptr inbounds %struct.Sequence, ptr %74, i64 0, i32 24
  %76 = load ptr, ptr %75, align 8, !tbaa !265
  %77 = icmp eq ptr %76, null
  br i1 %77, label %145, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.Strip, ptr %76, i64 0, i32 3
  %80 = load i32, ptr %79, align 4, !tbaa !267
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %145

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.Sequence, ptr %74, i64 0, i32 43
  %84 = load ptr, ptr %83, align 8, !tbaa !270
  %85 = icmp eq ptr %84, null
  br i1 %85, label %96, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.Sequence, ptr %74, i64 0, i32 6
  %88 = load i32, ptr %87, align 4, !tbaa !271
  switch i32 %88, label %96 [
    i32 28, label %94
    i32 29, label %89
    i32 25, label %90
    i32 26, label %91
    i32 27, label %92
    i32 40, label %93
  ]

89:                                               ; preds = %86
  br label %94

90:                                               ; preds = %86
  br label %94

91:                                               ; preds = %86
  br label %94

92:                                               ; preds = %86
  br label %94

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %86, %93, %92, %91, %90, %89
  %95 = phi ptr [ @.str.87, %89 ], [ @.str.88, %90 ], [ @.str.89, %91 ], [ @.str.90, %92 ], [ @.str.91, %93 ], [ @.str.86, %86 ]
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull %95, i32 noundef 1, ptr noundef nonnull %84) #16
  br label %96

96:                                               ; preds = %94, %86, %82
  %97 = load ptr, ptr %75, align 8, !tbaa !265
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.92, i32 noundef 1, ptr noundef %97) #16
  %98 = getelementptr inbounds %struct.Sequence, ptr %74, i64 0, i32 5
  %99 = load i32, ptr %98, align 8, !tbaa !272
  %100 = and i32 %99, 131072
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.Strip, ptr %97, i64 0, i32 9
  %104 = load ptr, ptr %103, align 8, !tbaa !273
  %105 = icmp eq ptr %104, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %102
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.93, i32 noundef 1, ptr noundef nonnull %104) #16
  %107 = load i32, ptr %98, align 8, !tbaa !272
  br label %108

108:                                              ; preds = %106, %102, %96
  %109 = phi i32 [ %107, %106 ], [ %99, %102 ], [ %99, %96 ]
  %110 = and i32 %109, 65536
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.Strip, ptr %97, i64 0, i32 10
  %114 = load ptr, ptr %113, align 8, !tbaa !274
  %115 = icmp eq ptr %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %112
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.94, i32 noundef 1, ptr noundef nonnull %114) #16
  %117 = load i32, ptr %98, align 8, !tbaa !272
  br label %118

118:                                              ; preds = %116, %112, %108
  %119 = phi i32 [ %117, %116 ], [ %109, %112 ], [ %109, %108 ]
  %120 = and i32 %119, 32768
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.Strip, ptr %97, i64 0, i32 8
  %124 = load ptr, ptr %123, align 8, !tbaa !275
  %125 = icmp eq ptr %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.95, i32 noundef 1, ptr noundef nonnull %124) #16
  br label %127

127:                                              ; preds = %126, %122, %118
  %128 = getelementptr inbounds %struct.Sequence, ptr %74, i64 0, i32 6
  %129 = load i32, ptr %128, align 4, !tbaa !271
  switch i32 %129, label %143 [
    i32 0, label %130
    i32 3, label %137
    i32 4, label %137
    i32 5, label %137
  ]

130:                                              ; preds = %127
  %131 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !44
  %132 = getelementptr inbounds %struct.Strip, ptr %97, i64 0, i32 6
  %133 = load ptr, ptr %132, align 8, !tbaa !276
  %134 = call i64 %131(ptr noundef %133) #17
  %135 = udiv i64 %134, 264
  %136 = trunc i64 %135 to i32
  br label %139

137:                                              ; preds = %127, %127, %127
  %138 = getelementptr inbounds %struct.Strip, ptr %97, i64 0, i32 6
  br label %139

139:                                              ; preds = %130, %137
  %140 = phi ptr [ %138, %137 ], [ %132, %130 ]
  %141 = phi i32 [ 1, %137 ], [ %136, %130 ]
  %142 = load ptr, ptr %140, align 8, !tbaa !276
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.96, i32 noundef %141, ptr noundef %142) #16
  br label %143

143:                                              ; preds = %139, %127
  %144 = getelementptr inbounds %struct.Strip, ptr %97, i64 0, i32 3
  store i32 1, ptr %144, align 4, !tbaa !267
  br label %145

145:                                              ; preds = %143, %78, %73
  %146 = getelementptr inbounds %struct.Sequence, ptr %74, i64 0, i32 51
  call fastcc void @write_sequence_modifiers(ptr noundef %0, ptr noundef nonnull %146) #16
  call void @BKE_sequence_iterator_next(ptr noundef nonnull %4) #17
  %147 = load i32, ptr %10, align 8, !tbaa !262
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %73, !llvm.loop !277

149:                                              ; preds = %145, %70
  call void @BKE_sequence_iterator_end(ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  %150 = getelementptr inbounds %struct.Editing, ptr %55, i64 0, i32 2
  %151 = load ptr, ptr %150, align 8, !tbaa !44
  %152 = icmp eq ptr %151, null
  br i1 %152, label %157, label %153

153:                                              ; preds = %149, %153
  %154 = phi ptr [ %155, %153 ], [ %151, %149 ]
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.97, i32 noundef 1, ptr noundef nonnull %154) #16
  %155 = load ptr, ptr %154, align 8, !tbaa !44
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %153, !llvm.loop !278

157:                                              ; preds = %153, %149, %53
  %158 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 22, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !279
  %160 = icmp eq ptr %159, null
  br i1 %160, label %177, label %161

161:                                              ; preds = %157
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.98, i32 noundef 1, ptr noundef nonnull %159) #16
  %162 = load ptr, ptr %158, align 8, !tbaa !279
  %163 = load ptr, ptr %162, align 8, !tbaa !280
  %164 = icmp eq ptr %163, null
  br i1 %164, label %169, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.AviCodecData, ptr %162, i64 0, i32 2
  %167 = load i32, ptr %166, align 8, !tbaa !282
  call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %167, ptr noundef nonnull %163) #16
  %168 = load ptr, ptr %158, align 8, !tbaa !279
  br label %169

169:                                              ; preds = %165, %161
  %170 = phi ptr [ %168, %165 ], [ %162, %161 ]
  %171 = getelementptr inbounds %struct.AviCodecData, ptr %170, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !283
  %173 = icmp eq ptr %172, null
  br i1 %173, label %177, label %174

174:                                              ; preds = %169
  %175 = getelementptr inbounds %struct.AviCodecData, ptr %170, i64 0, i32 3
  %176 = load i32, ptr %175, align 4, !tbaa !284
  call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %176, ptr noundef nonnull %172) #16
  br label %177

177:                                              ; preds = %169, %174, %157
  %178 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 22, i32 2
  %179 = load ptr, ptr %178, align 8, !tbaa !285
  %180 = icmp eq ptr %179, null
  br i1 %180, label %188, label %181

181:                                              ; preds = %177
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.99, i32 noundef 1, ptr noundef nonnull %179) #16
  %182 = load ptr, ptr %178, align 8, !tbaa !285
  %183 = load ptr, ptr %182, align 8, !tbaa !286
  %184 = icmp eq ptr %183, null
  br i1 %184, label %188, label %185

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.QuicktimeCodecData, ptr %182, i64 0, i32 2
  %187 = load i32, ptr %186, align 8, !tbaa !288
  call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %187, ptr noundef nonnull %183) #16
  br label %188

188:                                              ; preds = %181, %185, %177
  %189 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 22, i32 4, i32 16
  %190 = load ptr, ptr %189, align 8, !tbaa !289
  %191 = icmp eq ptr %190, null
  br i1 %191, label %193, label %192

192:                                              ; preds = %188
  call void @IDP_WriteProperty(ptr noundef nonnull %190, ptr noundef %0) #16
  br label %193

193:                                              ; preds = %192, %188
  %194 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 24
  %195 = load ptr, ptr %194, align 8, !tbaa !44
  %196 = icmp eq ptr %195, null
  br i1 %196, label %201, label %197

197:                                              ; preds = %193, %197
  %198 = phi ptr [ %199, %197 ], [ %195, %193 ]
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.100, i32 noundef 1, ptr noundef nonnull %198) #16
  %199 = load ptr, ptr %198, align 8, !tbaa !44
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %197, !llvm.loop !290

201:                                              ; preds = %197, %193
  %202 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 25
  %203 = load ptr, ptr %202, align 8, !tbaa !44
  %204 = icmp eq ptr %203, null
  br i1 %204, label %209, label %205

205:                                              ; preds = %201, %205
  %206 = phi ptr [ %207, %205 ], [ %203, %201 ]
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.101, i32 noundef 1, ptr noundef nonnull %206) #16
  %207 = load ptr, ptr %206, align 8, !tbaa !44
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %205, !llvm.loop !291

209:                                              ; preds = %205, %201
  %210 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 22, i32 60
  %211 = load ptr, ptr %210, align 8, !tbaa !44
  %212 = icmp eq ptr %211, null
  br i1 %212, label %233, label %216

213:                                              ; preds = %229, %225
  %214 = load ptr, ptr %217, align 8, !tbaa !44
  %215 = icmp eq ptr %214, null
  br i1 %215, label %233, label %216, !llvm.loop !292

216:                                              ; preds = %209, %213
  %217 = phi ptr [ %214, %213 ], [ %211, %209 ]
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.102, i32 noundef 1, ptr noundef nonnull %217) #16
  %218 = getelementptr inbounds %struct.SceneRenderLayer, ptr %217, i64 0, i32 13
  %219 = load ptr, ptr %218, align 8, !tbaa !44
  %220 = icmp eq ptr %219, null
  br i1 %220, label %225, label %221

221:                                              ; preds = %216, %221
  %222 = phi ptr [ %223, %221 ], [ %219, %216 ]
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.103, i32 noundef 1, ptr noundef nonnull %222) #16
  %223 = load ptr, ptr %222, align 8, !tbaa !44
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %221, !llvm.loop !293

225:                                              ; preds = %221, %216
  %226 = getelementptr inbounds %struct.SceneRenderLayer, ptr %217, i64 0, i32 13, i32 7
  %227 = load ptr, ptr %226, align 8, !tbaa !44
  %228 = icmp eq ptr %227, null
  br i1 %228, label %213, label %229

229:                                              ; preds = %225, %229
  %230 = phi ptr [ %231, %229 ], [ %227, %225 ]
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.104, i32 noundef 1, ptr noundef nonnull %230) #16
  %231 = load ptr, ptr %230, align 8, !tbaa !44
  %232 = icmp eq ptr %231, null
  br i1 %232, label %213, label %229, !llvm.loop !294

233:                                              ; preds = %213, %209
  %234 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 18
  %235 = load ptr, ptr %234, align 8, !tbaa !295
  %236 = icmp eq ptr %235, null
  br i1 %236, label %239, label %237

237:                                              ; preds = %233
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.105, i32 noundef 1, ptr noundef nonnull %235) #16
  %238 = load ptr, ptr %234, align 8, !tbaa !295
  call fastcc void @write_nodetree(ptr noundef %0, ptr noundef %238) #16
  br label %239

239:                                              ; preds = %237, %233
  %240 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 44
  call fastcc void @write_view_settings(ptr noundef %0, ptr noundef nonnull %240) #16
  %241 = getelementptr inbounds %struct.Scene, ptr %13, i64 0, i32 47
  %242 = load ptr, ptr %241, align 8, !tbaa !296
  %243 = icmp eq ptr %242, null
  br i1 %243, label %249, label %244

244:                                              ; preds = %239
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.106, i32 noundef 1, ptr noundef nonnull %242) #16
  %245 = load ptr, ptr %241, align 8, !tbaa !296
  %246 = load ptr, ptr %245, align 8, !tbaa !297
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.107, i32 noundef 1, ptr noundef %246) #16
  %247 = load ptr, ptr %241, align 8, !tbaa !296
  %248 = getelementptr inbounds %struct.RigidBodyWorld, ptr %247, i64 0, i32 7
  call fastcc void @write_pointcaches(ptr noundef %0, ptr noundef nonnull %248) #16
  br label %249

249:                                              ; preds = %244, %239
  %250 = load ptr, ptr %13, align 8, !tbaa !44
  %251 = icmp eq ptr %250, null
  br i1 %251, label %252, label %12, !llvm.loop !299

252:                                              ; preds = %249, %2
  call fastcc void @mywrite(ptr noundef %0, ptr noundef null, i32 noundef 0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_curves(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !300 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %118, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  br label %7

7:                                                ; preds = %5, %115
  %8 = phi ptr [ %3, %5 ], [ %116, %115 ]
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !301
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %6, align 8, !tbaa !96
  %14 = icmp eq ptr %13, null
  br i1 %14, label %115, label %15

15:                                               ; preds = %12, %7
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 21827, ptr noundef nonnull @.str.122, i32 noundef 1, ptr noundef nonnull %8) #16
  %16 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 22
  %17 = load i16, ptr %16, align 2, !tbaa !304
  %18 = sext i16 %17 to i32
  %19 = shl nsw i32 %18, 3
  %20 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !305
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %19, ptr noundef %21) #16
  %22 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !306
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  tail call void @IDP_WriteProperty(ptr noundef nonnull %23, ptr noundef %0) #16
  br label %26

26:                                               ; preds = %25, %15
  %27 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !307
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call fastcc void @write_animdata(ptr noundef %0, ptr noundef nonnull %28) #16
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 55
  %33 = load ptr, ptr %32, align 8, !tbaa !308
  %34 = icmp eq ptr %33, null
  br i1 %34, label %50, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 51
  %37 = load i32, ptr %36, align 4, !tbaa !309
  %38 = add nsw i32 %37, 1
  %39 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 52
  %40 = load ptr, ptr %39, align 8, !tbaa !310
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %38, ptr noundef %40) #16
  %41 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 50
  %42 = load i32, ptr %41, align 8, !tbaa !311
  %43 = add nsw i32 %42, 1
  %44 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 62
  %45 = load ptr, ptr %44, align 8, !tbaa !312
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.123, i32 noundef %43, ptr noundef %45) #16
  %46 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 60
  %47 = load i32, ptr %46, align 8, !tbaa !313
  %48 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 59
  %49 = load ptr, ptr %48, align 8, !tbaa !314
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.124, i32 noundef %47, ptr noundef %49) #16
  br label %115

50:                                               ; preds = %31
  %51 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !44
  %53 = icmp eq ptr %52, null
  br i1 %53, label %115, label %57

54:                                               ; preds = %57
  %55 = load ptr, ptr %51, align 8, !tbaa !44
  %56 = icmp eq ptr %55, null
  br i1 %56, label %115, label %61

57:                                               ; preds = %50, %57
  %58 = phi ptr [ %59, %57 ], [ %52, %50 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.125, i32 noundef 1, ptr noundef nonnull %58) #16
  %59 = load ptr, ptr %58, align 8, !tbaa !44
  %60 = icmp eq ptr %59, null
  br i1 %60, label %54, label %57, !llvm.loop !315

61:                                               ; preds = %54, %112
  %62 = phi ptr [ %113, %112 ], [ %55, %54 ]
  %63 = getelementptr inbounds %struct.Nurb, ptr %62, i64 0, i32 2
  %64 = load i16, ptr %63, align 8, !tbaa !316
  %65 = icmp eq i16 %64, 1
  %66 = getelementptr inbounds %struct.Nurb, ptr %62, i64 0, i32 6
  %67 = load i32, ptr %66, align 8, !tbaa !318
  br i1 %65, label %68, label %71

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.Nurb, ptr %62, i64 0, i32 18
  %70 = load ptr, ptr %69, align 8, !tbaa !319
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.59, i32 noundef %67, ptr noundef %70) #16
  br label %112

71:                                               ; preds = %61
  %72 = getelementptr inbounds %struct.Nurb, ptr %62, i64 0, i32 7
  %73 = load i32, ptr %72, align 4, !tbaa !320
  %74 = mul nsw i32 %73, %67
  %75 = getelementptr inbounds %struct.Nurb, ptr %62, i64 0, i32 17
  %76 = load ptr, ptr %75, align 8, !tbaa !321
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.126, i32 noundef %74, ptr noundef %76) #16
  %77 = getelementptr inbounds %struct.Nurb, ptr %62, i64 0, i32 15
  %78 = load ptr, ptr %77, align 8, !tbaa !322
  %79 = icmp eq ptr %78, null
  br i1 %79, label %94, label %80

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.Nurb, ptr %62, i64 0, i32 11
  %82 = load i16, ptr %81, align 8, !tbaa !323
  %83 = sext i16 %82 to i32
  %84 = load i32, ptr %66, align 8, !tbaa !318
  %85 = add nsw i32 %84, %83
  %86 = getelementptr inbounds %struct.Nurb, ptr %62, i64 0, i32 13
  %87 = load i16, ptr %86, align 4, !tbaa !324
  %88 = and i16 %87, 1
  %89 = icmp eq i16 %88, 0
  %90 = add nsw i32 %83, 1073741823
  %91 = select i1 %89, i32 0, i32 %90
  %92 = add i32 %85, %91
  %93 = shl i32 %92, 2
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %93, ptr noundef nonnull %78) #16
  br label %94

94:                                               ; preds = %80, %71
  %95 = getelementptr inbounds %struct.Nurb, ptr %62, i64 0, i32 16
  %96 = load ptr, ptr %95, align 8, !tbaa !325
  %97 = icmp eq ptr %96, null
  br i1 %97, label %112, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.Nurb, ptr %62, i64 0, i32 12
  %100 = load i16, ptr %99, align 2, !tbaa !326
  %101 = sext i16 %100 to i32
  %102 = load i32, ptr %72, align 4, !tbaa !320
  %103 = add nsw i32 %102, %101
  %104 = getelementptr inbounds %struct.Nurb, ptr %62, i64 0, i32 14
  %105 = load i16, ptr %104, align 2, !tbaa !327
  %106 = and i16 %105, 1
  %107 = icmp eq i16 %106, 0
  %108 = add nsw i32 %101, 1073741823
  %109 = select i1 %107, i32 0, i32 %108
  %110 = add i32 %103, %109
  %111 = shl i32 %110, 2
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %111, ptr noundef nonnull %96) #16
  br label %112

112:                                              ; preds = %94, %98, %68
  %113 = load ptr, ptr %62, align 8, !tbaa !44
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %61, !llvm.loop !328

115:                                              ; preds = %112, %50, %54, %35, %12
  %116 = load ptr, ptr %8, align 8, !tbaa !44
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %7, !llvm.loop !329

118:                                              ; preds = %115, %2
  tail call fastcc void @mywrite(ptr noundef %0, ptr noundef null, i32 noundef 0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_mballs(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !330 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %42, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  br label %7

7:                                                ; preds = %5, %39
  %8 = phi ptr [ %3, %5 ], [ %40, %39 ]
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !331
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %6, align 8, !tbaa !96
  %14 = icmp eq ptr %13, null
  br i1 %14, label %39, label %15

15:                                               ; preds = %12, %7
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 16973, ptr noundef nonnull @.str.127, i32 noundef 1, ptr noundef nonnull %8) #16
  %16 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !333
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @IDP_WriteProperty(ptr noundef nonnull %17, ptr noundef %0) #16
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.MetaBall, ptr %8, i64 0, i32 9
  %22 = load i16, ptr %21, align 2, !tbaa !334
  %23 = sext i16 %22 to i32
  %24 = shl nsw i32 %23, 3
  %25 = getelementptr inbounds %struct.MetaBall, ptr %8, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !335
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %24, ptr noundef %26) #16
  %27 = getelementptr inbounds %struct.MetaBall, ptr %8, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !336
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  tail call fastcc void @write_animdata(ptr noundef %0, ptr noundef nonnull %28) #16
  br label %31

31:                                               ; preds = %30, %20
  %32 = getelementptr inbounds %struct.MetaBall, ptr %8, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !44
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31, %35
  %36 = phi ptr [ %37, %35 ], [ %33, %31 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.128, i32 noundef 1, ptr noundef nonnull %36) #16
  %37 = load ptr, ptr %36, align 8, !tbaa !44
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %35, !llvm.loop !337

39:                                               ; preds = %35, %31, %12
  %40 = load ptr, ptr %8, align 8, !tbaa !44
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %7, !llvm.loop !338

42:                                               ; preds = %39, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_images(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !339 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %34, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  br label %7

7:                                                ; preds = %5, %31
  %8 = phi ptr [ %3, %5 ], [ %32, %31 ]
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !340
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %6, align 8, !tbaa !96
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %12, %7
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 19785, ptr noundef nonnull @.str.129, i32 noundef 1, ptr noundef nonnull %8) #16
  %16 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !342
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @IDP_WriteProperty(ptr noundef nonnull %17, ptr noundef %0) #16
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 22
  %22 = load ptr, ptr %21, align 8, !tbaa !343
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.130, i32 noundef 1, ptr noundef nonnull %22) #16
  %25 = load i32, ptr %22, align 8, !tbaa !344
  %26 = getelementptr inbounds %struct.PackedFile, ptr %22, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !346
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %25, ptr noundef %27) #16
  br label %28

28:                                               ; preds = %24, %20
  %29 = getelementptr inbounds %struct.Image, ptr %8, i64 0, i32 23
  %30 = load ptr, ptr %29, align 8, !tbaa !347
  tail call fastcc void @write_previews(ptr noundef %0, ptr noundef %30) #16
  br label %31

31:                                               ; preds = %28, %12
  %32 = load ptr, ptr %8, align 8, !tbaa !44
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %7, !llvm.loop !348

34:                                               ; preds = %31, %2
  tail call fastcc void @mywrite(ptr noundef %0, ptr noundef null, i32 noundef 0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_cameras(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !349 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  br label %7

7:                                                ; preds = %5, %25
  %8 = phi ptr [ %3, %5 ], [ %26, %25 ]
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !350
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %6, align 8, !tbaa !96
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %12, %7
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 16707, ptr noundef nonnull @.str.132, i32 noundef 1, ptr noundef nonnull %8) #16
  %16 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !352
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @IDP_WriteProperty(ptr noundef nonnull %17, ptr noundef %0) #16
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.Camera, ptr %8, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !353
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call fastcc void @write_animdata(ptr noundef %0, ptr noundef nonnull %22) #16
  br label %25

25:                                               ; preds = %20, %24, %12
  %26 = load ptr, ptr %8, align 8, !tbaa !44
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %7, !llvm.loop !354

28:                                               ; preds = %25, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_lamps(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !355 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %52, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  br label %7

7:                                                ; preds = %5, %49
  %8 = phi ptr [ %3, %5 ], [ %50, %49 ]
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !356
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %6, align 8, !tbaa !96
  %14 = icmp eq ptr %13, null
  br i1 %14, label %49, label %15

15:                                               ; preds = %12, %7
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 16716, ptr noundef nonnull @.str.133, i32 noundef 1, ptr noundef nonnull %8) #16
  %16 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !358
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @IDP_WriteProperty(ptr noundef nonnull %17, ptr noundef %0) #16
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.Lamp, ptr %8, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !359
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call fastcc void @write_animdata(ptr noundef %0, ptr noundef nonnull %22) #16
  br label %25

25:                                               ; preds = %24, %20
  br label %26

26:                                               ; preds = %25, %32
  %27 = phi i64 [ %33, %32 ], [ 0, %25 ]
  %28 = getelementptr inbounds %struct.Lamp, ptr %8, i64 0, i32 69, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.134, i32 noundef 1, ptr noundef nonnull %29) #16
  br label %32

32:                                               ; preds = %26, %31
  %33 = add nuw nsw i64 %27, 1
  %34 = icmp eq i64 %33, 18
  br i1 %34, label %35, label %26, !llvm.loop !360

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.Lamp, ptr %8, i64 0, i32 22
  %37 = load ptr, ptr %36, align 8, !tbaa !361
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call fastcc void @write_curvemapping(ptr noundef %0, ptr noundef nonnull %37) #16
  br label %40

40:                                               ; preds = %39, %35
  %41 = getelementptr inbounds %struct.Lamp, ptr %8, i64 0, i32 74
  %42 = load ptr, ptr %41, align 8, !tbaa !362
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.105, i32 noundef 1, ptr noundef nonnull %42) #16
  %45 = load ptr, ptr %41, align 8, !tbaa !362
  tail call fastcc void @write_nodetree(ptr noundef %0, ptr noundef %45) #16
  br label %46

46:                                               ; preds = %44, %40
  %47 = getelementptr inbounds %struct.Lamp, ptr %8, i64 0, i32 73
  %48 = load ptr, ptr %47, align 8, !tbaa !363
  tail call fastcc void @write_previews(ptr noundef %0, ptr noundef %48) #16
  br label %49

49:                                               ; preds = %46, %12
  %50 = load ptr, ptr %8, align 8, !tbaa !44
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %7, !llvm.loop !364

52:                                               ; preds = %49, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_lattices(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !365 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %52, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  br label %7

7:                                                ; preds = %5, %49
  %8 = phi ptr [ %3, %5 ], [ %50, %49 ]
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !366
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %6, align 8, !tbaa !96
  %14 = icmp eq ptr %13, null
  br i1 %14, label %49, label %15

15:                                               ; preds = %12, %7
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 21580, ptr noundef nonnull @.str.135, i32 noundef 1, ptr noundef nonnull %8) #16
  %16 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !368
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @IDP_WriteProperty(ptr noundef nonnull %17, ptr noundef %0) #16
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !369
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call fastcc void @write_animdata(ptr noundef %0, ptr noundef nonnull %22) #16
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 2
  %27 = load i16, ptr %26, align 8, !tbaa !370
  %28 = sext i16 %27 to i32
  %29 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 3
  %30 = load i16, ptr %29, align 2, !tbaa !371
  %31 = sext i16 %30 to i32
  %32 = mul nsw i32 %31, %28
  %33 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 4
  %34 = load i16, ptr %33, align 4, !tbaa !372
  %35 = sext i16 %34 to i32
  %36 = mul nsw i32 %32, %35
  %37 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 21
  %38 = load ptr, ptr %37, align 8, !tbaa !373
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.126, i32 noundef %36, ptr noundef %38) #16
  %39 = load i16, ptr %26, align 8, !tbaa !370
  %40 = sext i16 %39 to i32
  %41 = load i16, ptr %29, align 2, !tbaa !371
  %42 = sext i16 %41 to i32
  %43 = mul nsw i32 %42, %40
  %44 = load i16, ptr %33, align 4, !tbaa !372
  %45 = sext i16 %44 to i32
  %46 = mul nsw i32 %43, %45
  %47 = getelementptr inbounds %struct.Lattice, ptr %8, i64 0, i32 24
  %48 = load ptr, ptr %47, align 8, !tbaa !374
  tail call fastcc void @write_dverts(ptr noundef %0, i32 noundef %46, ptr noundef %48) #16
  br label %49

49:                                               ; preds = %25, %12
  %50 = load ptr, ptr %8, align 8, !tbaa !44
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %7, !llvm.loop !375

52:                                               ; preds = %49, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_vfonts(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !376 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  br label %7

7:                                                ; preds = %5, %28
  %8 = phi ptr [ %3, %5 ], [ %29, %28 ]
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !377
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %6, align 8, !tbaa !96
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %12, %7
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 18006, ptr noundef nonnull @.str.138, i32 noundef 1, ptr noundef nonnull %8) #16
  %16 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !379
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @IDP_WriteProperty(ptr noundef nonnull %17, ptr noundef %0) #16
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.VFont, ptr %8, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !380
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.130, i32 noundef 1, ptr noundef nonnull %22) #16
  %25 = load i32, ptr %22, align 8, !tbaa !344
  %26 = getelementptr inbounds %struct.PackedFile, ptr %22, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !346
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %25, ptr noundef %27) #16
  br label %28

28:                                               ; preds = %20, %24, %12
  %29 = load ptr, ptr %8, align 8, !tbaa !44
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %7, !llvm.loop !381

31:                                               ; preds = %28, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_keys(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !382 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %47, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  br label %7

7:                                                ; preds = %5, %44
  %8 = phi ptr [ %3, %5 ], [ %45, %44 ]
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !383
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %6, align 8, !tbaa !96
  %14 = icmp eq ptr %13, null
  br i1 %14, label %44, label %15

15:                                               ; preds = %12, %7
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 17739, ptr noundef nonnull @.str.139, i32 noundef 1, ptr noundef nonnull %8) #16
  %16 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !385
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @IDP_WriteProperty(ptr noundef nonnull %17, ptr noundef %0) #16
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.Key, ptr %8, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !386
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call fastcc void @write_animdata(ptr noundef %0, ptr noundef nonnull %22) #16
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %struct.Key, ptr %8, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !44
  %28 = icmp eq ptr %27, null
  br i1 %28, label %44, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.Key, ptr %8, i64 0, i32 4
  br label %31

31:                                               ; preds = %29, %41
  %32 = phi ptr [ %27, %29 ], [ %42, %41 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.140, i32 noundef 1, ptr noundef nonnull %32) #16
  %33 = getelementptr inbounds %struct.KeyBlock, ptr %32, i64 0, i32 10
  %34 = load ptr, ptr %33, align 8, !tbaa !387
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.KeyBlock, ptr %32, i64 0, i32 8
  %38 = load i32, ptr %37, align 8, !tbaa !389
  %39 = load i32, ptr %30, align 8, !tbaa !390
  %40 = mul nsw i32 %39, %38
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %40, ptr noundef nonnull %34) #16
  br label %41

41:                                               ; preds = %36, %31
  %42 = load ptr, ptr %32, align 8, !tbaa !44
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %31, !llvm.loop !391

44:                                               ; preds = %41, %25, %12
  %45 = load ptr, ptr %8, align 8, !tbaa !44
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %7, !llvm.loop !392

47:                                               ; preds = %44, %2
  tail call fastcc void @mywrite(ptr noundef %0, ptr noundef null, i32 noundef 0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_worlds(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !393 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %47, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  br label %7

7:                                                ; preds = %5, %44
  %8 = phi ptr [ %3, %5 ], [ %45, %44 ]
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !394
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %6, align 8, !tbaa !96
  %14 = icmp eq ptr %13, null
  br i1 %14, label %44, label %15

15:                                               ; preds = %12, %7
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 20311, ptr noundef nonnull @.str.141, i32 noundef 1, ptr noundef nonnull %8) #16
  %16 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !396
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @IDP_WriteProperty(ptr noundef nonnull %17, ptr noundef %0) #16
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.World, ptr %8, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !397
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call fastcc void @write_animdata(ptr noundef %0, ptr noundef nonnull %22) #16
  br label %25

25:                                               ; preds = %24, %20
  br label %26

26:                                               ; preds = %25, %32
  %27 = phi i64 [ %33, %32 ], [ 0, %25 ]
  %28 = getelementptr inbounds %struct.World, ptr %8, i64 0, i32 70, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.134, i32 noundef 1, ptr noundef nonnull %29) #16
  br label %32

32:                                               ; preds = %26, %31
  %33 = add nuw nsw i64 %27, 1
  %34 = icmp eq i64 %33, 18
  br i1 %34, label %35, label %26, !llvm.loop !398

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.World, ptr %8, i64 0, i32 75
  %37 = load ptr, ptr %36, align 8, !tbaa !399
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.105, i32 noundef 1, ptr noundef nonnull %37) #16
  %40 = load ptr, ptr %36, align 8, !tbaa !399
  tail call fastcc void @write_nodetree(ptr noundef %0, ptr noundef %40) #16
  br label %41

41:                                               ; preds = %39, %35
  %42 = getelementptr inbounds %struct.World, ptr %8, i64 0, i32 74
  %43 = load ptr, ptr %42, align 8, !tbaa !400
  tail call fastcc void @write_previews(ptr noundef %0, ptr noundef %43) #16
  br label %44

44:                                               ; preds = %41, %12
  %45 = load ptr, ptr %8, align 8, !tbaa !44
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %7, !llvm.loop !401

47:                                               ; preds = %44, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_texts(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !402 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %53, label %5

5:                                                ; preds = %2, %50
  %6 = phi ptr [ %51, %50 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.Text, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !403
  %9 = and i32 %8, 12
  %10 = icmp eq i32 %9, 12
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = and i32 %8, -9
  store i32 %12, ptr %7, align 8, !tbaa !403
  br label %13

13:                                               ; preds = %11, %5
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 22612, ptr noundef nonnull @.str.142, i32 noundef 1, ptr noundef nonnull %6) #16
  %14 = getelementptr inbounds %struct.Text, ptr %6, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !406
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %15) #20
  %19 = trunc i64 %18 to i32
  %20 = add i32 %19, 1
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %20, ptr noundef nonnull %15) #16
  br label %21

21:                                               ; preds = %17, %13
  %22 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !407
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @IDP_WriteProperty(ptr noundef nonnull %23, ptr noundef %0) #16
  br label %26

26:                                               ; preds = %25, %21
  %27 = load i32, ptr %7, align 8, !tbaa !403
  %28 = and i32 %27, 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.Text, ptr %6, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !44
  %33 = icmp eq ptr %32, null
  br i1 %33, label %50, label %37

34:                                               ; preds = %37
  %35 = load ptr, ptr %31, align 8, !tbaa !44
  %36 = icmp eq ptr %35, null
  br i1 %36, label %50, label %41

37:                                               ; preds = %30, %37
  %38 = phi ptr [ %39, %37 ], [ %32, %30 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.143, i32 noundef 1, ptr noundef nonnull %38) #16
  %39 = load ptr, ptr %38, align 8, !tbaa !44
  %40 = icmp eq ptr %39, null
  br i1 %40, label %34, label %37, !llvm.loop !408

41:                                               ; preds = %34, %41
  %42 = phi ptr [ %48, %41 ], [ %35, %34 ]
  %43 = getelementptr inbounds %struct.TextLine, ptr %42, i64 0, i32 4
  %44 = load i32, ptr %43, align 8, !tbaa !409
  %45 = add nsw i32 %44, 1
  %46 = getelementptr inbounds %struct.TextLine, ptr %42, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !411
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %45, ptr noundef %47) #16
  %48 = load ptr, ptr %42, align 8, !tbaa !44
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %41, !llvm.loop !412

50:                                               ; preds = %41, %30, %34, %26
  %51 = load ptr, ptr %6, align 8, !tbaa !44
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %5, !llvm.loop !413

53:                                               ; preds = %50, %2
  tail call fastcc void @mywrite(ptr noundef %0, ptr noundef null, i32 noundef 0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_speakers(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !414 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  br label %7

7:                                                ; preds = %5, %25
  %8 = phi ptr [ %3, %5 ], [ %26, %25 ]
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !415
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %6, align 8, !tbaa !96
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %12, %7
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 19283, ptr noundef nonnull @.str.144, i32 noundef 1, ptr noundef nonnull %8) #16
  %16 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !417
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @IDP_WriteProperty(ptr noundef nonnull %17, ptr noundef %0) #16
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.Speaker, ptr %8, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !418
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call fastcc void @write_animdata(ptr noundef %0, ptr noundef nonnull %22) #16
  br label %25

25:                                               ; preds = %20, %24, %12
  %26 = load ptr, ptr %8, align 8, !tbaa !44
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %7, !llvm.loop !419

28:                                               ; preds = %25, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_sounds(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !420 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  br label %7

7:                                                ; preds = %5, %28
  %8 = phi ptr [ %3, %5 ], [ %29, %28 ]
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !421
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %6, align 8, !tbaa !96
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %12, %7
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 20307, ptr noundef nonnull @.str.145, i32 noundef 1, ptr noundef nonnull %8) #16
  %16 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !423
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @IDP_WriteProperty(ptr noundef nonnull %17, ptr noundef %0) #16
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.bSound, ptr %8, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !424
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.130, i32 noundef 1, ptr noundef nonnull %22) #16
  %25 = load i32, ptr %22, align 8, !tbaa !344
  %26 = getelementptr inbounds %struct.PackedFile, ptr %22, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !346
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %25, ptr noundef %27) #16
  br label %28

28:                                               ; preds = %20, %24, %12
  %29 = load ptr, ptr %8, align 8, !tbaa !44
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %7, !llvm.loop !425

31:                                               ; preds = %28, %2
  tail call fastcc void @mywrite(ptr noundef %0, ptr noundef null, i32 noundef 0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_groups(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !426 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  br label %7

7:                                                ; preds = %5, %28
  %8 = phi ptr [ %3, %5 ], [ %29, %28 ]
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !427
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %6, align 8, !tbaa !96
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %12, %7
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 21063, ptr noundef nonnull @.str.146, i32 noundef 1, ptr noundef nonnull %8) #16
  %16 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !429
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @IDP_WriteProperty(ptr noundef nonnull %17, ptr noundef %0) #16
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.Group, ptr %8, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %26, %24 ], [ %22, %20 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.147, i32 noundef 1, ptr noundef nonnull %25) #16
  %26 = load ptr, ptr %25, align 8, !tbaa !44
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %24, !llvm.loop !430

28:                                               ; preds = %24, %20, %12
  %29 = load ptr, ptr %8, align 8, !tbaa !44
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %7, !llvm.loop !431

31:                                               ; preds = %28, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_armatures(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !432 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %36, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  br label %7

7:                                                ; preds = %5, %33
  %8 = phi ptr [ %3, %5 ], [ %34, %33 ]
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !433
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %6, align 8, !tbaa !96
  %14 = icmp eq ptr %13, null
  br i1 %14, label %33, label %15

15:                                               ; preds = %12, %7
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 21057, ptr noundef nonnull @.str.148, i32 noundef 1, ptr noundef nonnull %8) #16
  %16 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !435
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @IDP_WriteProperty(ptr noundef nonnull %17, ptr noundef %0) #16
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.bArmature, ptr %8, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !436
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call fastcc void @write_animdata(ptr noundef %0, ptr noundef nonnull %22) #16
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %struct.bArmature, ptr %8, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !44
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25, %29
  %30 = phi ptr [ %31, %29 ], [ %27, %25 ]
  tail call fastcc void @write_bone(ptr noundef %0, ptr noundef nonnull %30) #16
  %31 = load ptr, ptr %30, align 8, !tbaa !44
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %29, !llvm.loop !437

33:                                               ; preds = %29, %25, %12
  %34 = load ptr, ptr %8, align 8, !tbaa !44
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %7, !llvm.loop !438

36:                                               ; preds = %33, %2
  tail call fastcc void @mywrite(ptr noundef %0, ptr noundef null, i32 noundef 0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_actions(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !439 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %40, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  br label %7

7:                                                ; preds = %5, %37
  %8 = phi ptr [ %3, %5 ], [ %38, %37 ]
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !440
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %6, align 8, !tbaa !96
  %14 = icmp eq ptr %13, null
  br i1 %14, label %37, label %15

15:                                               ; preds = %12, %7
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 17217, ptr noundef nonnull @.str.150, i32 noundef 1, ptr noundef nonnull %8) #16
  %16 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !442
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @IDP_WriteProperty(ptr noundef nonnull %17, ptr noundef %0) #16
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.bAction, ptr %8, i64 0, i32 1
  tail call fastcc void @write_fcurves(ptr noundef %0, ptr noundef nonnull %21) #16
  %22 = getelementptr inbounds %struct.bAction, ptr %8, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %20, %25
  %26 = phi ptr [ %27, %25 ], [ %23, %20 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.151, i32 noundef 1, ptr noundef nonnull %26) #16
  %27 = load ptr, ptr %26, align 8, !tbaa !44
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %25, !llvm.loop !443

29:                                               ; preds = %25, %20
  %30 = getelementptr inbounds %struct.bAction, ptr %8, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !44
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29, %33
  %34 = phi ptr [ %35, %33 ], [ %31, %29 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.100, i32 noundef 1, ptr noundef nonnull %34) #16
  %35 = load ptr, ptr %34, align 8, !tbaa !44
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %33, !llvm.loop !444

37:                                               ; preds = %33, %29, %12
  %38 = load ptr, ptr %8, align 8, !tbaa !44
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %7, !llvm.loop !445

40:                                               ; preds = %37, %2
  tail call fastcc void @mywrite(ptr noundef %0, ptr noundef null, i32 noundef 0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_objects(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !446 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %105, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  br label %7

7:                                                ; preds = %5, %102
  %8 = phi ptr [ %3, %5 ], [ %103, %102 ]
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !447
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %6, align 8, !tbaa !96
  %14 = icmp eq ptr %13, null
  br i1 %14, label %102, label %15

15:                                               ; preds = %12, %7
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 16975, ptr noundef nonnull @.str.152, i32 noundef 1, ptr noundef nonnull %8) #16
  %16 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !450
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @IDP_WriteProperty(ptr noundef nonnull %17, ptr noundef %0) #16
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !451
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call fastcc void @write_animdata(ptr noundef %0, ptr noundef nonnull %22) #16
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 31
  %27 = load i32, ptr %26, align 8, !tbaa !452
  %28 = shl i32 %27, 3
  %29 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 29
  %30 = load ptr, ptr %29, align 8, !tbaa !453
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %28, ptr noundef %30) #16
  %31 = load i32, ptr %26, align 8, !tbaa !452
  %32 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 30
  %33 = load ptr, ptr %32, align 8, !tbaa !454
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %31, ptr noundef %33) #16
  %34 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 91
  tail call fastcc void @write_properties(ptr noundef %0, ptr noundef nonnull %34) #16
  %35 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 92
  tail call fastcc void @write_sensors(ptr noundef %0, ptr noundef nonnull %35) #16
  %36 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 93
  tail call fastcc void @write_controllers(ptr noundef %0, ptr noundef nonnull %36) #16
  %37 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 94
  tail call fastcc void @write_actuators(ptr noundef %0, ptr noundef nonnull %37) #16
  %38 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 3
  %39 = load i16, ptr %38, align 8, !tbaa !455
  %40 = icmp eq i16 %39, 25
  br i1 %40, label %41, label %57

41:                                               ; preds = %25
  %42 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %43 = load ptr, ptr %42, align 8, !tbaa !456
  %44 = icmp eq ptr %43, null
  br i1 %44, label %57, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 18
  %47 = load ptr, ptr %46, align 8, !tbaa !457
  %48 = icmp eq ptr %47, null
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.bArmature, ptr %43, i64 0, i32 5
  %51 = load ptr, ptr %50, align 8, !tbaa !458
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.bPose, ptr %47, i64 0, i32 15
  %55 = getelementptr inbounds %struct.Bone, ptr %51, i64 0, i32 5
  %56 = tail call ptr @BLI_strncpy(ptr noundef nonnull %54, ptr noundef nonnull %55, i64 noundef 64) #17
  br label %57

57:                                               ; preds = %41, %45, %49, %53, %25
  %58 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 18
  %59 = load ptr, ptr %58, align 8, !tbaa !457
  tail call fastcc void @write_pose(ptr noundef %0, ptr noundef %59) #16
  %60 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 25
  tail call fastcc void @write_defgroups(ptr noundef %0, ptr noundef nonnull %60) #16
  %61 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 106
  tail call fastcc void @write_constraints(ptr noundef %0, ptr noundef nonnull %61) #16
  %62 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 22
  %63 = load ptr, ptr %62, align 8, !tbaa !459
  tail call fastcc void @write_motionpath(ptr noundef %0, ptr noundef %63) #16
  %64 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 110
  %65 = load ptr, ptr %64, align 8, !tbaa !460
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.153, i32 noundef 1, ptr noundef %65) #16
  %66 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 111
  %67 = load ptr, ptr %66, align 8, !tbaa !461
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.154, i32 noundef 1, ptr noundef %67) #16
  %68 = load ptr, ptr %66, align 8, !tbaa !461
  %69 = icmp eq ptr %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %57
  %71 = getelementptr inbounds %struct.SoftBody, ptr %68, i64 0, i32 48
  tail call fastcc void @write_pointcaches(ptr noundef %0, ptr noundef nonnull %71) #16
  %72 = load ptr, ptr %66, align 8, !tbaa !461
  %73 = getelementptr inbounds %struct.SoftBody, ptr %72, i64 0, i32 49
  %74 = load ptr, ptr %73, align 8, !tbaa !462
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.107, i32 noundef 1, ptr noundef %74) #16
  br label %75

75:                                               ; preds = %70, %57
  %76 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 101
  %77 = load ptr, ptr %76, align 8, !tbaa !464
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.155, i32 noundef 1, ptr noundef %77) #16
  %78 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 128
  %79 = load ptr, ptr %78, align 8, !tbaa !465
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.156, i32 noundef 1, ptr noundef nonnull %79) #16
  br label %82

82:                                               ; preds = %81, %75
  %83 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 129
  %84 = load ptr, ptr %83, align 8, !tbaa !466
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.157, i32 noundef 1, ptr noundef nonnull %84) #16
  br label %87

87:                                               ; preds = %86, %82
  %88 = load i16, ptr %38, align 8, !tbaa !455
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 88
  %92 = load i8, ptr %91, align 1, !tbaa !467
  %93 = icmp eq i8 %92, 8
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 131
  %96 = load ptr, ptr %95, align 8, !tbaa !468
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.158, i32 noundef 1, ptr noundef %96) #16
  br label %97

97:                                               ; preds = %94, %90, %87
  %98 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 109
  tail call fastcc void @write_particlesystems(ptr noundef %0, ptr noundef nonnull %98) #16
  %99 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 26
  tail call fastcc void @write_modifiers(ptr noundef %0, ptr noundef nonnull %99) #16
  %100 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 126
  tail call fastcc void @writelist(ptr noundef %0, ptr noundef nonnull @.str.159, ptr noundef nonnull %100) #16
  %101 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 132
  tail call fastcc void @writelist(ptr noundef %0, ptr noundef nonnull @.str.160, ptr noundef nonnull %101) #16
  br label %102

102:                                              ; preds = %97, %12
  %103 = load ptr, ptr %8, align 8, !tbaa !44
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %7, !llvm.loop !469

105:                                              ; preds = %102, %2
  tail call fastcc void @mywrite(ptr noundef %0, ptr noundef null, i32 noundef 0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_materials(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !470 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %57, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  br label %7

7:                                                ; preds = %5, %54
  %8 = phi ptr [ %3, %5 ], [ %55, %54 ]
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !471
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %6, align 8, !tbaa !96
  %14 = icmp eq ptr %13, null
  br i1 %14, label %54, label %15

15:                                               ; preds = %12, %7
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 16717, ptr noundef nonnull @.str.226, i32 noundef 1, ptr noundef nonnull %8) #16
  %16 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !475
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @IDP_WriteProperty(ptr noundef nonnull %17, ptr noundef %0) #16
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.Material, ptr %8, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !476
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call fastcc void @write_animdata(ptr noundef %0, ptr noundef nonnull %22) #16
  br label %25

25:                                               ; preds = %24, %20
  br label %26

26:                                               ; preds = %25, %32
  %27 = phi i64 [ %33, %32 ], [ 0, %25 ]
  %28 = getelementptr inbounds %struct.Material, ptr %8, i64 0, i32 102, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.134, i32 noundef 1, ptr noundef nonnull %29) #16
  br label %32

32:                                               ; preds = %26, %31
  %33 = add nuw nsw i64 %27, 1
  %34 = icmp eq i64 %33, 18
  br i1 %34, label %35, label %26, !llvm.loop !477

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.Material, ptr %8, i64 0, i32 92
  %37 = load ptr, ptr %36, align 8, !tbaa !478
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.223, i32 noundef 1, ptr noundef nonnull %37) #16
  br label %40

40:                                               ; preds = %39, %35
  %41 = getelementptr inbounds %struct.Material, ptr %8, i64 0, i32 93
  %42 = load ptr, ptr %41, align 8, !tbaa !479
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.223, i32 noundef 1, ptr noundef nonnull %42) #16
  br label %45

45:                                               ; preds = %44, %40
  %46 = getelementptr inbounds %struct.Material, ptr %8, i64 0, i32 103
  %47 = load ptr, ptr %46, align 8, !tbaa !480
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.105, i32 noundef 1, ptr noundef nonnull %47) #16
  %50 = load ptr, ptr %46, align 8, !tbaa !480
  tail call fastcc void @write_nodetree(ptr noundef %0, ptr noundef %50) #16
  br label %51

51:                                               ; preds = %49, %45
  %52 = getelementptr inbounds %struct.Material, ptr %8, i64 0, i32 106
  %53 = load ptr, ptr %52, align 8, !tbaa !481
  tail call fastcc void @write_previews(ptr noundef %0, ptr noundef %53) #16
  br label %54

54:                                               ; preds = %51, %12
  %55 = load ptr, ptr %8, align 8, !tbaa !44
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %7, !llvm.loop !482

57:                                               ; preds = %54, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_textures(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !483 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %87, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  br label %7

7:                                                ; preds = %5, %84
  %8 = phi ptr [ %3, %5 ], [ %85, %84 ]
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !484
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %6, align 8, !tbaa !96
  %14 = icmp eq ptr %13, null
  br i1 %14, label %84, label %15

15:                                               ; preds = %12, %7
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 17748, ptr noundef nonnull @.str.227, i32 noundef 1, ptr noundef nonnull %8) #16
  %16 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !486
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @IDP_WriteProperty(ptr noundef nonnull %17, ptr noundef %0) #16
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.Tex, ptr %8, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !487
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call fastcc void @write_animdata(ptr noundef %0, ptr noundef nonnull %22) #16
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %struct.Tex, ptr %8, i64 0, i32 55
  %27 = load ptr, ptr %26, align 8, !tbaa !488
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.223, i32 noundef 1, ptr noundef nonnull %27) #16
  br label %30

30:                                               ; preds = %29, %25
  %31 = getelementptr inbounds %struct.Tex, ptr %8, i64 0, i32 32
  %32 = load i16, ptr %31, align 8, !tbaa !489
  %33 = icmp eq i16 %32, 10
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.Tex, ptr %8, i64 0, i32 56
  %36 = load ptr, ptr %35, align 8, !tbaa !490
  %37 = icmp eq ptr %36, null
  br i1 %37, label %60, label %38

38:                                               ; preds = %34
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.228, i32 noundef 1, ptr noundef nonnull %36) #16
  %39 = load i16, ptr %31, align 8, !tbaa !489
  br label %40

40:                                               ; preds = %38, %30
  %41 = phi i16 [ %32, %30 ], [ %39, %38 ]
  %42 = icmp eq i16 %41, 14
  br i1 %42, label %43, label %60

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.Tex, ptr %8, i64 0, i32 58
  %45 = load ptr, ptr %44, align 8, !tbaa !491
  %46 = icmp eq ptr %45, null
  br i1 %46, label %60, label %47

47:                                               ; preds = %43
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.229, i32 noundef 1, ptr noundef nonnull %45) #16
  %48 = load ptr, ptr %44, align 8, !tbaa !491
  %49 = getelementptr inbounds %struct.PointDensity, ptr %48, i64 0, i32 23
  %50 = load ptr, ptr %49, align 8, !tbaa !492
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.223, i32 noundef 1, ptr noundef nonnull %50) #16
  %53 = load ptr, ptr %44, align 8, !tbaa !491
  br label %54

54:                                               ; preds = %52, %47
  %55 = phi ptr [ %53, %52 ], [ %48, %47 ]
  %56 = getelementptr inbounds %struct.PointDensity, ptr %55, i64 0, i32 24
  %57 = load ptr, ptr %56, align 8, !tbaa !494
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  tail call fastcc void @write_curvemapping(ptr noundef %0, ptr noundef nonnull %57) #16
  br label %60

60:                                               ; preds = %34, %54, %59, %43, %40
  %61 = load i16, ptr %31, align 8, !tbaa !489
  %62 = icmp eq i16 %61, 15
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.Tex, ptr %8, i64 0, i32 59
  %65 = load ptr, ptr %64, align 8, !tbaa !495
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.230, i32 noundef 1, ptr noundef %65) #16
  %66 = load i16, ptr %31, align 8, !tbaa !489
  br label %67

67:                                               ; preds = %63, %60
  %68 = phi i16 [ %66, %63 ], [ %61, %60 ]
  %69 = icmp eq i16 %68, 16
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.Tex, ptr %8, i64 0, i32 60
  %72 = load ptr, ptr %71, align 8, !tbaa !496
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.231, i32 noundef 1, ptr noundef nonnull %72) #16
  br label %75

75:                                               ; preds = %74, %70, %67
  %76 = getelementptr inbounds %struct.Tex, ptr %8, i64 0, i32 52
  %77 = load ptr, ptr %76, align 8, !tbaa !497
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.105, i32 noundef 1, ptr noundef nonnull %77) #16
  %80 = load ptr, ptr %76, align 8, !tbaa !497
  tail call fastcc void @write_nodetree(ptr noundef %0, ptr noundef %80) #16
  br label %81

81:                                               ; preds = %79, %75
  %82 = getelementptr inbounds %struct.Tex, ptr %8, i64 0, i32 57
  %83 = load ptr, ptr %82, align 8, !tbaa !498
  tail call fastcc void @write_previews(ptr noundef %0, ptr noundef %83) #16
  br label %84

84:                                               ; preds = %81, %12
  %85 = load ptr, ptr %8, align 8, !tbaa !44
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %7, !llvm.loop !499

87:                                               ; preds = %84, %2
  tail call fastcc void @mywrite(ptr noundef %0, ptr noundef null, i32 noundef 0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_meshes(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !500 {
  %3 = alloca %struct.Mesh, align 8
  %4 = alloca %struct.Mesh, align 8
  %5 = load ptr, ptr %1, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %104, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 10
  %9 = load i8, ptr %8, align 8, !tbaa !66
  %10 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  %11 = icmp eq i8 %9, 0
  %12 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 7
  %13 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 12
  %14 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 28
  %15 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 30
  %16 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 31
  %17 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 23
  %18 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 24
  %19 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 25
  %20 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 20
  %21 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 9
  %22 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 1
  %23 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 47
  %24 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 5
  %25 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 26
  %26 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 21
  %27 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 27
  %28 = getelementptr inbounds %struct.Mesh, ptr %4, i64 0, i32 22
  %29 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 12
  %30 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 28
  %31 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 23
  %32 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 9
  %33 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 1
  %34 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 47
  %35 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 5
  %36 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 29
  %37 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 6
  %38 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 26
  %39 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 21
  %40 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 27
  %41 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 22
  %42 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 31
  %43 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 25
  %44 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 30
  %45 = getelementptr inbounds %struct.Mesh, ptr %3, i64 0, i32 24
  br label %46

46:                                               ; preds = %7, %101
  %47 = phi ptr [ %5, %7 ], [ %102, %101 ]
  %48 = getelementptr inbounds %struct.ID, ptr %47, i64 0, i32 6
  %49 = load i32, ptr %48, align 4, !tbaa !501
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load ptr, ptr %10, align 8, !tbaa !96
  %53 = icmp eq ptr %52, null
  br i1 %53, label %101, label %54

54:                                               ; preds = %51, %46
  br i1 %11, label %55, label %76

55:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 1376, ptr nonnull %3) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1376) %3, ptr noundef nonnull align 8 dereferenceable(1376) %47, i64 1376, i1 false), !tbaa.struct !504
  store ptr null, ptr %29, align 8, !tbaa !506
  store i32 0, ptr %30, align 8, !tbaa !507
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %31, i8 0, i64 200, i1 false)
  call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 17741, ptr noundef nonnull @.str.232, i32 noundef 1, ptr noundef nonnull %47, ptr noundef nonnull %3) #16
  %56 = load ptr, ptr %32, align 8, !tbaa !508
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  call void @IDP_WriteProperty(ptr noundef nonnull %56, ptr noundef %0) #16
  br label %59

59:                                               ; preds = %58, %55
  %60 = load ptr, ptr %33, align 8, !tbaa !509
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  call fastcc void @write_animdata(ptr noundef %0, ptr noundef nonnull %60) #16
  br label %63

63:                                               ; preds = %62, %59
  %64 = load i16, ptr %34, align 2, !tbaa !510
  %65 = sext i16 %64 to i32
  %66 = shl nsw i32 %65, 3
  %67 = load ptr, ptr %35, align 8, !tbaa !511
  call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %66, ptr noundef %67) #16
  %68 = load i32, ptr %36, align 4, !tbaa !512
  %69 = shl i32 %68, 3
  %70 = load ptr, ptr %37, align 8, !tbaa !513
  call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %69, ptr noundef %70) #16
  %71 = load i32, ptr %38, align 8, !tbaa !514
  call fastcc void @write_customdata(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %71, ptr noundef nonnull %39) #16
  %72 = load i32, ptr %40, align 4, !tbaa !515
  call fastcc void @write_customdata(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %72, ptr noundef nonnull %41) #16
  %73 = load i32, ptr %30, align 8, !tbaa !507
  call fastcc void @write_customdata(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %73, ptr noundef nonnull %31) #16
  %74 = load i32, ptr %42, align 4, !tbaa !516
  call fastcc void @write_customdata(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %74, ptr noundef nonnull %43) #16
  %75 = load i32, ptr %44, align 8, !tbaa !517
  call fastcc void @write_customdata(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %75, ptr noundef nonnull %45) #16
  call void @llvm.lifetime.end.p0(i64 1376, ptr nonnull %3) #18
  br label %101

76:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 1376, ptr nonnull %4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1376) %4, ptr noundef nonnull align 8 dereferenceable(1376) %47, i64 1376, i1 false), !tbaa.struct !504
  store ptr null, ptr %12, align 8, !tbaa !518
  store ptr null, ptr %13, align 8, !tbaa !506
  store i32 0, ptr %14, align 8, !tbaa !507
  store i32 0, ptr %15, align 8, !tbaa !517
  store i32 0, ptr %16, align 4, !tbaa !516
  call void @CustomData_reset(ptr noundef nonnull %17) #17
  call void @CustomData_reset(ptr noundef nonnull %18) #17
  call void @CustomData_reset(ptr noundef nonnull %19) #17
  store ptr null, ptr %20, align 8, !tbaa !519
  %77 = getelementptr inbounds %struct.Mesh, ptr %47, i64 0, i32 25
  %78 = getelementptr inbounds %struct.Mesh, ptr %47, i64 0, i32 24
  %79 = load i32, ptr %14, align 8, !tbaa !507
  %80 = getelementptr inbounds %struct.Mesh, ptr %47, i64 0, i32 31
  %81 = load i32, ptr %80, align 4, !tbaa !516
  %82 = getelementptr inbounds %struct.Mesh, ptr %47, i64 0, i32 30
  %83 = load i32, ptr %82, align 8, !tbaa !517
  %84 = call i32 @BKE_mesh_mpoly_to_mface(ptr noundef nonnull %17, ptr noundef nonnull %77, ptr noundef nonnull %78, i32 noundef %79, i32 noundef %81, i32 noundef %83) #17
  store i32 %84, ptr %14, align 8, !tbaa !507
  call void @BKE_mesh_update_customdata_pointers(ptr noundef nonnull %4, i8 noundef zeroext 0) #17
  call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 17741, ptr noundef nonnull @.str.232, i32 noundef 1, ptr noundef nonnull %47, ptr noundef nonnull %4) #16
  %85 = load ptr, ptr %21, align 8, !tbaa !508
  %86 = icmp eq ptr %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %76
  call void @IDP_WriteProperty(ptr noundef nonnull %85, ptr noundef %0) #16
  br label %88

88:                                               ; preds = %87, %76
  %89 = load ptr, ptr %22, align 8, !tbaa !509
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  call fastcc void @write_animdata(ptr noundef %0, ptr noundef nonnull %89) #16
  br label %92

92:                                               ; preds = %91, %88
  %93 = load i16, ptr %23, align 2, !tbaa !510
  %94 = sext i16 %93 to i32
  %95 = shl nsw i32 %94, 3
  %96 = load ptr, ptr %24, align 8, !tbaa !511
  call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %95, ptr noundef %96) #16
  %97 = load i32, ptr %25, align 8, !tbaa !514
  call fastcc void @write_customdata(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %97, ptr noundef nonnull %26) #16
  %98 = load i32, ptr %27, align 4, !tbaa !515
  call fastcc void @write_customdata(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %98, ptr noundef nonnull %28) #16
  %99 = load i32, ptr %14, align 8, !tbaa !507
  call fastcc void @write_customdata(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %99, ptr noundef nonnull %17) #16
  %100 = load i32, ptr %14, align 8, !tbaa !507
  call void @CustomData_free(ptr noundef nonnull %17, i32 noundef %100) #17
  call void @llvm.lifetime.end.p0(i64 1376, ptr nonnull %4) #18
  br label %101

101:                                              ; preds = %63, %92, %51
  %102 = load ptr, ptr %47, align 8, !tbaa !44
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %46, !llvm.loop !520

104:                                              ; preds = %101, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_particlesettings(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !521 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %100, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  br label %7

7:                                                ; preds = %5, %97
  %8 = phi ptr [ %3, %5 ], [ %98, %97 ]
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !522
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %6, align 8, !tbaa !96
  %14 = icmp eq ptr %13, null
  br i1 %14, label %97, label %15

15:                                               ; preds = %12, %7
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 16720, ptr noundef nonnull @.str.238, i32 noundef 1, ptr noundef nonnull %8) #16
  %16 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !524
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @IDP_WriteProperty(ptr noundef nonnull %17, ptr noundef %0) #16
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.ParticleSettings, ptr %8, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !525
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call fastcc void @write_animdata(ptr noundef %0, ptr noundef nonnull %22) #16
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %struct.ParticleSettings, ptr %8, i64 0, i32 128
  %27 = load ptr, ptr %26, align 8, !tbaa !526
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.153, i32 noundef 1, ptr noundef %27) #16
  %28 = getelementptr inbounds %struct.ParticleSettings, ptr %8, i64 0, i32 129
  %29 = load ptr, ptr %28, align 8, !tbaa !527
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.153, i32 noundef 1, ptr noundef %29) #16
  %30 = getelementptr inbounds %struct.ParticleSettings, ptr %8, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !528
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.107, i32 noundef 1, ptr noundef %31) #16
  %32 = getelementptr inbounds %struct.ParticleSettings, ptr %8, i64 0, i32 123
  %33 = load ptr, ptr %32, align 8, !tbaa !44
  %34 = icmp eq ptr %33, null
  br i1 %34, label %62, label %35

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.ParticleSettings, ptr %8, i64 0, i32 122
  br label %37

37:                                               ; preds = %35, %59
  %38 = phi ptr [ %33, %35 ], [ %60, %59 ]
  %39 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %38, i64 0, i32 5
  store i16 0, ptr %39, align 4, !tbaa !529
  %40 = load ptr, ptr %36, align 8, !tbaa !531
  %41 = icmp eq ptr %40, null
  br i1 %41, label %59, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.Group, ptr %40, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !532
  %45 = icmp eq ptr %44, null
  br i1 %45, label %59, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.ParticleDupliWeight, ptr %38, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !533
  br label %49

49:                                               ; preds = %46, %55
  %50 = phi i16 [ 0, %46 ], [ %57, %55 ]
  %51 = phi ptr [ %44, %46 ], [ %56, %55 ]
  %52 = getelementptr inbounds %struct.GroupObject, ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !534
  %54 = icmp eq ptr %53, %48
  br i1 %54, label %59, label %55

55:                                               ; preds = %49
  %56 = load ptr, ptr %51, align 8, !tbaa !536
  %57 = add i16 %50, 1
  store i16 %57, ptr %39, align 4, !tbaa !529
  %58 = icmp eq ptr %56, null
  br i1 %58, label %59, label %49, !llvm.loop !537

59:                                               ; preds = %55, %49, %42, %37
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.239, i32 noundef 1, ptr noundef nonnull %38) #16
  %60 = load ptr, ptr %38, align 8, !tbaa !44
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %37, !llvm.loop !538

62:                                               ; preds = %59, %25
  %63 = getelementptr inbounds %struct.ParticleSettings, ptr %8, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !539
  %65 = icmp eq ptr %64, null
  br i1 %65, label %78, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.ParticleSettings, ptr %8, i64 0, i32 11
  %68 = load i16, ptr %67, align 8, !tbaa !540
  %69 = icmp eq i16 %68, 3
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.BoidSettings, ptr %64, i64 0, i32 22
  %72 = load ptr, ptr %71, align 8, !tbaa !541
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.240, i32 noundef 1, ptr noundef nonnull %64) #16
  %73 = icmp eq ptr %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %70, %74
  %75 = phi ptr [ %76, %74 ], [ %72, %70 ]
  tail call fastcc void @write_boid_state(ptr noundef %0, ptr noundef nonnull %75) #16
  %76 = load ptr, ptr %75, align 8, !tbaa !543
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %74, !llvm.loop !545

78:                                               ; preds = %74, %70, %66, %62
  %79 = getelementptr inbounds %struct.ParticleSettings, ptr %8, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !546
  %81 = icmp eq ptr %80, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.ParticleSettings, ptr %8, i64 0, i32 11
  %84 = load i16, ptr %83, align 8, !tbaa !540
  %85 = icmp eq i16 %84, 4
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.241, i32 noundef 1, ptr noundef nonnull %80) #16
  br label %87

87:                                               ; preds = %86, %82, %78
  br label %88

88:                                               ; preds = %87, %94
  %89 = phi i64 [ %95, %94 ], [ 0, %87 ]
  %90 = getelementptr inbounds %struct.ParticleSettings, ptr %8, i64 0, i32 121, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !44
  %92 = icmp eq ptr %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %88
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.134, i32 noundef 1, ptr noundef nonnull %91) #16
  br label %94

94:                                               ; preds = %88, %93
  %95 = add nuw nsw i64 %89, 1
  %96 = icmp eq i64 %95, 18
  br i1 %96, label %97, label %88, !llvm.loop !547

97:                                               ; preds = %94, %12
  %98 = load ptr, ptr %8, align 8, !tbaa !44
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %7, !llvm.loop !548

100:                                              ; preds = %97, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_nodetrees(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !549 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  br label %7

7:                                                ; preds = %5, %25
  %8 = phi ptr [ %3, %5 ], [ %26, %25 ]
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !550
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %6, align 8, !tbaa !96
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %12, %7
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 21582, ptr noundef nonnull @.str.105, i32 noundef 1, ptr noundef nonnull %8) #16
  tail call fastcc void @write_nodetree(ptr noundef %0, ptr noundef nonnull %8) #16
  %16 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !551
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @IDP_WriteProperty(ptr noundef nonnull %17, ptr noundef %0) #16
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.bNodeTree, ptr %8, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !552
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call fastcc void @write_animdata(ptr noundef %0, ptr noundef nonnull %22) #16
  br label %25

25:                                               ; preds = %12, %24, %20
  %26 = load ptr, ptr %8, align 8, !tbaa !44
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %7, !llvm.loop !553

28:                                               ; preds = %25, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_brushes(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !554 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  br label %7

7:                                                ; preds = %5, %30
  %8 = phi ptr [ %3, %5 ], [ %31, %30 ]
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !555
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %6, align 8, !tbaa !96
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %12, %7
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 21058, ptr noundef nonnull @.str.249, i32 noundef 1, ptr noundef nonnull %8) #16
  %16 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !559
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @IDP_WriteProperty(ptr noundef nonnull %17, ptr noundef %0) #16
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.Brush, ptr %8, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !560
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  tail call fastcc void @write_curvemapping(ptr noundef %0, ptr noundef nonnull %22) #16
  %25 = load ptr, ptr %21, align 8, !tbaa !560
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.Brush, ptr %8, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !561
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.223, i32 noundef 1, ptr noundef %29) #16
  br label %30

30:                                               ; preds = %20, %12, %27, %24
  %31 = load ptr, ptr %8, align 8, !tbaa !44
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %7, !llvm.loop !562

33:                                               ; preds = %30, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_palettes(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !563 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  br label %7

7:                                                ; preds = %5, %28
  %8 = phi ptr [ %3, %5 ], [ %29, %28 ]
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !564
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %6, align 8, !tbaa !96
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %12, %7
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 19536, ptr noundef nonnull @.str.250, i32 noundef 1, ptr noundef nonnull %8) #16
  %16 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !566
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @IDP_WriteProperty(ptr noundef nonnull %17, ptr noundef %0) #16
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.Palette, ptr %8, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %26, %24 ], [ %22, %20 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.251, i32 noundef 1, ptr noundef nonnull %25) #16
  %26 = load ptr, ptr %25, align 8, !tbaa !44
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %24, !llvm.loop !567

28:                                               ; preds = %24, %20, %12
  %29 = load ptr, ptr %8, align 8, !tbaa !44
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %7, !llvm.loop !568

31:                                               ; preds = %28, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_paintcurves(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !569 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  br label %7

7:                                                ; preds = %5, %24
  %8 = phi ptr [ %3, %5 ], [ %25, %24 ]
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !570
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %6, align 8, !tbaa !96
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %12, %7
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 17232, ptr noundef nonnull @.str.252, i32 noundef 1, ptr noundef nonnull %8) #16
  %16 = getelementptr inbounds %struct.PaintCurve, ptr %8, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !572
  %18 = getelementptr inbounds %struct.PaintCurve, ptr %8, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !573
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.253, i32 noundef %17, ptr noundef %19) #16
  %20 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !574
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  tail call void @IDP_WriteProperty(ptr noundef nonnull %21, ptr noundef %0) #16
  br label %24

24:                                               ; preds = %12, %23, %15
  %25 = load ptr, ptr %8, align 8, !tbaa !44
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %7, !llvm.loop !575

27:                                               ; preds = %24, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_scripts(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !576 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  br label %7

7:                                                ; preds = %5, %20
  %8 = phi ptr [ %3, %5 ], [ %21, %20 ]
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !577
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %6, align 8, !tbaa !96
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %12, %7
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 22864, ptr noundef nonnull @.str.254, i32 noundef 1, ptr noundef nonnull %8) #16
  %16 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !579
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @IDP_WriteProperty(ptr noundef nonnull %17, ptr noundef %0) #16
  br label %20

20:                                               ; preds = %12, %19, %15
  %21 = load ptr, ptr %8, align 8, !tbaa !44
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %7, !llvm.loop !580

23:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_gpencils(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !581 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %46, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  br label %7

7:                                                ; preds = %5, %43
  %8 = phi ptr [ %3, %5 ], [ %44, %43 ]
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !582
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %6, align 8, !tbaa !96
  %14 = icmp eq ptr %13, null
  br i1 %14, label %43, label %15

15:                                               ; preds = %12, %7
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 17479, ptr noundef nonnull @.str.255, i32 noundef 1, ptr noundef nonnull %8) #16
  %16 = getelementptr inbounds %struct.bGPdata, ptr %8, i64 0, i32 1
  tail call fastcc void @writelist(ptr noundef %0, ptr noundef nonnull @.str.256, ptr noundef nonnull %16) #16
  %17 = load ptr, ptr %16, align 8, !tbaa !44
  %18 = icmp eq ptr %17, null
  br i1 %18, label %43, label %22

19:                                               ; preds = %27, %22
  %20 = load ptr, ptr %23, align 8, !tbaa !44
  %21 = icmp eq ptr %20, null
  br i1 %21, label %43, label %22, !llvm.loop !584

22:                                               ; preds = %15, %19
  %23 = phi ptr [ %20, %19 ], [ %17, %15 ]
  %24 = getelementptr inbounds %struct.bGPDlayer, ptr %23, i64 0, i32 2
  tail call fastcc void @writelist(ptr noundef %0, ptr noundef nonnull @.str.257, ptr noundef nonnull %24) #16
  %25 = load ptr, ptr %24, align 8, !tbaa !44
  %26 = icmp eq ptr %25, null
  br i1 %26, label %19, label %30

27:                                               ; preds = %35, %30
  %28 = load ptr, ptr %31, align 8, !tbaa !44
  %29 = icmp eq ptr %28, null
  br i1 %29, label %19, label %30, !llvm.loop !585

30:                                               ; preds = %22, %27
  %31 = phi ptr [ %28, %27 ], [ %25, %22 ]
  %32 = getelementptr inbounds %struct.bGPDframe, ptr %31, i64 0, i32 2
  tail call fastcc void @writelist(ptr noundef %0, ptr noundef nonnull @.str.258, ptr noundef nonnull %32) #16
  %33 = load ptr, ptr %32, align 8, !tbaa !44
  %34 = icmp eq ptr %33, null
  br i1 %34, label %27, label %35

35:                                               ; preds = %30, %35
  %36 = phi ptr [ %41, %35 ], [ %33, %30 ]
  %37 = getelementptr inbounds %struct.bGPDstroke, ptr %36, i64 0, i32 4
  %38 = load i32, ptr %37, align 8, !tbaa !586
  %39 = getelementptr inbounds %struct.bGPDstroke, ptr %36, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !588
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.259, i32 noundef %38, ptr noundef %40) #16
  %41 = load ptr, ptr %36, align 8, !tbaa !44
  %42 = icmp eq ptr %41, null
  br i1 %42, label %27, label %35, !llvm.loop !589

43:                                               ; preds = %19, %15, %12
  %44 = load ptr, ptr %8, align 8, !tbaa !44
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %7, !llvm.loop !590

46:                                               ; preds = %43, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_linestyles(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !591 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %48, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  br label %7

7:                                                ; preds = %5, %45
  %8 = phi ptr [ %3, %5 ], [ %46, %45 ]
  %9 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !592
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %6, align 8, !tbaa !96
  %14 = icmp eq ptr %13, null
  br i1 %14, label %45, label %15

15:                                               ; preds = %12, %7
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 21324, ptr noundef nonnull @.str.260, i32 noundef 1, ptr noundef nonnull %8) #16
  %16 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !594
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @IDP_WriteProperty(ptr noundef nonnull %17, ptr noundef %0) #16
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %8, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !595
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call fastcc void @write_animdata(ptr noundef %0, ptr noundef nonnull %22) #16
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %8, i64 0, i32 41
  tail call fastcc void @write_linestyle_color_modifiers(ptr noundef %0, ptr noundef nonnull %26) #16
  %27 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %8, i64 0, i32 42
  tail call fastcc void @write_linestyle_alpha_modifiers(ptr noundef %0, ptr noundef nonnull %27) #16
  %28 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %8, i64 0, i32 43
  tail call fastcc void @write_linestyle_thickness_modifiers(ptr noundef %0, ptr noundef nonnull %28) #16
  %29 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %8, i64 0, i32 44
  tail call fastcc void @write_linestyle_geometry_modifiers(ptr noundef %0, ptr noundef nonnull %29) #16
  br label %30

30:                                               ; preds = %25, %36
  %31 = phi i64 [ 0, %25 ], [ %37, %36 ]
  %32 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %8, i64 0, i32 39, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !44
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.134, i32 noundef 1, ptr noundef nonnull %33) #16
  br label %36

36:                                               ; preds = %30, %35
  %37 = add nuw nsw i64 %31, 1
  %38 = icmp eq i64 %37, 18
  br i1 %38, label %39, label %30, !llvm.loop !596

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.FreestyleLineStyle, ptr %8, i64 0, i32 40
  %41 = load ptr, ptr %40, align 8, !tbaa !597
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.105, i32 noundef 1, ptr noundef nonnull %41) #16
  %44 = load ptr, ptr %40, align 8, !tbaa !597
  tail call fastcc void @write_nodetree(ptr noundef %0, ptr noundef %44) #16
  br label %45

45:                                               ; preds = %12, %43, %39
  %46 = load ptr, ptr %8, align 8, !tbaa !44
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %7, !llvm.loop !598

48:                                               ; preds = %45, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_libraries(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !599 {
  %3 = alloca [35 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %3) #18
  %4 = icmp eq ptr %1, null
  br i1 %4, label %90, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  br label %7

7:                                                ; preds = %5, %87
  %8 = phi ptr [ %1, %5 ], [ %88, %87 ]
  %9 = call i32 @set_listbasepointers(ptr noundef nonnull %8, ptr noundef nonnull %3) #17
  %10 = getelementptr inbounds %struct.Main, ptr %8, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !600
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.Library, ptr %11, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !601
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %44

17:                                               ; preds = %13, %7
  %18 = icmp eq i32 %9, 0
  br i1 %18, label %87, label %19

19:                                               ; preds = %17
  %20 = sext i32 %9 to i64
  br label %24

21:                                               ; preds = %41, %24
  %22 = and i64 %26, 4294967295
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %87, label %24

24:                                               ; preds = %19, %21
  %25 = phi i64 [ %20, %19 ], [ %26, %21 ]
  %26 = add nsw i64 %25, -1
  %27 = getelementptr inbounds [35 x ptr], ptr %3, i64 0, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !44
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = icmp eq ptr %29, null
  br i1 %30, label %21, label %31

31:                                               ; preds = %24, %41
  %32 = phi ptr [ %42, %41 ], [ %29, %24 ]
  %33 = getelementptr inbounds %struct.ID, ptr %32, i64 0, i32 6
  %34 = load i32, ptr %33, align 4, !tbaa !603
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.ID, ptr %32, i64 0, i32 5
  %38 = load i16, ptr %37, align 2, !tbaa !604
  %39 = and i16 %38, 1
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %44, !llvm.loop !605

41:                                               ; preds = %31, %36
  %42 = load ptr, ptr %32, align 8, !tbaa !44
  %43 = icmp eq ptr %42, null
  br i1 %43, label %21, label %31, !llvm.loop !606

44:                                               ; preds = %36, %13
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 18764, ptr noundef nonnull @.str.291, i32 noundef 1, ptr noundef %11) #16
  %45 = load ptr, ptr %10, align 8, !tbaa !600
  %46 = getelementptr inbounds %struct.Library, ptr %45, i64 0, i32 6
  %47 = load ptr, ptr %46, align 8, !tbaa !601
  %48 = icmp eq ptr %47, null
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.130, i32 noundef 1, ptr noundef nonnull %47) #16
  %50 = load i32, ptr %47, align 8, !tbaa !344
  %51 = getelementptr inbounds %struct.PackedFile, ptr %47, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !346
  call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %50, ptr noundef %52) #16
  %53 = load ptr, ptr %6, align 8, !tbaa !96
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load ptr, ptr %10, align 8, !tbaa !600
  %57 = getelementptr inbounds %struct.Library, ptr %56, i64 0, i32 3
  %58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.292, ptr noundef nonnull %57) #16
  br label %59

59:                                               ; preds = %49, %55, %44
  %60 = icmp eq i32 %9, 0
  br i1 %60, label %87, label %61

61:                                               ; preds = %59
  %62 = sext i32 %9 to i64
  br label %66

63:                                               ; preds = %84, %66
  %64 = and i64 %68, 4294967295
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %87, label %66, !llvm.loop !607

66:                                               ; preds = %61, %63
  %67 = phi i64 [ %62, %61 ], [ %68, %63 ]
  %68 = add nsw i64 %67, -1
  %69 = getelementptr inbounds [35 x ptr], ptr %3, i64 0, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !44
  %71 = load ptr, ptr %70, align 8, !tbaa !44
  %72 = icmp eq ptr %71, null
  br i1 %72, label %63, label %73

73:                                               ; preds = %66, %84
  %74 = phi ptr [ %85, %84 ], [ %71, %66 ]
  %75 = getelementptr inbounds %struct.ID, ptr %74, i64 0, i32 6
  %76 = load i32, ptr %75, align 4, !tbaa !603
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.ID, ptr %74, i64 0, i32 5
  %80 = load i16, ptr %79, align 2, !tbaa !604
  %81 = and i16 %80, 1
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %78
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 17481, ptr noundef nonnull @.str.293, i32 noundef 1, ptr noundef nonnull %74) #16
  br label %84

84:                                               ; preds = %73, %78, %83
  %85 = load ptr, ptr %74, align 8, !tbaa !44
  %86 = icmp eq ptr %85, null
  br i1 %86, label %63, label %73, !llvm.loop !608

87:                                               ; preds = %21, %63, %17, %59
  %88 = load ptr, ptr %8, align 8, !tbaa !68
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %7, !llvm.loop !609

90:                                               ; preds = %87, %2
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_userdef(ptr noundef %0) unnamed_addr #0 !PGOFuncName !610 {
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1380275029, ptr noundef nonnull @.str.294, i32 noundef 1, ptr noundef nonnull @U) #16
  %2 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 38), align 8, !tbaa !44
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %7, %1
  %5 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 42), align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %17

7:                                                ; preds = %1, %7
  %8 = phi ptr [ %9, %7 ], [ %2, %1 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.295, i32 noundef 1, ptr noundef nonnull %8) #16
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = icmp eq ptr %9, null
  br i1 %10, label %4, label %7, !llvm.loop !611

11:                                               ; preds = %40, %36
  %12 = load ptr, ptr %18, align 8, !tbaa !44
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17, !llvm.loop !612

14:                                               ; preds = %11, %4
  %15 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 43), align 8, !tbaa !44
  %16 = icmp eq ptr %15, null
  br i1 %16, label %44, label %47

17:                                               ; preds = %4, %11
  %18 = phi ptr [ %12, %11 ], [ %5, %4 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.296, i32 noundef 1, ptr noundef nonnull %18) #16
  %19 = getelementptr inbounds %struct.wmKeyMap, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %17, %33
  %23 = phi ptr [ %34, %33 ], [ %20, %17 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.297, i32 noundef 1, ptr noundef nonnull %23) #16
  %24 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !613
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  tail call fastcc void @write_keymapitem(ptr noundef %0, ptr noundef nonnull %25) #16
  br label %28

28:                                               ; preds = %27, %22
  %29 = getelementptr inbounds %struct.wmKeyMapDiffItem, ptr %23, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !615
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call fastcc void @write_keymapitem(ptr noundef %0, ptr noundef nonnull %30) #16
  br label %33

33:                                               ; preds = %28, %32
  %34 = load ptr, ptr %23, align 8, !tbaa !44
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %22, !llvm.loop !616

36:                                               ; preds = %33, %17
  %37 = getelementptr inbounds %struct.wmKeyMap, ptr %18, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !44
  %39 = icmp eq ptr %38, null
  br i1 %39, label %11, label %40

40:                                               ; preds = %36, %40
  %41 = phi ptr [ %42, %40 ], [ %38, %36 ]
  tail call fastcc void @write_keymapitem(ptr noundef %0, ptr noundef nonnull %41) #16
  %42 = load ptr, ptr %41, align 8, !tbaa !44
  %43 = icmp eq ptr %42, null
  br i1 %43, label %11, label %40, !llvm.loop !617

44:                                               ; preds = %53, %14
  %45 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 44), align 8, !tbaa !44
  %46 = icmp eq ptr %45, null
  br i1 %46, label %56, label %59

47:                                               ; preds = %14, %53
  %48 = phi ptr [ %54, %53 ], [ %15, %14 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.298, i32 noundef 1, ptr noundef nonnull %48) #16
  %49 = getelementptr inbounds %struct.bAddon, ptr %48, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !618
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  tail call void @IDP_WriteProperty(ptr noundef nonnull %50, ptr noundef %0) #16
  br label %53

53:                                               ; preds = %47, %52
  %54 = load ptr, ptr %48, align 8, !tbaa !44
  %55 = icmp eq ptr %54, null
  br i1 %55, label %44, label %47, !llvm.loop !620

56:                                               ; preds = %59, %44
  %57 = load ptr, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 40), align 8, !tbaa !44
  %58 = icmp eq ptr %57, null
  br i1 %58, label %67, label %63

59:                                               ; preds = %44, %59
  %60 = phi ptr [ %61, %59 ], [ %45, %44 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.299, i32 noundef 1, ptr noundef nonnull %60) #16
  %61 = load ptr, ptr %60, align 8, !tbaa !44
  %62 = icmp eq ptr %61, null
  br i1 %62, label %56, label %59, !llvm.loop !621

63:                                               ; preds = %56, %63
  %64 = phi ptr [ %65, %63 ], [ %57, %56 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.300, i32 noundef 1, ptr noundef nonnull %64) #16
  %65 = load ptr, ptr %64, align 8, !tbaa !44
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %63, !llvm.loop !622

67:                                               ; preds = %63, %56
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @customnodes_free_deprecated_data(ptr noundef %0) unnamed_addr #0 !PGOFuncName !623 {
  %2 = alloca %struct.NodeTreeIterStore, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  call void @BKE_node_tree_iter_init(ptr noundef nonnull %2, ptr noundef %0) #17
  %5 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %6 = icmp eq i8 %5, 1
  br i1 %6, label %7, label %31

7:                                                ; preds = %1, %28
  %8 = load ptr, ptr %3, align 8, !tbaa !44
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.bNodeTree, ptr %8, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !624
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %10, %26
  %15 = phi ptr [ %16, %26 ], [ %12, %10 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !625
  %17 = getelementptr inbounds %struct.bNodeLink, ptr %15, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !118
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.bNodeLink, ptr %15, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !120
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %14
  %25 = load ptr, ptr %3, align 8, !tbaa !44
  call void @nodeRemLink(ptr noundef %25, ptr noundef nonnull %15) #17
  br label %26

26:                                               ; preds = %20, %24
  %27 = icmp eq ptr %16, null
  br i1 %27, label %28, label %14, !llvm.loop !626

28:                                               ; preds = %26, %10, %7
  %29 = call zeroext i8 @BKE_node_tree_iter_step(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %30 = icmp eq i8 %29, 1
  br i1 %30, label %7, label %31, !llvm.loop !627

31:                                               ; preds = %28, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #18
  ret void
}

; Function Attrs: optsize
declare void @blo_join_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @endwrite(ptr noundef %0) unnamed_addr #0 !PGOFuncName !628 {
  %2 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4, !tbaa !91
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !92
  tail call fastcc void @writedata_do_write(ptr noundef nonnull %0, ptr noundef %7, i32 noundef %3) #16
  store i32 0, ptr %2, align 4, !tbaa !91
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !90
  tail call fastcc void @writedata_free(ptr noundef nonnull %0) #16
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @writedata_new(ptr noundef %0) unnamed_addr #0 !PGOFuncName !629 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %3 = tail call ptr %2(i64 noundef 72, ptr noundef nonnull @.str.8) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr @DNAlen, align 4, !tbaa !58
  %7 = tail call ptr @DNA_sdna_from_data(ptr noundef nonnull @DNAstr, i32 noundef %6, i8 noundef zeroext 0) #17
  store ptr %7, ptr %3, align 8, !tbaa !71
  %8 = getelementptr inbounds %struct.WriteData, ptr %3, i64 0, i32 9
  store ptr %0, ptr %8, align 8, !tbaa !97
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !44
  %10 = tail call ptr %9(i64 noundef 100000, ptr noundef nonnull @.str.9) #17
  %11 = getelementptr inbounds %struct.WriteData, ptr %3, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !92
  br label %12

12:                                               ; preds = %1, %5
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @DNA_sdna_from_data(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_node_tree_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_node_tree_iter_step(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ntreeFindSocketInterface(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @current_screen_compat(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #12 !PGOFuncName !630 {
  %3 = getelementptr inbounds %struct.Main, ptr %0, i64 0, i32 40
  %4 = load ptr, ptr %3, align 8, !tbaa !631
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmWindowManager, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !632
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.wmWindow, ptr %8, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !635
  br label %13

13:                                               ; preds = %2, %6, %10
  %14 = phi ptr [ %12, %10 ], [ null, %6 ], [ null, %2 ]
  store ptr %14, ptr %1, align 8, !tbaa !44
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_region(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !637 {
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.44, i32 noundef 1, ptr noundef %1) #16
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 30
  %5 = load ptr, ptr %4, align 8, !tbaa !638
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %3
  %8 = icmp eq i32 %2, 1
  br i1 %8, label %9, label %25

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 8
  %11 = load i16, ptr %10, align 2, !tbaa !640
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.45, i32 noundef 1, ptr noundef nonnull %5) #16
  %14 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !641
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.45, i32 noundef 1, ptr noundef nonnull %15) #16
  br label %18

18:                                               ; preds = %17, %13
  %19 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !643
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.46, i32 noundef 1, ptr noundef nonnull %20) #16
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_uilist(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !644 {
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.48, i32 noundef 1, ptr noundef %1) #16
  %3 = getelementptr inbounds %struct.uiList, ptr %1, i64 0, i32 13
  %4 = load ptr, ptr %3, align 8, !tbaa !645
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @IDP_WriteProperty(ptr noundef nonnull %4, ptr noundef %0) #16
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_soops(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !647 {
  %4 = getelementptr inbounds %struct.SpaceOops, ptr %1, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !648
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @BLI_mempool_count(ptr noundef nonnull %5) #17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @BLI_mempool_as_arrayN(ptr noundef nonnull %5, ptr noundef nonnull @.str.49) #17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %15 = tail call ptr %14(i64 noundef 16, ptr noundef nonnull @.str.50) #17
  %16 = getelementptr inbounds %struct.TreeStore, ptr %15, i64 0, i32 1
  store i32 %8, ptr %16, align 4, !tbaa !651
  store i32 %8, ptr %15, align 8, !tbaa !653
  %17 = getelementptr inbounds %struct.TreeStore, ptr %15, i64 0, i32 2
  store ptr %11, ptr %17, align 8, !tbaa !654
  store ptr %15, ptr %4, align 8, !tbaa !648
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.51, i32 noundef 1, ptr noundef nonnull %1) #16
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.50, i32 noundef 1, ptr noundef nonnull %15) #16
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.49, i32 noundef %8, ptr noundef nonnull %11) #16
  tail call void @BLI_linklist_prepend(ptr noundef %2, ptr noundef nonnull %15) #17
  tail call void @BLI_linklist_prepend(ptr noundef %2, ptr noundef nonnull %11) #17
  br label %19

18:                                               ; preds = %7, %10
  store ptr null, ptr %4, align 8, !tbaa !648
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.51, i32 noundef 1, ptr noundef nonnull %1) #16
  br label %19

19:                                               ; preds = %18, %13
  store ptr %5, ptr %4, align 8, !tbaa !648
  br label %21

20:                                               ; preds = %3
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.51, i32 noundef 1, ptr noundef nonnull %1) #16
  br label %21

21:                                               ; preds = %20, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_curvemapping(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !655 {
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.52, i32 noundef 1, ptr noundef %1) #16
  tail call fastcc void @write_curvemapping_curves(ptr noundef %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: optsize
declare void @BLI_linklist_freeN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_mempool_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_mempool_as_arrayN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_linklist_prepend(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_curvemapping_curves(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !656 {
  br label %3

3:                                                ; preds = %2, %3
  %4 = phi i64 [ 0, %2 ], [ %10, %3 ]
  %5 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 6, i64 %4
  %6 = load i16, ptr %5, align 8, !tbaa !657
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.CurveMapping, ptr %1, i64 0, i32 6, i64 %4, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !659
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.53, i32 noundef %7, ptr noundef %9) #16
  %10 = add nuw nsw i64 %4, 1
  %11 = icmp eq i64 %10, 4
  br i1 %11, label %12, label %3, !llvm.loop !660

12:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_animdata(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !661 {
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.56, i32 noundef 1, ptr noundef %1) #16
  %3 = getelementptr inbounds %struct.AnimData, ptr %1, i64 0, i32 5
  tail call fastcc void @write_fcurves(ptr noundef %0, ptr noundef nonnull %3) #16
  %4 = getelementptr inbounds %struct.AnimData, ptr %1, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %14, %7 ], [ %5, %2 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.57, i32 noundef 1, ptr noundef nonnull %8) #16
  %9 = getelementptr inbounds %struct.AnimOverride, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !662
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %10) #20
  %12 = trunc i64 %11 to i32
  %13 = add i32 %12, 1
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %13, ptr noundef %10) #16
  %14 = load ptr, ptr %8, align 8, !tbaa !44
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7, !llvm.loop !664

16:                                               ; preds = %7, %2
  %17 = getelementptr inbounds %struct.AnimData, ptr %1, i64 0, i32 3
  tail call fastcc void @write_nladata(ptr noundef %0, ptr noundef nonnull %17) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_movieTracks(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !665 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2, %13
  %6 = phi ptr [ %14, %13 ], [ %3, %2 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.67, i32 noundef 1, ptr noundef nonnull %6) #16
  %7 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !666
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %6, i64 0, i32 8
  %12 = load i32, ptr %11, align 8, !tbaa !668
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.68, i32 noundef %12, ptr noundef nonnull %8) #16
  br label %13

13:                                               ; preds = %10, %5
  %14 = load ptr, ptr %6, align 8, !tbaa !44
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5, !llvm.loop !669

16:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_moviePlaneTracks(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !670 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %16, %5 ], [ %3, %2 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.69, i32 noundef 1, ptr noundef nonnull %6) #16
  %7 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %6, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !671
  %9 = shl i32 %8, 3
  %10 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %6, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !673
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %9, ptr noundef %11) #16
  %12 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %6, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !674
  %14 = getelementptr inbounds %struct.MovieTrackingPlaneTrack, ptr %6, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !675
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.70, i32 noundef %13, ptr noundef %15) #16
  %16 = load ptr, ptr %6, align 8, !tbaa !44
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %5, !llvm.loop !676

18:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_movieReconstruction(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !677 {
  %3 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !678
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.MovieTrackingReconstruction, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !679
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.71, i32 noundef %4, ptr noundef %8) #16
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_fcurves(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !680 {
  tail call fastcc void @writelist(ptr noundef %0, ptr noundef nonnull @.str.58, ptr noundef %1) #16
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %67, label %5

5:                                                ; preds = %2, %63
  %6 = phi ptr [ %65, %63 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.FCurve, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !681
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.FCurve, ptr %6, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !683
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.59, i32 noundef %12, ptr noundef nonnull %8) #16
  br label %13

13:                                               ; preds = %10, %5
  %14 = getelementptr inbounds %struct.FCurve, ptr %6, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !684
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.FCurve, ptr %6, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !683
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.60, i32 noundef %19, ptr noundef nonnull %15) #16
  br label %20

20:                                               ; preds = %17, %13
  %21 = getelementptr inbounds %struct.FCurve, ptr %6, i64 0, i32 12
  %22 = load ptr, ptr %21, align 8, !tbaa !685
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %22) #20
  %26 = trunc i64 %25 to i32
  %27 = add i32 %26, 1
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %27, ptr noundef nonnull %22) #16
  br label %28

28:                                               ; preds = %24, %20
  %29 = getelementptr inbounds %struct.FCurve, ptr %6, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !686
  %31 = icmp eq ptr %30, null
  br i1 %31, label %63, label %32

32:                                               ; preds = %28
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.61, i32 noundef 1, ptr noundef nonnull %30) #16
  tail call fastcc void @writelist(ptr noundef %0, ptr noundef nonnull @.str.62, ptr noundef nonnull %30) #16
  %33 = load ptr, ptr %30, align 8, !tbaa !44
  %34 = icmp eq ptr %33, null
  br i1 %34, label %63, label %38

35:                                               ; preds = %57, %38
  %36 = load ptr, ptr %39, align 8, !tbaa !44
  %37 = icmp eq ptr %36, null
  br i1 %37, label %63, label %38, !llvm.loop !687

38:                                               ; preds = %32, %35
  %39 = phi ptr [ %36, %35 ], [ %33, %32 ]
  %40 = getelementptr inbounds %struct.DriverVar, ptr %39, i64 0, i32 4
  %41 = load i16, ptr %40, align 8, !tbaa !688
  %42 = icmp sgt i16 %41, 0
  br i1 %42, label %43, label %35

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.DriverVar, ptr %39, i64 0, i32 3
  br label %45

45:                                               ; preds = %43, %57
  %46 = phi i16 [ %58, %57 ], [ %41, %43 ]
  %47 = phi i32 [ %59, %57 ], [ 0, %43 ]
  %48 = phi ptr [ %60, %57 ], [ %44, %43 ]
  %49 = getelementptr inbounds %struct.DriverTarget, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !690
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %45
  %53 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %50) #20
  %54 = trunc i64 %53 to i32
  %55 = add i32 %54, 1
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %55, ptr noundef nonnull %50) #16
  %56 = load i16, ptr %40, align 8, !tbaa !688
  br label %57

57:                                               ; preds = %45, %52
  %58 = phi i16 [ %46, %45 ], [ %56, %52 ]
  %59 = add nuw nsw i32 %47, 1
  %60 = getelementptr inbounds %struct.DriverTarget, ptr %48, i64 1
  %61 = sext i16 %58 to i32
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %45, label %35, !llvm.loop !692

63:                                               ; preds = %35, %32, %28
  %64 = getelementptr inbounds %struct.FCurve, ptr %6, i64 0, i32 4
  tail call fastcc void @write_fmodifiers(ptr noundef %0, ptr noundef nonnull %64) #16
  %65 = load ptr, ptr %6, align 8, !tbaa !44
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %5, !llvm.loop !693

67:                                               ; preds = %63, %2
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_nladata(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !694 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %2 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.65, i32 noundef 1, ptr noundef nonnull %6) #16
  %7 = getelementptr inbounds %struct.NlaTrack, ptr %6, i64 0, i32 2
  tail call fastcc void @write_nlastrips(ptr noundef %0, ptr noundef nonnull %7) #16
  %8 = load ptr, ptr %6, align 8, !tbaa !44
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !695

10:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @writelist(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !696 {
  %4 = load ptr, ptr %2, align 8, !tbaa !44
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %4, %3 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef %1, i32 noundef 1, ptr noundef nonnull %7) #16
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %6, !llvm.loop !697

10:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_fmodifiers(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !698 {
  tail call fastcc void @writelist(ptr noundef %0, ptr noundef nonnull @.str.63, ptr noundef %1) #16
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %2, %36
  %6 = phi ptr [ %37, %36 ], [ %3, %2 ]
  %7 = tail call ptr @fmodifier_get_typeinfo(ptr noundef nonnull %6) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %36, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.FModifier, ptr %6, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !699
  %12 = icmp eq ptr %11, null
  br i1 %12, label %36, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.FModifierTypeInfo, ptr %7, i64 0, i32 5
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull %14, i32 noundef 1, ptr noundef nonnull %11) #16
  %15 = getelementptr inbounds %struct.FModifier, ptr %6, i64 0, i32 4
  %16 = load i16, ptr %15, align 8, !tbaa !701
  switch i16 %16, label %36 [
    i16 1, label %17
    i16 3, label %25
    i16 7, label %32
  ]

17:                                               ; preds = %13
  %18 = load ptr, ptr %10, align 8, !tbaa !699
  %19 = load ptr, ptr %18, align 8, !tbaa !702
  %20 = icmp eq ptr %19, null
  br i1 %20, label %36, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.FMod_Generator, ptr %18, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !704
  %24 = shl i32 %23, 2
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %24, ptr noundef nonnull %19) #16
  br label %36

25:                                               ; preds = %13
  %26 = load ptr, ptr %10, align 8, !tbaa !699
  %27 = load ptr, ptr %26, align 8, !tbaa !705
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.FMod_Envelope, ptr %26, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !707
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.64, i32 noundef %31, ptr noundef nonnull %27) #16
  br label %36

32:                                               ; preds = %13
  %33 = load ptr, ptr %10, align 8, !tbaa !699
  %34 = getelementptr inbounds %struct.FMod_Python, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !708
  tail call void @IDP_WriteProperty(ptr noundef %35, ptr noundef %0) #16
  br label %36

36:                                               ; preds = %25, %29, %17, %21, %32, %13, %9, %5
  %37 = load ptr, ptr %6, align 8, !tbaa !44
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %5, !llvm.loop !710

39:                                               ; preds = %36, %2
  ret void
}

; Function Attrs: optsize
declare ptr @fmodifier_get_typeinfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_nlastrips(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !711 {
  tail call fastcc void @writelist(ptr noundef %0, ptr noundef nonnull @.str.66, ptr noundef %1) #16
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 5
  tail call fastcc void @write_fcurves(ptr noundef %0, ptr noundef nonnull %7) #16
  %8 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 6
  tail call fastcc void @write_fmodifiers(ptr noundef %0, ptr noundef nonnull %8) #16
  %9 = getelementptr inbounds %struct.NlaStrip, ptr %6, i64 0, i32 2
  tail call fastcc void @write_nlastrips(ptr noundef %0, ptr noundef nonnull %9) #16
  %10 = load ptr, ptr %6, align 8, !tbaa !44
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %5, !llvm.loop !712

12:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_keyingsets(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !713 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %8

5:                                                ; preds = %22, %8
  %6 = load ptr, ptr %9, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8, !llvm.loop !714

8:                                                ; preds = %2, %5
  %9 = phi ptr [ %6, %5 ], [ %3, %2 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.108, i32 noundef 1, ptr noundef nonnull %9) #16
  %10 = getelementptr inbounds %struct.KeyingSet, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = icmp eq ptr %11, null
  br i1 %12, label %5, label %13

13:                                               ; preds = %8, %22
  %14 = phi ptr [ %23, %22 ], [ %11, %8 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.109, i32 noundef 1, ptr noundef nonnull %14) #16
  %15 = getelementptr inbounds %struct.KS_Path, ptr %14, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !715
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %16) #20
  %20 = trunc i64 %19 to i32
  %21 = add i32 %20, 1
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %21, ptr noundef nonnull %16) #16
  br label %22

22:                                               ; preds = %13, %18
  %23 = load ptr, ptr %14, align 8, !tbaa !44
  %24 = icmp eq ptr %23, null
  br i1 %24, label %5, label %13, !llvm.loop !717

25:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: optsize
declare void @BKE_sequence_iterator_begin(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_sequence_iterator_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_sequence_iterator_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_sequence_modifiers(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !718 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %2, %19
  %6 = phi ptr [ %20, %19 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.SequenceModifierData, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !719
  %9 = tail call ptr @BKE_sequence_modifier_type_info_get(i32 noundef %8) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.SequenceModifierTypeInfo, ptr %9, i64 0, i32 1
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull %12, i32 noundef 1, ptr noundef nonnull %6) #16
  %13 = load i32, ptr %7, align 8, !tbaa !719
  switch i32 %13, label %19 [
    i32 2, label %14
    i32 3, label %16
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.CurvesModifierData, ptr %6, i64 0, i32 1
  tail call fastcc void @write_curvemapping(ptr noundef %0, ptr noundef nonnull %15) #16
  br label %19

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.HueCorrectModifierData, ptr %6, i64 0, i32 1
  tail call fastcc void @write_curvemapping(ptr noundef %0, ptr noundef nonnull %17) #16
  br label %19

18:                                               ; preds = %5
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.110, i32 noundef 1, ptr noundef nonnull %6) #16
  br label %19

19:                                               ; preds = %11, %14, %16, %18
  %20 = load ptr, ptr %6, align 8, !tbaa !44
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %5, !llvm.loop !721

22:                                               ; preds = %19, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_nodetree(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !722 {
  %3 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !552
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call fastcc void @write_animdata(ptr noundef %0, ptr noundef nonnull %4) #16
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = icmp eq ptr %9, null
  br i1 %10, label %113, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 9
  br label %13

13:                                               ; preds = %11, %110
  %14 = phi ptr [ %9, %11 ], [ %111, %110 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.111, i32 noundef 1, ptr noundef nonnull %14) #16
  %15 = getelementptr inbounds %struct.bNode, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !723
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void @IDP_WriteProperty(ptr noundef nonnull %16, ptr noundef %0) #16
  br label %19

19:                                               ; preds = %18, %13
  %20 = getelementptr inbounds %struct.bNode, ptr %14, i64 0, i32 17
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19, %23
  %24 = phi ptr [ %25, %23 ], [ %21, %19 ]
  tail call fastcc void @write_node_socket(ptr noundef %0, ptr noundef nonnull %14, ptr noundef nonnull %24) #16
  %25 = load ptr, ptr %24, align 8, !tbaa !44
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %23, !llvm.loop !724

27:                                               ; preds = %23, %19
  %28 = getelementptr inbounds %struct.bNode, ptr %14, i64 0, i32 18
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27, %31
  %32 = phi ptr [ %33, %31 ], [ %29, %27 ]
  tail call fastcc void @write_node_socket(ptr noundef %0, ptr noundef nonnull %14, ptr noundef nonnull %32) #16
  %33 = load ptr, ptr %32, align 8, !tbaa !44
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %31, !llvm.loop !725

35:                                               ; preds = %31, %27
  %36 = getelementptr inbounds %struct.bNode, ptr %14, i64 0, i32 23
  %37 = load ptr, ptr %36, align 8, !tbaa !44
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %35, %39
  %40 = phi ptr [ %41, %39 ], [ %37, %35 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.112, i32 noundef 1, ptr noundef nonnull %40) #16
  %41 = load ptr, ptr %40, align 8, !tbaa !44
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %39, !llvm.loop !726

43:                                               ; preds = %39, %35
  %44 = getelementptr inbounds %struct.bNode, ptr %14, i64 0, i32 21
  %45 = load ptr, ptr %44, align 8, !tbaa !727
  %46 = icmp eq ptr %45, null
  br i1 %46, label %83, label %47

47:                                               ; preds = %43
  %48 = load i32, ptr %12, align 8, !tbaa !728
  switch i32 %48, label %79 [
    i32 0, label %49
    i32 1, label %71
    i32 2, label %75
  ]

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.bNode, ptr %14, i64 0, i32 8
  %51 = load i16, ptr %50, align 4, !tbaa !123
  %52 = and i16 %51, -2
  %53 = icmp eq i16 %52, 110
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  tail call fastcc void @write_curvemapping(ptr noundef %0, ptr noundef nonnull %45) #16
  br label %83

55:                                               ; preds = %49
  %56 = icmp eq i16 %51, 171
  br i1 %56, label %57, label %79

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.NodeShaderScript, ptr %45, i64 0, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !729
  %60 = icmp eq ptr %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  %62 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %59) #20
  %63 = trunc i64 %62 to i32
  %64 = add i32 %63, 1
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %64, ptr noundef nonnull %59) #16
  %65 = load ptr, ptr %44, align 8, !tbaa !727
  br label %66

66:                                               ; preds = %61, %57
  %67 = phi ptr [ %65, %61 ], [ %45, %57 ]
  %68 = getelementptr inbounds %struct.bNode, ptr %14, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !731
  %70 = getelementptr inbounds %struct.bNodeType, ptr %69, i64 0, i32 19
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull %70, i32 noundef 1, ptr noundef %67) #16
  br label %83

71:                                               ; preds = %47
  %72 = getelementptr inbounds %struct.bNode, ptr %14, i64 0, i32 8
  %73 = load i16, ptr %72, align 4, !tbaa !123
  switch i16 %73, label %79 [
    i16 214, label %74
    i16 208, label %74
    i16 209, label %74
    i16 261, label %74
    i16 265, label %83
  ]

74:                                               ; preds = %71, %71, %71, %71
  tail call fastcc void @write_curvemapping(ptr noundef %0, ptr noundef nonnull %45) #16
  br label %83

75:                                               ; preds = %47
  %76 = getelementptr inbounds %struct.bNode, ptr %14, i64 0, i32 8
  %77 = load i16, ptr %76, align 4, !tbaa !123
  switch i16 %77, label %79 [
    i16 410, label %78
    i16 413, label %78
  ]

78:                                               ; preds = %75, %75
  tail call fastcc void @write_curvemapping(ptr noundef %0, ptr noundef nonnull %45) #16
  br label %83

79:                                               ; preds = %71, %47, %75, %55
  %80 = getelementptr inbounds %struct.bNode, ptr %14, i64 0, i32 4
  %81 = load ptr, ptr %80, align 8, !tbaa !731
  %82 = getelementptr inbounds %struct.bNodeType, ptr %81, i64 0, i32 19
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull %82, i32 noundef 1, ptr noundef nonnull %45) #16
  br label %83

83:                                               ; preds = %71, %54, %74, %79, %78, %66, %43
  %84 = getelementptr inbounds %struct.bNode, ptr %14, i64 0, i32 8
  %85 = load i16, ptr %84, align 4, !tbaa !123
  %86 = icmp eq i16 %85, 223
  br i1 %86, label %87, label %98

87:                                               ; preds = %83
  %88 = load ptr, ptr %20, align 8, !tbaa !44
  %89 = icmp eq ptr %88, null
  br i1 %89, label %110, label %90

90:                                               ; preds = %87, %90
  %91 = phi ptr [ %94, %90 ], [ %88, %87 ]
  %92 = getelementptr inbounds %struct.bNodeSocket, ptr %91, i64 0, i32 6
  %93 = load ptr, ptr %92, align 8, !tbaa !732
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.113, i32 noundef 1, ptr noundef %93) #16
  %94 = load ptr, ptr %91, align 8, !tbaa !44
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %90, !llvm.loop !733

96:                                               ; preds = %90
  %97 = load i16, ptr %84, align 4, !tbaa !123
  br label %98

98:                                               ; preds = %96, %83
  %99 = phi i16 [ %85, %83 ], [ %97, %96 ]
  %100 = icmp eq i16 %99, 220
  br i1 %100, label %101, label %110

101:                                              ; preds = %98
  %102 = load ptr, ptr %28, align 8, !tbaa !44
  %103 = icmp eq ptr %102, null
  br i1 %103, label %110, label %104

104:                                              ; preds = %101, %104
  %105 = phi ptr [ %108, %104 ], [ %102, %101 ]
  %106 = getelementptr inbounds %struct.bNodeSocket, ptr %105, i64 0, i32 6
  %107 = load ptr, ptr %106, align 8, !tbaa !732
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.114, i32 noundef 1, ptr noundef %107) #16
  %108 = load ptr, ptr %105, align 8, !tbaa !44
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %104, !llvm.loop !734

110:                                              ; preds = %104, %87, %101, %98
  %111 = load ptr, ptr %14, align 8, !tbaa !44
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %13, !llvm.loop !735

113:                                              ; preds = %110, %7
  %114 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 8
  %115 = load ptr, ptr %114, align 8, !tbaa !44
  %116 = icmp eq ptr %115, null
  br i1 %116, label %121, label %117

117:                                              ; preds = %113, %117
  %118 = phi ptr [ %119, %117 ], [ %115, %113 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.112, i32 noundef 1, ptr noundef nonnull %118) #16
  %119 = load ptr, ptr %118, align 8, !tbaa !44
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %117, !llvm.loop !736

121:                                              ; preds = %117, %113
  %122 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 22
  %123 = load ptr, ptr %122, align 8, !tbaa !44
  %124 = icmp eq ptr %123, null
  br i1 %124, label %129, label %125

125:                                              ; preds = %121, %125
  %126 = phi ptr [ %127, %125 ], [ %123, %121 ]
  tail call fastcc void @write_node_socket_interface(ptr noundef %0, ptr noundef nonnull %126) #16
  %127 = load ptr, ptr %126, align 8, !tbaa !44
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %125, !llvm.loop !737

129:                                              ; preds = %125, %121
  %130 = getelementptr inbounds %struct.bNodeTree, ptr %1, i64 0, i32 23
  %131 = load ptr, ptr %130, align 8, !tbaa !44
  %132 = icmp eq ptr %131, null
  br i1 %132, label %137, label %133

133:                                              ; preds = %129, %133
  %134 = phi ptr [ %135, %133 ], [ %131, %129 ]
  tail call fastcc void @write_node_socket_interface(ptr noundef %0, ptr noundef nonnull %134) #16
  %135 = load ptr, ptr %134, align 8, !tbaa !44
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %133, !llvm.loop !738

137:                                              ; preds = %133, %129
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_view_settings(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !739 {
  %3 = getelementptr inbounds %struct.ColorManagedViewSettings, ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !740
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call fastcc void @write_curvemapping(ptr noundef %0, ptr noundef nonnull %4) #16
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_pointcaches(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !741 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %76, label %5

5:                                                ; preds = %2, %73
  %6 = phi ptr [ %74, %73 ], [ %3, %2 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.116, i32 noundef 1, ptr noundef nonnull %6) #16
  %7 = getelementptr inbounds %struct.PointCache, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !742
  %9 = and i32 %8, 64
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %73

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.PointCache, ptr %6, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  %14 = icmp eq ptr %13, null
  br i1 %14, label %73, label %18

15:                                               ; preds = %70, %24
  %16 = load ptr, ptr %19, align 8, !tbaa !44
  %17 = icmp eq ptr %16, null
  br i1 %17, label %73, label %18, !llvm.loop !744

18:                                               ; preds = %11, %15
  %19 = phi ptr [ %16, %15 ], [ %13, %11 ]
  %20 = getelementptr inbounds %struct.PTCacheMem, ptr %19, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !745
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.117, i32 noundef 1, ptr noundef nonnull %19) #16
  %22 = getelementptr inbounds %struct.PTCacheMem, ptr %19, i64 0, i32 4
  %23 = getelementptr inbounds %struct.PTCacheMem, ptr %19, i64 0, i32 3
  br label %26

24:                                               ; preds = %49
  %25 = icmp eq ptr %21, null
  br i1 %25, label %15, label %52

26:                                               ; preds = %18, %49
  %27 = phi i64 [ 0, %18 ], [ %50, %49 ]
  %28 = getelementptr inbounds %struct.PTCacheMem, ptr %19, i64 0, i32 6, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = icmp eq ptr %29, null
  br i1 %30, label %49, label %31

31:                                               ; preds = %26
  %32 = load i32, ptr %22, align 8, !tbaa !747
  %33 = trunc i64 %27 to i32
  %34 = shl nuw nsw i32 1, %33
  %35 = and i32 %32, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds [8 x ptr], ptr @ptcache_data_struct, i64 0, i64 %27
  %39 = load ptr, ptr %38, align 8, !tbaa !44
  %40 = load i8, ptr %39, align 1, !tbaa !104
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !44
  %44 = tail call i64 %43(ptr noundef nonnull %29) #17
  %45 = trunc i64 %44 to i32
  %46 = load ptr, ptr %28, align 8, !tbaa !44
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %45, ptr noundef %46) #16
  br label %49

47:                                               ; preds = %37
  %48 = load i32, ptr %23, align 4, !tbaa !748
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull %39, i32 noundef %48, ptr noundef nonnull %29) #16
  br label %49

49:                                               ; preds = %26, %31, %47, %42
  %50 = add nuw nsw i64 %27, 1
  %51 = icmp eq i64 %50, 8
  br i1 %51, label %24, label %26, !llvm.loop !749

52:                                               ; preds = %24, %70
  %53 = phi ptr [ %71, %70 ], [ %21, %24 ]
  %54 = getelementptr inbounds %struct.PTCacheExtra, ptr %53, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !750
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds [2 x ptr], ptr @ptcache_extra_struct, i64 0, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !44
  %59 = load i8, ptr %58, align 1, !tbaa !104
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %52
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.118, i32 noundef 1, ptr noundef nonnull %53) #16
  %62 = load i32, ptr %54, align 8, !tbaa !750
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [2 x ptr], ptr @ptcache_extra_struct, i64 0, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !44
  %66 = getelementptr inbounds %struct.PTCacheExtra, ptr %53, i64 0, i32 3
  %67 = load i32, ptr %66, align 4, !tbaa !752
  %68 = getelementptr inbounds %struct.PTCacheExtra, ptr %53, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !753
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef %65, i32 noundef %67, ptr noundef %69) #16
  br label %70

70:                                               ; preds = %52, %61
  %71 = load ptr, ptr %53, align 8, !tbaa !754
  %72 = icmp eq ptr %71, null
  br i1 %72, label %15, label %52, !llvm.loop !755

73:                                               ; preds = %15, %11, %5
  %74 = load ptr, ptr %6, align 8, !tbaa !44
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %5, !llvm.loop !756

76:                                               ; preds = %73, %2
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_sequence_modifier_type_info_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_node_socket(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !757 {
  %4 = getelementptr inbounds %struct.bNodeSocket, ptr %2, i64 0, i32 17
  store i16 1, ptr %4, align 2, !tbaa !758
  %5 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 8
  %6 = load i16, ptr %5, align 4, !tbaa !123
  %7 = icmp eq i16 %6, 2
  br i1 %7, label %8, label %22

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.bNode, ptr %1, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !759
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.bNodeSocket, ptr %2, i64 0, i32 10
  %14 = load i16, ptr %13, align 2, !tbaa !760
  %15 = sext i16 %14 to i32
  %16 = getelementptr inbounds %struct.bNodeSocket, ptr %2, i64 0, i32 4
  %17 = tail call ptr @ntreeFindSocketInterface(ptr noundef nonnull %10, i32 noundef %15, ptr noundef nonnull %16) #17
  %18 = getelementptr inbounds %struct.bNodeSocket, ptr %2, i64 0, i32 22
  store ptr %17, ptr %18, align 8, !tbaa !761
  %19 = getelementptr inbounds %struct.bNodeSocket, ptr %17, i64 0, i32 20
  %20 = load i32, ptr %19, align 8, !tbaa !762
  %21 = getelementptr inbounds %struct.bNodeSocket, ptr %2, i64 0, i32 20
  store i32 %20, ptr %21, align 8, !tbaa !762
  br label %22

22:                                               ; preds = %8, %12, %3
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.115, i32 noundef 1, ptr noundef nonnull %2) #16
  %23 = getelementptr inbounds %struct.bNodeSocket, ptr %2, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !763
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @IDP_WriteProperty(ptr noundef nonnull %24, ptr noundef %0) #16
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr inbounds %struct.bNodeSocket, ptr %2, i64 0, i32 15
  %29 = load ptr, ptr %28, align 8, !tbaa !764
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !44
  %33 = tail call i64 %32(ptr noundef nonnull %29) #17
  %34 = trunc i64 %33 to i32
  %35 = load ptr, ptr %28, align 8, !tbaa !764
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %34, ptr noundef %35) #16
  br label %36

36:                                               ; preds = %31, %27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_node_socket_interface(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !765 {
  %3 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 17
  store i16 1, ptr %3, align 2, !tbaa !758
  %4 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 15
  %5 = load ptr, ptr %4, align 8, !tbaa !764
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !766
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @node_socket_init_default_value(ptr noundef nonnull %1) #17
  br label %12

12:                                               ; preds = %11, %7, %2
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.115, i32 noundef 1, ptr noundef nonnull %1) #16
  %13 = getelementptr inbounds %struct.bNodeSocket, ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !763
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @IDP_WriteProperty(ptr noundef nonnull %14, ptr noundef %0) #16
  br label %17

17:                                               ; preds = %16, %12
  %18 = load ptr, ptr %4, align 8, !tbaa !764
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !44
  %22 = tail call i64 %21(ptr noundef nonnull %18) #17
  %23 = trunc i64 %22 to i32
  %24 = load ptr, ptr %4, align 8, !tbaa !764
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %23, ptr noundef %24) #16
  br label %25

25:                                               ; preds = %20, %17
  ret void
}

; Function Attrs: optsize
declare void @node_socket_init_default_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_previews(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !767 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %42, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x i32], ptr %1, i64 0, i64 1
  %6 = load i32, ptr %5, align 4, !tbaa !58
  %7 = getelementptr inbounds %struct.PreviewImage, ptr %1, i64 0, i32 1
  %8 = getelementptr inbounds %struct.PreviewImage, ptr %1, i64 0, i32 1, i64 1
  %9 = load i32, ptr %8, align 4, !tbaa !58
  %10 = getelementptr inbounds %struct.PreviewImage, ptr %1, i64 0, i32 4
  %11 = getelementptr inbounds %struct.PreviewImage, ptr %1, i64 0, i32 4, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !768
  %14 = and i32 %13, 65536
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, ptr %5, align 4, !tbaa !58
  store i32 0, ptr %8, align 4, !tbaa !58
  store ptr null, ptr %11, align 8, !tbaa !44
  br label %17

17:                                               ; preds = %16, %4
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.131, i32 noundef 1, ptr noundef nonnull %1) #16
  %18 = load ptr, ptr %10, align 8, !tbaa !44
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = load i32, ptr %1, align 8, !tbaa !58
  %22 = load i32, ptr %7, align 8, !tbaa !58
  %23 = shl i32 %21, 2
  %24 = mul i32 %23, %22
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %24, ptr noundef nonnull %18) #16
  br label %25

25:                                               ; preds = %20, %17
  %26 = load ptr, ptr %11, align 8, !tbaa !44
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %5, align 4, !tbaa !58
  %30 = load i32, ptr %8, align 4, !tbaa !58
  %31 = shl i32 %29, 2
  %32 = mul i32 %31, %30
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %32, ptr noundef nonnull %26) #16
  br label %33

33:                                               ; preds = %28, %25
  %34 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !768
  %35 = and i32 %34, 65536
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = shl i32 %6, 16
  %39 = ashr exact i32 %38, 16
  store i32 %39, ptr %5, align 4, !tbaa !58
  %40 = shl i32 %9, 16
  %41 = ashr exact i32 %40, 16
  store i32 %41, ptr %8, align 4, !tbaa !58
  store ptr %12, ptr %11, align 8, !tbaa !44
  br label %42

42:                                               ; preds = %33, %37, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_dverts(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !769 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %3
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.136, i32 noundef %1, ptr noundef nonnull %2) #16
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %5
  %8 = zext nneg i32 %1 to i64
  br label %9

9:                                                ; preds = %7, %17
  %10 = phi i64 [ 0, %7 ], [ %18, %17 ]
  %11 = getelementptr inbounds %struct.MDeformVert, ptr %2, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !770
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.MDeformVert, ptr %2, i64 %10, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !772
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.137, i32 noundef %16, ptr noundef nonnull %12) #16
  br label %17

17:                                               ; preds = %9, %14
  %18 = add nuw nsw i64 %10, 1
  %19 = icmp eq i64 %18, %8
  br i1 %19, label %20, label %9, !llvm.loop !773

20:                                               ; preds = %17, %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_bone(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !774 {
  %3 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 24
  %4 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 24, i64 2
  store float 1.000000e+00, ptr %4, align 4, !tbaa !505
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %3, align 4, !tbaa !505
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.149, i32 noundef 1, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !775
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @IDP_WriteProperty(ptr noundef nonnull %6, ptr noundef %0) #16
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.Bone, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9, %13
  %14 = phi ptr [ %15, %13 ], [ %11, %9 ]
  tail call fastcc void @write_bone(ptr noundef %0, ptr noundef nonnull %14) #16
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %13, !llvm.loop !777

17:                                               ; preds = %13, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_properties(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !778 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %2, %18
  %6 = phi ptr [ %19, %18 ], [ %3, %2 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.161, i32 noundef 1, ptr noundef nonnull %6) #16
  %7 = getelementptr inbounds %struct.bProperty, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !779
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %struct.bProperty, ptr %6, i64 0, i32 5
  %11 = icmp eq ptr %8, %10
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %5
  %14 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !44
  %15 = tail call i64 %14(ptr noundef nonnull %8) #17
  %16 = trunc i64 %15 to i32
  %17 = load ptr, ptr %7, align 8, !tbaa !779
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %16, ptr noundef %17) #16
  br label %18

18:                                               ; preds = %13, %5
  %19 = load ptr, ptr %6, align 8, !tbaa !44
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %5, !llvm.loop !781

21:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_sensors(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !782 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %2, %23
  %6 = phi ptr [ %24, %23 ], [ %3, %2 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.162, i32 noundef 1, ptr noundef nonnull %6) #16
  %7 = getelementptr inbounds %struct.bSensor, ptr %6, i64 0, i32 7
  %8 = load i16, ptr %7, align 2, !tbaa !783
  %9 = sext i16 %8 to i32
  %10 = shl nsw i32 %9, 3
  %11 = getelementptr inbounds %struct.bSensor, ptr %6, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !785
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %10, ptr noundef %12) #16
  %13 = getelementptr inbounds %struct.bSensor, ptr %6, i64 0, i32 2
  %14 = load i16, ptr %13, align 8, !tbaa !786
  %15 = add i16 %14, -2
  %16 = icmp ult i16 %15, 13
  br i1 %16, label %17, label %23

17:                                               ; preds = %5
  %18 = zext nneg i16 %15 to i64
  %19 = shl i64 %18, 2
  %20 = call ptr @llvm.load.relative.i64(ptr @reltable.write_sensors, i64 %19)
  %21 = getelementptr inbounds %struct.bSensor, ptr %6, i64 0, i32 11
  %22 = load ptr, ptr %21, align 8, !tbaa !787
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull %20, i32 noundef 1, ptr noundef %22) #16
  br label %23

23:                                               ; preds = %5, %17
  %24 = load ptr, ptr %6, align 8, !tbaa !44
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %5, !llvm.loop !788

26:                                               ; preds = %23, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_controllers(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !789 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %2, %20
  %6 = phi ptr [ %21, %20 ], [ %3, %2 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.176, i32 noundef 1, ptr noundef nonnull %6) #16
  %7 = getelementptr inbounds %struct.bController, ptr %6, i64 0, i32 6
  %8 = load i16, ptr %7, align 2, !tbaa !790
  %9 = sext i16 %8 to i32
  %10 = shl nsw i32 %9, 3
  %11 = getelementptr inbounds %struct.bController, ptr %6, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !792
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %10, ptr noundef %12) #16
  %13 = getelementptr inbounds %struct.bController, ptr %6, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !793
  switch i16 %14, label %20 [
    i16 2, label %16
    i16 3, label %15
  ]

15:                                               ; preds = %5
  br label %16

16:                                               ; preds = %5, %15
  %17 = phi ptr [ @.str.178, %15 ], [ @.str.177, %5 ]
  %18 = getelementptr inbounds %struct.bController, ptr %6, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !794
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull %17, i32 noundef 1, ptr noundef %19) #16
  br label %20

20:                                               ; preds = %16, %5
  %21 = load ptr, ptr %6, align 8, !tbaa !44
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %5, !llvm.loop !795

23:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_actuators(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !796 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %2, %21
  %6 = phi ptr [ %22, %21 ], [ %3, %2 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.179, i32 noundef 1, ptr noundef nonnull %6) #16
  %7 = getelementptr inbounds %struct.bActuator, ptr %6, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !797
  %9 = icmp ult i16 %8, 26
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = zext nneg i16 %8 to i32
  %12 = lshr i32 67042923, %11
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = zext nneg i16 %8 to i64
  %17 = shl i64 %16, 2
  %18 = call ptr @llvm.load.relative.i64(ptr @reltable.write_actuators, i64 %17)
  %19 = getelementptr inbounds %struct.bActuator, ptr %6, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !799
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull %18, i32 noundef 1, ptr noundef %20) #16
  br label %21

21:                                               ; preds = %10, %5, %15
  %22 = load ptr, ptr %6, align 8, !tbaa !44
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %5, !llvm.loop !800

24:                                               ; preds = %21, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_pose(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !801 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %47, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %4, %26
  %8 = phi ptr [ %27, %26 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.bPoseChannel, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !802
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void @IDP_WriteProperty(ptr noundef nonnull %10, ptr noundef %0) #16
  br label %13

13:                                               ; preds = %12, %7
  %14 = getelementptr inbounds %struct.bPoseChannel, ptr %8, i64 0, i32 3
  tail call fastcc void @write_constraints(ptr noundef %0, ptr noundef nonnull %14) #16
  %15 = getelementptr inbounds %struct.bPoseChannel, ptr %8, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !804
  tail call fastcc void @write_motionpath(ptr noundef %0, ptr noundef %16) #16
  %17 = getelementptr inbounds %struct.bPoseChannel, ptr %8, i64 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !805
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.Bone, ptr %18, i64 0, i32 10
  %22 = load i32, ptr %21, align 8, !tbaa !806
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.bPoseChannel, ptr %8, i64 0, i32 10
  store i8 %24, ptr %25, align 1, !tbaa !807
  br label %26

26:                                               ; preds = %20, %13
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.200, i32 noundef 1, ptr noundef nonnull %8) #16
  %27 = load ptr, ptr %8, align 8, !tbaa !44
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %7, !llvm.loop !808

29:                                               ; preds = %26, %4
  %30 = getelementptr inbounds %struct.bPose, ptr %1, i64 0, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !44
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29, %33
  %34 = phi ptr [ %35, %33 ], [ %31, %29 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.151, i32 noundef 1, ptr noundef nonnull %34) #16
  %35 = load ptr, ptr %34, align 8, !tbaa !44
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %33, !llvm.loop !809

37:                                               ; preds = %33, %29
  %38 = getelementptr inbounds %struct.bPose, ptr %1, i64 0, i32 13
  %39 = load ptr, ptr %38, align 8, !tbaa !810
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = tail call ptr @BKE_pose_ikparam_get_name(ptr noundef nonnull %1) #17
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %38, align 8, !tbaa !810
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull %42, i32 noundef 1, ptr noundef %45) #16
  br label %46

46:                                               ; preds = %41, %44, %37
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.201, i32 noundef 1, ptr noundef nonnull %1) #16
  br label %47

47:                                               ; preds = %2, %46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_defgroups(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !812 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %2 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.202, i32 noundef 1, ptr noundef nonnull %6) #16
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !813

9:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_constraints(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !814 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %40, label %5

5:                                                ; preds = %2, %37
  %6 = phi ptr [ %38, %37 ], [ %3, %2 ]
  %7 = tail call ptr @BKE_constraint_typeinfo_get(ptr noundef nonnull %6) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.bConstraint, ptr %6, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !815
  %12 = icmp eq ptr %11, null
  br i1 %12, label %37, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.bConstraintTypeInfo, ptr %7, i64 0, i32 3
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull %14, i32 noundef 1, ptr noundef nonnull %11) #16
  %15 = getelementptr inbounds %struct.bConstraint, ptr %6, i64 0, i32 3
  %16 = load i16, ptr %15, align 8, !tbaa !817
  switch i16 %16, label %37 [
    i16 11, label %17
    i16 22, label %29
  ]

17:                                               ; preds = %13
  %18 = load ptr, ptr %10, align 8, !tbaa !815
  %19 = getelementptr inbounds %struct.bPythonConstraint, ptr %18, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %17, %22
  %23 = phi ptr [ %24, %22 ], [ %20, %17 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.203, i32 noundef 1, ptr noundef nonnull %23) #16
  %24 = load ptr, ptr %23, align 8, !tbaa !44
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %22, !llvm.loop !818

26:                                               ; preds = %22, %17
  %27 = getelementptr inbounds %struct.bPythonConstraint, ptr %18, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !819
  tail call void @IDP_WriteProperty(ptr noundef %28, ptr noundef %0) #16
  br label %37

29:                                               ; preds = %13
  %30 = load ptr, ptr %10, align 8, !tbaa !815
  %31 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %30, i64 0, i32 2
  %32 = load i16, ptr %31, align 8, !tbaa !821
  %33 = sext i16 %32 to i32
  %34 = shl nsw i32 %33, 2
  %35 = getelementptr inbounds %struct.bSplineIKConstraint, ptr %30, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !823
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %34, ptr noundef %36) #16
  br label %37

37:                                               ; preds = %26, %29, %13, %9, %5
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.204, i32 noundef 1, ptr noundef nonnull %6) #16
  %38 = load ptr, ptr %6, align 8, !tbaa !44
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %5, !llvm.loop !824

40:                                               ; preds = %37, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_motionpath(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !825 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.205, i32 noundef 1, ptr noundef nonnull %1) #16
  %5 = getelementptr inbounds %struct.bMotionPath, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !826
  %7 = load ptr, ptr %1, align 8, !tbaa !828
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.206, i32 noundef %6, ptr noundef %7) #16
  br label %8

8:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_particlesystems(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !829 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %96, label %5

5:                                                ; preds = %2, %92
  %6 = phi ptr [ %94, %92 ], [ %3, %2 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.207, i32 noundef 1, ptr noundef nonnull %6) #16
  %7 = getelementptr inbounds %struct.ParticleSystem, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !830
  %9 = icmp eq ptr %8, null
  br i1 %9, label %66, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ParticleSystem, ptr %6, i64 0, i32 26
  %12 = load i32, ptr %11, align 8, !tbaa !832
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.208, i32 noundef %12, ptr noundef nonnull %8) #16
  %13 = load ptr, ptr %7, align 8, !tbaa !830
  %14 = getelementptr inbounds %struct.ParticleData, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !833
  %16 = icmp eq ptr %15, null
  br i1 %16, label %33, label %17

17:                                               ; preds = %10
  %18 = load i32, ptr %11, align 8, !tbaa !832
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %17, %20
  %21 = phi ptr [ %28, %20 ], [ %13, %17 ]
  %22 = phi i32 [ %27, %20 ], [ 0, %17 ]
  %23 = getelementptr inbounds %struct.ParticleData, ptr %21, i64 0, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !836
  %25 = getelementptr inbounds %struct.ParticleData, ptr %21, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !833
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.209, i32 noundef %24, ptr noundef %26) #16
  %27 = add nuw nsw i32 %22, 1
  %28 = getelementptr inbounds %struct.ParticleData, ptr %21, i64 1
  %29 = load i32, ptr %11, align 8, !tbaa !832
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %20, label %31, !llvm.loop !837

31:                                               ; preds = %20
  %32 = load ptr, ptr %7, align 8, !tbaa !830
  br label %33

33:                                               ; preds = %31, %17, %10
  %34 = phi ptr [ %32, %31 ], [ %13, %17 ], [ %13, %10 ]
  %35 = getelementptr inbounds %struct.ParticleData, ptr %34, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !838
  %37 = icmp eq ptr %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.ParticleSystem, ptr %6, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !839
  %41 = getelementptr inbounds %struct.ParticleSettings, ptr %40, i64 0, i32 11
  %42 = load i16, ptr %41, align 8, !tbaa !540
  %43 = icmp eq i16 %42, 3
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, ptr %11, align 8, !tbaa !832
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.210, i32 noundef %45, ptr noundef nonnull %36) #16
  br label %46

46:                                               ; preds = %44, %38, %33
  %47 = getelementptr inbounds %struct.ParticleSystem, ptr %6, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !839
  %49 = getelementptr inbounds %struct.ParticleSettings, ptr %48, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !546
  %51 = icmp eq ptr %50, null
  br i1 %51, label %66, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.ParticleSettings, ptr %48, i64 0, i32 11
  %54 = load i16, ptr %53, align 8, !tbaa !540
  %55 = icmp eq i16 %54, 4
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.SPHFluidSettings, ptr %50, i64 0, i32 13
  %58 = load i32, ptr %57, align 4, !tbaa !840
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.ParticleSystem, ptr %6, i64 0, i32 44
  %63 = load i32, ptr %62, align 8, !tbaa !842
  %64 = getelementptr inbounds %struct.ParticleSystem, ptr %6, i64 0, i32 43
  %65 = load ptr, ptr %64, align 8, !tbaa !843
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.121, i32 noundef %63, ptr noundef %65) #16
  br label %66

66:                                               ; preds = %46, %52, %56, %61, %5
  %67 = getelementptr inbounds %struct.ParticleSystem, ptr %6, i64 0, i32 17
  %68 = load ptr, ptr %67, align 8, !tbaa !44
  %69 = icmp eq ptr %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %66, %70
  %71 = phi ptr [ %72, %70 ], [ %68, %66 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.211, i32 noundef 1, ptr noundef nonnull %71) #16
  %72 = load ptr, ptr %71, align 8, !tbaa !44
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %70, !llvm.loop !844

74:                                               ; preds = %70, %66
  %75 = getelementptr inbounds %struct.ParticleSystem, ptr %6, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !845
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.ParticleSystem, ptr %6, i64 0, i32 28
  %80 = load i32, ptr %79, align 8, !tbaa !846
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.212, i32 noundef %80, ptr noundef nonnull %76) #16
  br label %81

81:                                               ; preds = %78, %74
  %82 = getelementptr inbounds %struct.ParticleSystem, ptr %6, i64 0, i32 11
  %83 = load ptr, ptr %82, align 8, !tbaa !847
  %84 = icmp eq ptr %83, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %81
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.213, i32 noundef 1, ptr noundef nonnull %83) #16
  %86 = load ptr, ptr %82, align 8, !tbaa !847
  %87 = getelementptr inbounds %struct.ClothModifierData, ptr %86, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !848
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.214, i32 noundef 1, ptr noundef %88) #16
  %89 = load ptr, ptr %82, align 8, !tbaa !847
  %90 = getelementptr inbounds %struct.ClothModifierData, ptr %89, i64 0, i32 4
  %91 = load ptr, ptr %90, align 8, !tbaa !851
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.215, i32 noundef 1, ptr noundef %91) #16
  br label %92

92:                                               ; preds = %85, %81
  %93 = getelementptr inbounds %struct.ParticleSystem, ptr %6, i64 0, i32 41
  tail call fastcc void @write_pointcaches(ptr noundef %0, ptr noundef nonnull %93) #16
  %94 = load ptr, ptr %6, align 8, !tbaa !44
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %5, !llvm.loop !852

96:                                               ; preds = %92, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_modifiers(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 !PGOFuncName !853 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %166, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %166, label %7

7:                                                ; preds = %4, %163
  %8 = phi ptr [ %164, %163 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.ModifierData, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !854
  %11 = tail call ptr @modifierType_getInfo(i32 noundef %10) #17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %166, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.ModifierTypeInfo, ptr %11, i64 0, i32 1
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull %14, i32 noundef 1, ptr noundef nonnull %8) #16
  %15 = load i32, ptr %9, align 8, !tbaa !854
  switch i32 %15, label %163 [
    i32 9, label %16
    i32 22, label %22
    i32 31, label %31
    i32 26, label %79
    i32 40, label %82
    i32 47, label %157
    i32 18, label %118
    i32 35, label %147
    i32 36, label %152
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.HookModifierData, ptr %8, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !855
  %19 = shl i32 %18, 2
  %20 = getelementptr inbounds %struct.HookModifierData, ptr %8, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !857
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %19, ptr noundef %21) #16
  br label %163

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.ClothModifierData, ptr %8, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !848
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.214, i32 noundef 1, ptr noundef %24) #16
  %25 = getelementptr inbounds %struct.ClothModifierData, ptr %8, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !851
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.215, i32 noundef 1, ptr noundef %26) #16
  %27 = load ptr, ptr %23, align 8, !tbaa !848
  %28 = getelementptr inbounds %struct.ClothSimSettings, ptr %27, i64 0, i32 41
  %29 = load ptr, ptr %28, align 8, !tbaa !858
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.107, i32 noundef 1, ptr noundef %29) #16
  %30 = getelementptr inbounds %struct.ClothModifierData, ptr %8, i64 0, i32 6
  tail call fastcc void @write_pointcaches(ptr noundef %0, ptr noundef nonnull %30) #16
  br label %163

31:                                               ; preds = %13
  %32 = getelementptr inbounds %struct.SmokeModifierData, ptr %8, i64 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !860
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %67, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.SmokeModifierData, ptr %8, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !862
  %39 = icmp eq ptr %38, null
  br i1 %39, label %56, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %38, i64 0, i32 48
  tail call fastcc void @write_pointcaches(ptr noundef %0, ptr noundef nonnull %41) #16
  %42 = load ptr, ptr %37, align 8, !tbaa !862
  %43 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %42, i64 0, i32 48, i64 1
  %44 = tail call ptr @BKE_ptcache_add(ptr noundef nonnull %43) #17
  %45 = load ptr, ptr %37, align 8, !tbaa !862
  %46 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %45, i64 0, i32 47, i64 1
  store ptr %44, ptr %46, align 8, !tbaa !44
  %47 = load ptr, ptr %37, align 8, !tbaa !862
  %48 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %47, i64 0, i32 47, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !44
  %50 = getelementptr inbounds %struct.PointCache, ptr %49, i64 0, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !742
  %52 = or i32 %51, 4160
  store i32 %52, ptr %50, align 8, !tbaa !742
  %53 = getelementptr inbounds %struct.PointCache, ptr %49, i64 0, i32 3
  store i32 1, ptr %53, align 4, !tbaa !863
  %54 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %47, i64 0, i32 48, i64 1
  tail call fastcc void @write_pointcaches(ptr noundef %0, ptr noundef nonnull %54) #16
  %55 = load ptr, ptr %37, align 8, !tbaa !862
  br label %56

56:                                               ; preds = %40, %36
  %57 = phi ptr [ %55, %40 ], [ null, %36 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.216, i32 noundef 1, ptr noundef %57) #16
  %58 = load ptr, ptr %37, align 8, !tbaa !862
  %59 = icmp eq ptr %58, null
  br i1 %59, label %163, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %58, i64 0, i32 48, i64 1
  tail call void @BKE_ptcache_free_list(ptr noundef nonnull %61) #17
  %62 = load ptr, ptr %37, align 8, !tbaa !862
  %63 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %62, i64 0, i32 47, i64 1
  store ptr null, ptr %63, align 8, !tbaa !44
  %64 = load ptr, ptr %37, align 8, !tbaa !862
  %65 = getelementptr inbounds %struct.SmokeDomainSettings, ptr %64, i64 0, i32 49
  %66 = load ptr, ptr %65, align 8, !tbaa !864
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.107, i32 noundef 1, ptr noundef %66) #16
  br label %163

67:                                               ; preds = %31
  %68 = and i32 %33, 2
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.SmokeModifierData, ptr %8, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !866
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.217, i32 noundef 1, ptr noundef %72) #16
  br label %163

73:                                               ; preds = %67
  %74 = and i32 %33, 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %163, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.SmokeModifierData, ptr %8, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !867
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.218, i32 noundef 1, ptr noundef %78) #16
  br label %163

79:                                               ; preds = %13
  %80 = getelementptr inbounds %struct.FluidsimModifierData, ptr %8, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !868
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.219, i32 noundef 1, ptr noundef %81) #16
  br label %163

82:                                               ; preds = %13
  %83 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %8, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !870
  %85 = icmp eq ptr %84, null
  br i1 %85, label %107, label %86

86:                                               ; preds = %82
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.220, i32 noundef 1, ptr noundef nonnull %84) #16
  %87 = load ptr, ptr %83, align 8, !tbaa !870
  %88 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %87, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !44
  %90 = icmp eq ptr %89, null
  br i1 %90, label %107, label %91

91:                                               ; preds = %86, %91
  %92 = phi ptr [ %93, %91 ], [ %89, %86 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.221, i32 noundef 1, ptr noundef nonnull %92) #16
  %93 = load ptr, ptr %92, align 8, !tbaa !44
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %91, !llvm.loop !872

95:                                               ; preds = %91
  %96 = load ptr, ptr %83, align 8, !tbaa !870
  %97 = getelementptr inbounds %struct.DynamicPaintCanvasSettings, ptr %96, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !44
  %99 = icmp eq ptr %98, null
  br i1 %99, label %107, label %100

100:                                              ; preds = %95, %100
  %101 = phi ptr [ %105, %100 ], [ %98, %95 ]
  %102 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %101, i64 0, i32 7
  tail call fastcc void @write_pointcaches(ptr noundef %0, ptr noundef nonnull %102) #16
  %103 = getelementptr inbounds %struct.DynamicPaintSurface, ptr %101, i64 0, i32 5
  %104 = load ptr, ptr %103, align 8, !tbaa !873
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.107, i32 noundef 1, ptr noundef %104) #16
  %105 = load ptr, ptr %101, align 8, !tbaa !44
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %100, !llvm.loop !875

107:                                              ; preds = %100, %86, %95, %82
  %108 = getelementptr inbounds %struct.DynamicPaintModifierData, ptr %8, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !876
  %110 = icmp eq ptr %109, null
  br i1 %110, label %163, label %111

111:                                              ; preds = %107
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.222, i32 noundef 1, ptr noundef nonnull %109) #16
  %112 = load ptr, ptr %108, align 8, !tbaa !876
  %113 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %112, i64 0, i32 14
  %114 = load ptr, ptr %113, align 8, !tbaa !877
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.223, i32 noundef 1, ptr noundef %114) #16
  %115 = load ptr, ptr %108, align 8, !tbaa !876
  %116 = getelementptr inbounds %struct.DynamicPaintBrushSettings, ptr %115, i64 0, i32 15
  %117 = load ptr, ptr %116, align 8, !tbaa !879
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.223, i32 noundef 1, ptr noundef %117) #16
  br label %163

118:                                              ; preds = %13
  %119 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %8, i64 0, i32 14
  %120 = load i32, ptr %119, align 8, !tbaa !880
  %121 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %8, i64 0, i32 15
  %122 = load i32, ptr %121, align 4, !tbaa !882
  %123 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %8, i64 0, i32 6
  %124 = load ptr, ptr %123, align 8, !tbaa !883
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.224, i32 noundef %122, ptr noundef %124) #16
  %125 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %8, i64 0, i32 9
  %126 = load i32, ptr %125, align 8, !tbaa !884
  %127 = shl i32 %126, 2
  %128 = add i32 %127, 4
  %129 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %8, i64 0, i32 7
  %130 = load ptr, ptr %129, align 8, !tbaa !885
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %128, ptr noundef %130) #16
  %131 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %8, i64 0, i32 10
  %132 = load i32, ptr %131, align 4, !tbaa !886
  %133 = mul i32 %132, 12
  %134 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %8, i64 0, i32 8
  %135 = load ptr, ptr %134, align 8, !tbaa !887
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %133, ptr noundef %135) #16
  %136 = mul nsw i32 %120, %120
  %137 = mul nsw i32 %136, %120
  %138 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %8, i64 0, i32 11
  %139 = load ptr, ptr %138, align 8, !tbaa !888
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.225, i32 noundef %137, ptr noundef %139) #16
  %140 = load i32, ptr %121, align 4, !tbaa !882
  %141 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %8, i64 0, i32 12
  %142 = load ptr, ptr %141, align 8, !tbaa !889
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.224, i32 noundef %140, ptr noundef %142) #16
  %143 = load i32, ptr %125, align 8, !tbaa !884
  %144 = shl i32 %143, 2
  %145 = getelementptr inbounds %struct.MeshDeformModifierData, ptr %8, i64 0, i32 13
  %146 = load ptr, ptr %145, align 8, !tbaa !890
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %144, ptr noundef %146) #16
  br label %163

147:                                              ; preds = %13
  %148 = getelementptr inbounds %struct.WarpModifierData, ptr %8, i64 0, i32 8
  %149 = load ptr, ptr %148, align 8, !tbaa !891
  %150 = icmp eq ptr %149, null
  br i1 %150, label %163, label %151

151:                                              ; preds = %147
  tail call fastcc void @write_curvemapping(ptr noundef %0, ptr noundef nonnull %149) #16
  br label %163

152:                                              ; preds = %13
  %153 = getelementptr inbounds %struct.WeightVGEditModifierData, ptr %8, i64 0, i32 5
  %154 = load ptr, ptr %153, align 8, !tbaa !893
  %155 = icmp eq ptr %154, null
  br i1 %155, label %163, label %156

156:                                              ; preds = %152
  tail call fastcc void @write_curvemapping(ptr noundef %0, ptr noundef nonnull %154) #16
  br label %163

157:                                              ; preds = %13
  %158 = getelementptr inbounds %struct.LaplacianDeformModifierData, ptr %8, i64 0, i32 2
  %159 = load i32, ptr %158, align 8, !tbaa !895
  %160 = mul i32 %159, 12
  %161 = getelementptr inbounds %struct.LaplacianDeformModifierData, ptr %8, i64 0, i32 4
  %162 = load ptr, ptr %161, align 8, !tbaa !897
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %160, ptr noundef %162) #16
  br label %163

163:                                              ; preds = %16, %118, %157, %79, %22, %70, %76, %73, %56, %60, %111, %107, %151, %147, %156, %152, %13
  %164 = load ptr, ptr %8, align 8, !tbaa !44
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %7, !llvm.loop !898

166:                                              ; preds = %163, %7, %4, %2
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_pose_ikparam_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_constraint_typeinfo_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @modifierType_getInfo(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_ptcache_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_ptcache_free_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_customdata(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !899 {
  %5 = alloca %struct.CustomData, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %5) #18
  %8 = load i64, ptr @CD_MASK_EVERYTHING, align 8, !tbaa !900
  call void @CustomData_copy(ptr noundef %3, ptr noundef nonnull %5, i64 noundef %8, i32 noundef 3, i32 noundef %2) #17
  %9 = getelementptr inbounds %struct.CustomData, ptr %5, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !901
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !96
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i64, ptr @CD_MASK_MESH, align 8, !tbaa !900
  call void @CustomData_external_write(ptr noundef nonnull %5, ptr noundef %1, i64 noundef %17, i32 noundef %2, i32 noundef 0) #17
  br label %18

18:                                               ; preds = %16, %12, %4
  %19 = getelementptr inbounds %struct.CustomData, ptr %5, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !902
  %21 = icmp sgt i32 %20, 0
  %22 = load ptr, ptr %5, align 8, !tbaa !903
  br i1 %21, label %23, label %32

23:                                               ; preds = %18
  %24 = zext nneg i32 %20 to i64
  br label %25

25:                                               ; preds = %23, %25
  %26 = phi i64 [ 0, %23 ], [ %30, %25 ]
  %27 = getelementptr inbounds %struct.CustomDataLayer, ptr %22, i64 %26, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !904
  %29 = and i32 %28, -3
  store i32 %29, ptr %27, align 8, !tbaa !904
  %30 = add nuw nsw i64 %26, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %32, label %25, !llvm.loop !906

32:                                               ; preds = %25, %18
  %33 = getelementptr inbounds %struct.CustomData, ptr %5, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !907
  %35 = load ptr, ptr %3, align 8, !tbaa !903
  call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.233, i32 noundef %34, ptr noundef %35, ptr noundef %22) #16
  %36 = load i32, ptr %19, align 4, !tbaa !902
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %91

38:                                               ; preds = %32
  %39 = load ptr, ptr %5, align 8, !tbaa !903
  %40 = zext nneg i32 %36 to i64
  br label %44

41:                                               ; preds = %44
  br i1 %37, label %42, label %91

42:                                               ; preds = %41
  %43 = shl i32 %2, 2
  br label %51

44:                                               ; preds = %38, %44
  %45 = phi i64 [ 0, %38 ], [ %49, %44 ]
  %46 = getelementptr inbounds %struct.CustomDataLayer, ptr %39, i64 %45, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !904
  %48 = or i32 %47, 2
  store i32 %48, ptr %46, align 8, !tbaa !904
  %49 = add nuw nsw i64 %45, 1
  %50 = icmp eq i64 %49, %40
  br i1 %50, label %41, label %44, !llvm.loop !908

51:                                               ; preds = %42, %86
  %52 = phi i64 [ 0, %42 ], [ %87, %86 ]
  %53 = load ptr, ptr %5, align 8, !tbaa !903
  %54 = getelementptr inbounds %struct.CustomDataLayer, ptr %53, i64 %52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  %55 = load i32, ptr %54, align 8, !tbaa !909
  switch i32 %55, label %71 [
    i32 2, label %56
    i32 19, label %59
    i32 34, label %65
    i32 35, label %68
  ]

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.CustomDataLayer, ptr %53, i64 %52, i32 9
  %58 = load ptr, ptr %57, align 8, !tbaa !910
  call fastcc void @write_dverts(ptr noundef %0, i32 noundef %2, ptr noundef %58) #16
  br label %86

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.CustomDataLayer, ptr %53, i64 %52, i32 9
  %61 = load ptr, ptr %60, align 8, !tbaa !910
  %62 = getelementptr inbounds %struct.CustomDataLayer, ptr %53, i64 %52, i32 2
  %63 = load i32, ptr %62, align 8, !tbaa !904
  %64 = and i32 %63, 8
  call fastcc void @write_mdisps(ptr noundef %0, i32 noundef %2, ptr noundef %61, i32 noundef %64) #16
  br label %86

65:                                               ; preds = %51
  %66 = getelementptr inbounds %struct.CustomDataLayer, ptr %53, i64 %52, i32 9
  %67 = load ptr, ptr %66, align 8, !tbaa !910
  call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %43, ptr noundef %67) #16
  br label %86

68:                                               ; preds = %51
  %69 = getelementptr inbounds %struct.CustomDataLayer, ptr %53, i64 %52, i32 9
  %70 = load ptr, ptr %69, align 8, !tbaa !910
  call fastcc void @write_grid_paint_mask(ptr noundef %0, i32 noundef %2, ptr noundef %70) #16
  br label %86

71:                                               ; preds = %51
  call void @CustomData_file_write_info(i32 noundef %55, ptr noundef nonnull %6, ptr noundef nonnull %7) #17
  %72 = load i32, ptr %7, align 4, !tbaa !58
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %71
  %75 = load i32, ptr %54, align 8, !tbaa !909
  %76 = icmp eq i32 %75, -1
  %77 = mul nsw i32 %72, %2
  %78 = select i1 %76, i32 0, i32 %77
  %79 = load ptr, ptr %6, align 8, !tbaa !44
  %80 = getelementptr inbounds %struct.CustomDataLayer, ptr %53, i64 %52, i32 9
  %81 = load ptr, ptr %80, align 8, !tbaa !910
  call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef %79, i32 noundef %78, ptr noundef %81) #16
  br label %86

82:                                               ; preds = %71
  %83 = load ptr, ptr %6, align 8, !tbaa !44
  %84 = load i32, ptr %54, align 8, !tbaa !909
  %85 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @__func__.write_customdata, ptr noundef %83, i32 noundef %84) #16
  br label %86

86:                                               ; preds = %59, %68, %82, %74, %65, %56
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  %87 = add nuw nsw i64 %52, 1
  %88 = load i32, ptr %19, align 4, !tbaa !902
  %89 = sext i32 %88 to i64
  %90 = icmp slt i64 %87, %89
  br i1 %90, label %51, label %91, !llvm.loop !911

91:                                               ; preds = %86, %32, %41
  %92 = load ptr, ptr %9, align 8, !tbaa !901
  %93 = icmp eq ptr %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.CustomData, ptr %3, i64 0, i32 6
  %96 = load ptr, ptr %95, align 8, !tbaa !901
  call fastcc void @writestruct_at_address(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.235, i32 noundef 1, ptr noundef %96, ptr noundef nonnull %92) #16
  br label %97

97:                                               ; preds = %94, %91
  call void @CustomData_free(ptr noundef nonnull %5, i32 noundef %2) #17
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %5) #18
  ret void
}

; Function Attrs: optsize
declare void @CustomData_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_mesh_mpoly_to_mface(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_mesh_update_customdata_pointers(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_copy(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CustomData_external_write(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_mdisps(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !912 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %4
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.236, i32 noundef %1, ptr noundef nonnull %2) #16
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %6
  %9 = icmp ne i32 %3, 0
  %10 = zext nneg i32 %1 to i64
  br label %11

11:                                               ; preds = %8, %30
  %12 = phi i64 [ 0, %8 ], [ %31, %30 ]
  %13 = getelementptr inbounds %struct.MDisps, ptr %2, i64 %12
  %14 = getelementptr inbounds %struct.MDisps, ptr %2, i64 %12, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !913
  %16 = icmp eq ptr %15, null
  %17 = or i1 %9, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = load i32, ptr %13, align 8, !tbaa !915
  %20 = mul i32 %19, 12
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %20, ptr noundef nonnull %15) #16
  br label %21

21:                                               ; preds = %18, %11
  %22 = getelementptr inbounds %struct.MDisps, ptr %2, i64 %12, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !916
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load i32, ptr %13, align 8, !tbaa !915
  %27 = ashr i32 %26, 3
  %28 = and i32 %27, -4
  %29 = add nsw i32 %28, 4
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %29, ptr noundef nonnull %23) #16
  br label %30

30:                                               ; preds = %25, %21
  %31 = add nuw nsw i64 %12, 1
  %32 = icmp eq i64 %31, %10
  br i1 %32, label %33, label %11, !llvm.loop !917

33:                                               ; preds = %30, %6, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_grid_paint_mask(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !918 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %3
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.237, i32 noundef %1, ptr noundef nonnull %2) #16
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %5
  %8 = zext nneg i32 %1 to i64
  br label %9

9:                                                ; preds = %7, %21
  %10 = phi i64 [ 0, %7 ], [ %22, %21 ]
  %11 = getelementptr inbounds %struct.GridPaintMask, ptr %2, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !919
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.GridPaintMask, ptr %2, i64 %10, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !921
  %17 = tail call i32 @BKE_ccg_gridsize(i32 noundef %16) #17
  %18 = shl i32 %17, 2
  %19 = mul i32 %18, %17
  %20 = load ptr, ptr %11, align 8, !tbaa !919
  tail call fastcc void @writedata(ptr noundef %0, i32 noundef 1096040772, i32 noundef %19, ptr noundef %20) #16
  br label %21

21:                                               ; preds = %14, %9
  %22 = add nuw nsw i64 %10, 1
  %23 = icmp eq i64 %22, %8
  br i1 %23, label %24, label %9, !llvm.loop !922

24:                                               ; preds = %21, %5, %3
  ret void
}

; Function Attrs: optsize
declare void @CustomData_file_write_info(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_ccg_gridsize(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_boid_state(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !923 {
  %3 = getelementptr inbounds %struct.BoidState, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !924
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.242, i32 noundef 1, ptr noundef %1) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2, %16
  %7 = phi ptr [ %18, %16 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.BoidRule, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !925
  %10 = add i32 %9, -1
  %11 = icmp ult i32 %10, 8
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = zext nneg i32 %10 to i64
  %14 = shl i64 %13, 2
  %15 = call ptr @llvm.load.relative.i64(ptr @reltable.write_boid_state, i64 %14)
  br label %16

16:                                               ; preds = %6, %12
  %17 = phi ptr [ %15, %12 ], [ @.str.248, %6 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull %17, i32 noundef 1, ptr noundef nonnull %7) #16
  %18 = load ptr, ptr %7, align 8, !tbaa !927
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %6, !llvm.loop !928

20:                                               ; preds = %16, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_linestyle_color_modifiers(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !929 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %40, label %8

5:                                                ; preds = %18
  %6 = load ptr, ptr %1, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %40, label %22

8:                                                ; preds = %2, %18
  %9 = phi ptr [ %20, %18 ], [ %3, %2 ]
  %10 = getelementptr inbounds %struct.LineStyleModifier, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !930
  %12 = add i32 %11, -1
  %13 = icmp ult i32 %12, 4
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = zext nneg i32 %12 to i64
  %16 = shl i64 %15, 2
  %17 = call ptr @llvm.load.relative.i64(ptr @reltable.write_linestyle_color_modifiers, i64 %16)
  br label %18

18:                                               ; preds = %8, %14
  %19 = phi ptr [ %17, %14 ], [ @.str.265, %8 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull %19, i32 noundef 1, ptr noundef nonnull %9) #16
  %20 = load ptr, ptr %9, align 8, !tbaa !44
  %21 = icmp eq ptr %20, null
  br i1 %21, label %5, label %8, !llvm.loop !932

22:                                               ; preds = %5, %37
  %23 = phi ptr [ %38, %37 ], [ %6, %5 ]
  %24 = getelementptr inbounds %struct.LineStyleModifier, ptr %23, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !930
  switch i32 %25, label %37 [
    i32 1, label %26
    i32 2, label %28
    i32 3, label %30
    i32 4, label %32
  ]

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.LineStyleColorModifier_AlongStroke, ptr %23, i64 0, i32 1
  br label %34

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromCamera, ptr %23, i64 0, i32 1
  br label %34

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.LineStyleColorModifier_DistanceFromObject, ptr %23, i64 0, i32 2
  br label %34

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.LineStyleColorModifier_Material, ptr %23, i64 0, i32 1
  br label %34

34:                                               ; preds = %32, %30, %28, %26
  %35 = phi ptr [ %27, %26 ], [ %29, %28 ], [ %31, %30 ], [ %33, %32 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !44
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.223, i32 noundef 1, ptr noundef %36) #16
  br label %37

37:                                               ; preds = %34, %22
  %38 = load ptr, ptr %23, align 8, !tbaa !44
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %22, !llvm.loop !933

40:                                               ; preds = %37, %2, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_linestyle_alpha_modifiers(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !934 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %40, label %8

5:                                                ; preds = %18
  %6 = load ptr, ptr %1, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %40, label %22

8:                                                ; preds = %2, %18
  %9 = phi ptr [ %20, %18 ], [ %3, %2 ]
  %10 = getelementptr inbounds %struct.LineStyleModifier, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !930
  %12 = add i32 %11, -1
  %13 = icmp ult i32 %12, 4
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = zext nneg i32 %12 to i64
  %16 = shl i64 %15, 2
  %17 = call ptr @llvm.load.relative.i64(ptr @reltable.write_linestyle_alpha_modifiers, i64 %16)
  br label %18

18:                                               ; preds = %8, %14
  %19 = phi ptr [ %17, %14 ], [ @.str.270, %8 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull %19, i32 noundef 1, ptr noundef nonnull %9) #16
  %20 = load ptr, ptr %9, align 8, !tbaa !44
  %21 = icmp eq ptr %20, null
  br i1 %21, label %5, label %8, !llvm.loop !935

22:                                               ; preds = %5, %37
  %23 = phi ptr [ %38, %37 ], [ %6, %5 ]
  %24 = getelementptr inbounds %struct.LineStyleModifier, ptr %23, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !930
  switch i32 %25, label %37 [
    i32 1, label %26
    i32 2, label %28
    i32 3, label %30
    i32 4, label %32
  ]

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.LineStyleAlphaModifier_AlongStroke, ptr %23, i64 0, i32 1
  br label %34

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromCamera, ptr %23, i64 0, i32 1
  br label %34

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.LineStyleAlphaModifier_DistanceFromObject, ptr %23, i64 0, i32 2
  br label %34

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.LineStyleAlphaModifier_Material, ptr %23, i64 0, i32 1
  br label %34

34:                                               ; preds = %32, %30, %28, %26
  %35 = phi ptr [ %27, %26 ], [ %29, %28 ], [ %31, %30 ], [ %33, %32 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !44
  tail call fastcc void @write_curvemapping(ptr noundef %0, ptr noundef %36) #16
  br label %37

37:                                               ; preds = %34, %22
  %38 = load ptr, ptr %23, align 8, !tbaa !44
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %22, !llvm.loop !936

40:                                               ; preds = %37, %2, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_linestyle_thickness_modifiers(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !937 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %39, label %8

5:                                                ; preds = %17
  %6 = load ptr, ptr %1, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %39, label %21

8:                                                ; preds = %2, %17
  %9 = phi ptr [ %19, %17 ], [ %3, %2 ]
  %10 = getelementptr inbounds %struct.LineStyleModifier, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !930
  switch i32 %11, label %16 [
    i32 1, label %17
    i32 2, label %12
    i32 3, label %13
    i32 4, label %14
    i32 13, label %15
  ]

12:                                               ; preds = %8
  br label %17

13:                                               ; preds = %8
  br label %17

14:                                               ; preds = %8
  br label %17

15:                                               ; preds = %8
  br label %17

16:                                               ; preds = %8
  br label %17

17:                                               ; preds = %8, %16, %15, %14, %13, %12
  %18 = phi ptr [ @.str.276, %16 ], [ @.str.275, %15 ], [ @.str.274, %14 ], [ @.str.273, %13 ], [ @.str.272, %12 ], [ @.str.271, %8 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull %18, i32 noundef 1, ptr noundef nonnull %9) #16
  %19 = load ptr, ptr %9, align 8, !tbaa !44
  %20 = icmp eq ptr %19, null
  br i1 %20, label %5, label %8, !llvm.loop !938

21:                                               ; preds = %5, %36
  %22 = phi ptr [ %37, %36 ], [ %6, %5 ]
  %23 = getelementptr inbounds %struct.LineStyleModifier, ptr %22, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !930
  switch i32 %24, label %36 [
    i32 1, label %25
    i32 2, label %27
    i32 3, label %29
    i32 4, label %31
  ]

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.LineStyleThicknessModifier_AlongStroke, ptr %22, i64 0, i32 1
  br label %33

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromCamera, ptr %22, i64 0, i32 1
  br label %33

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.LineStyleThicknessModifier_DistanceFromObject, ptr %22, i64 0, i32 2
  br label %33

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.LineStyleThicknessModifier_Material, ptr %22, i64 0, i32 1
  br label %33

33:                                               ; preds = %31, %29, %27, %25
  %34 = phi ptr [ %26, %25 ], [ %28, %27 ], [ %30, %29 ], [ %32, %31 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !44
  tail call fastcc void @write_curvemapping(ptr noundef %0, ptr noundef %35) #16
  br label %36

36:                                               ; preds = %33, %21
  %37 = load ptr, ptr %22, align 8, !tbaa !44
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %21, !llvm.loop !939

39:                                               ; preds = %36, %2, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_linestyle_geometry_modifiers(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !940 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %2, %15
  %6 = phi ptr [ %17, %15 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.LineStyleModifier, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !930
  %9 = add i32 %8, -5
  %10 = icmp ult i32 %9, 14
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = zext nneg i32 %9 to i64
  %13 = shl i64 %12, 2
  %14 = call ptr @llvm.load.relative.i64(ptr @reltable.write_linestyle_geometry_modifiers, i64 %13)
  br label %15

15:                                               ; preds = %5, %11
  %16 = phi ptr [ %14, %11 ], [ @.str.290, %5 ]
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull %16, i32 noundef 1, ptr noundef nonnull %6) #16
  %17 = load ptr, ptr %6, align 8, !tbaa !44
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %5, !llvm.loop !941

19:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: optsize
declare i32 @set_listbasepointers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_keymapitem(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !942 {
  tail call fastcc void @writestruct(ptr noundef %0, i32 noundef 1096040772, ptr noundef nonnull @.str.301, i32 noundef 1, ptr noundef %1) #16
  %3 = getelementptr inbounds %struct.wmKeyMapItem, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !943
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @IDP_WriteProperty(ptr noundef nonnull %4, ptr noundef %0) #16
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: optsize
declare void @nodeRemLink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @writedata_free(ptr noundef %0) unnamed_addr #0 !PGOFuncName !945 {
  %2 = load ptr, ptr %0, align 8, !tbaa !71
  tail call void @DNA_sdna_free(ptr noundef %2) #17
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.WriteData, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !92
  tail call void %3(ptr noundef %5) #17
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %6(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: optsize
declare void @DNA_sdna_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize }
attributes #18 = { nounwind }
attributes #19 = { nounwind optsize willreturn memory(none) }
attributes #20 = { nounwind optsize willreturn memory(read) }

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
!34 = !{!35, !37, i64 16}
!35 = !{!"IDProperty", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 17, !39, i64 18, !37, i64 20, !40, i64 84, !41, i64 88, !40, i64 120, !40, i64 124}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = !{!"IDPropertyData", !36, i64 0, !42, i64 8, !40, i64 24, !40, i64 28}
!42 = !{!"ListBase", !36, i64 0, !36, i64 8}
!43 = !{!"writefile.c:IDP_WriteGroup"}
!44 = !{!36, !36, i64 0}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"writefile.c:IDP_WriteString"}
!48 = !{!35, !40, i64 120}
!49 = !{!35, !36, i64 88}
!50 = !{!"writefile.c:IDP_WriteArray"}
!51 = !{!35, !37, i64 17}
!52 = distinct !{!52, !46}
!53 = !{!"writefile.c:IDP_WriteIDPArray"}
!54 = distinct !{!54, !46}
!55 = !{!"writefile.c:writestruct"}
!56 = !{!57, !36, i64 0}
!57 = !{!"WriteWrap", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24}
!58 = !{!40, !40, i64 0}
!59 = !{!60, !37, i64 2056}
!60 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !42, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !39, i64 2084, !39, i64 2086, !39, i64 2088, !37, i64 2090, !39, i64 2092, !40, i64 2096, !40, i64 2100, !37, i64 2104, !40, i64 2108, !40, i64 2112, !37, i64 2116}
!61 = !{!60, !36, i64 0}
!62 = !{!57, !36, i64 8}
!63 = !{i8 0, i8 2}
!64 = !{!"writefile.c:ww_handle_init"}
!65 = !{!"writefile.c:write_file_handle"}
!66 = !{!67, !37, i64 64}
!67 = !{!"", !36, i64 0, !40, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !36, i64 56, !37, i64 64}
!68 = !{!69, !36, i64 0}
!69 = !{!"Main", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 1040, !39, i64 1042, !39, i64 1044, !39, i64 1046, !70, i64 1048, !37, i64 1056, !39, i64 1072, !36, i64 1080, !42, i64 1088, !42, i64 1104, !42, i64 1120, !42, i64 1136, !42, i64 1152, !42, i64 1168, !42, i64 1184, !42, i64 1200, !42, i64 1216, !42, i64 1232, !42, i64 1248, !42, i64 1264, !42, i64 1280, !42, i64 1296, !42, i64 1312, !42, i64 1328, !42, i64 1344, !42, i64 1360, !42, i64 1376, !42, i64 1392, !42, i64 1408, !42, i64 1424, !42, i64 1440, !42, i64 1456, !42, i64 1472, !42, i64 1488, !42, i64 1504, !42, i64 1520, !42, i64 1536, !42, i64 1552, !42, i64 1568, !42, i64 1584, !42, i64 1600, !42, i64 1616, !37, i64 1632, !36, i64 1888, !36, i64 1896}
!70 = !{!"long", !37, i64 0}
!71 = !{!67, !36, i64 0}
!72 = !{!73, !40, i64 8}
!73 = !{!"SDNA", !36, i64 0, !40, i64 8, !40, i64 12, !36, i64 16, !40, i64 24, !40, i64 28, !36, i64 32, !36, i64 40, !40, i64 48, !36, i64 56, !36, i64 64, !40, i64 72}
!74 = !{!73, !36, i64 0}
!75 = !{!76, !40, i64 0}
!76 = !{!"BHead", !40, i64 0, !40, i64 4, !36, i64 8, !40, i64 16, !40, i64 20}
!77 = !{!"writefile.c:do_history"}
!78 = !{!79, !39, i64 8476}
!79 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !40, i64 8468, !39, i64 8472, !39, i64 8474, !39, i64 8476, !39, i64 8478, !39, i64 8480, !39, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !39, i64 8496, !39, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !39, i64 8528, !39, i64 8530, !39, i64 8532, !39, i64 8534, !42, i64 8536, !42, i64 8552, !42, i64 8568, !42, i64 8584, !42, i64 8600, !42, i64 8616, !42, i64 8632, !37, i64 8648, !39, i64 8712, !39, i64 8714, !39, i64 8716, !39, i64 8718, !39, i64 8720, !39, i64 8722, !39, i64 8724, !39, i64 8726, !37, i64 8728, !39, i64 8896, !39, i64 8898, !39, i64 8900, !39, i64 8902, !39, i64 8904, !39, i64 8906, !39, i64 8908, !39, i64 8910, !40, i64 8912, !40, i64 8916, !39, i64 8920, !39, i64 8922, !39, i64 8924, !39, i64 8926, !39, i64 8928, !39, i64 8930, !39, i64 8932, !39, i64 8934, !39, i64 8936, !39, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !39, i64 8944, !39, i64 8946, !39, i64 8948, !39, i64 8950, !39, i64 8952, !39, i64 8954, !80, i64 8956, !80, i64 8960, !40, i64 8964, !39, i64 8968, !39, i64 8970, !80, i64 8972, !39, i64 8976, !39, i64 8978, !39, i64 8980, !39, i64 8982, !81, i64 8984, !37, i64 9760, !37, i64 9772, !39, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !40, i64 10896, !40, i64 10900, !80, i64 10904, !80, i64 10908, !40, i64 10912, !39, i64 10916, !39, i64 10918, !39, i64 10920, !39, i64 10922, !39, i64 10924, !39, i64 10926, !82, i64 10928}
!80 = !{!"float", !37, i64 0}
!81 = !{!"ColorBand", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!82 = !{!"WalkNavigation", !80, i64 0, !80, i64 4, !80, i64 8, !80, i64 12, !80, i64 16, !80, i64 20, !39, i64 24, !37, i64 26}
!83 = distinct !{!83, !46}
!84 = !{!"writefile.c:writedata"}
!85 = !{!76, !36, i64 8}
!86 = !{!76, !40, i64 20}
!87 = !{!76, !40, i64 16}
!88 = !{!76, !40, i64 4}
!89 = !{!"writefile.c:mywrite"}
!90 = !{!67, !40, i64 48}
!91 = !{!67, !40, i64 44}
!92 = !{!67, !36, i64 16}
!93 = !{!67, !40, i64 40}
!94 = distinct !{!94, !46}
!95 = !{!"writefile.c:writedata_do_write"}
!96 = !{!67, !36, i64 32}
!97 = !{!67, !36, i64 56}
!98 = !{!57, !36, i64 16}
!99 = !{!"writefile.c:writestruct_at_address"}
!100 = !{!73, !36, i64 56}
!101 = !{!73, !36, i64 40}
!102 = !{!39, !39, i64 0}
!103 = !{!"writefile.c:ww_open_zlib"}
!104 = !{!37, !37, i64 0}
!105 = !{!"writefile.c:ww_close_zlib"}
!106 = !{!"writefile.c:ww_write_zlib"}
!107 = !{!"writefile.c:ww_open_none"}
!108 = !{!"writefile.c:ww_close_none"}
!109 = !{!"writefile.c:ww_write_none"}
!110 = !{!"writefile.c:bgnwrite"}
!111 = !{!67, !36, i64 24}
!112 = !{!"writefile.c:customnodes_add_deprecated_data"}
!113 = !{!114, !36, i64 248}
!114 = !{!"bNodeTree", !115, i64 0, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 200, !36, i64 208, !37, i64 216, !42, i64 224, !42, i64 240, !40, i64 256, !40, i64 260, !40, i64 264, !40, i64 268, !40, i64 272, !39, i64 276, !39, i64 278, !40, i64 280, !40, i64 284, !39, i64 288, !39, i64 290, !40, i64 292, !116, i64 296, !42, i64 312, !42, i64 328, !36, i64 344, !117, i64 352, !40, i64 356, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !36, i64 408, !36, i64 416, !36, i64 424}
!115 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !39, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !36, i64 112}
!116 = !{!"rctf", !80, i64 0, !80, i64 4, !80, i64 8, !80, i64 12}
!117 = !{!"bNodeInstanceKey", !40, i64 0}
!118 = !{!119, !36, i64 16}
!119 = !{!"bNodeLink", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !40, i64 48, !40, i64 52}
!120 = !{!119, !36, i64 24}
!121 = !{!119, !36, i64 32}
!122 = !{!119, !36, i64 40}
!123 = !{!124, !39, i64 172}
!124 = !{!"bNode", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !37, i64 104, !40, i64 168, !39, i64 172, !39, i64 174, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !39, i64 184, !39, i64 186, !37, i64 188, !42, i64 200, !42, i64 216, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !42, i64 264, !80, i64 280, !80, i64 284, !80, i64 288, !80, i64 292, !80, i64 296, !80, i64 300, !80, i64 304, !40, i64 308, !37, i64 312, !39, i64 376, !39, i64 378, !80, i64 380, !80, i64 384, !39, i64 388, !39, i64 390, !36, i64 392, !116, i64 400, !116, i64 416, !116, i64 432, !39, i64 448, !39, i64 450, !40, i64 452, !36, i64 456}
!125 = !{!124, !40, i64 168}
!126 = !{!127, !36, i64 296}
!127 = !{!"bNodeSocket", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !37, i64 96, !36, i64 160, !39, i64 168, !39, i64 170, !39, i64 172, !39, i64 174, !36, i64 176, !37, i64 184, !80, i64 248, !80, i64 252, !36, i64 256, !39, i64 264, !39, i64 266, !40, i64 268, !36, i64 272, !40, i64 280, !40, i64 284, !36, i64 288, !36, i64 296, !128, i64 304}
!128 = !{!"bNodeStack", !37, i64 0, !80, i64 16, !80, i64 20, !36, i64 24, !39, i64 32, !39, i64 34, !39, i64 36, !39, i64 38, !39, i64 40, !39, i64 42, !37, i64 44}
!129 = !{!119, !40, i64 48}
!130 = distinct !{!130, !46}
!131 = !{!"writefile.c:write_renderinfo"}
!132 = !{!133, !36, i64 184}
!133 = !{!"bScreen", !115, i64 0, !42, i64 120, !42, i64 136, !42, i64 152, !42, i64 168, !36, i64 184, !36, i64 192, !40, i64 200, !40, i64 204, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !39, i64 220, !39, i64 222, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !36, i64 232, !36, i64 240}
!134 = !{!135, !36, i64 24}
!135 = !{!"Scene", !115, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !42, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !39, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !136, i64 280, !144, i64 4264, !42, i64 4296, !42, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !39, i64 4376, !39, i64 4378, !40, i64 4380, !42, i64 4384, !145, i64 4400, !146, i64 4416, !149, i64 4600, !36, i64 4608, !150, i64 4616, !36, i64 4640, !70, i64 4648, !70, i64 4656, !138, i64 4664, !139, i64 4824, !151, i64 4888, !36, i64 4952}
!136 = !{!"RenderData", !137, i64 0, !36, i64 248, !36, i64 256, !140, i64 264, !141, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !80, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !39, i64 432, !39, i64 434, !80, i64 436, !80, i64 440, !80, i64 444, !80, i64 448, !80, i64 452, !39, i64 456, !39, i64 458, !39, i64 460, !39, i64 462, !39, i64 464, !39, i64 466, !40, i64 468, !39, i64 472, !39, i64 474, !39, i64 476, !39, i64 478, !39, i64 480, !39, i64 482, !40, i64 484, !40, i64 488, !39, i64 492, !39, i64 494, !40, i64 496, !40, i64 500, !39, i64 504, !39, i64 506, !39, i64 508, !39, i64 510, !39, i64 512, !37, i64 514, !37, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !39, i64 528, !39, i64 530, !39, i64 532, !39, i64 534, !39, i64 536, !39, i64 538, !39, i64 540, !39, i64 542, !116, i64 544, !116, i64 560, !142, i64 576, !42, i64 592, !39, i64 608, !39, i64 610, !80, i64 612, !80, i64 616, !80, i64 620, !80, i64 624, !40, i64 628, !80, i64 632, !80, i64 636, !80, i64 640, !80, i64 644, !39, i64 648, !39, i64 650, !39, i64 652, !39, i64 654, !39, i64 656, !39, i64 658, !80, i64 660, !80, i64 664, !39, i64 668, !39, i64 670, !80, i64 672, !80, i64 676, !37, i64 680, !40, i64 1704, !39, i64 1708, !39, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !40, i64 2520, !39, i64 2524, !39, i64 2526, !80, i64 2528, !80, i64 2532, !39, i64 2536, !39, i64 2538, !80, i64 2540, !39, i64 2544, !39, i64 2546, !40, i64 2548, !39, i64 2552, !39, i64 2554, !39, i64 2556, !39, i64 2558, !80, i64 2560, !80, i64 2564, !36, i64 2568, !40, i64 2576, !80, i64 2580, !37, i64 2584, !143, i64 2616, !40, i64 3976, !40, i64 3980}
!137 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !39, i64 8, !39, i64 10, !80, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !138, i64 24, !139, i64 184}
!138 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 72, !80, i64 136, !80, i64 140, !36, i64 144, !36, i64 152}
!139 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!140 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !39, i64 48, !39, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!141 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !80, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !36, i64 64}
!142 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!143 = !{!"BakeData", !137, i64 0, !37, i64 248, !39, i64 1272, !39, i64 1274, !39, i64 1276, !39, i64 1278, !80, i64 1280, !80, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!144 = !{!"AudioData", !40, i64 0, !80, i64 4, !80, i64 8, !80, i64 12, !40, i64 16, !39, i64 20, !39, i64 22, !80, i64 24, !80, i64 28}
!145 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!146 = !{!"GameData", !145, i64 0, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !37, i64 34, !147, i64 40, !39, i64 64, !39, i64 66, !80, i64 68, !148, i64 72, !80, i64 128, !80, i64 132, !40, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !80, i64 164, !80, i64 168, !80, i64 172, !80, i64 176, !80, i64 180}
!147 = !{!"GameDome", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !80, i64 8, !80, i64 12, !36, i64 16}
!148 = !{!"RecastData", !80, i64 0, !80, i64 4, !80, i64 8, !80, i64 12, !80, i64 16, !80, i64 20, !80, i64 24, !80, i64 28, !80, i64 32, !80, i64 36, !40, i64 40, !80, i64 44, !80, i64 48, !39, i64 52, !39, i64 54}
!149 = !{!"UnitSettings", !80, i64 0, !37, i64 4, !37, i64 5, !39, i64 6}
!150 = !{!"PhysicsSettings", !37, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!151 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!152 = !{!135, !40, i64 796}
!153 = distinct !{!153, !46}
!154 = !{!"writefile.c:write_thumb"}
!155 = !{!"writefile.c:write_global"}
!156 = !{!157, !39, i64 6}
!157 = !{!"FileGlobal", !37, i64 0, !39, i64 4, !39, i64 6, !39, i64 8, !39, i64 10, !39, i64 12, !39, i64 14, !36, i64 16, !36, i64 24, !40, i64 32, !40, i64 36, !70, i64 40, !37, i64 48, !37, i64 64}
!158 = !{!157, !36, i64 16}
!159 = !{!157, !36, i64 24}
!160 = !{!157, !40, i64 32}
!161 = !{!60, !40, i64 2096}
!162 = !{!157, !40, i64 36}
!163 = !{!157, !39, i64 4}
!164 = !{!157, !39, i64 8}
!165 = !{!157, !39, i64 10}
!166 = !{!157, !70, i64 40}
!167 = !{!"writefile.c:write_windowmanagers"}
!168 = distinct !{!168, !46}
!169 = distinct !{!169, !46}
!170 = !{!"writefile.c:write_screens"}
!171 = distinct !{!171, !46}
!172 = !{!133, !36, i64 112}
!173 = distinct !{!173, !46}
!174 = distinct !{!174, !46}
!175 = distinct !{!175, !46}
!176 = distinct !{!176, !46}
!177 = !{!178, !37, i64 72}
!178 = !{!"ScrArea", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !142, i64 56, !37, i64 72, !37, i64 73, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !39, i64 84, !37, i64 86, !37, i64 87, !36, i64 88, !42, i64 96, !42, i64 112, !42, i64 128, !42, i64 144}
!179 = distinct !{!179, !46}
!180 = distinct !{!180, !46}
!181 = distinct !{!181, !46}
!182 = distinct !{!182, !46}
!183 = !{!184, !40, i64 32}
!184 = !{!"SpaceLink", !36, i64 0, !36, i64 8, !42, i64 16, !40, i64 32, !80, i64 36, !37, i64 40}
!185 = distinct !{!185, !46}
!186 = distinct !{!186, !46}
!187 = !{!188, !36, i64 152}
!188 = !{!"View3D", !36, i64 0, !36, i64 8, !42, i64 16, !40, i64 32, !80, i64 36, !37, i64 40, !37, i64 56, !80, i64 72, !80, i64 76, !37, i64 80, !37, i64 81, !40, i64 84, !40, i64 88, !39, i64 92, !39, i64 94, !36, i64 96, !36, i64 104, !116, i64 112, !42, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !40, i64 224, !40, i64 228, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !39, i64 240, !39, i64 242, !80, i64 244, !80, i64 248, !80, i64 252, !80, i64 256, !37, i64 260, !37, i64 272, !39, i64 284, !39, i64 286, !39, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !42, i64 296, !42, i64 312, !42, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!189 = !{i64 0, i64 8, !44, i64 8, i64 8, !44}
!190 = !{!191, !36, i64 216}
!191 = !{!"SpaceIpo", !36, i64 0, !36, i64 8, !42, i64 16, !40, i64 32, !80, i64 36, !37, i64 40, !192, i64 56, !36, i64 216, !42, i64 224, !39, i64 240, !39, i64 242, !40, i64 244, !80, i64 248, !40, i64 252}
!192 = !{!"View2D", !116, i64 0, !116, i64 16, !142, i64 32, !142, i64 48, !142, i64 64, !37, i64 80, !37, i64 88, !80, i64 96, !80, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !36, i64 128, !40, i64 136, !40, i64 140, !36, i64 144, !36, i64 152}
!193 = !{!194, !36, i64 40}
!194 = !{!"SpaceFile", !36, i64 0, !36, i64 8, !42, i64 16, !40, i64 32, !40, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !39, i64 96, !39, i64 98, !39, i64 100, !39, i64 102}
!195 = !{!196, !36, i64 88}
!196 = !{!"SpaceImage", !36, i64 0, !36, i64 8, !42, i64 16, !40, i64 32, !40, i64 36, !36, i64 40, !197, i64 48, !36, i64 88, !198, i64 96, !199, i64 5360, !36, i64 10520, !37, i64 10528, !80, i64 10536, !80, i64 10540, !80, i64 10544, !80, i64 10548, !80, i64 10552, !37, i64 10556, !37, i64 10557, !39, i64 10558, !39, i64 10560, !39, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !200, i64 10568}
!197 = !{!"ImageUser", !36, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !39, i64 28, !39, i64 30, !39, i64 32, !39, i64 34, !40, i64 36}
!198 = !{!"Scopes", !40, i64 0, !40, i64 4, !40, i64 8, !80, i64 12, !40, i64 16, !80, i64 20, !80, i64 24, !40, i64 28, !80, i64 32, !40, i64 36, !37, i64 40, !199, i64 64, !36, i64 5224, !36, i64 5232, !36, i64 5240, !36, i64 5248, !40, i64 5256, !40, i64 5260}
!199 = !{!"Histogram", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !80, i64 5128, !80, i64 5132, !39, i64 5136, !39, i64 5138, !40, i64 5140, !37, i64 5144}
!200 = !{!"MaskSpaceInfo", !36, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!201 = !{!202, !36, i64 56}
!202 = !{!"SpaceScript", !36, i64 0, !36, i64 8, !42, i64 16, !40, i64 32, !80, i64 36, !36, i64 40, !39, i64 48, !39, i64 50, !40, i64 52, !36, i64 56}
!203 = !{!204, !36, i64 64}
!204 = !{!"SpaceNla", !36, i64 0, !36, i64 8, !42, i64 16, !40, i64 32, !80, i64 36, !37, i64 40, !39, i64 56, !39, i64 58, !40, i64 60, !36, i64 64, !192, i64 72}
!205 = distinct !{!205, !46}
!206 = !{!207, !40, i64 20}
!207 = !{!"ConsoleLine", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !36, i64 24, !40, i64 32, !40, i64 36}
!208 = !{!207, !36, i64 24}
!209 = distinct !{!209, !46}
!210 = distinct !{!210, !46}
!211 = !{!"writefile.c:write_movieclips"}
!212 = !{!213, !40, i64 100}
!213 = !{!"MovieClip", !115, i64 0, !36, i64 120, !37, i64 128, !40, i64 1152, !40, i64 1156, !37, i64 1160, !80, i64 1168, !80, i64 1172, !36, i64 1176, !36, i64 1184, !36, i64 1192, !214, i64 1200, !36, i64 1528, !220, i64 1536, !40, i64 2312, !40, i64 2316, !40, i64 2320, !40, i64 2324, !151, i64 2328}
!214 = !{!"MovieTracking", !215, i64 0, !216, i64 72, !42, i64 128, !42, i64 144, !217, i64 160, !218, i64 184, !36, i64 232, !36, i64 240, !42, i64 248, !40, i64 264, !40, i64 268, !36, i64 272, !219, i64 280}
!215 = !{!"MovieTrackingSettings", !40, i64 0, !39, i64 4, !39, i64 6, !80, i64 8, !39, i64 12, !39, i64 14, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !80, i64 24, !39, i64 28, !39, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !39, i64 44, !39, i64 46, !80, i64 48, !40, i64 52, !40, i64 56, !80, i64 60, !80, i64 64, !40, i64 68}
!216 = !{!"MovieTrackingCamera", !36, i64 0, !39, i64 8, !39, i64 10, !80, i64 12, !80, i64 16, !80, i64 20, !39, i64 24, !39, i64 26, !37, i64 28, !80, i64 36, !80, i64 40, !80, i64 44, !80, i64 48, !80, i64 52}
!217 = !{!"MovieTrackingReconstruction", !40, i64 0, !80, i64 4, !40, i64 8, !40, i64 12, !36, i64 16}
!218 = !{!"MovieTrackingStabilization", !40, i64 0, !40, i64 4, !40, i64 8, !80, i64 12, !36, i64 16, !80, i64 24, !80, i64 28, !80, i64 32, !40, i64 36, !40, i64 40, !80, i64 44}
!219 = !{!"MovieTrackingDopesheet", !40, i64 0, !39, i64 4, !39, i64 6, !42, i64 8, !42, i64 24, !40, i64 40, !40, i64 44}
!220 = !{!"MovieClipProxy", !37, i64 0, !39, i64 768, !39, i64 770, !39, i64 772, !39, i64 774}
!221 = !{!213, !36, i64 112}
!222 = !{!213, !36, i64 120}
!223 = distinct !{!223, !46}
!224 = distinct !{!224, !46}
!225 = !{!"writefile.c:write_masks"}
!226 = !{!227, !40, i64 100}
!227 = !{!"Mask", !115, i64 0, !36, i64 120, !42, i64 128, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164}
!228 = !{!227, !36, i64 120}
!229 = distinct !{!229, !46}
!230 = distinct !{!230, !46}
!231 = !{!232, !36, i64 216}
!232 = !{!"MaskSpline", !36, i64 0, !36, i64 8, !39, i64 16, !37, i64 18, !37, i64 19, !40, i64 20, !36, i64 24, !233, i64 32, !36, i64 216}
!233 = !{!"MaskParent", !40, i64 0, !40, i64 4, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 144, !37, i64 152}
!234 = !{!232, !40, i64 20}
!235 = !{!232, !36, i64 24}
!236 = !{!237, !40, i64 76}
!237 = !{!"MaskSplinePoint", !238, i64 0, !40, i64 72, !40, i64 76, !36, i64 80, !233, i64 88}
!238 = !{!"BezTriple", !37, i64 0, !80, i64 36, !80, i64 40, !80, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !80, i64 56, !80, i64 60, !80, i64 64, !37, i64 68}
!239 = !{!237, !36, i64 80}
!240 = distinct !{!240, !46}
!241 = !{!242, !40, i64 24}
!242 = !{!"MaskLayerShape", !36, i64 0, !36, i64 8, !36, i64 16, !40, i64 24, !40, i64 28, !37, i64 32, !37, i64 33}
!243 = !{!242, !36, i64 16}
!244 = distinct !{!244, !46}
!245 = distinct !{!245, !46}
!246 = !{!"writefile.c:write_scenes"}
!247 = !{!135, !36, i64 112}
!248 = !{!135, !36, i64 120}
!249 = distinct !{!249, !46}
!250 = !{!135, !36, i64 264}
!251 = !{!252, !36, i64 0}
!252 = !{!"ToolSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !80, i64 32, !80, i64 36, !80, i64 40, !39, i64 44, !39, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !80, i64 52, !39, i64 56, !37, i64 58, !37, i64 59, !253, i64 64, !255, i64 168, !80, i64 336, !80, i64 340, !39, i64 344, !39, i64 346, !37, i64 348, !37, i64 349, !39, i64 350, !80, i64 352, !80, i64 356, !80, i64 360, !80, i64 364, !80, i64 368, !80, i64 372, !80, i64 376, !80, i64 380, !80, i64 384, !80, i64 388, !39, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !36, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !39, i64 434, !39, i64 436, !39, i64 438, !39, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !40, i64 448, !40, i64 452, !40, i64 456, !40, i64 460, !39, i64 464, !39, i64 466, !40, i64 468, !80, i64 472, !80, i64 476, !256, i64 480, !257, i64 608}
!253 = !{!"ImagePaintSettings", !254, i64 0, !39, i64 40, !39, i64 42, !39, i64 44, !39, i64 46, !37, i64 48, !40, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !80, i64 100}
!254 = !{!"Paint", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !40, i64 28, !40, i64 32, !40, i64 36}
!255 = !{!"ParticleEditSettings", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !37, i64 8, !36, i64 120, !80, i64 128, !80, i64 132, !40, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !36, i64 152, !36, i64 160}
!256 = !{!"UnifiedPaintSettings", !40, i64 0, !80, i64 4, !80, i64 8, !80, i64 12, !37, i64 16, !37, i64 28, !40, i64 40, !37, i64 44, !80, i64 52, !40, i64 56, !40, i64 60, !37, i64 64, !37, i64 65, !80, i64 72, !37, i64 76, !40, i64 84, !80, i64 88, !37, i64 92, !37, i64 100, !40, i64 108, !36, i64 112, !80, i64 120, !40, i64 124}
!257 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !80, i64 4, !80, i64 8, !80, i64 12, !80, i64 16, !37, i64 20, !37, i64 21, !80, i64 24, !80, i64 28, !80, i64 32, !80, i64 36}
!258 = !{!252, !36, i64 8}
!259 = !{!252, !36, i64 16}
!260 = !{!252, !36, i64 24}
!261 = !{!135, !36, i64 256}
!262 = !{!263, !40, i64 24}
!263 = !{!"SeqIterator", !36, i64 0, !40, i64 8, !40, i64 12, !36, i64 16, !40, i64 24}
!264 = !{!263, !36, i64 16}
!265 = !{!266, !36, i64 168}
!266 = !{!"Sequence", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !40, i64 116, !40, i64 120, !40, i64 124, !40, i64 128, !40, i64 132, !40, i64 136, !40, i64 140, !80, i64 144, !80, i64 148, !80, i64 152, !39, i64 156, !39, i64 158, !40, i64 160, !40, i64 164, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !80, i64 224, !80, i64 228, !36, i64 232, !36, i64 240, !36, i64 248, !42, i64 256, !36, i64 272, !36, i64 280, !80, i64 288, !80, i64 292, !80, i64 296, !80, i64 300, !36, i64 304, !40, i64 312, !40, i64 316, !40, i64 320, !80, i64 324, !40, i64 328, !37, i64 332, !37, i64 333, !42, i64 336}
!267 = !{!268, !40, i64 20}
!268 = !{!"Strip", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !36, i64 32, !37, i64 40, !36, i64 808, !36, i64 816, !36, i64 824, !36, i64 832, !151, i64 840}
!269 = distinct !{!269, !46}
!270 = !{!266, !36, i64 304}
!271 = !{!266, !40, i64 100}
!272 = !{!266, !40, i64 96}
!273 = !{!268, !36, i64 816}
!274 = !{!268, !36, i64 824}
!275 = !{!268, !36, i64 808}
!276 = !{!268, !36, i64 32}
!277 = distinct !{!277, !46}
!278 = distinct !{!278, !46}
!279 = !{!135, !36, i64 528}
!280 = !{!281, !36, i64 0}
!281 = !{!"AviCodecData", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !37, i64 56}
!282 = !{!281, !40, i64 16}
!283 = !{!281, !36, i64 8}
!284 = !{!281, !40, i64 20}
!285 = !{!135, !36, i64 536}
!286 = !{!287, !36, i64 0}
!287 = !{!"QuicktimeCodecData", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !37, i64 24}
!288 = !{!287, !40, i64 16}
!289 = !{!135, !36, i64 672}
!290 = distinct !{!290, !46}
!291 = distinct !{!291, !46}
!292 = distinct !{!292, !46}
!293 = distinct !{!293, !46}
!294 = distinct !{!294, !46}
!295 = !{!135, !36, i64 248}
!296 = !{!135, !36, i64 4952}
!297 = !{!298, !36, i64 0}
!298 = !{!"RigidBodyWorld", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !40, i64 32, !80, i64 36, !36, i64 40, !42, i64 48, !40, i64 64, !39, i64 68, !39, i64 70, !40, i64 72, !80, i64 76, !36, i64 80}
!299 = distinct !{!299, !46}
!300 = !{!"writefile.c:write_curves"}
!301 = !{!302, !40, i64 100}
!302 = !{!"Curve", !115, i64 0, !36, i64 120, !36, i64 128, !42, i64 136, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !39, i64 244, !39, i64 246, !39, i64 248, !39, i64 250, !80, i64 252, !80, i64 256, !40, i64 260, !39, i64 264, !39, i64 266, !40, i64 268, !80, i64 272, !80, i64 276, !80, i64 280, !39, i64 284, !39, i64 286, !39, i64 288, !39, i64 290, !40, i64 292, !40, i64 296, !37, i64 300, !39, i64 304, !37, i64 306, !37, i64 307, !80, i64 308, !80, i64 312, !80, i64 316, !80, i64 320, !80, i64 324, !80, i64 328, !80, i64 332, !80, i64 336, !80, i64 340, !80, i64 344, !40, i64 348, !40, i64 352, !40, i64 356, !40, i64 360, !40, i64 364, !36, i64 368, !36, i64 376, !37, i64 384, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !36, i64 480, !40, i64 488, !40, i64 492, !36, i64 496, !303, i64 504, !80, i64 512, !80, i64 516, !80, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!303 = !{!"CharInfo", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !39, i64 6}
!304 = !{!302, !39, i64 266}
!305 = !{!302, !36, i64 200}
!306 = !{!302, !36, i64 112}
!307 = !{!302, !36, i64 120}
!308 = !{!302, !36, i64 448}
!309 = !{!302, !40, i64 364}
!310 = !{!302, !36, i64 368}
!311 = !{!302, !40, i64 360}
!312 = !{!302, !36, i64 496}
!313 = !{!302, !40, i64 488}
!314 = !{!302, !36, i64 480}
!315 = distinct !{!315, !46}
!316 = !{!317, !39, i64 16}
!317 = !{!"Nurb", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !40, i64 24, !40, i64 28, !37, i64 32, !39, i64 36, !39, i64 38, !39, i64 40, !39, i64 42, !39, i64 44, !39, i64 46, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !39, i64 80, !39, i64 82, !40, i64 84}
!318 = !{!317, !40, i64 24}
!319 = !{!317, !36, i64 72}
!320 = !{!317, !40, i64 28}
!321 = !{!317, !36, i64 64}
!322 = !{!317, !36, i64 48}
!323 = !{!317, !39, i64 40}
!324 = !{!317, !39, i64 44}
!325 = !{!317, !36, i64 56}
!326 = !{!317, !39, i64 42}
!327 = !{!317, !39, i64 46}
!328 = distinct !{!328, !46}
!329 = distinct !{!329, !46}
!330 = !{!"writefile.c:write_mballs"}
!331 = !{!332, !40, i64 100}
!332 = !{!"MetaBall", !115, i64 0, !36, i64 120, !42, i64 128, !42, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 185, !39, i64 186, !39, i64 188, !39, i64 190, !37, i64 192, !37, i64 204, !37, i64 216, !80, i64 228, !80, i64 232, !80, i64 236, !36, i64 240}
!333 = !{!332, !36, i64 112}
!334 = !{!332, !39, i64 186}
!335 = !{!332, !36, i64 176}
!336 = !{!332, !36, i64 120}
!337 = distinct !{!337, !46}
!338 = distinct !{!338, !46}
!339 = !{!"writefile.c:write_images"}
!340 = !{!341, !40, i64 100}
!341 = !{!"Image", !115, i64 0, !37, i64 120, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !37, i64 1176, !39, i64 1240, !39, i64 1242, !39, i64 1244, !39, i64 1246, !39, i64 1248, !39, i64 1250, !40, i64 1252, !39, i64 1256, !39, i64 1258, !39, i64 1260, !39, i64 1262, !39, i64 1264, !39, i64 1266, !40, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !80, i64 1296, !40, i64 1300, !39, i64 1304, !39, i64 1306, !40, i64 1308, !40, i64 1312, !37, i64 1316, !37, i64 1317, !39, i64 1318, !37, i64 1320, !80, i64 1336, !80, i64 1340, !151, i64 1344, !37, i64 1408, !37, i64 1409, !37, i64 1416}
!342 = !{!341, !36, i64 112}
!343 = !{!341, !36, i64 1280}
!344 = !{!345, !40, i64 0}
!345 = !{!"PackedFile", !40, i64 0, !40, i64 4, !36, i64 8}
!346 = !{!345, !36, i64 8}
!347 = !{!341, !36, i64 1288}
!348 = distinct !{!348, !46}
!349 = !{!"writefile.c:write_cameras"}
!350 = !{!351, !40, i64 100}
!351 = !{!"Camera", !115, i64 0, !36, i64 120, !37, i64 128, !37, i64 129, !39, i64 130, !80, i64 132, !80, i64 136, !80, i64 140, !80, i64 144, !80, i64 148, !80, i64 152, !80, i64 156, !80, i64 160, !80, i64 164, !80, i64 168, !80, i64 172, !36, i64 176, !36, i64 184, !37, i64 192, !37, i64 193}
!352 = !{!351, !36, i64 112}
!353 = !{!351, !36, i64 120}
!354 = distinct !{!354, !46}
!355 = !{!"writefile.c:write_lamps"}
!356 = !{!357, !40, i64 100}
!357 = !{!"Lamp", !115, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !40, i64 132, !39, i64 136, !39, i64 138, !80, i64 140, !80, i64 144, !80, i64 148, !80, i64 152, !80, i64 156, !80, i64 160, !80, i64 164, !80, i64 168, !80, i64 172, !80, i64 176, !80, i64 180, !80, i64 184, !80, i64 188, !80, i64 192, !80, i64 196, !36, i64 200, !39, i64 208, !39, i64 210, !80, i64 212, !80, i64 216, !80, i64 220, !80, i64 224, !80, i64 228, !80, i64 232, !80, i64 236, !39, i64 240, !39, i64 242, !39, i64 244, !39, i64 246, !37, i64 248, !37, i64 249, !39, i64 250, !39, i64 252, !39, i64 254, !39, i64 256, !39, i64 258, !80, i64 260, !80, i64 264, !80, i64 268, !80, i64 272, !39, i64 276, !39, i64 278, !39, i64 280, !39, i64 282, !39, i64 284, !39, i64 286, !80, i64 288, !80, i64 292, !80, i64 296, !80, i64 300, !80, i64 304, !80, i64 308, !80, i64 312, !80, i64 316, !80, i64 320, !80, i64 324, !80, i64 328, !80, i64 332, !80, i64 336, !39, i64 340, !37, i64 342, !36, i64 344, !37, i64 352, !39, i64 496, !39, i64 498, !37, i64 500, !36, i64 504, !36, i64 512}
!358 = !{!357, !36, i64 112}
!359 = !{!357, !36, i64 120}
!360 = distinct !{!360, !46}
!361 = !{!357, !36, i64 200}
!362 = !{!357, !36, i64 512}
!363 = !{!357, !36, i64 504}
!364 = distinct !{!364, !46}
!365 = !{!"writefile.c:write_lattices"}
!366 = !{!367, !40, i64 100}
!367 = !{!"Lattice", !115, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !39, i64 132, !39, i64 134, !39, i64 136, !39, i64 138, !39, i64 140, !39, i64 142, !37, i64 144, !37, i64 145, !37, i64 146, !37, i64 147, !40, i64 148, !80, i64 152, !80, i64 156, !80, i64 160, !80, i64 164, !80, i64 168, !80, i64 172, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !36, i64 272}
!368 = !{!367, !36, i64 112}
!369 = !{!367, !36, i64 120}
!370 = !{!367, !39, i64 128}
!371 = !{!367, !39, i64 130}
!372 = !{!367, !39, i64 132}
!373 = !{!367, !36, i64 176}
!374 = !{!367, !36, i64 200}
!375 = distinct !{!375, !46}
!376 = !{!"writefile.c:write_vfonts"}
!377 = !{!378, !40, i64 100}
!378 = !{!"VFont", !115, i64 0, !37, i64 120, !36, i64 1144, !36, i64 1152, !36, i64 1160}
!379 = !{!378, !36, i64 112}
!380 = !{!378, !36, i64 1152}
!381 = distinct !{!381, !46}
!382 = !{!"writefile.c:write_keys"}
!383 = !{!384, !40, i64 100}
!384 = !{!"Key", !115, i64 0, !36, i64 120, !36, i64 128, !37, i64 136, !40, i64 168, !40, i64 172, !42, i64 176, !36, i64 192, !36, i64 200, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !80, i64 216, !40, i64 220}
!385 = !{!384, !36, i64 112}
!386 = !{!384, !36, i64 120}
!387 = !{!388, !36, i64 40}
!388 = !{!"KeyBlock", !36, i64 0, !36, i64 8, !80, i64 16, !80, i64 20, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !40, i64 32, !40, i64 36, !36, i64 40, !37, i64 48, !37, i64 112, !80, i64 176, !80, i64 180}
!389 = !{!388, !40, i64 32}
!390 = !{!384, !40, i64 168}
!391 = distinct !{!391, !46}
!392 = distinct !{!392, !46}
!393 = !{!"writefile.c:write_worlds"}
!394 = !{!395, !40, i64 100}
!395 = !{!"World", !115, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !39, i64 132, !39, i64 134, !80, i64 136, !80, i64 140, !80, i64 144, !80, i64 148, !80, i64 152, !80, i64 156, !80, i64 160, !80, i64 164, !80, i64 168, !80, i64 172, !80, i64 176, !80, i64 180, !80, i64 184, !80, i64 188, !80, i64 192, !80, i64 196, !39, i64 200, !39, i64 202, !39, i64 204, !39, i64 206, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !80, i64 216, !80, i64 220, !80, i64 224, !80, i64 228, !80, i64 232, !80, i64 236, !80, i64 240, !80, i64 244, !80, i64 248, !80, i64 252, !80, i64 256, !80, i64 260, !39, i64 264, !39, i64 266, !39, i64 268, !39, i64 270, !80, i64 272, !80, i64 276, !80, i64 280, !80, i64 284, !39, i64 288, !39, i64 290, !39, i64 292, !39, i64 294, !80, i64 296, !80, i64 300, !80, i64 304, !80, i64 308, !80, i64 312, !80, i64 316, !80, i64 320, !39, i64 324, !39, i64 326, !39, i64 328, !39, i64 330, !39, i64 332, !39, i64 334, !36, i64 336, !36, i64 344, !36, i64 352, !37, i64 360, !39, i64 504, !39, i64 506, !37, i64 508, !36, i64 512, !36, i64 520}
!396 = !{!395, !36, i64 112}
!397 = !{!395, !36, i64 120}
!398 = distinct !{!398, !46}
!399 = !{!395, !36, i64 520}
!400 = !{!395, !36, i64 512}
!401 = distinct !{!401, !46}
!402 = !{!"writefile.c:write_texts"}
!403 = !{!404, !40, i64 128}
!404 = !{!"Text", !115, i64 0, !36, i64 120, !40, i64 128, !40, i64 132, !42, i64 136, !36, i64 152, !36, i64 160, !40, i64 168, !40, i64 172, !36, i64 176, !40, i64 184, !40, i64 188, !36, i64 192, !405, i64 200}
!405 = !{!"double", !37, i64 0}
!406 = !{!404, !36, i64 120}
!407 = !{!404, !36, i64 112}
!408 = distinct !{!408, !46}
!409 = !{!410, !40, i64 32}
!410 = !{!"TextLine", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !40, i64 32, !40, i64 36}
!411 = !{!410, !36, i64 16}
!412 = distinct !{!412, !46}
!413 = distinct !{!413, !46}
!414 = !{!"writefile.c:write_speakers"}
!415 = !{!416, !40, i64 100}
!416 = !{!"Speaker", !115, i64 0, !36, i64 120, !36, i64 128, !80, i64 136, !80, i64 140, !80, i64 144, !80, i64 148, !80, i64 152, !80, i64 156, !80, i64 160, !80, i64 164, !80, i64 168, !80, i64 172, !39, i64 176, !37, i64 178}
!417 = !{!416, !36, i64 112}
!418 = !{!416, !36, i64 120}
!419 = distinct !{!419, !46}
!420 = !{!"writefile.c:write_sounds"}
!421 = !{!422, !40, i64 100}
!422 = !{!"bSound", !115, i64 0, !37, i64 120, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !80, i64 1176, !80, i64 1180, !80, i64 1184, !80, i64 1188, !80, i64 1192, !80, i64 1196, !40, i64 1200, !40, i64 1204, !36, i64 1208, !36, i64 1216, !36, i64 1224}
!423 = !{!422, !36, i64 112}
!424 = !{!422, !36, i64 1144}
!425 = distinct !{!425, !46}
!426 = !{!"writefile.c:write_groups"}
!427 = !{!428, !40, i64 100}
!428 = !{!"Group", !115, i64 0, !42, i64 120, !40, i64 136, !37, i64 140}
!429 = !{!428, !36, i64 112}
!430 = distinct !{!430, !46}
!431 = distinct !{!431, !46}
!432 = !{!"writefile.c:write_armatures"}
!433 = !{!434, !40, i64 100}
!434 = !{!"bArmature", !115, i64 0, !36, i64 120, !42, i64 128, !42, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !39, i64 208, !39, i64 210, !40, i64 212, !40, i64 216, !40, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252}
!435 = !{!434, !36, i64 112}
!436 = !{!434, !36, i64 120}
!437 = distinct !{!437, !46}
!438 = distinct !{!438, !46}
!439 = !{!"writefile.c:write_actions"}
!440 = !{!441, !40, i64 100}
!441 = !{!"bAction", !115, i64 0, !42, i64 120, !42, i64 136, !42, i64 152, !42, i64 168, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196}
!442 = !{!441, !36, i64 112}
!443 = distinct !{!443, !46}
!444 = distinct !{!444, !46}
!445 = distinct !{!445, !46}
!446 = !{!"writefile.c:write_objects"}
!447 = !{!448, !40, i64 100}
!448 = !{!"Object", !115, i64 0, !36, i64 120, !36, i64 128, !39, i64 136, !39, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !449, i64 312, !36, i64 360, !42, i64 368, !42, i64 384, !42, i64 400, !42, i64 416, !40, i64 432, !40, i64 436, !36, i64 440, !36, i64 448, !40, i64 456, !40, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !80, i64 616, !80, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !40, i64 944, !39, i64 948, !39, i64 950, !39, i64 952, !39, i64 954, !39, i64 956, !39, i64 958, !39, i64 960, !39, i64 962, !39, i64 964, !37, i64 966, !37, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !80, i64 988, !80, i64 992, !80, i64 996, !80, i64 1000, !80, i64 1004, !80, i64 1008, !80, i64 1012, !80, i64 1016, !80, i64 1020, !80, i64 1024, !80, i64 1028, !80, i64 1032, !39, i64 1036, !39, i64 1038, !39, i64 1040, !37, i64 1042, !37, i64 1043, !39, i64 1044, !37, i64 1046, !37, i64 1047, !80, i64 1048, !80, i64 1052, !42, i64 1056, !42, i64 1072, !42, i64 1088, !42, i64 1104, !80, i64 1120, !39, i64 1124, !39, i64 1126, !37, i64 1128, !40, i64 1144, !40, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !39, i64 1162, !37, i64 1164, !42, i64 1176, !42, i64 1192, !42, i64 1208, !42, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !39, i64 1266, !80, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !70, i64 1304, !70, i64 1312, !40, i64 1320, !40, i64 1324, !42, i64 1328, !42, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !42, i64 1400, !36, i64 1416}
!449 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!450 = !{!448, !36, i64 112}
!451 = !{!448, !36, i64 120}
!452 = !{!448, !40, i64 456}
!453 = !{!448, !36, i64 440}
!454 = !{!448, !36, i64 448}
!455 = !{!448, !39, i64 136}
!456 = !{!448, !36, i64 296}
!457 = !{!448, !36, i64 288}
!458 = !{!434, !36, i64 168}
!459 = !{!448, !36, i64 360}
!460 = !{!448, !36, i64 1240}
!461 = !{!448, !36, i64 1248}
!462 = !{!463, !36, i64 376}
!463 = !{!"SoftBody", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 25, !39, i64 26, !80, i64 28, !37, i64 32, !80, i64 96, !80, i64 100, !80, i64 104, !80, i64 108, !80, i64 112, !80, i64 116, !80, i64 120, !80, i64 124, !80, i64 128, !39, i64 132, !37, i64 134, !39, i64 198, !80, i64 200, !80, i64 204, !37, i64 208, !40, i64 272, !40, i64 276, !40, i64 280, !39, i64 284, !39, i64 286, !36, i64 288, !40, i64 296, !40, i64 300, !80, i64 304, !80, i64 308, !80, i64 312, !80, i64 316, !39, i64 320, !39, i64 322, !39, i64 324, !39, i64 326, !39, i64 328, !39, i64 330, !39, i64 332, !39, i64 334, !36, i64 336, !80, i64 344, !80, i64 348, !36, i64 352, !42, i64 360, !36, i64 376, !37, i64 384, !37, i64 396, !37, i64 432, !40, i64 468}
!464 = !{!448, !36, i64 1152}
!465 = !{!448, !36, i64 1368}
!466 = !{!448, !36, i64 1376}
!467 = !{!448, !37, i64 1047}
!468 = !{!448, !36, i64 1392}
!469 = distinct !{!469, !46}
!470 = !{!"writefile.c:write_materials"}
!471 = !{!472, !40, i64 100}
!472 = !{!"Material", !115, i64 0, !36, i64 120, !39, i64 128, !39, i64 130, !80, i64 132, !80, i64 136, !80, i64 140, !80, i64 144, !80, i64 148, !80, i64 152, !80, i64 156, !80, i64 160, !80, i64 164, !80, i64 168, !80, i64 172, !80, i64 176, !80, i64 180, !80, i64 184, !80, i64 188, !80, i64 192, !80, i64 196, !80, i64 200, !80, i64 204, !80, i64 208, !80, i64 212, !80, i64 216, !80, i64 220, !473, i64 224, !474, i64 312, !80, i64 328, !80, i64 332, !80, i64 336, !80, i64 340, !80, i64 344, !80, i64 348, !80, i64 352, !39, i64 356, !39, i64 358, !39, i64 360, !37, i64 362, !37, i64 363, !80, i64 364, !80, i64 368, !39, i64 372, !39, i64 374, !80, i64 376, !80, i64 380, !80, i64 384, !80, i64 388, !39, i64 392, !39, i64 394, !40, i64 396, !40, i64 400, !40, i64 404, !40, i64 408, !39, i64 412, !39, i64 414, !39, i64 416, !39, i64 418, !80, i64 420, !80, i64 424, !80, i64 428, !80, i64 432, !80, i64 436, !80, i64 440, !80, i64 444, !80, i64 448, !80, i64 452, !80, i64 456, !37, i64 460, !80, i64 524, !80, i64 528, !80, i64 532, !40, i64 536, !37, i64 540, !37, i64 541, !37, i64 542, !37, i64 543, !39, i64 544, !39, i64 546, !39, i64 548, !37, i64 550, !37, i64 551, !39, i64 552, !39, i64 554, !80, i64 556, !80, i64 560, !37, i64 564, !80, i64 580, !80, i64 584, !39, i64 588, !39, i64 590, !36, i64 592, !36, i64 600, !37, i64 608, !37, i64 609, !37, i64 610, !37, i64 611, !39, i64 612, !39, i64 614, !80, i64 616, !80, i64 620, !37, i64 624, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !80, i64 800, !80, i64 804, !80, i64 808, !80, i64 812, !80, i64 816, !39, i64 820, !39, i64 822, !37, i64 824, !37, i64 836, !80, i64 848, !80, i64 852, !80, i64 856, !80, i64 860, !80, i64 864, !80, i64 868, !80, i64 872, !39, i64 876, !39, i64 878, !40, i64 880, !39, i64 884, !39, i64 886, !37, i64 888, !39, i64 904, !39, i64 906, !39, i64 908, !39, i64 910, !39, i64 912, !37, i64 914, !36, i64 920, !42, i64 928}
!473 = !{!"VolumeSettings", !80, i64 0, !80, i64 4, !80, i64 8, !80, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !80, i64 52, !80, i64 56, !80, i64 60, !39, i64 64, !39, i64 66, !39, i64 68, !39, i64 70, !80, i64 72, !80, i64 76, !80, i64 80, !80, i64 84}
!474 = !{!"GameSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!475 = !{!472, !36, i64 112}
!476 = !{!472, !36, i64 120}
!477 = distinct !{!477, !46}
!478 = !{!472, !36, i64 592}
!479 = !{!472, !36, i64 600}
!480 = !{!472, !36, i64 768}
!481 = !{!472, !36, i64 792}
!482 = distinct !{!482, !46}
!483 = !{!"writefile.c:write_textures"}
!484 = !{!485, !40, i64 100}
!485 = !{!"Tex", !115, i64 0, !36, i64 120, !80, i64 128, !80, i64 132, !80, i64 136, !80, i64 140, !80, i64 144, !80, i64 148, !80, i64 152, !80, i64 156, !80, i64 160, !80, i64 164, !80, i64 168, !80, i64 172, !80, i64 176, !80, i64 180, !80, i64 184, !80, i64 188, !80, i64 192, !80, i64 196, !80, i64 200, !80, i64 204, !80, i64 208, !80, i64 212, !39, i64 216, !39, i64 218, !39, i64 220, !39, i64 222, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !80, i64 236, !80, i64 240, !80, i64 244, !80, i64 248, !40, i64 252, !40, i64 256, !39, i64 260, !39, i64 262, !39, i64 264, !39, i64 266, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !80, i64 284, !80, i64 288, !80, i64 292, !197, i64 296, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !36, i64 400, !37, i64 408, !37, i64 409}
!486 = !{!485, !36, i64 112}
!487 = !{!485, !36, i64 120}
!488 = !{!485, !36, i64 360}
!489 = !{!485, !39, i64 232}
!490 = !{!485, !36, i64 368}
!491 = !{!485, !36, i64 384}
!492 = !{!493, !36, i64 88}
!493 = !{!"PointDensity", !39, i64 0, !39, i64 2, !80, i64 4, !80, i64 8, !39, i64 12, !39, i64 14, !40, i64 16, !40, i64 20, !36, i64 24, !40, i64 32, !39, i64 36, !39, i64 38, !36, i64 40, !36, i64 48, !80, i64 56, !39, i64 60, !39, i64 62, !39, i64 64, !37, i64 66, !80, i64 72, !80, i64 76, !80, i64 80, !80, i64 84, !36, i64 88, !36, i64 96}
!494 = !{!493, !36, i64 96}
!495 = !{!485, !36, i64 392}
!496 = !{!485, !36, i64 400}
!497 = !{!485, !36, i64 336}
!498 = !{!485, !36, i64 376}
!499 = distinct !{!499, !46}
!500 = !{!"writefile.c:write_meshes"}
!501 = !{!502, !40, i64 100}
!502 = !{!"Mesh", !115, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !503, i64 280, !503, i64 480, !503, i64 680, !503, i64 880, !503, i64 1080, !40, i64 1280, !40, i64 1284, !40, i64 1288, !40, i64 1292, !40, i64 1296, !40, i64 1300, !40, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !40, i64 1344, !39, i64 1348, !39, i64 1350, !80, i64 1352, !40, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !39, i64 1366, !36, i64 1368}
!503 = !{!"CustomData", !36, i64 0, !37, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !36, i64 184, !36, i64 192}
!504 = !{i64 0, i64 8, !44, i64 8, i64 8, !44, i64 16, i64 8, !44, i64 24, i64 8, !44, i64 32, i64 66, !104, i64 98, i64 2, !102, i64 100, i64 4, !58, i64 104, i64 4, !58, i64 108, i64 4, !58, i64 112, i64 8, !44, i64 120, i64 8, !44, i64 128, i64 8, !44, i64 136, i64 8, !44, i64 144, i64 8, !44, i64 152, i64 8, !44, i64 160, i64 8, !44, i64 168, i64 8, !44, i64 176, i64 8, !44, i64 184, i64 8, !44, i64 192, i64 8, !44, i64 200, i64 8, !44, i64 208, i64 8, !44, i64 216, i64 8, !44, i64 224, i64 8, !44, i64 232, i64 8, !44, i64 240, i64 8, !44, i64 248, i64 8, !44, i64 256, i64 8, !44, i64 264, i64 8, !44, i64 272, i64 8, !44, i64 280, i64 8, !44, i64 288, i64 164, !104, i64 452, i64 4, !58, i64 456, i64 4, !58, i64 460, i64 4, !58, i64 464, i64 8, !44, i64 472, i64 8, !44, i64 480, i64 8, !44, i64 488, i64 164, !104, i64 652, i64 4, !58, i64 656, i64 4, !58, i64 660, i64 4, !58, i64 664, i64 8, !44, i64 672, i64 8, !44, i64 680, i64 8, !44, i64 688, i64 164, !104, i64 852, i64 4, !58, i64 856, i64 4, !58, i64 860, i64 4, !58, i64 864, i64 8, !44, i64 872, i64 8, !44, i64 880, i64 8, !44, i64 888, i64 164, !104, i64 1052, i64 4, !58, i64 1056, i64 4, !58, i64 1060, i64 4, !58, i64 1064, i64 8, !44, i64 1072, i64 8, !44, i64 1080, i64 8, !44, i64 1088, i64 164, !104, i64 1252, i64 4, !58, i64 1256, i64 4, !58, i64 1260, i64 4, !58, i64 1264, i64 8, !44, i64 1272, i64 8, !44, i64 1280, i64 4, !58, i64 1284, i64 4, !58, i64 1288, i64 4, !58, i64 1292, i64 4, !58, i64 1296, i64 4, !58, i64 1300, i64 4, !58, i64 1304, i64 4, !58, i64 1308, i64 12, !104, i64 1320, i64 12, !104, i64 1332, i64 12, !104, i64 1344, i64 4, !58, i64 1348, i64 2, !102, i64 1350, i64 2, !102, i64 1352, i64 4, !505, i64 1356, i64 4, !58, i64 1360, i64 1, !104, i64 1361, i64 1, !104, i64 1362, i64 1, !104, i64 1363, i64 1, !104, i64 1364, i64 1, !104, i64 1365, i64 1, !104, i64 1366, i64 2, !102, i64 1368, i64 8, !44}
!505 = !{!80, !80, i64 0}
!506 = !{!502, !36, i64 208}
!507 = !{!502, !40, i64 1288}
!508 = !{!502, !36, i64 112}
!509 = !{!502, !36, i64 120}
!510 = !{!502, !39, i64 1366}
!511 = !{!502, !36, i64 152}
!512 = !{!502, !40, i64 1292}
!513 = !{!502, !36, i64 160}
!514 = !{!502, !40, i64 1280}
!515 = !{!502, !40, i64 1284}
!516 = !{!502, !40, i64 1300}
!517 = !{!502, !40, i64 1296}
!518 = !{!502, !36, i64 168}
!519 = !{!502, !36, i64 272}
!520 = distinct !{!520, !46}
!521 = !{!"writefile.c:write_particlesettings"}
!522 = !{!523, !40, i64 100}
!523 = !{!"ParticleSettings", !115, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !40, i64 156, !39, i64 160, !39, i64 162, !39, i64 164, !39, i64 166, !39, i64 168, !39, i64 170, !39, i64 172, !39, i64 174, !40, i64 176, !40, i64 180, !39, i64 184, !39, i64 186, !39, i64 188, !39, i64 190, !39, i64 192, !39, i64 194, !39, i64 196, !39, i64 198, !39, i64 200, !39, i64 202, !39, i64 204, !39, i64 206, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !39, i64 220, !39, i64 222, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !80, i64 232, !80, i64 236, !37, i64 240, !37, i64 248, !80, i64 256, !80, i64 260, !80, i64 264, !39, i64 268, !39, i64 270, !80, i64 272, !80, i64 276, !80, i64 280, !80, i64 284, !80, i64 288, !80, i64 292, !80, i64 296, !80, i64 300, !80, i64 304, !80, i64 308, !80, i64 312, !80, i64 316, !37, i64 320, !40, i64 324, !40, i64 328, !40, i64 332, !40, i64 336, !39, i64 340, !37, i64 342, !80, i64 348, !80, i64 352, !80, i64 356, !80, i64 360, !80, i64 364, !80, i64 368, !80, i64 372, !37, i64 376, !80, i64 388, !80, i64 392, !80, i64 396, !80, i64 400, !80, i64 404, !80, i64 408, !80, i64 412, !37, i64 416, !80, i64 428, !80, i64 432, !80, i64 436, !80, i64 440, !40, i64 444, !40, i64 448, !80, i64 452, !80, i64 456, !80, i64 460, !80, i64 464, !80, i64 468, !80, i64 472, !80, i64 476, !80, i64 480, !80, i64 484, !80, i64 488, !80, i64 492, !80, i64 496, !80, i64 500, !80, i64 504, !80, i64 508, !80, i64 512, !80, i64 516, !80, i64 520, !80, i64 524, !80, i64 528, !80, i64 532, !80, i64 536, !80, i64 540, !80, i64 544, !80, i64 548, !37, i64 552, !80, i64 560, !80, i64 564, !40, i64 568, !40, i64 572, !37, i64 576, !36, i64 720, !42, i64 728, !36, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !39, i64 792, !37, i64 794}
!524 = !{!523, !36, i64 112}
!525 = !{!523, !36, i64 120}
!526 = !{!523, !36, i64 776}
!527 = !{!523, !36, i64 784}
!528 = !{!523, !36, i64 144}
!529 = !{!530, !39, i64 28}
!530 = !{!"ParticleDupliWeight", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30}
!531 = !{!523, !36, i64 720}
!532 = !{!428, !36, i64 120}
!533 = !{!530, !36, i64 16}
!534 = !{!535, !36, i64 16}
!535 = !{!"GroupObject", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !37, i64 34}
!536 = !{!535, !36, i64 0}
!537 = distinct !{!537, !46}
!538 = distinct !{!538, !46}
!539 = !{!523, !36, i64 128}
!540 = !{!523, !39, i64 168}
!541 = !{!542, !36, i64 88}
!542 = !{!"BoidSettings", !40, i64 0, !40, i64 4, !80, i64 8, !80, i64 12, !80, i64 16, !80, i64 20, !80, i64 24, !80, i64 28, !80, i64 32, !80, i64 36, !80, i64 40, !80, i64 44, !80, i64 48, !80, i64 52, !80, i64 56, !80, i64 60, !80, i64 64, !80, i64 68, !80, i64 72, !80, i64 76, !80, i64 80, !80, i64 84, !42, i64 88}
!543 = !{!544, !36, i64 0}
!544 = !{!"BoidState", !36, i64 0, !36, i64 8, !42, i64 16, !42, i64 32, !42, i64 48, !37, i64 64, !40, i64 96, !40, i64 100, !40, i64 104, !80, i64 108, !40, i64 112, !40, i64 116, !80, i64 120, !80, i64 124}
!545 = distinct !{!545, !46}
!546 = !{!523, !36, i64 136}
!547 = distinct !{!547, !46}
!548 = distinct !{!548, !46}
!549 = !{!"writefile.c:write_nodetrees"}
!550 = !{!114, !40, i64 100}
!551 = !{!114, !36, i64 112}
!552 = !{!114, !36, i64 120}
!553 = distinct !{!553, !46}
!554 = !{!"writefile.c:write_brushes"}
!555 = !{!556, !40, i64 100}
!556 = !{!"Brush", !115, i64 0, !557, i64 120, !36, i64 144, !558, i64 152, !558, i64 464, !36, i64 776, !36, i64 784, !36, i64 792, !36, i64 800, !36, i64 808, !37, i64 816, !80, i64 1840, !39, i64 1844, !39, i64 1846, !80, i64 1848, !40, i64 1852, !40, i64 1856, !40, i64 1860, !80, i64 1864, !40, i64 1868, !40, i64 1872, !40, i64 1876, !40, i64 1880, !80, i64 1884, !80, i64 1888, !37, i64 1892, !80, i64 1904, !37, i64 1908, !40, i64 1920, !80, i64 1924, !80, i64 1928, !40, i64 1932, !40, i64 1936, !40, i64 1940, !37, i64 1944, !37, i64 1945, !37, i64 1946, !37, i64 1947, !80, i64 1948, !80, i64 1952, !80, i64 1956, !80, i64 1960, !80, i64 1964, !40, i64 1968, !40, i64 1972, !40, i64 1976, !80, i64 1980, !80, i64 1984, !40, i64 1988, !40, i64 1992, !80, i64 1996, !37, i64 2000, !37, i64 2012, !37, i64 2024, !37, i64 2032, !37, i64 2040, !37, i64 2048}
!557 = !{!"BrushClone", !36, i64 0, !37, i64 8, !80, i64 16, !80, i64 20}
!558 = !{!"MTex", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !80, i64 116, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !39, i64 128, !39, i64 130, !37, i64 132, !37, i64 133, !80, i64 140, !80, i64 144, !80, i64 148, !80, i64 152, !80, i64 156, !80, i64 160, !80, i64 164, !80, i64 168, !80, i64 172, !80, i64 176, !80, i64 180, !80, i64 184, !80, i64 188, !80, i64 192, !80, i64 196, !80, i64 200, !80, i64 204, !80, i64 208, !80, i64 212, !80, i64 216, !80, i64 220, !80, i64 224, !80, i64 228, !80, i64 232, !80, i64 236, !80, i64 240, !80, i64 244, !80, i64 248, !80, i64 252, !80, i64 256, !80, i64 260, !80, i64 264, !80, i64 268, !80, i64 272, !80, i64 276, !80, i64 280, !80, i64 284, !80, i64 288, !80, i64 292, !80, i64 296, !80, i64 300, !80, i64 304, !80, i64 308}
!559 = !{!556, !36, i64 112}
!560 = !{!556, !36, i64 144}
!561 = !{!556, !36, i64 800}
!562 = distinct !{!562, !46}
!563 = !{!"writefile.c:write_palettes"}
!564 = !{!565, !40, i64 100}
!565 = !{!"Palette", !115, i64 0, !42, i64 120, !42, i64 136, !40, i64 152, !40, i64 156}
!566 = !{!565, !36, i64 112}
!567 = distinct !{!567, !46}
!568 = distinct !{!568, !46}
!569 = !{!"writefile.c:write_paintcurves"}
!570 = !{!571, !40, i64 100}
!571 = !{!"PaintCurve", !115, i64 0, !36, i64 120, !40, i64 128, !40, i64 132}
!572 = !{!571, !40, i64 128}
!573 = !{!571, !36, i64 120}
!574 = !{!571, !36, i64 112}
!575 = distinct !{!575, !46}
!576 = !{!"writefile.c:write_scripts"}
!577 = !{!578, !40, i64 100}
!578 = !{!"Script", !115, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !40, i64 160, !40, i64 164, !37, i64 168, !37, i64 1192}
!579 = !{!578, !36, i64 112}
!580 = distinct !{!580, !46}
!581 = !{!"writefile.c:write_gpencils"}
!582 = !{!583, !40, i64 100}
!583 = !{!"bGPdata", !115, i64 0, !42, i64 120, !40, i64 136, !39, i64 140, !39, i64 142, !36, i64 144}
!584 = distinct !{!584, !46}
!585 = distinct !{!585, !46}
!586 = !{!587, !40, i64 32}
!587 = !{!"bGPDstroke", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !40, i64 32, !39, i64 36, !39, i64 38, !405, i64 40}
!588 = !{!587, !36, i64 16}
!589 = distinct !{!589, !46}
!590 = distinct !{!590, !46}
!591 = !{!"writefile.c:write_linestyles"}
!592 = !{!593, !40, i64 100}
!593 = !{!"FreestyleLineStyle", !115, i64 0, !36, i64 120, !80, i64 128, !80, i64 132, !80, i64 136, !80, i64 140, !80, i64 144, !40, i64 148, !80, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !80, i64 172, !80, i64 176, !80, i64 180, !80, i64 184, !80, i64 188, !40, i64 192, !39, i64 196, !39, i64 198, !39, i64 200, !39, i64 202, !39, i64 204, !39, i64 206, !40, i64 208, !40, i64 212, !80, i64 216, !39, i64 220, !39, i64 222, !39, i64 224, !37, i64 226, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !39, i64 240, !39, i64 242, !40, i64 244, !37, i64 248, !36, i64 392, !42, i64 400, !42, i64 416, !42, i64 432, !42, i64 448}
!594 = !{!593, !36, i64 112}
!595 = !{!593, !36, i64 120}
!596 = distinct !{!596, !46}
!597 = !{!593, !36, i64 392}
!598 = distinct !{!598, !46}
!599 = !{!"writefile.c:write_libraries"}
!600 = !{!69, !36, i64 1080}
!601 = !{!602, !36, i64 2192}
!602 = !{!"Library", !115, i64 0, !36, i64 120, !36, i64 128, !37, i64 136, !37, i64 1160, !36, i64 2184, !36, i64 2192}
!603 = !{!115, !40, i64 100}
!604 = !{!115, !39, i64 98}
!605 = distinct !{!605, !46}
!606 = distinct !{!606, !46}
!607 = distinct !{!607, !46}
!608 = distinct !{!608, !46}
!609 = distinct !{!609, !46}
!610 = !{!"writefile.c:write_userdef"}
!611 = distinct !{!611, !46}
!612 = distinct !{!612, !46}
!613 = !{!614, !36, i64 16}
!614 = !{!"wmKeyMapDiffItem", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!615 = !{!614, !36, i64 24}
!616 = distinct !{!616, !46}
!617 = distinct !{!617, !46}
!618 = !{!619, !36, i64 80}
!619 = !{!"bAddon", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80}
!620 = distinct !{!620, !46}
!621 = distinct !{!621, !46}
!622 = distinct !{!622, !46}
!623 = !{!"writefile.c:customnodes_free_deprecated_data"}
!624 = !{!114, !36, i64 240}
!625 = !{!119, !36, i64 0}
!626 = distinct !{!626, !46}
!627 = distinct !{!627, !46}
!628 = !{!"writefile.c:endwrite"}
!629 = !{!"writefile.c:writedata_new"}
!630 = !{!"writefile.c:current_screen_compat"}
!631 = !{!69, !36, i64 1552}
!632 = !{!633, !36, i64 136}
!633 = !{!"wmWindowManager", !115, i64 0, !36, i64 120, !36, i64 128, !42, i64 136, !40, i64 152, !39, i64 156, !39, i64 158, !42, i64 160, !42, i64 176, !634, i64 192, !42, i64 232, !42, i64 248, !42, i64 264, !42, i64 280, !36, i64 296, !36, i64 304, !36, i64 312, !42, i64 320, !36, i64 336, !37, i64 344, !37, i64 345}
!634 = !{!"ReportList", !42, i64 0, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !36, i64 32}
!635 = !{!636, !36, i64 24}
!636 = !{!"wmWindow", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !40, i64 128, !39, i64 132, !39, i64 134, !36, i64 136, !36, i64 144, !36, i64 152, !40, i64 160, !40, i64 164, !36, i64 168, !42, i64 176, !42, i64 192, !42, i64 208, !42, i64 224, !42, i64 240}
!637 = !{!"writefile.c:write_region"}
!638 = !{!639, !36, i64 376}
!639 = !{!"ARegion", !36, i64 0, !36, i64 8, !192, i64 16, !142, i64 176, !142, i64 192, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !80, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !36, i64 240, !42, i64 248, !42, i64 264, !42, i64 280, !42, i64 296, !42, i64 312, !42, i64 328, !42, i64 344, !36, i64 360, !36, i64 368, !36, i64 376}
!640 = !{!639, !39, i64 214}
!641 = !{!642, !36, i64 648}
!642 = !{!"RegionView3D", !37, i64 0, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !37, i64 320, !37, i64 384, !37, i64 448, !37, i64 544, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !37, i64 696, !37, i64 760, !80, i64 776, !80, i64 780, !80, i64 784, !80, i64 788, !37, i64 792, !80, i64 804, !37, i64 808, !37, i64 809, !37, i64 810, !37, i64 811, !37, i64 812, !37, i64 813, !37, i64 816, !39, i64 824, !39, i64 826, !37, i64 828, !39, i64 844, !39, i64 846, !80, i64 848, !37, i64 852, !80, i64 864, !37, i64 868}
!643 = !{!642, !36, i64 640}
!644 = !{!"writefile.c:write_uilist"}
!645 = !{!646, !36, i64 184}
!646 = !{!"uiList", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !40, i64 88, !40, i64 92, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !37, i64 112, !40, i64 176, !40, i64 180, !36, i64 184, !36, i64 192}
!647 = !{!"writefile.c:write_soops"}
!648 = !{!649, !36, i64 232}
!649 = !{!"SpaceOops", !36, i64 0, !36, i64 8, !42, i64 16, !40, i64 32, !80, i64 36, !37, i64 40, !192, i64 56, !42, i64 216, !36, i64 232, !37, i64 240, !650, i64 272, !39, i64 288, !39, i64 290, !39, i64 292, !39, i64 294, !36, i64 296}
!650 = !{!"TreeStoreElem", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !36, i64 8}
!651 = !{!652, !40, i64 4}
!652 = !{!"TreeStore", !40, i64 0, !40, i64 4, !36, i64 8}
!653 = !{!652, !40, i64 0}
!654 = !{!652, !36, i64 8}
!655 = !{!"writefile.c:write_curvemapping"}
!656 = !{!"writefile.c:write_curvemapping_curves"}
!657 = !{!658, !39, i64 0}
!658 = !{!"CurveMap", !39, i64 0, !39, i64 2, !80, i64 4, !80, i64 8, !80, i64 12, !37, i64 16, !37, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !37, i64 56, !37, i64 64}
!659 = !{!658, !36, i64 32}
!660 = distinct !{!660, !46}
!661 = !{!"writefile.c:write_animdata"}
!662 = !{!663, !36, i64 16}
!663 = !{!"AnimOverride", !36, i64 0, !36, i64 8, !36, i64 16, !40, i64 24, !80, i64 28}
!664 = distinct !{!664, !46}
!665 = !{!"writefile.c:write_movieTracks"}
!666 = !{!667, !36, i64 128}
!667 = !{!"MovieTrackingTrack", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !40, i64 120, !40, i64 124, !36, i64 128, !37, i64 136, !80, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !37, i64 164, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !40, i64 184, !80, i64 188, !36, i64 192, !80, i64 200, !80, i64 204}
!668 = !{!667, !40, i64 120}
!669 = distinct !{!669, !46}
!670 = !{!"writefile.c:write_moviePlaneTracks"}
!671 = !{!672, !40, i64 88}
!672 = !{!"MovieTrackingPlaneTrack", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !40, i64 88, !40, i64 92, !36, i64 96, !40, i64 104, !40, i64 108, !36, i64 112, !80, i64 120, !40, i64 124}
!673 = !{!672, !36, i64 80}
!674 = !{!672, !40, i64 104}
!675 = !{!672, !36, i64 96}
!676 = distinct !{!676, !46}
!677 = !{!"writefile.c:write_movieReconstruction"}
!678 = !{!217, !40, i64 12}
!679 = !{!217, !36, i64 16}
!680 = !{!"writefile.c:write_fcurves"}
!681 = !{!682, !36, i64 48}
!682 = !{!"FCurve", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !42, i64 32, !36, i64 48, !36, i64 56, !40, i64 64, !80, i64 68, !39, i64 72, !39, i64 74, !40, i64 76, !36, i64 80, !40, i64 88, !37, i64 92, !80, i64 104, !80, i64 108}
!683 = !{!682, !40, i64 64}
!684 = !{!682, !36, i64 56}
!685 = !{!682, !36, i64 80}
!686 = !{!682, !36, i64 24}
!687 = distinct !{!687, !46}
!688 = !{!689, !39, i64 528}
!689 = !{!"DriverVar", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !39, i64 528, !39, i64 530, !80, i64 532}
!690 = !{!691, !36, i64 8}
!691 = !{!"DriverTarget", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 48, !39, i64 50, !40, i64 52}
!692 = distinct !{!692, !46}
!693 = distinct !{!693, !46}
!694 = !{!"writefile.c:write_nladata"}
!695 = distinct !{!695, !46}
!696 = !{!"writefile.c:writelist"}
!697 = distinct !{!697, !46}
!698 = !{!"writefile.c:write_fmodifiers"}
!699 = !{!700, !36, i64 16}
!700 = !{!"FModifier", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !39, i64 88, !39, i64 90, !80, i64 92, !80, i64 96, !80, i64 100, !80, i64 104, !80, i64 108}
!701 = !{!700, !39, i64 88}
!702 = !{!703, !36, i64 0}
!703 = !{!"FMod_Generator", !36, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20}
!704 = !{!703, !40, i64 8}
!705 = !{!706, !36, i64 0}
!706 = !{!"FMod_Envelope", !36, i64 0, !40, i64 8, !80, i64 12, !80, i64 16, !80, i64 20}
!707 = !{!706, !40, i64 8}
!708 = !{!709, !36, i64 8}
!709 = !{!"FMod_Python", !36, i64 0, !36, i64 8}
!710 = distinct !{!710, !46}
!711 = !{!"writefile.c:write_nlastrips"}
!712 = distinct !{!712, !46}
!713 = !{!"writefile.c:write_keyingsets"}
!714 = distinct !{!714, !46}
!715 = !{!716, !36, i64 96}
!716 = !{!"KS_Path", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !40, i64 88, !39, i64 92, !39, i64 94, !36, i64 96, !40, i64 104, !39, i64 108, !39, i64 110}
!717 = distinct !{!717, !46}
!718 = !{!"writefile.c:write_sequence_modifiers"}
!719 = !{!720, !40, i64 16}
!720 = !{!"SequenceModifierData", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !37, i64 24, !40, i64 88, !40, i64 92, !36, i64 96, !36, i64 104}
!721 = distinct !{!721, !46}
!722 = !{!"writefile.c:write_nodetree"}
!723 = !{!124, !36, i64 24}
!724 = distinct !{!724, !46}
!725 = distinct !{!725, !46}
!726 = distinct !{!726, !46}
!727 = !{!124, !36, i64 248}
!728 = !{!114, !40, i64 256}
!729 = !{!730, !36, i64 1096}
!730 = !{!"NodeShaderScript", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 1032, !36, i64 1096}
!731 = !{!124, !36, i64 32}
!732 = !{!127, !36, i64 160}
!733 = distinct !{!733, !46}
!734 = distinct !{!734, !46}
!735 = distinct !{!735, !46}
!736 = distinct !{!736, !46}
!737 = distinct !{!737, !46}
!738 = distinct !{!738, !46}
!739 = !{!"writefile.c:write_view_settings"}
!740 = !{!138, !36, i64 144}
!741 = !{!"writefile.c:write_pointcaches"}
!742 = !{!743, !40, i64 16}
!743 = !{!"PointCache", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !39, i64 60, !39, i64 62, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !36, i64 1280, !42, i64 1288, !36, i64 1304, !36, i64 1312}
!744 = distinct !{!744, !46}
!745 = !{!746, !36, i64 160}
!746 = !{!"PTCacheMem", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !37, i64 32, !37, i64 96, !42, i64 160}
!747 = !{!746, !40, i64 24}
!748 = !{!746, !40, i64 20}
!749 = distinct !{!749, !46}
!750 = !{!751, !40, i64 16}
!751 = !{!"PTCacheExtra", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !36, i64 24}
!752 = !{!751, !40, i64 20}
!753 = !{!751, !36, i64 24}
!754 = !{!751, !36, i64 0}
!755 = distinct !{!755, !46}
!756 = distinct !{!756, !46}
!757 = !{!"writefile.c:write_node_socket"}
!758 = !{!127, !39, i64 266}
!759 = !{!124, !36, i64 240}
!760 = !{!127, !39, i64 174}
!761 = !{!127, !36, i64 288}
!762 = !{!127, !40, i64 280}
!763 = !{!127, !36, i64 24}
!764 = !{!127, !36, i64 256}
!765 = !{!"writefile.c:write_node_socket_interface"}
!766 = !{!127, !36, i64 176}
!767 = !{!"writefile.c:write_previews"}
!768 = !{!79, !40, i64 8}
!769 = !{!"writefile.c:write_dverts"}
!770 = !{!771, !36, i64 0}
!771 = !{!"MDeformVert", !36, i64 0, !40, i64 8, !40, i64 12}
!772 = !{!771, !40, i64 8}
!773 = distinct !{!773, !46}
!774 = !{!"writefile.c:write_bone"}
!775 = !{!776, !36, i64 16}
!776 = !{!"Bone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !42, i64 32, !37, i64 48, !80, i64 112, !37, i64 116, !37, i64 128, !37, i64 140, !40, i64 176, !37, i64 180, !37, i64 192, !37, i64 204, !80, i64 268, !80, i64 272, !80, i64 276, !80, i64 280, !80, i64 284, !80, i64 288, !80, i64 292, !80, i64 296, !80, i64 300, !80, i64 304, !37, i64 308, !40, i64 320, !39, i64 324, !37, i64 326}
!777 = distinct !{!777, !46}
!778 = !{!"writefile.c:write_properties"}
!779 = !{!780, !36, i64 88}
!780 = !{!"bProperty", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 80, !39, i64 82, !40, i64 84, !36, i64 88}
!781 = distinct !{!781, !46}
!782 = !{!"writefile.c:write_sensors"}
!783 = !{!784, !39, i64 26}
!784 = !{!"bSensor", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !37, i64 32, !36, i64 96, !36, i64 104, !36, i64 112, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126}
!785 = !{!784, !36, i64 104}
!786 = !{!784, !39, i64 16}
!787 = !{!784, !36, i64 96}
!788 = distinct !{!788, !46}
!789 = !{!"writefile.c:write_controllers"}
!790 = !{!791, !39, i64 30}
!791 = !{!"bController", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !39, i64 34, !39, i64 36, !39, i64 38, !37, i64 40, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !39, i64 130, !40, i64 132}
!792 = !{!791, !36, i64 112}
!793 = !{!791, !39, i64 24}
!794 = !{!791, !36, i64 104}
!795 = distinct !{!795, !46}
!796 = !{!"writefile.c:write_actuators"}
!797 = !{!798, !39, i64 24}
!798 = !{!"bActuator", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !37, i64 32, !36, i64 96, !36, i64 104}
!799 = !{!798, !36, i64 96}
!800 = distinct !{!800, !46}
!801 = !{!"writefile.c:write_pose"}
!802 = !{!803, !36, i64 16}
!803 = !{!"bPoseChannel", !36, i64 0, !36, i64 8, !36, i64 16, !42, i64 24, !37, i64 40, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !42, i64 144, !42, i64 160, !36, i64 176, !36, i64 184, !36, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !80, i64 264, !39, i64 268, !39, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !80, i64 524, !80, i64 528, !80, i64 532, !36, i64 536}
!804 = !{!803, !36, i64 176}
!805 = !{!803, !36, i64 120}
!806 = !{!776, !40, i64 176}
!807 = !{!803, !37, i64 113}
!808 = distinct !{!808, !46}
!809 = distinct !{!809, !46}
!810 = !{!811, !36, i64 96}
!811 = !{!"bPose", !42, i64 0, !36, i64 16, !39, i64 24, !39, i64 26, !40, i64 28, !40, i64 32, !80, i64 36, !37, i64 40, !37, i64 52, !42, i64 64, !40, i64 80, !40, i64 84, !36, i64 88, !36, i64 96, !449, i64 104, !37, i64 152}
!812 = !{!"writefile.c:write_defgroups"}
!813 = distinct !{!813, !46}
!814 = !{!"writefile.c:write_constraints"}
!815 = !{!816, !36, i64 16}
!816 = !{!"bConstraint", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !39, i64 26, !37, i64 28, !37, i64 29, !37, i64 30, !39, i64 94, !80, i64 96, !80, i64 100, !36, i64 104, !80, i64 112, !80, i64 116}
!817 = !{!816, !39, i64 24}
!818 = distinct !{!818, !46}
!819 = !{!820, !36, i64 8}
!820 = !{!"bPythonConstraint", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !42, i64 24, !36, i64 40, !37, i64 48}
!821 = !{!822, !39, i64 16}
!822 = !{!"bSplineIKConstraint", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22}
!823 = !{!822, !36, i64 8}
!824 = distinct !{!824, !46}
!825 = !{!"writefile.c:write_motionpath"}
!826 = !{!827, !40, i64 8}
!827 = !{!"bMotionPath", !36, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20}
!828 = !{!827, !36, i64 0}
!829 = !{!"writefile.c:write_particlesystems"}
!830 = !{!831, !36, i64 24}
!831 = !{!"ParticleSystem", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !42, i64 72, !42, i64 88, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !42, i64 152, !37, i64 168, !37, i64 232, !80, i64 296, !80, i64 300, !80, i64 304, !40, i64 308, !40, i64 312, !40, i64 316, !40, i64 320, !40, i64 324, !40, i64 328, !40, i64 332, !40, i64 336, !39, i64 340, !39, i64 342, !39, i64 344, !39, i64 346, !37, i64 348, !37, i64 540, !39, i64 564, !39, i64 566, !36, i64 568, !36, i64 576, !42, i64 584, !36, i64 600, !36, i64 608, !40, i64 616, !40, i64 620, !36, i64 624, !36, i64 632, !36, i64 640, !80, i64 648, !80, i64 652}
!832 = !{!831, !40, i64 320}
!833 = !{!834, !36, i64 112}
!834 = !{!"ParticleData", !835, i64 0, !835, i64 56, !36, i64 112, !36, i64 120, !36, i64 128, !40, i64 136, !80, i64 140, !80, i64 144, !80, i64 148, !40, i64 152, !40, i64 156, !37, i64 160, !80, i64 176, !80, i64 180, !80, i64 184, !40, i64 188, !40, i64 192, !39, i64 196, !39, i64 198}
!835 = !{!"ParticleKey", !37, i64 0, !37, i64 12, !37, i64 24, !37, i64 40, !80, i64 52}
!836 = !{!834, !40, i64 136}
!837 = distinct !{!837, !46}
!838 = !{!834, !36, i64 128}
!839 = !{!831, !36, i64 16}
!840 = !{!841, !40, i64 52}
!841 = !{!"SPHFluidSettings", !80, i64 0, !80, i64 4, !80, i64 8, !80, i64 12, !80, i64 16, !80, i64 20, !80, i64 24, !80, i64 28, !80, i64 32, !80, i64 36, !80, i64 40, !80, i64 44, !80, i64 48, !40, i64 52, !40, i64 56, !39, i64 60, !37, i64 62}
!842 = !{!831, !40, i64 616}
!843 = !{!831, !36, i64 608}
!844 = distinct !{!844, !46}
!845 = !{!831, !36, i64 32}
!846 = !{!831, !40, i64 328}
!847 = !{!831, !36, i64 104}
!848 = !{!849, !36, i64 128}
!849 = !{!"ClothModifierData", !850, i64 0, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !42, i64 152}
!850 = !{!"ModifierData", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !37, i64 32, !36, i64 96, !36, i64 104}
!851 = !{!849, !36, i64 136}
!852 = distinct !{!852, !46}
!853 = !{!"writefile.c:write_modifiers"}
!854 = !{!850, !40, i64 16}
!855 = !{!856, !40, i64 272}
!856 = !{!"HookModifierData", !850, i64 0, !36, i64 112, !37, i64 120, !37, i64 184, !37, i64 248, !80, i64 260, !36, i64 264, !40, i64 272, !80, i64 276, !37, i64 280}
!857 = !{!856, !36, i64 264}
!858 = !{!859, !36, i64 160}
!859 = !{!"ClothSimSettings", !36, i64 0, !80, i64 8, !80, i64 12, !80, i64 16, !37, i64 20, !80, i64 32, !80, i64 36, !80, i64 40, !80, i64 44, !80, i64 48, !80, i64 52, !80, i64 56, !80, i64 60, !80, i64 64, !80, i64 68, !80, i64 72, !80, i64 76, !80, i64 80, !80, i64 84, !80, i64 88, !80, i64 92, !80, i64 96, !80, i64 100, !80, i64 104, !80, i64 108, !80, i64 112, !80, i64 116, !80, i64 120, !40, i64 124, !40, i64 128, !40, i64 132, !40, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !37, i64 156, !36, i64 160}
!860 = !{!861, !40, i64 140}
!861 = !{!"SmokeModifierData", !850, i64 0, !36, i64 112, !36, i64 120, !36, i64 128, !80, i64 136, !40, i64 140}
!862 = !{!861, !36, i64 112}
!863 = !{!743, !40, i64 20}
!864 = !{!865, !36, i64 512}
!865 = !{!"SmokeDomainSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !37, i64 96, !37, i64 108, !37, i64 120, !37, i64 132, !37, i64 144, !37, i64 156, !37, i64 168, !37, i64 180, !37, i64 192, !37, i64 204, !37, i64 268, !37, i64 332, !37, i64 344, !37, i64 356, !37, i64 368, !40, i64 380, !80, i64 384, !80, i64 388, !40, i64 392, !40, i64 396, !80, i64 400, !80, i64 404, !80, i64 408, !40, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !39, i64 428, !39, i64 430, !40, i64 432, !80, i64 436, !37, i64 440, !80, i64 452, !40, i64 456, !40, i64 460, !37, i64 464, !37, i64 480, !36, i64 512, !40, i64 520, !80, i64 524, !80, i64 528, !40, i64 532, !37, i64 536, !40, i64 548, !80, i64 552, !80, i64 556, !80, i64 560, !80, i64 564, !80, i64 568, !37, i64 572}
!866 = !{!861, !36, i64 120}
!867 = !{!861, !36, i64 128}
!868 = !{!869, !36, i64 112}
!869 = !{!"FluidsimModifierData", !850, i64 0, !36, i64 112, !36, i64 120}
!870 = !{!871, !36, i64 112}
!871 = !{!"DynamicPaintModifierData", !850, i64 0, !36, i64 112, !36, i64 120, !40, i64 128, !40, i64 132}
!872 = distinct !{!872, !46}
!873 = !{!874, !36, i64 40}
!874 = !{!"DynamicPaintSurface", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !42, i64 56, !40, i64 72, !37, i64 76, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !36, i64 200, !37, i64 208, !40, i64 272, !40, i64 276, !80, i64 280, !80, i64 284, !80, i64 288, !80, i64 292, !80, i64 296, !80, i64 300, !80, i64 304, !80, i64 308, !80, i64 312, !80, i64 316, !80, i64 320, !80, i64 324, !80, i64 328, !80, i64 332, !80, i64 336, !40, i64 340, !37, i64 344, !37, i64 408, !37, i64 1432, !37, i64 1496}
!875 = distinct !{!875, !46}
!876 = !{!871, !36, i64 120}
!877 = !{!878, !36, i64 72}
!878 = !{!"DynamicPaintBrushSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !40, i64 32, !40, i64 36, !80, i64 40, !80, i64 44, !80, i64 48, !80, i64 52, !80, i64 56, !80, i64 60, !80, i64 64, !80, i64 68, !36, i64 72, !36, i64 80, !39, i64 88, !39, i64 90, !39, i64 92, !39, i64 94, !80, i64 96, !80, i64 100, !80, i64 104, !80, i64 108}
!879 = !{!878, !36, i64 80}
!880 = !{!881, !40, i64 248}
!881 = !{!"MeshDeformModifierData", !850, i64 0, !36, i64 112, !37, i64 120, !39, i64 184, !39, i64 186, !37, i64 188, !36, i64 192, !36, i64 200, !36, i64 208, !40, i64 216, !40, i64 220, !36, i64 224, !36, i64 232, !36, i64 240, !40, i64 248, !40, i64 252, !37, i64 256, !80, i64 268, !37, i64 272, !36, i64 336, !36, i64 344, !36, i64 352}
!882 = !{!881, !40, i64 252}
!883 = !{!881, !36, i64 192}
!884 = !{!881, !40, i64 216}
!885 = !{!881, !36, i64 200}
!886 = !{!881, !40, i64 220}
!887 = !{!881, !36, i64 208}
!888 = !{!881, !36, i64 224}
!889 = !{!881, !36, i64 232}
!890 = !{!881, !36, i64 240}
!891 = !{!892, !36, i64 216}
!892 = !{!"WarpModifierData", !850, i64 0, !36, i64 112, !36, i64 120, !37, i64 128, !40, i64 192, !40, i64 196, !36, i64 200, !36, i64 208, !36, i64 216, !37, i64 224, !80, i64 288, !80, i64 292, !37, i64 296, !37, i64 297, !37, i64 298}
!893 = !{!894, !36, i64 184}
!894 = !{!"WeightVGEditModifierData", !850, i64 0, !37, i64 112, !39, i64 176, !39, i64 178, !80, i64 180, !36, i64 184, !80, i64 192, !80, i64 196, !80, i64 200, !37, i64 204, !40, i64 268, !36, i64 272, !36, i64 280, !40, i64 288, !37, i64 292, !40, i64 356}
!895 = !{!896, !40, i64 176}
!896 = !{!"LaplacianDeformModifierData", !850, i64 0, !37, i64 112, !40, i64 176, !40, i64 180, !36, i64 184, !36, i64 192, !39, i64 200, !37, i64 202}
!897 = !{!896, !36, i64 184}
!898 = distinct !{!898, !46}
!899 = !{!"writefile.c:write_customdata"}
!900 = !{!70, !70, i64 0}
!901 = !{!503, !36, i64 192}
!902 = !{!503, !40, i64 172}
!903 = !{!503, !36, i64 0}
!904 = !{!905, !40, i64 8}
!905 = !{!"CustomDataLayer", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !37, i64 32, !36, i64 96}
!906 = distinct !{!906, !46}
!907 = !{!503, !40, i64 176}
!908 = distinct !{!908, !46}
!909 = !{!905, !40, i64 0}
!910 = !{!905, !36, i64 96}
!911 = distinct !{!911, !46}
!912 = !{!"writefile.c:write_mdisps"}
!913 = !{!914, !36, i64 8}
!914 = !{!"MDisps", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 16}
!915 = !{!914, !40, i64 0}
!916 = !{!914, !36, i64 16}
!917 = distinct !{!917, !46}
!918 = !{!"writefile.c:write_grid_paint_mask"}
!919 = !{!920, !36, i64 0}
!920 = !{!"GridPaintMask", !36, i64 0, !40, i64 8, !40, i64 12}
!921 = !{!920, !40, i64 8}
!922 = distinct !{!922, !46}
!923 = !{!"writefile.c:write_boid_state"}
!924 = !{!544, !36, i64 16}
!925 = !{!926, !40, i64 16}
!926 = !{!"BoidRule", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !37, i64 24}
!927 = !{!926, !36, i64 0}
!928 = distinct !{!928, !46}
!929 = !{!"writefile.c:write_linestyle_color_modifiers"}
!930 = !{!931, !40, i64 80}
!931 = !{!"LineStyleModifier", !36, i64 0, !36, i64 8, !37, i64 16, !40, i64 80, !80, i64 84, !40, i64 88, !40, i64 92}
!932 = distinct !{!932, !46}
!933 = distinct !{!933, !46}
!934 = !{!"writefile.c:write_linestyle_alpha_modifiers"}
!935 = distinct !{!935, !46}
!936 = distinct !{!936, !46}
!937 = !{!"writefile.c:write_linestyle_thickness_modifiers"}
!938 = distinct !{!938, !46}
!939 = distinct !{!939, !46}
!940 = !{!"writefile.c:write_linestyle_geometry_modifiers"}
!941 = distinct !{!941, !46}
!942 = !{!"writefile.c:write_keymapitem"}
!943 = !{!944, !36, i64 80}
!944 = !{!"wmKeyMapItem", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !37, i64 88, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !39, i64 164, !39, i64 166, !39, i64 168, !39, i64 170, !39, i64 172, !39, i64 174, !36, i64 176}
!945 = !{!"writefile.c:writedata_free"}
