; ModuleID = 'blender/source/blender/editors/transform/transform_generics.c'
source_filename = "blender/source/blender/editors/transform/transform_generics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.StructRNA = type opaque
%struct.TransInfo = type { i32, i32, i32, i16, i32, float, float, ptr, ptr, i32, ptr, ptr, ptr, %struct.TransCon, %struct.TransSnap, %struct.NumInput, %struct.MouseInput, i32, float, [20 x i8], [3 x float], [2 x float], [2 x i32], i16, i16, [3 x float], i8, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i16, i16, i8, i8, [3 x float], [3 x [3 x float]], [3 x [3 x float]], [64 x i8], ptr, ptr, ptr, i16, i16, i16, i16, i16, [4 x float], [4 x float], [3 x float], [3 x float], i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32], float, ptr, [3 x [3 x float]], ptr, ptr, ptr, ptr }
%struct.TransCon = type { i16, [50 x i8], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], [3 x float], [2 x i32], i32, ptr, ptr, ptr, ptr }
%struct.TransSnap = type { i16, i16, i16, i16, i8, i8, i8, i8, i16, [3 x float], [3 x float], [3 x float], [3 x float], i8, %struct.ListBase, ptr, float, double, ptr, ptr, ptr, ptr }
%struct.NumInput = type { i16, i32, [3 x i32], i8, i16, [3 x i16], [3 x float], [3 x float], [3 x float], i16, [64 x i8], i32 }
%struct.MouseInput = type { ptr, ptr, [2 x i32], i8, [2 x i32], [2 x float], float, ptr }
%struct.bAnimContext = type { ptr, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.SpaceImage = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.ImageUser, ptr, %struct.Scopes, %struct.Histogram, ptr, [2 x float], float, float, float, float, float, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.MaskSpaceInfo }
%struct.ImageUser = type { ptr, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i16, i32 }
%struct.Scopes = type { i32, i32, i32, float, i32, float, float, i32, float, i32, [3 x [2 x float]], %struct.Histogram, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Histogram = type { i32, i32, [256 x float], [256 x float], [256 x float], [256 x float], [256 x float], float, float, i16, i16, i32, [2 x [2 x float]] }
%struct.MaskSpaceInfo = type { ptr, i8, i8, i8, [5 x i8] }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
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
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.SpaceAction = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.bDopeSheet, i8, i8, i16, float }
%struct.bDopeSheet = type { ptr, %struct.ListBase, ptr, [64 x i8], i32, i32, i32, i32 }
%struct.SpaceNla = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], i16, i16, i32, ptr, %struct.View2D }
%struct.TransDataNla = type { ptr, ptr, ptr, ptr, [3 x float], [3 x float], i32, i32 }
%struct.NlaStrip = type { ptr, ptr, %struct.ListBase, ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i16, ptr, i32, i32 }
%struct.NlaTrack = type { ptr, ptr, %struct.ListBase, i32, i32, [64 x i8] }
%struct.TransData = type { float, float, float, ptr, [3 x float], ptr, float, [3 x float], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], ptr, ptr, ptr, ptr, ptr, i32, i16 }
%struct.SpaceIpo = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.ListBase, i16, i16, i32, float, i32 }
%struct.bAnimListElem = type { ptr, ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.SpaceClip = type { ptr, ptr, %struct.ListBase, i32, float, float, float, float, float, %struct.MovieClipUser, ptr, %struct.MovieClipScopes, i32, i16, i16, i32, [2 x float], float, float, i32, [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i32, i32, [2 x float], %struct.MaskSpaceInfo }
%struct.MovieClipUser = type { i32, i16, i16 }
%struct.MovieClipScopes = type { i16, i16, i32, i32, i32, %struct.MovieTrackingMarker, ptr, ptr, [2 x float], i16, i16, i32, ptr, ptr, [2 x float] }
%struct.MovieTrackingMarker = type { [2 x float], [4 x [2 x float]], [2 x float], [2 x float], i32, i32 }
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }
%struct.Lattice = type { %struct.ID, ptr, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i32, float, float, float, float, float, float, ptr, ptr, ptr, ptr, [64 x i8], ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.EditBone = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], float, [3 x float], [3 x float], i32, i32, float, float, float, float, float, float, float, float, float, float, i16 }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }
%struct.Brush = type { %struct.ID, %struct.BrushClone, ptr, %struct.MTex, %struct.MTex, ptr, ptr, ptr, ptr, ptr, [1024 x i8], float, i16, i16, float, i32, i32, i32, float, i32, i32, i32, i32, float, float, [3 x float], float, [3 x float], i32, float, float, i32, i32, i32, i8, i8, i8, i8, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, float, [3 x float], [3 x float], [2 x float], [2 x float], [2 x float], [2 x float] }
%struct.BrushClone = type { ptr, [2 x float], float, float }
%struct.MTex = type { i16, i16, i16, i16, ptr, ptr, [64 x i8], i8, i8, i8, i8, [3 x float], [3 x float], float, i16, i16, i16, i16, i16, i16, i8, [7 x i8], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.TransDataExtension = type { [3 x float], [4 x float], [3 x float], ptr, [3 x float], ptr, [4 x float], ptr, float, ptr, [4 x float], ptr, [3 x float], [4 x [4 x float]], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x float], [3 x float], float }
%struct.TransData2D = type { [3 x float], ptr, ptr, ptr, [2 x float], [2 x float] }
%struct.TransDataCurveHandleFlags = type { i8, i8, ptr, ptr }
%struct.BMEditSelection = type { ptr, ptr, ptr, i8 }
%struct.MetaBall = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, i16, i16, [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.MetaElem = type { ptr, ptr, ptr, i16, i16, i16, i16, float, float, float, [4 x float], float, float, float, float, float, float, float, ptr, ptr }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.PaintCurve = type { %struct.ID, ptr, i32, i32 }
%struct.PaintCurvePoint = type { %struct.BezTriple, float }
%struct.ModifierData = type { ptr, ptr, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.MirrorModifierData = type { %struct.ModifierData, i16, i16, float, ptr }
%struct.wmTimer = type { ptr, ptr, ptr, double, i32, ptr, double, double, double, double, double, i32 }
%struct.ScreenAnimData = type { ptr, i16, i16, i16, i32, i32, double }
%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }

@.str = private unnamed_addr constant [17 x i8] c"remove_on_cancel\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"constraint_orientation\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"correct_uv\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"release_confirm\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"mirror\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"proportional\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"proportional_size\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"Proportional size (%f) under 0.00001, resetting to 1!\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"proportional_edit_falloff\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [9 x i8] c"(Smooth)\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"(Root)\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"(Linear)\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"(Constant)\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"(Sphere)\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"(Random)\00", align 1
@RNA_NlaStrip = external global %struct.StructRNA, align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"frame_start\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"frame_end\00", align 1
@switch.table.initTransInfo.18 = private unnamed_addr constant [3 x i32] [i32 2048, i32 6144, i32 33556480], align 4

; Function Attrs: nounwind uwtable
define dso_local void @getViewVector(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca [4 x float], align 16
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 31
  %6 = load i16, ptr %5, align 4, !tbaa !34
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %33, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %9 = load float, ptr %1, align 4, !tbaa !48
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !48
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !48
  store float %9, ptr %4, align 16, !tbaa !48
  %14 = getelementptr inbounds float, ptr %4, i64 1
  store float %11, ptr %14, align 4, !tbaa !48
  %15 = getelementptr inbounds float, ptr %4, i64 2
  store float %13, ptr %15, align 8, !tbaa !48
  %16 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  store float 1.000000e+00, ptr %16, align 4, !tbaa !48
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 27
  call void @mul_m4_v4(ptr noundef nonnull %17, ptr noundef nonnull %4) #11
  %18 = load float, ptr %4, align 16, !tbaa !48
  %19 = fmul float %18, 2.000000e+00
  store float %19, ptr %4, align 16, !tbaa !48
  %20 = load float, ptr %14, align 4, !tbaa !48
  %21 = fmul float %20, 2.000000e+00
  store float %21, ptr %14, align 4, !tbaa !48
  %22 = load float, ptr %15, align 8, !tbaa !48
  %23 = fmul float %22, 2.000000e+00
  store float %23, ptr %15, align 8, !tbaa !48
  %24 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28
  call void @mul_m4_v4(ptr noundef nonnull %24, ptr noundef nonnull %4) #11
  %25 = load float, ptr %4, align 16, !tbaa !48
  %26 = fsub float %9, %25
  store float %26, ptr %2, align 4, !tbaa !48
  %27 = load float, ptr %14, align 4, !tbaa !48
  %28 = fsub float %11, %27
  %29 = getelementptr inbounds float, ptr %2, i64 1
  store float %28, ptr %29, align 4, !tbaa !48
  %30 = load float, ptr %15, align 8, !tbaa !48
  %31 = fsub float %13, %30
  %32 = getelementptr inbounds float, ptr %2, i64 2
  store float %31, ptr %32, align 4, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %42

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !48
  store float %35, ptr %2, align 4, !tbaa !48
  %36 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 2, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !48
  %38 = getelementptr inbounds float, ptr %2, i64 1
  store float %37, ptr %38, align 4, !tbaa !48
  %39 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 2, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !48
  %41 = getelementptr inbounds float, ptr %2, i64 2
  store float %40, ptr %41, align 4, !tbaa !48
  br label %42

42:                                               ; preds = %33, %8
  %43 = load float, ptr %2, align 4, !tbaa !48
  %44 = getelementptr inbounds float, ptr %2, i64 1
  %45 = load float, ptr %44, align 4, !tbaa !48
  %46 = fmul float %45, %45
  %47 = call float @llvm.fmuladd.f32(float %43, float %43, float %46)
  %48 = getelementptr inbounds float, ptr %2, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !48
  %50 = call float @llvm.fmuladd.f32(float %49, float %49, float %47)
  %51 = fcmp ogt float %50, 0x38AA95A5C0000000
  br i1 %51, label %52, label %61

52:                                               ; preds = %42
  %53 = call float @sqrtf(float noundef %50) #11
  %54 = fdiv float 1.000000e+00, %53
  %55 = load float, ptr %2, align 4, !tbaa !48
  %56 = fmul float %55, %54
  store float %56, ptr %2, align 4, !tbaa !48
  %57 = load float, ptr %44, align 4, !tbaa !48
  %58 = fmul float %54, %57
  store float %58, ptr %44, align 4, !tbaa !48
  %59 = load float, ptr %48, align 4, !tbaa !48
  %60 = fmul float %54, %59
  br label %62

61:                                               ; preds = %42
  store float 0.000000e+00, ptr %2, align 4, !tbaa !48
  store float 0.000000e+00, ptr %44, align 4, !tbaa !48
  br label %62

62:                                               ; preds = %52, %61
  %63 = phi float [ 0.000000e+00, %61 ], [ %60, %52 ]
  store float %63, ptr %48, align 4, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @mul_m4_v4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @recalcData(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ListBase, align 8
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca %struct.bAnimContext, align 8
  %6 = alloca %struct.ListBase, align 8
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !49
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call fastcc void @recalcData_objects(ptr noundef %0)
  br label %614

12:                                               ; preds = %1
  %13 = and i32 %8, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call fastcc void @recalcData_objects(ptr noundef %0)
  br label %614

16:                                               ; preds = %12
  %17 = and i32 %8, 256
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @flushTransPaintCurve(ptr noundef %0) #11
  br label %614

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %22 = load i8, ptr %21, align 8, !tbaa !50
  switch i8 %22, label %613 [
    i8 6, label %23
    i8 12, label %52
    i8 13, label %112
    i8 8, label %394
    i8 2, label %418
    i8 16, label %520
    i8 20, label %521
  ]

23:                                               ; preds = %20
  %24 = and i32 %8, 128
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 53
  %28 = load ptr, ptr %27, align 8, !tbaa !51
  %29 = tail call ptr @CTX_data_edit_mask(ptr noundef %28) #11
  tail call void @flushTransMasking(ptr noundef %0) #11
  tail call void @DAG_id_tag_update(ptr noundef %29, i16 noundef signext 0) #11
  br label %614

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %32 = load ptr, ptr %31, align 8, !tbaa !52
  %33 = icmp eq ptr %32, null
  br i1 %33, label %614, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.Object, ptr %32, i64 0, i32 3
  %36 = load i16, ptr %35, align 8, !tbaa !53
  %37 = icmp eq i16 %36, 1
  br i1 %37, label %38, label %614

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %40 = load ptr, ptr %39, align 8, !tbaa !58
  %41 = getelementptr inbounds %struct.ScrArea, ptr %40, i64 0, i32 19
  %42 = load ptr, ptr %41, align 8, !tbaa !59
  tail call void @flushTransUVs(ptr noundef %0) #11
  %43 = getelementptr inbounds %struct.SpaceImage, ptr %42, i64 0, i32 4
  %44 = load i32, ptr %43, align 4, !tbaa !62
  %45 = and i32 %44, 2048
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  tail call void @ED_uvedit_live_unwrap_re_solve() #11
  br label %48

48:                                               ; preds = %47, %38
  %49 = load ptr, ptr %31, align 8, !tbaa !52
  %50 = getelementptr inbounds %struct.Object, ptr %49, i64 0, i32 19
  %51 = load ptr, ptr %50, align 8, !tbaa !68
  tail call void @DAG_id_tag_update(ptr noundef %51, i16 noundef signext 0) #11
  br label %614

52:                                               ; preds = %20
  %53 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %54 = load ptr, ptr %53, align 8, !tbaa !69
  %55 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %56 = load ptr, ptr %55, align 8, !tbaa !58
  %57 = getelementptr inbounds %struct.ScrArea, ptr %56, i64 0, i32 19
  %58 = load ptr, ptr %57, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %59 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 9
  store ptr %54, ptr %59, align 8, !tbaa !70
  %60 = getelementptr inbounds %struct.Scene, ptr %54, i64 0, i32 6
  %61 = load ptr, ptr %60, align 8, !tbaa !72
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %52
  %64 = getelementptr inbounds %struct.Base, ptr %61, i64 0, i32 7
  %65 = load ptr, ptr %64, align 8, !tbaa !90
  br label %66

66:                                               ; preds = %63, %52
  %67 = phi ptr [ %65, %63 ], [ null, %52 ]
  %68 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 10
  store ptr %67, ptr %68, align 8, !tbaa !92
  %69 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 5
  store ptr %56, ptr %69, align 8, !tbaa !93
  %70 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %71 = load ptr, ptr %70, align 8, !tbaa !94
  %72 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 7
  store ptr %71, ptr %72, align 8, !tbaa !95
  %73 = icmp eq ptr %56, null
  %74 = select i1 %73, ptr null, ptr %58
  %75 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 6
  store ptr %74, ptr %75, align 8, !tbaa !96
  br i1 %73, label %80, label %76

76:                                               ; preds = %66
  %77 = getelementptr inbounds %struct.ScrArea, ptr %56, i64 0, i32 8
  %78 = load i8, ptr %77, align 8, !tbaa !97
  %79 = zext i8 %78 to i16
  br label %80

80:                                               ; preds = %76, %66
  %81 = phi i16 [ %79, %76 ], [ 0, %66 ]
  %82 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 3
  store i16 %81, ptr %82, align 4, !tbaa !98
  %83 = icmp eq ptr %71, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.ARegion, ptr %71, i64 0, i32 8
  %86 = load i16, ptr %85, align 2, !tbaa !99
  br label %87

87:                                               ; preds = %84, %80
  %88 = phi i16 [ %86, %84 ], [ 0, %80 ]
  %89 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 4
  store i16 %88, ptr %89, align 2, !tbaa !102
  %90 = call zeroext i8 @ANIM_animdata_context_getdata(ptr noundef nonnull %5) #11
  %91 = getelementptr inbounds %struct.bAnimContext, ptr %5, i64 0, i32 1
  %92 = load i16, ptr %91, align 8
  switch i16 %92, label %94 [
    i16 9, label %93
    i16 3, label %93
  ]

93:                                               ; preds = %87, %87
  call void @flushTransIntFrameActionData(ptr noundef %0) #11
  br label %111

94:                                               ; preds = %87
  %95 = sext i16 %92 to i32
  %96 = load ptr, ptr %5, align 8, !tbaa !103
  %97 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 1025, ptr noundef %96, i32 noundef %95) #11
  %98 = getelementptr inbounds %struct.SpaceAction, ptr %58, i64 0, i32 11
  %99 = load i16, ptr %98, align 2, !tbaa !104
  %100 = and i16 %99, 1024
  %101 = icmp ne i16 %100, 0
  %102 = load ptr, ptr %6, align 8
  %103 = icmp eq ptr %102, null
  %104 = select i1 %101, i1 true, i1 %103
  br i1 %104, label %110, label %105

105:                                              ; preds = %94, %105
  %106 = phi ptr [ %108, %105 ], [ %102, %94 ]
  %107 = load ptr, ptr %53, align 8, !tbaa !69
  call void @ANIM_list_elem_update(ptr noundef %107, ptr noundef nonnull %106) #11
  %108 = load ptr, ptr %106, align 8, !tbaa !107
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %105, !llvm.loop !108

110:                                              ; preds = %105, %94
  call void @ANIM_animdata_freelist(ptr noundef nonnull %6) #11
  br label %111

111:                                              ; preds = %93, %110
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #11
  br label %614

112:                                              ; preds = %20
  %113 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %114 = load ptr, ptr %113, align 8, !tbaa !69
  %115 = getelementptr inbounds %struct.Scene, ptr %114, i64 0, i32 22, i32 55
  %116 = load i16, ptr %115, align 4, !tbaa !111
  %117 = sitofp i16 %116 to double
  %118 = getelementptr inbounds %struct.Scene, ptr %114, i64 0, i32 22, i32 65
  %119 = load float, ptr %118, align 4, !tbaa !112
  %120 = fpext float %119 to double
  %121 = fdiv double %117, %120
  %122 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %123 = load i32, ptr %122, align 8, !tbaa !113
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %614

125:                                              ; preds = %112
  %126 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %127 = load ptr, ptr %126, align 8, !tbaa !58
  %128 = getelementptr inbounds %struct.ScrArea, ptr %127, i64 0, i32 19
  %129 = load ptr, ptr %128, align 8, !tbaa !59
  %130 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 40
  %131 = load ptr, ptr %130, align 8, !tbaa !114
  %132 = getelementptr inbounds %struct.SpaceNla, ptr %129, i64 0, i32 7
  %133 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  %134 = getelementptr inbounds %struct.SpaceNla, ptr %129, i64 0, i32 6
  %135 = icmp eq ptr %129, null
  br label %136

136:                                              ; preds = %389, %125
  %137 = phi ptr [ %131, %125 ], [ %391, %389 ]
  %138 = phi i32 [ 0, %125 ], [ %390, %389 ]
  %139 = getelementptr inbounds %struct.TransDataNla, ptr %137, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %141 = getelementptr inbounds %struct.TransDataNla, ptr %137, i64 0, i32 7
  %142 = load i32, ptr %141, align 4, !tbaa !117
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %389, label %144

144:                                              ; preds = %136
  %145 = load i16, ptr %132, align 2, !tbaa !118
  %146 = and i16 %145, 64
  %147 = icmp eq i16 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = load ptr, ptr %113, align 8, !tbaa !69
  %150 = load ptr, ptr %137, align 8, !tbaa !120
  call void @ANIM_id_update(ptr noundef %149, ptr noundef %150) #11
  br label %151

151:                                              ; preds = %148, %144
  %152 = load i16, ptr %133, align 4, !tbaa !121
  %153 = icmp eq i16 %152, 3
  br i1 %153, label %169, label %154

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.NlaStrip, ptr %140, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !122
  %157 = icmp eq ptr %156, null
  %158 = getelementptr inbounds %struct.NlaStrip, ptr %156, i64 0, i32 21
  %159 = getelementptr inbounds %struct.TransDataNla, ptr %137, i64 0, i32 4
  %160 = getelementptr inbounds %struct.NlaStrip, ptr %156, i64 0, i32 11
  %161 = load ptr, ptr %140, align 8, !tbaa !124
  %162 = icmp eq ptr %161, null
  %163 = getelementptr inbounds %struct.NlaStrip, ptr %161, i64 0, i32 21
  %164 = getelementptr inbounds %struct.TransDataNla, ptr %137, i64 0, i32 5
  %165 = getelementptr inbounds %struct.NlaStrip, ptr %161, i64 0, i32 10
  %166 = or i1 %157, %162
  %167 = getelementptr inbounds %struct.NlaStrip, ptr %140, i64 0, i32 10
  %168 = getelementptr inbounds %struct.NlaStrip, ptr %140, i64 0, i32 11
  br label %206

169:                                              ; preds = %151
  %170 = getelementptr inbounds %struct.TransDataNla, ptr %137, i64 0, i32 4
  %171 = load float, ptr %170, align 8, !tbaa !48
  %172 = getelementptr inbounds %struct.NlaStrip, ptr %140, i64 0, i32 10
  store float %171, ptr %172, align 8, !tbaa !125
  %173 = getelementptr inbounds %struct.NlaStrip, ptr %140, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !122
  %175 = icmp eq ptr %174, null
  br i1 %175, label %183, label %176

176:                                              ; preds = %169
  %177 = getelementptr inbounds %struct.NlaStrip, ptr %174, i64 0, i32 21
  %178 = load i16, ptr %177, align 2, !tbaa !126
  %179 = icmp eq i16 %178, 1
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = load float, ptr %170, align 8, !tbaa !48
  %182 = getelementptr inbounds %struct.NlaStrip, ptr %174, i64 0, i32 11
  store float %181, ptr %182, align 4, !tbaa !127
  br label %183

183:                                              ; preds = %180, %176, %169
  %184 = getelementptr inbounds %struct.TransDataNla, ptr %137, i64 0, i32 5
  %185 = load float, ptr %184, align 4, !tbaa !48
  %186 = getelementptr inbounds %struct.NlaStrip, ptr %140, i64 0, i32 11
  store float %185, ptr %186, align 4, !tbaa !127
  %187 = load ptr, ptr %140, align 8, !tbaa !124
  %188 = icmp eq ptr %187, null
  br i1 %188, label %196, label %189

189:                                              ; preds = %183
  %190 = getelementptr inbounds %struct.NlaStrip, ptr %187, i64 0, i32 21
  %191 = load i16, ptr %190, align 2, !tbaa !126
  %192 = icmp eq i16 %191, 1
  br i1 %192, label %193, label %196

193:                                              ; preds = %189
  %194 = load float, ptr %184, align 4, !tbaa !48
  %195 = getelementptr inbounds %struct.NlaStrip, ptr %187, i64 0, i32 10
  store float %194, ptr %195, align 8, !tbaa !125
  br label %196

196:                                              ; preds = %193, %189, %183
  call void @BKE_nlameta_flush_transforms(ptr noundef nonnull %140) #11
  %197 = getelementptr inbounds %struct.TransDataNla, ptr %137, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !128
  %199 = getelementptr inbounds %struct.TransDataNla, ptr %137, i64 0, i32 2
  %200 = load ptr, ptr %199, align 8, !tbaa !129
  %201 = icmp eq ptr %198, %200
  br i1 %201, label %389, label %202

202:                                              ; preds = %196
  %203 = getelementptr inbounds %struct.NlaTrack, ptr %200, i64 0, i32 2
  call void @BLI_remlink(ptr noundef nonnull %203, ptr noundef nonnull %140) #11
  %204 = load ptr, ptr %197, align 8, !tbaa !128
  %205 = getelementptr inbounds %struct.NlaTrack, ptr %204, i64 0, i32 2
  call void @BLI_addtail(ptr noundef nonnull %205, ptr noundef nonnull %140) #11
  br label %389

206:                                              ; preds = %252, %154
  %207 = phi i16 [ 0, %154 ], [ %254, %252 ]
  br i1 %157, label %215, label %208

208:                                              ; preds = %206
  %209 = load i16, ptr %158, align 2, !tbaa !126
  %210 = icmp eq i16 %209, 1
  br i1 %210, label %215, label %211

211:                                              ; preds = %208
  %212 = load float, ptr %159, align 8, !tbaa !48
  %213 = load float, ptr %160, align 4, !tbaa !127
  %214 = fcmp olt float %212, %213
  br label %215

215:                                              ; preds = %211, %208, %206
  %216 = phi i1 [ false, %208 ], [ false, %206 ], [ %214, %211 ]
  br i1 %162, label %224, label %217

217:                                              ; preds = %215
  %218 = load i16, ptr %163, align 2, !tbaa !126
  %219 = icmp eq i16 %218, 1
  br i1 %219, label %224, label %220

220:                                              ; preds = %217
  %221 = load float, ptr %164, align 4, !tbaa !48
  %222 = load float, ptr %165, align 8, !tbaa !125
  %223 = fcmp ogt float %221, %222
  br label %224

224:                                              ; preds = %220, %217, %215
  %225 = phi i1 [ false, %217 ], [ false, %215 ], [ %223, %220 ]
  %226 = select i1 %216, i1 %225, i1 false
  %227 = icmp eq i16 %207, 4
  %228 = or i1 %227, %226
  br i1 %228, label %229, label %236

229:                                              ; preds = %224
  br i1 %166, label %233, label %230

230:                                              ; preds = %229
  %231 = load float, ptr %160, align 4, !tbaa !127
  store float %231, ptr %159, align 8, !tbaa !48
  %232 = load float, ptr %165, align 8, !tbaa !125
  br label %252

233:                                              ; preds = %229
  %234 = load float, ptr %167, align 8, !tbaa !125
  store float %234, ptr %159, align 8, !tbaa !48
  %235 = load float, ptr %168, align 4, !tbaa !127
  br label %252

236:                                              ; preds = %224
  br i1 %225, label %237, label %244

237:                                              ; preds = %236
  %238 = load float, ptr %164, align 4, !tbaa !48
  %239 = load float, ptr %165, align 8, !tbaa !125
  %240 = fsub float %238, %239
  %241 = load float, ptr %159, align 8, !tbaa !48
  %242 = fsub float %241, %240
  store float %242, ptr %159, align 8, !tbaa !48
  %243 = fsub float %238, %240
  br label %252

244:                                              ; preds = %236
  br i1 %216, label %245, label %256

245:                                              ; preds = %244
  %246 = load float, ptr %160, align 4, !tbaa !127
  %247 = load float, ptr %159, align 8, !tbaa !48
  %248 = fsub float %246, %247
  %249 = fadd float %247, %248
  store float %249, ptr %159, align 8, !tbaa !48
  %250 = load float, ptr %164, align 4, !tbaa !48
  %251 = fadd float %248, %250
  br label %252

252:                                              ; preds = %245, %237, %233, %230
  %253 = phi float [ %251, %245 ], [ %243, %237 ], [ %235, %233 ], [ %232, %230 ]
  store float %253, ptr %164, align 4, !tbaa !48
  %254 = add nuw nsw i16 %207, 1
  %255 = icmp eq i16 %254, 5
  br i1 %255, label %256, label %206, !llvm.loop !130

256:                                              ; preds = %244, %252
  %257 = load i16, ptr %134, align 8, !tbaa !131
  switch i16 %257, label %289 [
    i16 2, label %258
    i16 1, label %258
    i16 4, label %265
    i16 5, label %265
    i16 3, label %276
  ]

258:                                              ; preds = %256, %256
  %259 = load float, ptr %159, align 8, !tbaa !48
  %260 = fadd float %259, 5.000000e-01
  %261 = call float @llvm.floor.f32(float %260)
  store float %261, ptr %159, align 8, !tbaa !48
  %262 = load float, ptr %164, align 4, !tbaa !48
  %263 = fadd float %262, 5.000000e-01
  %264 = call float @llvm.floor.f32(float %263)
  br label %287

265:                                              ; preds = %256, %256
  %266 = load float, ptr %159, align 8, !tbaa !48
  %267 = fpext float %266 to double
  %268 = fdiv double %267, %121
  %269 = fadd double %268, 5.000000e-01
  %270 = call double @llvm.floor.f64(double %269)
  %271 = fmul double %121, %270
  %272 = fptrunc double %271 to float
  %273 = fsub float %272, %266
  store float %272, ptr %159, align 8, !tbaa !48
  %274 = load float, ptr %164, align 4, !tbaa !48
  %275 = fadd float %274, %273
  br label %287

276:                                              ; preds = %256
  %277 = load ptr, ptr %113, align 8, !tbaa !69
  %278 = getelementptr inbounds %struct.Scene, ptr %277, i64 0, i32 24
  %279 = load float, ptr %159, align 8, !tbaa !48
  %280 = call i32 @ED_markers_find_nearest_marker_time(ptr noundef nonnull %278, float noundef %279) #11
  %281 = sitofp i32 %280 to float
  store float %281, ptr %159, align 8, !tbaa !48
  %282 = load ptr, ptr %113, align 8, !tbaa !69
  %283 = getelementptr inbounds %struct.Scene, ptr %282, i64 0, i32 24
  %284 = load float, ptr %164, align 4, !tbaa !48
  %285 = call i32 @ED_markers_find_nearest_marker_time(ptr noundef nonnull %283, float noundef %284) #11
  %286 = sitofp i32 %285 to float
  br label %287

287:                                              ; preds = %258, %265, %276
  %288 = phi float [ %286, %276 ], [ %275, %265 ], [ %264, %258 ]
  store float %288, ptr %164, align 4, !tbaa !48
  br label %289

289:                                              ; preds = %287, %256
  call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_NlaStrip, ptr noundef nonnull %140, ptr noundef nonnull %4) #11
  %290 = load float, ptr %159, align 8, !tbaa !48
  call void @RNA_float_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.16, float noundef %290) #11
  %291 = load float, ptr %164, align 4, !tbaa !48
  call void @RNA_float_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.17, float noundef %291) #11
  %292 = load float, ptr %159, align 8, !tbaa !48
  call void @RNA_float_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.16, float noundef %292) #11
  %293 = load float, ptr %164, align 4, !tbaa !48
  call void @RNA_float_set(ptr noundef nonnull %4, ptr noundef nonnull @.str.17, float noundef %293) #11
  call void @BKE_nlameta_flush_transforms(ptr noundef nonnull %140) #11
  %294 = getelementptr inbounds %struct.TransDataNla, ptr %137, i64 0, i32 4, i64 1
  %295 = load float, ptr %294, align 4, !tbaa !48
  %296 = fptosi float %295 to i32
  %297 = sitofp i32 %296 to float
  br i1 %135, label %302, label %298

298:                                              ; preds = %289
  %299 = load i16, ptr %132, align 2, !tbaa !118
  %300 = and i16 %299, 32
  %301 = icmp eq i16 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %298, %289
  br label %303

303:                                              ; preds = %298, %302
  %304 = phi float [ 0x3FF3333340000000, %302 ], [ 0x3FE99999A0000000, %298 ]
  %305 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !132
  %306 = sitofp i16 %305 to float
  %307 = fmul float %304, %306
  %308 = sitofp i16 %305 to float
  %309 = call float @llvm.fmuladd.f32(float %308, float 0x3FB99999A0000000, float %307)
  %310 = fdiv float %297, %309
  %311 = getelementptr inbounds %struct.TransDataNla, ptr %137, i64 0, i32 6
  %312 = load i32, ptr %311, align 8, !tbaa !136
  %313 = sitofp i32 %312 to float
  %314 = fsub float %310, %313
  %315 = fptosi float %314 to i32
  %316 = getelementptr inbounds %struct.TransDataNla, ptr %137, i64 0, i32 5, i64 1
  %317 = load float, ptr %316, align 4, !tbaa !48
  %318 = fptosi float %317 to i32
  %319 = sitofp i32 %318 to float
  br i1 %135, label %324, label %320

320:                                              ; preds = %303
  %321 = load i16, ptr %132, align 2, !tbaa !118
  %322 = and i16 %321, 32
  %323 = icmp eq i16 %322, 0
  br i1 %323, label %324, label %325

324:                                              ; preds = %320, %303
  br label %325

325:                                              ; preds = %320, %324
  %326 = phi float [ 0x3FF3333340000000, %324 ], [ 0x3FE99999A0000000, %320 ]
  %327 = fmul float %326, %308
  %328 = call float @llvm.fmuladd.f32(float %308, float 0x3FB99999A0000000, float %327)
  %329 = fdiv float %319, %328
  %330 = fsub float %329, %313
  %331 = fptosi float %330 to i32
  %332 = icmp ne i32 %315, 0
  %333 = icmp ne i32 %331, 0
  %334 = select i1 %332, i1 true, i1 %333
  br i1 %334, label %335, label %389

335:                                              ; preds = %325
  %336 = select i1 %333, i32 %331, i32 %315
  %337 = icmp sgt i32 %336, 0
  br i1 %337, label %338, label %361

338:                                              ; preds = %335
  %339 = getelementptr inbounds %struct.TransDataNla, ptr %137, i64 0, i32 2
  %340 = load ptr, ptr %339, align 8, !tbaa !129
  %341 = load ptr, ptr %340, align 8, !tbaa !137
  %342 = icmp eq ptr %341, null
  br i1 %342, label %389, label %343

343:                                              ; preds = %338, %350
  %344 = phi ptr [ %357, %350 ], [ %341, %338 ]
  %345 = phi i32 [ %356, %350 ], [ 0, %338 ]
  %346 = load float, ptr %167, align 8, !tbaa !125
  %347 = load float, ptr %168, align 4, !tbaa !127
  %348 = call zeroext i8 @BKE_nlatrack_has_space(ptr noundef nonnull %344, float noundef %346, float noundef %347) #11
  %349 = icmp eq i8 %348, 0
  br i1 %349, label %389, label %350

350:                                              ; preds = %343
  %351 = load ptr, ptr %339, align 8, !tbaa !129
  %352 = getelementptr inbounds %struct.NlaTrack, ptr %351, i64 0, i32 2
  call void @BLI_remlink(ptr noundef nonnull %352, ptr noundef nonnull %140) #11
  %353 = call zeroext i8 @BKE_nlatrack_add_strip(ptr noundef nonnull %344, ptr noundef nonnull %140) #11
  store ptr %344, ptr %339, align 8, !tbaa !129
  %354 = load i32, ptr %311, align 8, !tbaa !136
  %355 = add nsw i32 %354, 1
  store i32 %355, ptr %311, align 8, !tbaa !136
  %356 = add nuw nsw i32 %345, 1
  %357 = load ptr, ptr %344, align 8, !tbaa !137
  %358 = icmp ne ptr %357, null
  %359 = icmp slt i32 %356, %336
  %360 = select i1 %358, i1 %359, i1 false
  br i1 %360, label %343, label %389, !llvm.loop !139

361:                                              ; preds = %335
  %362 = sub nsw i32 0, %336
  %363 = getelementptr inbounds %struct.TransDataNla, ptr %137, i64 0, i32 2
  %364 = load ptr, ptr %363, align 8, !tbaa !129
  %365 = getelementptr inbounds %struct.NlaTrack, ptr %364, i64 0, i32 1
  %366 = load ptr, ptr %365, align 8, !tbaa !140
  %367 = icmp ne ptr %366, null
  %368 = icmp ne i32 %336, 0
  %369 = and i1 %368, %367
  br i1 %369, label %370, label %389

370:                                              ; preds = %361, %377
  %371 = phi ptr [ %385, %377 ], [ %366, %361 ]
  %372 = phi i32 [ %383, %377 ], [ 0, %361 ]
  %373 = load float, ptr %167, align 8, !tbaa !125
  %374 = load float, ptr %168, align 4, !tbaa !127
  %375 = call zeroext i8 @BKE_nlatrack_has_space(ptr noundef nonnull %371, float noundef %373, float noundef %374) #11
  %376 = icmp eq i8 %375, 0
  br i1 %376, label %389, label %377

377:                                              ; preds = %370
  %378 = load ptr, ptr %363, align 8, !tbaa !129
  %379 = getelementptr inbounds %struct.NlaTrack, ptr %378, i64 0, i32 2
  call void @BLI_remlink(ptr noundef nonnull %379, ptr noundef nonnull %140) #11
  %380 = call zeroext i8 @BKE_nlatrack_add_strip(ptr noundef nonnull %371, ptr noundef nonnull %140) #11
  store ptr %371, ptr %363, align 8, !tbaa !129
  %381 = load i32, ptr %311, align 8, !tbaa !136
  %382 = add nsw i32 %381, -1
  store i32 %382, ptr %311, align 8, !tbaa !136
  %383 = add nuw nsw i32 %372, 1
  %384 = getelementptr inbounds %struct.NlaTrack, ptr %371, i64 0, i32 1
  %385 = load ptr, ptr %384, align 8, !tbaa !140
  %386 = icmp ne ptr %385, null
  %387 = icmp slt i32 %383, %362
  %388 = select i1 %386, i1 %387, i1 false
  br i1 %388, label %370, label %389, !llvm.loop !141

389:                                              ; preds = %377, %370, %350, %343, %361, %338, %325, %202, %196, %136
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  %390 = add nuw nsw i32 %138, 1
  %391 = getelementptr inbounds %struct.TransDataNla, ptr %137, i64 1
  %392 = load i32, ptr %122, align 8, !tbaa !113
  %393 = icmp slt i32 %390, %392
  br i1 %393, label %136, label %614, !llvm.loop !142

394:                                              ; preds = %20
  %395 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %396 = load i32, ptr %395, align 8, !tbaa !113
  %397 = icmp sgt i32 %396, 0
  br i1 %397, label %398, label %417

398:                                              ; preds = %394
  %399 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %400 = load ptr, ptr %399, align 8, !tbaa !143
  %401 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  br label %402

402:                                              ; preds = %412, %398
  %403 = phi ptr [ %400, %398 ], [ %414, %412 ]
  %404 = phi i32 [ 0, %398 ], [ %413, %412 ]
  %405 = phi ptr [ null, %398 ], [ %408, %412 ]
  %406 = getelementptr inbounds %struct.TransData, ptr %403, i64 0, i32 15
  %407 = load ptr, ptr %406, align 8, !tbaa !144
  %408 = load ptr, ptr %407, align 8, !tbaa !146
  %409 = icmp eq ptr %408, %405
  br i1 %409, label %412, label %410

410:                                              ; preds = %402
  %411 = load ptr, ptr %401, align 8, !tbaa !69
  tail call void @BKE_sequence_invalidate_dependent(ptr noundef %411, ptr noundef %408) #11
  br label %412

412:                                              ; preds = %410, %402
  %413 = add nuw nsw i32 %404, 1
  %414 = getelementptr inbounds %struct.TransData, ptr %403, i64 1
  %415 = load i32, ptr %395, align 8, !tbaa !113
  %416 = icmp slt i32 %413, %415
  br i1 %416, label %402, label %417, !llvm.loop !148

417:                                              ; preds = %412, %394
  tail call void @BKE_sequencer_preprocessed_cache_cleanup() #11
  tail call void @flushTransSeq(ptr noundef %0) #11
  br label %614

418:                                              ; preds = %20
  %419 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %420 = load ptr, ptr %419, align 8, !tbaa !58
  %421 = getelementptr inbounds %struct.ScrArea, ptr %420, i64 0, i32 19
  %422 = load ptr, ptr %421, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  %423 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %424 = load ptr, ptr %423, align 8, !tbaa !69
  %425 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 9
  store ptr %424, ptr %425, align 8, !tbaa !70
  %426 = getelementptr inbounds %struct.Scene, ptr %424, i64 0, i32 6
  %427 = load ptr, ptr %426, align 8, !tbaa !72
  %428 = icmp eq ptr %427, null
  br i1 %428, label %432, label %429

429:                                              ; preds = %418
  %430 = getelementptr inbounds %struct.Base, ptr %427, i64 0, i32 7
  %431 = load ptr, ptr %430, align 8, !tbaa !90
  br label %432

432:                                              ; preds = %429, %418
  %433 = phi ptr [ %431, %429 ], [ null, %418 ]
  %434 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 10
  store ptr %433, ptr %434, align 8, !tbaa !92
  %435 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 5
  store ptr %420, ptr %435, align 8, !tbaa !93
  %436 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %437 = load ptr, ptr %436, align 8, !tbaa !94
  %438 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 7
  store ptr %437, ptr %438, align 8, !tbaa !95
  %439 = icmp eq ptr %420, null
  %440 = select i1 %439, ptr null, ptr %422
  %441 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 6
  store ptr %440, ptr %441, align 8, !tbaa !96
  br i1 %439, label %446, label %442

442:                                              ; preds = %432
  %443 = getelementptr inbounds %struct.ScrArea, ptr %420, i64 0, i32 8
  %444 = load i8, ptr %443, align 8, !tbaa !97
  %445 = zext i8 %444 to i16
  br label %446

446:                                              ; preds = %442, %432
  %447 = phi i16 [ %445, %442 ], [ 0, %432 ]
  %448 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 3
  store i16 %447, ptr %448, align 4, !tbaa !98
  %449 = icmp eq ptr %437, null
  br i1 %449, label %453, label %450

450:                                              ; preds = %446
  %451 = getelementptr inbounds %struct.ARegion, ptr %437, i64 0, i32 8
  %452 = load i16, ptr %451, align 2, !tbaa !99
  br label %453

453:                                              ; preds = %450, %446
  %454 = phi i16 [ %452, %450 ], [ 0, %446 ]
  %455 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 4
  store i16 %454, ptr %455, align 2, !tbaa !102
  %456 = call zeroext i8 @ANIM_animdata_context_getdata(ptr noundef nonnull %3) #11
  call void @flushTransGraphData(ptr noundef %0) #11
  %457 = load ptr, ptr %3, align 8, !tbaa !103
  %458 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %459 = load i16, ptr %458, align 8, !tbaa !149
  %460 = sext i16 %459 to i32
  %461 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 261, ptr noundef %457, i32 noundef %460) #11
  %462 = load ptr, ptr %2, align 8, !tbaa !107
  %463 = icmp eq ptr %462, null
  br i1 %463, label %519, label %464

464:                                              ; preds = %453
  %465 = getelementptr inbounds %struct.SpaceIpo, ptr %422, i64 0, i32 11
  br label %466

466:                                              ; preds = %512, %464
  %467 = phi ptr [ %462, %464 ], [ %514, %512 ]
  %468 = phi i32 [ 0, %464 ], [ %513, %512 ]
  %469 = getelementptr inbounds %struct.bAnimListElem, ptr %467, i64 0, i32 8
  %470 = load ptr, ptr %469, align 8, !tbaa !150
  %471 = getelementptr inbounds %struct.FCurve, ptr %470, i64 0, i32 5
  %472 = load ptr, ptr %471, align 8, !tbaa !152
  %473 = icmp eq ptr %472, null
  br i1 %473, label %512, label %474

474:                                              ; preds = %466
  %475 = getelementptr inbounds %struct.FCurve, ptr %470, i64 0, i32 7
  %476 = load i32, ptr %475, align 8, !tbaa !154
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %512, label %478

478:                                              ; preds = %474, %495
  %479 = phi i32 [ %496, %495 ], [ 0, %474 ]
  %480 = phi ptr [ %497, %495 ], [ %472, %474 ]
  %481 = getelementptr inbounds %struct.BezTriple, ptr %480, i64 0, i32 8
  %482 = load i8, ptr %481, align 4, !tbaa !155
  %483 = and i8 %482, 1
  %484 = icmp eq i8 %483, 0
  br i1 %484, label %485, label %499

485:                                              ; preds = %478
  %486 = getelementptr inbounds %struct.BezTriple, ptr %480, i64 0, i32 7
  %487 = load i8, ptr %486, align 1, !tbaa !157
  %488 = and i8 %487, 1
  %489 = icmp eq i8 %488, 0
  br i1 %489, label %490, label %499

490:                                              ; preds = %485
  %491 = getelementptr inbounds %struct.BezTriple, ptr %480, i64 0, i32 9
  %492 = load i8, ptr %491, align 1, !tbaa !158
  %493 = and i8 %492, 1
  %494 = icmp eq i8 %493, 0
  br i1 %494, label %495, label %499

495:                                              ; preds = %490
  %496 = add nuw i32 %479, 1
  %497 = getelementptr inbounds %struct.BezTriple, ptr %480, i64 1
  %498 = icmp eq i32 %496, %476
  br i1 %498, label %512, label %478, !llvm.loop !159

499:                                              ; preds = %490, %485, %478
  %500 = call signext i16 @test_time_fcurve(ptr noundef %470) #11
  %501 = icmp eq i16 %500, 0
  br i1 %501, label %504, label %502

502:                                              ; preds = %499
  %503 = add nsw i32 %468, 1
  br label %505

504:                                              ; preds = %499
  call void @calchandles_fcurve(ptr noundef %470) #11
  br label %505

505:                                              ; preds = %504, %502
  %506 = phi i32 [ %503, %502 ], [ %468, %504 ]
  %507 = load i32, ptr %465, align 4, !tbaa !160
  %508 = and i32 %507, 2048
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %510, label %512

510:                                              ; preds = %505
  %511 = load ptr, ptr %423, align 8, !tbaa !69
  call void @ANIM_list_elem_update(ptr noundef %511, ptr noundef nonnull %467) #11
  br label %512

512:                                              ; preds = %495, %510, %505, %474, %466
  %513 = phi i32 [ %506, %510 ], [ %506, %505 ], [ %468, %466 ], [ %468, %474 ], [ %468, %495 ]
  %514 = load ptr, ptr %467, align 8, !tbaa !107
  %515 = icmp eq ptr %514, null
  br i1 %515, label %516, label %466, !llvm.loop !162

516:                                              ; preds = %512
  %517 = icmp eq i32 %513, 0
  br i1 %517, label %519, label %518

518:                                              ; preds = %516
  call void @remake_graph_transdata(ptr noundef %0, ptr noundef nonnull %2) #11
  br label %519

519:                                              ; preds = %453, %516, %518
  call void @ANIM_animdata_freelist(ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  br label %614

520:                                              ; preds = %20
  tail call void @flushTransNodes(ptr noundef %0) #11
  br label %614

521:                                              ; preds = %20
  %522 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %523 = load ptr, ptr %522, align 8, !tbaa !58
  %524 = getelementptr inbounds %struct.ScrArea, ptr %523, i64 0, i32 19
  %525 = load ptr, ptr %524, align 8, !tbaa !59
  %526 = tail call zeroext i8 @ED_space_clip_check_show_trackedit(ptr noundef %525) #11
  %527 = icmp eq i8 %526, 0
  br i1 %527, label %605, label %528

528:                                              ; preds = %521
  %529 = tail call ptr @ED_space_clip_get_clip(ptr noundef %525) #11
  %530 = getelementptr inbounds %struct.MovieClip, ptr %529, i64 0, i32 11
  %531 = tail call ptr @BKE_tracking_get_active_tracks(ptr noundef nonnull %530) #11
  %532 = tail call i32 @ED_space_clip_get_clip_frame_number(ptr noundef %525) #11
  tail call void @flushTransTracking(ptr noundef %0) #11
  %533 = load ptr, ptr %531, align 8, !tbaa !107
  %534 = icmp eq ptr %533, null
  br i1 %534, label %604, label %535

535:                                              ; preds = %528
  %536 = getelementptr inbounds %struct.SpaceClip, ptr %525, i64 0, i32 12
  br label %537

537:                                              ; preds = %601, %535
  %538 = phi ptr [ %533, %535 ], [ %602, %601 ]
  %539 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %538, i64 0, i32 13
  %540 = load i32, ptr %539, align 8, !tbaa !163
  %541 = and i32 %540, 32
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %543, label %601

543:                                              ; preds = %537
  %544 = and i32 %540, 1
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %546, label %566

546:                                              ; preds = %543
  %547 = load i32, ptr %536, align 8, !tbaa !165
  %548 = and i32 %547, 1
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %555, label %550

550:                                              ; preds = %546
  %551 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %538, i64 0, i32 14
  %552 = load i32, ptr %551, align 4, !tbaa !170
  %553 = and i32 %552, 1
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %555, label %566

555:                                              ; preds = %550, %546
  %556 = and i32 %547, 2
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %601, label %558

558:                                              ; preds = %555
  %559 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %538, i64 0, i32 15
  %560 = load i32, ptr %559, align 8, !tbaa !171
  %561 = and i32 %560, 1
  %562 = icmp ne i32 %561, 0
  %563 = and i32 %540, 64
  %564 = icmp eq i32 %563, 0
  %565 = and i1 %564, %562
  br i1 %565, label %569, label %601

566:                                              ; preds = %550, %543
  %567 = and i32 %540, 64
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %569, label %601

569:                                              ; preds = %566, %558
  %570 = tail call ptr @BKE_tracking_marker_get(ptr noundef nonnull %538, i32 noundef %532) #11
  %571 = load i32, ptr %0, align 8, !tbaa !172
  switch i32 %571, label %601 [
    i32 1, label %572
    i32 3, label %583
    i32 2, label %594
  ]

572:                                              ; preds = %569
  %573 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %538, i64 0, i32 14
  %574 = load i32, ptr %573, align 4, !tbaa !170
  %575 = and i32 %574, 1
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %578, label %577

577:                                              ; preds = %572
  tail call void @BKE_tracking_marker_clamp(ptr noundef %570, i32 noundef 2) #11
  br label %578

578:                                              ; preds = %577, %572
  %579 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %538, i64 0, i32 15
  %580 = load i32, ptr %579, align 8, !tbaa !171
  %581 = and i32 %580, 1
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %601, label %599

583:                                              ; preds = %569
  %584 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %538, i64 0, i32 14
  %585 = load i32, ptr %584, align 4, !tbaa !170
  %586 = and i32 %585, 1
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %589, label %588

588:                                              ; preds = %583
  tail call void @BKE_tracking_marker_clamp(ptr noundef %570, i32 noundef 1) #11
  br label %589

589:                                              ; preds = %588, %583
  %590 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %538, i64 0, i32 15
  %591 = load i32, ptr %590, align 8, !tbaa !171
  %592 = and i32 %591, 1
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %601, label %599

594:                                              ; preds = %569
  %595 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %538, i64 0, i32 14
  %596 = load i32, ptr %595, align 4, !tbaa !170
  %597 = and i32 %596, 1
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %601, label %599

599:                                              ; preds = %594, %589, %578
  %600 = phi i32 [ 4, %578 ], [ 3, %589 ], [ 2, %594 ]
  tail call void @BKE_tracking_marker_clamp(ptr noundef %570, i32 noundef %600) #11
  br label %601

601:                                              ; preds = %599, %594, %589, %578, %569, %566, %558, %555, %537
  %602 = load ptr, ptr %538, align 8, !tbaa !107
  %603 = icmp eq ptr %602, null
  br i1 %603, label %604, label %537, !llvm.loop !173

604:                                              ; preds = %601, %528
  tail call void @DAG_id_tag_update(ptr noundef %529, i16 noundef signext 0) #11
  br label %614

605:                                              ; preds = %521
  %606 = load i32, ptr %7, align 8, !tbaa !49
  %607 = and i32 %606, 128
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %614, label %609

609:                                              ; preds = %605
  %610 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 53
  %611 = load ptr, ptr %610, align 8, !tbaa !51
  %612 = tail call ptr @CTX_data_edit_mask(ptr noundef %611) #11
  tail call void @flushTransMasking(ptr noundef %0) #11
  tail call void @DAG_id_tag_update(ptr noundef %612, i16 noundef signext 0) #11
  br label %614

613:                                              ; preds = %20
  tail call fastcc void @recalcData_objects(ptr noundef %0)
  br label %614

614:                                              ; preds = %389, %609, %605, %604, %112, %48, %34, %30, %26, %15, %519, %613, %520, %417, %111, %19, %11
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @recalcData_objects(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  %4 = alloca [4 x float], align 16
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %10 = load ptr, ptr %9, align 8, !tbaa !52
  %11 = icmp eq ptr %10, null
  br i1 %11, label %337, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 3
  %14 = load i16, ptr %13, align 8, !tbaa !53
  switch i16 %14, label %328 [
    i16 2, label %15
    i16 3, label %15
    i16 22, label %42
    i16 1, label %61
    i16 25, label %125
  ]

15:                                               ; preds = %12, %12
  %16 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !68
  %18 = tail call ptr @BKE_curve_editNurbs_get(ptr noundef %17) #11
  %19 = load ptr, ptr %18, align 8, !tbaa !174
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  %21 = load i16, ptr %20, align 4, !tbaa !121
  %22 = icmp eq i16 %21, 3
  br i1 %22, label %25, label %23

23:                                               ; preds = %15
  %24 = load ptr, ptr %9, align 8, !tbaa !52
  tail call fastcc void @clipMirrorModifier(ptr noundef %0, ptr noundef %24)
  tail call void @applyProject(ptr noundef %0) #11
  br label %25

25:                                               ; preds = %23, %15
  %26 = load ptr, ptr %9, align 8, !tbaa !52
  %27 = getelementptr inbounds %struct.Object, ptr %26, i64 0, i32 19
  %28 = load ptr, ptr %27, align 8, !tbaa !68
  tail call void @DAG_id_tag_update(ptr noundef %28, i16 noundef signext 0) #11
  %29 = load i16, ptr %20, align 4, !tbaa !121
  %30 = icmp eq i16 %29, 3
  %31 = icmp eq ptr %19, null
  br i1 %30, label %33, label %32

32:                                               ; preds = %25
  br i1 %31, label %461, label %38

33:                                               ; preds = %25
  br i1 %31, label %461, label %34

34:                                               ; preds = %33, %34
  %35 = phi ptr [ %36, %34 ], [ %19, %33 ]
  tail call void @BKE_nurb_handles_calc(ptr noundef nonnull %35) #11
  %36 = load ptr, ptr %35, align 8, !tbaa !175
  %37 = icmp eq ptr %36, null
  br i1 %37, label %461, label %34, !llvm.loop !177

38:                                               ; preds = %32, %38
  %39 = phi ptr [ %40, %38 ], [ %19, %32 ]
  tail call void @BKE_nurb_test2D(ptr noundef nonnull %39) #11
  tail call void @BKE_nurb_handles_calc(ptr noundef nonnull %39) #11
  %40 = load ptr, ptr %39, align 8, !tbaa !175
  %41 = icmp eq ptr %40, null
  br i1 %41, label %461, label %38, !llvm.loop !178

42:                                               ; preds = %12
  %43 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 19
  %44 = load ptr, ptr %43, align 8, !tbaa !68
  %45 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  %46 = load i16, ptr %45, align 4, !tbaa !121
  %47 = icmp eq i16 %46, 3
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  tail call void @applyProject(ptr noundef %0) #11
  br label %49

49:                                               ; preds = %48, %42
  %50 = load ptr, ptr %9, align 8, !tbaa !52
  %51 = getelementptr inbounds %struct.Object, ptr %50, i64 0, i32 19
  %52 = load ptr, ptr %51, align 8, !tbaa !68
  tail call void @DAG_id_tag_update(ptr noundef %52, i16 noundef signext 0) #11
  %53 = getelementptr inbounds %struct.Lattice, ptr %44, i64 0, i32 26
  %54 = load ptr, ptr %53, align 8, !tbaa !179
  %55 = load ptr, ptr %54, align 8, !tbaa !181
  %56 = getelementptr inbounds %struct.Lattice, ptr %55, i64 0, i32 5
  %57 = load i16, ptr %56, align 2, !tbaa !183
  %58 = and i16 %57, 2
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %461, label %60

60:                                               ; preds = %49
  tail call void @outside_lattice(ptr noundef %55) #11
  br label %461

61:                                               ; preds = %12
  %62 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %10) #11
  %63 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  %64 = load i16, ptr %63, align 4, !tbaa !121
  %65 = icmp eq i16 %64, 3
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  tail call void @applyProject(ptr noundef %0) #11
  %67 = load ptr, ptr %9, align 8, !tbaa !52
  tail call fastcc void @clipMirrorModifier(ptr noundef %0, ptr noundef %67)
  br label %68

68:                                               ; preds = %66, %61
  %69 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %70 = load i32, ptr %69, align 8, !tbaa !49
  %71 = and i32 %70, 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %121

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %75 = load i32, ptr %74, align 4, !tbaa !184
  %76 = and i32 %75, 524288
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %121, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %80 = load i32, ptr %79, align 8, !tbaa !113
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %121

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %84 = load ptr, ptr %83, align 8, !tbaa !143
  br label %85

85:                                               ; preds = %82, %117
  %86 = phi i32 [ %118, %117 ], [ 0, %82 ]
  %87 = phi ptr [ %119, %117 ], [ %84, %82 ]
  %88 = getelementptr inbounds %struct.TransData, ptr %87, i64 0, i32 16
  %89 = load i32, ptr %88, align 8, !tbaa !185
  %90 = and i32 %89, 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %121

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.TransData, ptr %87, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !186
  %95 = icmp eq ptr %94, null
  br i1 %95, label %121, label %96

96:                                               ; preds = %92
  %97 = and i32 %89, 2048
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %117

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.TransData, ptr %87, i64 0, i32 15
  %101 = load ptr, ptr %100, align 8, !tbaa !144
  %102 = icmp eq ptr %101, null
  br i1 %102, label %113, label %103

103:                                              ; preds = %99
  %104 = load float, ptr %94, align 4, !tbaa !48
  %105 = fneg float %104
  %106 = getelementptr inbounds %struct.BMVert, ptr %101, i64 0, i32 2
  store float %105, ptr %106, align 8, !tbaa !48
  %107 = getelementptr inbounds float, ptr %94, i64 1
  %108 = load float, ptr %107, align 4, !tbaa !48
  %109 = getelementptr inbounds %struct.BMVert, ptr %101, i64 0, i32 2, i64 1
  store float %108, ptr %109, align 4, !tbaa !48
  %110 = getelementptr inbounds float, ptr %94, i64 2
  %111 = load float, ptr %110, align 4, !tbaa !48
  %112 = getelementptr inbounds %struct.BMVert, ptr %101, i64 0, i32 2, i64 2
  store float %111, ptr %112, align 8, !tbaa !48
  br label %113

113:                                              ; preds = %103, %99
  %114 = and i32 %89, 65536
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %113
  store float 0.000000e+00, ptr %94, align 4, !tbaa !48
  br label %117

117:                                              ; preds = %116, %113, %96
  %118 = add nuw nsw i32 %86, 1
  %119 = getelementptr inbounds %struct.TransData, ptr %87, i64 1
  %120 = icmp eq i32 %118, %80
  br i1 %120, label %121, label %85, !llvm.loop !187

121:                                              ; preds = %117, %85, %92, %78, %73, %68
  %122 = load ptr, ptr %9, align 8, !tbaa !52
  %123 = getelementptr inbounds %struct.Object, ptr %122, i64 0, i32 19
  %124 = load ptr, ptr %123, align 8, !tbaa !68
  tail call void @DAG_id_tag_update(ptr noundef %124, i16 noundef signext 0) #11
  tail call void @EDBM_mesh_normals_update(ptr noundef %62) #11
  tail call void @BKE_editmesh_tessface_calc(ptr noundef %62) #11
  br label %461

125:                                              ; preds = %12
  %126 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 19
  %127 = load ptr, ptr %126, align 8, !tbaa !68
  %128 = getelementptr inbounds %struct.bArmature, ptr %127, i64 0, i32 4
  %129 = load ptr, ptr %128, align 8, !tbaa !188
  %130 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %131 = load ptr, ptr %130, align 8, !tbaa !143
  %132 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  %133 = load i16, ptr %132, align 4, !tbaa !121
  %134 = icmp eq i16 %133, 3
  br i1 %134, label %136, label %135

135:                                              ; preds = %125
  tail call void @applyProject(ptr noundef %0) #11
  br label %136

136:                                              ; preds = %135, %125
  %137 = load ptr, ptr %129, align 8, !tbaa !107
  %138 = icmp eq ptr %137, null
  br i1 %138, label %243, label %139

139:                                              ; preds = %136, %240
  %140 = phi ptr [ %241, %240 ], [ %137, %136 ]
  %141 = getelementptr inbounds %struct.EditBone, ptr %140, i64 0, i32 9
  %142 = load i32, ptr %141, align 4, !tbaa !190
  %143 = and i32 %142, 16
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.EditBone, ptr %140, i64 0, i32 3
  %147 = load ptr, ptr %146, align 8, !tbaa !192
  br label %148

148:                                              ; preds = %139, %145
  %149 = phi ptr [ %147, %145 ], [ null, %139 ]
  %150 = icmp eq ptr %149, null
  br i1 %150, label %188, label %151

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.EditBone, ptr %149, i64 0, i32 9
  %153 = load i32, ptr %152, align 4, !tbaa !190
  %154 = and i32 %153, 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %172, label %156

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.EditBone, ptr %140, i64 0, i32 7
  %158 = getelementptr inbounds %struct.EditBone, ptr %149, i64 0, i32 8
  %159 = load float, ptr %158, align 4, !tbaa !48
  store float %159, ptr %157, align 4, !tbaa !48
  %160 = getelementptr inbounds %struct.EditBone, ptr %149, i64 0, i32 8, i64 1
  %161 = load float, ptr %160, align 4, !tbaa !48
  %162 = getelementptr inbounds %struct.EditBone, ptr %140, i64 0, i32 7, i64 1
  store float %161, ptr %162, align 4, !tbaa !48
  %163 = getelementptr inbounds %struct.EditBone, ptr %149, i64 0, i32 8, i64 2
  %164 = load float, ptr %163, align 4, !tbaa !48
  %165 = getelementptr inbounds %struct.EditBone, ptr %140, i64 0, i32 7, i64 2
  store float %164, ptr %165, align 4, !tbaa !48
  %166 = load i32, ptr %0, align 8, !tbaa !172
  %167 = icmp eq i32 %166, 15
  br i1 %167, label %168, label %188

168:                                              ; preds = %156
  %169 = getelementptr inbounds %struct.EditBone, ptr %149, i64 0, i32 19
  %170 = load float, ptr %169, align 4, !tbaa !193
  %171 = getelementptr inbounds %struct.EditBone, ptr %140, i64 0, i32 18
  store float %170, ptr %171, align 8, !tbaa !194
  br label %188

172:                                              ; preds = %151
  %173 = getelementptr inbounds %struct.EditBone, ptr %149, i64 0, i32 8
  %174 = getelementptr inbounds %struct.EditBone, ptr %140, i64 0, i32 7
  %175 = load float, ptr %174, align 4, !tbaa !48
  store float %175, ptr %173, align 4, !tbaa !48
  %176 = getelementptr inbounds %struct.EditBone, ptr %140, i64 0, i32 7, i64 1
  %177 = load float, ptr %176, align 4, !tbaa !48
  %178 = getelementptr inbounds %struct.EditBone, ptr %149, i64 0, i32 8, i64 1
  store float %177, ptr %178, align 4, !tbaa !48
  %179 = getelementptr inbounds %struct.EditBone, ptr %140, i64 0, i32 7, i64 2
  %180 = load float, ptr %179, align 4, !tbaa !48
  %181 = getelementptr inbounds %struct.EditBone, ptr %149, i64 0, i32 8, i64 2
  store float %180, ptr %181, align 4, !tbaa !48
  %182 = load i32, ptr %0, align 8, !tbaa !172
  %183 = icmp eq i32 %182, 15
  br i1 %183, label %184, label %188

184:                                              ; preds = %172
  %185 = getelementptr inbounds %struct.EditBone, ptr %140, i64 0, i32 18
  %186 = load float, ptr %185, align 8, !tbaa !194
  %187 = getelementptr inbounds %struct.EditBone, ptr %149, i64 0, i32 19
  store float %186, ptr %187, align 4, !tbaa !193
  br label %188

188:                                              ; preds = %168, %156, %184, %172, %148
  %189 = getelementptr inbounds %struct.EditBone, ptr %140, i64 0, i32 7
  %190 = getelementptr inbounds %struct.EditBone, ptr %140, i64 0, i32 8
  %191 = load float, ptr %190, align 4, !tbaa !48
  %192 = load float, ptr %189, align 4, !tbaa !48
  %193 = fsub float %191, %192
  %194 = getelementptr inbounds %struct.EditBone, ptr %140, i64 0, i32 8, i64 1
  %195 = load float, ptr %194, align 4, !tbaa !48
  %196 = getelementptr inbounds %struct.EditBone, ptr %140, i64 0, i32 7, i64 1
  %197 = load float, ptr %196, align 4, !tbaa !48
  %198 = fsub float %195, %197
  %199 = getelementptr inbounds %struct.EditBone, ptr %140, i64 0, i32 8, i64 2
  %200 = load float, ptr %199, align 4, !tbaa !48
  %201 = getelementptr inbounds %struct.EditBone, ptr %140, i64 0, i32 7, i64 2
  %202 = load float, ptr %201, align 4, !tbaa !48
  %203 = fsub float %200, %202
  %204 = fmul float %198, %198
  %205 = tail call float @llvm.fmuladd.f32(float %193, float %193, float %204)
  %206 = tail call float @llvm.fmuladd.f32(float %203, float %203, float %205)
  %207 = tail call float @sqrtf(float noundef %206) #11
  %208 = getelementptr inbounds %struct.EditBone, ptr %140, i64 0, i32 14
  store float %207, ptr %208, align 8, !tbaa !195
  %209 = getelementptr inbounds %struct.EditBone, ptr %140, i64 0, i32 20
  %210 = load float, ptr %209, align 8, !tbaa !196
  %211 = fcmp oeq float %210, 0.000000e+00
  br i1 %211, label %212, label %226

212:                                              ; preds = %188
  %213 = fmul float %207, 2.500000e-01
  %214 = getelementptr inbounds %struct.EditBone, ptr %140, i64 0, i32 18
  store float %213, ptr %214, align 8, !tbaa !194
  %215 = fmul float %207, 0x3FB99999A0000000
  %216 = getelementptr inbounds %struct.EditBone, ptr %140, i64 0, i32 19
  store float %215, ptr %216, align 4, !tbaa !193
  %217 = getelementptr inbounds %struct.EditBone, ptr %140, i64 0, i32 11
  store float %213, ptr %217, align 4, !tbaa !197
  %218 = getelementptr inbounds %struct.EditBone, ptr %140, i64 0, i32 3
  %219 = load ptr, ptr %218, align 8, !tbaa !192
  %220 = icmp eq ptr %219, null
  br i1 %220, label %240, label %221

221:                                              ; preds = %212
  %222 = getelementptr inbounds %struct.EditBone, ptr %219, i64 0, i32 19
  %223 = load float, ptr %222, align 4, !tbaa !193
  %224 = fcmp ogt float %213, %223
  br i1 %224, label %225, label %240

225:                                              ; preds = %221
  store float %223, ptr %214, align 8, !tbaa !194
  br label %240

226:                                              ; preds = %188
  %227 = load i32, ptr %0, align 8, !tbaa !172
  %228 = icmp eq i32 %227, 15
  br i1 %228, label %240, label %229

229:                                              ; preds = %226
  %230 = fdiv float %207, %210
  %231 = getelementptr inbounds %struct.EditBone, ptr %140, i64 0, i32 11
  %232 = load float, ptr %231, align 4, !tbaa !197
  %233 = fmul float %230, %232
  store float %233, ptr %231, align 4, !tbaa !197
  %234 = getelementptr inbounds %struct.EditBone, ptr %140, i64 0, i32 18
  %235 = load float, ptr %234, align 8, !tbaa !194
  %236 = fmul float %230, %235
  store float %236, ptr %234, align 8, !tbaa !194
  %237 = getelementptr inbounds %struct.EditBone, ptr %140, i64 0, i32 19
  %238 = load float, ptr %237, align 4, !tbaa !193
  %239 = fmul float %230, %238
  store float %239, ptr %237, align 4, !tbaa !193
  store float %207, ptr %209, align 8, !tbaa !196
  br label %240

240:                                              ; preds = %221, %225, %212, %229, %226
  %241 = load ptr, ptr %140, align 8, !tbaa !107
  %242 = icmp eq ptr %241, null
  br i1 %242, label %243, label %139, !llvm.loop !198

243:                                              ; preds = %240, %136
  %244 = load i32, ptr %0, align 8, !tbaa !172
  switch i32 %244, label %245 [
    i32 18, label %317
    i32 15, label %317
    i32 14, label %317
  ]

245:                                              ; preds = %243
  %246 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %247 = load i32, ptr %246, align 8, !tbaa !113
  %248 = icmp sgt i32 %247, 0
  br i1 %248, label %249, label %317

249:                                              ; preds = %245
  %250 = getelementptr inbounds float, ptr %3, i64 1
  %251 = getelementptr inbounds float, ptr %3, i64 2
  %252 = getelementptr inbounds float, ptr %2, i64 1
  %253 = getelementptr inbounds float, ptr %2, i64 2
  br label %254

254:                                              ; preds = %249, %312
  %255 = phi ptr [ %131, %249 ], [ %314, %312 ]
  %256 = phi i32 [ 0, %249 ], [ %313, %312 ]
  %257 = getelementptr inbounds %struct.TransData, ptr %255, i64 0, i32 15
  %258 = load ptr, ptr %257, align 8, !tbaa !144
  %259 = icmp eq ptr %258, null
  br i1 %259, label %312, label %260

260:                                              ; preds = %254
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %261 = load i16, ptr %132, align 4, !tbaa !121
  %262 = icmp eq i16 %261, 3
  br i1 %262, label %263, label %266

263:                                              ; preds = %260
  %264 = getelementptr inbounds %struct.TransData, ptr %255, i64 0, i32 6
  %265 = load float, ptr %264, align 8, !tbaa !199
  br label %309

266:                                              ; preds = %260
  %267 = getelementptr inbounds %struct.TransData, ptr %255, i64 0, i32 10, i64 2
  %268 = load float, ptr %267, align 4, !tbaa !48
  store float %268, ptr %3, align 4, !tbaa !48
  %269 = getelementptr inbounds %struct.TransData, ptr %255, i64 0, i32 10, i64 2, i64 1
  %270 = load float, ptr %269, align 4, !tbaa !48
  store float %270, ptr %250, align 4, !tbaa !48
  %271 = getelementptr inbounds %struct.TransData, ptr %255, i64 0, i32 10, i64 2, i64 2
  %272 = load float, ptr %271, align 4, !tbaa !48
  store float %272, ptr %251, align 4, !tbaa !48
  %273 = getelementptr inbounds %struct.EditBone, ptr %258, i64 0, i32 8
  %274 = getelementptr inbounds %struct.EditBone, ptr %258, i64 0, i32 7
  %275 = load float, ptr %273, align 4, !tbaa !48
  %276 = load float, ptr %274, align 4, !tbaa !48
  %277 = fsub float %275, %276
  store float %277, ptr %2, align 4, !tbaa !48
  %278 = getelementptr inbounds %struct.EditBone, ptr %258, i64 0, i32 8, i64 1
  %279 = load float, ptr %278, align 4, !tbaa !48
  %280 = getelementptr inbounds %struct.EditBone, ptr %258, i64 0, i32 7, i64 1
  %281 = load float, ptr %280, align 4, !tbaa !48
  %282 = fsub float %279, %281
  store float %282, ptr %252, align 4, !tbaa !48
  %283 = getelementptr inbounds %struct.EditBone, ptr %258, i64 0, i32 8, i64 2
  %284 = load float, ptr %283, align 4, !tbaa !48
  %285 = getelementptr inbounds %struct.EditBone, ptr %258, i64 0, i32 7, i64 2
  %286 = load float, ptr %285, align 4, !tbaa !48
  %287 = fsub float %284, %286
  store float %287, ptr %253, align 4, !tbaa !48
  %288 = fmul float %282, %282
  %289 = call float @llvm.fmuladd.f32(float %277, float %277, float %288)
  %290 = call float @llvm.fmuladd.f32(float %287, float %287, float %289)
  %291 = fcmp ogt float %290, 0x38AA95A5C0000000
  br i1 %291, label %292, label %301

292:                                              ; preds = %266
  %293 = call float @sqrtf(float noundef %290) #11
  %294 = fdiv float 1.000000e+00, %293
  %295 = load float, ptr %2, align 4, !tbaa !48
  %296 = fmul float %295, %294
  store float %296, ptr %2, align 4, !tbaa !48
  %297 = load float, ptr %252, align 4, !tbaa !48
  %298 = fmul float %294, %297
  store float %298, ptr %252, align 4, !tbaa !48
  %299 = load float, ptr %253, align 4, !tbaa !48
  %300 = fmul float %294, %299
  br label %302

301:                                              ; preds = %266
  store float 0.000000e+00, ptr %2, align 4, !tbaa !48
  store float 0.000000e+00, ptr %252, align 4, !tbaa !48
  br label %302

302:                                              ; preds = %292, %301
  %303 = phi float [ 0.000000e+00, %301 ], [ %300, %292 ]
  store float %303, ptr %253, align 4, !tbaa !48
  %304 = getelementptr inbounds %struct.TransData, ptr %255, i64 0, i32 10, i64 1
  call void @rotation_between_vecs_to_quat(ptr noundef nonnull %4, ptr noundef nonnull %304, ptr noundef nonnull %2) #11
  call void @mul_qt_v3(ptr noundef nonnull %4, ptr noundef nonnull %3) #11
  %305 = call float @ED_rollBoneToVector(ptr noundef nonnull %258, ptr noundef nonnull %3, i8 noundef zeroext 0) #11
  %306 = getelementptr inbounds %struct.TransData, ptr %255, i64 0, i32 6
  %307 = load float, ptr %306, align 8, !tbaa !199
  %308 = call float @angle_compat_rad(float noundef %305, float noundef %307) #11
  br label %309

309:                                              ; preds = %302, %263
  %310 = phi float [ %308, %302 ], [ %265, %263 ]
  %311 = getelementptr inbounds %struct.EditBone, ptr %258, i64 0, i32 6
  store float %310, ptr %311, align 8, !tbaa !200
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #11
  br label %312

312:                                              ; preds = %254, %309
  %313 = add nuw nsw i32 %256, 1
  %314 = getelementptr inbounds %struct.TransData, ptr %255, i64 1
  %315 = load i32, ptr %246, align 8, !tbaa !113
  %316 = icmp slt i32 %313, %315
  br i1 %316, label %254, label %317, !llvm.loop !201

317:                                              ; preds = %312, %245, %243, %243, %243
  %318 = getelementptr inbounds %struct.bArmature, ptr %127, i64 0, i32 8
  %319 = load i32, ptr %318, align 8, !tbaa !202
  %320 = and i32 %319, 256
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %461, label %322

322:                                              ; preds = %317
  %323 = load i16, ptr %132, align 4, !tbaa !121
  %324 = icmp eq i16 %323, 3
  br i1 %324, label %327, label %325

325:                                              ; preds = %322
  %326 = load ptr, ptr %9, align 8, !tbaa !52
  call void @transform_armature_mirror_update(ptr noundef %326) #11
  br label %461

327:                                              ; preds = %322
  call void @restoreBones(ptr noundef nonnull %0) #11
  br label %461

328:                                              ; preds = %12
  %329 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  %330 = load i16, ptr %329, align 4, !tbaa !121
  %331 = icmp eq i16 %330, 3
  br i1 %331, label %333, label %332

332:                                              ; preds = %328
  tail call void @applyProject(ptr noundef %0) #11
  br label %333

333:                                              ; preds = %332, %328
  %334 = load ptr, ptr %9, align 8, !tbaa !52
  %335 = getelementptr inbounds %struct.Object, ptr %334, i64 0, i32 19
  %336 = load ptr, ptr %335, align 8, !tbaa !68
  tail call void @DAG_id_tag_update(ptr noundef %336, i16 noundef signext 0) #11
  br label %461

337:                                              ; preds = %1
  %338 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %339 = load i32, ptr %338, align 4, !tbaa !184
  %340 = and i32 %339, 4
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %385, label %342

342:                                              ; preds = %337
  %343 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %344 = load ptr, ptr %343, align 8, !tbaa !203
  %345 = icmp eq ptr %344, null
  br i1 %345, label %385, label %346

346:                                              ; preds = %342
  %347 = getelementptr inbounds %struct.Object, ptr %344, i64 0, i32 19
  %348 = load ptr, ptr %347, align 8, !tbaa !68
  %349 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 58
  %350 = load ptr, ptr %349, align 8, !tbaa !204
  %351 = icmp eq ptr %350, null
  br i1 %351, label %375, label %352

352:                                              ; preds = %346
  %353 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 53
  %354 = load ptr, ptr %353, align 8, !tbaa !51
  %355 = icmp eq ptr %354, null
  br i1 %355, label %375, label %356

356:                                              ; preds = %352
  %357 = icmp eq ptr %6, null
  br i1 %357, label %365, label %358

358:                                              ; preds = %356
  %359 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 20
  %360 = load ptr, ptr %359, align 8, !tbaa !205
  %361 = getelementptr inbounds %struct.ToolSettings, ptr %360, i64 0, i32 21
  %362 = load i16, ptr %361, align 8, !tbaa !206
  %363 = and i16 %362, 1
  %364 = icmp eq i16 %363, 0
  br i1 %364, label %375, label %369

365:                                              ; preds = %356
  %366 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 91), align 8, !tbaa !213
  %367 = and i16 %366, 1
  %368 = icmp eq i16 %367, 0
  br i1 %368, label %375, label %369

369:                                              ; preds = %365, %358
  tail call fastcc void @animrecord_check_state(ptr noundef %6, ptr noundef nonnull %344, ptr noundef nonnull %350)
  %370 = load ptr, ptr %353, align 8, !tbaa !51
  %371 = load ptr, ptr %5, align 8, !tbaa !69
  %372 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %373 = load ptr, ptr %372, align 8, !tbaa !214
  %374 = load i32, ptr %0, align 8, !tbaa !172
  tail call void @autokeyframe_pose_cb_func(ptr noundef %370, ptr noundef %371, ptr noundef %373, ptr noundef nonnull %344, i32 noundef %374, i16 noundef signext 0) #11
  br label %375

375:                                              ; preds = %369, %365, %358, %352, %346
  %376 = getelementptr inbounds %struct.bArmature, ptr %348, i64 0, i32 8
  %377 = load i32, ptr %376, align 8, !tbaa !202
  %378 = and i32 %377, 64
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %383

380:                                              ; preds = %375
  tail call void @DAG_id_tag_update(ptr noundef nonnull %344, i16 noundef signext 2) #11
  %381 = getelementptr inbounds %struct.Object, ptr %344, i64 0, i32 18
  %382 = load ptr, ptr %381, align 8, !tbaa !215
  tail call void @BIK_clear_data(ptr noundef %382) #11
  br label %461

383:                                              ; preds = %375
  %384 = load ptr, ptr %5, align 8, !tbaa !69
  tail call void @BKE_pose_where_is(ptr noundef %384, ptr noundef nonnull %344) #11
  br label %461

385:                                              ; preds = %342, %337
  %386 = icmp eq ptr %8, null
  br i1 %386, label %403, label %387

387:                                              ; preds = %385
  %388 = getelementptr inbounds %struct.Base, ptr %8, i64 0, i32 7
  %389 = load ptr, ptr %388, align 8, !tbaa !90
  %390 = getelementptr inbounds %struct.Object, ptr %389, i64 0, i32 27
  %391 = load i32, ptr %390, align 8, !tbaa !216
  %392 = and i32 %391, 32
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %403, label %394

394:                                              ; preds = %387
  %395 = tail call ptr @PE_get_current(ptr noundef %6, ptr noundef %389) #11
  %396 = icmp eq ptr %395, null
  br i1 %396, label %403, label %397

397:                                              ; preds = %394
  %398 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  %399 = load i16, ptr %398, align 4, !tbaa !121
  %400 = icmp eq i16 %399, 3
  br i1 %400, label %402, label %401

401:                                              ; preds = %397
  tail call void @applyProject(ptr noundef %0) #11
  br label %402

402:                                              ; preds = %401, %397
  tail call void @flushTransParticles(ptr noundef %0) #11
  br label %461

403:                                              ; preds = %394, %387, %385
  %404 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 3
  %405 = load i16, ptr %404, align 4, !tbaa !121
  %406 = icmp eq i16 %405, 3
  br i1 %406, label %408, label %407

407:                                              ; preds = %403
  tail call void @applyProject(ptr noundef %0) #11
  br label %408

408:                                              ; preds = %407, %403
  %409 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %410 = load i32, ptr %409, align 8, !tbaa !113
  %411 = icmp sgt i32 %410, 0
  br i1 %411, label %412, label %461

412:                                              ; preds = %408
  %413 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %414 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 58
  %415 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 53
  %416 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  br label %422

417:                                              ; preds = %460
  %418 = add nuw nsw i64 %423, 1
  %419 = load i32, ptr %409, align 8, !tbaa !113
  %420 = sext i32 %419 to i64
  %421 = icmp slt i64 %418, %420
  br i1 %421, label %422, label %461, !llvm.loop !217

422:                                              ; preds = %412, %417
  %423 = phi i64 [ 0, %412 ], [ %418, %417 ]
  %424 = load ptr, ptr %413, align 8, !tbaa !143
  %425 = getelementptr inbounds %struct.TransData, ptr %424, i64 %423, i32 11
  %426 = load ptr, ptr %425, align 8, !tbaa !218
  %427 = getelementptr inbounds %struct.TransData, ptr %424, i64 %423, i32 16
  %428 = load i32, ptr %427, align 8, !tbaa !185
  %429 = and i32 %428, 4
  %430 = icmp eq i32 %429, 0
  %431 = and i32 %428, 2052
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %433, label %460

433:                                              ; preds = %422
  %434 = load ptr, ptr %414, align 8, !tbaa !204
  %435 = icmp eq ptr %434, null
  br i1 %435, label %455, label %436

436:                                              ; preds = %433
  %437 = load ptr, ptr %5, align 8, !tbaa !69
  %438 = icmp eq ptr %437, null
  br i1 %438, label %446, label %439

439:                                              ; preds = %436
  %440 = getelementptr inbounds %struct.Scene, ptr %437, i64 0, i32 20
  %441 = load ptr, ptr %440, align 8, !tbaa !205
  %442 = getelementptr inbounds %struct.ToolSettings, ptr %441, i64 0, i32 21
  %443 = load i16, ptr %442, align 8, !tbaa !206
  %444 = and i16 %443, 1
  %445 = icmp eq i16 %444, 0
  br i1 %445, label %455, label %450

446:                                              ; preds = %436
  %447 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 91), align 8, !tbaa !213
  %448 = and i16 %447, 1
  %449 = icmp eq i16 %448, 0
  br i1 %449, label %455, label %450

450:                                              ; preds = %446, %439
  tail call fastcc void @animrecord_check_state(ptr noundef %437, ptr noundef %426, ptr noundef nonnull %434)
  %451 = load ptr, ptr %415, align 8, !tbaa !51
  %452 = load ptr, ptr %5, align 8, !tbaa !69
  %453 = load ptr, ptr %416, align 8, !tbaa !214
  %454 = load i32, ptr %0, align 8, !tbaa !172
  tail call void @autokeyframe_ob_cb_func(ptr noundef %451, ptr noundef %452, ptr noundef %453, ptr noundef %426, i32 noundef %454) #11
  br label %455

455:                                              ; preds = %450, %446, %439, %433
  tail call void @DAG_id_tag_update(ptr noundef %426, i16 noundef signext 1) #11
  %456 = load i32, ptr %338, align 4, !tbaa !184
  %457 = and i32 %456, 8
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %460, label %459

459:                                              ; preds = %455
  tail call void @DAG_id_tag_update(ptr noundef %426, i16 noundef signext 2) #11
  br label %460

460:                                              ; preds = %455, %459, %422
  br i1 %430, label %417, label %461

461:                                              ; preds = %38, %34, %460, %417, %32, %33, %408, %380, %383, %317, %327, %325, %49, %60, %402, %121, %333
  ret void
}

declare void @flushTransPaintCurve(ptr noundef) local_unnamed_addr #2

declare void @flushTransNodes(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @drawLine(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, i16 noundef signext %4) local_unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x i8], align 1
  %9 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %9) #11
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %11 = load i8, ptr %10, align 8, !tbaa !50
  %12 = icmp eq i8 %11, 1
  br i1 %12, label %13, label %48

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %15 = load ptr, ptr %14, align 8, !tbaa !214
  tail call void @glPushMatrix() #11
  %16 = load float, ptr %2, align 4, !tbaa !48
  %17 = getelementptr inbounds float, ptr %2, i64 1
  %18 = load float, ptr %17, align 4, !tbaa !48
  %19 = getelementptr inbounds float, ptr %2, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !48
  %21 = getelementptr inbounds %struct.View3D, ptr %15, i64 0, i32 33
  %22 = load float, ptr %21, align 8, !tbaa !219
  %23 = fmul float %16, %22
  %24 = fmul float %18, %22
  %25 = fmul float %20, %22
  %26 = load float, ptr %1, align 4, !tbaa !48
  %27 = fsub float %26, %23
  store float %27, ptr %7, align 4, !tbaa !48
  %28 = getelementptr inbounds float, ptr %1, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !48
  %30 = fsub float %29, %24
  %31 = getelementptr inbounds float, ptr %7, i64 1
  store float %30, ptr %31, align 4, !tbaa !48
  %32 = getelementptr inbounds float, ptr %1, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !48
  %34 = fsub float %33, %25
  %35 = getelementptr inbounds float, ptr %7, i64 2
  store float %34, ptr %35, align 4, !tbaa !48
  %36 = fadd float %26, %23
  store float %36, ptr %6, align 4, !tbaa !48
  %37 = fadd float %24, %29
  %38 = getelementptr inbounds float, ptr %6, i64 1
  store float %37, ptr %38, align 4, !tbaa !48
  %39 = fadd float %25, %33
  %40 = getelementptr inbounds float, ptr %6, i64 2
  store float %39, ptr %40, align 4, !tbaa !48
  %41 = and i16 %4, 1
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %13
  %44 = getelementptr inbounds [3 x i8], ptr %8, i64 0, i64 2
  store i8 -36, ptr %44, align 1, !tbaa !221
  %45 = getelementptr inbounds [3 x i8], ptr %8, i64 0, i64 1
  store i8 -36, ptr %45, align 1, !tbaa !221
  store i8 -36, ptr %8, align 1, !tbaa !221
  br label %47

46:                                               ; preds = %13
  call void @UI_GetThemeColor3ubv(i32 noundef 24, ptr noundef nonnull %8) #11
  br label %47

47:                                               ; preds = %46, %43
  call void @UI_make_axis_color(ptr noundef nonnull %8, ptr noundef nonnull %9, i8 noundef zeroext %3) #11
  call void @glColor3ubv(ptr noundef nonnull %9) #11
  call void @setlinestyle(i32 noundef 0) #11
  call void @glBegin(i32 noundef 3) #11
  call void @glVertex3fv(ptr noundef nonnull %6) #11
  call void @glVertex3fv(ptr noundef nonnull %7) #11
  call void @glEnd() #11
  call void @glPopMatrix() #11
  br label %48

48:                                               ; preds = %47, %5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  ret void
}

declare void @glPushMatrix() local_unnamed_addr #2

declare void @UI_GetThemeColor3ubv(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_make_axis_color(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @glColor3ubv(ptr noundef) local_unnamed_addr #2

declare void @setlinestyle(i32 noundef) local_unnamed_addr #2

declare void @glBegin(i32 noundef) local_unnamed_addr #2

declare void @glVertex3fv(ptr noundef) local_unnamed_addr #2

declare void @glEnd() local_unnamed_addr #2

declare void @glPopMatrix() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @resetTransModal(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8, !tbaa !172
  switch i32 %2, label %5 [
    i32 28, label %3
    i32 29, label %4
  ]

3:                                                ; preds = %1
  tail call void @freeEdgeSlideVerts(ptr noundef nonnull %0) #11
  br label %5

4:                                                ; preds = %1
  tail call void @freeVertSlideVerts(ptr noundef nonnull %0) #11
  br label %5

5:                                                ; preds = %1, %4, %3
  ret void
}

declare void @freeEdgeSlideVerts(ptr noundef) local_unnamed_addr #2

declare void @freeVertSlideVerts(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @resetTransRestrictions(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !184
  %4 = and i32 %3, -1793
  store i32 %4, ptr %2, align 4, !tbaa !184
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @initTransInfo(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef readonly %3) local_unnamed_addr #0 {
  %5 = tail call ptr @CTX_data_scene(ptr noundef %0) #11
  %6 = tail call ptr @CTX_data_tool_settings(ptr noundef %0) #11
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %8 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  %9 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #11
  %10 = tail call ptr @CTX_data_active_object(ptr noundef %0) #11
  %11 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 56
  store ptr %5, ptr %11, align 8, !tbaa !69
  %12 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  store ptr %8, ptr %12, align 8, !tbaa !58
  %13 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 55
  store ptr %7, ptr %13, align 8, !tbaa !94
  %14 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 63
  store ptr %9, ptr %14, align 8, !tbaa !52
  %15 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 57
  store ptr %6, ptr %15, align 8, !tbaa !222
  %16 = icmp eq ptr %2, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !223
  br label %20

20:                                               ; preds = %4, %17
  %21 = phi ptr [ %19, %17 ], [ null, %4 ]
  %22 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 60
  store ptr %21, ptr %22, align 8, !tbaa !225
  %23 = icmp eq ptr %9, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 64
  %26 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 47
  tail call void @copy_m3_m4(ptr noundef nonnull %25, ptr noundef nonnull %26) #11
  tail call void @normalize_m3(ptr noundef nonnull %25) #11
  br label %27

27:                                               ; preds = %24, %20
  %28 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  %29 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 34
  store i8 0, ptr %29, align 1, !tbaa !226
  %30 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  store i32 0, ptr %30, align 4, !tbaa !184
  %31 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  store i32 1, ptr %31, align 8, !tbaa !227
  %32 = icmp eq ptr %3, null
  %33 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 22
  br i1 %32, label %43, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 6
  %36 = load i32, ptr %35, align 4, !tbaa !228
  store i32 %36, ptr %33, align 4, !tbaa !228
  %37 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 6, i64 1
  %38 = load i32, ptr %37, align 4, !tbaa !228
  %39 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 22, i64 1
  store i32 %38, ptr %39, align 4, !tbaa !228
  %40 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 2
  %41 = load i16, ptr %40, align 8, !tbaa !229
  %42 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 23
  store i16 %41, ptr %42, align 8, !tbaa !231
  br label %45

43:                                               ; preds = %27
  store i32 0, ptr %33, align 8, !tbaa !228
  %44 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 22, i64 1
  store i32 0, ptr %44, align 4, !tbaa !228
  br label %45

45:                                               ; preds = %43, %34
  %46 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 22
  %47 = load i32, ptr %46, align 8, !tbaa !228
  %48 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 13, i32 6
  store i32 %47, ptr %48, align 4, !tbaa !228
  %49 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 22, i64 1
  %50 = load i32, ptr %49, align 4, !tbaa !228
  %51 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 13, i32 6, i64 1
  store i32 %50, ptr %51, align 4, !tbaa !228
  %52 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 61
  store i32 %47, ptr %52, align 8, !tbaa !228
  %53 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 61, i64 1
  store i32 %50, ptr %53, align 4, !tbaa !228
  %54 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 7
  %55 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 5
  store float 0.000000e+00, ptr %55, align 4, !tbaa !232
  %56 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 35
  store float 0.000000e+00, ptr %56, align 4, !tbaa !48
  %57 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 35, i64 1
  store float 0.000000e+00, ptr %57, align 4, !tbaa !48
  %58 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 35, i64 2
  store float 0.000000e+00, ptr %58, align 4, !tbaa !48
  %59 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 20
  store float 0.000000e+00, ptr %59, align 4, !tbaa !48
  %60 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 20, i64 1
  store float 0.000000e+00, ptr %60, align 4, !tbaa !48
  %61 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 20, i64 2
  store float 0.000000e+00, ptr %61, align 4, !tbaa !48
  %62 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %54, i8 0, i64 20, i1 false)
  tail call void @unit_m3(ptr noundef nonnull %62) #11
  br i1 %32, label %66, label %63

63:                                               ; preds = %45
  %64 = load i32, ptr %30, align 4, !tbaa !184
  %65 = or i32 %64, 2097152
  store i32 %65, ptr %30, align 4, !tbaa !184
  br label %66

66:                                               ; preds = %63, %45
  %67 = load i32, ptr %1, align 8, !tbaa !172
  switch i32 %67, label %72 [
    i32 12, label %68
    i32 26, label %68
  ]

68:                                               ; preds = %66, %66
  %69 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %70 = load i32, ptr %69, align 8, !tbaa !49
  %71 = or i32 %70, 2
  store i32 %71, ptr %69, align 8, !tbaa !49
  br label %72

72:                                               ; preds = %66, %68
  %73 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 51
  store i8 0, ptr %73, align 4, !tbaa !233
  br i1 %16, label %88, label %74

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 7
  %76 = load ptr, ptr %75, align 8, !tbaa !234
  %77 = tail call ptr @RNA_struct_find_property(ptr noundef %76, ptr noundef nonnull @.str) #11
  %78 = icmp eq ptr %77, null
  br i1 %78, label %88, label %79

79:                                               ; preds = %74
  %80 = load ptr, ptr %75, align 8, !tbaa !234
  %81 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %80, ptr noundef nonnull %77) #11
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %75, align 8, !tbaa !234
  %85 = tail call i32 @RNA_property_boolean_get(ptr noundef %84, ptr noundef nonnull %77) #11
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  store i8 1, ptr %73, align 4, !tbaa !233
  br label %88

88:                                               ; preds = %83, %87, %79, %74, %72
  %89 = icmp eq ptr %8, null
  br i1 %89, label %99, label %90

90:                                               ; preds = %88
  %91 = icmp eq ptr %7, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %90
  %93 = getelementptr inbounds %struct.ScrArea, ptr %8, i64 0, i32 8
  %94 = load i8, ptr %93, align 8, !tbaa !97
  %95 = icmp eq i8 %94, 1
  br i1 %95, label %99, label %96

96:                                               ; preds = %92, %90
  %97 = getelementptr inbounds %struct.ScrArea, ptr %8, i64 0, i32 8
  %98 = load i8, ptr %97, align 8, !tbaa !97
  br label %99

99:                                               ; preds = %92, %88, %96
  %100 = phi i8 [ %98, %96 ], [ 0, %88 ], [ 0, %92 ]
  %101 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 33
  store i8 %100, ptr %101, align 8, !tbaa !50
  %102 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 33
  switch i8 %100, label %294 [
    i8 1, label %103
    i8 6, label %226
    i8 16, label %259
    i8 2, label %263
    i8 20, label %272
  ]

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.ScrArea, ptr %8, i64 0, i32 19
  %105 = load ptr, ptr %104, align 8, !tbaa !59
  %106 = tail call ptr @CTX_wm_manager(ptr noundef %0) #11
  %107 = tail call ptr @ED_screen_animation_playing(ptr noundef %106) #11
  %108 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 52
  store ptr %105, ptr %108, align 8, !tbaa !214
  %109 = icmp eq ptr %107, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.bScreen, ptr %107, i64 0, i32 21
  %112 = load ptr, ptr %111, align 8, !tbaa !235
  br label %113

113:                                              ; preds = %103, %110
  %114 = phi ptr [ %112, %110 ], [ null, %103 ]
  %115 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 58
  store ptr %114, ptr %115, align 8, !tbaa !204
  %116 = load i32, ptr %30, align 4, !tbaa !184
  %117 = and i32 %116, 2097152
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.View3D, ptr %105, i64 0, i32 40
  %121 = load i8, ptr %120, align 1, !tbaa !237
  %122 = zext i8 %121 to i16
  %123 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 44
  store i16 %122, ptr %123, align 4, !tbaa !238
  store i8 0, ptr %120, align 1, !tbaa !237
  br label %124

124:                                              ; preds = %119, %113
  %125 = getelementptr inbounds %struct.View3D, ptr %105, i64 0, i32 28
  %126 = load i16, ptr %125, align 8, !tbaa !239
  %127 = and i16 %126, 1024
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %124
  %130 = or i32 %116, 16384
  store i32 %130, ptr %30, align 4, !tbaa !184
  br label %131

131:                                              ; preds = %129, %124
  %132 = getelementptr inbounds %struct.View3D, ptr %105, i64 0, i32 27
  %133 = load i16, ptr %132, align 2, !tbaa !240
  %134 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 32
  store i16 %133, ptr %134, align 2, !tbaa !241
  %135 = load i32, ptr %1, align 8, !tbaa !172
  %136 = icmp eq i32 %135, 7
  %137 = select i1 %136, i16 1, i16 %133
  store i16 %137, ptr %134, align 2
  br i1 %16, label %158, label %138

138:                                              ; preds = %131
  %139 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 7
  %140 = load ptr, ptr %139, align 8, !tbaa !234
  %141 = tail call ptr @RNA_struct_find_property(ptr noundef %140, ptr noundef nonnull @.str.1) #11
  %142 = icmp eq ptr %141, null
  br i1 %142, label %158, label %143

143:                                              ; preds = %138
  %144 = load ptr, ptr %139, align 8, !tbaa !234
  %145 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %144, ptr noundef nonnull %141) #11
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %158, label %147

147:                                              ; preds = %143
  %148 = load ptr, ptr %139, align 8, !tbaa !234
  %149 = tail call i32 @RNA_property_enum_get(ptr noundef %148, ptr noundef nonnull %141) #11
  %150 = trunc i32 %149 to i16
  %151 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 43
  store i16 %150, ptr %151, align 2, !tbaa !242
  %152 = shl i32 %149, 16
  %153 = ashr exact i32 %152, 16
  %154 = tail call i32 @BIF_countTransformOrientation(ptr noundef %0) #11
  %155 = add nsw i32 %154, 5
  %156 = icmp slt i32 %153, %155
  br i1 %156, label %163, label %157

157:                                              ; preds = %147
  store i16 0, ptr %151, align 2, !tbaa !242
  br label %163

158:                                              ; preds = %143, %138, %131
  %159 = getelementptr inbounds %struct.View3D, ptr %105, i64 0, i32 41
  %160 = load i8, ptr %159, align 4, !tbaa !243
  %161 = zext i8 %160 to i16
  %162 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 43
  store i16 %161, ptr %162, align 2, !tbaa !242
  br label %163

163:                                              ; preds = %147, %157, %158
  %164 = load i16, ptr %134, align 2, !tbaa !241
  %165 = icmp eq i16 %164, 2
  br i1 %165, label %166, label %178

166:                                              ; preds = %163
  %167 = load ptr, ptr %15, align 8, !tbaa !222
  %168 = getelementptr inbounds %struct.ToolSettings, ptr %167, i64 0, i32 8
  %169 = load i16, ptr %168, align 2, !tbaa !244
  %170 = and i16 %169, 4
  %171 = icmp eq i16 %170, 0
  br i1 %171, label %178, label %172

172:                                              ; preds = %166
  %173 = load i32, ptr %1, align 8, !tbaa !172
  switch i32 %173, label %178 [
    i32 2, label %174
    i32 3, label %174
    i32 10, label %174
  ]

174:                                              ; preds = %172, %172, %172
  %175 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %176 = load i32, ptr %175, align 8, !tbaa !49
  %177 = or i32 %176, 4
  store i32 %177, ptr %175, align 8, !tbaa !49
  br label %178

178:                                              ; preds = %172, %174, %166, %163
  %179 = icmp eq ptr %10, null
  br i1 %179, label %199, label %180

180:                                              ; preds = %178
  %181 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 27
  %182 = load i32, ptr %181, align 8, !tbaa !216
  %183 = and i32 %182, 30
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %199, label %185

185:                                              ; preds = %180
  %186 = tail call ptr @BKE_paint_get_active_from_context(ptr noundef %0) #11
  %187 = icmp eq ptr %186, null
  br i1 %187, label %199, label %188

188:                                              ; preds = %185
  %189 = load ptr, ptr %186, align 8, !tbaa !245
  %190 = icmp eq ptr %189, null
  br i1 %190, label %199, label %191

191:                                              ; preds = %188
  %192 = getelementptr inbounds %struct.Brush, ptr %189, i64 0, i32 16
  %193 = load i32, ptr %192, align 8, !tbaa !246
  %194 = icmp sgt i32 %193, -1
  br i1 %194, label %199, label %195

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %197 = load i32, ptr %196, align 8, !tbaa !49
  %198 = or i32 %197, 256
  store i32 %198, ptr %196, align 8, !tbaa !49
  br label %199

199:                                              ; preds = %185, %188, %191, %195, %180, %178
  br i1 %16, label %314, label %200

200:                                              ; preds = %199
  %201 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 7
  %202 = load ptr, ptr %201, align 8, !tbaa !234
  %203 = tail call ptr @RNA_struct_find_property(ptr noundef %202, ptr noundef nonnull @.str.2) #11
  %204 = icmp eq ptr %203, null
  br i1 %204, label %300, label %205

205:                                              ; preds = %200
  %206 = load ptr, ptr %201, align 8, !tbaa !234
  %207 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %206, ptr noundef nonnull %203) #11
  %208 = icmp eq i8 %207, 0
  %209 = load ptr, ptr %201, align 8, !tbaa !234
  br i1 %208, label %220, label %210

210:                                              ; preds = %205
  %211 = tail call i32 @RNA_property_boolean_get(ptr noundef %209, ptr noundef nonnull %203) #11
  %212 = icmp eq i32 %211, 0
  %213 = load ptr, ptr %15, align 8, !tbaa !222
  %214 = getelementptr inbounds %struct.ToolSettings, ptr %213, i64 0, i32 10
  %215 = load i8, ptr %214, align 1, !tbaa !250
  br i1 %212, label %218, label %216

216:                                              ; preds = %210
  %217 = or i8 %215, 4
  store i8 %217, ptr %214, align 1, !tbaa !250
  br label %300

218:                                              ; preds = %210
  %219 = and i8 %215, -5
  store i8 %219, ptr %214, align 1, !tbaa !250
  br label %300

220:                                              ; preds = %205
  %221 = load ptr, ptr %15, align 8, !tbaa !222
  %222 = getelementptr inbounds %struct.ToolSettings, ptr %221, i64 0, i32 10
  %223 = load i8, ptr %222, align 1, !tbaa !250
  %224 = and i8 %223, 4
  %225 = zext nneg i8 %224 to i32
  tail call void @RNA_property_boolean_set(ptr noundef %209, ptr noundef nonnull %203, i32 noundef %225) #11
  br label %300

226:                                              ; preds = %99
  %227 = getelementptr inbounds %struct.ScrArea, ptr %8, i64 0, i32 19
  %228 = load ptr, ptr %227, align 8, !tbaa !59
  %229 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 2
  %230 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 52
  store ptr %229, ptr %230, align 8, !tbaa !214
  %231 = getelementptr inbounds %struct.SpaceImage, ptr %228, i64 0, i32 25
  %232 = load i8, ptr %231, align 1, !tbaa !251
  %233 = zext i8 %232 to i16
  %234 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 32
  store i16 %233, ptr %234, align 2, !tbaa !241
  %235 = load ptr, ptr %14, align 8, !tbaa !52
  %236 = tail call zeroext i8 @ED_space_image_show_uvedit(ptr noundef %228, ptr noundef %235) #11
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %238, label %300

238:                                              ; preds = %226
  %239 = getelementptr inbounds %struct.SpaceImage, ptr %228, i64 0, i32 17
  %240 = load i8, ptr %239, align 4, !tbaa !252
  switch i8 %240, label %300 [
    i8 2, label %241
    i8 1, label %245
  ]

241:                                              ; preds = %238
  %242 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %243 = load i32, ptr %242, align 8, !tbaa !49
  %244 = or i32 %243, 128
  store i32 %244, ptr %242, align 8, !tbaa !49
  br label %300

245:                                              ; preds = %238
  %246 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 20
  %247 = load ptr, ptr %246, align 8, !tbaa !205
  %248 = getelementptr inbounds %struct.ToolSettings, ptr %247, i64 0, i32 17
  %249 = load ptr, ptr %248, align 8, !tbaa !245
  %250 = icmp eq ptr %249, null
  br i1 %250, label %300, label %251

251:                                              ; preds = %245
  %252 = getelementptr inbounds %struct.Brush, ptr %249, i64 0, i32 16
  %253 = load i32, ptr %252, align 8, !tbaa !246
  %254 = icmp sgt i32 %253, -1
  br i1 %254, label %300, label %255

255:                                              ; preds = %251
  %256 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %257 = load i32, ptr %256, align 8, !tbaa !49
  %258 = or i32 %257, 256
  store i32 %258, ptr %256, align 8, !tbaa !49
  br label %300

259:                                              ; preds = %99
  %260 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 2
  %261 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 52
  store ptr %260, ptr %261, align 8, !tbaa !214
  %262 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 32
  store i16 0, ptr %262, align 2, !tbaa !241
  br label %300

263:                                              ; preds = %99
  %264 = getelementptr inbounds %struct.ScrArea, ptr %8, i64 0, i32 19
  %265 = load ptr, ptr %264, align 8, !tbaa !59
  %266 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 2
  %267 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 52
  store ptr %266, ptr %267, align 8, !tbaa !214
  %268 = getelementptr inbounds %struct.SpaceIpo, ptr %265, i64 0, i32 13
  %269 = load i32, ptr %268, align 4, !tbaa !253
  %270 = trunc i32 %269 to i16
  %271 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 32
  store i16 %270, ptr %271, align 2, !tbaa !241
  br label %300

272:                                              ; preds = %99
  %273 = getelementptr inbounds %struct.ScrArea, ptr %8, i64 0, i32 19
  %274 = load ptr, ptr %273, align 8, !tbaa !59
  %275 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 2
  %276 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 52
  store ptr %275, ptr %276, align 8, !tbaa !214
  %277 = getelementptr inbounds %struct.SpaceClip, ptr %274, i64 0, i32 25
  %278 = load i32, ptr %277, align 8, !tbaa !254
  %279 = trunc i32 %278 to i16
  %280 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 32
  store i16 %279, ptr %280, align 2, !tbaa !241
  %281 = tail call zeroext i8 @ED_space_clip_check_show_trackedit(ptr noundef %274) #11
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %287, label %283

283:                                              ; preds = %272
  %284 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %285 = load i32, ptr %284, align 8, !tbaa !49
  %286 = or i32 %285, 64
  store i32 %286, ptr %284, align 8, !tbaa !49
  br label %300

287:                                              ; preds = %272
  %288 = tail call zeroext i8 @ED_space_clip_check_show_maskedit(ptr noundef %274) #11
  %289 = icmp eq i8 %288, 0
  br i1 %289, label %300, label %290

290:                                              ; preds = %287
  %291 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %292 = load i32, ptr %291, align 8, !tbaa !49
  %293 = or i32 %292, 128
  store i32 %293, ptr %291, align 8, !tbaa !49
  br label %300

294:                                              ; preds = %99
  %295 = icmp eq ptr %7, null
  %296 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 2
  %297 = select i1 %295, ptr null, ptr %296
  %298 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 52
  store ptr %297, ptr %298, align 8, !tbaa !214
  %299 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 32
  store i16 0, ptr %299, align 2, !tbaa !241
  br label %300

300:                                              ; preds = %283, %290, %287, %226, %241, %238, %255, %251, %245, %200, %216, %218, %220, %263, %294, %259
  br i1 %16, label %314, label %301

301:                                              ; preds = %300
  %302 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 7
  %303 = load ptr, ptr %302, align 8, !tbaa !234
  %304 = tail call ptr @RNA_struct_find_property(ptr noundef %303, ptr noundef nonnull @.str.3) #11
  %305 = icmp eq ptr %304, null
  br i1 %305, label %314, label %306

306:                                              ; preds = %301
  %307 = load ptr, ptr %302, align 8, !tbaa !234
  %308 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %307, ptr noundef nonnull %304) #11
  %309 = icmp eq i8 %308, 0
  br i1 %309, label %314, label %310

310:                                              ; preds = %306
  %311 = load ptr, ptr %302, align 8, !tbaa !234
  %312 = tail call i32 @RNA_property_boolean_get(ptr noundef %311, ptr noundef nonnull %304) #11
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %321, label %318

314:                                              ; preds = %199, %306, %301, %300
  %315 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !255
  %316 = and i32 %315, 2097152
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %321, label %318

318:                                              ; preds = %314, %310
  %319 = load i32, ptr %30, align 4, !tbaa !184
  %320 = or i32 %319, 8388608
  store i32 %320, ptr %30, align 4, !tbaa !184
  br label %321

321:                                              ; preds = %318, %314, %310
  br i1 %16, label %335, label %322

322:                                              ; preds = %321
  %323 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 7
  %324 = load ptr, ptr %323, align 8, !tbaa !234
  %325 = tail call ptr @RNA_struct_find_property(ptr noundef %324, ptr noundef nonnull @.str.4) #11
  %326 = icmp eq ptr %325, null
  br i1 %326, label %335, label %327

327:                                              ; preds = %322
  %328 = load ptr, ptr %323, align 8, !tbaa !234
  %329 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %328, ptr noundef nonnull %325) #11
  %330 = icmp eq i8 %329, 0
  br i1 %330, label %335, label %331

331:                                              ; preds = %327
  %332 = load ptr, ptr %323, align 8, !tbaa !234
  %333 = tail call i32 @RNA_property_boolean_get(ptr noundef %332, ptr noundef nonnull %325) #11
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %356, label %352

335:                                              ; preds = %327, %322, %321
  %336 = load i8, ptr %102, align 8, !tbaa !50
  %337 = icmp eq i8 %336, 1
  br i1 %337, label %338, label %356

338:                                              ; preds = %335
  %339 = load ptr, ptr %14, align 8, !tbaa !52
  %340 = icmp eq ptr %339, null
  br i1 %340, label %356, label %341

341:                                              ; preds = %338
  %342 = getelementptr inbounds %struct.Object, ptr %339, i64 0, i32 3
  %343 = load i16, ptr %342, align 8, !tbaa !53
  %344 = icmp eq i16 %343, 1
  br i1 %344, label %345, label %356

345:                                              ; preds = %341
  %346 = getelementptr inbounds %struct.Object, ptr %339, i64 0, i32 19
  %347 = load ptr, ptr %346, align 8, !tbaa !68
  %348 = getelementptr inbounds %struct.Mesh, ptr %347, i64 0, i32 46
  %349 = load i8, ptr %348, align 1, !tbaa !256
  %350 = and i8 %349, 1
  %351 = icmp eq i8 %350, 0
  br i1 %351, label %356, label %352

352:                                              ; preds = %345, %331
  %353 = load i32, ptr %30, align 4, !tbaa !184
  %354 = or i32 %353, 524288
  store i32 %354, ptr %30, align 4, !tbaa !184
  %355 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 46
  store i16 1, ptr %355, align 8, !tbaa !259
  br label %356

356:                                              ; preds = %352, %335, %345, %341, %338, %331
  br i1 %16, label %464, label %357

357:                                              ; preds = %356
  %358 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 7
  %359 = load ptr, ptr %358, align 8, !tbaa !234
  %360 = tail call ptr @RNA_struct_find_property(ptr noundef %359, ptr noundef nonnull @.str.5) #11
  %361 = icmp eq ptr %360, null
  br i1 %361, label %464, label %362

362:                                              ; preds = %357
  %363 = load ptr, ptr %358, align 8, !tbaa !234
  %364 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %363, ptr noundef nonnull %360) #11
  %365 = icmp eq i8 %364, 0
  br i1 %365, label %379, label %366

366:                                              ; preds = %362
  %367 = load ptr, ptr %358, align 8, !tbaa !234
  %368 = tail call i32 @RNA_property_enum_get(ptr noundef %367, ptr noundef nonnull %360) #11
  %369 = add i32 %368, -1
  %370 = icmp ult i32 %369, 3
  br i1 %370, label %371, label %375

371:                                              ; preds = %366
  %372 = zext nneg i32 %369 to i64
  %373 = getelementptr inbounds [3 x i32], ptr @switch.table.initTransInfo.18, i64 0, i64 %372
  %374 = load i32, ptr %373, align 4
  br label %375

375:                                              ; preds = %366, %371
  %376 = phi i32 [ %374, %371 ], [ 0, %366 ]
  %377 = load i32, ptr %30, align 4, !tbaa !184
  %378 = or i32 %377, %376
  br label %423

379:                                              ; preds = %362
  %380 = load i32, ptr %30, align 4, !tbaa !184
  %381 = and i32 %380, 2097152
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %425, label %383

383:                                              ; preds = %379
  %384 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %385 = load i32, ptr %384, align 8, !tbaa !49
  %386 = and i32 %385, 4
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %425

388:                                              ; preds = %383
  %389 = load ptr, ptr %14, align 8, !tbaa !52
  %390 = icmp eq ptr %389, null
  br i1 %390, label %403, label %391

391:                                              ; preds = %388
  %392 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 56
  %393 = load i16, ptr %392, align 2, !tbaa !260
  %394 = add i16 %393, -1
  %395 = icmp ult i16 %394, 3
  br i1 %395, label %396, label %400

396:                                              ; preds = %391
  %397 = zext nneg i16 %394 to i64
  %398 = getelementptr inbounds [3 x i32], ptr @switch.table.initTransInfo.18, i64 0, i64 %397
  %399 = load i32, ptr %398, align 4
  br label %400

400:                                              ; preds = %391, %396
  %401 = phi i32 [ %399, %396 ], [ 0, %391 ]
  %402 = or i32 %401, %380
  br label %423

403:                                              ; preds = %388
  %404 = and i32 %385, 128
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %417, label %406

406:                                              ; preds = %403
  %407 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 59
  %408 = load i8, ptr %407, align 1, !tbaa !261
  %409 = icmp eq i8 %408, 0
  br i1 %409, label %425, label %410

410:                                              ; preds = %406
  %411 = or i32 %380, 2048
  store i32 %411, ptr %30, align 4, !tbaa !184
  %412 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 56
  %413 = load i16, ptr %412, align 2, !tbaa !260
  %414 = icmp eq i16 %413, 2
  br i1 %414, label %415, label %425

415:                                              ; preds = %410
  %416 = or i32 %380, 6144
  br label %423

417:                                              ; preds = %403
  %418 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 58
  %419 = load i8, ptr %418, align 2, !tbaa !262
  %420 = icmp eq i8 %419, 0
  br i1 %420, label %425, label %421

421:                                              ; preds = %417
  %422 = or i32 %380, 2048
  br label %423

423:                                              ; preds = %400, %421, %415, %375
  %424 = phi i32 [ %378, %375 ], [ %416, %415 ], [ %422, %421 ], [ %402, %400 ]
  store i32 %424, ptr %30, align 4, !tbaa !184
  br label %425

425:                                              ; preds = %423, %383, %410, %406, %417, %379
  %426 = load ptr, ptr %358, align 8, !tbaa !234
  %427 = tail call ptr @RNA_struct_find_property(ptr noundef %426, ptr noundef nonnull @.str.6) #11
  %428 = icmp eq ptr %427, null
  br i1 %428, label %436, label %429

429:                                              ; preds = %425
  %430 = load ptr, ptr %358, align 8, !tbaa !234
  %431 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %430, ptr noundef nonnull %427) #11
  %432 = icmp eq i8 %431, 0
  br i1 %432, label %436, label %433

433:                                              ; preds = %429
  %434 = load ptr, ptr %358, align 8, !tbaa !234
  %435 = tail call float @RNA_property_float_get(ptr noundef %434, ptr noundef nonnull %427) #11
  br label %439

436:                                              ; preds = %429, %425
  %437 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 19
  %438 = load float, ptr %437, align 8, !tbaa !263
  br label %439

439:                                              ; preds = %436, %433
  %440 = phi float [ %438, %436 ], [ %435, %433 ]
  %441 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 18
  store float %440, ptr %441, align 4, !tbaa !264
  %442 = fcmp ugt float %440, 0x3EE4F8B580000000
  br i1 %442, label %447, label %443

443:                                              ; preds = %439
  %444 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 18
  %445 = fpext float %440 to double
  %446 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %445)
  store float 1.000000e+00, ptr %444, align 4, !tbaa !264
  br label %447

447:                                              ; preds = %439, %443
  %448 = load ptr, ptr %358, align 8, !tbaa !234
  %449 = tail call ptr @RNA_struct_find_property(ptr noundef %448, ptr noundef nonnull @.str.8) #11
  %450 = icmp eq ptr %449, null
  br i1 %450, label %460, label %451

451:                                              ; preds = %447
  %452 = load ptr, ptr %358, align 8, !tbaa !234
  %453 = tail call zeroext i8 @RNA_property_is_set(ptr noundef %452, ptr noundef nonnull %449) #11
  %454 = icmp eq i8 %453, 0
  br i1 %454, label %460, label %455

455:                                              ; preds = %451
  %456 = load ptr, ptr %358, align 8, !tbaa !234
  %457 = tail call i32 @RNA_property_enum_get(ptr noundef %456, ptr noundef nonnull %449) #11
  %458 = trunc i32 %457 to i16
  %459 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 45
  store i16 %458, ptr %459, align 2, !tbaa !265
  br label %468

460:                                              ; preds = %451, %447
  %461 = getelementptr inbounds %struct.ToolSettings, ptr %6, i64 0, i32 57
  %462 = load i16, ptr %461, align 8, !tbaa !266
  %463 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 45
  store i16 %462, ptr %463, align 2, !tbaa !265
  br label %468

464:                                              ; preds = %357, %356
  %465 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %466 = load i32, ptr %465, align 8, !tbaa !49
  %467 = or i32 %466, 4
  store i32 %467, ptr %465, align 8, !tbaa !49
  br label %468

468:                                              ; preds = %455, %460, %464
  tail call void @setTransformViewMatrices(ptr noundef nonnull %1) #11
  %469 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 15
  tail call void @initNumInput(ptr noundef nonnull %469) #11
  ret void
}

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_tool_settings(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @normalize_m3(ptr noundef) local_unnamed_addr #2

declare void @unit_m3(ptr noundef) local_unnamed_addr #2

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_property_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ED_screen_animation_playing(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_property_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BIF_countTransformOrientation(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_paint_get_active_from_context(ptr noundef) local_unnamed_addr #2

declare void @RNA_property_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @ED_space_image_show_uvedit(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_space_clip_check_show_trackedit(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_space_clip_check_show_maskedit(ptr noundef) local_unnamed_addr #2

declare float @RNA_property_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare void @setTransformViewMatrices(ptr noundef) local_unnamed_addr #2

declare void @initNumInput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @postTrans(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 66
  %4 = load ptr, ptr %3, align 8, !tbaa !267
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 55
  %8 = load ptr, ptr %7, align 8, !tbaa !94
  %9 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !268
  tail call void @ED_region_draw_cb_exit(ptr noundef %10, ptr noundef nonnull %4) #11
  br label %11

11:                                               ; preds = %6, %2
  %12 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 65
  %13 = load ptr, ptr %12, align 8, !tbaa !269
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 55
  %17 = load ptr, ptr %16, align 8, !tbaa !94
  %18 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 20
  %19 = load ptr, ptr %18, align 8, !tbaa !268
  tail call void @ED_region_draw_cb_exit(ptr noundef %19, ptr noundef nonnull %13) #11
  br label %20

20:                                               ; preds = %15, %11
  %21 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 67
  %22 = load ptr, ptr %21, align 8, !tbaa !270
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 55
  %26 = load ptr, ptr %25, align 8, !tbaa !94
  %27 = getelementptr inbounds %struct.ARegion, ptr %26, i64 0, i32 20
  %28 = load ptr, ptr %27, align 8, !tbaa !268
  tail call void @ED_region_draw_cb_exit(ptr noundef %28, ptr noundef nonnull %22) #11
  br label %29

29:                                               ; preds = %24, %20
  %30 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 68
  %31 = load ptr, ptr %30, align 8, !tbaa !271
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = tail call ptr @CTX_wm_manager(ptr noundef %0) #11
  %35 = load ptr, ptr %30, align 8, !tbaa !271
  tail call void @WM_paint_cursor_end(ptr noundef %34, ptr noundef %35) #11
  br label %36

36:                                               ; preds = %33, %29
  %37 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 41
  %38 = load ptr, ptr %37, align 8, !tbaa !272
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void %38(ptr noundef %1) #11
  br label %52

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 40
  %43 = load ptr, ptr %42, align 8, !tbaa !114
  %44 = icmp eq ptr %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !184
  %48 = and i32 %47, 131072
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !107
  tail call void %51(ptr noundef nonnull %43) #11
  store ptr null, ptr %42, align 8, !tbaa !114
  br label %52

52:                                               ; preds = %41, %45, %50, %40
  %53 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 10
  %54 = load ptr, ptr %53, align 8, !tbaa !143
  %55 = icmp eq ptr %54, null
  br i1 %55, label %92, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 63
  %58 = load ptr, ptr %57, align 8, !tbaa !52
  %59 = icmp eq ptr %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.Object, ptr %58, i64 0, i32 3
  %62 = load i16, ptr %61, align 8, !tbaa !53
  %63 = and i16 %62, -2
  %64 = icmp eq i16 %63, 2
  br i1 %64, label %69, label %65

65:                                               ; preds = %60, %56
  %66 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 33
  %67 = load i8, ptr %66, align 8, !tbaa !50
  %68 = icmp eq i8 %67, 2
  br i1 %68, label %69, label %89

69:                                               ; preds = %60, %65
  %70 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 9
  %71 = load i32, ptr %70, align 8, !tbaa !113
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %69, %84
  %74 = phi ptr [ %86, %84 ], [ %54, %69 ]
  %75 = phi i32 [ %85, %84 ], [ 0, %69 ]
  %76 = getelementptr inbounds %struct.TransData, ptr %74, i64 0, i32 16
  %77 = load i32, ptr %76, align 8, !tbaa !185
  %78 = and i32 %77, 4096
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %73
  %81 = load ptr, ptr @MEM_freeN, align 8, !tbaa !107
  %82 = getelementptr inbounds %struct.TransData, ptr %74, i64 0, i32 14
  %83 = load ptr, ptr %82, align 8, !tbaa !273
  tail call void %81(ptr noundef %83) #11
  br label %84

84:                                               ; preds = %73, %80
  %85 = add nuw nsw i32 %75, 1
  %86 = getelementptr inbounds %struct.TransData, ptr %74, i64 1
  %87 = load i32, ptr %70, align 8, !tbaa !113
  %88 = icmp slt i32 %85, %87
  br i1 %88, label %73, label %89, !llvm.loop !274

89:                                               ; preds = %84, %69, %65
  %90 = load ptr, ptr @MEM_freeN, align 8, !tbaa !107
  %91 = load ptr, ptr %53, align 8, !tbaa !143
  tail call void %90(ptr noundef %91) #11
  br label %92

92:                                               ; preds = %89, %52
  %93 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 14, i32 14
  tail call void @BLI_freelistN(ptr noundef nonnull %93) #11
  %94 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 11
  %95 = load ptr, ptr %94, align 8, !tbaa !275
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %92
  %98 = load ptr, ptr @MEM_freeN, align 8, !tbaa !107
  tail call void %98(ptr noundef nonnull %95) #11
  br label %99

99:                                               ; preds = %97, %92
  %100 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 12
  %101 = load ptr, ptr %100, align 8, !tbaa !276
  %102 = icmp eq ptr %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %99
  %104 = load ptr, ptr @MEM_freeN, align 8, !tbaa !107
  tail call void %104(ptr noundef nonnull %101) #11
  store ptr null, ptr %100, align 8, !tbaa !276
  br label %105

105:                                              ; preds = %103, %99
  %106 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 33
  %107 = load i8, ptr %106, align 8, !tbaa !50
  switch i8 %107, label %141 [
    i8 6, label %108
    i8 1, label %127
  ]

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 4
  %110 = load i32, ptr %109, align 8, !tbaa !49
  %111 = and i32 %110, 384
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %141

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  %115 = load ptr, ptr %114, align 8, !tbaa !58
  %116 = getelementptr inbounds %struct.ScrArea, ptr %115, i64 0, i32 19
  %117 = load ptr, ptr %116, align 8, !tbaa !59
  %118 = getelementptr inbounds %struct.SpaceImage, ptr %117, i64 0, i32 4
  %119 = load i32, ptr %118, align 4, !tbaa !62
  %120 = and i32 %119, 2048
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %141, label %122

122:                                              ; preds = %113
  %123 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 3
  %124 = load i16, ptr %123, align 4, !tbaa !121
  %125 = icmp eq i16 %124, 3
  %126 = zext i1 %125 to i16
  tail call void @ED_uvedit_live_unwrap_end(i16 noundef signext %126) #11
  br label %141

127:                                              ; preds = %105
  %128 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 1
  %129 = load i32, ptr %128, align 4, !tbaa !184
  %130 = and i32 %129, 2097152
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %141, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 54
  %134 = load ptr, ptr %133, align 8, !tbaa !58
  %135 = getelementptr inbounds %struct.ScrArea, ptr %134, i64 0, i32 19
  %136 = load ptr, ptr %135, align 8, !tbaa !59
  %137 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 44
  %138 = load i16, ptr %137, align 4, !tbaa !238
  %139 = trunc i16 %138 to i8
  %140 = getelementptr inbounds %struct.View3D, ptr %136, i64 0, i32 40
  store i8 %139, ptr %140, align 1, !tbaa !237
  br label %141

141:                                              ; preds = %127, %132, %105, %113, %122, %108
  %142 = getelementptr inbounds %struct.TransInfo, ptr %1, i64 0, i32 16, i32 7
  %143 = load ptr, ptr %142, align 8, !tbaa !277
  %144 = icmp eq ptr %143, null
  br i1 %144, label %147, label %145

145:                                              ; preds = %141
  %146 = load ptr, ptr @MEM_freeN, align 8, !tbaa !107
  tail call void %146(ptr noundef nonnull %143) #11
  br label %147

147:                                              ; preds = %145, %141
  ret void
}

declare void @ED_region_draw_cb_exit(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_paint_cursor_end(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare void @ED_uvedit_live_unwrap_end(i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @applyTransObjects(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !143
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !113
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.TransData, ptr %3, i64 %6
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %9, label %51

9:                                                ; preds = %1, %48
  %10 = phi ptr [ %49, %48 ], [ %3, %1 ]
  %11 = getelementptr inbounds %struct.TransData, ptr %10, i64 0, i32 4
  %12 = getelementptr inbounds %struct.TransData, ptr %10, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !186
  %14 = load float, ptr %13, align 4, !tbaa !48
  store float %14, ptr %11, align 4, !tbaa !48
  %15 = getelementptr inbounds float, ptr %13, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !48
  %17 = getelementptr inbounds %struct.TransData, ptr %10, i64 0, i32 4, i64 1
  store float %16, ptr %17, align 4, !tbaa !48
  %18 = getelementptr inbounds float, ptr %13, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !48
  %20 = getelementptr inbounds %struct.TransData, ptr %10, i64 0, i32 4, i64 2
  store float %19, ptr %20, align 4, !tbaa !48
  %21 = getelementptr inbounds %struct.TransData, ptr %10, i64 0, i32 13
  %22 = load ptr, ptr %21, align 8, !tbaa !278
  %23 = getelementptr inbounds %struct.TransDataExtension, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !279
  %25 = icmp eq ptr %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %9
  %27 = getelementptr inbounds %struct.TransDataExtension, ptr %22, i64 0, i32 4
  %28 = load float, ptr %24, align 4, !tbaa !48
  store float %28, ptr %27, align 4, !tbaa !48
  %29 = getelementptr inbounds float, ptr %24, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !48
  %31 = getelementptr inbounds %struct.TransDataExtension, ptr %22, i64 0, i32 4, i64 1
  store float %30, ptr %31, align 4, !tbaa !48
  %32 = getelementptr inbounds float, ptr %24, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !48
  %34 = getelementptr inbounds %struct.TransDataExtension, ptr %22, i64 0, i32 4, i64 2
  store float %33, ptr %34, align 4, !tbaa !48
  br label %35

35:                                               ; preds = %26, %9
  %36 = getelementptr inbounds %struct.TransDataExtension, ptr %22, i64 0, i32 11
  %37 = load ptr, ptr %36, align 8, !tbaa !281
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.TransDataExtension, ptr %22, i64 0, i32 12
  %41 = load float, ptr %37, align 4, !tbaa !48
  store float %41, ptr %40, align 4, !tbaa !48
  %42 = getelementptr inbounds float, ptr %37, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !48
  %44 = getelementptr inbounds %struct.TransDataExtension, ptr %22, i64 0, i32 12, i64 1
  store float %43, ptr %44, align 4, !tbaa !48
  %45 = getelementptr inbounds float, ptr %37, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !48
  %47 = getelementptr inbounds %struct.TransDataExtension, ptr %22, i64 0, i32 12, i64 2
  store float %46, ptr %47, align 4, !tbaa !48
  br label %48

48:                                               ; preds = %35, %39
  %49 = getelementptr inbounds %struct.TransData, ptr %10, i64 1
  %50 = icmp ult ptr %49, %7
  br i1 %50, label %9, label %51, !llvm.loop !282

51:                                               ; preds = %48, %1
  tail call void @recalcData(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @restoreTransObjects(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !113
  %5 = sext i32 %4 to i64
  %6 = icmp sgt i32 %4, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !143
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi ptr [ %11, %9 ], [ %8, %7 ]
  tail call fastcc void @restoreElement(ptr noundef %10)
  %11 = getelementptr inbounds %struct.TransData, ptr %10, i64 1
  %12 = load ptr, ptr %2, align 8, !tbaa !143
  %13 = load i32, ptr %3, align 8, !tbaa !113
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TransData, ptr %12, i64 %14
  %16 = icmp ult ptr %11, %15
  br i1 %16, label %9, label %17, !llvm.loop !283

17:                                               ; preds = %9, %1
  %18 = phi i64 [ %5, %1 ], [ %14, %9 ]
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !276
  %21 = icmp ne ptr %20, null
  %22 = getelementptr inbounds %struct.TransData2D, ptr %20, i64 %18
  %23 = icmp sgt i64 %18, 0
  %24 = and i1 %21, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %17, %46
  %26 = phi ptr [ %47, %46 ], [ %20, %17 ]
  %27 = getelementptr inbounds %struct.TransData2D, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !284
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.TransData2D, ptr %26, i64 0, i32 4
  %32 = load float, ptr %31, align 8, !tbaa !48
  store float %32, ptr %28, align 4, !tbaa !48
  %33 = getelementptr inbounds %struct.TransData2D, ptr %26, i64 0, i32 4, i64 1
  %34 = load float, ptr %33, align 4, !tbaa !48
  %35 = getelementptr inbounds float, ptr %28, i64 1
  store float %34, ptr %35, align 4, !tbaa !48
  br label %36

36:                                               ; preds = %30, %25
  %37 = getelementptr inbounds %struct.TransData2D, ptr %26, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !286
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.TransData2D, ptr %26, i64 0, i32 5
  %42 = load float, ptr %41, align 8, !tbaa !48
  store float %42, ptr %38, align 4, !tbaa !48
  %43 = getelementptr inbounds %struct.TransData2D, ptr %26, i64 0, i32 5, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !48
  %45 = getelementptr inbounds float, ptr %38, i64 1
  store float %44, ptr %45, align 4, !tbaa !48
  br label %46

46:                                               ; preds = %36, %40
  %47 = getelementptr inbounds %struct.TransData2D, ptr %26, i64 1
  %48 = icmp ult ptr %47, %22
  %49 = select i1 %21, i1 %48, i1 false
  br i1 %49, label %25, label %50, !llvm.loop !287

50:                                               ; preds = %46, %17
  %51 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 36
  tail call void @unit_m3(ptr noundef nonnull %51) #11
  tail call void @recalcData(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @restoreElement(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !186
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 4
  %7 = load float, ptr %6, align 4, !tbaa !48
  store float %7, ptr %3, align 4, !tbaa !48
  %8 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 4, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !48
  %10 = getelementptr inbounds float, ptr %3, i64 1
  store float %9, ptr %10, align 4, !tbaa !48
  %11 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 4, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !48
  %13 = getelementptr inbounds float, ptr %3, i64 2
  store float %12, ptr %13, align 4, !tbaa !48
  br label %14

14:                                               ; preds = %5, %1
  %15 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !288
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 6
  %20 = load float, ptr %19, align 8, !tbaa !199
  store float %20, ptr %16, align 4, !tbaa !48
  br label %21

21:                                               ; preds = %18, %14
  %22 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 13
  %23 = load ptr, ptr %22, align 8, !tbaa !278
  %24 = icmp eq ptr %23, null
  br i1 %24, label %82, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 16
  %27 = load i32, ptr %26, align 8, !tbaa !185
  %28 = and i32 %27, 1024
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %82

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.TransDataExtension, ptr %23, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !279
  %33 = icmp eq ptr %32, null
  br i1 %33, label %43, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.TransDataExtension, ptr %23, i64 0, i32 4
  %36 = load float, ptr %35, align 4, !tbaa !48
  store float %36, ptr %32, align 4, !tbaa !48
  %37 = getelementptr inbounds %struct.TransDataExtension, ptr %23, i64 0, i32 4, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !48
  %39 = getelementptr inbounds float, ptr %32, i64 1
  store float %38, ptr %39, align 4, !tbaa !48
  %40 = getelementptr inbounds %struct.TransDataExtension, ptr %23, i64 0, i32 4, i64 2
  %41 = load float, ptr %40, align 4, !tbaa !48
  %42 = getelementptr inbounds float, ptr %32, i64 2
  store float %41, ptr %42, align 4, !tbaa !48
  br label %43

43:                                               ; preds = %34, %30
  %44 = getelementptr inbounds %struct.TransDataExtension, ptr %23, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !289
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.TransDataExtension, ptr %23, i64 0, i32 8
  %49 = load float, ptr %48, align 8, !tbaa !290
  store float %49, ptr %45, align 4, !tbaa !48
  br label %50

50:                                               ; preds = %47, %43
  %51 = getelementptr inbounds %struct.TransDataExtension, ptr %23, i64 0, i32 9
  %52 = load ptr, ptr %51, align 8, !tbaa !291
  %53 = icmp eq ptr %52, null
  br i1 %53, label %63, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.TransDataExtension, ptr %23, i64 0, i32 10
  %56 = load float, ptr %55, align 4, !tbaa !48
  store float %56, ptr %52, align 4, !tbaa !48
  %57 = getelementptr inbounds %struct.TransDataExtension, ptr %23, i64 0, i32 10, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !48
  %59 = getelementptr inbounds float, ptr %52, i64 1
  store float %58, ptr %59, align 4, !tbaa !48
  %60 = getelementptr inbounds %struct.TransDataExtension, ptr %23, i64 0, i32 10, i64 2
  %61 = load float, ptr %60, align 4, !tbaa !48
  %62 = getelementptr inbounds float, ptr %52, i64 2
  store float %61, ptr %62, align 4, !tbaa !48
  br label %63

63:                                               ; preds = %54, %50
  %64 = getelementptr inbounds %struct.TransDataExtension, ptr %23, i64 0, i32 11
  %65 = load ptr, ptr %64, align 8, !tbaa !281
  %66 = icmp eq ptr %65, null
  br i1 %66, label %76, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.TransDataExtension, ptr %23, i64 0, i32 12
  %69 = load float, ptr %68, align 4, !tbaa !48
  store float %69, ptr %65, align 4, !tbaa !48
  %70 = getelementptr inbounds %struct.TransDataExtension, ptr %23, i64 0, i32 12, i64 1
  %71 = load float, ptr %70, align 4, !tbaa !48
  %72 = getelementptr inbounds float, ptr %65, i64 1
  store float %71, ptr %72, align 4, !tbaa !48
  %73 = getelementptr inbounds %struct.TransDataExtension, ptr %23, i64 0, i32 12, i64 2
  %74 = load float, ptr %73, align 4, !tbaa !48
  %75 = getelementptr inbounds float, ptr %65, i64 2
  store float %74, ptr %75, align 4, !tbaa !48
  br label %76

76:                                               ; preds = %67, %63
  %77 = getelementptr inbounds %struct.TransDataExtension, ptr %23, i64 0, i32 5
  %78 = load ptr, ptr %77, align 8, !tbaa !292
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.TransDataExtension, ptr %23, i64 0, i32 6
  tail call void @copy_qt_qt(ptr noundef nonnull %78, ptr noundef nonnull %81) #11
  br label %82

82:                                               ; preds = %76, %80, %25, %21
  %83 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 16
  %84 = load i32, ptr %83, align 8, !tbaa !185
  %85 = and i32 %84, 4096
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %98, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.TransData, ptr %0, i64 0, i32 14
  %89 = load ptr, ptr %88, align 8, !tbaa !273
  %90 = load i8, ptr %89, align 8, !tbaa !293
  %91 = getelementptr inbounds %struct.TransDataCurveHandleFlags, ptr %89, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !295
  store i8 %90, ptr %92, align 1, !tbaa !221
  %93 = load ptr, ptr %88, align 8, !tbaa !273
  %94 = getelementptr inbounds %struct.TransDataCurveHandleFlags, ptr %93, i64 0, i32 1
  %95 = load i8, ptr %94, align 1, !tbaa !296
  %96 = getelementptr inbounds %struct.TransDataCurveHandleFlags, ptr %93, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !297
  store i8 %95, ptr %97, align 1, !tbaa !221
  br label %98

98:                                               ; preds = %87, %82
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @calculateCenter2D(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [3 x float], align 4
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !184
  %5 = and i32 %4, 6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %13 = load ptr, ptr %12, align 8, !tbaa !203
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ %9, %7 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #11
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  %17 = load float, ptr %16, align 4, !tbaa !48
  store float %17, ptr %2, align 4, !tbaa !48
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !48
  %20 = getelementptr inbounds float, ptr %2, i64 1
  store float %19, ptr %20, align 4, !tbaa !48
  %21 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !48
  %23 = getelementptr inbounds float, ptr %2, i64 2
  store float %22, ptr %23, align 4, !tbaa !48
  %24 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %24, ptr noundef nonnull %2) #11
  %25 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 21
  call void @projectFloatView(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %25) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #11
  br label %29

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  %28 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 21
  tail call void @projectFloatView(ptr noundef %0, ptr noundef nonnull %27, ptr noundef nonnull %28) #11
  br label %29

29:                                               ; preds = %26, %14
  ret void
}

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @projectFloatView(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @calculateCenterCursor(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [3 x [3 x float]], align 16
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 52
  %8 = load ptr, ptr %7, align 8, !tbaa !214
  %9 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %6, ptr noundef %8) #11
  %10 = load float, ptr %9, align 4, !tbaa !48
  store float %10, ptr %1, align 4, !tbaa !48
  %11 = getelementptr inbounds float, ptr %9, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !48
  %13 = getelementptr inbounds float, ptr %1, i64 1
  store float %12, ptr %13, align 4, !tbaa !48
  %14 = getelementptr inbounds float, ptr %9, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !48
  %16 = getelementptr inbounds float, ptr %1, i64 2
  store float %15, ptr %16, align 4, !tbaa !48
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !184
  %19 = and i32 %18, 6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %23 = load ptr, ptr %22, align 8, !tbaa !52
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %27 = load ptr, ptr %26, align 8, !tbaa !203
  br label %28

28:                                               ; preds = %21, %25
  %29 = phi ptr [ %27, %25 ], [ %23, %21 ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #11
  %30 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 47
  %31 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 47, i64 3
  %32 = load float, ptr %31, align 4, !tbaa !48
  %33 = fsub float %10, %32
  store float %33, ptr %1, align 4, !tbaa !48
  %34 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 47, i64 3, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !48
  %36 = fsub float %12, %35
  store float %36, ptr %13, align 4, !tbaa !48
  %37 = getelementptr inbounds %struct.Object, ptr %29, i64 0, i32 47, i64 3, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !48
  %39 = fsub float %15, %38
  store float %39, ptr %16, align 4, !tbaa !48
  call void @copy_m3_m4(ptr noundef nonnull %3, ptr noundef nonnull %30) #11
  %40 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %4, ptr noundef nonnull %3) #11
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef nonnull %1) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #11
  br label %62

41:                                               ; preds = %2
  %42 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %43 = load i32, ptr %42, align 8, !tbaa !49
  %44 = and i32 %43, 256
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %62, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %48 = load ptr, ptr %47, align 8, !tbaa !94
  %49 = tail call i32 @ED_view3d_project_float_global(ptr noundef %48, ptr noundef nonnull %9, ptr noundef nonnull %1, i32 noundef 0) #11
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %46
  %52 = load ptr, ptr %47, align 8, !tbaa !94
  %53 = getelementptr inbounds %struct.ARegion, ptr %52, i64 0, i32 5
  %54 = load i16, ptr %53, align 8, !tbaa !298
  %55 = sitofp i16 %54 to float
  %56 = fmul float %55, 5.000000e-01
  store float %56, ptr %1, align 4, !tbaa !48
  %57 = getelementptr inbounds %struct.ARegion, ptr %52, i64 0, i32 6
  %58 = load i16, ptr %57, align 2, !tbaa !299
  %59 = sitofp i16 %58 to float
  %60 = fmul float %59, 5.000000e-01
  store float %60, ptr %13, align 4, !tbaa !48
  br label %61

61:                                               ; preds = %51, %46
  store float 0.000000e+00, ptr %16, align 4, !tbaa !48
  br label %62

62:                                               ; preds = %41, %61, %28
  ret void
}

declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ED_view3d_project_float_global(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @calculateCenterCursor2D(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store float 1.000000e+00, ptr %3, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store float 1.000000e+00, ptr %4, align 4, !tbaa !48
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %7 = load i8, ptr %6, align 8, !tbaa !50
  switch i8 %7, label %34 [
    i8 6, label %8
    i8 20, label %21
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %10 = load ptr, ptr %9, align 8, !tbaa !58
  %11 = getelementptr inbounds %struct.ScrArea, ptr %10, i64 0, i32 19
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !49
  %15 = and i32 %14, 128
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %8
  call void @ED_space_image_get_aspect(ptr noundef %12, ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  br label %19

18:                                               ; preds = %8
  call void @ED_space_image_get_uv_aspect(ptr noundef %12, ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  br label %19

19:                                               ; preds = %18, %17
  %20 = getelementptr inbounds %struct.SpaceImage, ptr %12, i64 0, i32 11
  br label %34

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %23 = load ptr, ptr %22, align 8, !tbaa !58
  %24 = getelementptr inbounds %struct.ScrArea, ptr %23, i64 0, i32 19
  %25 = load ptr, ptr %24, align 8, !tbaa !59
  %26 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !49
  %28 = and i32 %27, 64
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  call void @ED_space_clip_get_aspect_dimension_aware(ptr noundef %25, ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  br label %32

31:                                               ; preds = %21
  call void @ED_space_clip_get_aspect(ptr noundef %25, ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  br label %32

32:                                               ; preds = %31, %30
  %33 = getelementptr inbounds %struct.SpaceClip, ptr %25, i64 0, i32 27
  br label %34

34:                                               ; preds = %2, %32, %19
  %35 = phi ptr [ %20, %19 ], [ %33, %32 ], [ null, %2 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %96, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %39 = load i32, ptr %38, align 8, !tbaa !49
  %40 = and i32 %39, 128
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %69, label %42

42:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %43 = load i8, ptr %6, align 8, !tbaa !50
  switch i8 %43, label %60 [
    i8 6, label %44
    i8 20, label %52
  ]

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %46 = load ptr, ptr %45, align 8, !tbaa !58
  %47 = getelementptr inbounds %struct.ScrArea, ptr %46, i64 0, i32 19
  %48 = load ptr, ptr %47, align 8, !tbaa !59
  %49 = getelementptr inbounds %struct.SpaceImage, ptr %48, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !300
  %51 = getelementptr inbounds %struct.SpaceImage, ptr %48, i64 0, i32 6
  call void @BKE_mask_coord_from_image(ptr noundef %50, ptr noundef nonnull %51, ptr noundef nonnull %5, ptr noundef nonnull %35) #11
  br label %60

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %54 = load ptr, ptr %53, align 8, !tbaa !58
  %55 = getelementptr inbounds %struct.ScrArea, ptr %54, i64 0, i32 19
  %56 = load ptr, ptr %55, align 8, !tbaa !59
  %57 = getelementptr inbounds %struct.SpaceClip, ptr %56, i64 0, i32 10
  %58 = load ptr, ptr %57, align 8, !tbaa !301
  %59 = getelementptr inbounds %struct.SpaceClip, ptr %56, i64 0, i32 9
  call void @BKE_mask_coord_from_movieclip(ptr noundef %58, ptr noundef nonnull %59, ptr noundef nonnull %5, ptr noundef nonnull %35) #11
  br label %60

60:                                               ; preds = %42, %52, %44
  %61 = load float, ptr %5, align 4, !tbaa !48
  %62 = load float, ptr %3, align 4, !tbaa !48
  %63 = fmul float %61, %62
  store float %63, ptr %1, align 4, !tbaa !48
  %64 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !48
  %66 = load float, ptr %4, align 4, !tbaa !48
  %67 = fmul float %65, %66
  %68 = getelementptr inbounds float, ptr %1, i64 1
  store float %67, ptr %68, align 4, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %96

69:                                               ; preds = %37
  %70 = and i32 %39, 256
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %87, label %72

72:                                               ; preds = %69
  %73 = load i8, ptr %6, align 8, !tbaa !50
  %74 = icmp eq i8 %73, 6
  br i1 %74, label %75, label %96

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %77 = load ptr, ptr %76, align 8, !tbaa !94
  %78 = getelementptr inbounds %struct.ARegion, ptr %77, i64 0, i32 2
  %79 = load float, ptr %35, align 4, !tbaa !48
  %80 = call float @UI_view2d_view_to_region_x(ptr noundef nonnull %78, float noundef %79) #11
  store float %80, ptr %1, align 4, !tbaa !48
  %81 = load ptr, ptr %76, align 8, !tbaa !94
  %82 = getelementptr inbounds %struct.ARegion, ptr %81, i64 0, i32 2
  %83 = getelementptr inbounds float, ptr %35, i64 1
  %84 = load float, ptr %83, align 4, !tbaa !48
  %85 = call float @UI_view2d_view_to_region_y(ptr noundef nonnull %82, float noundef %84) #11
  %86 = getelementptr inbounds float, ptr %1, i64 1
  store float %85, ptr %86, align 4, !tbaa !48
  br label %96

87:                                               ; preds = %69
  %88 = load float, ptr %35, align 4, !tbaa !48
  %89 = load float, ptr %3, align 4, !tbaa !48
  %90 = fmul float %88, %89
  store float %90, ptr %1, align 4, !tbaa !48
  %91 = getelementptr inbounds float, ptr %35, i64 1
  %92 = load float, ptr %91, align 4, !tbaa !48
  %93 = load float, ptr %4, align 4, !tbaa !48
  %94 = fmul float %92, %93
  %95 = getelementptr inbounds float, ptr %1, i64 1
  store float %94, ptr %95, align 4, !tbaa !48
  br label %96

96:                                               ; preds = %60, %72, %75, %87, %34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret void
}

declare void @ED_space_image_get_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_space_image_get_uv_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_space_clip_get_aspect_dimension_aware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_space_clip_get_aspect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_mask_coord_from_image(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_mask_coord_from_movieclip(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @UI_view2d_view_to_region_x(ptr noundef, float noundef) local_unnamed_addr #2

declare float @UI_view2d_view_to_region_y(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @calculateCenterCursorGraph2D(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  %9 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 22, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !302
  %11 = sitofp i32 %10 to float
  store float %11, ptr %1, align 4, !tbaa !48
  %12 = getelementptr inbounds %struct.SpaceIpo, ptr %6, i64 0, i32 12
  %13 = load float, ptr %12, align 8, !tbaa !303
  %14 = getelementptr inbounds float, ptr %1, i64 1
  store float %13, ptr %14, align 4, !tbaa !48
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @calculateCenterMedian(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !113
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %38

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !143
  %9 = zext nneg i32 %4 to i64
  br label %10

10:                                               ; preds = %6, %31
  %11 = phi i64 [ 0, %6 ], [ %36, %31 ]
  %12 = phi i32 [ 0, %6 ], [ %35, %31 ]
  %13 = phi float [ 0.000000e+00, %6 ], [ %34, %31 ]
  %14 = phi float [ 0.000000e+00, %6 ], [ %33, %31 ]
  %15 = phi float [ 0.000000e+00, %6 ], [ %32, %31 ]
  %16 = getelementptr inbounds %struct.TransData, ptr %8, i64 %11, i32 16
  %17 = load i32, ptr %16, align 8, !tbaa !185
  %18 = and i32 %17, 513
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %31

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.TransData, ptr %8, i64 %11, i32 7
  %22 = load float, ptr %21, align 4, !tbaa !48
  %23 = fadd float %15, %22
  %24 = getelementptr inbounds float, ptr %21, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !48
  %26 = fadd float %14, %25
  %27 = getelementptr inbounds float, ptr %21, i64 2
  %28 = load float, ptr %27, align 4, !tbaa !48
  %29 = fadd float %13, %28
  %30 = add nsw i32 %12, 1
  br label %31

31:                                               ; preds = %10, %20
  %32 = phi float [ %23, %20 ], [ %15, %10 ]
  %33 = phi float [ %26, %20 ], [ %14, %10 ]
  %34 = phi float [ %29, %20 ], [ %13, %10 ]
  %35 = phi i32 [ %30, %20 ], [ %12, %10 ]
  %36 = add nuw nsw i64 %11, 1
  %37 = icmp eq i64 %36, %9
  br i1 %37, label %38, label %10, !llvm.loop !304

38:                                               ; preds = %31, %2
  %39 = phi float [ 0.000000e+00, %2 ], [ %32, %31 ]
  %40 = phi float [ 0.000000e+00, %2 ], [ %33, %31 ]
  %41 = phi float [ 0.000000e+00, %2 ], [ %34, %31 ]
  %42 = phi i32 [ 0, %2 ], [ %35, %31 ]
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = sitofp i32 %42 to float
  %46 = fdiv float 1.000000e+00, %45
  %47 = fmul float %39, %46
  %48 = fmul float %40, %46
  %49 = fmul float %41, %46
  br label %50

50:                                               ; preds = %44, %38
  %51 = phi float [ %39, %38 ], [ %47, %44 ]
  %52 = phi float [ %40, %38 ], [ %48, %44 ]
  %53 = phi float [ %41, %38 ], [ %49, %44 ]
  store float %51, ptr %1, align 4, !tbaa !48
  %54 = getelementptr inbounds float, ptr %1, i64 1
  store float %52, ptr %54, align 4, !tbaa !48
  %55 = getelementptr inbounds float, ptr %1, i64 2
  store float %53, ptr %55, align 4, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define dso_local void @calculateCenterBound(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  %5 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !113
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %39

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %11 = getelementptr inbounds float, ptr %3, i64 1
  %12 = getelementptr inbounds float, ptr %3, i64 2
  %13 = getelementptr inbounds float, ptr %4, i64 1
  %14 = getelementptr inbounds float, ptr %4, i64 2
  br label %15

15:                                               ; preds = %8, %34
  %16 = phi i64 [ 0, %8 ], [ %35, %34 ]
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %9, align 8, !tbaa !143
  %20 = getelementptr inbounds %struct.TransData, ptr %19, i64 %16, i32 16
  %21 = load i32, ptr %20, align 8, !tbaa !185
  %22 = and i32 %21, 513
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.TransData, ptr %19, i64 %16, i32 7
  call void @minmax_v3v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %25) #11
  br label %34

26:                                               ; preds = %15
  %27 = load ptr, ptr %10, align 8, !tbaa !143
  %28 = getelementptr inbounds %struct.TransData, ptr %27, i64 0, i32 7
  %29 = load float, ptr %28, align 4, !tbaa !48
  store float %29, ptr %3, align 4, !tbaa !48
  %30 = getelementptr inbounds %struct.TransData, ptr %27, i64 0, i32 7, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !48
  store float %31, ptr %11, align 4, !tbaa !48
  %32 = getelementptr inbounds %struct.TransData, ptr %27, i64 0, i32 7, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !48
  store float %33, ptr %12, align 4, !tbaa !48
  store float %29, ptr %4, align 4, !tbaa !48
  store float %31, ptr %13, align 4, !tbaa !48
  store float %33, ptr %14, align 4, !tbaa !48
  br label %34

34:                                               ; preds = %26, %24, %18
  %35 = add nuw nsw i64 %16, 1
  %36 = load i32, ptr %5, align 8, !tbaa !113
  %37 = sext i32 %36 to i64
  %38 = icmp slt i64 %35, %37
  br i1 %38, label %15, label %39, !llvm.loop !305

39:                                               ; preds = %34, %2
  call void @mid_v3_v3v3(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  ret void
}

declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @calculateCenterActive(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMEditSelection, align 8
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = icmp eq ptr %7, null
  br i1 %8, label %92, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 3
  %11 = load i16, ptr %10, align 8, !tbaa !53
  switch i16 %11, label %180 [
    i16 1, label %12
    i16 25, label %20
    i16 2, label %42
    i16 3, label %42
    i16 5, label %57
    i16 22, label %79
  ]

12:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #11
  %13 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %7) #11
  %14 = load ptr, ptr %13, align 8, !tbaa !306
  %15 = call zeroext i8 @BM_select_history_active_get(ptr noundef %14, ptr noundef nonnull %4) #11
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  call void @BM_editselection_center(ptr noundef nonnull %4, ptr noundef %2) #11
  br label %18

18:                                               ; preds = %17, %12
  %19 = phi i8 [ 1, %17 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #11
  br label %180

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !68
  %23 = getelementptr inbounds %struct.bArmature, ptr %22, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !308
  %25 = icmp eq ptr %24, null
  br i1 %25, label %180, label %26

26:                                               ; preds = %20
  %27 = icmp eq i8 %1, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.EditBone, ptr %24, i64 0, i32 9
  %30 = load i32, ptr %29, align 4, !tbaa !190
  %31 = and i32 %30, 3
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %180, label %33

33:                                               ; preds = %28, %26
  %34 = getelementptr inbounds %struct.EditBone, ptr %24, i64 0, i32 7
  %35 = load float, ptr %34, align 4, !tbaa !48
  store float %35, ptr %2, align 4, !tbaa !48
  %36 = getelementptr inbounds %struct.EditBone, ptr %24, i64 0, i32 7, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !48
  %38 = getelementptr inbounds float, ptr %2, i64 1
  store float %37, ptr %38, align 4, !tbaa !48
  %39 = getelementptr inbounds %struct.EditBone, ptr %24, i64 0, i32 7, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !48
  %41 = getelementptr inbounds float, ptr %2, i64 2
  store float %40, ptr %41, align 4, !tbaa !48
  br label %180

42:                                               ; preds = %9, %9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %43 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %44 = load ptr, ptr %43, align 8, !tbaa !68
  %45 = call zeroext i8 @ED_curve_active_center(ptr noundef %44, ptr noundef nonnull %5) #11
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %42
  %48 = load float, ptr %5, align 4, !tbaa !48
  store float %48, ptr %2, align 4, !tbaa !48
  %49 = getelementptr inbounds float, ptr %5, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !48
  %51 = getelementptr inbounds float, ptr %2, i64 1
  store float %50, ptr %51, align 4, !tbaa !48
  %52 = getelementptr inbounds float, ptr %5, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !48
  %54 = getelementptr inbounds float, ptr %2, i64 2
  store float %53, ptr %54, align 4, !tbaa !48
  br label %55

55:                                               ; preds = %47, %42
  %56 = phi i8 [ 1, %47 ], [ 0, %42 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  br label %180

57:                                               ; preds = %9
  %58 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %59 = load ptr, ptr %58, align 8, !tbaa !68
  %60 = getelementptr inbounds %struct.MetaBall, ptr %59, i64 0, i32 18
  %61 = load ptr, ptr %60, align 8, !tbaa !309
  %62 = icmp eq ptr %61, null
  br i1 %62, label %180, label %63

63:                                               ; preds = %57
  %64 = icmp eq i8 %1, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.MetaElem, ptr %61, i64 0, i32 4
  %67 = load i16, ptr %66, align 2, !tbaa !311
  %68 = and i16 %67, 1
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %180, label %70

70:                                               ; preds = %65, %63
  %71 = getelementptr inbounds %struct.MetaElem, ptr %61, i64 0, i32 7
  %72 = load float, ptr %71, align 4, !tbaa !48
  store float %72, ptr %2, align 4, !tbaa !48
  %73 = getelementptr inbounds %struct.MetaElem, ptr %61, i64 0, i32 8
  %74 = load float, ptr %73, align 4, !tbaa !48
  %75 = getelementptr inbounds float, ptr %2, i64 1
  store float %74, ptr %75, align 4, !tbaa !48
  %76 = getelementptr inbounds %struct.MetaElem, ptr %61, i64 0, i32 9
  %77 = load float, ptr %76, align 4, !tbaa !48
  %78 = getelementptr inbounds float, ptr %2, i64 2
  store float %77, ptr %78, align 4, !tbaa !48
  br label %180

79:                                               ; preds = %9
  %80 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %81 = load ptr, ptr %80, align 8, !tbaa !68
  %82 = tail call ptr @BKE_lattice_active_point_get(ptr noundef %81) #11
  %83 = icmp eq ptr %82, null
  br i1 %83, label %180, label %84

84:                                               ; preds = %79
  %85 = load float, ptr %82, align 4, !tbaa !48
  store float %85, ptr %2, align 4, !tbaa !48
  %86 = getelementptr inbounds float, ptr %82, i64 1
  %87 = load float, ptr %86, align 4, !tbaa !48
  %88 = getelementptr inbounds float, ptr %2, i64 1
  store float %87, ptr %88, align 4, !tbaa !48
  %89 = getelementptr inbounds float, ptr %82, i64 2
  %90 = load float, ptr %89, align 4, !tbaa !48
  %91 = getelementptr inbounds float, ptr %2, i64 2
  store float %90, ptr %91, align 4, !tbaa !48
  br label %180

92:                                               ; preds = %3
  %93 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %94 = load i32, ptr %93, align 4, !tbaa !184
  %95 = and i32 %94, 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %130, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %99 = load ptr, ptr %98, align 8, !tbaa !69
  %100 = getelementptr inbounds %struct.Scene, ptr %99, i64 0, i32 6
  %101 = load ptr, ptr %100, align 8, !tbaa !72
  %102 = icmp eq ptr %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.Base, ptr %101, i64 0, i32 7
  %105 = load ptr, ptr %104, align 8, !tbaa !90
  br label %106

106:                                              ; preds = %97, %103
  %107 = phi ptr [ %105, %103 ], [ null, %97 ]
  %108 = icmp eq ptr %107, null
  br i1 %108, label %180, label %109

109:                                              ; preds = %106
  %110 = tail call ptr @BKE_pose_channel_active(ptr noundef nonnull %107) #11
  %111 = icmp eq ptr %110, null
  br i1 %111, label %180, label %112

112:                                              ; preds = %109
  %113 = icmp eq i8 %1, 0
  br i1 %113, label %121, label %114

114:                                              ; preds = %112
  %115 = getelementptr inbounds %struct.bPoseChannel, ptr %110, i64 0, i32 12
  %116 = load ptr, ptr %115, align 8, !tbaa !313
  %117 = getelementptr inbounds %struct.Bone, ptr %116, i64 0, i32 10
  %118 = load i32, ptr %117, align 8, !tbaa !315
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %180, label %121

121:                                              ; preds = %114, %112
  %122 = getelementptr inbounds %struct.bPoseChannel, ptr %110, i64 0, i32 31
  %123 = load float, ptr %122, align 4, !tbaa !48
  store float %123, ptr %2, align 4, !tbaa !48
  %124 = getelementptr inbounds %struct.bPoseChannel, ptr %110, i64 0, i32 31, i64 1
  %125 = load float, ptr %124, align 4, !tbaa !48
  %126 = getelementptr inbounds float, ptr %2, i64 1
  store float %125, ptr %126, align 4, !tbaa !48
  %127 = getelementptr inbounds %struct.bPoseChannel, ptr %110, i64 0, i32 31, i64 2
  %128 = load float, ptr %127, align 4, !tbaa !48
  %129 = getelementptr inbounds float, ptr %2, i64 2
  store float %128, ptr %129, align 4, !tbaa !48
  br label %180

130:                                              ; preds = %92
  %131 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 4
  %132 = load i32, ptr %131, align 8, !tbaa !49
  %133 = and i32 %132, 256
  %134 = icmp eq i32 %133, 0
  %135 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %136 = load ptr, ptr %135, align 8, !tbaa !69
  br i1 %134, label %154, label %137

137:                                              ; preds = %130
  %138 = tail call ptr @BKE_paint_get_active(ptr noundef %136) #11
  %139 = load ptr, ptr %138, align 8, !tbaa !245
  %140 = getelementptr inbounds %struct.Brush, ptr %139, i64 0, i32 9
  %141 = load ptr, ptr %140, align 8, !tbaa !317
  %142 = getelementptr inbounds %struct.PaintCurve, ptr %141, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !318
  %144 = getelementptr inbounds %struct.PaintCurve, ptr %141, i64 0, i32 3
  %145 = load i32, ptr %144, align 4, !tbaa !320
  %146 = sext i32 %145 to i64
  %147 = getelementptr %struct.PaintCurvePoint, ptr %143, i64 %146
  %148 = getelementptr %struct.PaintCurvePoint, ptr %147, i64 -1, i32 0, i32 0, i64 1
  %149 = load float, ptr %148, align 4, !tbaa !48
  store float %149, ptr %2, align 4, !tbaa !48
  %150 = getelementptr %struct.PaintCurvePoint, ptr %147, i64 -1, i32 0, i32 0, i64 1, i64 1
  %151 = load float, ptr %150, align 4, !tbaa !48
  %152 = getelementptr inbounds float, ptr %2, i64 1
  store float %151, ptr %152, align 4, !tbaa !48
  %153 = getelementptr inbounds float, ptr %2, i64 2
  store float 0.000000e+00, ptr %153, align 4, !tbaa !48
  br label %180

154:                                              ; preds = %130
  %155 = getelementptr inbounds %struct.Scene, ptr %136, i64 0, i32 6
  %156 = load ptr, ptr %155, align 8, !tbaa !72
  %157 = icmp eq ptr %156, null
  br i1 %157, label %161, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.Base, ptr %156, i64 0, i32 7
  %160 = load ptr, ptr %159, align 8, !tbaa !90
  br label %161

161:                                              ; preds = %154, %158
  %162 = phi ptr [ %160, %158 ], [ null, %154 ]
  %163 = icmp eq ptr %162, null
  br i1 %163, label %180, label %164

164:                                              ; preds = %161
  %165 = icmp eq i8 %1, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %164
  %167 = getelementptr inbounds %struct.Object, ptr %162, i64 0, i32 53
  %168 = load i16, ptr %167, align 4, !tbaa !321
  %169 = and i16 %168, 1
  %170 = icmp eq i16 %169, 0
  br i1 %170, label %180, label %171

171:                                              ; preds = %166, %164
  %172 = getelementptr inbounds %struct.Object, ptr %162, i64 0, i32 47, i64 3
  %173 = load float, ptr %172, align 4, !tbaa !48
  store float %173, ptr %2, align 4, !tbaa !48
  %174 = getelementptr inbounds %struct.Object, ptr %162, i64 0, i32 47, i64 3, i64 1
  %175 = load float, ptr %174, align 4, !tbaa !48
  %176 = getelementptr inbounds float, ptr %2, i64 1
  store float %175, ptr %176, align 4, !tbaa !48
  %177 = getelementptr inbounds %struct.Object, ptr %162, i64 0, i32 47, i64 3, i64 2
  %178 = load float, ptr %177, align 4, !tbaa !48
  %179 = getelementptr inbounds float, ptr %2, i64 2
  store float %178, ptr %179, align 4, !tbaa !48
  br label %180

180:                                              ; preds = %161, %166, %171, %106, %121, %114, %109, %79, %84, %57, %65, %70, %20, %28, %33, %137, %18, %55, %9
  %181 = phi i8 [ 0, %9 ], [ %56, %55 ], [ %19, %18 ], [ 1, %137 ], [ 1, %33 ], [ 0, %28 ], [ 0, %20 ], [ 1, %70 ], [ 0, %65 ], [ 0, %57 ], [ 1, %84 ], [ 0, %79 ], [ 0, %106 ], [ 1, %121 ], [ 0, %114 ], [ 0, %109 ], [ 1, %171 ], [ 0, %166 ], [ 0, %161 ]
  ret i8 %181
}

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BM_select_history_active_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_editselection_center(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_curve_active_center(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_lattice_active_point_get(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_pose_channel_active(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_paint_get_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @calculateCenter(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [3 x float], align 4
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 32
  %8 = load i16, ptr %7, align 2, !tbaa !241
  switch i16 %8, label %233 [
    i16 0, label %9
    i16 3, label %44
    i16 1, label %99
    i16 2, label %120
    i16 4, label %175
  ]

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  %11 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !113
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %16 = getelementptr inbounds float, ptr %3, i64 1
  %17 = getelementptr inbounds float, ptr %3, i64 2
  %18 = getelementptr inbounds float, ptr %4, i64 1
  %19 = getelementptr inbounds float, ptr %4, i64 2
  br label %20

20:                                               ; preds = %38, %14
  %21 = phi i64 [ 0, %14 ], [ %39, %38 ]
  %22 = icmp eq i64 %21, 0
  %23 = load ptr, ptr %15, align 8, !tbaa !143
  br i1 %22, label %31, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.TransData, ptr %23, i64 %21, i32 16
  %26 = load i32, ptr %25, align 8, !tbaa !185
  %27 = and i32 %26, 513
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.TransData, ptr %23, i64 %21, i32 7
  call void @minmax_v3v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %30) #11
  br label %38

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.TransData, ptr %23, i64 0, i32 7
  %33 = load float, ptr %32, align 4, !tbaa !48
  store float %33, ptr %3, align 4, !tbaa !48
  %34 = getelementptr inbounds %struct.TransData, ptr %23, i64 0, i32 7, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !48
  store float %35, ptr %16, align 4, !tbaa !48
  %36 = getelementptr inbounds %struct.TransData, ptr %23, i64 0, i32 7, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !48
  store float %37, ptr %17, align 4, !tbaa !48
  store float %33, ptr %4, align 4, !tbaa !48
  store float %35, ptr %18, align 4, !tbaa !48
  store float %37, ptr %19, align 4, !tbaa !48
  br label %38

38:                                               ; preds = %31, %29, %24
  %39 = add nuw nsw i64 %21, 1
  %40 = load i32, ptr %11, align 8, !tbaa !113
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %39, %41
  br i1 %42, label %20, label %43, !llvm.loop !305

43:                                               ; preds = %38, %9
  call void @mid_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %4, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  br label %233

44:                                               ; preds = %1
  %45 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  %46 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %47 = load i32, ptr %46, align 8, !tbaa !113
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %81

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %51 = load ptr, ptr %50, align 8, !tbaa !143
  %52 = zext nneg i32 %47 to i64
  br label %53

53:                                               ; preds = %74, %49
  %54 = phi i64 [ 0, %49 ], [ %79, %74 ]
  %55 = phi i32 [ 0, %49 ], [ %78, %74 ]
  %56 = phi float [ 0.000000e+00, %49 ], [ %77, %74 ]
  %57 = phi float [ 0.000000e+00, %49 ], [ %76, %74 ]
  %58 = phi float [ 0.000000e+00, %49 ], [ %75, %74 ]
  %59 = getelementptr inbounds %struct.TransData, ptr %51, i64 %54, i32 16
  %60 = load i32, ptr %59, align 8, !tbaa !185
  %61 = and i32 %60, 513
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %74

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.TransData, ptr %51, i64 %54, i32 7
  %65 = load float, ptr %64, align 4, !tbaa !48
  %66 = fadd float %58, %65
  %67 = getelementptr inbounds float, ptr %64, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !48
  %69 = fadd float %57, %68
  %70 = getelementptr inbounds float, ptr %64, i64 2
  %71 = load float, ptr %70, align 4, !tbaa !48
  %72 = fadd float %56, %71
  %73 = add nsw i32 %55, 1
  br label %74

74:                                               ; preds = %63, %53
  %75 = phi float [ %66, %63 ], [ %58, %53 ]
  %76 = phi float [ %69, %63 ], [ %57, %53 ]
  %77 = phi float [ %72, %63 ], [ %56, %53 ]
  %78 = phi i32 [ %73, %63 ], [ %55, %53 ]
  %79 = add nuw nsw i64 %54, 1
  %80 = icmp eq i64 %79, %52
  br i1 %80, label %81, label %53, !llvm.loop !304

81:                                               ; preds = %74, %44
  %82 = phi float [ 0.000000e+00, %44 ], [ %75, %74 ]
  %83 = phi float [ 0.000000e+00, %44 ], [ %76, %74 ]
  %84 = phi float [ 0.000000e+00, %44 ], [ %77, %74 ]
  %85 = phi i32 [ 0, %44 ], [ %78, %74 ]
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = sitofp i32 %85 to float
  %89 = fdiv float 1.000000e+00, %88
  %90 = fmul float %82, %89
  %91 = fmul float %83, %89
  %92 = fmul float %84, %89
  br label %93

93:                                               ; preds = %81, %87
  %94 = phi float [ %82, %81 ], [ %90, %87 ]
  %95 = phi float [ %83, %81 ], [ %91, %87 ]
  %96 = phi float [ %84, %81 ], [ %92, %87 ]
  store float %94, ptr %45, align 4, !tbaa !48
  %97 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 1
  store float %95, ptr %97, align 4, !tbaa !48
  %98 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 2
  store float %96, ptr %98, align 4, !tbaa !48
  br label %233

99:                                               ; preds = %1
  %100 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %101 = load i8, ptr %100, align 8, !tbaa !50
  switch i8 %101, label %118 [
    i8 6, label %102
    i8 20, label %102
    i8 2, label %104
  ]

102:                                              ; preds = %99, %99
  %103 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  tail call void @calculateCenterCursor2D(ptr noundef %0, ptr noundef nonnull %103)
  br label %233

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  %106 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 54
  %107 = load ptr, ptr %106, align 8, !tbaa !58
  %108 = getelementptr inbounds %struct.ScrArea, ptr %107, i64 0, i32 19
  %109 = load ptr, ptr %108, align 8, !tbaa !59
  %110 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 56
  %111 = load ptr, ptr %110, align 8, !tbaa !69
  %112 = getelementptr inbounds %struct.Scene, ptr %111, i64 0, i32 22, i32 5
  %113 = load i32, ptr %112, align 8, !tbaa !302
  %114 = sitofp i32 %113 to float
  store float %114, ptr %105, align 4, !tbaa !48
  %115 = getelementptr inbounds %struct.SpaceIpo, ptr %109, i64 0, i32 12
  %116 = load float, ptr %115, align 8, !tbaa !303
  %117 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 1
  store float %116, ptr %117, align 4, !tbaa !48
  br label %233

118:                                              ; preds = %99
  %119 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  tail call void @calculateCenterCursor(ptr noundef %0, ptr noundef nonnull %119)
  br label %233

120:                                              ; preds = %1
  %121 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  %122 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %123 = load i32, ptr %122, align 8, !tbaa !113
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %157

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %127 = load ptr, ptr %126, align 8, !tbaa !143
  %128 = zext nneg i32 %123 to i64
  br label %129

129:                                              ; preds = %150, %125
  %130 = phi i64 [ 0, %125 ], [ %155, %150 ]
  %131 = phi i32 [ 0, %125 ], [ %154, %150 ]
  %132 = phi float [ 0.000000e+00, %125 ], [ %153, %150 ]
  %133 = phi float [ 0.000000e+00, %125 ], [ %152, %150 ]
  %134 = phi float [ 0.000000e+00, %125 ], [ %151, %150 ]
  %135 = getelementptr inbounds %struct.TransData, ptr %127, i64 %130, i32 16
  %136 = load i32, ptr %135, align 8, !tbaa !185
  %137 = and i32 %136, 513
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %139, label %150

139:                                              ; preds = %129
  %140 = getelementptr inbounds %struct.TransData, ptr %127, i64 %130, i32 7
  %141 = load float, ptr %140, align 4, !tbaa !48
  %142 = fadd float %134, %141
  %143 = getelementptr inbounds float, ptr %140, i64 1
  %144 = load float, ptr %143, align 4, !tbaa !48
  %145 = fadd float %133, %144
  %146 = getelementptr inbounds float, ptr %140, i64 2
  %147 = load float, ptr %146, align 4, !tbaa !48
  %148 = fadd float %132, %147
  %149 = add nsw i32 %131, 1
  br label %150

150:                                              ; preds = %139, %129
  %151 = phi float [ %142, %139 ], [ %134, %129 ]
  %152 = phi float [ %145, %139 ], [ %133, %129 ]
  %153 = phi float [ %148, %139 ], [ %132, %129 ]
  %154 = phi i32 [ %149, %139 ], [ %131, %129 ]
  %155 = add nuw nsw i64 %130, 1
  %156 = icmp eq i64 %155, %128
  br i1 %156, label %157, label %129, !llvm.loop !304

157:                                              ; preds = %150, %120
  %158 = phi float [ 0.000000e+00, %120 ], [ %151, %150 ]
  %159 = phi float [ 0.000000e+00, %120 ], [ %152, %150 ]
  %160 = phi float [ 0.000000e+00, %120 ], [ %153, %150 ]
  %161 = phi i32 [ 0, %120 ], [ %154, %150 ]
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %157
  %164 = sitofp i32 %161 to float
  %165 = fdiv float 1.000000e+00, %164
  %166 = fmul float %158, %165
  %167 = fmul float %159, %165
  %168 = fmul float %160, %165
  br label %169

169:                                              ; preds = %157, %163
  %170 = phi float [ %158, %157 ], [ %166, %163 ]
  %171 = phi float [ %159, %157 ], [ %167, %163 ]
  %172 = phi float [ %160, %157 ], [ %168, %163 ]
  store float %170, ptr %121, align 4, !tbaa !48
  %173 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 1
  store float %171, ptr %173, align 4, !tbaa !48
  %174 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 2
  store float %172, ptr %174, align 4, !tbaa !48
  br label %233

175:                                              ; preds = %1
  %176 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  %177 = tail call zeroext i8 @calculateCenterActive(ptr noundef %0, i8 noundef zeroext 0, ptr noundef nonnull %176), !range !322
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %179, label %233

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %181 = load i32, ptr %180, align 8, !tbaa !113
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %215

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %185 = load ptr, ptr %184, align 8, !tbaa !143
  %186 = zext nneg i32 %181 to i64
  br label %187

187:                                              ; preds = %208, %183
  %188 = phi i64 [ 0, %183 ], [ %213, %208 ]
  %189 = phi i32 [ 0, %183 ], [ %212, %208 ]
  %190 = phi float [ 0.000000e+00, %183 ], [ %211, %208 ]
  %191 = phi float [ 0.000000e+00, %183 ], [ %210, %208 ]
  %192 = phi float [ 0.000000e+00, %183 ], [ %209, %208 ]
  %193 = getelementptr inbounds %struct.TransData, ptr %185, i64 %188, i32 16
  %194 = load i32, ptr %193, align 8, !tbaa !185
  %195 = and i32 %194, 513
  %196 = icmp eq i32 %195, 1
  br i1 %196, label %197, label %208

197:                                              ; preds = %187
  %198 = getelementptr inbounds %struct.TransData, ptr %185, i64 %188, i32 7
  %199 = load float, ptr %198, align 4, !tbaa !48
  %200 = fadd float %192, %199
  %201 = getelementptr inbounds float, ptr %198, i64 1
  %202 = load float, ptr %201, align 4, !tbaa !48
  %203 = fadd float %191, %202
  %204 = getelementptr inbounds float, ptr %198, i64 2
  %205 = load float, ptr %204, align 4, !tbaa !48
  %206 = fadd float %190, %205
  %207 = add nsw i32 %189, 1
  br label %208

208:                                              ; preds = %197, %187
  %209 = phi float [ %200, %197 ], [ %192, %187 ]
  %210 = phi float [ %203, %197 ], [ %191, %187 ]
  %211 = phi float [ %206, %197 ], [ %190, %187 ]
  %212 = phi i32 [ %207, %197 ], [ %189, %187 ]
  %213 = add nuw nsw i64 %188, 1
  %214 = icmp eq i64 %213, %186
  br i1 %214, label %215, label %187, !llvm.loop !304

215:                                              ; preds = %208, %179
  %216 = phi float [ 0.000000e+00, %179 ], [ %209, %208 ]
  %217 = phi float [ 0.000000e+00, %179 ], [ %210, %208 ]
  %218 = phi float [ 0.000000e+00, %179 ], [ %211, %208 ]
  %219 = phi i32 [ 0, %179 ], [ %212, %208 ]
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %227, label %221

221:                                              ; preds = %215
  %222 = sitofp i32 %219 to float
  %223 = fdiv float 1.000000e+00, %222
  %224 = fmul float %216, %223
  %225 = fmul float %217, %223
  %226 = fmul float %218, %223
  br label %227

227:                                              ; preds = %215, %221
  %228 = phi float [ %216, %215 ], [ %224, %221 ]
  %229 = phi float [ %217, %215 ], [ %225, %221 ]
  %230 = phi float [ %218, %215 ], [ %226, %221 ]
  store float %228, ptr %176, align 4, !tbaa !48
  %231 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 1
  store float %229, ptr %231, align 4, !tbaa !48
  %232 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 2
  store float %230, ptr %232, align 4, !tbaa !48
  br label %233

233:                                              ; preds = %227, %175, %102, %118, %104, %1, %169, %93, %43
  %234 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %235 = load i32, ptr %234, align 4, !tbaa !184
  %236 = and i32 %235, 6
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %257, label %238

238:                                              ; preds = %233
  %239 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %240 = load ptr, ptr %239, align 8, !tbaa !52
  %241 = icmp eq ptr %240, null
  br i1 %241, label %242, label %245

242:                                              ; preds = %238
  %243 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %244 = load ptr, ptr %243, align 8, !tbaa !203
  br label %245

245:                                              ; preds = %242, %238
  %246 = phi ptr [ %244, %242 ], [ %240, %238 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #11
  %247 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  %248 = load float, ptr %247, align 4, !tbaa !48
  store float %248, ptr %2, align 4, !tbaa !48
  %249 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 1
  %250 = load float, ptr %249, align 4, !tbaa !48
  %251 = getelementptr inbounds float, ptr %2, i64 1
  store float %250, ptr %251, align 4, !tbaa !48
  %252 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 2
  %253 = load float, ptr %252, align 4, !tbaa !48
  %254 = getelementptr inbounds float, ptr %2, i64 2
  store float %253, ptr %254, align 4, !tbaa !48
  %255 = getelementptr inbounds %struct.Object, ptr %246, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %255, ptr noundef nonnull %2) #11
  %256 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 21
  call void @projectFloatView(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %256) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #11
  br label %260

257:                                              ; preds = %233
  %258 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  %259 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 21
  call void @projectFloatView(ptr noundef %0, ptr noundef nonnull %258, ptr noundef nonnull %259) #11
  br label %260

260:                                              ; preds = %245, %257
  %261 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 5
  %262 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20
  %263 = load float, ptr %262, align 4, !tbaa !48
  store float %263, ptr %261, align 4, !tbaa !48
  %264 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 1
  %265 = load float, ptr %264, align 4, !tbaa !48
  %266 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 5, i64 1
  store float %265, ptr %266, align 4, !tbaa !48
  %267 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 20, i64 2
  %268 = load float, ptr %267, align 4, !tbaa !48
  %269 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 13, i32 5, i64 2
  store float %268, ptr %269, align 4, !tbaa !48
  %270 = load i32, ptr %234, align 4, !tbaa !184
  %271 = and i32 %270, 6
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %283, label %273

273:                                              ; preds = %260
  %274 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %275 = load ptr, ptr %274, align 8, !tbaa !52
  %276 = icmp eq ptr %275, null
  br i1 %276, label %277, label %280

277:                                              ; preds = %273
  %278 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %279 = load ptr, ptr %278, align 8, !tbaa !203
  br label %280

280:                                              ; preds = %273, %277
  %281 = phi ptr [ %279, %277 ], [ %275, %273 ]
  %282 = getelementptr inbounds %struct.Object, ptr %281, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %282, ptr noundef nonnull %261) #11
  br label %283

283:                                              ; preds = %280, %260
  %284 = load i32, ptr %234, align 4, !tbaa !184
  %285 = and i32 %284, 1
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %343, label %287

287:                                              ; preds = %283
  %288 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %289 = load i8, ptr %288, align 8, !tbaa !50
  %290 = icmp eq i8 %289, 1
  br i1 %290, label %291, label %343

291:                                              ; preds = %287
  %292 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %293 = load ptr, ptr %292, align 8, !tbaa !94
  %294 = icmp eq ptr %293, null
  br i1 %294, label %343, label %295

295:                                              ; preds = %291
  %296 = getelementptr inbounds %struct.ARegion, ptr %293, i64 0, i32 8
  %297 = load i16, ptr %296, align 2, !tbaa !99
  %298 = icmp ne i16 %297, 0
  %299 = and i32 %284, 16
  %300 = icmp eq i32 %299, 0
  %301 = or i1 %300, %298
  br i1 %301, label %343, label %302

302:                                              ; preds = %295
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %303 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 2
  %304 = load float, ptr %303, align 4, !tbaa !48
  store float %304, ptr %5, align 4, !tbaa !48
  %305 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 2, i64 1
  %306 = load float, ptr %305, align 4, !tbaa !48
  %307 = getelementptr inbounds float, ptr %5, i64 1
  store float %306, ptr %307, align 4, !tbaa !48
  %308 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 28, i64 2, i64 2
  %309 = load float, ptr %308, align 4, !tbaa !48
  %310 = getelementptr inbounds float, ptr %5, i64 2
  store float %309, ptr %310, align 4, !tbaa !48
  %311 = fmul float %306, %306
  %312 = call float @llvm.fmuladd.f32(float %304, float %304, float %311)
  %313 = call float @llvm.fmuladd.f32(float %309, float %309, float %312)
  %314 = fcmp ogt float %313, 0x38AA95A5C0000000
  br i1 %314, label %315, label %324

315:                                              ; preds = %302
  %316 = call float @sqrtf(float noundef %313) #11
  %317 = fdiv float 1.000000e+00, %316
  %318 = load float, ptr %5, align 4, !tbaa !48
  %319 = fmul float %318, %317
  store float %319, ptr %5, align 4, !tbaa !48
  %320 = load float, ptr %307, align 4, !tbaa !48
  %321 = fmul float %317, %320
  store float %321, ptr %307, align 4, !tbaa !48
  %322 = load float, ptr %310, align 4, !tbaa !48
  %323 = fmul float %317, %322
  br label %325

324:                                              ; preds = %302
  store float 0.000000e+00, ptr %5, align 4, !tbaa !48
  store float 0.000000e+00, ptr %307, align 4, !tbaa !48
  br label %325

325:                                              ; preds = %315, %324
  %326 = phi float [ 0.000000e+00, %324 ], [ %323, %315 ]
  store float %326, ptr %310, align 4, !tbaa !48
  %327 = load float, ptr %262, align 4, !tbaa !48
  %328 = load float, ptr %5, align 4, !tbaa !48
  %329 = call float @llvm.fmuladd.f32(float %328, float -6.000000e+00, float %327)
  store float %329, ptr %5, align 4, !tbaa !48
  %330 = load float, ptr %264, align 4, !tbaa !48
  %331 = load float, ptr %307, align 4, !tbaa !48
  %332 = call float @llvm.fmuladd.f32(float %331, float -6.000000e+00, float %330)
  store float %332, ptr %307, align 4, !tbaa !48
  %333 = load float, ptr %267, align 4, !tbaa !48
  %334 = call float @llvm.fmuladd.f32(float %326, float -6.000000e+00, float %333)
  store float %334, ptr %310, align 4, !tbaa !48
  %335 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 21
  call void @projectFloatView(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %335) #11
  %336 = load i32, ptr %0, align 8, !tbaa !172
  %337 = icmp eq i32 %336, 1
  br i1 %337, label %338, label %342

338:                                              ; preds = %325
  %339 = load float, ptr %5, align 4, !tbaa !48
  store float %339, ptr %262, align 4, !tbaa !48
  %340 = load float, ptr %307, align 4, !tbaa !48
  store float %340, ptr %264, align 4, !tbaa !48
  %341 = load float, ptr %310, align 4, !tbaa !48
  store float %341, ptr %267, align 4, !tbaa !48
  store float %339, ptr %261, align 4, !tbaa !48
  store float %340, ptr %266, align 4, !tbaa !48
  store float %341, ptr %269, align 4, !tbaa !48
  br label %342

342:                                              ; preds = %338, %325
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  br label %343

343:                                              ; preds = %287, %291, %295, %342, %283
  %344 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 33
  %345 = load i8, ptr %344, align 8, !tbaa !50
  %346 = icmp eq i8 %345, 1
  br i1 %346, label %347, label %380

347:                                              ; preds = %343
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  %348 = load i32, ptr %234, align 4, !tbaa !184
  %349 = and i32 %348, 6
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %361, label %351

351:                                              ; preds = %347
  %352 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 63
  %353 = load ptr, ptr %352, align 8, !tbaa !52
  %354 = icmp eq ptr %353, null
  br i1 %354, label %355, label %358

355:                                              ; preds = %351
  %356 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 39
  %357 = load ptr, ptr %356, align 8, !tbaa !203
  br label %358

358:                                              ; preds = %351, %355
  %359 = phi ptr [ %357, %355 ], [ %353, %351 ]
  %360 = getelementptr inbounds %struct.Object, ptr %359, i64 0, i32 47
  call void @mul_v3_m4v3(ptr noundef nonnull %6, ptr noundef nonnull %360, ptr noundef nonnull %262) #11
  br label %367

361:                                              ; preds = %347
  %362 = load float, ptr %262, align 4, !tbaa !48
  store float %362, ptr %6, align 4, !tbaa !48
  %363 = load float, ptr %264, align 4, !tbaa !48
  %364 = getelementptr inbounds float, ptr %6, i64 1
  store float %363, ptr %364, align 4, !tbaa !48
  %365 = load float, ptr %267, align 4, !tbaa !48
  %366 = getelementptr inbounds float, ptr %6, i64 2
  store float %365, ptr %366, align 4, !tbaa !48
  br label %367

367:                                              ; preds = %361, %358
  %368 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 55
  %369 = load ptr, ptr %368, align 8, !tbaa !94
  %370 = getelementptr inbounds %struct.ARegion, ptr %369, i64 0, i32 8
  %371 = load i16, ptr %370, align 2, !tbaa !99
  %372 = icmp eq i16 %371, 0
  br i1 %372, label %373, label %377

373:                                              ; preds = %367
  %374 = getelementptr inbounds %struct.ARegion, ptr %369, i64 0, i32 30
  %375 = load ptr, ptr %374, align 8, !tbaa !323
  %376 = call float @ED_view3d_calc_zfac(ptr noundef %375, ptr noundef nonnull %6, ptr noundef null) #11
  br label %377

377:                                              ; preds = %367, %373
  %378 = phi float [ %376, %373 ], [ 0.000000e+00, %367 ]
  %379 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 62
  store float %378, ptr %379, align 8, !tbaa !324
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  br label %380

380:                                              ; preds = %377, %343
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @ED_view3d_calc_zfac(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @calculatePropRatio(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !143
  %4 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !184
  %6 = and i32 %5, 2048
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !113
  %10 = icmp sgt i32 %9, 0
  br i1 %7, label %21, label %11

11:                                               ; preds = %1
  br i1 %10, label %12, label %113

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 46
  %14 = and i32 %5, 4096
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 18
  %17 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 18
  %18 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 18
  %19 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 18
  %20 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 45
  br label %22

21:                                               ; preds = %1
  br i1 %10, label %125, label %132

22:                                               ; preds = %12, %108
  %23 = phi ptr [ %3, %12 ], [ %110, %108 ]
  %24 = phi i32 [ 0, %12 ], [ %109, %108 ]
  %25 = getelementptr inbounds %struct.TransData, ptr %23, i64 0, i32 16
  %26 = load i32, ptr %25, align 8, !tbaa !185
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.TransData, ptr %23, i64 0, i32 2
  store float 1.000000e+00, ptr %30, align 8, !tbaa !325
  br label %108

31:                                               ; preds = %22
  %32 = load i32, ptr %4, align 4, !tbaa !184
  %33 = and i32 %32, 524288
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.TransData, ptr %23, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !186
  %38 = load float, ptr %37, align 4, !tbaa !48
  %39 = load i16, ptr %13, align 8, !tbaa !259
  %40 = sitofp i16 %39 to float
  %41 = fmul float %38, %40
  %42 = fcmp olt float %41, 0xBEE4F8B580000000
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = or i32 %26, 2048
  store i32 %44, ptr %25, align 8, !tbaa !185
  %45 = getelementptr inbounds %struct.TransData, ptr %23, i64 0, i32 2
  store float 0.000000e+00, ptr %45, align 8, !tbaa !325
  tail call fastcc void @restoreElement(ptr noundef %23)
  br label %108

46:                                               ; preds = %35, %31
  br i1 %15, label %54, label %47

47:                                               ; preds = %46
  %48 = and i32 %26, 16
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load float, ptr %23, align 8, !tbaa !326
  %52 = load float, ptr %16, align 4, !tbaa !264
  %53 = fcmp ogt float %51, %52
  br i1 %53, label %59, label %61

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.TransData, ptr %23, i64 0, i32 1
  %56 = load float, ptr %55, align 4, !tbaa !327
  %57 = load float, ptr %17, align 4, !tbaa !264
  %58 = fcmp ogt float %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %54, %50, %47
  %60 = getelementptr inbounds %struct.TransData, ptr %23, i64 0, i32 2
  store float 0.000000e+00, ptr %60, align 8, !tbaa !325
  tail call fastcc void @restoreElement(ptr noundef %23)
  br label %108

61:                                               ; preds = %50, %54
  %62 = and i32 %26, -6
  store i32 %62, ptr %25, align 8, !tbaa !185
  br i1 %15, label %68, label %63

63:                                               ; preds = %61
  %64 = load float, ptr %18, align 4, !tbaa !264
  %65 = load float, ptr %23, align 8, !tbaa !326
  %66 = fsub float %64, %65
  %67 = fdiv float %66, %64
  br label %74

68:                                               ; preds = %61
  %69 = load float, ptr %19, align 4, !tbaa !264
  %70 = getelementptr inbounds %struct.TransData, ptr %23, i64 0, i32 1
  %71 = load float, ptr %70, align 4, !tbaa !327
  %72 = fsub float %69, %71
  %73 = fdiv float %72, %69
  br label %74

74:                                               ; preds = %68, %63
  %75 = phi float [ %67, %63 ], [ %73, %68 ]
  %76 = fcmp olt float %75, 0.000000e+00
  %77 = select i1 %76, float 0.000000e+00, float %75
  %78 = load i16, ptr %20, align 2, !tbaa !265
  switch i16 %78, label %106 [
    i16 3, label %79
    i16 0, label %82
    i16 2, label %89
    i16 4, label %92
    i16 5, label %94
    i16 1, label %96
    i16 6, label %102
  ]

79:                                               ; preds = %74
  %80 = fmul float %77, %77
  %81 = getelementptr inbounds %struct.TransData, ptr %23, i64 0, i32 2
  store float %80, ptr %81, align 8, !tbaa !325
  br label %108

82:                                               ; preds = %74
  %83 = fmul float %77, 3.000000e+00
  %84 = fmul float %77, -2.000000e+00
  %85 = fmul float %77, %84
  %86 = fmul float %77, %85
  %87 = tail call float @llvm.fmuladd.f32(float %83, float %77, float %86)
  %88 = getelementptr inbounds %struct.TransData, ptr %23, i64 0, i32 2
  store float %87, ptr %88, align 8, !tbaa !325
  br label %108

89:                                               ; preds = %74
  %90 = tail call float @sqrtf(float noundef %77) #11
  %91 = getelementptr inbounds %struct.TransData, ptr %23, i64 0, i32 2
  store float %90, ptr %91, align 8, !tbaa !325
  br label %108

92:                                               ; preds = %74
  %93 = getelementptr inbounds %struct.TransData, ptr %23, i64 0, i32 2
  store float %77, ptr %93, align 8, !tbaa !325
  br label %108

94:                                               ; preds = %74
  %95 = getelementptr inbounds %struct.TransData, ptr %23, i64 0, i32 2
  store float 1.000000e+00, ptr %95, align 8, !tbaa !325
  br label %108

96:                                               ; preds = %74
  %97 = fneg float %77
  %98 = fmul float %77, %97
  %99 = tail call float @llvm.fmuladd.f32(float %77, float 2.000000e+00, float %98)
  %100 = tail call float @sqrtf(float noundef %99) #11
  %101 = getelementptr inbounds %struct.TransData, ptr %23, i64 0, i32 2
  store float %100, ptr %101, align 8, !tbaa !325
  br label %108

102:                                              ; preds = %74
  %103 = tail call float @BLI_frand() #11
  %104 = fmul float %77, %103
  %105 = getelementptr inbounds %struct.TransData, ptr %23, i64 0, i32 2
  store float %104, ptr %105, align 8, !tbaa !325
  br label %108

106:                                              ; preds = %74
  %107 = getelementptr inbounds %struct.TransData, ptr %23, i64 0, i32 2
  store float 1.000000e+00, ptr %107, align 8, !tbaa !325
  br label %108

108:                                              ; preds = %29, %59, %106, %102, %96, %94, %92, %89, %82, %79, %43
  %109 = add nuw nsw i32 %24, 1
  %110 = getelementptr inbounds %struct.TransData, ptr %23, i64 1
  %111 = load i32, ptr %8, align 8, !tbaa !113
  %112 = icmp slt i32 %109, %111
  br i1 %112, label %22, label %113, !llvm.loop !328

113:                                              ; preds = %108, %11
  %114 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 45
  %115 = load i16, ptr %114, align 2, !tbaa !265
  %116 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  switch i16 %115, label %124 [
    i16 3, label %117
    i16 0, label %118
    i16 2, label %119
    i16 4, label %120
    i16 5, label %121
    i16 1, label %122
    i16 6, label %123
  ]

117:                                              ; preds = %113
  store i64 11664110607946536, ptr %116, align 1
  br label %134

118:                                              ; preds = %113
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %116, ptr noundef nonnull align 1 dereferenceable(9) @.str.10, i64 9, i1 false) #11
  br label %134

119:                                              ; preds = %113
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %116, ptr noundef nonnull align 1 dereferenceable(7) @.str.11, i64 7, i1 false) #11
  br label %134

120:                                              ; preds = %113
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %116, ptr noundef nonnull align 1 dereferenceable(9) @.str.12, i64 9, i1 false) #11
  br label %134

121:                                              ; preds = %113
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %116, ptr noundef nonnull align 1 dereferenceable(11) @.str.13, i64 11, i1 false) #11
  br label %134

122:                                              ; preds = %113
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %116, ptr noundef nonnull align 1 dereferenceable(9) @.str.14, i64 9, i1 false) #11
  br label %134

123:                                              ; preds = %113
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %116, ptr noundef nonnull align 1 dereferenceable(9) @.str.15, i64 9, i1 false) #11
  br label %134

124:                                              ; preds = %113
  store i8 0, ptr %116, align 8, !tbaa !221
  br label %134

125:                                              ; preds = %21, %125
  %126 = phi ptr [ %130, %125 ], [ %3, %21 ]
  %127 = phi i32 [ %129, %125 ], [ 0, %21 ]
  %128 = getelementptr inbounds %struct.TransData, ptr %126, i64 0, i32 2
  store float 1.000000e+00, ptr %128, align 8, !tbaa !325
  %129 = add nuw nsw i32 %127, 1
  %130 = getelementptr inbounds %struct.TransData, ptr %126, i64 1
  %131 = icmp eq i32 %129, %9
  br i1 %131, label %132, label %125, !llvm.loop !329

132:                                              ; preds = %125, %21
  %133 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 19
  store i8 0, ptr %133, align 8, !tbaa !221
  br label %134

134:                                              ; preds = %117, %118, %119, %120, %121, %122, %123, %124, %132
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

declare float @BLI_frand() local_unnamed_addr #2

declare ptr @BKE_curve_editNurbs_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @clipMirrorModifier(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 26
  %9 = load ptr, ptr %8, align 8, !tbaa !107
  %10 = icmp eq ptr %9, null
  br i1 %10, label %173, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 10
  %13 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  %14 = getelementptr inbounds %struct.TransInfo, ptr %0, i64 0, i32 9
  %15 = getelementptr inbounds float, ptr %6, i64 1
  %16 = getelementptr inbounds float, ptr %6, i64 2
  %17 = getelementptr inbounds float, ptr %7, i64 1
  %18 = getelementptr inbounds float, ptr %7, i64 2
  br label %19

19:                                               ; preds = %11, %167
  %20 = phi ptr [ %9, %11 ], [ %171, %167 ]
  %21 = phi float [ 0.000000e+00, %11 ], [ %170, %167 ]
  %22 = phi float [ 0.000000e+00, %11 ], [ %169, %167 ]
  %23 = phi float [ 0.000000e+00, %11 ], [ %168, %167 ]
  %24 = getelementptr inbounds %struct.ModifierData, ptr %20, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !330
  %26 = icmp eq i32 %25, 5
  br i1 %26, label %27, label %167

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.ModifierData, ptr %20, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !332
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %167, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.MirrorModifierData, ptr %20, i64 0, i32 2
  %34 = load i16, ptr %33, align 2, !tbaa !333
  %35 = zext i16 %34 to i32
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %167, label %38

38:                                               ; preds = %32
  %39 = and i32 %35, 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.MirrorModifierData, ptr %20, i64 0, i32 3
  %43 = load float, ptr %42, align 4, !tbaa !335
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi float [ %43, %41 ], [ %23, %38 ]
  %46 = phi i32 [ 1, %41 ], [ 0, %38 ]
  %47 = and i16 %34, 16
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = or disjoint i32 %46, 2
  %51 = getelementptr inbounds %struct.MirrorModifierData, ptr %20, i64 0, i32 3
  %52 = load float, ptr %51, align 4, !tbaa !335
  br label %53

53:                                               ; preds = %49, %44
  %54 = phi float [ %52, %49 ], [ %22, %44 ]
  %55 = phi i32 [ %50, %49 ], [ %46, %44 ]
  %56 = and i16 %34, 32
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = or i32 %55, 4
  %60 = getelementptr inbounds %struct.MirrorModifierData, ptr %20, i64 0, i32 3
  %61 = load float, ptr %60, align 4, !tbaa !335
  br label %62

62:                                               ; preds = %58, %53
  %63 = phi float [ %61, %58 ], [ %21, %53 ]
  %64 = phi i32 [ %59, %58 ], [ %55, %53 ]
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %167, label %66

66:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %67 = load ptr, ptr %12, align 8, !tbaa !143
  %68 = getelementptr inbounds %struct.MirrorModifierData, ptr %20, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !336
  %70 = icmp eq ptr %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  %72 = getelementptr inbounds %struct.Object, ptr %69, i64 0, i32 47
  %73 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %5, ptr noundef nonnull %72) #11
  call void @mul_m4_m4m4(ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %13) #11
  %74 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %4, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  br label %75

75:                                               ; preds = %71, %66
  %76 = load i32, ptr %14, align 8, !tbaa !113
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %166

78:                                               ; preds = %75
  %79 = and i32 %64, 1
  %80 = icmp eq i32 %79, 0
  %81 = and i32 %64, 2
  %82 = icmp eq i32 %81, 0
  %83 = and i32 %64, 4
  %84 = icmp eq i32 %83, 0
  br label %85

85:                                               ; preds = %78, %160
  %86 = phi ptr [ %67, %78 ], [ %162, %160 ]
  %87 = phi i32 [ 0, %78 ], [ %161, %160 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  %88 = getelementptr inbounds %struct.TransData, ptr %86, i64 0, i32 16
  %89 = load i32, ptr %88, align 8, !tbaa !185
  %90 = and i32 %89, 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %165

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.TransData, ptr %86, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !186
  %95 = icmp eq ptr %94, null
  br i1 %95, label %165, label %96

96:                                               ; preds = %92
  %97 = and i32 %89, 2048
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %160

99:                                               ; preds = %96
  %100 = load float, ptr %94, align 4, !tbaa !48
  store float %100, ptr %6, align 4, !tbaa !48
  %101 = getelementptr inbounds float, ptr %94, i64 1
  %102 = load float, ptr %101, align 4, !tbaa !48
  store float %102, ptr %15, align 4, !tbaa !48
  %103 = getelementptr inbounds float, ptr %94, i64 2
  %104 = load float, ptr %103, align 4, !tbaa !48
  store float %104, ptr %16, align 4, !tbaa !48
  %105 = getelementptr inbounds %struct.TransData, ptr %86, i64 0, i32 4
  %106 = load float, ptr %105, align 4, !tbaa !48
  store float %106, ptr %7, align 4, !tbaa !48
  %107 = getelementptr inbounds %struct.TransData, ptr %86, i64 0, i32 4, i64 1
  %108 = load float, ptr %107, align 4, !tbaa !48
  store float %108, ptr %17, align 4, !tbaa !48
  %109 = getelementptr inbounds %struct.TransData, ptr %86, i64 0, i32 4, i64 2
  %110 = load float, ptr %109, align 4, !tbaa !48
  store float %110, ptr %18, align 4, !tbaa !48
  %111 = load ptr, ptr %68, align 8, !tbaa !336
  %112 = icmp eq ptr %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %99
  call void @mul_m4_v3(ptr noundef nonnull %3, ptr noundef nonnull %6) #11
  call void @mul_m4_v3(ptr noundef nonnull %3, ptr noundef nonnull %7) #11
  br label %114

114:                                              ; preds = %113, %99
  br i1 %80, label %124, label %115

115:                                              ; preds = %114
  %116 = load float, ptr %7, align 4, !tbaa !48
  %117 = call float @llvm.fabs.f32(float %116)
  %118 = fcmp ugt float %117, %45
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load float, ptr %6, align 4, !tbaa !48
  %121 = fmul float %116, %120
  %122 = fcmp olt float %121, 0.000000e+00
  br i1 %122, label %123, label %124

123:                                              ; preds = %119, %115
  store float 0.000000e+00, ptr %6, align 4, !tbaa !48
  br label %124

124:                                              ; preds = %119, %123, %114
  %125 = phi i32 [ 1, %123 ], [ 0, %119 ], [ 0, %114 ]
  br i1 %82, label %135, label %126

126:                                              ; preds = %124
  %127 = load float, ptr %17, align 4, !tbaa !48
  %128 = call float @llvm.fabs.f32(float %127)
  %129 = fcmp ugt float %128, %54
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = load float, ptr %15, align 4, !tbaa !48
  %132 = fmul float %127, %131
  %133 = fcmp olt float %132, 0.000000e+00
  br i1 %133, label %134, label %135

134:                                              ; preds = %130, %126
  store float 0.000000e+00, ptr %15, align 4, !tbaa !48
  br label %135

135:                                              ; preds = %130, %134, %124
  %136 = phi i32 [ 1, %134 ], [ %125, %130 ], [ %125, %124 ]
  br i1 %84, label %146, label %137

137:                                              ; preds = %135
  %138 = load float, ptr %18, align 4, !tbaa !48
  %139 = call float @llvm.fabs.f32(float %138)
  %140 = fcmp ugt float %139, %63
  br i1 %140, label %141, label %145

141:                                              ; preds = %137
  %142 = load float, ptr %16, align 4, !tbaa !48
  %143 = fmul float %138, %142
  %144 = fcmp olt float %143, 0.000000e+00
  br i1 %144, label %145, label %146

145:                                              ; preds = %141, %137
  store float 0.000000e+00, ptr %16, align 4, !tbaa !48
  br label %146

146:                                              ; preds = %141, %145, %135
  %147 = phi i32 [ 1, %145 ], [ %136, %141 ], [ %136, %135 ]
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %160, label %149

149:                                              ; preds = %146
  %150 = load ptr, ptr %68, align 8, !tbaa !336
  %151 = icmp eq ptr %150, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %149
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %6) #11
  br label %153

153:                                              ; preds = %152, %149
  %154 = load ptr, ptr %93, align 8, !tbaa !186
  %155 = load float, ptr %6, align 4, !tbaa !48
  store float %155, ptr %154, align 4, !tbaa !48
  %156 = load float, ptr %15, align 4, !tbaa !48
  %157 = getelementptr inbounds float, ptr %154, i64 1
  store float %156, ptr %157, align 4, !tbaa !48
  %158 = load float, ptr %16, align 4, !tbaa !48
  %159 = getelementptr inbounds float, ptr %154, i64 2
  store float %158, ptr %159, align 4, !tbaa !48
  br label %160

160:                                              ; preds = %146, %153, %96
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  %161 = add nuw nsw i32 %87, 1
  %162 = getelementptr inbounds %struct.TransData, ptr %86, i64 1
  %163 = load i32, ptr %14, align 8, !tbaa !113
  %164 = icmp slt i32 %161, %163
  br i1 %164, label %85, label %166, !llvm.loop !337

165:                                              ; preds = %92, %85
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  br label %166

166:                                              ; preds = %160, %75, %165
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #11
  br label %167

167:                                              ; preds = %32, %166, %62, %19, %27
  %168 = phi float [ %23, %27 ], [ %23, %19 ], [ %45, %166 ], [ %45, %62 ], [ %23, %32 ]
  %169 = phi float [ %22, %27 ], [ %22, %19 ], [ %54, %166 ], [ %54, %62 ], [ %22, %32 ]
  %170 = phi float [ %21, %27 ], [ %21, %19 ], [ %63, %166 ], [ %63, %62 ], [ %21, %32 ]
  %171 = load ptr, ptr %20, align 8, !tbaa !107
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %19, !llvm.loop !338

173:                                              ; preds = %167, %2
  ret void
}

declare void @applyProject(ptr noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @BKE_nurb_handles_calc(ptr noundef) local_unnamed_addr #2

declare void @BKE_nurb_test2D(ptr noundef) local_unnamed_addr #2

declare void @outside_lattice(ptr noundef) local_unnamed_addr #2

declare void @EDBM_mesh_normals_update(ptr noundef) local_unnamed_addr #2

declare void @BKE_editmesh_tessface_calc(ptr noundef) local_unnamed_addr #2

declare void @rotation_between_vecs_to_quat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @ED_rollBoneToVector(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare float @angle_compat_rad(float noundef, float noundef) local_unnamed_addr #2

declare void @transform_armature_mirror_update(ptr noundef) local_unnamed_addr #2

declare void @restoreBones(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @animrecord_check_state(ptr noundef readonly %0, ptr noundef %1, ptr noundef readonly %2) unnamed_addr #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = icmp eq ptr %2, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmTimer, ptr %2, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !339
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %9, %7 ], [ null, %3 ]
  %12 = icmp eq ptr %0, null
  %13 = icmp eq ptr %1, null
  %14 = or i1 %12, %13
  %15 = icmp eq ptr %11, null
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %60, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %19 = load ptr, ptr %18, align 8, !tbaa !205
  %20 = getelementptr inbounds %struct.ToolSettings, ptr %19, i64 0, i32 22
  %21 = load i16, ptr %20, align 2, !tbaa !341
  %22 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 92), align 2
  %23 = and i16 %22, 1
  %24 = icmp ne i16 %23, 0
  %25 = and i16 %21, 1025
  %26 = icmp ne i16 %25, 1024
  %27 = select i1 %26, i1 true, i1 %24
  br i1 %27, label %60, label %28

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.ScreenAnimData, ptr %11, i64 0, i32 3
  %30 = load i16, ptr %29, align 4, !tbaa !342
  %31 = and i16 %30, 2
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %60, label %33

33:                                               ; preds = %28
  %34 = tail call ptr @BKE_animdata_from_id(ptr noundef %1) #11
  %35 = load ptr, ptr %34, align 8, !tbaa !344
  %36 = icmp eq ptr %35, null
  br i1 %36, label %60, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.AnimData, ptr %34, i64 0, i32 7
  %39 = load i32, ptr %38, align 8, !tbaa !346
  %40 = and i32 %39, 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  call void @calc_action_range(ptr noundef nonnull %35, ptr noundef nonnull %4, ptr noundef nonnull %5, i16 noundef signext 1) #11
  %43 = load float, ptr %5, align 4, !tbaa !48
  %44 = load float, ptr %4, align 4, !tbaa !48
  %45 = fadd float %44, 2.000000e+00
  %46 = fcmp ogt float %43, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = load ptr, ptr %34, align 8, !tbaa !344
  %49 = call ptr @add_nlastrip_to_stack(ptr noundef nonnull %34, ptr noundef %48) #11
  %50 = load ptr, ptr %34, align 8, !tbaa !344
  %51 = getelementptr inbounds %struct.ID, ptr %50, i64 0, i32 6
  %52 = load i32, ptr %51, align 4, !tbaa !347
  %53 = add nsw i32 %52, -1
  store i32 %53, ptr %51, align 4, !tbaa !347
  store ptr null, ptr %34, align 8, !tbaa !344
  %54 = getelementptr inbounds %struct.NlaStrip, ptr %49, i64 0, i32 19
  store i16 2, ptr %54, align 2, !tbaa !349
  %55 = getelementptr inbounds %struct.NlaStrip, ptr %49, i64 0, i32 23
  %56 = load i32, ptr %55, align 8, !tbaa !350
  %57 = and i32 %56, -1028
  store i32 %57, ptr %55, align 8, !tbaa !350
  %58 = getelementptr inbounds %struct.AnimData, ptr %34, i64 0, i32 10
  store i16 2, ptr %58, align 2, !tbaa !351
  br label %59

59:                                               ; preds = %47, %42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %60

60:                                               ; preds = %17, %28, %59, %37, %33, %10
  ret void
}

declare void @autokeyframe_pose_cb_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

declare void @BIK_clear_data(ptr noundef) local_unnamed_addr #2

declare void @BKE_pose_where_is(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PE_get_current(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @flushTransParticles(ptr noundef) local_unnamed_addr #2

declare void @autokeyframe_ob_cb_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #2

declare void @calc_action_range(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @add_nlastrip_to_stack(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @flushTransUVs(ptr noundef) local_unnamed_addr #2

declare void @ED_uvedit_live_unwrap_re_solve() local_unnamed_addr #2

declare ptr @CTX_data_edit_mask(ptr noundef) local_unnamed_addr #2

declare void @flushTransMasking(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ANIM_animdata_context_getdata(ptr noundef) local_unnamed_addr #2

declare void @flushTransIntFrameActionData(ptr noundef) local_unnamed_addr #2

declare i64 @ANIM_animdata_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ANIM_list_elem_update(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ANIM_animdata_freelist(ptr noundef) local_unnamed_addr #2

declare void @ANIM_id_update(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_nlameta_flush_transforms(ptr noundef) local_unnamed_addr #2

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #8

declare i32 @ED_markers_find_nearest_marker_time(ptr noundef, float noundef) local_unnamed_addr #2

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_float_set(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_nlatrack_has_space(ptr noundef, float noundef, float noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_nlatrack_add_strip(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_sequence_invalidate_dependent(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_sequencer_preprocessed_cache_cleanup() local_unnamed_addr #2

declare void @flushTransSeq(ptr noundef) local_unnamed_addr #2

declare void @flushTransGraphData(ptr noundef) local_unnamed_addr #2

declare signext i16 @test_time_fcurve(ptr noundef) local_unnamed_addr #2

declare void @calchandles_fcurve(ptr noundef) local_unnamed_addr #2

declare void @remake_graph_transdata(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ED_space_clip_get_clip(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_get_active_tracks(ptr noundef) local_unnamed_addr #2

declare i32 @ED_space_clip_get_clip_frame_number(ptr noundef) local_unnamed_addr #2

declare void @flushTransTracking(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_marker_get(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_tracking_marker_clamp(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nounwind }

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
!34 = !{!35, !39, i64 972}
!35 = !{!"TransInfo", !36, i64 0, !36, i64 4, !36, i64 8, !39, i64 12, !36, i64 16, !40, i64 20, !40, i64 24, !41, i64 32, !41, i64 40, !36, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !42, i64 80, !43, i64 296, !46, i64 440, !47, i64 584, !36, i64 640, !40, i64 644, !37, i64 648, !37, i64 668, !37, i64 680, !37, i64 688, !39, i64 696, !39, i64 698, !37, i64 700, !37, i64 712, !37, i64 716, !37, i64 780, !37, i64 844, !37, i64 908, !39, i64 972, !39, i64 974, !37, i64 976, !37, i64 977, !37, i64 980, !37, i64 992, !37, i64 1028, !37, i64 1064, !41, i64 1128, !41, i64 1136, !41, i64 1144, !39, i64 1152, !39, i64 1154, !39, i64 1156, !39, i64 1158, !39, i64 1160, !37, i64 1164, !37, i64 1180, !37, i64 1196, !37, i64 1208, !37, i64 1220, !41, i64 1224, !41, i64 1232, !41, i64 1240, !41, i64 1248, !41, i64 1256, !41, i64 1264, !41, i64 1272, !41, i64 1280, !41, i64 1288, !37, i64 1296, !40, i64 1304, !41, i64 1312, !37, i64 1320, !41, i64 1360, !41, i64 1368, !41, i64 1376, !41, i64 1384}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"float", !37, i64 0}
!41 = !{!"any pointer", !37, i64 0}
!42 = !{!"TransCon", !39, i64 0, !37, i64 2, !37, i64 52, !37, i64 88, !37, i64 124, !37, i64 160, !37, i64 172, !36, i64 180, !41, i64 184, !41, i64 192, !41, i64 200, !41, i64 208}
!43 = !{!"TransSnap", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11, !39, i64 12, !37, i64 16, !37, i64 28, !37, i64 40, !37, i64 52, !37, i64 64, !44, i64 72, !41, i64 88, !40, i64 96, !45, i64 104, !41, i64 112, !41, i64 120, !41, i64 128, !41, i64 136}
!44 = !{!"ListBase", !41, i64 0, !41, i64 8}
!45 = !{!"double", !37, i64 0}
!46 = !{!"NumInput", !39, i64 0, !36, i64 4, !37, i64 8, !37, i64 20, !39, i64 22, !37, i64 24, !37, i64 32, !37, i64 44, !37, i64 56, !39, i64 68, !37, i64 70, !36, i64 136}
!47 = !{!"MouseInput", !41, i64 0, !41, i64 8, !37, i64 16, !37, i64 24, !37, i64 28, !37, i64 36, !40, i64 44, !41, i64 48}
!48 = !{!40, !40, i64 0}
!49 = !{!35, !36, i64 16}
!50 = !{!35, !37, i64 976}
!51 = !{!35, !41, i64 1232}
!52 = !{!35, !41, i64 1312}
!53 = !{!54, !39, i64 136}
!54 = !{!"Object", !55, i64 0, !41, i64 120, !41, i64 128, !39, i64 136, !39, i64 138, !36, i64 140, !36, i64 144, !36, i64 148, !37, i64 152, !41, i64 216, !41, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !41, i64 280, !41, i64 288, !41, i64 296, !41, i64 304, !56, i64 312, !41, i64 360, !44, i64 368, !44, i64 384, !44, i64 400, !44, i64 416, !36, i64 432, !36, i64 436, !41, i64 440, !41, i64 448, !36, i64 456, !36, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !40, i64 616, !40, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !36, i64 944, !39, i64 948, !39, i64 950, !39, i64 952, !39, i64 954, !39, i64 956, !39, i64 958, !39, i64 960, !39, i64 962, !39, i64 964, !37, i64 966, !37, i64 967, !36, i64 968, !36, i64 972, !36, i64 976, !36, i64 980, !36, i64 984, !40, i64 988, !40, i64 992, !40, i64 996, !40, i64 1000, !40, i64 1004, !40, i64 1008, !40, i64 1012, !40, i64 1016, !40, i64 1020, !40, i64 1024, !40, i64 1028, !40, i64 1032, !39, i64 1036, !39, i64 1038, !39, i64 1040, !37, i64 1042, !37, i64 1043, !39, i64 1044, !37, i64 1046, !37, i64 1047, !40, i64 1048, !40, i64 1052, !44, i64 1056, !44, i64 1072, !44, i64 1088, !44, i64 1104, !40, i64 1120, !39, i64 1124, !39, i64 1126, !37, i64 1128, !36, i64 1144, !36, i64 1148, !41, i64 1152, !37, i64 1160, !37, i64 1161, !39, i64 1162, !37, i64 1164, !44, i64 1176, !44, i64 1192, !44, i64 1208, !44, i64 1224, !41, i64 1240, !41, i64 1248, !41, i64 1256, !37, i64 1264, !37, i64 1265, !39, i64 1266, !40, i64 1268, !41, i64 1272, !41, i64 1280, !41, i64 1288, !41, i64 1296, !57, i64 1304, !57, i64 1312, !36, i64 1320, !36, i64 1324, !44, i64 1328, !44, i64 1344, !41, i64 1360, !41, i64 1368, !41, i64 1376, !37, i64 1384, !41, i64 1392, !44, i64 1400, !41, i64 1416}
!55 = !{!"ID", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !37, i64 32, !39, i64 98, !36, i64 100, !36, i64 104, !36, i64 108, !41, i64 112}
!56 = !{!"bAnimVizSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44}
!57 = !{!"long", !37, i64 0}
!58 = !{!35, !41, i64 1240}
!59 = !{!60, !41, i64 96}
!60 = !{!"ScrArea", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !61, i64 56, !37, i64 72, !37, i64 73, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !39, i64 84, !37, i64 86, !37, i64 87, !41, i64 88, !44, i64 96, !44, i64 112, !44, i64 128, !44, i64 144}
!61 = !{!"rcti", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!62 = !{!63, !36, i64 36}
!63 = !{!"SpaceImage", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !36, i64 36, !41, i64 40, !64, i64 48, !41, i64 88, !65, i64 96, !66, i64 5360, !41, i64 10520, !37, i64 10528, !40, i64 10536, !40, i64 10540, !40, i64 10544, !40, i64 10548, !40, i64 10552, !37, i64 10556, !37, i64 10557, !39, i64 10558, !39, i64 10560, !39, i64 10562, !37, i64 10564, !37, i64 10565, !37, i64 10566, !37, i64 10567, !67, i64 10568}
!64 = !{!"ImageUser", !41, i64 0, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !37, i64 24, !37, i64 25, !37, i64 26, !37, i64 27, !39, i64 28, !39, i64 30, !39, i64 32, !39, i64 34, !36, i64 36}
!65 = !{!"Scopes", !36, i64 0, !36, i64 4, !36, i64 8, !40, i64 12, !36, i64 16, !40, i64 20, !40, i64 24, !36, i64 28, !40, i64 32, !36, i64 36, !37, i64 40, !66, i64 64, !41, i64 5224, !41, i64 5232, !41, i64 5240, !41, i64 5248, !36, i64 5256, !36, i64 5260}
!66 = !{!"Histogram", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 3080, !37, i64 4104, !40, i64 5128, !40, i64 5132, !39, i64 5136, !39, i64 5138, !36, i64 5140, !37, i64 5144}
!67 = !{!"MaskSpaceInfo", !41, i64 0, !37, i64 8, !37, i64 9, !37, i64 10, !37, i64 11}
!68 = !{!54, !41, i64 296}
!69 = !{!35, !41, i64 1256}
!70 = !{!71, !41, i64 48}
!71 = !{!"bAnimContext", !41, i64 0, !39, i64 8, !39, i64 10, !39, i64 12, !39, i64 14, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72}
!72 = !{!73, !41, i64 168}
!73 = !{!"Scene", !55, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !44, i64 152, !41, i64 168, !41, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !36, i64 232, !36, i64 236, !36, i64 240, !39, i64 244, !37, i64 246, !37, i64 247, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !74, i64 280, !82, i64 4264, !44, i64 4296, !44, i64 4312, !41, i64 4328, !41, i64 4336, !41, i64 4344, !41, i64 4352, !41, i64 4360, !41, i64 4368, !39, i64 4376, !39, i64 4378, !36, i64 4380, !44, i64 4384, !83, i64 4400, !84, i64 4416, !87, i64 4600, !41, i64 4608, !88, i64 4616, !41, i64 4640, !57, i64 4648, !57, i64 4656, !76, i64 4664, !77, i64 4824, !89, i64 4888, !41, i64 4952}
!74 = !{!"RenderData", !75, i64 0, !41, i64 248, !41, i64 256, !78, i64 264, !79, i64 328, !36, i64 400, !36, i64 404, !36, i64 408, !40, i64 412, !36, i64 416, !36, i64 420, !36, i64 424, !36, i64 428, !39, i64 432, !39, i64 434, !40, i64 436, !40, i64 440, !40, i64 444, !40, i64 448, !40, i64 452, !39, i64 456, !39, i64 458, !39, i64 460, !39, i64 462, !39, i64 464, !39, i64 466, !36, i64 468, !39, i64 472, !39, i64 474, !39, i64 476, !39, i64 478, !39, i64 480, !39, i64 482, !36, i64 484, !36, i64 488, !39, i64 492, !39, i64 494, !36, i64 496, !36, i64 500, !39, i64 504, !39, i64 506, !39, i64 508, !39, i64 510, !39, i64 512, !37, i64 514, !37, i64 515, !36, i64 516, !36, i64 520, !36, i64 524, !39, i64 528, !39, i64 530, !39, i64 532, !39, i64 534, !39, i64 536, !39, i64 538, !39, i64 540, !39, i64 542, !80, i64 544, !80, i64 560, !61, i64 576, !44, i64 592, !39, i64 608, !39, i64 610, !40, i64 612, !40, i64 616, !40, i64 620, !40, i64 624, !36, i64 628, !40, i64 632, !40, i64 636, !40, i64 640, !40, i64 644, !39, i64 648, !39, i64 650, !39, i64 652, !39, i64 654, !39, i64 656, !39, i64 658, !40, i64 660, !40, i64 664, !39, i64 668, !39, i64 670, !40, i64 672, !40, i64 676, !37, i64 680, !36, i64 1704, !39, i64 1708, !39, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !36, i64 2520, !39, i64 2524, !39, i64 2526, !40, i64 2528, !40, i64 2532, !39, i64 2536, !39, i64 2538, !40, i64 2540, !39, i64 2544, !39, i64 2546, !36, i64 2548, !39, i64 2552, !39, i64 2554, !39, i64 2556, !39, i64 2558, !40, i64 2560, !40, i64 2564, !41, i64 2568, !36, i64 2576, !40, i64 2580, !37, i64 2584, !81, i64 2616, !36, i64 3976, !36, i64 3980}
!75 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !39, i64 8, !39, i64 10, !40, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !76, i64 24, !77, i64 184}
!76 = !{!"ColorManagedViewSettings", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 72, !40, i64 136, !40, i64 140, !41, i64 144, !41, i64 152}
!77 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!78 = !{!"QuicktimeCodecSettings", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !39, i64 48, !39, i64 50, !36, i64 52, !36, i64 56, !36, i64 60}
!79 = !{!"FFMpegCodecData", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !40, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !41, i64 64}
!80 = !{!"rctf", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!81 = !{!"BakeData", !75, i64 0, !37, i64 248, !39, i64 1272, !39, i64 1274, !39, i64 1276, !39, i64 1278, !40, i64 1280, !40, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!82 = !{!"AudioData", !36, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !36, i64 16, !39, i64 20, !39, i64 22, !40, i64 24, !40, i64 28}
!83 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!84 = !{!"GameData", !83, i64 0, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !39, i64 32, !37, i64 34, !85, i64 40, !39, i64 64, !39, i64 66, !40, i64 68, !86, i64 72, !40, i64 128, !40, i64 132, !36, i64 136, !39, i64 140, !39, i64 142, !39, i64 144, !39, i64 146, !39, i64 148, !39, i64 150, !39, i64 152, !39, i64 154, !39, i64 156, !39, i64 158, !39, i64 160, !39, i64 162, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180}
!85 = !{!"GameDome", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !40, i64 8, !40, i64 12, !41, i64 16}
!86 = !{!"RecastData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !36, i64 40, !40, i64 44, !40, i64 48, !39, i64 52, !39, i64 54}
!87 = !{!"UnitSettings", !40, i64 0, !37, i64 4, !37, i64 5, !39, i64 6}
!88 = !{!"PhysicsSettings", !37, i64 0, !36, i64 12, !36, i64 16, !36, i64 20}
!89 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!90 = !{!91, !41, i64 32}
!91 = !{!"Base", !41, i64 0, !41, i64 8, !36, i64 16, !36, i64 20, !36, i64 24, !39, i64 28, !39, i64 30, !41, i64 32}
!92 = !{!71, !41, i64 56}
!93 = !{!71, !41, i64 16}
!94 = !{!35, !41, i64 1248}
!95 = !{!71, !41, i64 32}
!96 = !{!71, !41, i64 24}
!97 = !{!60, !37, i64 72}
!98 = !{!71, !39, i64 12}
!99 = !{!100, !39, i64 214}
!100 = !{!"ARegion", !41, i64 0, !41, i64 8, !101, i64 16, !61, i64 176, !61, i64 192, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !40, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !41, i64 240, !44, i64 248, !44, i64 264, !44, i64 280, !44, i64 296, !44, i64 312, !44, i64 328, !44, i64 344, !41, i64 360, !41, i64 368, !41, i64 376}
!101 = !{!"View2D", !80, i64 0, !80, i64 16, !61, i64 32, !61, i64 48, !61, i64 64, !37, i64 80, !37, i64 88, !40, i64 96, !40, i64 100, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !39, i64 112, !39, i64 114, !39, i64 116, !39, i64 118, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !41, i64 128, !36, i64 136, !36, i64 140, !41, i64 144, !41, i64 152}
!102 = !{!71, !39, i64 14}
!103 = !{!71, !41, i64 0}
!104 = !{!105, !39, i64 338}
!105 = !{!"SpaceAction", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !37, i64 40, !101, i64 56, !41, i64 216, !106, i64 224, !37, i64 336, !37, i64 337, !39, i64 338, !40, i64 340}
!106 = !{!"bDopeSheet", !41, i64 0, !44, i64 8, !41, i64 24, !37, i64 32, !36, i64 96, !36, i64 100, !36, i64 104, !36, i64 108}
!107 = !{!41, !41, i64 0}
!108 = distinct !{!108, !109, !110}
!109 = !{!"llvm.loop.mustprogress"}
!110 = !{!"llvm.loop.unroll.disable"}
!111 = !{!73, !39, i64 820}
!112 = !{!73, !40, i64 900}
!113 = !{!35, !36, i64 48}
!114 = !{!35, !41, i64 1136}
!115 = !{!116, !41, i64 24}
!116 = !{!"TransDataNla", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !37, i64 32, !37, i64 44, !36, i64 56, !36, i64 60}
!117 = !{!116, !36, i64 60}
!118 = !{!119, !39, i64 58}
!119 = !{!"SpaceNla", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !37, i64 40, !39, i64 56, !39, i64 58, !36, i64 60, !41, i64 64, !101, i64 72}
!120 = !{!116, !41, i64 0}
!121 = !{!35, !39, i64 12}
!122 = !{!123, !41, i64 8}
!123 = !{!"NlaStrip", !41, i64 0, !41, i64 8, !44, i64 16, !41, i64 32, !41, i64 40, !44, i64 48, !44, i64 64, !37, i64 80, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !39, i64 184, !39, i64 186, !39, i64 188, !39, i64 190, !41, i64 192, !36, i64 200, !36, i64 204}
!124 = !{!123, !41, i64 0}
!125 = !{!123, !40, i64 152}
!126 = !{!123, !39, i64 190}
!127 = !{!123, !40, i64 156}
!128 = !{!116, !41, i64 8}
!129 = !{!116, !41, i64 16}
!130 = distinct !{!130, !109, !110}
!131 = !{!119, !39, i64 56}
!132 = !{!133, !39, i64 8948}
!133 = !{!"UserDef", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !36, i64 8468, !39, i64 8472, !39, i64 8474, !39, i64 8476, !39, i64 8478, !39, i64 8480, !39, i64 8482, !36, i64 8484, !36, i64 8488, !36, i64 8492, !39, i64 8496, !39, i64 8498, !36, i64 8500, !36, i64 8504, !36, i64 8508, !36, i64 8512, !36, i64 8516, !36, i64 8520, !36, i64 8524, !39, i64 8528, !39, i64 8530, !39, i64 8532, !39, i64 8534, !44, i64 8536, !44, i64 8552, !44, i64 8568, !44, i64 8584, !44, i64 8600, !44, i64 8616, !44, i64 8632, !37, i64 8648, !39, i64 8712, !39, i64 8714, !39, i64 8716, !39, i64 8718, !39, i64 8720, !39, i64 8722, !39, i64 8724, !39, i64 8726, !37, i64 8728, !39, i64 8896, !39, i64 8898, !39, i64 8900, !39, i64 8902, !39, i64 8904, !39, i64 8906, !39, i64 8908, !39, i64 8910, !36, i64 8912, !36, i64 8916, !39, i64 8920, !39, i64 8922, !39, i64 8924, !39, i64 8926, !39, i64 8928, !39, i64 8930, !39, i64 8932, !39, i64 8934, !39, i64 8936, !39, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !39, i64 8944, !39, i64 8946, !39, i64 8948, !39, i64 8950, !39, i64 8952, !39, i64 8954, !40, i64 8956, !40, i64 8960, !36, i64 8964, !39, i64 8968, !39, i64 8970, !40, i64 8972, !39, i64 8976, !39, i64 8978, !39, i64 8980, !39, i64 8982, !134, i64 8984, !37, i64 9760, !37, i64 9772, !39, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !36, i64 10896, !36, i64 10900, !40, i64 10904, !40, i64 10908, !36, i64 10912, !39, i64 10916, !39, i64 10918, !39, i64 10920, !39, i64 10922, !39, i64 10924, !39, i64 10926, !135, i64 10928}
!134 = !{!"ColorBand", !39, i64 0, !39, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!135 = !{!"WalkNavigation", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !39, i64 24, !37, i64 26}
!136 = !{!116, !36, i64 56}
!137 = !{!138, !41, i64 0}
!138 = !{!"NlaTrack", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !36, i64 36, !37, i64 40}
!139 = distinct !{!139, !109, !110}
!140 = !{!138, !41, i64 8}
!141 = distinct !{!141, !109, !110}
!142 = distinct !{!142, !109, !110}
!143 = !{!35, !41, i64 56}
!144 = !{!145, !41, i64 208}
!145 = !{!"TransData", !40, i64 0, !40, i64 4, !40, i64 8, !41, i64 16, !37, i64 24, !41, i64 40, !40, i64 48, !37, i64 52, !37, i64 64, !37, i64 100, !37, i64 136, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !41, i64 208, !36, i64 216, !39, i64 220}
!146 = !{!147, !41, i64 0}
!147 = !{!"TransDataSeq", !41, i64 0, !36, i64 8, !36, i64 12, !39, i64 16}
!148 = distinct !{!148, !109, !110}
!149 = !{!71, !39, i64 8}
!150 = !{!151, !41, i64 40}
!151 = !{!"bAnimListElem", !41, i64 0, !41, i64 8, !41, i64 16, !36, i64 24, !36, i64 28, !36, i64 32, !39, i64 36, !39, i64 38, !41, i64 40, !41, i64 48, !41, i64 56}
!152 = !{!153, !41, i64 48}
!153 = !{!"FCurve", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !44, i64 32, !41, i64 48, !41, i64 56, !36, i64 64, !40, i64 68, !39, i64 72, !39, i64 74, !36, i64 76, !41, i64 80, !36, i64 88, !37, i64 92, !40, i64 104, !40, i64 108}
!154 = !{!153, !36, i64 64}
!155 = !{!156, !37, i64 52}
!156 = !{!"BezTriple", !37, i64 0, !40, i64 36, !40, i64 40, !40, i64 44, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !37, i64 52, !37, i64 53, !37, i64 54, !37, i64 55, !40, i64 56, !40, i64 60, !40, i64 64, !37, i64 68}
!157 = !{!156, !37, i64 51}
!158 = !{!156, !37, i64 53}
!159 = distinct !{!159, !109, !110}
!160 = !{!161, !36, i64 244}
!161 = !{!"SpaceIpo", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !37, i64 40, !101, i64 56, !41, i64 216, !44, i64 224, !39, i64 240, !39, i64 242, !36, i64 244, !40, i64 248, !36, i64 252}
!162 = distinct !{!162, !109, !110}
!163 = !{!164, !36, i64 152}
!164 = !{!"MovieTrackingTrack", !41, i64 0, !41, i64 8, !37, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !36, i64 120, !36, i64 124, !41, i64 128, !37, i64 136, !40, i64 148, !36, i64 152, !36, i64 156, !36, i64 160, !37, i64 164, !39, i64 176, !39, i64 178, !39, i64 180, !39, i64 182, !36, i64 184, !40, i64 188, !41, i64 192, !40, i64 200, !40, i64 204}
!165 = !{!166, !36, i64 208}
!166 = !{!"SpaceClip", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !167, i64 56, !41, i64 64, !168, i64 72, !36, i64 208, !39, i64 212, !39, i64 214, !36, i64 216, !37, i64 220, !40, i64 228, !40, i64 232, !36, i64 236, !37, i64 240, !37, i64 304, !36, i64 368, !39, i64 372, !39, i64 374, !36, i64 376, !36, i64 380, !37, i64 384, !67, i64 392}
!167 = !{!"MovieClipUser", !36, i64 0, !39, i64 4, !39, i64 6}
!168 = !{!"MovieClipScopes", !39, i64 0, !39, i64 2, !36, i64 4, !36, i64 8, !36, i64 12, !169, i64 16, !41, i64 80, !41, i64 88, !37, i64 96, !39, i64 104, !39, i64 106, !36, i64 108, !41, i64 112, !41, i64 120, !37, i64 128}
!169 = !{!"MovieTrackingMarker", !37, i64 0, !37, i64 8, !37, i64 40, !37, i64 48, !36, i64 56, !36, i64 60}
!170 = !{!164, !36, i64 156}
!171 = !{!164, !36, i64 160}
!172 = !{!35, !36, i64 0}
!173 = distinct !{!173, !109, !110}
!174 = !{!44, !41, i64 0}
!175 = !{!176, !41, i64 0}
!176 = !{!"Nurb", !41, i64 0, !41, i64 8, !39, i64 16, !39, i64 18, !39, i64 20, !39, i64 22, !36, i64 24, !36, i64 28, !37, i64 32, !39, i64 36, !39, i64 38, !39, i64 40, !39, i64 42, !39, i64 44, !39, i64 46, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !39, i64 80, !39, i64 82, !36, i64 84}
!177 = distinct !{!177, !109, !110}
!178 = distinct !{!178, !109, !110}
!179 = !{!180, !41, i64 272}
!180 = !{!"Lattice", !55, i64 0, !41, i64 120, !39, i64 128, !39, i64 130, !39, i64 132, !39, i64 134, !39, i64 136, !39, i64 138, !39, i64 140, !39, i64 142, !37, i64 144, !37, i64 145, !37, i64 146, !37, i64 147, !36, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !37, i64 208, !41, i64 272}
!181 = !{!182, !41, i64 0}
!182 = !{!"EditLatt", !41, i64 0, !36, i64 8, !37, i64 12}
!183 = !{!180, !39, i64 134}
!184 = !{!35, !36, i64 4}
!185 = !{!145, !36, i64 216}
!186 = !{!145, !41, i64 16}
!187 = distinct !{!187, !109, !110}
!188 = !{!189, !41, i64 160}
!189 = !{!"bArmature", !55, i64 0, !41, i64 120, !44, i64 128, !44, i64 144, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !36, i64 192, !36, i64 196, !36, i64 200, !36, i64 204, !39, i64 208, !39, i64 210, !36, i64 212, !36, i64 216, !36, i64 220, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !36, i64 232, !36, i64 236, !36, i64 240, !36, i64 244, !36, i64 248, !36, i64 252}
!190 = !{!191, !36, i64 132}
!191 = !{!"EditBone", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !37, i64 40, !40, i64 104, !37, i64 108, !37, i64 120, !36, i64 132, !36, i64 136, !40, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !39, i64 180}
!192 = !{!191, !41, i64 24}
!193 = !{!191, !40, i64 172}
!194 = !{!191, !40, i64 168}
!195 = !{!191, !40, i64 152}
!196 = !{!191, !40, i64 176}
!197 = !{!191, !40, i64 140}
!198 = distinct !{!198, !109, !110}
!199 = !{!145, !40, i64 48}
!200 = !{!191, !40, i64 104}
!201 = distinct !{!201, !109, !110}
!202 = !{!189, !36, i64 192}
!203 = !{!35, !41, i64 1128}
!204 = !{!35, !41, i64 1272}
!205 = !{!73, !41, i64 264}
!206 = !{!207, !39, i64 344}
!207 = !{!"ToolSettings", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !40, i64 32, !40, i64 36, !40, i64 40, !39, i64 44, !39, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !40, i64 52, !39, i64 56, !37, i64 58, !37, i64 59, !208, i64 64, !210, i64 168, !40, i64 336, !40, i64 340, !39, i64 344, !39, i64 346, !37, i64 348, !37, i64 349, !39, i64 350, !40, i64 352, !40, i64 356, !40, i64 360, !40, i64 364, !40, i64 368, !40, i64 372, !40, i64 376, !40, i64 380, !40, i64 384, !40, i64 388, !39, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !41, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !39, i64 434, !39, i64 436, !39, i64 438, !39, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !36, i64 448, !36, i64 452, !36, i64 456, !36, i64 460, !39, i64 464, !39, i64 466, !36, i64 468, !40, i64 472, !40, i64 476, !211, i64 480, !212, i64 608}
!208 = !{!"ImagePaintSettings", !209, i64 0, !39, i64 40, !39, i64 42, !39, i64 44, !39, i64 46, !37, i64 48, !36, i64 52, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !37, i64 88, !40, i64 100}
!209 = !{!"Paint", !41, i64 0, !41, i64 8, !41, i64 16, !37, i64 24, !36, i64 28, !36, i64 32, !36, i64 36}
!210 = !{!"ParticleEditSettings", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !37, i64 8, !41, i64 120, !40, i64 128, !40, i64 132, !36, i64 136, !36, i64 140, !36, i64 144, !36, i64 148, !41, i64 152, !41, i64 160}
!211 = !{!"UnifiedPaintSettings", !36, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !37, i64 16, !37, i64 28, !36, i64 40, !37, i64 44, !40, i64 52, !36, i64 56, !36, i64 60, !37, i64 64, !37, i64 65, !40, i64 72, !37, i64 76, !36, i64 84, !40, i64 88, !37, i64 92, !37, i64 100, !36, i64 108, !41, i64 112, !40, i64 120, !36, i64 124}
!212 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !37, i64 20, !37, i64 21, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36}
!213 = !{!133, !39, i64 8976}
!214 = !{!35, !41, i64 1224}
!215 = !{!54, !41, i64 288}
!216 = !{!54, !36, i64 432}
!217 = distinct !{!217, !109, !110}
!218 = !{!145, !41, i64 176}
!219 = !{!220, !40, i64 256}
!220 = !{!"View3D", !41, i64 0, !41, i64 8, !44, i64 16, !36, i64 32, !40, i64 36, !37, i64 40, !37, i64 56, !40, i64 72, !40, i64 76, !37, i64 80, !37, i64 81, !36, i64 84, !36, i64 88, !39, i64 92, !39, i64 94, !41, i64 96, !41, i64 104, !80, i64 112, !44, i64 128, !41, i64 144, !41, i64 152, !37, i64 160, !36, i64 224, !36, i64 228, !39, i64 232, !39, i64 234, !39, i64 236, !39, i64 238, !39, i64 240, !39, i64 242, !40, i64 244, !40, i64 248, !40, i64 252, !40, i64 256, !37, i64 260, !37, i64 272, !39, i64 284, !39, i64 286, !39, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !44, i64 296, !44, i64 312, !44, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !41, i64 352, !41, i64 360, !41, i64 368}
!221 = !{!37, !37, i64 0}
!222 = !{!35, !41, i64 1264}
!223 = !{!224, !41, i64 120}
!224 = !{!"wmOperator", !41, i64 0, !41, i64 8, !37, i64 16, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !44, i64 128, !41, i64 144, !41, i64 152, !39, i64 160, !37, i64 162}
!225 = !{!35, !41, i64 1288}
!226 = !{!35, !37, i64 977}
!227 = !{!35, !36, i64 640}
!228 = !{!36, !36, i64 0}
!229 = !{!230, !39, i64 16}
!230 = !{!"wmEvent", !41, i64 0, !41, i64 8, !39, i64 16, !39, i64 18, !36, i64 20, !36, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !39, i64 44, !39, i64 46, !36, i64 48, !36, i64 52, !45, i64 56, !36, i64 64, !36, i64 68, !39, i64 72, !39, i64 74, !39, i64 76, !39, i64 78, !39, i64 80, !39, i64 82, !41, i64 88, !41, i64 96, !39, i64 104, !39, i64 106, !36, i64 108, !41, i64 112}
!231 = !{!35, !39, i64 696}
!232 = !{!35, !40, i64 20}
!233 = !{!35, !37, i64 1220}
!234 = !{!224, !41, i64 112}
!235 = !{!236, !41, i64 232}
!236 = !{!"bScreen", !55, i64 0, !44, i64 120, !44, i64 136, !44, i64 152, !44, i64 168, !41, i64 184, !41, i64 192, !36, i64 200, !36, i64 204, !39, i64 208, !39, i64 210, !39, i64 212, !39, i64 214, !39, i64 216, !39, i64 218, !39, i64 220, !39, i64 222, !39, i64 224, !39, i64 226, !39, i64 228, !39, i64 230, !41, i64 232, !41, i64 240}
!237 = !{!220, !37, i64 291}
!238 = !{!35, !39, i64 1156}
!239 = !{!220, !39, i64 240}
!240 = !{!220, !39, i64 238}
!241 = !{!35, !39, i64 974}
!242 = !{!35, !39, i64 1154}
!243 = !{!220, !37, i64 292}
!244 = !{!207, !39, i64 46}
!245 = !{!209, !41, i64 0}
!246 = !{!247, !36, i64 1856}
!247 = !{!"Brush", !55, i64 0, !248, i64 120, !41, i64 144, !249, i64 152, !249, i64 464, !41, i64 776, !41, i64 784, !41, i64 792, !41, i64 800, !41, i64 808, !37, i64 816, !40, i64 1840, !39, i64 1844, !39, i64 1846, !40, i64 1848, !36, i64 1852, !36, i64 1856, !36, i64 1860, !40, i64 1864, !36, i64 1868, !36, i64 1872, !36, i64 1876, !36, i64 1880, !40, i64 1884, !40, i64 1888, !37, i64 1892, !40, i64 1904, !37, i64 1908, !36, i64 1920, !40, i64 1924, !40, i64 1928, !36, i64 1932, !36, i64 1936, !36, i64 1940, !37, i64 1944, !37, i64 1945, !37, i64 1946, !37, i64 1947, !40, i64 1948, !40, i64 1952, !40, i64 1956, !40, i64 1960, !40, i64 1964, !36, i64 1968, !36, i64 1972, !36, i64 1976, !40, i64 1980, !40, i64 1984, !36, i64 1988, !36, i64 1992, !40, i64 1996, !37, i64 2000, !37, i64 2012, !37, i64 2024, !37, i64 2032, !37, i64 2040, !37, i64 2048}
!248 = !{!"BrushClone", !41, i64 0, !37, i64 8, !40, i64 16, !40, i64 20}
!249 = !{!"MTex", !39, i64 0, !39, i64 2, !39, i64 4, !39, i64 6, !41, i64 8, !41, i64 16, !37, i64 24, !37, i64 88, !37, i64 89, !37, i64 90, !37, i64 91, !37, i64 92, !37, i64 104, !40, i64 116, !39, i64 120, !39, i64 122, !39, i64 124, !39, i64 126, !39, i64 128, !39, i64 130, !37, i64 132, !37, i64 133, !40, i64 140, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !40, i64 180, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !40, i64 208, !40, i64 212, !40, i64 216, !40, i64 220, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !40, i64 248, !40, i64 252, !40, i64 256, !40, i64 260, !40, i64 264, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !40, i64 304, !40, i64 308}
!250 = !{!207, !37, i64 49}
!251 = !{!63, !37, i64 10567}
!252 = !{!63, !37, i64 10556}
!253 = !{!161, !36, i64 252}
!254 = !{!166, !36, i64 376}
!255 = !{!133, !36, i64 8}
!256 = !{!257, !37, i64 1365}
!257 = !{!"Mesh", !55, i64 0, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !41, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !41, i64 208, !41, i64 216, !41, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !258, i64 280, !258, i64 480, !258, i64 680, !258, i64 880, !258, i64 1080, !36, i64 1280, !36, i64 1284, !36, i64 1288, !36, i64 1292, !36, i64 1296, !36, i64 1300, !36, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !36, i64 1344, !39, i64 1348, !39, i64 1350, !40, i64 1352, !36, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !39, i64 1366, !41, i64 1368}
!258 = !{!"CustomData", !41, i64 0, !37, i64 8, !36, i64 172, !36, i64 176, !36, i64 180, !41, i64 184, !41, i64 192}
!259 = !{!35, !39, i64 1160}
!260 = !{!207, !39, i64 438}
!261 = !{!207, !37, i64 443}
!262 = !{!207, !37, i64 442}
!263 = !{!207, !40, i64 336}
!264 = !{!35, !40, i64 644}
!265 = !{!35, !39, i64 1158}
!266 = !{!207, !39, i64 440}
!267 = !{!35, !41, i64 1368}
!268 = !{!100, !41, i64 240}
!269 = !{!35, !41, i64 1360}
!270 = !{!35, !41, i64 1376}
!271 = !{!35, !41, i64 1384}
!272 = !{!35, !41, i64 1144}
!273 = !{!145, !41, i64 200}
!274 = distinct !{!274, !109, !110}
!275 = !{!35, !41, i64 64}
!276 = !{!35, !41, i64 72}
!277 = !{!35, !41, i64 632}
!278 = !{!145, !41, i64 192}
!279 = !{!280, !41, i64 40}
!280 = !{!"TransDataExtension", !37, i64 0, !37, i64 12, !37, i64 28, !41, i64 40, !37, i64 48, !41, i64 64, !37, i64 72, !41, i64 88, !40, i64 96, !41, i64 104, !37, i64 112, !41, i64 128, !37, i64 136, !37, i64 148, !37, i64 212, !37, i64 248, !37, i64 284, !36, i64 320, !37, i64 324, !37, i64 336, !37, i64 348, !37, i64 364, !40, i64 376}
!281 = !{!280, !41, i64 128}
!282 = distinct !{!282, !109, !110}
!283 = distinct !{!283, !109, !110}
!284 = !{!285, !41, i64 24}
!285 = !{!"TransData2D", !37, i64 0, !41, i64 16, !41, i64 24, !41, i64 32, !37, i64 40, !37, i64 48}
!286 = !{!285, !41, i64 32}
!287 = distinct !{!287, !109, !110}
!288 = !{!145, !41, i64 40}
!289 = !{!280, !41, i64 88}
!290 = !{!280, !40, i64 96}
!291 = !{!280, !41, i64 104}
!292 = !{!280, !41, i64 64}
!293 = !{!294, !37, i64 0}
!294 = !{!"TransDataCurveHandleFlags", !37, i64 0, !37, i64 1, !41, i64 8, !41, i64 16}
!295 = !{!294, !41, i64 8}
!296 = !{!294, !37, i64 1}
!297 = !{!294, !41, i64 16}
!298 = !{!100, !39, i64 208}
!299 = !{!100, !39, i64 210}
!300 = !{!63, !41, i64 40}
!301 = !{!166, !41, i64 64}
!302 = !{!73, !36, i64 680}
!303 = !{!161, !40, i64 248}
!304 = distinct !{!304, !109, !110}
!305 = distinct !{!305, !109, !110}
!306 = !{!307, !41, i64 0}
!307 = !{!"BMEditMesh", !41, i64 0, !41, i64 8, !36, i64 16, !41, i64 24, !36, i64 32, !41, i64 40, !41, i64 48, !57, i64 56, !41, i64 64, !36, i64 72, !41, i64 80, !36, i64 88, !39, i64 92, !39, i64 94, !41, i64 96, !36, i64 104}
!308 = !{!189, !41, i64 176}
!309 = !{!310, !41, i64 240}
!310 = !{!"MetaBall", !55, i64 0, !41, i64 120, !44, i64 128, !44, i64 144, !41, i64 160, !41, i64 168, !41, i64 176, !37, i64 184, !37, i64 185, !39, i64 186, !39, i64 188, !39, i64 190, !37, i64 192, !37, i64 204, !37, i64 216, !40, i64 228, !40, i64 232, !40, i64 236, !41, i64 240}
!311 = !{!312, !39, i64 26}
!312 = !{!"MetaElem", !41, i64 0, !41, i64 8, !41, i64 16, !39, i64 24, !39, i64 26, !39, i64 28, !39, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !37, i64 44, !40, i64 60, !40, i64 64, !40, i64 68, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !41, i64 88, !41, i64 96}
!313 = !{!314, !41, i64 120}
!314 = !{!"bPoseChannel", !41, i64 0, !41, i64 8, !41, i64 16, !44, i64 24, !37, i64 40, !39, i64 104, !39, i64 106, !39, i64 108, !39, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !41, i64 120, !41, i64 128, !41, i64 136, !44, i64 144, !44, i64 160, !41, i64 176, !41, i64 184, !41, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !40, i64 264, !39, i64 268, !39, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !40, i64 524, !40, i64 528, !40, i64 532, !41, i64 536}
!315 = !{!316, !36, i64 176}
!316 = !{!"Bone", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !44, i64 32, !37, i64 48, !40, i64 112, !37, i64 116, !37, i64 128, !37, i64 140, !36, i64 176, !37, i64 180, !37, i64 192, !37, i64 204, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !40, i64 300, !40, i64 304, !37, i64 308, !36, i64 320, !39, i64 324, !37, i64 326}
!317 = !{!247, !41, i64 808}
!318 = !{!319, !41, i64 120}
!319 = !{!"PaintCurve", !55, i64 0, !41, i64 120, !36, i64 128, !36, i64 132}
!320 = !{!319, !36, i64 132}
!321 = !{!54, !39, i64 948}
!322 = !{i8 0, i8 2}
!323 = !{!100, !41, i64 376}
!324 = !{!35, !40, i64 1304}
!325 = !{!145, !40, i64 8}
!326 = !{!145, !40, i64 0}
!327 = !{!145, !40, i64 4}
!328 = distinct !{!328, !109, !110}
!329 = distinct !{!329, !109, !110}
!330 = !{!331, !36, i64 16}
!331 = !{!"ModifierData", !41, i64 0, !41, i64 8, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !37, i64 32, !41, i64 96, !41, i64 104}
!332 = !{!331, !36, i64 20}
!333 = !{!334, !39, i64 114}
!334 = !{!"MirrorModifierData", !331, i64 0, !39, i64 112, !39, i64 114, !40, i64 116, !41, i64 120}
!335 = !{!334, !40, i64 116}
!336 = !{!334, !41, i64 120}
!337 = distinct !{!337, !109, !110}
!338 = distinct !{!338, !109, !110}
!339 = !{!340, !41, i64 40}
!340 = !{!"wmTimer", !41, i64 0, !41, i64 8, !41, i64 16, !45, i64 24, !36, i64 32, !41, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !36, i64 88}
!341 = !{!207, !39, i64 346}
!342 = !{!343, !39, i64 12}
!343 = !{!"ScreenAnimData", !41, i64 0, !39, i64 8, !39, i64 10, !39, i64 12, !36, i64 16, !36, i64 20, !45, i64 24}
!344 = !{!345, !41, i64 0}
!345 = !{!"AnimData", !41, i64 0, !41, i64 8, !41, i64 16, !44, i64 24, !41, i64 40, !44, i64 48, !44, i64 64, !36, i64 80, !36, i64 84, !39, i64 88, !39, i64 90, !40, i64 92}
!346 = !{!345, !36, i64 80}
!347 = !{!348, !36, i64 100}
!348 = !{!"bAction", !55, i64 0, !44, i64 120, !44, i64 136, !44, i64 152, !44, i64 168, !36, i64 184, !36, i64 188, !36, i64 192, !36, i64 196}
!349 = !{!123, !39, i64 186}
!350 = !{!123, !36, i64 200}
!351 = !{!345, !39, i64 90}
